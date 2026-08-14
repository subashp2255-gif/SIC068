-- ====================================================================
-- MIGRATION 07: Fix Booking Ownership, Auto-User Resolution & RLS
-- ====================================================================

-- 1. Unify and upgrade confirm_pilgrim_booking RPC
CREATE OR REPLACE FUNCTION public.confirm_pilgrim_booking(
  p_enquiry_id UUID,
  p_package_amount NUMERIC DEFAULT 0,
  p_additional_services NUMERIC DEFAULT 0,
  p_total_amount NUMERIC DEFAULT 0,
  p_verification_notes TEXT DEFAULT NULL,
  p_admin_notes TEXT DEFAULT NULL,
  p_user_id UUID DEFAULT NULL
)
RETURNS JSONB
LANGUAGE plpgsql
SECURITY DEFINER
SET search_path = public
AS $$
DECLARE
  v_enq RECORD;
  v_pkg RECORD;
  v_booking_ref TEXT;
  v_booking_id UUID;
  v_admin_email TEXT;
  v_admin_id UUID := auth.uid();
  v_reqs TEXT[] := ARRAY[]::TEXT[];
  v_target_user_id UUID;
  v_total_travellers INT := 1;
  v_start_date DATE;
  v_end_date DATE;
BEGIN
  -- 1. Check admin authorization
  IF NOT public.is_admin() THEN
    RAISE EXCEPTION 'Access denied: only administrators can confirm bookings.';
  END IF;

  -- 2. Fetch and lock enquiry row
  SELECT * INTO v_enq FROM public.enquiries WHERE id = p_enquiry_id FOR UPDATE;
  IF NOT FOUND THEN
    RAISE EXCEPTION 'Enquiry with ID % not found.', p_enquiry_id;
  END IF;

  -- 3. Prevent duplicate booking creation
  IF v_enq.status = 'booking_confirmed' OR v_enq.booking_id IS NOT NULL THEN
    SELECT id, booking_reference INTO v_booking_id, v_booking_ref
    FROM public.bookings
    WHERE enquiry_id = p_enquiry_id;

    IF v_booking_ref IS NOT NULL THEN
      RETURN jsonb_build_object(
        'success', true,
        'already_confirmed', true,
        'booking_id', v_booking_ref,
        'booking_reference', v_booking_ref,
        'booking_record_id', v_booking_id,
        'enquiry_id', p_enquiry_id,
        'message', 'Booking was already confirmed previously.'
      );
    END IF;
  END IF;

  -- 4. Resolve Target User ID (Priority: Explicit Param -> Enquiry user_id -> auth.users by Email)
  IF p_user_id IS NOT NULL THEN
    v_target_user_id := p_user_id;
  ELSIF v_enq.user_id IS NOT NULL THEN
    v_target_user_id := v_enq.user_id;
  ELSIF v_enq.email IS NOT NULL AND v_enq.email <> '' THEN
    SELECT id INTO v_target_user_id
    FROM auth.users
    WHERE LOWER(email) = LOWER(TRIM(v_enq.email))
    LIMIT 1;
  END IF;

  IF v_target_user_id IS NULL THEN
    RAISE EXCEPTION 'This enquiry is not connected to a registered user. Link an existing user before confirming the booking.';
  END IF;

  -- 5. Fetch package details if linked
  IF v_enq.package_id IS NOT NULL THEN
    SELECT id, name, slug, location, destination_name INTO v_pkg FROM public.packages WHERE id = v_enq.package_id;
  END IF;

  SELECT email INTO v_admin_email FROM auth.users WHERE id = v_admin_id;

  -- 6. Generate collision-safe Booking Reference
  v_booking_ref := public.generate_booking_reference_number();

  IF v_enq.special_assistance IS NOT NULL THEN
    v_reqs := v_enq.special_assistance;
  END IF;

  v_total_travellers := COALESCE(v_enq.adults, 1) + COALESCE(v_enq.children, 0) + COALESCE(v_enq.senior_citizens, 0);
  v_start_date := COALESCE(v_enq.start_date, CURRENT_DATE);
  v_end_date := COALESCE(v_enq.end_date, CURRENT_DATE + 4);

  -- 7. Insert Booking record with ALL snapshot fields & user ownership
  INSERT INTO public.bookings (
    booking_id,
    booking_reference,
    enquiry_id,
    user_id,
    pilgrim_name,
    pilgrim_email,
    pilgrim_phone,
    package_id,
    package_title,
    package_title_snapshot,
    package_slug_snapshot,
    destination,
    departure_city,
    departure_city_snapshot,
    travel_date,
    start_date,
    end_date,
    adults,
    children,
    senior_citizens,
    total_travellers,
    currency,
    price_basis,
    special_requirements,
    package_amount,
    additional_services_amount,
    subtotal,
    total_amount,
    total_booking_amount,
    amount_paid,
    balance_amount,
    payment_status,
    booking_status,
    status,
    verification_notes,
    internal_admin_notes,
    admin_notes,
    confirmed_by,
    confirmed_by_email,
    confirmed_at
  ) VALUES (
    v_booking_ref,
    v_booking_ref,
    p_enquiry_id,
    v_target_user_id,
    v_enq.full_name,
    v_enq.email,
    v_enq.phone,
    v_enq.package_id,
    COALESCE(v_pkg.name, v_enq.package_title, 'Spiritual Pilgrimage Package'),
    COALESCE(v_pkg.name, v_enq.package_title, 'Spiritual Pilgrimage Package'),
    v_pkg.slug,
    COALESCE(v_pkg.destination_name, v_enq.destination, 'Sacred India'),
    COALESCE(v_enq.departure_city, 'Standard Departure'),
    COALESCE(v_enq.departure_city, 'Standard Departure'),
    COALESCE(v_enq.start_date::TEXT, v_enq.preferred_month, 'Flexible'),
    v_start_date,
    v_end_date,
    COALESCE(v_enq.adults, 1),
    COALESCE(v_enq.children, 0),
    COALESCE(v_enq.senior_citizens, 0),
    v_total_travellers,
    'INR',
    'Per Person',
    v_reqs,
    COALESCE(p_package_amount, 0),
    COALESCE(p_additional_services, 0),
    COALESCE(p_package_amount, 0),
    COALESCE(p_total_amount, p_package_amount + p_additional_services, 0),
    COALESCE(p_total_amount, p_package_amount + p_additional_services, 0),
    0,
    COALESCE(p_total_amount, p_package_amount + p_additional_services, 0),
    'unpaid',
    'confirmed',
    'confirmed',
    COALESCE(p_verification_notes, v_enq.verification_notes),
    p_admin_notes,
    p_admin_notes,
    v_admin_id,
    v_admin_email,
    NOW()
  ) RETURNING id INTO v_booking_id;

  -- 8. Insert Primary Traveller in booking_travellers
  INSERT INTO public.booking_travellers (
    booking_id,
    full_name,
    traveller_type
  ) VALUES (
    v_booking_id,
    v_enq.full_name,
    'adult'
  );

  -- 9. Insert Booking Status History
  INSERT INTO public.booking_status_history (
    booking_id,
    previous_status,
    new_status,
    changed_by,
    reason
  ) VALUES (
    v_booking_id,
    'submitted',
    'confirmed',
    v_admin_id,
    'Booking confirmed by administrator from Enquiry ' || v_enq.reference_number
  );

  -- 10. Update Enquiry Record
  UPDATE public.enquiries SET
    user_id = v_target_user_id,
    status = 'booking_confirmed',
    booking_id = v_booking_ref,
    booking_record_id = v_booking_id,
    final_price = COALESCE(p_total_amount, p_package_amount + p_additional_services, 0),
    confirmed_at = NOW(),
    confirmed_by = v_admin_id,
    verification_notes = COALESCE(p_verification_notes, verification_notes),
    updated_at = NOW()
  WHERE id = p_enquiry_id;

  -- 11. Send User In-App Notification
  INSERT INTO public.notifications (
    user_id,
    notification_type,
    title,
    message,
    entity_type,
    entity_id
  ) VALUES (
    v_target_user_id,
    'booking_confirmed',
    'Your pilgrimage booking is confirmed',
    'Your ' || COALESCE(v_pkg.name, v_enq.package_title, 'Spiritual Pilgrimage') || ' journey has been confirmed. Booking reference: ' || v_booking_ref || '.',
    'booking',
    v_booking_id
  );

  -- 12. Record Audit Action
  PERFORM public.log_audit_action(
    'booking.confirmed_from_enquiry',
    'booking',
    v_booking_id,
    v_booking_ref || ' (' || v_enq.full_name || ')',
    jsonb_build_object('enquiry_status', v_enq.status, 'reference', v_enq.reference_number),
    jsonb_build_object(
      'booking_reference', v_booking_ref,
      'status', 'confirmed',
      'total_amount', p_total_amount,
      'user_id', v_target_user_id
    ),
    jsonb_build_object('enquiry_id', p_enquiry_id, 'admin_email', v_admin_email)
  );

  RETURN jsonb_build_object(
    'success', true,
    'booking_id', v_booking_ref,
    'booking_reference', v_booking_ref,
    'booking_record_id', v_booking_id,
    'enquiry_id', p_enquiry_id,
    'user_id', v_target_user_id,
    'pilgrim_name', v_enq.full_name,
    'total_amount', p_total_amount,
    'confirmed_at', NOW()
  );
