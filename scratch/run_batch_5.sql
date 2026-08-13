DO $$
BEGIN
INSERT INTO public.packages (
  slug, name, destination_name, description, location, region, category, sub_category,
  duration_days, duration_nights, duration_label, base_price, best_season, pace,
  tags, traveller_types, route, destinations_text, image, alt_text, category_label,
  traveller_type, senior_friendly, child_friendly, wheelchair_access, veg_meals,
  accessibility_status, rating, review_count, seats_left, recent_bookings, verified, cancellation_summary, is_active
) VALUES (
  'christianity-f-tima-portugal', 'Fátima Journey', 'Fátima', 'A thoughtfully planned christian pilgrimage offering comfort, guidance, and a memorable experience.',
  'Santarém, Portugal', 'International', 'Pilgrimage', 'Christianity',
  3, 2, '3 Days / 2 Nights',
  21700, 'October–March', 'Easy',
  ARRAY['Christian Pilgrimage','Curated Journey'],
  ARRAY['Pilgrims','Seniors'],
  ARRAY['Santarém','Fátima'],
  'Fátima (Santarém, Portugal)', '/images/tourist-places/pilgrimage/Christianity/Fátima, Portugal.jpg', 'Fátima christian pilgrimage destination in Santarém, Portugal', 'Christian Pilgrimage',
  'Senior Friendly', true, true, true,
  true, 'Wheelchair Accessible', 4.8,
  12, 6, 8, true,
  'Get a 100% full refund on cancellations made up to 15 days before the departure. Rescheduling options are fully flexible.', true
) ON CONFLICT (slug) DO UPDATE SET
  name = EXCLUDED.name,
  description = EXCLUDED.description,
  location = EXCLUDED.location,
  base_price = EXCLUDED.base_price,
  rating = EXCLUDED.rating,
  is_active = true;
INSERT INTO public.packages (
  slug, name, destination_name, description, location, region, category, sub_category,
  duration_days, duration_nights, duration_label, base_price, best_season, pace,
  tags, traveller_types, route, destinations_text, image, alt_text, category_label,
  traveller_type, senior_friendly, child_friendly, wheelchair_access, veg_meals,
  accessibility_status, rating, review_count, seats_left, recent_bookings, verified, cancellation_summary, is_active
) VALUES (
  'christianity-lalibela-ethiopia', 'Lalibela Journey', 'Lalibela', 'A thoughtfully planned christian pilgrimage offering comfort, guidance, and a memorable experience.',
  'Amhara, Ethiopia', 'International', 'Pilgrimage', 'Christianity',
  3, 2, '3 Days / 2 Nights',
  22900, 'October–March', 'Easy',
  ARRAY['Christian Pilgrimage','Curated Journey'],
  ARRAY['Pilgrims','Seniors'],
  ARRAY['Amhara','Lalibela'],
  'Lalibela (Amhara, Ethiopia)', '/images/tourist-places/pilgrimage/Christianity/Lalibela, Ethiopia.webp', 'Lalibela christian pilgrimage destination in Amhara, Ethiopia', 'Christian Pilgrimage',
  'Senior Friendly', true, true, true,
  true, 'Wheelchair Accessible', 4.8,
  12, 6, 8, true,
  'Get a 100% full refund on cancellations made up to 15 days before the departure. Rescheduling options are fully flexible.', true
) ON CONFLICT (slug) DO UPDATE SET
  name = EXCLUDED.name,
  description = EXCLUDED.description,
  location = EXCLUDED.location,
  base_price = EXCLUDED.base_price,
  rating = EXCLUDED.rating,
  is_active = true;
INSERT INTO public.packages (
  slug, name, destination_name, description, location, region, category, sub_category,
  duration_days, duration_nights, duration_label, base_price, best_season, pace,
  tags, traveller_types, route, destinations_text, image, alt_text, category_label,
  traveller_type, senior_friendly, child_friendly, wheelchair_access, veg_meals,
  accessibility_status, rating, review_count, seats_left, recent_bookings, verified, cancellation_summary, is_active
) VALUES (
  'christianity-mount-athos-greece', 'Mount Athos Journey', 'Mount Athos', 'A thoughtfully planned christian pilgrimage offering comfort, guidance, and a memorable experience.',
  'Chalkidiki, Greece', 'International', 'Pilgrimage', 'Christianity',
  3, 2, '3 Days / 2 Nights',
  14500, 'October–March', 'Easy',
  ARRAY['Christian Pilgrimage','Curated Journey'],
  ARRAY['Pilgrims','Seniors'],
  ARRAY['Chalkidiki','Mount Athos'],
  'Mount Athos (Chalkidiki, Greece)', '/images/tourist-places/pilgrimage/Christianity/Mount Athos, Greece.jpg', 'Mount Athos christian pilgrimage destination in Chalkidiki, Greece', 'Christian Pilgrimage',
  'Senior Friendly', true, true, true,
  true, 'Wheelchair Accessible', 4.8,
  12, 6, 8, true,
  'Get a 100% full refund on cancellations made up to 15 days before the departure. Rescheduling options are fully flexible.', true
) ON CONFLICT (slug) DO UPDATE SET
  name = EXCLUDED.name,
  description = EXCLUDED.description,
  location = EXCLUDED.location,
  base_price = EXCLUDED.base_price,
  rating = EXCLUDED.rating,
  is_active = true;
INSERT INTO public.packages (
  slug, name, destination_name, description, location, region, category, sub_category,
  duration_days, duration_nights, duration_label, base_price, best_season, pace,
  tags, traveller_types, route, destinations_text, image, alt_text, category_label,
  traveller_type, senior_friendly, child_friendly, wheelchair_access, veg_meals,
  accessibility_status, rating, review_count, seats_left, recent_bookings, verified, cancellation_summary, is_active
) VALUES (
  'christianity-old-city-jerusalem-israel', 'Old City Jerusalem Journey', 'Old City Jerusalem', 'A thoughtfully planned christian pilgrimage offering comfort, guidance, and a memorable experience.',
  'Jerusalem, Israel', 'International', 'Pilgrimage', 'Christianity',
  3, 2, '3 Days / 2 Nights',
  15700, 'October–March', 'Easy',
  ARRAY['Christian Pilgrimage','Curated Journey'],
  ARRAY['Pilgrims','Seniors'],
  ARRAY['Jerusalem','Old City Jerusalem'],
  'Old City Jerusalem (Jerusalem, Israel)', '/images/tourist-places/pilgrimage/Christianity/Old City Jerusalem, Israel.jpg', 'Old City Jerusalem christian pilgrimage destination in Jerusalem, Israel', 'Christian Pilgrimage',
  'Senior Friendly', true, true, true,
  true, 'Wheelchair Accessible', 4.8,
  12, 6, 8, true,
  'Get a 100% full refund on cancellations made up to 15 days before the departure. Rescheduling options are fully flexible.', true
) ON CONFLICT (slug) DO UPDATE SET
  name = EXCLUDED.name,
  description = EXCLUDED.description,
  location = EXCLUDED.location,
  base_price = EXCLUDED.base_price,
  rating = EXCLUDED.rating,
  is_active = true;
INSERT INTO public.packages (
  slug, name, destination_name, description, location, region, category, sub_category,
  duration_days, duration_nights, duration_label, base_price, best_season, pace,
  tags, traveller_types, route, destinations_text, image, alt_text, category_label,
  traveller_type, senior_friendly, child_friendly, wheelchair_access, veg_meals,
  accessibility_status, rating, review_count, seats_left, recent_bookings, verified, cancellation_summary, is_active
) VALUES (
  'christianity-sanctuary-of-our-lady-of-lourdes-france', 'Sanctuary of Our Lady of Lourdes Journey', 'Sanctuary of Our Lady of Lourdes', 'A thoughtfully planned christian pilgrimage offering comfort, guidance, and a memorable experience.',
  'Hautes-Pyrénées, France', 'International', 'Pilgrimage', 'Christianity',
  3, 2, '3 Days / 2 Nights',
  16900, 'October–March', 'Easy',
  ARRAY['Christian Pilgrimage','Curated Journey'],
  ARRAY['Pilgrims','Seniors'],
  ARRAY['Hautes-Pyrénées','Sanctuary of Our Lady of Lourdes'],
  'Sanctuary of Our Lady of Lourdes (Hautes-Pyrénées, France)', '/images/tourist-places/pilgrimage/Christianity/Sanctuary of Our Lady of Lourdes, France.jpg', 'Sanctuary of Our Lady of Lourdes christian pilgrimage destination in Hautes-Pyrénées, France', 'Christian Pilgrimage',
  'Senior Friendly', true, true, true,
  true, 'Wheelchair Accessible', 4.8,
  12, 6, 8, true,
  'Get a 100% full refund on cancellations made up to 15 days before the departure. Rescheduling options are fully flexible.', true
) ON CONFLICT (slug) DO UPDATE SET
  name = EXCLUDED.name,
  description = EXCLUDED.description,
  location = EXCLUDED.location,
  base_price = EXCLUDED.base_price,
  rating = EXCLUDED.rating,
  is_active = true;
