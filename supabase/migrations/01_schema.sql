-- ============================================================
-- 01_schema.sql: OneJourney Supabase Schema & RLS Policies
-- ============================================================

-- 1. Enable UUID Extension
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
  image_url TEXT,
  alt_text TEXT,
  main_category TEXT,
  faith_category TEXT,
  category_badge TEXT,
  is_active BOOLEAN DEFAULT true,
  created_at TIMESTAMPTZ DEFAULT NOW(),
  updated_at TIMESTAMPTZ DEFAULT NOW()
);

-- 3. Categories Table
CREATE TABLE IF NOT EXISTS public.categories (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  name TEXT NOT NULL,
  slug TEXT UNIQUE NOT NULL,
  description TEXT,
  display_order INT DEFAULT 0,
  created_at TIMESTAMPTZ DEFAULT NOW()
);

-- 4. Packages Table
CREATE TABLE IF NOT EXISTS public.packages (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  slug TEXT UNIQUE NOT NULL,
  name TEXT NOT NULL,
  destination_name TEXT,
  description TEXT,
  location TEXT,
  region TEXT,
  category TEXT DEFAULT 'Family',
  sub_category TEXT,
  duration_days INT DEFAULT 4,
  duration_nights INT,
  duration_label TEXT,
  base_price NUMERIC(10, 2),
  best_season TEXT,
  pace TEXT DEFAULT 'Relaxed',
  tags TEXT[],
  traveller_types TEXT[],
  route TEXT[],
  destinations_text TEXT,
  image TEXT,
  alt_text TEXT,
  category_label TEXT,
  traveller_type TEXT,
  senior_friendly BOOLEAN DEFAULT false,
  child_friendly BOOLEAN DEFAULT false,
  wheelchair_access BOOLEAN DEFAULT false,
  veg_meals BOOLEAN DEFAULT false,
  accessibility_status TEXT DEFAULT 'Accessibility on Request',
  rating NUMERIC(3, 2),
  review_count INT,
  seats_left INT,
  recent_bookings INT,
  verified BOOLEAN DEFAULT false,
  cancellation_summary TEXT,
  is_active BOOLEAN DEFAULT true,
  created_at TIMESTAMPTZ DEFAULT NOW(),
  updated_at TIMESTAMPTZ DEFAULT NOW()
);

-- 5. Package Categories (Junction)
CREATE TABLE IF NOT EXISTS public.package_categories (
  package_id UUID REFERENCES public.packages(id) ON DELETE CASCADE,
  category_id UUID REFERENCES public.categories(id) ON DELETE CASCADE,
  display_order INT DEFAULT 0,
  PRIMARY KEY (package_id, category_id)
);

-- 6. Itinerary Days Table
CREATE TABLE IF NOT EXISTS public.itinerary_days (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  package_id UUID REFERENCES public.packages(id) ON DELETE CASCADE,
  day_number INT NOT NULL,
  title TEXT NOT NULL,
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
  UNIQUE(package_id, day_number)
);

-- 7. Package Features Table
CREATE TABLE IF NOT EXISTS public.package_features (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  package_id UUID REFERENCES public.packages(id) ON DELETE CASCADE,
  feature_type TEXT NOT NULL, -- inclusion, highlight, tip, benefit, itinerary_summary
  title TEXT NOT NULL,
  description TEXT,
  display_order INT DEFAULT 0
);

-- 8. Package Media Table
CREATE TABLE IF NOT EXISTS public.package_media (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  package_id UUID REFERENCES public.packages(id) ON DELETE CASCADE,
  media_type TEXT DEFAULT 'image',
  url TEXT NOT NULL,
  alt_text TEXT,
  is_cover BOOLEAN DEFAULT false,
  display_order INT DEFAULT 0
);

-- 9. Package Accessibility Table
CREATE TABLE IF NOT EXISTS public.package_accessibility (
  package_id UUID PRIMARY KEY REFERENCES public.packages(id) ON DELETE CASCADE,
  wheelchair_available BOOLEAN DEFAULT false,
  battery_cart_available BOOLEAN DEFAULT false,
  reduced_walking_option BOOLEAN DEFAULT false,
  lift_accessible_stay BOOLEAN DEFAULT false,
  ground_floor_room BOOLEAN DEFAULT false,
  accessible_bathroom BOOLEAN DEFAULT false,
  darshan_assistance BOOLEAN DEFAULT false,
  medical_facility_nearby BOOLEAN DEFAULT false,
  care_notes TEXT,
  requires_confirmation BOOLEAN DEFAULT true
);

-- 10. FAQs Table
CREATE TABLE IF NOT EXISTS public.faqs (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  package_id UUID REFERENCES public.packages(id) ON DELETE CASCADE,
  category TEXT DEFAULT 'general',
  question TEXT NOT NULL,
  answer TEXT NOT NULL,
  display_order INT DEFAULT 0,
  is_active BOOLEAN DEFAULT true
);

-- 11. Testimonials Table
CREATE TABLE IF NOT EXISTS public.testimonials (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  traveller_name TEXT NOT NULL,
  traveller_age INT,
  traveller_location TEXT,
  quote TEXT NOT NULL,
  rating NUMERIC(3, 2) DEFAULT 5,
  avatar_url TEXT,
  trip_name TEXT,
  is_featured BOOLEAN DEFAULT true,
  is_active BOOLEAN DEFAULT true,
  created_at TIMESTAMPTZ DEFAULT NOW()
);

