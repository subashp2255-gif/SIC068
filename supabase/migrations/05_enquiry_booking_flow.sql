-- ====================================================================
-- MIGRATION 05: Pilgrim Booking Creation & Verification Flow
-- ====================================================================

-- 1. Add verification and confirmation fields to public.enquiries
ALTER TABLE public.enquiries
  ADD COLUMN IF NOT EXISTS verified_at TIMESTAMPTZ,
  ADD COLUMN IF NOT EXISTS verified_by UUID REFERENCES auth.users(id),
  ADD COLUMN IF NOT EXISTS verification_notes TEXT,
  ADD COLUMN IF NOT EXISTS verification_checklist JSONB DEFAULT '[]'::jsonb,
  ADD COLUMN IF NOT EXISTS booking_id TEXT,
  ADD COLUMN IF NOT EXISTS booking_record_id UUID,
  ADD COLUMN IF NOT EXISTS final_price NUMERIC(10, 2),
  ADD COLUMN IF NOT EXISTS confirmed_at TIMESTAMPTZ,
  ADD COLUMN IF NOT EXISTS confirmed_by UUID REFERENCES auth.users(id);

-- Update status check constraint to support the new booking flow statuses
ALTER TABLE public.enquiries DROP CONSTRAINT IF EXISTS enquiries_status_check;
ALTER TABLE public.enquiries ADD CONSTRAINT enquiries_status_check
  CHECK (status = ANY (ARRAY[
    'new'::text,
    'submitted'::text,
    'contacted'::text,
    'verified'::text,
    'ready_to_book'::text,
    'booking_confirmed'::text,
    'in_progress'::text,
    'completed'::text,
    'converted'::text,
    'cancelled'::text
  ]));