INSERT INTO public.packages (
  slug, name, destination_name, description, location, region, category, sub_category,
  duration_days, duration_nights, duration_label, base_price, best_season, pace,
  tags, traveller_types, route, destinations_text, image, alt_text, category_label,
  traveller_type, senior_friendly, child_friendly, wheelchair_access, veg_meals,
  accessibility_status, rating, review_count, seats_left, recent_bookings, verified, cancellation_summary, is_active
) VALUES (
  'christianity-santiago-atitl-n-guatemala', 'Santiago Atitlán Journey', 'Santiago Atitlán', 'A thoughtfully planned christian pilgrimage offering comfort, guidance, and a memorable experience.',
  'Sololá, Guatemala', 'International', 'Pilgrimage', 'Christianity',
  3, 2, '3 Days / 2 Nights',
  18100, 'October–March', 'Easy',
  ARRAY['Christian Pilgrimage','Curated Journey'],
  ARRAY['Pilgrims','Seniors'],
  ARRAY['Sololá','Santiago Atitlán'],
  'Santiago Atitlán (Sololá, Guatemala)', '/images/tourist-places/pilgrimage/Christianity/Santiago Atitlán, Guatemala.jpg', 'Santiago Atitlán christian pilgrimage destination in Sololá, Guatemala', 'Christian Pilgrimage',
  'Senior Friendly', true, true, true,
  true, 'Wheelchair Accessible', 4.8,
  12, 6, 8, true,
  'Get a 100% full refund on cancellations made up to 15 days before the departure. Rescheduling options are fully flexible.', true
) ON CONFLICT (slug) DO UPDATE SET
  name = EXCLUDED.name,
  description = EXCLUDED.description,
  location = EXCLUDED.location,
  base_price = EXCLUDED.base_price,
  rating = EXCLUDED.rating,
  is_active = true;
INSERT INTO public.packages (
  slug, name, destination_name, description, location, region, category, sub_category,
  duration_days, duration_nights, duration_label, base_price, best_season, pace,
  tags, traveller_types, route, destinations_text, image, alt_text, category_label,
  traveller_type, senior_friendly, child_friendly, wheelchair_access, veg_meals,
  accessibility_status, rating, review_count, seats_left, recent_bookings, verified, cancellation_summary, is_active
) VALUES (
  'christianity-santu-rio-de-nossa-senhora-aparecida-brazil', 'Santuário de Nossa Senhora Aparecida Journey', 'Santuário de Nossa Senhora Aparecida', 'A thoughtfully planned christian pilgrimage offering comfort, guidance, and a memorable experience.',
  'São Paulo, Brazil', 'International', 'Pilgrimage', 'Christianity',
  3, 2, '3 Days / 2 Nights',
  19300, 'October–March', 'Easy',
  ARRAY['Christian Pilgrimage','Curated Journey'],
  ARRAY['Pilgrims','Seniors'],
  ARRAY['São Paulo','Santuário de Nossa Senhora Aparecida'],
  'Santuário de Nossa Senhora Aparecida (São Paulo, Brazil)', '/images/tourist-places/pilgrimage/Christianity/Santuário de Nossa Senhora Aparecida, Brazil.jpg', 'Santuário de Nossa Senhora Aparecida christian pilgrimage destination in São Paulo, Brazil', 'Christian Pilgrimage',
  'Senior Friendly', true, true, true,
  true, 'Wheelchair Accessible', 4.8,
  12, 6, 8, true,
  'Get a 100% full refund on cancellations made up to 15 days before the departure. Rescheduling options are fully flexible.', true
) ON CONFLICT (slug) DO UPDATE SET
  name = EXCLUDED.name,
  description = EXCLUDED.description,
  location = EXCLUDED.location,
  base_price = EXCLUDED.base_price,
  rating = EXCLUDED.rating,
  is_active = true;
INSERT INTO public.packages (
  slug, name, destination_name, description, location, region, category, sub_category,
  duration_days, duration_nights, duration_label, base_price, best_season, pace,
  tags, traveller_types, route, destinations_text, image, alt_text, category_label,
  traveller_type, senior_friendly, child_friendly, wheelchair_access, veg_meals,
  accessibility_status, rating, review_count, seats_left, recent_bookings, verified, cancellation_summary, is_active
) VALUES (
  'christianity-vatican-city-italy', 'Vatican City Journey', 'Vatican City', 'A thoughtfully planned christian pilgrimage offering comfort, guidance, and a memorable experience.',
  'Vatican City, Italy', 'International', 'Pilgrimage', 'Christianity',
  3, 2, '3 Days / 2 Nights',
  20500, 'October–March', 'Easy',
  ARRAY['Christian Pilgrimage','Curated Journey'],
  ARRAY['Pilgrims','Seniors'],
  ARRAY['Vatican City','Vatican City'],
  'Vatican City (Vatican City, Italy)', '/images/tourist-places/pilgrimage/Christianity/Vatican City, Italy.jpg', 'Vatican City christian pilgrimage destination in Vatican City, Italy', 'Christian Pilgrimage',
  'Senior Friendly', true, true, true,
  true, 'Wheelchair Accessible', 4.8,
  12, 6, 8, true,
  'Get a 100% full refund on cancellations made up to 15 days before the departure. Rescheduling options are fully flexible.', true
) ON CONFLICT (slug) DO UPDATE SET
  name = EXCLUDED.name,
  description = EXCLUDED.description,
  location = EXCLUDED.location,
  base_price = EXCLUDED.base_price,
  rating = EXCLUDED.rating,
  is_active = true;
INSERT INTO public.packages (
  slug, name, destination_name, description, location, region, category, sub_category,
  duration_days, duration_nights, duration_label, base_price, best_season, pace,
  tags, traveller_types, route, destinations_text, image, alt_text, category_label,
  traveller_type, senior_friendly, child_friendly, wheelchair_access, veg_meals,
  accessibility_status, rating, review_count, seats_left, recent_bookings, verified, cancellation_summary, is_active
) VALUES (
  'hinduism-adam-s-peak-sri-pada-sri-lanka', 'Adam’s Peak (Sri Pada) Journey', 'Adam’s Peak (Sri Pada)', 'A thoughtfully planned hindu pilgrimage offering comfort, guidance, and a memorable experience.',
  'Ratnapura, Sri Lanka', 'International', 'Pilgrimage', 'Hinduism',
  3, 2, '3 Days / 2 Nights',
  21700, 'October–March', 'Easy',
  ARRAY['Hindu Pilgrimage','Curated Journey'],
  ARRAY['Pilgrims','Seniors'],
  ARRAY['Ratnapura','Adam’s Peak (Sri Pada)'],
  'Adam’s Peak (Sri Pada) (Ratnapura, Sri Lanka)', '/images/tourist-places/pilgrimage/Hinduism/Adam’s Peak (Sri Pada), Sri Lanka.jpg', 'Adam’s Peak (Sri Pada) hindu pilgrimage destination in Ratnapura, Sri Lanka', 'Hindu Pilgrimage',
  'Senior Friendly', true, true, true,
  true, 'Wheelchair Accessible', 4.8,
  12, 6, 8, true,
  'Get a 100% full refund on cancellations made up to 15 days before the departure. Rescheduling options are fully flexible.', true
) ON CONFLICT (slug) DO UPDATE SET
  name = EXCLUDED.name,
  description = EXCLUDED.description,
  location = EXCLUDED.location,
  base_price = EXCLUDED.base_price,
  rating = EXCLUDED.rating,
  is_active = true;
INSERT INTO public.packages (
  slug, name, destination_name, description, location, region, category, sub_category,
  duration_days, duration_nights, duration_label, base_price, best_season, pace,
  tags, traveller_types, route, destinations_text, image, alt_text, category_label,
  traveller_type, senior_friendly, child_friendly, wheelchair_access, veg_meals,
  accessibility_status, rating, review_count, seats_left, recent_bookings, verified, cancellation_summary, is_active
) VALUES (
  'hinduism-badrinath-india', 'Badrinath Journey', 'Badrinath', 'A thoughtfully planned hindu pilgrimage offering comfort, guidance, and a memorable experience.',
  'Chamoli, Uttarakhand, India', 'Char Dham', 'Pilgrimage', 'Hinduism',
  3, 2, '3 Days / 2 Nights',
  22900, 'May–October', 'Moderate',
  ARRAY['Hindu Pilgrimage','Curated Journey'],
  ARRAY['Pilgrims','Seniors'],
  ARRAY['Chamoli','Badrinath'],
  'Badrinath (Chamoli, Uttarakhand, India)', '/images/tourist-places/pilgrimage/Hinduism/Badrinath, India.jpg', 'Badrinath hindu pilgrimage destination in Chamoli, Uttarakhand, India', 'Hindu Pilgrimage',
  'Senior Friendly', true, true, true,
  true, 'Partial Accessibility', 4.8,
  12, 6, 8, true,
  'Get a 100% full refund on cancellations made up to 15 days before the departure. Rescheduling options are fully flexible.', true
) ON CONFLICT (slug) DO UPDATE SET
  name = EXCLUDED.name,
  description = EXCLUDED.description,
  location = EXCLUDED.location,
  base_price = EXCLUDED.base_price,
  rating = EXCLUDED.rating,
  is_active = true;
