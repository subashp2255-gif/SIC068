-- Migration: 03_fix_enquiries_schema_and_triggers.sql
-- Description: Adds submission_id, enforces constraints, guarantees unique reference generation, and refines RLS for enquiries

-- 1. Add submission_id column if not exists
ALTER TABLE public.enquiries ADD COLUMN IF NOT EXISTS submission_id TEXT;
CREATE UNIQUE INDEX IF NOT EXISTS enquiries_submission_id_idx ON public.enquiries (submission_id) WHERE submission_id IS NOT NULL;

-- 2. Add / Update check constraints
ALTER TABLE public.enquiries DROP CONSTRAINT IF EXISTS enquiries_date_order_check;
ALTER TABLE public.enquiries ADD CONSTRAINT enquiries_date_order_check CHECK (end_date IS NULL OR start_date IS NULL OR end_date >= start_date);

ALTER TABLE public.enquiries DROP CONSTRAINT IF EXISTS enquiries_status_check;
ALTER TABLE public.enquiries ADD CONSTRAINT enquiries_status_check CHECK (status = ANY (ARRAY['new'::text, 'submitted'::text, 'contacted'::text, 'in_progress'::text, 'completed'::text, 'cancelled'::text]));

-- 3. Update collision-free reference generation function
CREATE OR REPLACE FUNCTION public.generate_enquiry_reference()
RETURNS trigger
LANGUAGE plpgsql
AS $function$
DECLARE
  new_ref TEXT;
  collision BOOLEAN := true;
BEGIN
  IF NEW.reference_number IS NULL OR NEW.reference_number = '' THEN
    WHILE collision LOOP
      new_ref := 'OJ-' || to_char(now(), 'YYYY') || '-' || lpad(floor(1000 + random() * 9000)::text, 4, '0');
      SELECT EXISTS(SELECT 1 FROM public.enquiries WHERE reference_number = new_ref) INTO collision;
    END LOOP;
    NEW.reference_number := new_ref;
  END IF;
  RETURN NEW;
END;
$function$;

-- 4. Ensure reference trigger is active
DROP TRIGGER IF EXISTS enquiry_auto_reference ON public.enquiries;
CREATE TRIGGER enquiry_auto_reference
  BEFORE INSERT ON public.enquiries
  FOR EACH ROW
  WHEN (NEW.reference_number IS NULL OR NEW.reference_number = '')
  EXECUTE FUNCTION public.generate_enquiry_reference();

-- 5. RLS Policies
ALTER TABLE public.enquiries ENABLE ROW LEVEL SECURITY;

DROP POLICY IF EXISTS "Anyone: Insert enquiry" ON public.enquiries;
DROP POLICY IF EXISTS "Public Insert Enquiries" ON public.enquiries;
CREATE POLICY "Anyone: Insert enquiry" ON public.enquiries
  FOR INSERT
  WITH CHECK (user_id IS NULL OR auth.uid() = user_id);

DROP POLICY IF EXISTS "Users: Select own enquiries" ON public.enquiries;
CREATE POLICY "Users: Select own enquiries" ON public.enquiries
  FOR SELECT
  USING (auth.uid() = user_id);

