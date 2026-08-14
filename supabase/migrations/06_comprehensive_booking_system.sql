-- ====================================================================
-- MIGRATION 06: Comprehensive Booking System & Notifications
-- ====================================================================

-- 1. Upgrade bookings table with full snapshot & financial fields
ALTER TABLE public.bookings
  ADD COLUMN IF NOT EXISTS booking_reference TEXT,
  ADD COLUMN IF NOT EXISTS idempotency_key UUID,
  ADD COLUMN IF NOT EXISTS departure_id UUID REFERENCES public.package_departures(id) ON DELETE SET NULL,
  ADD COLUMN IF NOT EXISTS package_title_snapshot TEXT,
  ADD COLUMN IF NOT EXISTS package_slug_snapshot TEXT,
  ADD COLUMN IF NOT EXISTS departure_city_snapshot TEXT,
  ADD COLUMN IF NOT EXISTS start_date DATE,
  ADD COLUMN IF NOT EXISTS end_date DATE,
  ADD COLUMN IF NOT EXISTS total_travellers INT DEFAULT 1,
  ADD COLUMN IF NOT EXISTS currency TEXT DEFAULT 'INR',
  ADD COLUMN IF NOT EXISTS price_basis TEXT DEFAULT 'Per Person',
  ADD COLUMN IF NOT EXISTS price_per_person NUMERIC(12,2) DEFAULT 0,
  ADD COLUMN IF NOT EXISTS subtotal NUMERIC(12,2) DEFAULT 0,
  ADD COLUMN IF NOT EXISTS discount_amount NUMERIC(12,2) DEFAULT 0,
  ADD COLUMN IF NOT EXISTS tax_amount NUMERIC(12,2) DEFAULT 0,
  ADD COLUMN IF NOT EXISTS total_amount NUMERIC(12,2) DEFAULT 0,
  ADD COLUMN IF NOT EXISTS advance_amount NUMERIC(12,2) DEFAULT 0,
  ADD COLUMN IF NOT EXISTS amount_paid NUMERIC(12,2) DEFAULT 0,
  ADD COLUMN IF NOT EXISTS balance_amount NUMERIC(12,2) DEFAULT 0,
  ADD COLUMN IF NOT EXISTS payment_status TEXT DEFAULT 'unpaid',
  ADD COLUMN IF NOT EXISTS booking_status TEXT DEFAULT 'confirmed',
  ADD COLUMN IF NOT EXISTS customer_visible_notes TEXT,
  ADD COLUMN IF NOT EXISTS internal_admin_notes TEXT,
  ADD COLUMN IF NOT EXISTS cancelled_at TIMESTAMPTZ,
  ADD COLUMN IF NOT EXISTS cancellation_reason TEXT;

-- Set constraints & defaults where applicable
DO $$
BEGIN
  -- Backfill booking_reference from booking_id if null
  UPDATE public.bookings
  SET booking_reference = booking_id
  WHERE booking_reference IS NULL;

  UPDATE public.bookings
  SET total_amount = total_booking_amount
  WHERE total_amount = 0 AND total_booking_amount > 0;

  UPDATE public.bookings
  SET package_title_snapshot = package_title
  WHERE package_title_snapshot IS NULL;

  UPDATE public.bookings
  SET departure_city_snapshot = departure_city
  WHERE departure_city_snapshot IS NULL;
END $$;

-- 2. Create booking_travellers table
CREATE TABLE IF NOT EXISTS public.booking_travellers (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  booking_id UUID NOT NULL REFERENCES public.bookings(id) ON DELETE CASCADE,
  full_name TEXT NOT NULL,
  traveller_type TEXT NOT NULL DEFAULT 'adult' CHECK (traveller_type IN ('adult', 'child', 'senior')),
  date_of_birth DATE,
  gender TEXT,
  phone TEXT,
  emergency_contact_name TEXT,
  emergency_contact_phone TEXT,
  mobility_requirements TEXT,
  dietary_requirements TEXT,
  created_at TIMESTAMPTZ NOT NULL DEFAULT now(),
  updated_at TIMESTAMPTZ NOT NULL DEFAULT now()
);

ALTER TABLE public.booking_travellers ENABLE ROW LEVEL SECURITY;

-- 3. Create booking_status_history table
CREATE TABLE IF NOT EXISTS public.booking_status_history (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  booking_id UUID NOT NULL REFERENCES public.bookings(id) ON DELETE CASCADE,
  previous_status TEXT,
  new_status TEXT NOT NULL,
  changed_by UUID REFERENCES auth.users(id) ON DELETE SET NULL,
  reason TEXT,
  created_at TIMESTAMPTZ NOT NULL DEFAULT now()
);