INSERT INTO public.packages (
  slug, name, destination_name, description, location, region, category, sub_category,
  duration_days, duration_nights, duration_label, base_price, best_season, pace,
  tags, traveller_types, route, destinations_text, image, alt_text, category_label,
  traveller_type, senior_friendly, child_friendly, wheelchair_access, veg_meals,
  accessibility_status, rating, review_count, seats_left, recent_bookings, verified, cancellation_summary, is_active
) VALUES (
  'hinduism-dwarkadhish-temple-dwarka-india', 'Dwarkadhish Temple Journey', 'Dwarkadhish Temple', 'A thoughtfully planned hindu pilgrimage offering comfort, guidance, and a memorable experience.',
  'Dwarka, Gujarat, India', 'North India', 'Pilgrimage', 'Hinduism',
  3, 2, '3 Days / 2 Nights',
  14500, 'October–March', 'Easy',
  ARRAY['Hindu Pilgrimage','Curated Journey'],
  ARRAY['Pilgrims','Seniors'],
  ARRAY['Dwarka','Dwarkadhish Temple'],
  'Dwarkadhish Temple (Dwarka, Gujarat, India)', '/images/tourist-places/pilgrimage/Hinduism/Dwarkadhish Temple (Dwarka), India.jpg', 'Dwarkadhish Temple hindu pilgrimage destination in Dwarka, Gujarat, India', 'Hindu Pilgrimage',
  'Senior Friendly', true, true, true,
  true, 'Wheelchair Accessible', 4.8,
  12, 6, 8, true,
  'Get a 100% full refund on cancellations made up to 15 days before the departure. Rescheduling options are fully flexible.', true
) ON CONFLICT (slug) DO UPDATE SET
  name = EXCLUDED.name,
  description = EXCLUDED.description,
  location = EXCLUDED.location,
  base_price = EXCLUDED.base_price,
  rating = EXCLUDED.rating,
  is_active = true;
INSERT INTO public.packages (
  slug, name, destination_name, description, location, region, category, sub_category,
  duration_days, duration_nights, duration_label, base_price, best_season, pace,
  tags, traveller_types, route, destinations_text, image, alt_text, category_label,
  traveller_type, senior_friendly, child_friendly, wheelchair_access, veg_meals,
  accessibility_status, rating, review_count, seats_left, recent_bookings, verified, cancellation_summary, is_active
) VALUES (
  'hinduism-golden-temple-harmandir-sahib-amritsar-india', 'Golden Temple Journey', 'Golden Temple', 'A thoughtfully planned hindu pilgrimage offering comfort, guidance, and a memorable experience.',
  'Amritsar, Punjab, India', 'North India', 'Pilgrimage', 'Hinduism',
  3, 2, '3 Days / 2 Nights',
  15700, 'October–March', 'Easy',
  ARRAY['Hindu Pilgrimage','Curated Journey'],
  ARRAY['Pilgrims','Seniors'],
  ARRAY['Amritsar','Golden Temple'],
  'Golden Temple (Amritsar, Punjab, India)', '/images/tourist-places/pilgrimage/Hinduism/Golden Temple (Harmandir Sahib), Amritsar, India.jpg', 'Golden Temple hindu pilgrimage destination in Amritsar, Punjab, India', 'Hindu Pilgrimage',
  'Senior Friendly', true, true, true,
  true, 'Wheelchair Accessible', 4.8,
  12, 6, 8, true,
  'Get a 100% full refund on cancellations made up to 15 days before the departure. Rescheduling options are fully flexible.', true
) ON CONFLICT (slug) DO UPDATE SET
  name = EXCLUDED.name,
  description = EXCLUDED.description,
  location = EXCLUDED.location,
  base_price = EXCLUDED.base_price,
  rating = EXCLUDED.rating,
  is_active = true;
INSERT INTO public.packages (
  slug, name, destination_name, description, location, region, category, sub_category,
  duration_days, duration_nights, duration_label, base_price, best_season, pace,
  tags, traveller_types, route, destinations_text, image, alt_text, category_label,
  traveller_type, senior_friendly, child_friendly, wheelchair_access, veg_meals,
  accessibility_status, rating, review_count, seats_left, recent_bookings, verified, cancellation_summary, is_active
) VALUES (
  'hinduism-haridwar-rishikesh-india', 'Haridwar & Rishikesh Journey', 'Haridwar & Rishikesh', 'A thoughtfully planned hindu pilgrimage offering comfort, guidance, and a memorable experience.',
  'Uttarakhand, India', 'Char Dham', 'Pilgrimage', 'Hinduism',
  3, 2, '3 Days / 2 Nights',
  16900, 'October–March', 'Active',
  ARRAY['Hindu Pilgrimage','Curated Journey'],
  ARRAY['Pilgrims','Seniors'],
  ARRAY['Uttarakhand','Haridwar & Rishikesh'],
  'Haridwar & Rishikesh (Uttarakhand, India)', '/images/tourist-places/pilgrimage/Hinduism/Haridwar & Rishikesh, India.jpg', 'Haridwar & Rishikesh hindu pilgrimage destination in Uttarakhand, India', 'Hindu Pilgrimage',
  'Senior Friendly', false, false, false,
  true, 'Not Wheelchair Accessible', 4.8,
  12, 6, 8, true,
  'Get a 100% full refund on cancellations made up to 15 days before the departure. Rescheduling options are fully flexible.', true
) ON CONFLICT (slug) DO UPDATE SET
  name = EXCLUDED.name,
  description = EXCLUDED.description,
  location = EXCLUDED.location,
  base_price = EXCLUDED.base_price,
  rating = EXCLUDED.rating,
  is_active = true;
INSERT INTO public.packages (
  slug, name, destination_name, description, location, region, category, sub_category,
  duration_days, duration_nights, duration_label, base_price, best_season, pace,
  tags, traveller_types, route, destinations_text, image, alt_text, category_label,
  traveller_type, senior_friendly, child_friendly, wheelchair_access, veg_meals,
  accessibility_status, rating, review_count, seats_left, recent_bookings, verified, cancellation_summary, is_active
) VALUES (
  'hinduism-jagannath-temple-puri-india', 'Jagannath Temple Journey', 'Jagannath Temple', 'A thoughtfully planned hindu pilgrimage offering comfort, guidance, and a memorable experience.',
  'Puri, Odisha, India', 'North India', 'Pilgrimage', 'Hinduism',
  3, 2, '3 Days / 2 Nights',
  18100, 'October–March', 'Easy',
  ARRAY['Hindu Pilgrimage','Curated Journey'],
  ARRAY['Pilgrims','Seniors'],
  ARRAY['Puri','Jagannath Temple'],
  'Jagannath Temple (Puri, Odisha, India)', '/images/tourist-places/pilgrimage/Hinduism/Jagannath Temple (Puri), India.jpg', 'Jagannath Temple hindu pilgrimage destination in Puri, Odisha, India', 'Hindu Pilgrimage',
  'Senior Friendly', true, true, true,
  true, 'Wheelchair Accessible', 4.8,
  12, 6, 8, true,
  'Get a 100% full refund on cancellations made up to 15 days before the departure. Rescheduling options are fully flexible.', true
) ON CONFLICT (slug) DO UPDATE SET
  name = EXCLUDED.name,
  description = EXCLUDED.description,
  location = EXCLUDED.location,
  base_price = EXCLUDED.base_price,
  rating = EXCLUDED.rating,
  is_active = true;
