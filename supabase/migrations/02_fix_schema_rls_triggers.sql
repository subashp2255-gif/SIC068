-- ============================================================
-- 02_fix_schema_rls_triggers.sql: OneJourney Schema Fixes, Secure RLS & Auto-Profile Trigger
-- ============================================================

-- 1. Enable UUID extension
CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

-- 2. Destinations Table
CREATE TABLE IF NOT EXISTS public.destinations (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  name TEXT NOT NULL,
  slug TEXT UNIQUE NOT NULL,
  city TEXT,
  state TEXT,
  region TEXT,
  country TEXT DEFAULT 'India',
  description TEXT,
  spiritual_significance TEXT,
  best_months TEXT,
  latitude DOUBLE PRECISION,
  longitude DOUBLE PRECISION,
  image_url TEXT,
  alt_text TEXT,
  main_category TEXT,
  faith_category TEXT,
  category_badge TEXT,
  is_active BOOLEAN NOT NULL DEFAULT true,
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

-- 3. Categories Table
CREATE TABLE IF NOT EXISTS public.categories (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  name TEXT NOT NULL,
  slug TEXT UNIQUE NOT NULL,
  description TEXT,
  icon_name TEXT,
  image_url TEXT,
  display_order INT NOT NULL DEFAULT 0,
  is_active BOOLEAN NOT NULL DEFAULT true,
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

-- 4. Packages Table
CREATE TABLE IF NOT EXISTS public.packages (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  slug TEXT UNIQUE NOT NULL,
  name TEXT NOT NULL,
  destination_name TEXT,
  summary TEXT,
  description TEXT,
  location TEXT,
  region TEXT,
  category TEXT NOT NULL DEFAULT 'Family',
  sub_category TEXT,
  duration_days INT NOT NULL DEFAULT 4,
  duration_nights INT,
  duration_label TEXT,
  base_price NUMERIC(10, 2),
  price_basis TEXT,
  currency TEXT DEFAULT 'INR',
  default_departure_city TEXT,
  best_season TEXT,
  difficulty_level TEXT,
  walking_level TEXT,
  pace TEXT DEFAULT 'Relaxed',
  food_types TEXT[],
  transport_types TEXT[],
  tags TEXT[],
  traveller_types TEXT[],
  route TEXT[],
  destinations_text TEXT,
  image TEXT,
  alt_text TEXT,
  category_label TEXT,
  traveller_type TEXT,
  senior_friendly BOOLEAN NOT NULL DEFAULT true,
  child_friendly BOOLEAN NOT NULL DEFAULT true,
  wheelchair_access BOOLEAN NOT NULL DEFAULT false,
  veg_meals BOOLEAN NOT NULL DEFAULT true,
  accessibility_status TEXT DEFAULT 'Accessibility on Request',
  rating NUMERIC(3, 2),
  review_count INT DEFAULT 0,
  seats_left INT DEFAULT 10,
  recent_bookings INT DEFAULT 0,
  verified BOOLEAN DEFAULT true,
  cancellation_summary TEXT,
  featured BOOLEAN NOT NULL DEFAULT false,
  is_active BOOLEAN NOT NULL DEFAULT true,
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

-- 5. Package Categories Junction
CREATE TABLE IF NOT EXISTS public.package_categories (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  package_id UUID NOT NULL REFERENCES public.packages(id) ON DELETE CASCADE,
  category_id UUID NOT NULL REFERENCES public.categories(id) ON DELETE CASCADE,
  display_order INT NOT NULL DEFAULT 0,
  UNIQUE(package_id, category_id)
);

-- 6. Package Destinations Junction
CREATE TABLE IF NOT EXISTS public.package_destinations (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  package_id UUID NOT NULL REFERENCES public.packages(id) ON DELETE CASCADE,
  destination_id UUID NOT NULL REFERENCES public.destinations(id) ON DELETE CASCADE,
  visit_order INT NOT NULL DEFAULT 1,
  days_spent INT,
  UNIQUE(package_id, destination_id)
);

-- 7. Package Departures
CREATE TABLE IF NOT EXISTS public.package_departures (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  package_id UUID NOT NULL REFERENCES public.packages(id) ON DELETE CASCADE,
  departure_city TEXT NOT NULL,
  start_date DATE NOT NULL,
  end_date DATE NOT NULL,
  capacity INT NOT NULL DEFAULT 20,
  available_seats INT NOT NULL DEFAULT 20,
  price_per_person NUMERIC(10, 2),
  booking_deadline DATE,
  status TEXT NOT NULL DEFAULT 'available',
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

-- 8. Itinerary Days Table
CREATE TABLE IF NOT EXISTS public.itinerary_days (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  package_id UUID NOT NULL REFERENCES public.packages(id) ON DELETE CASCADE,
  day_number INT NOT NULL,
  title TEXT NOT NULL,
  description TEXT,
  location TEXT,
  overview TEXT,
  morning_title TEXT,
  morning_description TEXT,
  afternoon_title TEXT,
  afternoon_description TEXT,
  evening_title TEXT,
  evening_description TEXT,
  important_timings TEXT,
  meals TEXT,
  transport TEXT,
  walking_level TEXT,
  stay TEXT,
  weather TEXT,
  dress_code TEXT,
  packing_suggestions TEXT,
  accessibility_note TEXT,
  visitor_note TEXT,
  travel_duration TEXT,
  accommodation_name TEXT,
  walking_distance_km NUMERIC(5,2),
  travel_distance_km NUMERIC(5,2),
  notes TEXT,
  UNIQUE(package_id, day_number)
);

-- 9. Package Features Table
CREATE TABLE IF NOT EXISTS public.package_features (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  package_id UUID NOT NULL REFERENCES public.packages(id) ON DELETE CASCADE,
  feature_type TEXT NOT NULL,
  title TEXT NOT NULL,
  description TEXT,
  display_order INT NOT NULL DEFAULT 0
);

-- 10. Package Media Table
CREATE TABLE IF NOT EXISTS public.package_media (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  package_id UUID NOT NULL REFERENCES public.packages(id) ON DELETE CASCADE,
  media_type TEXT NOT NULL DEFAULT 'image',
  url TEXT NOT NULL,
  storage_path TEXT,
  alt_text TEXT,
  caption TEXT,
  is_cover BOOLEAN NOT NULL DEFAULT false,
  display_order INT NOT NULL DEFAULT 0,
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

-- 11. Package Accessibility Table
CREATE TABLE IF NOT EXISTS public.package_accessibility (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  package_id UUID NOT NULL REFERENCES public.packages(id) ON DELETE CASCADE,
  wheelchair_available BOOLEAN DEFAULT false,
  battery_cart_available BOOLEAN DEFAULT false,
  reduced_walking_option BOOLEAN DEFAULT false,
  lift_accessible_stay BOOLEAN DEFAULT false,
  ground_floor_room BOOLEAN DEFAULT false,
  accessible_bathroom BOOLEAN DEFAULT false,
  darshan_assistance BOOLEAN DEFAULT false,
  medical_facility_nearby BOOLEAN DEFAULT false,
  care_notes TEXT,
  requires_confirmation BOOLEAN DEFAULT true,
  updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  UNIQUE(package_id)
);

-- 12. FAQs Table
CREATE TABLE IF NOT EXISTS public.faqs (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  package_id UUID REFERENCES public.packages(id) ON DELETE CASCADE,
  category TEXT DEFAULT 'general',
  question TEXT NOT NULL,
  answer TEXT NOT NULL,
  display_order INT NOT NULL DEFAULT 0,
  is_active BOOLEAN NOT NULL DEFAULT true,
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

-- 13. Testimonials Table
CREATE TABLE IF NOT EXISTS public.testimonials (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  package_id UUID REFERENCES public.packages(id) ON DELETE CASCADE,
  traveller_name TEXT NOT NULL,
  traveller_age INT,
  traveller_location TEXT,
  quote TEXT NOT NULL,
  rating INT NOT NULL DEFAULT 5 CHECK (rating >= 1 AND rating <= 5),
  avatar_url TEXT,
  trip_name TEXT,
  travel_date DATE,
  is_featured BOOLEAN NOT NULL DEFAULT true,
  is_active BOOLEAN NOT NULL DEFAULT true,
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

-- 14. Enquiries Table
CREATE TABLE IF NOT EXISTS public.enquiries (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  reference_number TEXT,
  user_id UUID REFERENCES auth.users(id) ON DELETE SET NULL,
  package_id UUID REFERENCES public.packages(id) ON DELETE SET NULL,
  package_title TEXT,
  destination TEXT,
  travel_timing TEXT,
  preferred_month TEXT,
  start_date DATE,
  end_date DATE,
  departure_city TEXT,
  date_flexibility TEXT,
  adults INT NOT NULL DEFAULT 1,
  children INT NOT NULL DEFAULT 0,
  infants INT NOT NULL DEFAULT 0,
  senior_citizens INT NOT NULL DEFAULT 0,
  special_assistance TEXT[],
  full_name TEXT NOT NULL,
  email TEXT,
  phone TEXT NOT NULL,
  phone_country_code TEXT DEFAULT '+91',
  preferred_contact_method TEXT DEFAULT 'phone',
  preferred_contact_time TEXT,
  message TEXT,
  source TEXT DEFAULT 'website',
  consent BOOLEAN NOT NULL DEFAULT true,
  whatsapp_updates BOOLEAN DEFAULT true,
  status TEXT NOT NULL DEFAULT 'pending',
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

-- 15. Favorites Table & Compatibility
CREATE TABLE IF NOT EXISTS public.favorites (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  user_id UUID NOT NULL REFERENCES auth.users(id) ON DELETE CASCADE,
  package_id UUID NOT NULL REFERENCES public.packages(id) ON DELETE CASCADE,
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  UNIQUE(user_id, package_id)
);

CREATE TABLE IF NOT EXISTS public.user_favorites (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  user_id UUID NOT NULL REFERENCES auth.users(id) ON DELETE CASCADE,
  package_id UUID REFERENCES public.packages(id) ON DELETE CASCADE,
  created_at TIMESTAMPTZ DEFAULT NOW(),
  UNIQUE(user_id, package_id)
);

-- 16. Reviews Table & Compatibility
CREATE TABLE IF NOT EXISTS public.reviews (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  user_id UUID NOT NULL REFERENCES auth.users(id) ON DELETE CASCADE,
  package_id UUID NOT NULL REFERENCES public.packages(id) ON DELETE CASCADE,
  rating INT NOT NULL CHECK (rating >= 1 AND rating <= 5),
  title TEXT,
  comment TEXT,
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

CREATE TABLE IF NOT EXISTS public.package_reviews (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  package_id UUID REFERENCES public.packages(id) ON DELETE CASCADE,
  user_id UUID NOT NULL REFERENCES auth.users(id) ON DELETE CASCADE,
  reviewer_name TEXT NOT NULL,
  rating INT NOT NULL CHECK (rating >= 1 AND rating <= 5),
  comment TEXT NOT NULL,
  created_at TIMESTAMPTZ DEFAULT NOW()
);

-- 17. User Profiles Table
CREATE TABLE IF NOT EXISTS public.profiles (
  id UUID PRIMARY KEY REFERENCES auth.users(id) ON DELETE CASCADE,
  full_name TEXT,
  phone TEXT,
  preferred_language TEXT DEFAULT 'English',
  avatar_url TEXT,
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

-- 18. AI Conversations Table
CREATE TABLE IF NOT EXISTS public.ai_conversations (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  user_id UUID REFERENCES auth.users(id) ON DELETE CASCADE,
  anonymous_session_id TEXT,
  title TEXT,
  status TEXT NOT NULL DEFAULT 'active',
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

-- 19. AI Messages Table
CREATE TABLE IF NOT EXISTS public.ai_messages (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  conversation_id UUID NOT NULL REFERENCES public.ai_conversations(id) ON DELETE CASCADE,
  role TEXT NOT NULL,
  content TEXT NOT NULL,
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

-- 20. AI Preferences Table
CREATE TABLE IF NOT EXISTS public.ai_preferences (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  conversation_id UUID NOT NULL REFERENCES public.ai_conversations(id) ON DELETE CASCADE,
  destinations TEXT[],
  excluded_destinations TEXT[],
  departure_city TEXT,
  travel_month TEXT,
  start_date DATE,
  end_date DATE,
  budget_min NUMERIC(10,2),
  budget_max NUMERIC(10,2),
  budget_type TEXT,
  adults INT,
  children INT,
  senior_citizens INT,
  duration_min INT,
  duration_max INT,
  pace_preference TEXT,
  transport_preferences TEXT[],
  food_preferences TEXT[],
  accessibility_needs TEXT[],
  special_requirements TEXT,
  faith TEXT,
  journey_type TEXT,
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  UNIQUE(conversation_id)
);

-- 21. AI Recommendations Table
CREATE TABLE IF NOT EXISTS public.ai_recommendations (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  conversation_id UUID NOT NULL REFERENCES public.ai_conversations(id) ON DELETE CASCADE,
  message_id UUID REFERENCES public.ai_messages(id) ON DELETE SET NULL,
  package_id UUID NOT NULL REFERENCES public.packages(id) ON DELETE CASCADE,
  match_score NUMERIC(5,2),
  matched_features TEXT[],
  unmet_preferences TEXT[],
  reason TEXT,
  rank_position INT,
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

-- ============================================================
-- RLS CONFIGURATION & LEAST-PRIVILEGE POLICIES
-- ============================================================

-- Enable RLS on all 20 tables
ALTER TABLE public.destinations ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.categories ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.packages ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.package_categories ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.package_destinations ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.package_departures ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.itinerary_days ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.package_features ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.package_media ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.package_accessibility ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.faqs ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.testimonials ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.enquiries ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.favorites ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.user_favorites ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.reviews ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.package_reviews ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.profiles ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.ai_conversations ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.ai_messages ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.ai_preferences ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.ai_recommendations ENABLE ROW LEVEL SECURITY;

-- Drop legacy / unsafe policies
DO $$
DECLARE
  pol RECORD;
BEGIN
  FOR pol IN
    SELECT policyname, tablename
    FROM pg_policies
    WHERE schemaname = 'public'
  LOOP
    EXECUTE format('DROP POLICY IF EXISTS %I ON public.%I', pol.policyname, pol.tablename);
  END LOOP;
END $$;

-- --- Public Read Catalogue Policies ---
CREATE POLICY "Public Read Destinations" ON public.destinations FOR SELECT USING (is_active = true);
CREATE POLICY "Public Read Categories" ON public.categories FOR SELECT USING (is_active = true);
CREATE POLICY "Public Read Packages" ON public.packages FOR SELECT USING (is_active = true);
CREATE POLICY "Public Read FAQs" ON public.faqs FOR SELECT USING (is_active = true);
CREATE POLICY "Public Read Testimonials" ON public.testimonials FOR SELECT USING (is_active = true);

CREATE POLICY "Public Read Package Categories" ON public.package_categories FOR SELECT USING (
  EXISTS (SELECT 1 FROM public.packages WHERE packages.id = package_categories.package_id AND packages.is_active = true)
);
CREATE POLICY "Public Read Package Destinations" ON public.package_destinations FOR SELECT USING (
  EXISTS (SELECT 1 FROM public.packages WHERE packages.id = package_destinations.package_id AND packages.is_active = true)
);
CREATE POLICY "Public Read Package Departures" ON public.package_departures FOR SELECT USING (
  EXISTS (SELECT 1 FROM public.packages WHERE packages.id = package_departures.package_id AND packages.is_active = true)
);
CREATE POLICY "Public Read Itinerary Days" ON public.itinerary_days FOR SELECT USING (
  EXISTS (SELECT 1 FROM public.packages WHERE packages.id = itinerary_days.package_id AND packages.is_active = true)
);
CREATE POLICY "Public Read Package Features" ON public.package_features FOR SELECT USING (
  EXISTS (SELECT 1 FROM public.packages WHERE packages.id = package_features.package_id AND packages.is_active = true)
);
CREATE POLICY "Public Read Package Media" ON public.package_media FOR SELECT USING (
  EXISTS (SELECT 1 FROM public.packages WHERE packages.id = package_media.package_id AND packages.is_active = true)
);
CREATE POLICY "Public Read Package Accessibility" ON public.package_accessibility FOR SELECT USING (
  EXISTS (SELECT 1 FROM public.packages WHERE packages.id = package_accessibility.package_id AND packages.is_active = true)
);

-- --- Profiles Policies ---
CREATE POLICY "Users: Read own profile" ON public.profiles FOR SELECT USING (auth.uid() = id);
CREATE POLICY "Users: Update own profile" ON public.profiles FOR UPDATE USING (auth.uid() = id) WITH CHECK (auth.uid() = id);
CREATE POLICY "Users: Insert own profile" ON public.profiles FOR INSERT WITH CHECK (auth.uid() = id);

-- --- Favorites Policies ---
CREATE POLICY "Users: Select own favorites" ON public.favorites FOR SELECT USING (auth.uid() = user_id);
CREATE POLICY "Users: Insert own favorites" ON public.favorites FOR INSERT WITH CHECK (auth.uid() = user_id);
CREATE POLICY "Users: Delete own favorites" ON public.favorites FOR DELETE USING (auth.uid() = user_id);

CREATE POLICY "Users: Select own user_favorites" ON public.user_favorites FOR SELECT USING (auth.uid() = user_id);
CREATE POLICY "Users: Insert own user_favorites" ON public.user_favorites FOR INSERT WITH CHECK (auth.uid() = user_id);
CREATE POLICY "Users: Delete own user_favorites" ON public.user_favorites FOR DELETE USING (auth.uid() = user_id);

-- --- Enquiries Policies ---
CREATE POLICY "Anyone: Insert enquiry" ON public.enquiries FOR INSERT WITH CHECK (user_id IS NULL OR auth.uid() = user_id);
CREATE POLICY "Users: Select own enquiries" ON public.enquiries FOR SELECT USING (auth.uid() = user_id);

-- --- Reviews Policies ---
CREATE POLICY "Public Read Reviews" ON public.reviews FOR SELECT USING (true);
CREATE POLICY "Users: Insert own review" ON public.reviews FOR INSERT WITH CHECK (auth.uid() = user_id);
CREATE POLICY "Users: Update own review" ON public.reviews FOR UPDATE USING (auth.uid() = user_id) WITH CHECK (auth.uid() = user_id);
CREATE POLICY "Users: Delete own review" ON public.reviews FOR DELETE USING (auth.uid() = user_id);

CREATE POLICY "Public Read Package Reviews" ON public.package_reviews FOR SELECT USING (true);
CREATE POLICY "Users: Insert own package_review" ON public.package_reviews FOR INSERT WITH CHECK (auth.uid() = user_id);

-- --- AI Tables Policies ---
CREATE POLICY "Users: Select own ai conversations" ON public.ai_conversations FOR SELECT USING (user_id IS NULL OR auth.uid() = user_id);
CREATE POLICY "Users: Insert own ai conversations" ON public.ai_conversations FOR INSERT WITH CHECK (user_id IS NULL OR auth.uid() = user_id);
CREATE POLICY "Users: Update own ai conversations" ON public.ai_conversations FOR UPDATE USING (user_id IS NULL OR auth.uid() = user_id);

CREATE POLICY "Users: Select own ai messages" ON public.ai_messages FOR SELECT USING (
  EXISTS (SELECT 1 FROM public.ai_conversations WHERE ai_conversations.id = ai_messages.conversation_id AND (ai_conversations.user_id IS NULL OR ai_conversations.user_id = auth.uid()))
);
CREATE POLICY "Users: Insert own ai messages" ON public.ai_messages FOR INSERT WITH CHECK (
  EXISTS (SELECT 1 FROM public.ai_conversations WHERE ai_conversations.id = ai_messages.conversation_id AND (ai_conversations.user_id IS NULL OR ai_conversations.user_id = auth.uid()))
);

CREATE POLICY "Users: Manage own ai preferences" ON public.ai_preferences FOR ALL USING (
  EXISTS (SELECT 1 FROM public.ai_conversations WHERE ai_conversations.id = ai_preferences.conversation_id AND (ai_conversations.user_id IS NULL OR ai_conversations.user_id = auth.uid()))
) WITH CHECK (
  EXISTS (SELECT 1 FROM public.ai_conversations WHERE ai_conversations.id = ai_preferences.conversation_id AND (ai_conversations.user_id IS NULL OR ai_conversations.user_id = auth.uid()))
);

CREATE POLICY "Users: Manage own ai recommendations" ON public.ai_recommendations FOR ALL USING (
  EXISTS (SELECT 1 FROM public.ai_conversations WHERE ai_conversations.id = ai_recommendations.conversation_id AND (ai_conversations.user_id IS NULL OR ai_conversations.user_id = auth.uid()))
) WITH CHECK (
  EXISTS (SELECT 1 FROM public.ai_conversations WHERE ai_conversations.id = ai_recommendations.conversation_id AND (ai_conversations.user_id IS NULL OR ai_conversations.user_id = auth.uid()))
);

-- ============================================================
-- AUTO-PROFILE TRIGGER FOR AUTH SIGNUPS
-- ============================================================
CREATE OR REPLACE FUNCTION public.handle_new_user()
RETURNS TRIGGER
LANGUAGE plpgsql
SECURITY DEFINER
SET search_path = public
AS $$
BEGIN
  INSERT INTO public.profiles (id, full_name, avatar_url)
  VALUES (
    NEW.id,
    COALESCE(NEW.raw_user_meta_data->>'full_name', NEW.raw_user_meta_data->>'name', ''),
    COALESCE(NEW.raw_user_meta_data->>'avatar_url', '')
  )
  ON CONFLICT (id) DO UPDATE SET
    full_name = EXCLUDED.full_name,
    avatar_url = EXCLUDED.avatar_url,
    updated_at = NOW();
  RETURN NEW;
END;
$$;

DROP TRIGGER IF EXISTS on_auth_user_created ON auth.users;
CREATE TRIGGER on_auth_user_created
  AFTER INSERT ON auth.users
  FOR EACH ROW EXECUTE FUNCTION public.handle_new_user();