ALTER TABLE public.booking_status_history ENABLE ROW LEVEL SECURITY;

-- 4. Create notifications table
CREATE TABLE IF NOT EXISTS public.notifications (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  user_id UUID NOT NULL REFERENCES auth.users(id) ON DELETE CASCADE,
  notification_type TEXT NOT NULL,
  title TEXT NOT NULL,
  message TEXT NOT NULL,
  entity_type TEXT DEFAULT 'booking',
  entity_id UUID,
  read_at TIMESTAMPTZ,
  created_at TIMESTAMPTZ NOT NULL DEFAULT now()
);

ALTER TABLE public.notifications ENABLE ROW LEVEL SECURITY;

-- 5. RLS Policies
-- Bookings: Admin has full access, authenticated user reads only their own rows
DROP POLICY IF EXISTS "Admins full manage bookings" ON public.bookings;
CREATE POLICY "Admins full manage bookings" ON public.bookings
  FOR ALL
  USING (public.is_admin())
  WITH CHECK (public.is_admin());

DROP POLICY IF EXISTS "Users view own bookings" ON public.bookings;
CREATE POLICY "Users view own bookings" ON public.bookings
  FOR SELECT
  USING (auth.uid() IS NOT NULL AND auth.uid() = user_id);

-- Booking travellers RLS
DROP POLICY IF EXISTS "Admins manage travellers" ON public.booking_travellers;
CREATE POLICY "Admins manage travellers" ON public.booking_travellers
  FOR ALL
  USING (public.is_admin())
  WITH CHECK (public.is_admin());

DROP POLICY IF EXISTS "Users view own booking travellers" ON public.booking_travellers;
CREATE POLICY "Users view own booking travellers" ON public.booking_travellers
  FOR SELECT
  USING (
    EXISTS (
      SELECT 1 FROM public.bookings b
      WHERE b.id = booking_travellers.booking_id
        AND b.user_id = auth.uid()
    )
  );

-- Booking status history RLS
DROP POLICY IF EXISTS "Admins manage status history" ON public.booking_status_history;
CREATE POLICY "Admins manage status history" ON public.booking_status_history
  FOR ALL
  USING (public.is_admin())
  WITH CHECK (public.is_admin());

DROP POLICY IF EXISTS "Users view own booking status history" ON public.booking_status_history;
CREATE POLICY "Users view own booking status history" ON public.booking_status_history
  FOR SELECT
  USING (
    EXISTS (
      SELECT 1 FROM public.bookings b
      WHERE b.id = booking_status_history.booking_id
        AND b.user_id = auth.uid()
    )
  );

-- Notifications RLS
DROP POLICY IF EXISTS "Users manage own notifications" ON public.notifications;
CREATE POLICY "Users manage own notifications" ON public.notifications
  FOR ALL
  USING (auth.uid() = user_id)
  WITH CHECK (auth.uid() = user_id);

DROP POLICY IF EXISTS "Admins create notifications" ON public.notifications;
CREATE POLICY "Admins create notifications" ON public.notifications
  FOR INSERT
  WITH CHECK (public.is_admin() OR auth.uid() = user_id);

-- 6. Sequence Reference Generator (Format: OJ-BKG-2026-001248)
CREATE OR REPLACE FUNCTION public.generate_booking_reference_number()
RETURNS TEXT
LANGUAGE plpgsql
AS $$
DECLARE
  v_year TEXT := to_char(now(), 'YYYY');
  v_rand INT;
  v_ref TEXT;
  v_exists BOOLEAN;
BEGIN
  LOOP
    v_rand := floor(100000 + random() * 900000)::INT;
    v_ref := 'OJ-BKG-' || v_year || '-' || v_rand;
    SELECT EXISTS(SELECT 1 FROM public.bookings WHERE booking_reference = v_ref OR booking_id = v_ref) INTO v_exists;
    IF NOT v_exists THEN
      RETURN v_ref;
    END IF;
  END LOOP;
END;
$$;