-- 2. Create Bookings Table
CREATE TABLE IF NOT EXISTS public.bookings (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  booking_id TEXT UNIQUE NOT NULL,
  enquiry_id UUID UNIQUE REFERENCES public.enquiries(id) ON DELETE RESTRICT,
  user_id UUID REFERENCES auth.users(id) ON DELETE SET NULL,
  pilgrim_name TEXT NOT NULL,
  pilgrim_email TEXT,
  pilgrim_phone TEXT NOT NULL,
  package_id UUID REFERENCES public.packages(id) ON DELETE SET NULL,
  package_title TEXT NOT NULL,
  destination TEXT,
  travel_date TEXT,
  departure_city TEXT,
  adults INT DEFAULT 1,
  children INT DEFAULT 0,
  senior_citizens INT DEFAULT 0,
  special_requirements TEXT[],
  package_amount NUMERIC(10, 2) NOT NULL DEFAULT 0,
  additional_services_amount NUMERIC(10, 2) NOT NULL DEFAULT 0,
  total_booking_amount NUMERIC(10, 2) NOT NULL DEFAULT 0,
  verification_notes TEXT,
  admin_notes TEXT,
  status TEXT NOT NULL DEFAULT 'confirmed',
  confirmed_by UUID REFERENCES auth.users(id) ON DELETE SET NULL,
  confirmed_by_email TEXT,
  confirmed_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

-- Enable RLS on Bookings
ALTER TABLE public.bookings ENABLE ROW LEVEL SECURITY;

-- Bookings RLS policies
DROP POLICY IF EXISTS "Admins manage bookings" ON public.bookings;
CREATE POLICY "Admins manage bookings" ON public.bookings
  FOR ALL
  USING (public.is_admin() OR (auth.uid() IS NOT NULL AND auth.uid() = user_id))
  WITH CHECK (public.is_admin());

DROP POLICY IF EXISTS "Users view own bookings" ON public.bookings;
CREATE POLICY "Users view own bookings" ON public.bookings
  FOR SELECT
  USING (auth.uid() IS NOT NULL AND auth.uid() = user_id);

-- 3. Sequence / Function for Unique Booking ID Generator (OJ-2026-XXXXX)
CREATE OR REPLACE FUNCTION public.generate_unique_booking_id()
RETURNS TEXT
LANGUAGE plpgsql
AS $$
DECLARE
  v_year TEXT := to_char(now(), 'YYYY');
  v_random INT;
  v_candidate TEXT;
  v_exists BOOLEAN;
BEGIN
  LOOP
    v_random := floor(10000 + random() * 90000)::INT;
    v_candidate := 'OJ-' || v_year || '-' || v_random;
    SELECT EXISTS(SELECT 1 FROM public.bookings WHERE booking_id = v_candidate) INTO v_exists;
    IF NOT v_exists THEN
      RETURN v_candidate;
    END IF;
  END LOOP;
END;
$$;

-- 4. RPC Function: Confirm Pilgrim Booking (Transactional & Idempotent)
CREATE OR REPLACE FUNCTION public.confirm_pilgrim_booking(
  p_enquiry_id UUID,
  p_package_amount NUMERIC DEFAULT 0,
  p_additional_services NUMERIC DEFAULT 0,
  p_total_amount NUMERIC DEFAULT 0,
  p_verification_notes TEXT DEFAULT NULL,
  p_admin_notes TEXT DEFAULT NULL
)
RETURNS JSONB
LANGUAGE plpgsql
SECURITY DEFINER
SET search_path = public
AS $$
DECLARE
  v_enq RECORD;
  v_booking_ref TEXT;
  v_booking_id UUID;
  v_admin_email TEXT;
  v_admin_id UUID := auth.uid();
  v_reqs TEXT[] := ARRAY[]::TEXT[];
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
    -- If already booked, return existing booking
    SELECT id, booking_id INTO v_booking_id, v_booking_ref FROM public.bookings WHERE enquiry_id = p_enquiry_id;
    IF v_booking_ref IS NOT NULL THEN
      RETURN jsonb_build_object(
        'success', true,
        'already_confirmed', true,
        'booking_id', v_booking_ref,
        'booking_record_id', v_booking_id,
        'enquiry_id', p_enquiry_id,
        'message', 'Booking was already confirmed previously.'
      );
    END IF;
  END IF;

  -- 4. Enforce Verification-First business rule
  IF v_enq.status NOT IN ('verified', 'ready_to_book') THEN
    RAISE EXCEPTION 'Cannot confirm booking: Enquiry must be in "Verified & Clarified" or "Ready to Book" status first.';
  END IF;

  -- 5. Fetch Admin Email
  SELECT email INTO v_admin_email FROM auth.users WHERE id = v_admin_id;

  -- 6. Generate collision-safe Booking ID
  v_booking_ref := public.generate_unique_booking_id();

  -- Extract special assistance requirements
  IF v_enq.special_assistance IS NOT NULL THEN
    v_reqs := v_enq.special_assistance;
  END IF;

  -- 7. Insert Booking record
  INSERT INTO public.bookings (
    booking_id,
    enquiry_id,
    user_id,
    pilgrim_name,
    pilgrim_email,
    pilgrim_phone,
    package_id,
    package_title,
    destination,
    travel_date,
    departure_city,
    adults,
    children,
    senior_citizens,
    special_requirements,
    package_amount,
    additional_services_amount,
    total_booking_amount,
    verification_notes,
    admin_notes,
    status,
    confirmed_by,
    confirmed_by_email,
    confirmed_at
  ) VALUES (
    v_booking_ref,
    p_enquiry_id,
    v_enq.user_id,
    v_enq.full_name,
    v_enq.email,
    v_enq.phone,
    v_enq.package_id,
    COALESCE(v_enq.package_title, 'Spiritual Pilgrimage Package'),
    v_enq.destination,
    COALESCE(v_enq.start_date::TEXT, v_enq.preferred_month, 'Flexible'),
    v_enq.departure_city,
    COALESCE(v_enq.adults, 1),
    COALESCE(v_enq.children, 0),
    COALESCE(v_enq.senior_citizens, 0),
    v_reqs,
    COALESCE(p_package_amount, 0),
    COALESCE(p_additional_services, 0),
    COALESCE(p_total_amount, p_package_amount + p_additional_services, 0),
    COALESCE(p_verification_notes, v_enq.verification_notes),
    p_admin_notes,
    'confirmed',
    v_admin_id,
    v_admin_email,
    NOW()
  ) RETURNING id INTO v_booking_id;

  -- 8. Update Enquiry Status to Booking Confirmed
  UPDATE public.enquiries SET
    status = 'booking_confirmed',
    booking_id = v_booking_ref,
    booking_record_id = v_booking_id,
    final_price = COALESCE(p_total_amount, p_package_amount + p_additional_services, 0),
    confirmed_at = NOW(),
    confirmed_by = v_admin_id,
    verification_notes = COALESCE(p_verification_notes, verification_notes),
    updated_at = NOW()
  WHERE id = p_enquiry_id;

  -- 9. Record Audit Log
  PERFORM public.log_audit_action(
    'booking.confirmed',
    'booking',
    v_booking_id,
    v_booking_ref || ' (' || v_enq.full_name || ')',
    jsonb_build_object('enquiry_status', v_enq.status, 'reference', v_enq.reference_number),
    jsonb_build_object(
      'booking_id', v_booking_ref,
      'status', 'booking_confirmed',
      'total_amount', p_total_amount,
      'pilgrim', v_enq.full_name
    ),
    jsonb_build_object(
      'enquiry_id', p_enquiry_id,
      'confirmed_by_email', v_admin_email
    )
  );

  RETURN jsonb_build_object(
    'success', true,
    'booking_id', v_booking_ref,
    'booking_record_id', v_booking_id,
    'enquiry_id', p_enquiry_id,
    'pilgrim_name', v_enq.full_name,
    'total_amount', p_total_amount,
    'confirmed_at', NOW()
  );
END;
$$;

GRANT EXECUTE ON FUNCTION public.confirm_pilgrim_booking TO authenticated, service_role;
