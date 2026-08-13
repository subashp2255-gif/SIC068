DO $$
BEGIN
INSERT INTO public.packages (
  slug, name, destination_name, description, location, region, category, sub_category,
  duration_days, duration_nights, duration_label, base_price, best_season, pace,
  tags, traveller_types, route, destinations_text, image, alt_text, category_label,
  traveller_type, senior_friendly, child_friendly, wheelchair_access, veg_meals,
  accessibility_status, rating, review_count, seats_left, recent_bookings, verified, cancellation_summary, is_active
) VALUES (
  'family-mehrangarh-fort', 'Mehrangarh Fort Experience', 'Mehrangarh Fort', 'A thoughtfully planned family tour offering comfort, guidance, and a memorable experience.',
  'Jodhpur, Rajasthan', 'North India', 'Family', NULL,
  4, 3, '4 Days / 3 Nights',
  27500, 'October–March', 'Moderate',
  ARRAY['Family Tour','Family Friendly'],
  ARRAY['History Lovers','Families'],
  ARRAY['Jodhpur','Mehrangarh Fort'],
  'Mehrangarh Fort (Jodhpur, Rajasthan)', '/images/tourist-places/family/Mehrangarh Fort.jpg', 'Mehrangarh Fort family tour destination in Jodhpur, Rajasthan', 'Family Tour',
  'Family Friendly', true, true, true,
  false, 'Partial Accessibility', 4.8,
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
  'family-mount-fuji', 'Mount Fuji Experience', 'Mount Fuji', 'A thoughtfully planned family tour offering comfort, guidance, and a memorable experience.',
  'Honshu, Japan', 'International', 'Family', NULL,
  4, 3, '4 Days / 3 Nights',
  29000, 'October–March', 'Easy',
  ARRAY['Family Tour','Family Friendly'],
  ARRAY['Families','Couples'],
  ARRAY['Honshu','Mount Fuji'],
  'Mount Fuji (Honshu, Japan)', '/images/tourist-places/family/Mount Fuji.jpg', 'Mount Fuji family tour destination in Honshu, Japan', 'Family Tour',
  'Family Friendly', true, true, true,
  false, 'Wheelchair Accessible', 4.8,
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
  'family-mount-titlis', 'Mount Titlis Experience', 'Mount Titlis', 'A thoughtfully planned family tour offering comfort, guidance, and a memorable experience.',
  'Engelberg, Switzerland', 'International', 'Family', NULL,
  4, 3, '4 Days / 3 Nights',
  18500, 'October–March', 'Easy',
  ARRAY['Family Tour','Family Friendly'],
  ARRAY['Families','Couples'],
  ARRAY['Engelberg','Mount Titlis'],
  'Mount Titlis (Engelberg, Switzerland)', '/images/tourist-places/family/Mount Titlis.jpg', 'Mount Titlis family tour destination in Engelberg, Switzerland', 'Family Tour',
  'Family Friendly', true, true, true,
  false, 'Wheelchair Accessible', 4.8,
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
  'family-munnar-tea-gardens', 'Munnar Tea Gardens Experience', 'Munnar Tea Gardens', 'A thoughtfully planned family tour offering comfort, guidance, and a memorable experience.',
  'Munnar, Kerala', 'South India', 'Family', NULL,
  4, 3, '4 Days / 3 Nights',
  20000, 'November–February', 'Easy',
  ARRAY['Family Tour','Family Friendly'],
  ARRAY['Families','Couples'],
  ARRAY['Munnar','Munnar Tea Gardens'],
  'Munnar Tea Gardens (Munnar, Kerala)', '/images/tourist-places/family/Munnar Tea Gardens.jpg', 'Munnar Tea Gardens family tour destination in Munnar, Kerala', 'Family Tour',
  'Family Friendly', true, true, true,
  false, 'Wheelchair Accessible', 4.8,
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
  'family-museum-of-the-future', 'Museum of the Future Experience', 'Museum of the Future', 'A thoughtfully planned family tour offering comfort, guidance, and a memorable experience.',
  'Dubai, United Arab Emirates', 'International', 'Family', NULL,
  4, 3, '4 Days / 3 Nights',
  21500, 'Year-Round', 'Easy',
  ARRAY['Family Tour','Family Friendly'],
  ARRAY['Families','Couples'],
  ARRAY['Dubai','Museum of the Future'],
  'Museum of the Future (Dubai, United Arab Emirates)', '/images/tourist-places/family/Museum of the Future.jpeg', 'Museum of the Future family tour destination in Dubai, United Arab Emirates', 'Family Tour',
  'Family Friendly', true, true, true,
  false, 'Wheelchair Accessible', 4.8,
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
  'family-mysore-palace', 'Mysore Palace Experience', 'Mysore Palace', 'A thoughtfully planned family tour offering comfort, guidance, and a memorable experience.',
  'Mysore, Karnataka', 'South India', 'Family', NULL,
  4, 3, '4 Days / 3 Nights',
  23000, 'November–February', 'Moderate',
  ARRAY['Family Tour','Family Friendly'],
  ARRAY['History Lovers','Families'],
  ARRAY['Mysore','Mysore Palace'],
  'Mysore Palace (Mysore, Karnataka)', '/images/tourist-places/family/Mysore Palace.jpg', 'Mysore Palace family tour destination in Mysore, Karnataka', 'Family Tour',
  'Family Friendly', true, true, true,
  false, 'Partial Accessibility', 4.8,
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
  'family-niagara-falls', 'Niagara Falls Experience', 'Niagara Falls', 'A thoughtfully planned family tour offering comfort, guidance, and a memorable experience.',
  'Ontario, Canada / New York, USA', 'International', 'Family', NULL,
  4, 3, '4 Days / 3 Nights',
  24500, 'July–September', 'Active',
  ARRAY['Family Tour','Family Friendly'],
  ARRAY['Nature Lovers','Adventure Travellers'],
  ARRAY['Ontario','Niagara Falls'],
  'Niagara Falls (Ontario, Canada / New York, USA)', '/images/tourist-places/family/Niagara Falls.jpg', 'Niagara Falls family tour destination in Ontario, Canada / New York, USA', 'Family Tour',
  'Family Friendly', false, false, false,
  false, 'Not Wheelchair Accessible', 4.8,
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
  'family-nubra-valley', 'Nubra Valley Experience', 'Nubra Valley', 'A thoughtfully planned family tour offering comfort, guidance, and a memorable experience.',
  'Ladakh', 'North India', 'Family', NULL,
  4, 3, '4 Days / 3 Nights',
  26000, 'March–June', 'Active',
  ARRAY['Family Tour','Family Friendly'],
  ARRAY['Nature Lovers','Adventure Travellers'],
  ARRAY['Ladakh','Nubra Valley'],
  'Nubra Valley (Ladakh)', '/images/tourist-places/family/Nubra Valley.jpg', 'Nubra Valley family tour destination in Ladakh', 'Family Tour',
  'Family Friendly', false, false, false,
  false, 'Not Wheelchair Accessible', 4.8,
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
  'family-palm-jumeirah', 'Palm Jumeirah Experience', 'Palm Jumeirah', 'A thoughtfully planned family tour offering comfort, guidance, and a memorable experience.',
  'Dubai, United Arab Emirates', 'International', 'Family', NULL,
  4, 3, '4 Days / 3 Nights',
  27500, 'Year-Round', 'Easy',
  ARRAY['Family Tour','Family Friendly'],
  ARRAY['Families','Couples'],
  ARRAY['Dubai','Palm Jumeirah'],
  'Palm Jumeirah (Dubai, United Arab Emirates)', '/images/tourist-places/family/Palm Jumeirah.jpg', 'Palm Jumeirah family tour destination in Dubai, United Arab Emirates', 'Family Tour',
  'Family Friendly', true, true, true,
  false, 'Wheelchair Accessible', 4.8,
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
  'family-pangong-lake', 'Pangong Lake Experience', 'Pangong Lake', 'A thoughtfully planned family tour offering comfort, guidance, and a memorable experience.',
  'Ladakh', 'North India', 'Family', NULL,
  4, 3, '4 Days / 3 Nights',
  29000, 'March–June', 'Active',
  ARRAY['Family Tour','Family Friendly'],
  ARRAY['Nature Lovers','Adventure Travellers'],
  ARRAY['Ladakh','Pangong Lake'],
  'Pangong Lake (Ladakh)', '/images/tourist-places/family/Pangong Lake.jpg', 'Pangong Lake family tour destination in Ladakh', 'Family Tour',
  'Family Friendly', false, false, false,
  false, 'Not Wheelchair Accessible', 4.8,
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
  'family-radhanagar-beach', 'Radhanagar Beach Experience', 'Radhanagar Beach', 'A thoughtfully planned family tour offering comfort, guidance, and a memorable experience.',
  'Andaman & Nicobar Islands', 'South India', 'Family', NULL,
  4, 3, '4 Days / 3 Nights',
  18500, 'November–February', 'Relaxed',
  ARRAY['Family Tour','Family Friendly'],
  ARRAY['Couples','Seniors'],
  ARRAY['Andaman & Nicobar Islands','Radhanagar Beach'],
  'Radhanagar Beach (Andaman & Nicobar Islands)', '/images/tourist-places/family/Radhanagar Beach.jpg', 'Radhanagar Beach family tour destination in Andaman & Nicobar Islands', 'Family Tour',
  'Family Friendly', true, true, true,
  false, 'Wheelchair Accessible', 4.8,
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
  'family-rohtang-pass', 'Rohtang Pass Experience', 'Rohtang Pass', 'A thoughtfully planned family tour offering comfort, guidance, and a memorable experience.',
  'Manali, Himachal Pradesh', 'North India', 'Family', NULL,
  4, 3, '4 Days / 3 Nights',
  20000, 'March–June', 'Easy',
  ARRAY['Family Tour','Family Friendly'],
  ARRAY['Families','Couples'],
  ARRAY['Manali','Rohtang Pass'],
  'Rohtang Pass (Manali, Himachal Pradesh)', '/images/tourist-places/family/Rohtang-Pass.jpg', 'Rohtang Pass family tour destination in Manali, Himachal Pradesh', 'Family Tour',
  'Family Friendly', true, true, true,
  false, 'Wheelchair Accessible', 4.8,
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
  'family-sentosa-island', 'Sentosa Island Experience', 'Sentosa Island', 'A thoughtfully planned family tour offering comfort, guidance, and a memorable experience.',
  'Singapore', 'International', 'Family', NULL,
  4, 3, '4 Days / 3 Nights',
  21500, 'Year-Round', 'Easy',
  ARRAY['Family Tour','Family Friendly'],
  ARRAY['Families','Couples'],
  ARRAY['Singapore','Sentosa Island'],
  'Sentosa Island (Singapore)', '/images/tourist-places/family/Sentosa Island.jpg', 'Sentosa Island family tour destination in Singapore', 'Family Tour',
  'Family Friendly', true, true, true,
  false, 'Wheelchair Accessible', 4.8,
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
  'family-swiss-alps-jungfraujoch', 'Swiss Alps Experience', 'Swiss Alps', 'A thoughtfully planned family tour offering comfort, guidance, and a memorable experience.',
  'Bernese Oberland, Switzerland', 'International', 'Family', NULL,
  4, 3, '4 Days / 3 Nights',
  23000, 'October–March', 'Easy',
  ARRAY['Family Tour','Family Friendly'],
  ARRAY['Families','Couples'],
  ARRAY['Bernese Oberland','Swiss Alps'],
  'Swiss Alps (Bernese Oberland, Switzerland)', '/images/tourist-places/family/Swiss Alps (Jungfraujoch).webp', 'Swiss Alps family tour destination in Bernese Oberland, Switzerland', 'Family Tour',
  'Family Friendly', true, true, true,
  false, 'Wheelchair Accessible', 4.8,
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
  'family-taj-mahal', 'Taj Mahal Experience', 'Taj Mahal', 'A thoughtfully planned family tour offering comfort, guidance, and a memorable experience.',
  'Agra, Uttar Pradesh', 'North India', 'Family', NULL,
  4, 3, '4 Days / 3 Nights',
  24500, 'October–March', 'Easy',
  ARRAY['Family Tour','Family Friendly'],
  ARRAY['Families','Couples'],
  ARRAY['Agra','Taj Mahal'],
  'Taj Mahal (Agra, Uttar Pradesh)', '/images/tourist-places/family/Taj Mahal.webp', 'Taj Mahal family tour destination in Agra, Uttar Pradesh', 'Family Tour',
  'Family Friendly', true, true, true,
  false, 'Wheelchair Accessible', 4.8,
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
  'family-tokyo-disneyland', 'Tokyo Disneyland Experience', 'Tokyo Disneyland', 'A thoughtfully planned family tour offering comfort, guidance, and a memorable experience.',
  'Tokyo, Japan', 'International', 'Family', NULL,
  4, 3, '4 Days / 3 Nights',
  26000, 'Year-Round', 'Easy',
  ARRAY['Family Tour','Family Friendly'],
  ARRAY['Families','Couples'],
  ARRAY['Tokyo','Tokyo Disneyland'],
  'Tokyo Disneyland (Tokyo, Japan)', '/images/tourist-places/family/Tokyo Disneyland.jpg', 'Tokyo Disneyland family tour destination in Tokyo, Japan', 'Family Tour',
  'Family Friendly', true, true, true,
  false, 'Wheelchair Accessible', 4.8,
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
  'family-universal-studios-japan', 'Universal Studios Japan Experience', 'Universal Studios Japan', 'A thoughtfully planned family tour offering comfort, guidance, and a memorable experience.',
  'Osaka, Japan', 'International', 'Family', NULL,
  4, 3, '4 Days / 3 Nights',
  27500, 'October–March', 'Easy',
  ARRAY['Family Tour','Family Friendly'],
  ARRAY['Families','Couples'],
  ARRAY['Osaka','Universal Studios Japan'],
  'Universal Studios Japan (Osaka, Japan)', '/images/tourist-places/family/Universal Studios Japan.jpg', 'Universal Studios Japan family tour destination in Osaka, Japan', 'Family Tour',
  'Family Friendly', true, true, true,
  false, 'Wheelchair Accessible', 4.8,
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
  'family-venice-grand-canal', 'Venice Grand Canal Experience', 'Venice Grand Canal', 'A thoughtfully planned family tour offering comfort, guidance, and a memorable experience.',
  'Venice, Italy', 'International', 'Family', NULL,
  4, 3, '4 Days / 3 Nights',
  29000, 'October–March', 'Easy',
  ARRAY['Family Tour','Family Friendly'],
  ARRAY['Families','Couples'],
  ARRAY['Venice','Venice Grand Canal'],
  'Venice Grand Canal (Venice, Italy)', '/images/tourist-places/family/Venice Grand Canal.jpg', 'Venice Grand Canal family tour destination in Venice, Italy', 'Family Tour',
  'Family Friendly', true, true, true,
  false, 'Wheelchair Accessible', 4.8,
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
  'buddhism-adam-s-peak-sri-pada-sri-lanka', 'Adam’s Peak (Sri Pada) Journey', 'Adam’s Peak (Sri Pada)', 'A thoughtfully planned buddhist pilgrimage offering comfort, guidance, and a memorable experience.',
  'Ratnapura, Sri Lanka', 'International', 'Pilgrimage', 'Buddhism',
  3, 2, '3 Days / 2 Nights',
  14500, 'October–March', 'Easy',
  ARRAY['Buddhist Pilgrimage','Curated Journey'],
  ARRAY['Pilgrims','Seniors'],
  ARRAY['Ratnapura','Adam’s Peak (Sri Pada)'],
  'Adam’s Peak (Sri Pada) (Ratnapura, Sri Lanka)', '/images/tourist-places/pilgrimage/Buddhism/Adam’s Peak (Sri Pada), Sri Lanka.jpg', 'Adam’s Peak (Sri Pada) buddhist pilgrimage destination in Ratnapura, Sri Lanka', 'Buddhist Pilgrimage',
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
  'buddhism-bodh-gaya-india', 'Bodh Gaya Journey', 'Bodh Gaya', 'A thoughtfully planned buddhist pilgrimage offering comfort, guidance, and a memorable experience.',
  'Gaya, Bihar, India', 'North India', 'Pilgrimage', 'Buddhism',
  3, 2, '3 Days / 2 Nights',
  15700, 'October–March', 'Easy',
  ARRAY['Buddhist Pilgrimage','Curated Journey'],
  ARRAY['Pilgrims','Seniors'],
  ARRAY['Gaya','Bodh Gaya'],
  'Bodh Gaya (Gaya, Bihar, India)', '/images/tourist-places/pilgrimage/Buddhism/Bodh Gaya, India.jpg', 'Bodh Gaya buddhist pilgrimage destination in Gaya, Bihar, India', 'Buddhist Pilgrimage',
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
  'buddhism-borobudur-temple-indonesia', 'Borobudur Temple Journey', 'Borobudur Temple', 'A thoughtfully planned buddhist pilgrimage offering comfort, guidance, and a memorable experience.',
  'Magelang, Indonesia', 'International', 'Pilgrimage', 'Buddhism',
  3, 2, '3 Days / 2 Nights',
  16900, 'October–March', 'Easy',
  ARRAY['Buddhist Pilgrimage','Curated Journey'],
  ARRAY['Pilgrims','Seniors'],
  ARRAY['Magelang','Borobudur Temple'],
  'Borobudur Temple (Magelang, Indonesia)', '/images/tourist-places/pilgrimage/Buddhism/Borobudur Temple, Indonesia.jpg', 'Borobudur Temple buddhist pilgrimage destination in Magelang, Indonesia', 'Buddhist Pilgrimage',
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
  'buddhism-dambulla-cave-temple-sri-lanka', 'Dambulla Cave Temple Journey', 'Dambulla Cave Temple', 'A thoughtfully planned buddhist pilgrimage offering comfort, guidance, and a memorable experience.',
  'Matale, Sri Lanka', 'International', 'Pilgrimage', 'Buddhism',
  3, 2, '3 Days / 2 Nights',
  18100, 'October–March', 'Easy',
  ARRAY['Buddhist Pilgrimage','Curated Journey'],
  ARRAY['Pilgrims','Seniors'],
  ARRAY['Matale','Dambulla Cave Temple'],
  'Dambulla Cave Temple (Matale, Sri Lanka)', '/images/tourist-places/pilgrimage/Buddhism/Dambulla Cave Temple, Sri Lanka.jpg', 'Dambulla Cave Temple buddhist pilgrimage destination in Matale, Sri Lanka', 'Buddhist Pilgrimage',
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
  'buddhism-jokhang-temple-lhasa-tibet', 'Jokhang Temple, Lhasa Journey', 'Jokhang Temple, Lhasa', 'A thoughtfully planned buddhist pilgrimage offering comfort, guidance, and a memorable experience.',
  'Lhasa, Tibet', 'International', 'Pilgrimage', 'Buddhism',
  3, 2, '3 Days / 2 Nights',
  19300, 'October–March', 'Easy',
  ARRAY['Buddhist Pilgrimage','Curated Journey'],
  ARRAY['Pilgrims','Seniors'],
  ARRAY['Lhasa','Jokhang Temple, Lhasa'],
  'Jokhang Temple, Lhasa (Lhasa, Tibet)', '/images/tourist-places/pilgrimage/Buddhism/Jokhang Temple, Lhasa, Tibet.jpg', 'Jokhang Temple, Lhasa buddhist pilgrimage destination in Lhasa, Tibet', 'Buddhist Pilgrimage',
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
  'buddhism-kumano-kodo-japan', 'Kumano Kodo Journey', 'Kumano Kodo', 'A thoughtfully planned buddhist pilgrimage offering comfort, guidance, and a memorable experience.',
  'Wakayama, Japan', 'International', 'Pilgrimage', 'Buddhism',
  3, 2, '3 Days / 2 Nights',
  20500, 'October–March', 'Easy',
  ARRAY['Buddhist Pilgrimage','Curated Journey'],
  ARRAY['Pilgrims','Seniors'],
  ARRAY['Wakayama','Kumano Kodo'],
  'Kumano Kodo (Wakayama, Japan)', '/images/tourist-places/pilgrimage/Buddhism/Kumano Kodo, Japan.jpg', 'Kumano Kodo buddhist pilgrimage destination in Wakayama, Japan', 'Buddhist Pilgrimage',
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
  'buddhism-kushinagar-india', 'Kushinagar Journey', 'Kushinagar', 'A thoughtfully planned buddhist pilgrimage offering comfort, guidance, and a memorable experience.',
  'Kushinagar, Uttar Pradesh, India', 'North India', 'Pilgrimage', 'Buddhism',
  3, 2, '3 Days / 2 Nights',
  21700, 'October–March', 'Easy',
  ARRAY['Buddhist Pilgrimage','Curated Journey'],
  ARRAY['Pilgrims','Seniors'],
  ARRAY['Kushinagar','Kushinagar'],
  'Kushinagar (Kushinagar, Uttar Pradesh, India)', '/images/tourist-places/pilgrimage/Buddhism/Kushinagar, India.webp', 'Kushinagar buddhist pilgrimage destination in Kushinagar, Uttar Pradesh, India', 'Buddhist Pilgrimage',
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
  'buddhism-lumbini-nepal', 'Lumbini Journey', 'Lumbini', 'A thoughtfully planned buddhist pilgrimage offering comfort, guidance, and a memorable experience.',
  'Rupandehi, Nepal', 'International', 'Pilgrimage', 'Buddhism',
  3, 2, '3 Days / 2 Nights',
  22900, 'October–March', 'Easy',
  ARRAY['Buddhist Pilgrimage','Curated Journey'],
  ARRAY['Pilgrims','Seniors'],
  ARRAY['Rupandehi','Lumbini'],
  'Lumbini (Rupandehi, Nepal)', '/images/tourist-places/pilgrimage/Buddhism/Lumbini, Nepal.jpg', 'Lumbini buddhist pilgrimage destination in Rupandehi, Nepal', 'Buddhist Pilgrimage',
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
  'buddhism-mahabodhi-temple-bagan-myanmar', 'Mahabodhi Temple, Bagan Journey', 'Mahabodhi Temple, Bagan', 'A thoughtfully planned buddhist pilgrimage offering comfort, guidance, and a memorable experience.',
  'Bagan, Myanmar', 'International', 'Pilgrimage', 'Buddhism',
  3, 2, '3 Days / 2 Nights',
  14500, 'October–March', 'Easy',
  ARRAY['Buddhist Pilgrimage','Curated Journey'],
  ARRAY['Pilgrims','Seniors'],
  ARRAY['Bagan','Mahabodhi Temple, Bagan'],
  'Mahabodhi Temple, Bagan (Bagan, Myanmar)', '/images/tourist-places/pilgrimage/Buddhism/Mahabodhi Temple, Bagan, Myanmar.jpg', 'Mahabodhi Temple, Bagan buddhist pilgrimage destination in Bagan, Myanmar', 'Buddhist Pilgrimage',
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
  'buddhism-mount-kailash-tibet', 'Mount Kailash Journey', 'Mount Kailash', 'A thoughtfully planned buddhist pilgrimage offering comfort, guidance, and a memorable experience.',
  'Ngari, Tibet', 'International', 'Pilgrimage', 'Buddhism',
  3, 2, '3 Days / 2 Nights',
  15700, 'October–March', 'Moderate',
  ARRAY['Buddhist Pilgrimage','Curated Journey'],
  ARRAY['Pilgrims','Seniors'],
  ARRAY['Ngari','Mount Kailash'],
  'Mount Kailash (Ngari, Tibet)', '/images/tourist-places/pilgrimage/Buddhism/Mount Kailash, Tibet.webp', 'Mount Kailash buddhist pilgrimage destination in Ngari, Tibet', 'Buddhist Pilgrimage',
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
  'buddhism-nalanda-india', 'Nalanda Journey', 'Nalanda', 'A thoughtfully planned buddhist pilgrimage offering comfort, guidance, and a memorable experience.',
  'Nalanda, Bihar, India', 'North India', 'Pilgrimage', 'Buddhism',
  3, 2, '3 Days / 2 Nights',
  16900, 'October–March', 'Easy',
  ARRAY['Buddhist Pilgrimage','Curated Journey'],
  ARRAY['Pilgrims','Seniors'],
  ARRAY['Nalanda','Nalanda'],
  'Nalanda (Nalanda, Bihar, India)', '/images/tourist-places/pilgrimage/Buddhism/Nalanda, India.jpg', 'Nalanda buddhist pilgrimage destination in Nalanda, Bihar, India', 'Buddhist Pilgrimage',
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
  'buddhism-rajgir-india', 'Rajgir Journey', 'Rajgir', 'A thoughtfully planned buddhist pilgrimage offering comfort, guidance, and a memorable experience.',
  'Nalanda, Bihar, India', 'North India', 'Pilgrimage', 'Buddhism',
  3, 2, '3 Days / 2 Nights',
  18100, 'October–March', 'Easy',
  ARRAY['Buddhist Pilgrimage','Curated Journey'],
  ARRAY['Pilgrims','Seniors'],
  ARRAY['Nalanda','Rajgir'],
  'Rajgir (Nalanda, Bihar, India)', '/images/tourist-places/pilgrimage/Buddhism/Rajgir, India.jpg', 'Rajgir buddhist pilgrimage destination in Nalanda, Bihar, India', 'Buddhist Pilgrimage',
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
  'buddhism-sarnath-india', 'Sarnath Journey', 'Sarnath', 'A thoughtfully planned buddhist pilgrimage offering comfort, guidance, and a memorable experience.',
  'Varanasi, Uttar Pradesh, India', 'North India', 'Pilgrimage', 'Buddhism',
  3, 2, '3 Days / 2 Nights',
  19300, 'October–March', 'Easy',
  ARRAY['Buddhist Pilgrimage','Curated Journey'],
  ARRAY['Pilgrims','Seniors'],
  ARRAY['Varanasi','Sarnath'],
  'Sarnath (Varanasi, Uttar Pradesh, India)', '/images/tourist-places/pilgrimage/Buddhism/Sarnath, India.jpg', 'Sarnath buddhist pilgrimage destination in Varanasi, Uttar Pradesh, India', 'Buddhist Pilgrimage',
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
  'buddhism-shwedagon-pagoda-myanmar', 'Shwedagon Pagoda Journey', 'Shwedagon Pagoda', 'A thoughtfully planned buddhist pilgrimage offering comfort, guidance, and a memorable experience.',
  'Yangon, Myanmar', 'International', 'Pilgrimage', 'Buddhism',
  3, 2, '3 Days / 2 Nights',
  20500, 'October–March', 'Easy',
  ARRAY['Buddhist Pilgrimage','Curated Journey'],
  ARRAY['Pilgrims','Seniors'],
  ARRAY['Yangon','Shwedagon Pagoda'],
  'Shwedagon Pagoda (Yangon, Myanmar)', '/images/tourist-places/pilgrimage/Buddhism/Shwedagon Pagoda, Myanmar.jpg', 'Shwedagon Pagoda buddhist pilgrimage destination in Yangon, Myanmar', 'Buddhist Pilgrimage',
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
  'buddhism-tiger-s-nest-monastery-paro-taktsang-bhutan', 'Tiger’s Nest Monastery Journey', 'Tiger’s Nest Monastery', 'A thoughtfully planned buddhist pilgrimage offering comfort, guidance, and a memorable experience.',
  'Paro, Bhutan', 'International', 'Pilgrimage', 'Buddhism',
  3, 2, '3 Days / 2 Nights',
  21700, 'October–March', 'Easy',
  ARRAY['Buddhist Pilgrimage','Curated Journey'],
  ARRAY['Pilgrims','Seniors'],
  ARRAY['Paro','Tiger’s Nest Monastery'],
  'Tiger’s Nest Monastery (Paro, Bhutan)', '/images/tourist-places/pilgrimage/Buddhism/Tiger’s Nest Monastery (Paro Taktsang), Bhutan.jpg', 'Tiger’s Nest Monastery buddhist pilgrimage destination in Paro, Bhutan', 'Buddhist Pilgrimage',
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
  'christianity-basilica-of-our-lady-of-guadalupe-mexico', 'Basilica of Our Lady of Guadalupe Journey', 'Basilica of Our Lady of Guadalupe', 'A thoughtfully planned christian pilgrimage offering comfort, guidance, and a memorable experience.',
  'Mexico City, Mexico', 'International', 'Pilgrimage', 'Christianity',
  3, 2, '3 Days / 2 Nights',
  22900, 'October–March', 'Easy',
  ARRAY['Christian Pilgrimage','Curated Journey'],
  ARRAY['Pilgrims','Seniors'],
  ARRAY['Mexico City','Basilica of Our Lady of Guadalupe'],
  'Basilica of Our Lady of Guadalupe (Mexico City, Mexico)', '/images/tourist-places/pilgrimage/Christianity/Basilica of Our Lady of Guadalupe, Mexico.jpg', 'Basilica of Our Lady of Guadalupe christian pilgrimage destination in Mexico City, Mexico', 'Christian Pilgrimage',
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
  'christianity-basilica-of-saint-peter-vatican-city', 'Basilica of Saint Peter, Vatican City Journey', 'Basilica of Saint Peter, Vatican City', 'A thoughtfully planned christian pilgrimage offering comfort, guidance, and a memorable experience.',
  'Vatican City', 'International', 'Pilgrimage', 'Christianity',
  3, 2, '3 Days / 2 Nights',
  14500, 'October–March', 'Easy',
  ARRAY['Christian Pilgrimage','Curated Journey'],
  ARRAY['Pilgrims','Seniors'],
  ARRAY['Vatican City','Basilica of Saint Peter, Vatican City'],
  'Basilica of Saint Peter, Vatican City (Vatican City)', '/images/tourist-places/pilgrimage/Christianity/Basilica of Saint Peter, Vatican City.jpg', 'Basilica of Saint Peter, Vatican City christian pilgrimage destination in Vatican City', 'Christian Pilgrimage',
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
  'christianity-bethlehem-palestine', 'Bethlehem Journey', 'Bethlehem', 'A thoughtfully planned christian pilgrimage offering comfort, guidance, and a memorable experience.',
  'West Bank, Palestine', 'International', 'Pilgrimage', 'Christianity',
  3, 2, '3 Days / 2 Nights',
  15700, 'October–March', 'Easy',
  ARRAY['Christian Pilgrimage','Curated Journey'],
  ARRAY['Pilgrims','Seniors'],
  ARRAY['West Bank','Bethlehem'],
  'Bethlehem (West Bank, Palestine)', '/images/tourist-places/pilgrimage/Christianity/Bethlehem, Palestine.jpg', 'Bethlehem christian pilgrimage destination in West Bank, Palestine', 'Christian Pilgrimage',
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
  'christianity-camino-de-santiago-spain', 'Camino de Santiago, Spain Journey', 'Camino de Santiago, Spain', 'A thoughtfully planned christian pilgrimage offering comfort, guidance, and a memorable experience.',
  'Galicia, Spain', 'International', 'Pilgrimage', 'Christianity',
  3, 2, '3 Days / 2 Nights',
  16900, 'October–March', 'Easy',
  ARRAY['Christian Pilgrimage','Curated Journey'],
  ARRAY['Pilgrims','Seniors'],
  ARRAY['Galicia','Camino de Santiago, Spain'],
  'Camino de Santiago, Spain (Galicia, Spain)', '/images/tourist-places/pilgrimage/Christianity/Camino de Santiago, Spain.jpg', 'Camino de Santiago, Spain christian pilgrimage destination in Galicia, Spain', 'Christian Pilgrimage',
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
  'christianity-canterbury-cathedral-england', 'Canterbury Cathedral Journey', 'Canterbury Cathedral', 'A thoughtfully planned christian pilgrimage offering comfort, guidance, and a memorable experience.',
  'Kent, England', 'International', 'Pilgrimage', 'Christianity',
  3, 2, '3 Days / 2 Nights',
  18100, 'October–March', 'Easy',
  ARRAY['Christian Pilgrimage','Curated Journey'],
  ARRAY['Pilgrims','Seniors'],
  ARRAY['Kent','Canterbury Cathedral'],
  'Canterbury Cathedral (Kent, England)', '/images/tourist-places/pilgrimage/Christianity/Canterbury Cathedral, England.jpg', 'Canterbury Cathedral christian pilgrimage destination in Kent, England', 'Christian Pilgrimage',
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
  'christianity-church-of-the-holy-sepulchre-jerusalem-israel', 'Church of the Holy Sepulchre, Jerusalem Journey', 'Church of the Holy Sepulchre, Jerusalem', 'A thoughtfully planned christian pilgrimage offering comfort, guidance, and a memorable experience.',
  'Jerusalem, Israel', 'International', 'Pilgrimage', 'Christianity',
  3, 2, '3 Days / 2 Nights',
  19300, 'October–March', 'Easy',
  ARRAY['Christian Pilgrimage','Curated Journey'],
  ARRAY['Pilgrims','Seniors'],
  ARRAY['Jerusalem','Church of the Holy Sepulchre, Jerusalem'],
  'Church of the Holy Sepulchre, Jerusalem (Jerusalem, Israel)', '/images/tourist-places/pilgrimage/Christianity/Church of the Holy Sepulchre, Jerusalem, Israel.jpg', 'Church of the Holy Sepulchre, Jerusalem christian pilgrimage destination in Jerusalem, Israel', 'Christian Pilgrimage',
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
  'christianity-el-santuario-de-chimayo-new-mexico-usa', 'El Santuario de Chimayo Journey', 'El Santuario de Chimayo', 'A thoughtfully planned christian pilgrimage offering comfort, guidance, and a memorable experience.',
  'New Mexico, USA', 'International', 'Pilgrimage', 'Christianity',
  3, 2, '3 Days / 2 Nights',
  20500, 'October–March', 'Easy',
  ARRAY['Christian Pilgrimage','Curated Journey'],
  ARRAY['Pilgrims','Seniors'],
  ARRAY['New Mexico','El Santuario de Chimayo'],
  'El Santuario de Chimayo (New Mexico, USA)', '/images/tourist-places/pilgrimage/Christianity/El Santuario de Chimayo, New Mexico, USA.jpg', 'El Santuario de Chimayo christian pilgrimage destination in New Mexico, USA', 'Christian Pilgrimage',
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
END $$;