INSERT INTO public.packages (
  slug, name, destination_name, description, location, region, category, sub_category,
  duration_days, duration_nights, duration_label, base_price, best_season, pace,
  tags, traveller_types, route, destinations_text, image, alt_text, category_label,
  traveller_type, senior_friendly, child_friendly, wheelchair_access, veg_meals,
  accessibility_status, rating, review_count, seats_left, recent_bookings, verified, cancellation_summary, is_active
) VALUES (
  'hinduism-kashi-vishwanath-varanasi-india', 'Kashi Vishwanath Journey', 'Kashi Vishwanath', 'A thoughtfully planned hindu pilgrimage offering comfort, guidance, and a memorable experience.',
  'Varanasi, Uttar Pradesh, India', 'North India', 'Pilgrimage', 'Hinduism',
  3, 2, '3 Days / 2 Nights',
  19300, 'October–March', 'Easy',
  ARRAY['Hindu Pilgrimage','Curated Journey'],
  ARRAY['Pilgrims','Seniors'],
  ARRAY['Varanasi','Kashi Vishwanath'],
  'Kashi Vishwanath (Varanasi, Uttar Pradesh, India)', '/images/tourist-places/pilgrimage/Hinduism/Kashi Vishwanath (Varanasi), India.jpg', 'Kashi Vishwanath hindu pilgrimage destination in Varanasi, Uttar Pradesh, India', 'Hindu Pilgrimage',
  'Senior Friendly', true, true, true,
  true, 'Wheelchair Accessible', 4.8,
  12, 6, 8, true,
  'Get a 100% full refund on cancellations made up to 15 days before the departure. Rescheduling options are fully flexible.', true
) ON CONFLICT (slug) DO UPDATE SET
  name = EXCLUDED.name,
  description = EXCLUDED.description,
  location = EXCLUDED.location,
  base_price = EXCLUDED.base_price,
  rating = EXCLUDED.rating,
  is_active = true;
INSERT INTO public.packages (
  slug, name, destination_name, description, location, region, category, sub_category,
  duration_days, duration_nights, duration_label, base_price, best_season, pace,
  tags, traveller_types, route, destinations_text, image, alt_text, category_label,
  traveller_type, senior_friendly, child_friendly, wheelchair_access, veg_meals,
  accessibility_status, rating, review_count, seats_left, recent_bookings, verified, cancellation_summary, is_active
) VALUES (
  'hinduism-kedarnath-india', 'Kedarnath Journey', 'Kedarnath', 'A thoughtfully planned hindu pilgrimage offering comfort, guidance, and a memorable experience.',
  'Rudraprayag, Uttarakhand, India', 'Char Dham', 'Pilgrimage', 'Hinduism',
  3, 2, '3 Days / 2 Nights',
  20500, 'May–October', 'Active',
  ARRAY['Hindu Pilgrimage','Curated Journey'],
  ARRAY['Pilgrims','Seniors'],
  ARRAY['Rudraprayag','Kedarnath'],
  'Kedarnath (Rudraprayag, Uttarakhand, India)', '/images/tourist-places/pilgrimage/Hinduism/Kedarnath, India.jpg', 'Kedarnath hindu pilgrimage destination in Rudraprayag, Uttarakhand, India', 'Hindu Pilgrimage',
  'Senior Friendly', false, false, false,
  true, 'Not Wheelchair Accessible', 4.8,
  12, 6, 8, true,
  'Get a 100% full refund on cancellations made up to 15 days before the departure. Rescheduling options are fully flexible.', true
) ON CONFLICT (slug) DO UPDATE SET
  name = EXCLUDED.name,
  description = EXCLUDED.description,
  location = EXCLUDED.location,
  base_price = EXCLUDED.base_price,
  rating = EXCLUDED.rating,
  is_active = true;
INSERT INTO public.packages (
  slug, name, destination_name, description, location, region, category, sub_category,
  duration_days, duration_nights, duration_label, base_price, best_season, pace,
  tags, traveller_types, route, destinations_text, image, alt_text, category_label,
  traveller_type, senior_friendly, child_friendly, wheelchair_access, veg_meals,
  accessibility_status, rating, review_count, seats_left, recent_bookings, verified, cancellation_summary, is_active
) VALUES (
  'hinduism-mahakaleshwar-temple-ujjain-india', 'Mahakaleshwar Temple Journey', 'Mahakaleshwar Temple', 'A thoughtfully planned hindu pilgrimage offering comfort, guidance, and a memorable experience.',
  'Ujjain, Madhya Pradesh, India', 'North India', 'Pilgrimage', 'Hinduism',
  3, 2, '3 Days / 2 Nights',
  21700, 'October–March', 'Easy',
  ARRAY['Hindu Pilgrimage','Curated Journey'],
  ARRAY['Pilgrims','Seniors'],
  ARRAY['Ujjain','Mahakaleshwar Temple'],
  'Mahakaleshwar Temple (Ujjain, Madhya Pradesh, India)', '/images/tourist-places/pilgrimage/Hinduism/Mahakaleshwar Temple (Ujjain), India.jpg', 'Mahakaleshwar Temple hindu pilgrimage destination in Ujjain, Madhya Pradesh, India', 'Hindu Pilgrimage',
  'Senior Friendly', true, true, true,
  true, 'Wheelchair Accessible', 4.8,
  12, 6, 8, true,
  'Get a 100% full refund on cancellations made up to 15 days before the departure. Rescheduling options are fully flexible.', true
) ON CONFLICT (slug) DO UPDATE SET
  name = EXCLUDED.name,
  description = EXCLUDED.description,
  location = EXCLUDED.location,
  base_price = EXCLUDED.base_price,
  rating = EXCLUDED.rating,
  is_active = true;
INSERT INTO public.packages (
  slug, name, destination_name, description, location, region, category, sub_category,
  duration_days, duration_nights, duration_label, base_price, best_season, pace,
  tags, traveller_types, route, destinations_text, image, alt_text, category_label,
  traveller_type, senior_friendly, child_friendly, wheelchair_access, veg_meals,
  accessibility_status, rating, review_count, seats_left, recent_bookings, verified, cancellation_summary, is_active
) VALUES (
  'hinduism-mount-kailash-tibet', 'Mount Kailash Journey', 'Mount Kailash', 'A thoughtfully planned hindu pilgrimage offering comfort, guidance, and a memorable experience.',
  'Ngari, Tibet', 'International', 'Pilgrimage', 'Hinduism',
  3, 2, '3 Days / 2 Nights',
  22900, 'October–March', 'Moderate',
  ARRAY['Hindu Pilgrimage','Curated Journey'],
  ARRAY['Pilgrims','Seniors'],
  ARRAY['Ngari','Mount Kailash'],
  'Mount Kailash (Ngari, Tibet)', '/images/tourist-places/pilgrimage/Hinduism/Mount Kailash, Tibet.webp', 'Mount Kailash hindu pilgrimage destination in Ngari, Tibet', 'Hindu Pilgrimage',
  'Senior Friendly', true, true, true,
  true, 'Partial Accessibility', 4.8,
  12, 6, 8, true,
  'Get a 100% full refund on cancellations made up to 15 days before the departure. Rescheduling options are fully flexible.', true
) ON CONFLICT (slug) DO UPDATE SET
  name = EXCLUDED.name,
  description = EXCLUDED.description,
  location = EXCLUDED.location,
  base_price = EXCLUDED.base_price,
  rating = EXCLUDED.rating,
  is_active = true;
INSERT INTO public.packages (
  slug, name, destination_name, description, location, region, category, sub_category,
  duration_days, duration_nights, duration_label, base_price, best_season, pace,
  tags, traveller_types, route, destinations_text, image, alt_text, category_label,
  traveller_type, senior_friendly, child_friendly, wheelchair_access, veg_meals,
  accessibility_status, rating, review_count, seats_left, recent_bookings, verified, cancellation_summary, is_active
) VALUES (
  'hinduism-rameswaram-india', 'Rameswaram Journey', 'Rameswaram', 'A thoughtfully planned hindu pilgrimage offering comfort, guidance, and a memorable experience.',
  'Ramanathapuram, Tamil Nadu, India', 'South India', 'Pilgrimage', 'Hinduism',
  3, 2, '3 Days / 2 Nights',
  14500, 'November–February', 'Easy',
  ARRAY['Hindu Pilgrimage','Curated Journey'],
  ARRAY['Pilgrims','Seniors'],
  ARRAY['Ramanathapuram','Rameswaram'],
  'Rameswaram (Ramanathapuram, Tamil Nadu, India)', '/images/tourist-places/pilgrimage/Hinduism/Rameswaram, India.jpg', 'Rameswaram hindu pilgrimage destination in Ramanathapuram, Tamil Nadu, India', 'Hindu Pilgrimage',
  'Senior Friendly', true, true, true,
  true, 'Wheelchair Accessible', 4.8,
  12, 6, 8, true,
  'Get a 100% full refund on cancellations made up to 15 days before the departure. Rescheduling options are fully flexible.', true
) ON CONFLICT (slug) DO UPDATE SET
  name = EXCLUDED.name,
  description = EXCLUDED.description,
  location = EXCLUDED.location,
  base_price = EXCLUDED.base_price,
  rating = EXCLUDED.rating,
  is_active = true;
