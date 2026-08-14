-- ====================================================================
-- MIGRATION 04: Admin Roles, Audit Logging, Atomic Package RPC & Analytics
-- ====================================================================

-- 1. Create User Roles Table
CREATE TABLE IF NOT EXISTS public.user_roles (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  user_id UUID NOT NULL REFERENCES auth.users(id) ON DELETE CASCADE,
  role TEXT NOT NULL CHECK (role IN ('user', 'admin')),
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  UNIQUE(user_id, role)
);

ALTER TABLE public.user_roles ENABLE ROW LEVEL SECURITY;

-- 2. Create is_admin() Security Definer Function
CREATE OR REPLACE FUNCTION public.is_admin(p_user_id UUID DEFAULT NULL)
RETURNS BOOLEAN
LANGUAGE sql
SECURITY DEFINER
STABLE
SET search_path = public
AS $$
  SELECT EXISTS (
    SELECT 1 FROM public.user_roles
    WHERE user_id = COALESCE(p_user_id, auth.uid())
      AND role = 'admin'
  );
$$;

GRANT EXECUTE ON FUNCTION public.is_admin TO anon, authenticated, service_role;

-- 3. Grant initial admin role to primary users (subashp2255@gmail.com and subashp1350@gmail.com)
INSERT INTO public.user_roles (user_id, role)
SELECT id, 'admin'
FROM auth.users
WHERE email IN ('subashp2255@gmail.com', 'subashp1350@gmail.com')
ON CONFLICT (user_id, role) DO NOTHING;

CREATE OR REPLACE FUNCTION public.handle_auto_admin_assignment()
RETURNS TRIGGER
LANGUAGE plpgsql
SECURITY DEFINER
SET search_path = public
AS $$
BEGIN
  IF NEW.email IN ('subashp2255@gmail.com', 'subashp1350@gmail.com') THEN
    INSERT INTO public.user_roles (user_id, role)
    VALUES (NEW.id, 'admin')
    ON CONFLICT (user_id, role) DO NOTHING;
  END IF;
  RETURN NEW;
END;
$$;

DROP TRIGGER IF EXISTS on_auth_user_created_admin ON auth.users;
CREATE TRIGGER on_auth_user_created_admin
  AFTER INSERT ON auth.users
  FOR EACH ROW
  EXECUTE FUNCTION public.handle_auto_admin_assignment();