-- 7. Atomic Concurrency-Safe RPC: create_or_confirm_booking
CREATE OR REPLACE FUNCTION public.create_or_confirm_booking(
  p_user_id UUID,
  p_package_id UUID,
  p_departure_id UUID DEFAULT NULL,
  p_enquiry_id UUID DEFAULT NULL,
  p_adults INT DEFAULT 1,
  p_children INT DEFAULT 0,
  p_senior_citizens INT DEFAULT 0,
  p_price_per_person NUMERIC DEFAULT 0,
  p_subtotal NUMERIC DEFAULT 0,
  p_discount_amount NUMERIC DEFAULT 0,
  p_tax_amount NUMERIC DEFAULT 0,
  p_total_amount NUMERIC DEFAULT 0,
  p_advance_amount NUMERIC DEFAULT 0,
  p_amount_paid NUMERIC DEFAULT 0,
  p_payment_status TEXT DEFAULT 'unpaid',
  p_special_requirements TEXT DEFAULT NULL,
  p_customer_visible_notes TEXT DEFAULT NULL,
  p_internal_admin_notes TEXT DEFAULT NULL,
  p_travellers JSONB DEFAULT '[]'::jsonb,
  p_idempotency_key UUID DEFAULT NULL
)
RETURNS JSONB
LANGUAGE plpgsql
SECURITY DEFINER
SET search_path = public
AS $$
DECLARE
  v_admin_id UUID := auth.uid();
  v_admin_email TEXT;
  v_user RECORD;
  v_package RECORD;
  v_dep RECORD;
  v_total_travellers INT;
  v_booking_ref TEXT;
  v_booking_id UUID;
  v_traveller JSONB;
  v_existing_id UUID;