INSERT INTO public.packages (
  slug, name, destination_name, description, location, region, category, sub_category,
  duration_days, duration_nights, duration_label, base_price, best_season, pace,
  tags, traveller_types, route, destinations_text, image, alt_text, category_label,
  traveller_type, senior_friendly, child_friendly, wheelchair_access, veg_meals,
  accessibility_status, rating, review_count, seats_left, recent_bookings, verified, cancellation_summary, is_active
) VALUES (
  'hinduism-somnath-temple-india', 'Somnath Temple Journey', 'Somnath Temple', 'A thoughtfully planned hindu pilgrimage offering comfort, guidance, and a memorable experience.',
  'Prabhas Patan, Gujarat, India', 'North India', 'Pilgrimage', 'Hinduism',
  3, 2, '3 Days / 2 Nights',
  15700, 'October–March', 'Easy',
  ARRAY['Hindu Pilgrimage','Curated Journey'],
  ARRAY['Pilgrims','Seniors'],
  ARRAY['Prabhas Patan','Somnath Temple'],
  'Somnath Temple (Prabhas Patan, Gujarat, India)', '/images/tourist-places/pilgrimage/Hinduism/Somnath Temple, India.jpg', 'Somnath Temple hindu pilgrimage destination in Prabhas Patan, Gujarat, India', 'Hindu Pilgrimage',
  'Senior Friendly', true, true, true,
  true, 'Wheelchair Accessible', 4.8,
  12, 6, 8, true,
  'Get a 100% full refund on cancellations made up to 15 days before the departure. Rescheduling options are fully flexible.', true
) ON CONFLICT (slug) DO UPDATE SET
  name = EXCLUDED.name,
  description = EXCLUDED.description,
  location = EXCLUDED.location,
  base_price = EXCLUDED.base_price,
  rating = EXCLUDED.rating,
  is_active = true;
INSERT INTO public.packages (
  slug, name, destination_name, description, location, region, category, sub_category,
  duration_days, duration_nights, duration_label, base_price, best_season, pace,
  tags, traveller_types, route, destinations_text, image, alt_text, category_label,
  traveller_type, senior_friendly, child_friendly, wheelchair_access, veg_meals,
  accessibility_status, rating, review_count, seats_left, recent_bookings, verified, cancellation_summary, is_active
) VALUES (
  'hinduism-tirupati-balaji-temple-india', 'Tirupati Balaji Temple Journey', 'Tirupati Balaji Temple', 'A thoughtfully planned hindu pilgrimage offering comfort, guidance, and a memorable experience.',
  'Tirupati, Andhra Pradesh, India', 'South India', 'Pilgrimage', 'Hinduism',
  3, 2, '3 Days / 2 Nights',
  16900, 'November–February', 'Easy',
  ARRAY['Hindu Pilgrimage','Curated Journey'],
  ARRAY['Pilgrims','Seniors'],
  ARRAY['Tirupati','Tirupati Balaji Temple'],
  'Tirupati Balaji Temple (Tirupati, Andhra Pradesh, India)', '/images/tourist-places/pilgrimage/Hinduism/Tirupati Balaji Temple, India.webp', 'Tirupati Balaji Temple hindu pilgrimage destination in Tirupati, Andhra Pradesh, India', 'Hindu Pilgrimage',
  'Senior Friendly', true, true, true,
  true, 'Wheelchair Accessible', 4.8,
  12, 6, 8, true,
  'Get a 100% full refund on cancellations made up to 15 days before the departure. Rescheduling options are fully flexible.', true
) ON CONFLICT (slug) DO UPDATE SET
  name = EXCLUDED.name,
  description = EXCLUDED.description,
  location = EXCLUDED.location,
  base_price = EXCLUDED.base_price,
  rating = EXCLUDED.rating,
  is_active = true;
INSERT INTO public.packages (
  slug, name, destination_name, description, location, region, category, sub_category,
  duration_days, duration_nights, duration_label, base_price, best_season, pace,
  tags, traveller_types, route, destinations_text, image, alt_text, category_label,
  traveller_type, senior_friendly, child_friendly, wheelchair_access, veg_meals,
  accessibility_status, rating, review_count, seats_left, recent_bookings, verified, cancellation_summary, is_active
) VALUES (
  'hinduism-trimbakeshwar-temple-nashik-india', 'Trimbakeshwar Temple Journey', 'Trimbakeshwar Temple', 'A thoughtfully planned hindu pilgrimage offering comfort, guidance, and a memorable experience.',
  'Nashik, Maharashtra, India', 'Maharashtra', 'Pilgrimage', 'Hinduism',
  3, 2, '3 Days / 2 Nights',
  18100, 'October–March', 'Easy',
  ARRAY['Hindu Pilgrimage','Curated Journey'],
  ARRAY['Pilgrims','Seniors'],
  ARRAY['Nashik','Trimbakeshwar Temple'],
  'Trimbakeshwar Temple (Nashik, Maharashtra, India)', '/images/tourist-places/pilgrimage/Hinduism/Trimbakeshwar Temple (Nashik), India.jpg', 'Trimbakeshwar Temple hindu pilgrimage destination in Nashik, Maharashtra, India', 'Hindu Pilgrimage',
  'Senior Friendly', true, true, true,
  true, 'Wheelchair Accessible', 4.8,
  12, 6, 8, true,
  'Get a 100% full refund on cancellations made up to 15 days before the departure. Rescheduling options are fully flexible.', true
) ON CONFLICT (slug) DO UPDATE SET
  name = EXCLUDED.name,
  description = EXCLUDED.description,
  location = EXCLUDED.location,
  base_price = EXCLUDED.base_price,
  rating = EXCLUDED.rating,
  is_active = true;
INSERT INTO public.packages (
  slug, name, destination_name, description, location, region, category, sub_category,
  duration_days, duration_nights, duration_label, base_price, best_season, pace,
  tags, traveller_types, route, destinations_text, image, alt_text, category_label,
  traveller_type, senior_friendly, child_friendly, wheelchair_access, veg_meals,
  accessibility_status, rating, review_count, seats_left, recent_bookings, verified, cancellation_summary, is_active
) VALUES (
  'hinduism-vaishno-devi-india', 'Vaishno Devi Journey', 'Vaishno Devi', 'A thoughtfully planned hindu pilgrimage offering comfort, guidance, and a memorable experience.',
  'Katra, Jammu & Kashmir, India', 'North India', 'Pilgrimage', 'Hinduism',
  3, 2, '3 Days / 2 Nights',
  19300, 'March–June', 'Active',
  ARRAY['Hindu Pilgrimage','Curated Journey'],
  ARRAY['Pilgrims','Seniors'],
  ARRAY['Katra','Vaishno Devi'],
  'Vaishno Devi (Katra, Jammu & Kashmir, India)', '/images/tourist-places/pilgrimage/Hinduism/Vaishno Devi, India.jpg', 'Vaishno Devi hindu pilgrimage destination in Katra, Jammu & Kashmir, India', 'Hindu Pilgrimage',
  'Senior Friendly', false, false, false,
  true, 'Not Wheelchair Accessible', 4.8,
  12, 6, 8, true,
  'Get a 100% full refund on cancellations made up to 15 days before the departure. Rescheduling options are fully flexible.', true
) ON CONFLICT (slug) DO UPDATE SET
  name = EXCLUDED.name,
  description = EXCLUDED.description,
  location = EXCLUDED.location,
  base_price = EXCLUDED.base_price,
  rating = EXCLUDED.rating,
  is_active = true;
INSERT INTO public.packages (
  slug, name, destination_name, description, location, region, category, sub_category,
  duration_days, duration_nights, duration_label, base_price, best_season, pace,
  tags, traveller_types, route, destinations_text, image, alt_text, category_label,
  traveller_type, senior_friendly, child_friendly, wheelchair_access, veg_meals,
  accessibility_status, rating, review_count, seats_left, recent_bookings, verified, cancellation_summary, is_active
) VALUES (
  'islam-ajmer-sharif-dargah-india', 'Ajmer Sharif Dargah Journey', 'Ajmer Sharif Dargah', 'A thoughtfully planned islamic pilgrimage offering comfort, guidance, and a memorable experience.',
  'Ajmer, Rajasthan, India', 'North India', 'Pilgrimage', 'Islam',
  3, 2, '3 Days / 2 Nights',
  20500, 'October–March', 'Easy',
  ARRAY['Islamic Pilgrimage','Curated Journey'],
  ARRAY['Pilgrims','Seniors'],
  ARRAY['Ajmer','Ajmer Sharif Dargah'],
  'Ajmer Sharif Dargah (Ajmer, Rajasthan, India)', '/images/tourist-places/pilgrimage/Islam/Ajmer Sharif Dargah, India.jpg', 'Ajmer Sharif Dargah islamic pilgrimage destination in Ajmer, Rajasthan, India', 'Islamic Pilgrimage',
  'Senior Friendly', true, true, true,
  true, 'Wheelchair Accessible', 4.8,
  12, 6, 8, true,
  'Get a 100% full refund on cancellations made up to 15 days before the departure. Rescheduling options are fully flexible.', true
) ON CONFLICT (slug) DO UPDATE SET
  name = EXCLUDED.name,
  description = EXCLUDED.description,
  location = EXCLUDED.location,
  base_price = EXCLUDED.base_price,
  rating = EXCLUDED.rating,
  is_active = true;