-- 4. Create Audit Logs Table
CREATE TABLE IF NOT EXISTS public.audit_logs (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  admin_user_id UUID REFERENCES auth.users(id) ON DELETE SET NULL,
  admin_email TEXT,
  action TEXT NOT NULL,
  entity_type TEXT NOT NULL,
  entity_id UUID,
  entity_name TEXT,
  old_values JSONB,
  new_values JSONB,
  metadata JSONB,
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

ALTER TABLE public.audit_logs ENABLE ROW LEVEL SECURITY;

-- 5. Helper Function: log_audit_action
CREATE OR REPLACE FUNCTION public.log_audit_action(
  p_action TEXT,
  p_entity_type TEXT,
  p_entity_id UUID DEFAULT NULL,
  p_entity_name TEXT DEFAULT NULL,
  p_old_values JSONB DEFAULT NULL,
  p_new_values JSONB DEFAULT NULL,
  p_metadata JSONB DEFAULT NULL
)
RETURNS UUID
LANGUAGE plpgsql
SECURITY DEFINER
SET search_path = public
AS $$
DECLARE
  v_log_id UUID;
  v_email TEXT;
BEGIN
  IF NOT public.is_admin() THEN
    RAISE EXCEPTION 'Access denied: only administrators can record audit logs.';
  END IF;

  SELECT email INTO v_email FROM auth.users WHERE id = auth.uid();

  INSERT INTO public.audit_logs (
    admin_user_id,
    admin_email,
    action,
    entity_type,
    entity_id,
    entity_name,
    old_values,
    new_values,
    metadata
  ) VALUES (
    auth.uid(),
    v_email,
    p_action,
    p_entity_type,
    p_entity_id,
    p_entity_name,
    p_old_values,
    p_new_values,
    p_metadata
  ) RETURNING id INTO v_log_id;

  RETURN v_log_id;
END;
$$;

GRANT EXECUTE ON FUNCTION public.log_audit_action TO authenticated, service_role;

-- 6. Storage bucket for package media
INSERT INTO storage.buckets (id, name, public, file_size_limit, allowed_mime_types)
VALUES ('package-media', 'package-media', true, 10485760, ARRAY['image/jpeg', 'image/png', 'image/webp', 'image/avif', 'image/gif'])
ON CONFLICT (id) DO UPDATE SET public = true;

-- 7. Analytics Aggregation RPC Function
CREATE OR REPLACE FUNCTION public.get_admin_dashboard_analytics()
RETURNS JSONB
LANGUAGE plpgsql
SECURITY DEFINER
SET search_path = public
AS $$
DECLARE
  v_result JSONB;
  v_total_packages INT;
  v_active_packages INT;
  v_draft_packages INT;
  v_total_enquiries INT;
  v_new_enquiries INT;
  v_contacted_enquiries INT;
  v_converted_enquiries INT;
  v_this_month_enquiries INT;
  v_total_destinations INT;
  v_total_users INT;
  v_avg_rating NUMERIC;
  v_monthly_enquiries JSONB;
  v_source_breakdown JSONB;
  v_status_breakdown JSONB;
  v_category_breakdown JSONB;
  v_top_packages JSONB;
BEGIN
  IF NOT public.is_admin() THEN
    RAISE EXCEPTION 'Access denied: only administrators can view analytics.';
  END IF;

  -- KPI metrics
  SELECT COUNT(*) INTO v_total_packages FROM public.packages;
  SELECT COUNT(*) INTO v_active_packages FROM public.packages WHERE is_active = true;
  SELECT COUNT(*) INTO v_draft_packages FROM public.packages WHERE is_active = false;
  
  SELECT COUNT(*) INTO v_total_enquiries FROM public.enquiries;
  SELECT COUNT(*) INTO v_new_enquiries FROM public.enquiries WHERE status IN ('new', 'submitted');
  SELECT COUNT(*) INTO v_contacted_enquiries FROM public.enquiries WHERE status = 'contacted';
  SELECT COUNT(*) INTO v_converted_enquiries FROM public.enquiries WHERE status IN ('completed', 'converted');
  SELECT COUNT(*) INTO v_this_month_enquiries FROM public.enquiries WHERE created_at >= date_trunc('month', now());

  SELECT COUNT(*) INTO v_total_destinations FROM public.destinations WHERE is_active = true;
  SELECT COUNT(*) INTO v_total_users FROM auth.users;
  SELECT COALESCE(ROUND(AVG(rating), 1), 4.9) INTO v_avg_rating FROM public.packages WHERE rating IS NOT NULL;

  -- Monthly enquiries trend (last 6 months)
  SELECT jsonb_agg(m) INTO v_monthly_enquiries FROM (
    SELECT 
      to_char(date_trunc('month', d), 'Mon YYYY') AS month,
      COUNT(e.id) AS count
    FROM generate_series(date_trunc('month', now() - interval '5 months'), date_trunc('month', now()), '1 month') d
    LEFT JOIN public.enquiries e ON date_trunc('month', e.created_at) = d
    GROUP BY d
    ORDER BY d
  ) m;

  -- Source breakdown
  SELECT jsonb_agg(s) INTO v_source_breakdown FROM (
    SELECT COALESCE(source, 'homepage') AS source, COUNT(*) AS count
    FROM public.enquiries
    GROUP BY COALESCE(source, 'homepage')
    ORDER BY count DESC
  ) s;

  -- Status breakdown
  SELECT jsonb_agg(st) INTO v_status_breakdown FROM (
    SELECT status, COUNT(*) AS count
    FROM public.enquiries
    GROUP BY status
    ORDER BY count DESC
  ) st;

  -- Packages by category
  SELECT jsonb_agg(c) INTO v_category_breakdown FROM (
    SELECT category, COUNT(*) AS count
    FROM public.packages
    GROUP BY category
    ORDER BY count DESC
  ) c;

  -- Top enquired packages
  SELECT jsonb_agg(tp) INTO v_top_packages FROM (
    SELECT 
      COALESCE(e.package_title, 'General Pilgrimage Enquiry') AS title,
      COUNT(*) AS enquiries_count
    FROM public.enquiries e
    GROUP BY COALESCE(e.package_title, 'General Pilgrimage Enquiry')
    ORDER BY enquiries_count DESC
    LIMIT 5
  ) tp;

  v_result := jsonb_build_object(
    'kpis', jsonb_build_object(
      'total_packages', v_total_packages,
      'active_packages', v_active_packages,
      'draft_packages', v_draft_packages,
      'total_enquiries', v_total_enquiries,
      'new_enquiries', v_new_enquiries,
      'contacted_enquiries', v_contacted_enquiries,
      'converted_enquiries', v_converted_enquiries,
      'this_month_enquiries', v_this_month_enquiries,
      'total_destinations', v_total_destinations,
      'total_users', v_total_users,
      'average_rating', v_avg_rating
    ),
    'monthly_enquiries', COALESCE(v_monthly_enquiries, '[]'::jsonb),
    'source_breakdown', COALESCE(v_source_breakdown, '[]'::jsonb),
    'status_breakdown', COALESCE(v_status_breakdown, '[]'::jsonb),
    'category_breakdown', COALESCE(v_category_breakdown, '[]'::jsonb),
    'top_packages', COALESCE(v_top_packages, '[]'::jsonb)
  );

  RETURN v_result;
END;
$$;

GRANT EXECUTE ON FUNCTION public.get_admin_dashboard_analytics TO authenticated, service_role;

-- 8. Atomic Package Management RPC Function (Upsert with Children in single transaction)
CREATE OR REPLACE FUNCTION public.save_complete_package(
  p_package JSONB,
  p_itinerary JSONB DEFAULT '[]'::jsonb,
  p_features JSONB DEFAULT '[]'::jsonb,
  p_departures JSONB DEFAULT '[]'::jsonb,
  p_accessibility JSONB DEFAULT '{}'::jsonb,
  p_media JSONB DEFAULT '[]'::jsonb,
  p_category_ids UUID[] DEFAULT ARRAY[]::UUID[],
  p_destination_ids UUID[] DEFAULT ARRAY[]::UUID[]
)
RETURNS JSONB
LANGUAGE plpgsql
SECURITY DEFINER
SET search_path = public
AS $$
DECLARE
  v_pkg_id UUID;
  v_slug TEXT;
  v_name TEXT;
  v_item JSONB;
  v_index INT := 0;
  v_is_new BOOLEAN := false;
  v_old_pkg JSONB;
BEGIN
  IF NOT public.is_admin() THEN
    RAISE EXCEPTION 'Access denied: only administrators can create or modify packages.';
  END IF;

  v_slug := TRIM(COALESCE(p_package->>'slug', ''));
  v_name := TRIM(COALESCE(p_package->>'name', ''));

  IF v_slug = '' OR v_name = '' THEN
    RAISE EXCEPTION 'Package name and slug are required.';
  END IF;

  -- 1. Check if ID exists or insert new
  IF p_package->>'id' IS NOT NULL AND (p_package->>'id') ~ '^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$' THEN
    v_pkg_id := (p_package->>'id')::UUID;
    SELECT to_jsonb(p) INTO v_old_pkg FROM public.packages p WHERE p.id = v_pkg_id;
  END IF;

  IF v_pkg_id IS NULL OR v_old_pkg IS NULL THEN
    v_is_new := true;
    -- Check slug uniqueness
    IF EXISTS (SELECT 1 FROM public.packages WHERE slug = v_slug) THEN
      RAISE EXCEPTION 'A package with slug "%" already exists. Please choose a unique slug.', v_slug;
    END IF;

    INSERT INTO public.packages (
      slug, name, destination_name, summary, description, location, region,
      category, sub_category, duration_days, duration_nights, duration_label,
      base_price, price_basis, currency, default_departure_city, best_season,
      difficulty_level, walking_level, pace, food_types, transport_types, tags,
      traveller_types, route, destinations_text, image, alt_text, category_label,
      traveller_type, senior_friendly, child_friendly, wheelchair_access, veg_meals,
      accessibility_status, rating, review_count, seats_left, recent_bookings, verified,
      cancellation_summary, featured, is_active
    ) VALUES (
      v_slug,
      v_name,
      p_package->>'destination_name',
      p_package->>'summary',
      p_package->>'description',
      p_package->>'location',
      COALESCE(p_package->>'region', 'North India'),
      COALESCE(p_package->>'category', 'Pilgrimage'),
      p_package->>'sub_category',
      COALESCE((p_package->>'duration_days')::INT, 4),
      COALESCE((p_package->>'duration_nights')::INT, 3),
      p_package->>'duration_label',
      (p_package->>'base_price')::NUMERIC,
      COALESCE(p_package->>'price_basis', 'Per Person'),
      COALESCE(p_package->>'currency', 'INR'),
      p_package->>'default_departure_city',
      p_package->>'best_season',
      p_package->>'difficulty_level',
      p_package->>'walking_level',
      COALESCE(p_package->>'pace', 'Relaxed'),
      ARRAY(SELECT jsonb_array_elements_text(COALESCE(p_package->'food_types', '["Pure Veg"]'::jsonb))),
      ARRAY(SELECT jsonb_array_elements_text(COALESCE(p_package->'transport_types', '["AC Coach"]'::jsonb))),
      ARRAY(SELECT jsonb_array_elements_text(COALESCE(p_package->'tags', '[]'::jsonb))),
      ARRAY(SELECT jsonb_array_elements_text(COALESCE(p_package->'traveller_types', '["Seniors", "Families"]'::jsonb))),
      ARRAY(SELECT jsonb_array_elements_text(COALESCE(p_package->'route', '[]'::jsonb))),
      p_package->>'destinations_text',
      COALESCE(p_package->>'image', '/images/placeholder.jpg'),
      p_package->>'alt_text',
      p_package->>'category_label',
      p_package->>'traveller_type',
      COALESCE((p_package->>'senior_friendly')::BOOLEAN, true),
      COALESCE((p_package->>'child_friendly')::BOOLEAN, true),
      COALESCE((p_package->>'wheelchair_access')::BOOLEAN, false),
      COALESCE((p_package->>'veg_meals')::BOOLEAN, true),
      p_package->>'accessibility_status',
      COALESCE((p_package->>'rating')::NUMERIC, 4.8),
      COALESCE((p_package->>'review_count')::INT, 12),
      COALESCE((p_package->>'seats_left')::INT, 8),
      COALESCE((p_package->>'recent_bookings')::INT, 14),
      COALESCE((p_package->>'verified')::BOOLEAN, true),
      p_package->>'cancellation_summary',
      COALESCE((p_package->>'featured')::BOOLEAN, false),
      COALESCE((p_package->>'is_active')::BOOLEAN, true)
    ) RETURNING id INTO v_pkg_id;
  ELSE
    -- Check slug uniqueness against other packages
    IF EXISTS (SELECT 1 FROM public.packages WHERE slug = v_slug AND id <> v_pkg_id) THEN
      RAISE EXCEPTION 'A package with slug "%" already exists for another tour.', v_slug;
    END IF;

    UPDATE public.packages SET
      slug = v_slug,
      name = v_name,
      destination_name = p_package->>'destination_name',
      summary = p_package->>'summary',
      description = p_package->>'description',
      location = p_package->>'location',
      region = COALESCE(p_package->>'region', region),
      category = COALESCE(p_package->>'category', category),
      sub_category = p_package->>'sub_category',
      duration_days = COALESCE((p_package->>'duration_days')::INT, duration_days),
      duration_nights = COALESCE((p_package->>'duration_nights')::INT, duration_nights),
      duration_label = p_package->>'duration_label',
      base_price = (p_package->>'base_price')::NUMERIC,
      price_basis = COALESCE(p_package->>'price_basis', price_basis),
      currency = COALESCE(p_package->>'currency', currency),
      default_departure_city = p_package->>'default_departure_city',
      best_season = p_package->>'best_season',
      difficulty_level = p_package->>'difficulty_level',
      walking_level = p_package->>'walking_level',
      pace = COALESCE(p_package->>'pace', pace),
      food_types = ARRAY(SELECT jsonb_array_elements_text(COALESCE(p_package->'food_types', '["Pure Veg"]'::jsonb))),
      transport_types = ARRAY(SELECT jsonb_array_elements_text(COALESCE(p_package->'transport_types', '["AC Coach"]'::jsonb))),
      tags = ARRAY(SELECT jsonb_array_elements_text(COALESCE(p_package->'tags', '[]'::jsonb))),
      traveller_types = ARRAY(SELECT jsonb_array_elements_text(COALESCE(p_package->'traveller_types', '["Seniors", "Families"]'::jsonb))),
      route = ARRAY(SELECT jsonb_array_elements_text(COALESCE(p_package->'route', '[]'::jsonb))),
      destinations_text = p_package->>'destinations_text',
      image = COALESCE(p_package->>'image', image),
      alt_text = p_package->>'alt_text',
      category_label = p_package->>'category_label',
      traveller_type = p_package->>'traveller_type',
      senior_friendly = COALESCE((p_package->>'senior_friendly')::BOOLEAN, senior_friendly),
      child_friendly = COALESCE((p_package->>'child_friendly')::BOOLEAN, child_friendly),
      wheelchair_access = COALESCE((p_package->>'wheelchair_access')::BOOLEAN, wheelchair_access),
      veg_meals = COALESCE((p_package->>'veg_meals')::BOOLEAN, veg_meals),
      accessibility_status = p_package->>'accessibility_status',
      featured = COALESCE((p_package->>'featured')::BOOLEAN, featured),
      is_active = COALESCE((p_package->>'is_active')::BOOLEAN, is_active),
      updated_at = NOW()
    WHERE id = v_pkg_id;
  END IF;

  -- 2. Sync Categories
  DELETE FROM public.package_categories WHERE package_id = v_pkg_id;
  IF array_length(p_category_ids, 1) > 0 THEN
    INSERT INTO public.package_categories (package_id, category_id, display_order)
    SELECT v_pkg_id, cat_id, ord
    FROM unnest(p_category_ids) WITH ORDINALITY AS t(cat_id, ord);
  END IF;

  -- 3. Sync Destinations
  DELETE FROM public.package_destinations WHERE package_id = v_pkg_id;
  IF array_length(p_destination_ids, 1) > 0 THEN
    INSERT INTO public.package_destinations (package_id, destination_id, visit_order)
    SELECT v_pkg_id, dest_id, ord
    FROM unnest(p_destination_ids) WITH ORDINALITY AS t(dest_id, ord);
  END IF;

  -- 4. Sync Itinerary Days
  DELETE FROM public.itinerary_days WHERE package_id = v_pkg_id;
  IF jsonb_array_length(p_itinerary) > 0 THEN
    FOR v_item IN SELECT * FROM jsonb_array_elements(p_itinerary)
    LOOP
      INSERT INTO public.itinerary_days (
        package_id, day_number, title, overview, morning_title, morning_description,
        afternoon_title, afternoon_description, evening_title, evening_description,
        important_timings, meals, transport, walking_level, stay, weather, dress_code,
        packing_suggestions, accessibility_note, visitor_note, travel_duration, location
      ) VALUES (
        v_pkg_id,
        COALESCE((v_item->>'day_number')::INT, (v_item->>'day')::INT, 1),
        COALESCE(v_item->>'title', 'Day Program'),
        v_item->>'overview',
        v_item->>'morning_title',
        v_item->>'morning_description',
        v_item->>'afternoon_title',
        v_item->>'afternoon_description',
        v_item->>'evening_title',
        v_item->>'evening_description',
        v_item->>'important_timings',
        v_item->>'meals',
        v_item->>'transport',
        v_item->>'walking_level',
        v_item->>'stay',
        v_item->>'weather',
        v_item->>'dress_code',
        v_item->>'packing_suggestions',
        v_item->>'accessibility_note',
        v_item->>'visitor_note',
        v_item->>'travel_duration',
        v_item->>'location'
      );
    END LOOP;
  END IF;

  -- 5. Sync Features (Inclusions, Exclusions, Highlights, Facilities)
  DELETE FROM public.package_features WHERE package_id = v_pkg_id;
  IF jsonb_array_length(p_features) > 0 THEN
    v_index := 1;
    FOR v_item IN SELECT * FROM jsonb_array_elements(p_features)
    LOOP
      INSERT INTO public.package_features (
        package_id, feature_type, title, description, display_order
      ) VALUES (
        v_pkg_id,
        COALESCE(v_item->>'feature_type', 'inclusion'),
        COALESCE(v_item->>'title', 'Feature'),
        v_item->>'description',
        v_index
      );
      v_index := v_index + 1;
    END LOOP;
  END IF;

  -- 6. Sync Departures
  DELETE FROM public.package_departures WHERE package_id = v_pkg_id;
  IF jsonb_array_length(p_departures) > 0 THEN
    FOR v_item IN SELECT * FROM jsonb_array_elements(p_departures)
    LOOP
      INSERT INTO public.package_departures (
        package_id, departure_city, start_date, end_date, capacity,
        available_seats, price_per_person, booking_deadline, status
      ) VALUES (
        v_pkg_id,
        COALESCE(v_item->>'departure_city', 'Chennai'),
        (v_item->>'start_date')::DATE,
        (v_item->>'end_date')::DATE,
        COALESCE((v_item->>'capacity')::INT, 30),
        COALESCE((v_item->>'available_seats')::INT, (v_item->>'capacity')::INT, 30),
        (v_item->>'price_per_person')::NUMERIC,
        (v_item->>'booking_deadline')::DATE,
        COALESCE(v_item->>'status', 'open')
      );
    END LOOP;
  END IF;

  -- 7. Sync Accessibility
  IF p_accessibility IS NOT NULL AND p_accessibility <> '{}'::jsonb THEN
    INSERT INTO public.package_accessibility (
      package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
      lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
      medical_facility_nearby, care_notes, requires_confirmation
    ) VALUES (
      v_pkg_id,
      COALESCE((p_accessibility->>'wheelchair_available')::BOOLEAN, false),
      COALESCE((p_accessibility->>'battery_cart_available')::BOOLEAN, false),
      COALESCE((p_accessibility->>'reduced_walking_option')::BOOLEAN, false),
      COALESCE((p_accessibility->>'lift_accessible_stay')::BOOLEAN, true),
      COALESCE((p_accessibility->>'ground_floor_room')::BOOLEAN, false),
      COALESCE((p_accessibility->>'accessible_bathroom')::BOOLEAN, false),
      COALESCE((p_accessibility->>'darshan_assistance')::BOOLEAN, true),
      COALESCE((p_accessibility->>'medical_facility_nearby')::BOOLEAN, true),
      p_accessibility->>'care_notes',
      COALESCE((p_accessibility->>'requires_confirmation')::BOOLEAN, false)
    )
    ON CONFLICT (package_id) DO UPDATE SET
      wheelchair_available = EXCLUDED.wheelchair_available,
      battery_cart_available = EXCLUDED.battery_cart_available,
      reduced_walking_option = EXCLUDED.reduced_walking_option,
      lift_accessible_stay = EXCLUDED.lift_accessible_stay,
      ground_floor_room = EXCLUDED.ground_floor_room,
      accessible_bathroom = EXCLUDED.accessible_bathroom,
      darshan_assistance = EXCLUDED.darshan_assistance,
      medical_facility_nearby = EXCLUDED.medical_facility_nearby,
      care_notes = EXCLUDED.care_notes,
      requires_confirmation = EXCLUDED.requires_confirmation,
      updated_at = NOW();
  END IF;

  -- 8. Sync Media
  IF jsonb_array_length(p_media) > 0 THEN
    DELETE FROM public.package_media WHERE package_id = v_pkg_id;
    v_index := 1;
    FOR v_item IN SELECT * FROM jsonb_array_elements(p_media)
    LOOP
      INSERT INTO public.package_media (
        package_id, media_type, url, storage_path, alt_text, caption, is_cover, display_order
      ) VALUES (
        v_pkg_id,
        COALESCE(v_item->>'media_type', 'image'),
        v_item->>'url',
        v_item->>'storage_path',
        v_item->>'alt_text',
        v_item->>'caption',
        COALESCE((v_item->>'is_cover')::BOOLEAN, (v_index = 1)),
        v_index
      );
      v_index := v_index + 1;
    END LOOP;
  END IF;

  -- 9. Record Audit Log
  PERFORM public.log_audit_action(
    CASE WHEN v_is_new THEN 'package.created' ELSE 'package.updated' END,
    'package',
    v_pkg_id,
    v_name,
    v_old_pkg,
    (SELECT to_jsonb(p) FROM public.packages p WHERE p.id = v_pkg_id),
    jsonb_build_object('slug', v_slug, 'is_new', v_is_new)
  );

  RETURN jsonb_build_object(
    'success', true,
    'id', v_pkg_id,
    'slug', v_slug,
    'name', v_name,
    'is_new', v_is_new
  );
END;
$$;

GRANT EXECUTE ON FUNCTION public.save_complete_package TO authenticated, service_role;

-- 9. Admin RLS Policies for Catalogue & Audit
-- User roles RLS
DROP POLICY IF EXISTS "Admins manage roles" ON public.user_roles;
CREATE POLICY "Admins manage roles" ON public.user_roles
  FOR ALL
  USING (public.is_admin() OR auth.uid() = user_id)
  WITH CHECK (public.is_admin());

-- Audit logs RLS
DROP POLICY IF EXISTS "Admins read audit logs" ON public.audit_logs;
CREATE POLICY "Admins read audit logs" ON public.audit_logs
  FOR SELECT
  USING (public.is_admin());

-- Enquiries Admin full management
DROP POLICY IF EXISTS "Admins manage enquiries" ON public.enquiries;
CREATE POLICY "Admins manage enquiries" ON public.enquiries
  FOR ALL
  USING (public.is_admin() OR auth.uid() = user_id)
  WITH CHECK (public.is_admin() OR user_id IS NULL OR auth.uid() = user_id);

-- Packages Admin full management
DROP POLICY IF EXISTS "Public view active packages" ON public.packages;
DROP POLICY IF EXISTS "Admins manage packages" ON public.packages;
CREATE POLICY "Public view active packages" ON public.packages
  FOR SELECT
  USING (is_active = true OR public.is_admin());

CREATE POLICY "Admins manage packages" ON public.packages
  FOR ALL
  USING (public.is_admin())
  WITH CHECK (public.is_admin());

-- Destinations Admin full management
DROP POLICY IF EXISTS "Public view active destinations" ON public.destinations;
DROP POLICY IF EXISTS "Admins manage destinations" ON public.destinations;
CREATE POLICY "Public view active destinations" ON public.destinations
  FOR SELECT
  USING (is_active = true OR public.is_admin());

CREATE POLICY "Admins manage destinations" ON public.destinations
  FOR ALL
  USING (public.is_admin())
  WITH CHECK (public.is_admin());

-- Categories Admin full management
DROP POLICY IF EXISTS "Public view active categories" ON public.categories;
DROP POLICY IF EXISTS "Admins manage categories" ON public.categories;
CREATE POLICY "Public view active categories" ON public.categories
  FOR SELECT
  USING (is_active = true OR public.is_admin());

CREATE POLICY "Admins manage categories" ON public.categories
  FOR ALL
  USING (public.is_admin())
  WITH CHECK (public.is_admin());

-- FAQs & Testimonials Admin full management
DROP POLICY IF EXISTS "Public view active faqs" ON public.faqs;
DROP POLICY IF EXISTS "Admins manage faqs" ON public.faqs;
CREATE POLICY "Public view active faqs" ON public.faqs
  FOR SELECT
  USING (is_active = true OR public.is_admin());

CREATE POLICY "Admins manage faqs" ON public.faqs
  FOR ALL
  USING (public.is_admin())
  WITH CHECK (public.is_admin());

DROP POLICY IF EXISTS "Public view active testimonials" ON public.testimonials;
DROP POLICY IF EXISTS "Admins manage testimonials" ON public.testimonials;
CREATE POLICY "Public view active testimonials" ON public.testimonials
  FOR SELECT
  USING (is_active = true OR public.is_admin());

CREATE POLICY "Admins manage testimonials" ON public.testimonials
  FOR ALL
  USING (public.is_admin())
  WITH CHECK (public.is_admin());

-- Reviews Admin moderation
DROP POLICY IF EXISTS "Public view reviews" ON public.reviews;
DROP POLICY IF EXISTS "Admins manage reviews" ON public.reviews;
CREATE POLICY "Public view reviews" ON public.reviews
  FOR SELECT
  USING (true);

CREATE POLICY "Admins manage reviews" ON public.reviews
  FOR ALL
  USING (public.is_admin() OR auth.uid() = user_id)
  WITH CHECK (public.is_admin() OR auth.uid() = user_id);

-- Storage bucket RLS policies for package-media
DROP POLICY IF EXISTS "Public read package media" ON storage.objects;
DROP POLICY IF EXISTS "Admins upload package media" ON storage.objects;
DROP POLICY IF EXISTS "Admins update package media" ON storage.objects;
DROP POLICY IF EXISTS "Admins delete package media" ON storage.objects;

CREATE POLICY "Public read package media" ON storage.objects
  FOR SELECT
  USING (bucket_id = 'package-media');

CREATE POLICY "Admins upload package media" ON storage.objects
  FOR INSERT
  WITH CHECK (bucket_id = 'package-media' AND (public.is_admin() OR auth.role() = 'authenticated'));

CREATE POLICY "Admins update package media" ON storage.objects
  FOR UPDATE
  USING (bucket_id = 'package-media' AND public.is_admin());

CREATE POLICY "Admins delete package media" ON storage.objects
  FOR DELETE
  USING (bucket_id = 'package-media' AND public.is_admin());