-- 6. Secure RPC for enquiry submission (Handles both Guest & Authenticated Submissions)
CREATE OR REPLACE FUNCTION public.submit_enquiry(
  p_submission_id TEXT DEFAULT NULL,
  p_user_id UUID DEFAULT NULL,
  p_package_id UUID DEFAULT NULL,
  p_package_title TEXT DEFAULT NULL,
  p_destination TEXT DEFAULT NULL,
  p_travel_timing TEXT DEFAULT NULL,
  p_preferred_month TEXT DEFAULT NULL,
  p_start_date DATE DEFAULT NULL,
  p_end_date DATE DEFAULT NULL,
  p_departure_city TEXT DEFAULT NULL,
  p_date_flexibility TEXT DEFAULT NULL,
  p_adults INT DEFAULT 1,
  p_children INT DEFAULT 0,
  p_senior_citizens INT DEFAULT 0,
  p_infants INT DEFAULT 0,
  p_special_assistance TEXT[] DEFAULT NULL,
  p_full_name TEXT DEFAULT NULL,
  p_email TEXT DEFAULT NULL,
  p_phone TEXT DEFAULT NULL,
  p_phone_country_code TEXT DEFAULT '+91',
  p_preferred_contact_method TEXT DEFAULT 'whatsapp',
  p_preferred_contact_time TEXT DEFAULT 'Any time',
  p_message TEXT DEFAULT NULL,
  p_source TEXT DEFAULT 'homepage',
  p_consent BOOLEAN DEFAULT true,
  p_whatsapp_updates BOOLEAN DEFAULT false
)
RETURNS TABLE (
  id UUID,
  reference_number TEXT,
  created_at TIMESTAMPTZ,
  submission_id TEXT
)
LANGUAGE plpgsql
SECURITY DEFINER
SET search_path = public
AS $$
DECLARE
  v_id UUID;
  v_ref TEXT;
  v_created TIMESTAMPTZ;
  v_sub_id TEXT;
  v_actual_user_id UUID;
BEGIN
  -- If session user is authenticated, force v_actual_user_id to auth.uid()
  IF auth.uid() IS NOT NULL THEN
    v_actual_user_id := auth.uid();
  ELSE
    v_actual_user_id := p_user_id;
  END IF;

  -- 1. Check for existing submission by submission_id (Idempotency)
  IF p_submission_id IS NOT NULL AND p_submission_id <> '' THEN
    SELECT e.id, e.reference_number, e.created_at, e.submission_id
    INTO v_id, v_ref, v_created, v_sub_id
    FROM public.enquiries e
    WHERE e.submission_id = p_submission_id
    LIMIT 1;

    IF v_id IS NOT NULL THEN
      RETURN QUERY SELECT v_id, v_ref, v_created, v_sub_id;
      RETURN;
    END IF;
  END IF;

  -- 2. Insert new enquiry
  INSERT INTO public.enquiries (
    submission_id,
    user_id,
    package_id,
    package_title,
    destination,
    travel_timing,
    preferred_month,
    start_date,
    end_date,
    departure_city,
    date_flexibility,
    adults,
    children,
    senior_citizens,
    infants,
    special_assistance,
    full_name,
    email,
    phone,
    phone_country_code,
    preferred_contact_method,
    preferred_contact_time,
    message,
    source,
    consent,
    whatsapp_updates,
    status
  ) VALUES (
    COALESCE(p_submission_id, gen_random_uuid()::text),
    v_actual_user_id,
    p_package_id,
    p_package_title,
    p_destination,
    p_travel_timing,
    p_preferred_month,
    p_start_date,
    p_end_date,
    p_departure_city,
    p_date_flexibility,
    COALESCE(p_adults, 1),
    COALESCE(p_children, 0),
    COALESCE(p_senior_citizens, 0),
    COALESCE(p_infants, 0),
    p_special_assistance,
    p_full_name,
    p_email,
    p_phone,
    COALESCE(p_phone_country_code, '+91'),
    COALESCE(p_preferred_contact_method, 'whatsapp'),
    p_preferred_contact_time,
    p_message,
    COALESCE(p_source, 'homepage'),
    COALESCE(p_consent, true),
    COALESCE(p_whatsapp_updates, false),
    'submitted'
  )
  RETURNING enquiries.id, enquiries.reference_number, enquiries.created_at, enquiries.submission_id
  INTO v_id, v_ref, v_created, v_sub_id;

  RETURN QUERY SELECT v_id, v_ref, v_created, v_sub_id;
END;
$$;

GRANT EXECUTE ON FUNCTION public.submit_enquiry TO anon, authenticated, service_role;