INSERT INTO public.packages (
  slug, name, destination_name, description, location, region, category, sub_category,
  duration_days, duration_nights, duration_label, base_price, best_season, pace,
  tags, traveller_types, route, destinations_text, image, alt_text, category_label,
  traveller_type, senior_friendly, child_friendly, wheelchair_access, veg_meals,
  accessibility_status, rating, review_count, seats_left, recent_bookings, verified, cancellation_summary, is_active
) VALUES (
  'islam-al-aqsa-mosque-jerusalem-israel', 'Al Aqsa Mosque, Jerusalem Journey', 'Al Aqsa Mosque, Jerusalem', 'A thoughtfully planned islamic pilgrimage offering comfort, guidance, and a memorable experience.',
  'Jerusalem, Israel', 'International', 'Pilgrimage', 'Islam',
  3, 2, '3 Days / 2 Nights',
  21700, 'October–March', 'Easy',
  ARRAY['Islamic Pilgrimage','Curated Journey'],
  ARRAY['Pilgrims','Seniors'],
  ARRAY['Jerusalem','Al Aqsa Mosque, Jerusalem'],
  'Al Aqsa Mosque, Jerusalem (Jerusalem, Israel)', '/images/tourist-places/pilgrimage/Islam/Al-Aqsa Mosque, Jerusalem, Israel.jpg', 'Al Aqsa Mosque, Jerusalem islamic pilgrimage destination in Jerusalem, Israel', 'Islamic Pilgrimage',
  'Senior Friendly', true, true, true,
  true, 'Wheelchair Accessible', 4.8,
  12, 6, 8, true,
  'Get a 100% full refund on cancellations made up to 15 days before the departure. Rescheduling options are fully flexible.', true
) ON CONFLICT (slug) DO UPDATE SET
  name = EXCLUDED.name,
  description = EXCLUDED.description,
  location = EXCLUDED.location,
  base_price = EXCLUDED.base_price,
  rating = EXCLUDED.rating,
  is_active = true;
INSERT INTO public.packages (
  slug, name, destination_name, description, location, region, category, sub_category,
  duration_days, duration_nights, duration_label, base_price, best_season, pace,
  tags, traveller_types, route, destinations_text, image, alt_text, category_label,
  traveller_type, senior_friendly, child_friendly, wheelchair_access, veg_meals,
  accessibility_status, rating, review_count, seats_left, recent_bookings, verified, cancellation_summary, is_active
) VALUES (
  'islam-al-azhar-mosque-cairo-egypt', 'Al Azhar Mosque, Cairo Journey', 'Al Azhar Mosque, Cairo', 'A thoughtfully planned islamic pilgrimage offering comfort, guidance, and a memorable experience.',
  'Cairo, Egypt', 'International', 'Pilgrimage', 'Islam',
  3, 2, '3 Days / 2 Nights',
  22900, 'October–March', 'Easy',
  ARRAY['Islamic Pilgrimage','Curated Journey'],
  ARRAY['Pilgrims','Seniors'],
  ARRAY['Cairo','Al Azhar Mosque, Cairo'],
  'Al Azhar Mosque, Cairo (Cairo, Egypt)', '/images/tourist-places/pilgrimage/Islam/Al-Azhar Mosque, Cairo, Egypt.jpg', 'Al Azhar Mosque, Cairo islamic pilgrimage destination in Cairo, Egypt', 'Islamic Pilgrimage',
  'Senior Friendly', true, true, true,
  true, 'Wheelchair Accessible', 4.8,
  12, 6, 8, true,
  'Get a 100% full refund on cancellations made up to 15 days before the departure. Rescheduling options are fully flexible.', true
) ON CONFLICT (slug) DO UPDATE SET
  name = EXCLUDED.name,
  description = EXCLUDED.description,
  location = EXCLUDED.location,
  base_price = EXCLUDED.base_price,
  rating = EXCLUDED.rating,
  is_active = true;
INSERT INTO public.packages (
  slug, name, destination_name, description, location, region, category, sub_category,
  duration_days, duration_nights, duration_label, base_price, best_season, pace,
  tags, traveller_types, route, destinations_text, image, alt_text, category_label,
  traveller_type, senior_friendly, child_friendly, wheelchair_access, veg_meals,
  accessibility_status, rating, review_count, seats_left, recent_bookings, verified, cancellation_summary, is_active
) VALUES (
  'islam-al-masjid-al-qiblatayn-medina-saudi-arabia', 'Al Masjid al Qiblatayn, Medina Journey', 'Al Masjid al Qiblatayn, Medina', 'A thoughtfully planned islamic pilgrimage offering comfort, guidance, and a memorable experience.',
  'Medina, Saudi Arabia', 'International', 'Pilgrimage', 'Islam',
  3, 2, '3 Days / 2 Nights',
  14500, 'October–March', 'Easy',
  ARRAY['Islamic Pilgrimage','Curated Journey'],
  ARRAY['Pilgrims','Seniors'],
  ARRAY['Medina','Al Masjid al Qiblatayn, Medina'],
  'Al Masjid al Qiblatayn, Medina (Medina, Saudi Arabia)', '/images/tourist-places/pilgrimage/Islam/Al-Masjid al-Qiblatayn, Medina, Saudi Arabia.jpg', 'Al Masjid al Qiblatayn, Medina islamic pilgrimage destination in Medina, Saudi Arabia', 'Islamic Pilgrimage',
  'Senior Friendly', true, true, true,
  true, 'Wheelchair Accessible', 4.8,
  12, 6, 8, true,
  'Get a 100% full refund on cancellations made up to 15 days before the departure. Rescheduling options are fully flexible.', true
) ON CONFLICT (slug) DO UPDATE SET
  name = EXCLUDED.name,
  description = EXCLUDED.description,
  location = EXCLUDED.location,
  base_price = EXCLUDED.base_price,
  rating = EXCLUDED.rating,
  is_active = true;
INSERT INTO public.packages (
  slug, name, destination_name, description, location, region, category, sub_category,
  duration_days, duration_nights, duration_label, base_price, best_season, pace,
  tags, traveller_types, route, destinations_text, image, alt_text, category_label,
  traveller_type, senior_friendly, child_friendly, wheelchair_access, veg_meals,
  accessibility_status, rating, review_count, seats_left, recent_bookings, verified, cancellation_summary, is_active
) VALUES (
  'islam-data-darbar-lahore-pakistan', 'Data Darbar, Lahore Journey', 'Data Darbar, Lahore', 'A thoughtfully planned islamic pilgrimage offering comfort, guidance, and a memorable experience.',
  'Lahore, Pakistan', 'International', 'Pilgrimage', 'Islam',
  3, 2, '3 Days / 2 Nights',
  15700, 'October–March', 'Easy',
  ARRAY['Islamic Pilgrimage','Curated Journey'],
  ARRAY['Pilgrims','Seniors'],
  ARRAY['Lahore','Data Darbar, Lahore'],
  'Data Darbar, Lahore (Lahore, Pakistan)', '/images/tourist-places/pilgrimage/Islam/Data Darbar, Lahore, Pakistan.jpg', 'Data Darbar, Lahore islamic pilgrimage destination in Lahore, Pakistan', 'Islamic Pilgrimage',
  'Senior Friendly', true, true, true,
  true, 'Wheelchair Accessible', 4.8,
  12, 6, 8, true,
  'Get a 100% full refund on cancellations made up to 15 days before the departure. Rescheduling options are fully flexible.', true
) ON CONFLICT (slug) DO UPDATE SET
  name = EXCLUDED.name,
  description = EXCLUDED.description,
  location = EXCLUDED.location,
  base_price = EXCLUDED.base_price,
  rating = EXCLUDED.rating,
  is_active = true;
INSERT INTO public.packages (
  slug, name, destination_name, description, location, region, category, sub_category,
  duration_days, duration_nights, duration_label, base_price, best_season, pace,
  tags, traveller_types, route, destinations_text, image, alt_text, category_label,
  traveller_type, senior_friendly, child_friendly, wheelchair_access, veg_meals,
  accessibility_status, rating, review_count, seats_left, recent_bookings, verified, cancellation_summary, is_active
) VALUES (
  'islam-dome-of-the-rock-jerusalem-israel', 'Dome of the Rock, Jerusalem Journey', 'Dome of the Rock, Jerusalem', 'A thoughtfully planned islamic pilgrimage offering comfort, guidance, and a memorable experience.',
  'Jerusalem, Israel', 'International', 'Pilgrimage', 'Islam',
  3, 2, '3 Days / 2 Nights',
  16900, 'October–March', 'Easy',
  ARRAY['Islamic Pilgrimage','Curated Journey'],
  ARRAY['Pilgrims','Seniors'],
  ARRAY['Jerusalem','Dome of the Rock, Jerusalem'],
  'Dome of the Rock, Jerusalem (Jerusalem, Israel)', '/images/tourist-places/pilgrimage/Islam/Dome of the Rock, Jerusalem, Israel.jpg', 'Dome of the Rock, Jerusalem islamic pilgrimage destination in Jerusalem, Israel', 'Islamic Pilgrimage',
  'Senior Friendly', true, true, true,
  true, 'Wheelchair Accessible', 4.8,
  12, 6, 8, true,
  'Get a 100% full refund on cancellations made up to 15 days before the departure. Rescheduling options are fully flexible.', true
) ON CONFLICT (slug) DO UPDATE SET
  name = EXCLUDED.name,
  description = EXCLUDED.description,
  location = EXCLUDED.location,
  base_price = EXCLUDED.base_price,
  rating = EXCLUDED.rating,
  is_active = true;