-- 12. Enquiries Table
CREATE TABLE IF NOT EXISTS public.enquiries (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  package_id UUID REFERENCES public.packages(id) ON DELETE SET NULL,
  user_id UUID,
  full_name TEXT NOT NULL,
  email TEXT NOT NULL,
  phone TEXT NOT NULL,
  travel_dates TEXT,
  travellers_count TEXT,
  special_requirements TEXT,
  status TEXT DEFAULT 'pending',
  created_at TIMESTAMPTZ DEFAULT NOW()
);

-- 13. User Favorites Table
CREATE TABLE IF NOT EXISTS public.user_favorites (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  user_id UUID NOT NULL,
  package_id UUID REFERENCES public.packages(id) ON DELETE CASCADE,
  created_at TIMESTAMPTZ DEFAULT NOW(),
  UNIQUE(user_id, package_id)
);

-- 14. Package Reviews Table
CREATE TABLE IF NOT EXISTS public.package_reviews (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  package_id UUID REFERENCES public.packages(id) ON DELETE CASCADE,
  user_id UUID NOT NULL,
  reviewer_name TEXT NOT NULL,
  rating INT NOT NULL CHECK (rating >= 1 AND rating <= 5),
  comment TEXT NOT NULL,
  created_at TIMESTAMPTZ DEFAULT NOW()
);

-- 15. User Profiles Table
CREATE TABLE IF NOT EXISTS public.profiles (
  id UUID PRIMARY KEY REFERENCES auth.users(id) ON DELETE CASCADE,
  email TEXT NOT NULL,
  full_name TEXT,
  avatar_url TEXT,
  phone TEXT,
  created_at TIMESTAMPTZ DEFAULT NOW(),
  updated_at TIMESTAMPTZ DEFAULT NOW()
);

-- Enable RLS on all tables
ALTER TABLE public.destinations ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.categories ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.packages ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.package_categories ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.itinerary_days ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.package_features ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.package_media ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.package_accessibility ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.faqs ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.testimonials ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.enquiries ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.user_favorites ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.package_reviews ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.profiles ENABLE ROW LEVEL SECURITY;

-- Create Public Read Policies for Catalog Data
CREATE POLICY "Public Read Destinations" ON public.destinations FOR SELECT USING (true);
CREATE POLICY "Public Read Categories" ON public.categories FOR SELECT USING (true);
CREATE POLICY "Public Read Packages" ON public.packages FOR SELECT USING (true);
CREATE POLICY "Public Read Package Categories" ON public.package_categories FOR SELECT USING (true);
CREATE POLICY "Public Read Itinerary Days" ON public.itinerary_days FOR SELECT USING (true);
CREATE POLICY "Public Read Package Features" ON public.package_features FOR SELECT USING (true);
CREATE POLICY "Public Read Package Media" ON public.package_media FOR SELECT USING (true);
CREATE POLICY "Public Read Package Accessibility" ON public.package_accessibility FOR SELECT USING (true);
CREATE POLICY "Public Read FAQs" ON public.faqs FOR SELECT USING (true);
CREATE POLICY "Public Read Testimonials" ON public.testimonials FOR SELECT USING (true);
CREATE POLICY "Public Read Reviews" ON public.package_reviews FOR SELECT USING (true);

-- Allow Public/Anon Insert Policies for Enquiries and Seed Operations
CREATE POLICY "Public Insert Enquiries" ON public.enquiries FOR INSERT WITH CHECK (true);
CREATE POLICY "Public Insert Destinations" ON public.destinations FOR ALL USING (true) WITH CHECK (true);
CREATE POLICY "Public Insert Categories" ON public.categories FOR ALL USING (true) WITH CHECK (true);
CREATE POLICY "Public Insert Packages" ON public.packages FOR ALL USING (true) WITH CHECK (true);
CREATE POLICY "Public Insert Package Categories" ON public.package_categories FOR ALL USING (true) WITH CHECK (true);
CREATE POLICY "Public Insert Itinerary Days" ON public.itinerary_days FOR ALL USING (true) WITH CHECK (true);
CREATE POLICY "Public Insert Package Features" ON public.package_features FOR ALL USING (true) WITH CHECK (true);
CREATE POLICY "Public Insert Package Media" ON public.package_media FOR ALL USING (true) WITH CHECK (true);
CREATE POLICY "Public Insert Package Accessibility" ON public.package_accessibility FOR ALL USING (true) WITH CHECK (true);
CREATE POLICY "Public Insert FAQs" ON public.faqs FOR ALL USING (true) WITH CHECK (true);
CREATE POLICY "Public Insert Testimonials" ON public.testimonials FOR ALL USING (true) WITH CHECK (true);

-- User-scoped policies for Favorites & Reviews & Profiles
CREATE POLICY "Public Manage Favorites" ON public.user_favorites FOR ALL USING (true) WITH CHECK (true);
CREATE POLICY "Public Insert Reviews" ON public.package_reviews FOR INSERT WITH CHECK (true);
CREATE POLICY "Public Manage Profiles" ON public.profiles FOR ALL USING (true) WITH CHECK (true);