BEGIN
  -- 1. Verify Admin Authorization
  IF NOT public.is_admin() THEN
    RAISE EXCEPTION 'Access denied: only administrators can create or confirm bookings.';
  END IF;

  -- 2. Idempotency check
  IF p_idempotency_key IS NOT NULL THEN
    SELECT id, booking_reference INTO v_existing_id, v_booking_ref
    FROM public.bookings
    WHERE idempotency_key = p_idempotency_key;

    IF v_existing_id IS NOT NULL THEN
      RETURN jsonb_build_object(
        'success', true,
        'idempotent', true,
        'booking_id', v_existing_id,
        'booking_reference', v_booking_ref,
        'message', 'Booking already exists for this idempotency key.'
      );
    END IF;
  END IF;

  -- 3. Validate user
  SELECT id, email INTO v_user FROM auth.users WHERE id = p_user_id;
  IF NOT FOUND THEN
    RAISE EXCEPTION 'Target user not found.';
  END IF;

  -- 4. Validate package
  SELECT id, name, slug, location, destination_name INTO v_package FROM public.packages WHERE id = p_package_id;
  IF NOT FOUND THEN
    RAISE EXCEPTION 'Selected package not found.';
  END IF;

  v_total_travellers := COALESCE(p_adults, 0) + COALESCE(p_children, 0) + COALESCE(p_senior_citizens, 0);
  IF v_total_travellers <= 0 THEN
    RAISE EXCEPTION 'At least one traveller is required.';
  END IF;

  -- 5. Concurrency Protection & Departure Seat Locking
  IF p_departure_id IS NOT NULL THEN
    SELECT id, departure_city, start_date, end_date, capacity, available_seats, status
    INTO v_dep
    FROM public.package_departures
    WHERE id = p_departure_id
    FOR UPDATE;

    IF NOT FOUND THEN
      RAISE EXCEPTION 'Selected departure schedule not found.';
    END IF;

    IF v_dep.status <> 'open' THEN
      RAISE EXCEPTION 'Selected departure schedule is closed or sold out.';
    END IF;

    IF v_dep.available_seats < v_total_travellers THEN
      RAISE EXCEPTION 'Insufficient capacity: only % seats available, but % requested.',
        v_dep.available_seats, v_total_travellers;
    END IF;

    -- Atomically decrement departure seats
    UPDATE public.package_departures
    SET available_seats = available_seats - v_total_travellers,
        status = CASE WHEN (available_seats - v_total_travellers) <= 0 THEN 'sold_out' ELSE status END,
        updated_at = NOW()
    WHERE id = p_departure_id;
  END IF;

  SELECT email INTO v_admin_email FROM auth.users WHERE id = v_admin_id;
  v_booking_ref := public.generate_booking_reference_number();

  -- 6. Insert Booking Record
  INSERT INTO public.bookings (
    booking_id,
    booking_reference,
    idempotency_key,
    user_id,
    enquiry_id,
    package_id,
    departure_id,
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
    price_per_person,
    subtotal,
    discount_amount,
    tax_amount,
    total_amount,
    total_booking_amount,
    package_amount,
    additional_services_amount,
    advance_amount,
    amount_paid,
    balance_amount,
    payment_status,
    booking_status,
    status,
    special_requirements,
    customer_visible_notes,
    internal_admin_notes,
    admin_notes,
    confirmed_by,
    confirmed_by_email,
    confirmed_at,
    pilgrim_name,
    pilgrim_email,
    pilgrim_phone
  ) VALUES (
    v_booking_ref,
    v_booking_ref,
    p_idempotency_key,
    p_user_id,
    p_enquiry_id,
    p_package_id,
    p_departure_id,
    v_package.name,
    v_package.name,
    v_package.slug,
    COALESCE(v_package.destination_name, v_package.location, 'India'),
    COALESCE(v_dep.departure_city, 'Standard Departure'),
    COALESCE(v_dep.departure_city, 'Standard Departure'),
    COALESCE(v_dep.start_date::TEXT, to_char(now(), 'Mon YYYY')),
    COALESCE(v_dep.start_date, CURRENT_DATE),
    COALESCE(v_dep.end_date, CURRENT_DATE + 4),
    p_adults,
    p_children,
    p_senior_citizens,
    v_total_travellers,
    'INR',
    'Per Person',
    p_price_per_person,
    p_subtotal,
    p_discount_amount,
    p_tax_amount,
    p_total_amount,
    p_total_amount,
    p_subtotal,
    p_tax_amount,
    p_advance_amount,
    p_amount_paid,
    (p_total_amount - p_amount_paid),
    p_payment_status,
    'confirmed',
    'confirmed',
    ARRAY[p_special_requirements]::TEXT[],
    p_customer_visible_notes,
    p_internal_admin_notes,
    p_internal_admin_notes,
    v_admin_id,
    v_admin_email,
    NOW(),
    COALESCE((SELECT full_name FROM public.profiles WHERE id = p_user_id), split_part(v_user.email, '@', 1)),
    v_user.email,
    COALESCE((SELECT phone FROM public.profiles WHERE id = p_user_id), 'Direct Booking')
  ) RETURNING id INTO v_booking_id;

  -- 7. Insert Itemized Travellers
  IF p_travellers IS NOT NULL AND jsonb_array_length(p_travellers) > 0 THEN
    FOR v_traveller IN SELECT * FROM jsonb_array_elements(p_travellers)
    LOOP
      INSERT INTO public.booking_travellers (
        booking_id,
        full_name,
        traveller_type,
        date_of_birth,
        gender,
        phone,
        emergency_contact_name,
        emergency_contact_phone,
        mobility_requirements,
        dietary_requirements
      ) VALUES (
        v_booking_id,
        COALESCE(v_traveller->>'full_name', 'Pilgrim Guest'),
        COALESCE(v_traveller->>'traveller_type', 'adult'),
        (v_traveller->>'date_of_birth')::DATE,
        v_traveller->>'gender',
        v_traveller->>'phone',
        v_traveller->>'emergency_contact_name',
        v_traveller->>'emergency_contact_phone',
        v_traveller->>'mobility_requirements',
        v_traveller->>'dietary_requirements'
      );
    END LOOP;
  ELSE
    -- Insert primary traveller
    INSERT INTO public.booking_travellers (
      booking_id,
      full_name,
      traveller_type
    ) VALUES (
      v_booking_id,
      COALESCE((SELECT full_name FROM public.profiles WHERE id = p_user_id), 'Primary Pilgrim'),
      'adult'
    );
  END IF;

  -- 8. Insert Status History Record
  INSERT INTO public.booking_status_history (
    booking_id,
    previous_status,
    new_status,
    changed_by,
    reason
  ) VALUES (
    v_booking_id,
    NULL,
    'confirmed',
    v_admin_id,
    'Booking created and confirmed by administrator'
  );

  -- 9. Update Enquiry if linked
  IF p_enquiry_id IS NOT NULL THEN
    UPDATE public.enquiries SET
      status = 'booking_confirmed',
      booking_id = v_booking_ref,
      booking_record_id = v_booking_id,
      final_price = p_total_amount,
      confirmed_at = NOW(),
      confirmed_by = v_admin_id,
      updated_at = NOW()
    WHERE id = p_enquiry_id;
  END IF;

  -- 10. Send in-app user notification
  INSERT INTO public.notifications (
    user_id,
    notification_type,
    title,
    message,
    entity_type,
    entity_id
  ) VALUES (
    p_user_id,
    'booking_confirmed',
    'Your pilgrimage booking is confirmed',
    'Your ' || v_package.name || ' journey has been confirmed. Booking reference: ' || v_booking_ref || '.',
    'booking',
    v_booking_id
  );

  -- 11. Audit Log
  PERFORM public.log_audit_action(
    'booking.created_and_confirmed',
    'booking',
    v_booking_id,
    v_booking_ref || ' (' || v_package.name || ')',
    NULL,
    jsonb_build_object(
      'booking_reference', v_booking_ref,
      'total_amount', p_total_amount,
      'user_id', p_user_id,
      'departure_id', p_departure_id
    ),
    jsonb_build_object('enquiry_id', p_enquiry_id, 'admin_email', v_admin_email)
  );

  RETURN jsonb_build_object(
    'success', true,
    'booking_id', v_booking_id,
    'booking_reference', v_booking_ref,
    'package_title', v_package.name,
    'total_amount', p_total_amount,
    'confirmed_at', NOW()
  );