INSERT INTO public.packages (
  slug, name, destination_name, description, location, region, category, sub_category,
  duration_days, duration_nights, duration_label, base_price, best_season, pace,
  tags, traveller_types, route, destinations_text, image, alt_text, category_label,
  traveller_type, senior_friendly, child_friendly, wheelchair_access, veg_meals,
  accessibility_status, rating, review_count, seats_left, recent_bookings, verified, cancellation_summary, is_active
) VALUES (
  'islam-imam-ali-shrine-najaf-iraq', 'Imam Ali Shrine, Najaf Journey', 'Imam Ali Shrine, Najaf', 'A thoughtfully planned islamic pilgrimage offering comfort, guidance, and a memorable experience.',
  'Najaf, Iraq', 'International', 'Pilgrimage', 'Islam',
  3, 2, '3 Days / 2 Nights',
  18100, 'October–March', 'Easy',
  ARRAY['Islamic Pilgrimage','Curated Journey'],
  ARRAY['Pilgrims','Seniors'],
  ARRAY['Najaf','Imam Ali Shrine, Najaf'],
  'Imam Ali Shrine, Najaf (Najaf, Iraq)', '/images/tourist-places/pilgrimage/Islam/Imam Ali Shrine, Najaf, Iraq.jpg', 'Imam Ali Shrine, Najaf islamic pilgrimage destination in Najaf, Iraq', 'Islamic Pilgrimage',
  'Senior Friendly', true, true, true,
  true, 'Wheelchair Accessible', 4.8,
  12, 6, 8, true,
  'Get a 100% full refund on cancellations made up to 15 days before the departure. Rescheduling options are fully flexible.', true
) ON CONFLICT (slug) DO UPDATE SET
  name = EXCLUDED.name,
  description = EXCLUDED.description,
  location = EXCLUDED.location,
  base_price = EXCLUDED.base_price,
  rating = EXCLUDED.rating,
  is_active = true;
INSERT INTO public.packages (
  slug, name, destination_name, description, location, region, category, sub_category,
  duration_days, duration_nights, duration_label, base_price, best_season, pace,
  tags, traveller_types, route, destinations_text, image, alt_text, category_label,
  traveller_type, senior_friendly, child_friendly, wheelchair_access, veg_meals,
  accessibility_status, rating, review_count, seats_left, recent_bookings, verified, cancellation_summary, is_active
) VALUES (
  'islam-imam-husayn-shrine-karbala-iraq', 'Imam Husayn Shrine, Karbala Journey', 'Imam Husayn Shrine, Karbala', 'A thoughtfully planned islamic pilgrimage offering comfort, guidance, and a memorable experience.',
  'Karbala, Iraq', 'International', 'Pilgrimage', 'Islam',
  3, 2, '3 Days / 2 Nights',
  19300, 'October–March', 'Easy',
  ARRAY['Islamic Pilgrimage','Curated Journey'],
  ARRAY['Pilgrims','Seniors'],
  ARRAY['Karbala','Imam Husayn Shrine, Karbala'],
  'Imam Husayn Shrine, Karbala (Karbala, Iraq)', '/images/tourist-places/pilgrimage/Islam/Imam Husayn Shrine, Karbala, Iraq.jpg', 'Imam Husayn Shrine, Karbala islamic pilgrimage destination in Karbala, Iraq', 'Islamic Pilgrimage',
  'Senior Friendly', true, true, true,
  true, 'Wheelchair Accessible', 4.8,
  12, 6, 8, true,
  'Get a 100% full refund on cancellations made up to 15 days before the departure. Rescheduling options are fully flexible.', true
) ON CONFLICT (slug) DO UPDATE SET
  name = EXCLUDED.name,
  description = EXCLUDED.description,
  location = EXCLUDED.location,
  base_price = EXCLUDED.base_price,
  rating = EXCLUDED.rating,
  is_active = true;
INSERT INTO public.packages (
  slug, name, destination_name, description, location, region, category, sub_category,
  duration_days, duration_nights, duration_label, base_price, best_season, pace,
  tags, traveller_types, route, destinations_text, image, alt_text, category_label,
  traveller_type, senior_friendly, child_friendly, wheelchair_access, veg_meals,
  accessibility_status, rating, review_count, seats_left, recent_bookings, verified, cancellation_summary, is_active
) VALUES (
  'islam-imam-reza-shrine-mashhad-iran', 'Imam Reza Shrine, Mashhad Journey', 'Imam Reza Shrine, Mashhad', 'A thoughtfully planned islamic pilgrimage offering comfort, guidance, and a memorable experience.',
  'Mashhad, Iran', 'International', 'Pilgrimage', 'Islam',
  3, 2, '3 Days / 2 Nights',
  20500, 'October–March', 'Easy',
  ARRAY['Islamic Pilgrimage','Curated Journey'],
  ARRAY['Pilgrims','Seniors'],
  ARRAY['Mashhad','Imam Reza Shrine, Mashhad'],
  'Imam Reza Shrine, Mashhad (Mashhad, Iran)', '/images/tourist-places/pilgrimage/Islam/Imam Reza Shrine, Mashhad, Iran.jpg', 'Imam Reza Shrine, Mashhad islamic pilgrimage destination in Mashhad, Iran', 'Islamic Pilgrimage',
  'Senior Friendly', true, true, true,
  true, 'Wheelchair Accessible', 4.8,
  12, 6, 8, true,
  'Get a 100% full refund on cancellations made up to 15 days before the departure. Rescheduling options are fully flexible.', true
) ON CONFLICT (slug) DO UPDATE SET
  name = EXCLUDED.name,
  description = EXCLUDED.description,
  location = EXCLUDED.location,
  base_price = EXCLUDED.base_price,
  rating = EXCLUDED.rating,
  is_active = true;
INSERT INTO public.packages (
  slug, name, destination_name, description, location, region, category, sub_category,
  duration_days, duration_nights, duration_label, base_price, best_season, pace,
  tags, traveller_types, route, destinations_text, image, alt_text, category_label,
  traveller_type, senior_friendly, child_friendly, wheelchair_access, veg_meals,
  accessibility_status, rating, review_count, seats_left, recent_bookings, verified, cancellation_summary, is_active
) VALUES (
  'islam-mecca-saudi-arabia', 'Mecca Journey', 'Mecca', 'A thoughtfully planned islamic pilgrimage offering comfort, guidance, and a memorable experience.',
  'Makkah, Saudi Arabia', 'International', 'Pilgrimage', 'Islam',
  3, 2, '3 Days / 2 Nights',
  21700, 'October–March', 'Easy',
  ARRAY['Islamic Pilgrimage','Curated Journey'],
  ARRAY['Pilgrims','Seniors'],
  ARRAY['Makkah','Mecca'],
  'Mecca (Makkah, Saudi Arabia)', '/images/tourist-places/pilgrimage/Islam/Mecca, Saudi Arabia.jpg', 'Mecca islamic pilgrimage destination in Makkah, Saudi Arabia', 'Islamic Pilgrimage',
  'Senior Friendly', true, true, true,
  true, 'Wheelchair Accessible', 4.8,
  12, 6, 8, true,
  'Get a 100% full refund on cancellations made up to 15 days before the departure. Rescheduling options are fully flexible.', true
) ON CONFLICT (slug) DO UPDATE SET
  name = EXCLUDED.name,
  description = EXCLUDED.description,
  location = EXCLUDED.location,
  base_price = EXCLUDED.base_price,
  rating = EXCLUDED.rating,
  is_active = true;