END;
$$;

GRANT EXECUTE ON FUNCTION public.confirm_pilgrim_booking TO authenticated, service_role;

-- 2. Backfill existing orphaned bookings with matching user_ids from auth.users
UPDATE public.bookings b
SET user_id = u.id,
    booking_reference = COALESCE(b.booking_reference, b.booking_id)
FROM auth.users u
WHERE (b.user_id IS NULL OR b.booking_reference IS NULL)
  AND (
    LOWER(TRIM(b.pilgrim_email)) = LOWER(TRIM(u.email))
    OR EXISTS (
      SELECT 1 FROM public.enquiries e
      WHERE e.id = b.enquiry_id AND LOWER(TRIM(e.email)) = LOWER(TRIM(u.email))
    )
  );

-- Also update enquiries user_id if null
UPDATE public.enquiries e
SET user_id = u.id
FROM auth.users u
WHERE e.user_id IS NULL
  AND LOWER(TRIM(e.email)) = LOWER(TRIM(u.email));

-- 3. Ensure Strict RLS Policies on Bookings
DROP POLICY IF EXISTS "Users can read own bookings" ON public.bookings;
DROP POLICY IF EXISTS "Users view own bookings" ON public.bookings;
CREATE POLICY "Users can read own bookings" ON public.bookings
  FOR SELECT
  TO authenticated
  USING ((SELECT auth.uid()) = user_id);

DROP POLICY IF EXISTS "Admins full manage bookings" ON public.bookings;
CREATE POLICY "Admins full manage bookings" ON public.bookings
  FOR ALL
  TO authenticated
  USING (public.is_admin())
  WITH CHECK (public.is_admin());