END;
$$;

GRANT EXECUTE ON FUNCTION public.create_or_confirm_booking TO authenticated, service_role;

-- 8. Booking Cancellation RPC: cancel_booking
CREATE OR REPLACE FUNCTION public.cancel_booking(
  p_booking_id UUID,
  p_reason TEXT DEFAULT 'Cancelled by administrator'
)
RETURNS JSONB
LANGUAGE plpgsql
SECURITY DEFINER
SET search_path = public
AS $$
DECLARE
  v_admin_id UUID := auth.uid();
  v_admin_email TEXT;
  v_booking RECORD;
  v_dep RECORD;
BEGIN
  -- 1. Check admin
  IF NOT public.is_admin() THEN
    RAISE EXCEPTION 'Access denied: only administrators can cancel bookings.';
  END IF;

  -- 2. Lock booking row
  SELECT * INTO v_booking FROM public.bookings WHERE id = p_booking_id FOR UPDATE;
  IF NOT FOUND THEN
    RAISE EXCEPTION 'Booking not found.';
  END IF;

  IF v_booking.booking_status = 'cancelled' THEN
    RAISE EXCEPTION 'Booking is already cancelled.';
  END IF;

  -- 3. Return available seats to departure if linked
  IF v_booking.departure_id IS NOT NULL THEN
    SELECT id, available_seats, capacity INTO v_dep
    FROM public.package_departures
    WHERE id = v_booking.departure_id
    FOR UPDATE;

    IF FOUND THEN
      UPDATE public.package_departures
      SET available_seats = LEAST(capacity, available_seats + v_booking.total_travellers),
          status = 'open',
          updated_at = NOW()
      WHERE id = v_booking.departure_id;
    END IF;
  END IF;

  SELECT email INTO v_admin_email FROM auth.users WHERE id = v_admin_id;

  -- 4. Update Booking Status to Cancelled
  UPDATE public.bookings SET
    booking_status = 'cancelled',
    status = 'cancelled',
    cancelled_at = NOW(),
    cancellation_reason = p_reason,
    updated_at = NOW()
  WHERE id = p_booking_id;

  -- 5. Insert Status History
  INSERT INTO public.booking_status_history (
    booking_id,
    previous_status,
    new_status,
    changed_by,
    reason
  ) VALUES (
    p_booking_id,
    v_booking.booking_status,
    'cancelled',
    v_admin_id,
    p_reason
  );

  -- 6. Insert User Notification
  INSERT INTO public.notifications (
    user_id,
    notification_type,
    title,
    message,
    entity_type,
    entity_id
  ) VALUES (
    v_booking.user_id,
    'booking_cancelled',
    'Booking status updated',
    'Your booking ' || v_booking.booking_reference || ' has been cancelled. View My Bookings for details.',
    'booking',
    p_booking_id
  );

  -- 7. Audit Log
  PERFORM public.log_audit_action(
    'booking.cancelled',
    'booking',
    p_booking_id,
    v_booking.booking_reference,
    jsonb_build_object('status', v_booking.booking_status),
    jsonb_build_object('status', 'cancelled', 'reason', p_reason),
    jsonb_build_object('admin_email', v_admin_email)
  );

  RETURN jsonb_build_object(
    'success', true,
    'booking_id', p_booking_id,
    'booking_reference', v_booking.booking_reference,
    'status', 'cancelled'
  );
END;
$$;

GRANT EXECUTE ON FUNCTION public.cancel_booking TO authenticated, service_role;