INSERT INTO public.packages (
  slug, name, destination_name, description, location, region, category, sub_category,
  duration_days, duration_nights, duration_label, base_price, best_season, pace,
  tags, traveller_types, route, destinations_text, image, alt_text, category_label,
  traveller_type, senior_friendly, child_friendly, wheelchair_access, veg_meals,
  accessibility_status, rating, review_count, seats_left, recent_bookings, verified, cancellation_summary, is_active
) VALUES (
  'islam-medina-saudi-arabia', 'Medina Journey', 'Medina', 'A thoughtfully planned islamic pilgrimage offering comfort, guidance, and a memorable experience.',
  'Saudi Arabia', 'International', 'Pilgrimage', 'Islam',
  3, 2, '3 Days / 2 Nights',
  22900, 'October–March', 'Easy',
  ARRAY['Islamic Pilgrimage','Curated Journey'],
  ARRAY['Pilgrims','Seniors'],
  ARRAY['Saudi Arabia','Medina'],
  'Medina (Saudi Arabia)', '/images/tourist-places/pilgrimage/Islam/Medina, Saudi Arabia.jpg', 'Medina islamic pilgrimage destination in Saudi Arabia', 'Islamic Pilgrimage',
  'Senior Friendly', true, true, true,
  true, 'Wheelchair Accessible', 4.8,
  12, 6, 8, true,
  'Get a 100% full refund on cancellations made up to 15 days before the departure. Rescheduling options are fully flexible.', true
) ON CONFLICT (slug) DO UPDATE SET
  name = EXCLUDED.name,
  description = EXCLUDED.description,
  location = EXCLUDED.location,
  base_price = EXCLUDED.base_price,
  rating = EXCLUDED.rating,
  is_active = true;
INSERT INTO public.packages (
  slug, name, destination_name, description, location, region, category, sub_category,
  duration_days, duration_nights, duration_label, base_price, best_season, pace,
  tags, traveller_types, route, destinations_text, image, alt_text, category_label,
  traveller_type, senior_friendly, child_friendly, wheelchair_access, veg_meals,
  accessibility_status, rating, review_count, seats_left, recent_bookings, verified, cancellation_summary, is_active
) VALUES (
  'islam-old-city-jerusalem-israel', 'Old City Jerusalem Journey', 'Old City Jerusalem', 'A thoughtfully planned islamic pilgrimage offering comfort, guidance, and a memorable experience.',
  'Jerusalem, Israel', 'International', 'Pilgrimage', 'Islam',
  3, 2, '3 Days / 2 Nights',
  14500, 'October–March', 'Easy',
  ARRAY['Islamic Pilgrimage','Curated Journey'],
  ARRAY['Pilgrims','Seniors'],
  ARRAY['Jerusalem','Old City Jerusalem'],
  'Old City Jerusalem (Jerusalem, Israel)', '/images/tourist-places/pilgrimage/Islam/Old City Jerusalem, Israel.jpg', 'Old City Jerusalem islamic pilgrimage destination in Jerusalem, Israel', 'Islamic Pilgrimage',
  'Senior Friendly', true, true, true,
  true, 'Wheelchair Accessible', 4.8,
  12, 6, 8, true,
  'Get a 100% full refund on cancellations made up to 15 days before the departure. Rescheduling options are fully flexible.', true
) ON CONFLICT (slug) DO UPDATE SET
  name = EXCLUDED.name,
  description = EXCLUDED.description,
  location = EXCLUDED.location,
  base_price = EXCLUDED.base_price,
  rating = EXCLUDED.rating,
  is_active = true;
INSERT INTO public.packages (
  slug, name, destination_name, description, location, region, category, sub_category,
  duration_days, duration_nights, duration_label, base_price, best_season, pace,
  tags, traveller_types, route, destinations_text, image, alt_text, category_label,
  traveller_type, senior_friendly, child_friendly, wheelchair_access, veg_meals,
  accessibility_status, rating, review_count, seats_left, recent_bookings, verified, cancellation_summary, is_active
) VALUES (
  'islam-quba-mosque-medina-saudi-arabia', 'Quba Mosque, Medina Journey', 'Quba Mosque, Medina', 'A thoughtfully planned islamic pilgrimage offering comfort, guidance, and a memorable experience.',
  'Medina, Saudi Arabia', 'International', 'Pilgrimage', 'Islam',
  3, 2, '3 Days / 2 Nights',
  15700, 'October–March', 'Easy',
  ARRAY['Islamic Pilgrimage','Curated Journey'],
  ARRAY['Pilgrims','Seniors'],
  ARRAY['Medina','Quba Mosque, Medina'],
  'Quba Mosque, Medina (Medina, Saudi Arabia)', '/images/tourist-places/pilgrimage/Islam/Quba Mosque, Medina, Saudi Arabia.jpg', 'Quba Mosque, Medina islamic pilgrimage destination in Medina, Saudi Arabia', 'Islamic Pilgrimage',
  'Senior Friendly', true, true, true,
  true, 'Wheelchair Accessible', 4.8,
  12, 6, 8, true,
  'Get a 100% full refund on cancellations made up to 15 days before the departure. Rescheduling options are fully flexible.', true
) ON CONFLICT (slug) DO UPDATE SET
  name = EXCLUDED.name,
  description = EXCLUDED.description,
  location = EXCLUDED.location,
  base_price = EXCLUDED.base_price,
  rating = EXCLUDED.rating,
  is_active = true;
INSERT INTO public.packages (
  slug, name, destination_name, description, location, region, category, sub_category,
  duration_days, duration_nights, duration_label, base_price, best_season, pace,
  tags, traveller_types, route, destinations_text, image, alt_text, category_label,
  traveller_type, senior_friendly, child_friendly, wheelchair_access, veg_meals,
  accessibility_status, rating, review_count, seats_left, recent_bookings, verified, cancellation_summary, is_active
) VALUES (
  'islam-touba-senegal', 'Touba Journey', 'Touba', 'A thoughtfully planned islamic pilgrimage offering comfort, guidance, and a memorable experience.',
  'Diourbel, Senegal', 'International', 'Pilgrimage', 'Islam',
  3, 2, '3 Days / 2 Nights',
  16900, 'October–March', 'Easy',
  ARRAY['Islamic Pilgrimage','Curated Journey'],
  ARRAY['Pilgrims','Seniors'],
  ARRAY['Diourbel','Touba'],
  'Touba (Diourbel, Senegal)', '/images/tourist-places/pilgrimage/Islam/Touba, Senegal.webp', 'Touba islamic pilgrimage destination in Diourbel, Senegal', 'Islamic Pilgrimage',
  'Senior Friendly', true, true, true,
  true, 'Wheelchair Accessible', 4.8,
  12, 6, 8, true,
  'Get a 100% full refund on cancellations made up to 15 days before the departure. Rescheduling options are fully flexible.', true
) ON CONFLICT (slug) DO UPDATE SET
  name = EXCLUDED.name,
  description = EXCLUDED.description,
  location = EXCLUDED.location,
  base_price = EXCLUDED.base_price,
  rating = EXCLUDED.rating,
  is_active = true;
INSERT INTO public.packages (
  slug, name, destination_name, description, location, region, category, sub_category,
  duration_days, duration_nights, duration_label, base_price, best_season, pace,
  tags, traveller_types, route, destinations_text, image, alt_text, category_label,
  traveller_type, senior_friendly, child_friendly, wheelchair_access, veg_meals,
  accessibility_status, rating, review_count, seats_left, recent_bookings, verified, cancellation_summary, is_active
) VALUES (
  'islam-umayyad-mosque-damascus-syria', 'Umayyad Mosque, Damascus Journey', 'Umayyad Mosque, Damascus', 'A thoughtfully planned islamic pilgrimage offering comfort, guidance, and a memorable experience.',
  'Damascus, Syria', 'International', 'Pilgrimage', 'Islam',
  3, 2, '3 Days / 2 Nights',
  18100, 'October–March', 'Easy',
  ARRAY['Islamic Pilgrimage','Curated Journey'],
  ARRAY['Pilgrims','Seniors'],
  ARRAY['Damascus','Umayyad Mosque, Damascus'],
  'Umayyad Mosque, Damascus (Damascus, Syria)', '/images/tourist-places/pilgrimage/Islam/Umayyad Mosque, Damascus, Syria.jpg', 'Umayyad Mosque, Damascus islamic pilgrimage destination in Damascus, Syria', 'Islamic Pilgrimage',
  'Senior Friendly', true, true, true,
  true, 'Wheelchair Accessible', 4.8,
  12, 6, 8, true,
  'Get a 100% full refund on cancellations made up to 15 days before the departure. Rescheduling options are fully flexible.', true
) ON CONFLICT (slug) DO UPDATE SET
  name = EXCLUDED.name,
  description = EXCLUDED.description,
  location = EXCLUDED.location,
  base_price = EXCLUDED.base_price,
  rating = EXCLUDED.rating,
  is_active = true;
INSERT INTO public.package_categories (package_id, category_id, display_order)
SELECT p.id, c.id, 0
FROM public.packages p, public.categories c
WHERE p.slug = 'family-amber-fort' AND c.slug = 'family'
ON CONFLICT (package_id, category_id) DO NOTHING;
INSERT INTO public.package_categories (package_id, category_id, display_order)
SELECT p.id, c.id, 0
FROM public.packages p, public.categories c
WHERE p.slug = 'family-athirappilly-waterfalls' AND c.slug = 'family'
ON CONFLICT (package_id, category_id) DO NOTHING;
END $$;