DO $$
BEGIN
INSERT INTO public.packages (
  slug, name, destination_name, description, location, region, category, sub_category,
  duration_days, duration_nights, duration_label, base_price, best_season, pace,
  tags, traveller_types, route, destinations_text, image, alt_text, category_label,
  traveller_type, senior_friendly, child_friendly, wheelchair_access, veg_meals,
  accessibility_status, rating, review_count, seats_left, recent_bookings, verified, cancellation_summary, is_active
) VALUES (
  'family-alleppey-backwaters', 'Alleppey Backwaters Experience', 'Alleppey Backwaters', 'A thoughtfully planned family tour offering comfort, guidance, and a memorable experience.',
  'Alappuzha, Kerala', 'South India', 'Family', NULL,
  4, 3, '4 Days / 3 Nights',
  18500, 'November–February', 'Relaxed',
  ARRAY['Family Tour','Family Friendly'],
  ARRAY['Couples','Seniors'],
  ARRAY['Alappuzha','Alleppey Backwaters'],
  'Alleppey Backwaters (Alappuzha, Kerala)', '/images/tourist-places/family/Alleppey Backwaters.jpg', 'Alleppey Backwaters family tour destination in Alappuzha, Kerala', 'Family Tour',
  'Family Friendly', true, true, true,
  false, 'Accessibility on Request', 4.8,
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
  'family-amber-fort', 'Amber Fort Experience', 'Amber Fort', 'A thoughtfully planned family tour offering comfort, guidance, and a memorable experience.',
  'Jaipur, Rajasthan', 'North India', 'Family', NULL,
  4, 3, '4 Days / 3 Nights',
  20000, 'October–March', 'Moderate',
  ARRAY['Family Tour','Family Friendly'],
  ARRAY['History Lovers','Families'],
  ARRAY['Jaipur','Amber Fort'],
  'Amber Fort (Jaipur, Rajasthan)', '/images/tourist-places/family/Amber Fort.jpg', 'Amber Fort family tour destination in Jaipur, Rajasthan', 'Family Tour',
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
  'family-athirappilly-waterfalls', 'Athirappilly Waterfalls Experience', 'Athirappilly Waterfalls', 'A thoughtfully planned family tour offering comfort, guidance, and a memorable experience.',
  'Thrissur, Kerala', 'South India', 'Family', NULL,
  4, 3, '4 Days / 3 Nights',
  21500, 'September–January', 'Active',
  ARRAY['Family Tour','Family Friendly'],
  ARRAY['Nature Lovers','Adventure Travellers'],
  ARRAY['Thrissur','Athirappilly Waterfalls'],
  'Athirappilly Waterfalls (Thrissur, Kerala)', '/images/tourist-places/family/Athirappilly Waterfalls.jpg', 'Athirappilly Waterfalls family tour destination in Thrissur, Kerala', 'Family Tour',
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
  'family-big-ben', 'Big Ben Experience', 'Big Ben', 'A thoughtfully planned family tour offering comfort, guidance, and a memorable experience.',
  'London, United Kingdom', 'International', 'Family', NULL,
  4, 3, '4 Days / 3 Nights',
  23000, 'Year-Round', 'Easy',
  ARRAY['Family Tour','Family Friendly'],
  ARRAY['Families','Couples'],
  ARRAY['London','Big Ben'],
  'Big Ben (London, United Kingdom)', '/images/tourist-places/family/Big Ben.jpg', 'Big Ben family tour destination in London, United Kingdom', 'Family Tour',
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
  'family-burj-khalifa', 'Burj Khalifa Experience', 'Burj Khalifa', 'A thoughtfully planned family tour offering comfort, guidance, and a memorable experience.',
  'Dubai, United Arab Emirates', 'International', 'Family', NULL,
  4, 3, '4 Days / 3 Nights',
  24500, 'Year-Round', 'Easy',
  ARRAY['Family Tour','Family Friendly'],
  ARRAY['Families','Couples'],
  ARRAY['Dubai','Burj Khalifa'],
  'Burj Khalifa (Dubai, United Arab Emirates)', '/images/tourist-places/family/Burj Khalifa.jpg', 'Burj Khalifa family tour destination in Dubai, United Arab Emirates', 'Family Tour',
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
  'family-chitrakote-waterfalls', 'Chitrakote Waterfalls Experience', 'Chitrakote Waterfalls', 'A thoughtfully planned family tour offering comfort, guidance, and a memorable experience.',
  'Bastar, Chhattisgarh', 'North India', 'Family', NULL,
  4, 3, '4 Days / 3 Nights',
  26000, 'July–September', 'Active',
  ARRAY['Family Tour','Family Friendly'],
  ARRAY['Nature Lovers','Adventure Travellers'],
  ARRAY['Bastar','Chitrakote Waterfalls'],
  'Chitrakote Waterfalls (Bastar, Chhattisgarh)', '/images/tourist-places/family/Chitrakote Waterfalls.jpg', 'Chitrakote Waterfalls family tour destination in Bastar, Chhattisgarh', 'Family Tour',
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
  'family-city-palace-udaipur', 'City Palace, Udaipur Experience', 'City Palace, Udaipur', 'A thoughtfully planned family tour offering comfort, guidance, and a memorable experience.',
  'Udaipur, Rajasthan', 'North India', 'Family', NULL,
  4, 3, '4 Days / 3 Nights',
  27500, 'October–March', 'Moderate',
  ARRAY['Family Tour','Family Friendly'],
  ARRAY['History Lovers','Families'],
  ARRAY['Udaipur','City Palace, Udaipur'],
  'City Palace, Udaipur (Udaipur, Rajasthan)', '/images/tourist-places/family/City Palace, Udaipur.jpg', 'City Palace, Udaipur family tour destination in Udaipur, Rajasthan', 'Family Tour',
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
  'family-colosseum', 'Colosseum Experience', 'Colosseum', 'A thoughtfully planned family tour offering comfort, guidance, and a memorable experience.',
  'Rome, Italy', 'International', 'Family', NULL,
  4, 3, '4 Days / 3 Nights',
  29000, 'October–March', 'Easy',
  ARRAY['Family Tour','Family Friendly'],
  ARRAY['Families','Couples'],
  ARRAY['Rome','Colosseum'],
  'Colosseum (Rome, Italy)', '/images/tourist-places/family/Colosseum.jpg', 'Colosseum family tour destination in Rome, Italy', 'Family Tour',
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
  'family-dawki-river-umngot-river', 'Dawki River Experience', 'Dawki River', 'A thoughtfully planned family tour offering comfort, guidance, and a memorable experience.',
  'West Jaintia Hills, Meghalaya', 'North India', 'Family', NULL,
  4, 3, '4 Days / 3 Nights',
  18500, 'October–March', 'Easy',
  ARRAY['Family Tour','Family Friendly'],
  ARRAY['Families','Couples'],
  ARRAY['West Jaintia Hills','Dawki River'],
  'Dawki River (West Jaintia Hills, Meghalaya)', '/images/tourist-places/family/Dawki River (Umngot River).webp', 'Dawki River family tour destination in West Jaintia Hills, Meghalaya', 'Family Tour',
  'Family Friendly', true, true, true,
  false, 'Accessibility on Request', 4.8,
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
  'family-disneyland-paris', 'Disneyland Paris Experience', 'Disneyland Paris', 'A thoughtfully planned family tour offering comfort, guidance, and a memorable experience.',
  'Marne-la-Vallée, France', 'International', 'Family', NULL,
  4, 3, '4 Days / 3 Nights',
  20000, 'October–March', 'Easy',
  ARRAY['Family Tour','Family Friendly'],
  ARRAY['Families','Couples'],
  ARRAY['Marne-la-Vallée','Disneyland Paris'],
  'Disneyland Paris (Marne-la-Vallée, France)', '/images/tourist-places/family/Disneyland Paris.webp', 'Disneyland Paris family tour destination in Marne-la-Vallée, France', 'Family Tour',
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
  'family-dubai-miracle-garden', 'Dubai Miracle Garden Experience', 'Dubai Miracle Garden', 'A thoughtfully planned family tour offering comfort, guidance, and a memorable experience.',
  'Dubai, United Arab Emirates', 'International', 'Family', NULL,
  4, 3, '4 Days / 3 Nights',
  21500, 'Year-Round', 'Easy',
  ARRAY['Family Tour','Family Friendly'],
  ARRAY['Families','Couples'],
  ARRAY['Dubai','Dubai Miracle Garden'],
  'Dubai Miracle Garden (Dubai, United Arab Emirates)', '/images/tourist-places/family/Dubai Miracle Garden.jpg', 'Dubai Miracle Garden family tour destination in Dubai, United Arab Emirates', 'Family Tour',
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
  'family-dudhsagar-falls', 'Dudhsagar Falls Experience', 'Dudhsagar Falls', 'A thoughtfully planned family tour offering comfort, guidance, and a memorable experience.',
  'Goa / Karnataka', 'South India', 'Family', NULL,
  4, 3, '4 Days / 3 Nights',
  23000, 'November–February', 'Relaxed',
  ARRAY['Family Tour','Family Friendly'],
  ARRAY['Couples','Seniors'],
  ARRAY['Goa / Karnataka','Dudhsagar Falls'],
  'Dudhsagar Falls (Goa / Karnataka)', '/images/tourist-places/family/Dudhsagar Falls.jpg', 'Dudhsagar Falls family tour destination in Goa / Karnataka', 'Family Tour',
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
  'family-eiffel-tower', 'Eiffel Tower Experience', 'Eiffel Tower', 'A thoughtfully planned family tour offering comfort, guidance, and a memorable experience.',
  'Paris, France', 'International', 'Family', NULL,
  4, 3, '4 Days / 3 Nights',
  24500, 'Year-Round', 'Easy',
  ARRAY['Family Tour','Family Friendly'],
  ARRAY['Families','Couples'],
  ARRAY['Paris','Eiffel Tower'],
  'Eiffel Tower (Paris, France)', '/images/tourist-places/family/Eiffel Tower.jpg', 'Eiffel Tower family tour destination in Paris, France', 'Family Tour',
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
  'family-gardens-by-the-bay', 'Gardens by the Bay Experience', 'Gardens by the Bay', 'A thoughtfully planned family tour offering comfort, guidance, and a memorable experience.',
  'Singapore', 'International', 'Family', NULL,
  4, 3, '4 Days / 3 Nights',
  26000, 'Year-Round', 'Easy',
  ARRAY['Family Tour','Family Friendly'],
  ARRAY['Families','Couples'],
  ARRAY['Singapore','Gardens by the Bay'],
  'Gardens by the Bay (Singapore)', '/images/tourist-places/family/Gardens by the Bay.jpg', 'Gardens by the Bay family tour destination in Singapore', 'Family Tour',
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
  'family-glacier-3000', 'Glacier 3000 Experience', 'Glacier 3000', 'A thoughtfully planned family tour offering comfort, guidance, and a memorable experience.',
  'Les Diablerets, Switzerland', 'International', 'Family', NULL,
  4, 3, '4 Days / 3 Nights',
  27500, 'October–March', 'Easy',
  ARRAY['Family Tour','Family Friendly'],
  ARRAY['Families','Couples'],
  ARRAY['Les Diablerets','Glacier 3000'],
  'Glacier 3000 (Les Diablerets, Switzerland)', '/images/tourist-places/family/Glacier 3000.jpg', 'Glacier 3000 family tour destination in Les Diablerets, Switzerland', 'Family Tour',
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
  'family-gol-gumbaz', 'Gol Gumbaz Experience', 'Gol Gumbaz', 'A thoughtfully planned family tour offering comfort, guidance, and a memorable experience.',
  'Vijayapura, Karnataka', 'South India', 'Family', NULL,
  4, 3, '4 Days / 3 Nights',
  29000, 'November–February', 'Easy',
  ARRAY['Family Tour','Family Friendly'],
  ARRAY['Families','Couples'],
  ARRAY['Vijayapura','Gol Gumbaz'],
  'Gol Gumbaz (Vijayapura, Karnataka)', '/images/tourist-places/family/Gol Gumbaz.jpg', 'Gol Gumbaz family tour destination in Vijayapura, Karnataka', 'Family Tour',
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
  'family-hampi-monuments', 'Hampi Monuments Experience', 'Hampi Monuments', 'A thoughtfully planned family tour offering comfort, guidance, and a memorable experience.',
  'Vijayanagara, Karnataka', 'South India', 'Family', NULL,
  4, 3, '4 Days / 3 Nights',
  18500, 'November–February', 'Moderate',
  ARRAY['Family Tour','Family Friendly'],
  ARRAY['History Lovers','Families'],
  ARRAY['Vijayanagara','Hampi Monuments'],
  'Hampi Monuments (Vijayanagara, Karnataka)', '/images/tourist-places/family/Hampi Monuments.jpg', 'Hampi Monuments family tour destination in Vijayanagara, Karnataka', 'Family Tour',
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
  'family-hawa-mahal', 'Hawa Mahal Experience', 'Hawa Mahal', 'A thoughtfully planned family tour offering comfort, guidance, and a memorable experience.',
  'Jaipur, Rajasthan', 'North India', 'Family', NULL,
  4, 3, '4 Days / 3 Nights',
  20000, 'October–March', 'Easy',
  ARRAY['Family Tour','Family Friendly'],
  ARRAY['Families','Couples'],
  ARRAY['Jaipur','Hawa Mahal'],
  'Hawa Mahal (Jaipur, Rajasthan)', '/images/tourist-places/family/Hawa Mahal.jpg', 'Hawa Mahal family tour destination in Jaipur, Rajasthan', 'Family Tour',
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
  'family-leaning-tower-of-pisa', 'Leaning Tower of Pisa Experience', 'Leaning Tower of Pisa', 'A thoughtfully planned family tour offering comfort, guidance, and a memorable experience.',
  'Pisa, Italy', 'International', 'Family', NULL,
  4, 3, '4 Days / 3 Nights',
  21500, 'October–March', 'Easy',
  ARRAY['Family Tour','Family Friendly'],
  ARRAY['Families','Couples'],
  ARRAY['Pisa','Leaning Tower of Pisa'],
  'Leaning Tower of Pisa (Pisa, Italy)', '/images/tourist-places/family/Leaning Tower of Pisa.webp', 'Leaning Tower of Pisa family tour destination in Pisa, Italy', 'Family Tour',
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
  'family-living-root-bridges', 'Living Root Bridges Experience', 'Living Root Bridges', 'A thoughtfully planned family tour offering comfort, guidance, and a memorable experience.',
  'Cherrapunji, Meghalaya', 'North India', 'Family', NULL,
  4, 3, '4 Days / 3 Nights',
  23000, 'October–March', 'Easy',
  ARRAY['Family Tour','Family Friendly'],
  ARRAY['Families','Couples'],
  ARRAY['Cherrapunji','Living Root Bridges'],
  'Living Root Bridges (Cherrapunji, Meghalaya)', '/images/tourist-places/family/Living Root Bridges.jpg', 'Living Root Bridges family tour destination in Cherrapunji, Meghalaya', 'Family Tour',
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
  'family-london-eye', 'London Eye Experience', 'London Eye', 'A thoughtfully planned family tour offering comfort, guidance, and a memorable experience.',
  'London, United Kingdom', 'International', 'Family', NULL,
  4, 3, '4 Days / 3 Nights',
  24500, 'Year-Round', 'Easy',
  ARRAY['Family Tour','Family Friendly'],
  ARRAY['Families','Couples'],
  ARRAY['London','London Eye'],
  'London Eye (London, United Kingdom)', '/images/tourist-places/family/London Eye.jpg', 'London Eye family tour destination in London, United Kingdom', 'Family Tour',
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
  'family-marina-bay-sands-skypark', 'Marina Bay Sands SkyPark Experience', 'Marina Bay Sands SkyPark', 'A thoughtfully planned family tour offering comfort, guidance, and a memorable experience.',
  'Singapore', 'International', 'Family', NULL,
  4, 3, '4 Days / 3 Nights',
  26000, 'Year-Round', 'Easy',
  ARRAY['Family Tour','Family Friendly'],
  ARRAY['Families','Couples'],
  ARRAY['Singapore','Marina Bay Sands SkyPark'],
  'Marina Bay Sands SkyPark (Singapore)', '/images/tourist-places/family/Marina Bay Sands SkyPark.jpg', 'Marina Bay Sands SkyPark family tour destination in Singapore', 'Family Tour',
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
WHERE p.slug = 'family-alleppey-backwaters' AND c.slug = 'family'
ON CONFLICT (package_id, category_id) DO NOTHING;
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
INSERT INTO public.package_categories (package_id, category_id, display_order)
SELECT p.id, c.id, 0
FROM public.packages p, public.categories c
WHERE p.slug = 'family-big-ben' AND c.slug = 'family'
ON CONFLICT (package_id, category_id) DO NOTHING;
INSERT INTO public.package_categories (package_id, category_id, display_order)
SELECT p.id, c.id, 0
FROM public.packages p, public.categories c
WHERE p.slug = 'family-burj-khalifa' AND c.slug = 'family'
ON CONFLICT (package_id, category_id) DO NOTHING;
INSERT INTO public.package_categories (package_id, category_id, display_order)
SELECT p.id, c.id, 0
FROM public.packages p, public.categories c
WHERE p.slug = 'family-chitrakote-waterfalls' AND c.slug = 'family'
ON CONFLICT (package_id, category_id) DO NOTHING;
INSERT INTO public.package_categories (package_id, category_id, display_order)
SELECT p.id, c.id, 0
FROM public.packages p, public.categories c
WHERE p.slug = 'family-city-palace-udaipur' AND c.slug = 'family'
ON CONFLICT (package_id, category_id) DO NOTHING;
INSERT INTO public.package_categories (package_id, category_id, display_order)
SELECT p.id, c.id, 0
FROM public.packages p, public.categories c
WHERE p.slug = 'family-colosseum' AND c.slug = 'family'
ON CONFLICT (package_id, category_id) DO NOTHING;
INSERT INTO public.package_categories (package_id, category_id, display_order)
SELECT p.id, c.id, 0
FROM public.packages p, public.categories c
WHERE p.slug = 'family-dawki-river-umngot-river' AND c.slug = 'family'
ON CONFLICT (package_id, category_id) DO NOTHING;
INSERT INTO public.package_categories (package_id, category_id, display_order)
SELECT p.id, c.id, 0
FROM public.packages p, public.categories c
WHERE p.slug = 'family-disneyland-paris' AND c.slug = 'family'
ON CONFLICT (package_id, category_id) DO NOTHING;
INSERT INTO public.package_categories (package_id, category_id, display_order)
SELECT p.id, c.id, 0
FROM public.packages p, public.categories c
WHERE p.slug = 'family-dubai-miracle-garden' AND c.slug = 'family'
ON CONFLICT (package_id, category_id) DO NOTHING;
INSERT INTO public.package_categories (package_id, category_id, display_order)
SELECT p.id, c.id, 0
FROM public.packages p, public.categories c
WHERE p.slug = 'family-dudhsagar-falls' AND c.slug = 'family'
ON CONFLICT (package_id, category_id) DO NOTHING;
INSERT INTO public.package_categories (package_id, category_id, display_order)
SELECT p.id, c.id, 0
FROM public.packages p, public.categories c
WHERE p.slug = 'family-eiffel-tower' AND c.slug = 'family'
ON CONFLICT (package_id, category_id) DO NOTHING;
INSERT INTO public.package_categories (package_id, category_id, display_order)
SELECT p.id, c.id, 0
FROM public.packages p, public.categories c
WHERE p.slug = 'family-gardens-by-the-bay' AND c.slug = 'family'
ON CONFLICT (package_id, category_id) DO NOTHING;
INSERT INTO public.package_categories (package_id, category_id, display_order)
SELECT p.id, c.id, 0
FROM public.packages p, public.categories c
WHERE p.slug = 'family-glacier-3000' AND c.slug = 'family'
ON CONFLICT (package_id, category_id) DO NOTHING;
INSERT INTO public.package_categories (package_id, category_id, display_order)
SELECT p.id, c.id, 0
FROM public.packages p, public.categories c
WHERE p.slug = 'family-gol-gumbaz' AND c.slug = 'family'
ON CONFLICT (package_id, category_id) DO NOTHING;
INSERT INTO public.package_categories (package_id, category_id, display_order)
SELECT p.id, c.id, 0
FROM public.packages p, public.categories c
WHERE p.slug = 'family-hampi-monuments' AND c.slug = 'family'
ON CONFLICT (package_id, category_id) DO NOTHING;
INSERT INTO public.package_categories (package_id, category_id, display_order)
SELECT p.id, c.id, 0
FROM public.packages p, public.categories c
WHERE p.slug = 'family-hawa-mahal' AND c.slug = 'family'
ON CONFLICT (package_id, category_id) DO NOTHING;
INSERT INTO public.package_categories (package_id, category_id, display_order)
SELECT p.id, c.id, 0
FROM public.packages p, public.categories c
WHERE p.slug = 'family-leaning-tower-of-pisa' AND c.slug = 'family'
ON CONFLICT (package_id, category_id) DO NOTHING;
INSERT INTO public.package_categories (package_id, category_id, display_order)
SELECT p.id, c.id, 0
FROM public.packages p, public.categories c
WHERE p.slug = 'family-living-root-bridges' AND c.slug = 'family'
ON CONFLICT (package_id, category_id) DO NOTHING;
INSERT INTO public.package_categories (package_id, category_id, display_order)
SELECT p.id, c.id, 0
FROM public.packages p, public.categories c
WHERE p.slug = 'family-london-eye' AND c.slug = 'family'
ON CONFLICT (package_id, category_id) DO NOTHING;
INSERT INTO public.package_categories (package_id, category_id, display_order)
SELECT p.id, c.id, 0
FROM public.packages p, public.categories c
WHERE p.slug = 'family-marina-bay-sands-skypark' AND c.slug = 'family'
ON CONFLICT (package_id, category_id) DO NOTHING;
INSERT INTO public.package_categories (package_id, category_id, display_order)
SELECT p.id, c.id, 0
FROM public.packages p, public.categories c
WHERE p.slug = 'family-mehrangarh-fort' AND c.slug = 'family'
ON CONFLICT (package_id, category_id) DO NOTHING;
INSERT INTO public.package_categories (package_id, category_id, display_order)
SELECT p.id, c.id, 0
FROM public.packages p, public.categories c
WHERE p.slug = 'family-mount-fuji' AND c.slug = 'family'
ON CONFLICT (package_id, category_id) DO NOTHING;
INSERT INTO public.package_categories (package_id, category_id, display_order)
SELECT p.id, c.id, 0
FROM public.packages p, public.categories c
WHERE p.slug = 'family-mount-titlis' AND c.slug = 'family'
ON CONFLICT (package_id, category_id) DO NOTHING;
INSERT INTO public.package_categories (package_id, category_id, display_order)
SELECT p.id, c.id, 0
FROM public.packages p, public.categories c
WHERE p.slug = 'family-munnar-tea-gardens' AND c.slug = 'family'
ON CONFLICT (package_id, category_id) DO NOTHING;
INSERT INTO public.package_categories (package_id, category_id, display_order)
SELECT p.id, c.id, 0
FROM public.packages p, public.categories c
WHERE p.slug = 'family-museum-of-the-future' AND c.slug = 'family'
ON CONFLICT (package_id, category_id) DO NOTHING;
INSERT INTO public.package_categories (package_id, category_id, display_order)
SELECT p.id, c.id, 0
FROM public.packages p, public.categories c
WHERE p.slug = 'family-mysore-palace' AND c.slug = 'family'
ON CONFLICT (package_id, category_id) DO NOTHING;
INSERT INTO public.package_categories (package_id, category_id, display_order)
SELECT p.id, c.id, 0
FROM public.packages p, public.categories c
WHERE p.slug = 'family-niagara-falls' AND c.slug = 'family'
ON CONFLICT (package_id, category_id) DO NOTHING;
INSERT INTO public.package_categories (package_id, category_id, display_order)
SELECT p.id, c.id, 0
FROM public.packages p, public.categories c
WHERE p.slug = 'family-nubra-valley' AND c.slug = 'family'
ON CONFLICT (package_id, category_id) DO NOTHING;
INSERT INTO public.package_categories (package_id, category_id, display_order)
SELECT p.id, c.id, 0
FROM public.packages p, public.categories c
WHERE p.slug = 'family-palm-jumeirah' AND c.slug = 'family'
ON CONFLICT (package_id, category_id) DO NOTHING;
INSERT INTO public.package_categories (package_id, category_id, display_order)
SELECT p.id, c.id, 0
FROM public.packages p, public.categories c
WHERE p.slug = 'family-pangong-lake' AND c.slug = 'family'
ON CONFLICT (package_id, category_id) DO NOTHING;
INSERT INTO public.package_categories (package_id, category_id, display_order)
SELECT p.id, c.id, 0
FROM public.packages p, public.categories c
WHERE p.slug = 'family-radhanagar-beach' AND c.slug = 'family'
ON CONFLICT (package_id, category_id) DO NOTHING;
INSERT INTO public.package_categories (package_id, category_id, display_order)
SELECT p.id, c.id, 0
FROM public.packages p, public.categories c
WHERE p.slug = 'family-rohtang-pass' AND c.slug = 'family'
ON CONFLICT (package_id, category_id) DO NOTHING;
INSERT INTO public.package_categories (package_id, category_id, display_order)
SELECT p.id, c.id, 0
FROM public.packages p, public.categories c
WHERE p.slug = 'family-sentosa-island' AND c.slug = 'family'
ON CONFLICT (package_id, category_id) DO NOTHING;
INSERT INTO public.package_categories (package_id, category_id, display_order)
SELECT p.id, c.id, 0
FROM public.packages p, public.categories c
WHERE p.slug = 'family-swiss-alps-jungfraujoch' AND c.slug = 'family'
ON CONFLICT (package_id, category_id) DO NOTHING;
INSERT INTO public.package_categories (package_id, category_id, display_order)
SELECT p.id, c.id, 0
FROM public.packages p, public.categories c
WHERE p.slug = 'family-taj-mahal' AND c.slug = 'family'
ON CONFLICT (package_id, category_id) DO NOTHING;
INSERT INTO public.package_categories (package_id, category_id, display_order)
SELECT p.id, c.id, 0
FROM public.packages p, public.categories c
WHERE p.slug = 'family-tokyo-disneyland' AND c.slug = 'family'
ON CONFLICT (package_id, category_id) DO NOTHING;
INSERT INTO public.package_categories (package_id, category_id, display_order)
SELECT p.id, c.id, 0
FROM public.packages p, public.categories c
WHERE p.slug = 'family-universal-studios-japan' AND c.slug = 'family'
ON CONFLICT (package_id, category_id) DO NOTHING;
INSERT INTO public.package_categories (package_id, category_id, display_order)
SELECT p.id, c.id, 0
FROM public.packages p, public.categories c
WHERE p.slug = 'family-venice-grand-canal' AND c.slug = 'family'
ON CONFLICT (package_id, category_id) DO NOTHING;
INSERT INTO public.package_categories (package_id, category_id, display_order)
SELECT p.id, c.id, 0
FROM public.packages p, public.categories c
WHERE p.slug = 'buddhism-adam-s-peak-sri-pada-sri-lanka' AND c.slug = 'pilgrimage'
ON CONFLICT (package_id, category_id) DO NOTHING;
INSERT INTO public.package_categories (package_id, category_id, display_order)
SELECT p.id, c.id, 1
FROM public.packages p, public.categories c
WHERE p.slug = 'buddhism-adam-s-peak-sri-pada-sri-lanka' AND c.slug = 'buddhism'
ON CONFLICT (package_id, category_id) DO NOTHING;
INSERT INTO public.package_categories (package_id, category_id, display_order)
SELECT p.id, c.id, 0
FROM public.packages p, public.categories c
WHERE p.slug = 'buddhism-bodh-gaya-india' AND c.slug = 'pilgrimage'
ON CONFLICT (package_id, category_id) DO NOTHING;
INSERT INTO public.package_categories (package_id, category_id, display_order)
SELECT p.id, c.id, 1
FROM public.packages p, public.categories c
WHERE p.slug = 'buddhism-bodh-gaya-india' AND c.slug = 'buddhism'
ON CONFLICT (package_id, category_id) DO NOTHING;
INSERT INTO public.package_categories (package_id, category_id, display_order)
SELECT p.id, c.id, 0
FROM public.packages p, public.categories c
WHERE p.slug = 'buddhism-borobudur-temple-indonesia' AND c.slug = 'pilgrimage'
ON CONFLICT (package_id, category_id) DO NOTHING;
INSERT INTO public.package_categories (package_id, category_id, display_order)
SELECT p.id, c.id, 1
FROM public.packages p, public.categories c
WHERE p.slug = 'buddhism-borobudur-temple-indonesia' AND c.slug = 'buddhism'
ON CONFLICT (package_id, category_id) DO NOTHING;
INSERT INTO public.package_categories (package_id, category_id, display_order)
SELECT p.id, c.id, 0
FROM public.packages p, public.categories c
WHERE p.slug = 'buddhism-dambulla-cave-temple-sri-lanka' AND c.slug = 'pilgrimage'
ON CONFLICT (package_id, category_id) DO NOTHING;
INSERT INTO public.package_categories (package_id, category_id, display_order)
SELECT p.id, c.id, 1
FROM public.packages p, public.categories c
WHERE p.slug = 'buddhism-dambulla-cave-temple-sri-lanka' AND c.slug = 'buddhism'
ON CONFLICT (package_id, category_id) DO NOTHING;
INSERT INTO public.package_categories (package_id, category_id, display_order)
SELECT p.id, c.id, 0
FROM public.packages p, public.categories c
WHERE p.slug = 'buddhism-jokhang-temple-lhasa-tibet' AND c.slug = 'pilgrimage'
ON CONFLICT (package_id, category_id) DO NOTHING;
INSERT INTO public.package_categories (package_id, category_id, display_order)
SELECT p.id, c.id, 1
FROM public.packages p, public.categories c
WHERE p.slug = 'buddhism-jokhang-temple-lhasa-tibet' AND c.slug = 'buddhism'
ON CONFLICT (package_id, category_id) DO NOTHING;
INSERT INTO public.package_categories (package_id, category_id, display_order)
SELECT p.id, c.id, 0
FROM public.packages p, public.categories c
WHERE p.slug = 'buddhism-kumano-kodo-japan' AND c.slug = 'pilgrimage'
ON CONFLICT (package_id, category_id) DO NOTHING;
INSERT INTO public.package_categories (package_id, category_id, display_order)
SELECT p.id, c.id, 1
FROM public.packages p, public.categories c
WHERE p.slug = 'buddhism-kumano-kodo-japan' AND c.slug = 'buddhism'
ON CONFLICT (package_id, category_id) DO NOTHING;
INSERT INTO public.package_categories (package_id, category_id, display_order)
SELECT p.id, c.id, 0
FROM public.packages p, public.categories c
WHERE p.slug = 'buddhism-kushinagar-india' AND c.slug = 'pilgrimage'
ON CONFLICT (package_id, category_id) DO NOTHING;
INSERT INTO public.package_categories (package_id, category_id, display_order)
SELECT p.id, c.id, 1
FROM public.packages p, public.categories c
WHERE p.slug = 'buddhism-kushinagar-india' AND c.slug = 'buddhism'
ON CONFLICT (package_id, category_id) DO NOTHING;
INSERT INTO public.package_categories (package_id, category_id, display_order)
SELECT p.id, c.id, 0
FROM public.packages p, public.categories c
WHERE p.slug = 'buddhism-lumbini-nepal' AND c.slug = 'pilgrimage'
ON CONFLICT (package_id, category_id) DO NOTHING;
INSERT INTO public.package_categories (package_id, category_id, display_order)
SELECT p.id, c.id, 1
FROM public.packages p, public.categories c
WHERE p.slug = 'buddhism-lumbini-nepal' AND c.slug = 'buddhism'
ON CONFLICT (package_id, category_id) DO NOTHING;
INSERT INTO public.package_categories (package_id, category_id, display_order)
SELECT p.id, c.id, 0
FROM public.packages p, public.categories c
WHERE p.slug = 'buddhism-mahabodhi-temple-bagan-myanmar' AND c.slug = 'pilgrimage'
ON CONFLICT (package_id, category_id) DO NOTHING;
INSERT INTO public.package_categories (package_id, category_id, display_order)
SELECT p.id, c.id, 1
FROM public.packages p, public.categories c
WHERE p.slug = 'buddhism-mahabodhi-temple-bagan-myanmar' AND c.slug = 'buddhism'
ON CONFLICT (package_id, category_id) DO NOTHING;
INSERT INTO public.package_categories (package_id, category_id, display_order)
SELECT p.id, c.id, 0
FROM public.packages p, public.categories c
WHERE p.slug = 'buddhism-mount-kailash-tibet' AND c.slug = 'pilgrimage'
ON CONFLICT (package_id, category_id) DO NOTHING;
INSERT INTO public.package_categories (package_id, category_id, display_order)
SELECT p.id, c.id, 1
FROM public.packages p, public.categories c
WHERE p.slug = 'buddhism-mount-kailash-tibet' AND c.slug = 'buddhism'
ON CONFLICT (package_id, category_id) DO NOTHING;
INSERT INTO public.package_categories (package_id, category_id, display_order)
SELECT p.id, c.id, 0
FROM public.packages p, public.categories c
WHERE p.slug = 'buddhism-nalanda-india' AND c.slug = 'pilgrimage'
ON CONFLICT (package_id, category_id) DO NOTHING;
INSERT INTO public.package_categories (package_id, category_id, display_order)
SELECT p.id, c.id, 1
FROM public.packages p, public.categories c
WHERE p.slug = 'buddhism-nalanda-india' AND c.slug = 'buddhism'
ON CONFLICT (package_id, category_id) DO NOTHING;
INSERT INTO public.package_categories (package_id, category_id, display_order)
SELECT p.id, c.id, 0
FROM public.packages p, public.categories c
WHERE p.slug = 'buddhism-rajgir-india' AND c.slug = 'pilgrimage'
ON CONFLICT (package_id, category_id) DO NOTHING;
INSERT INTO public.package_categories (package_id, category_id, display_order)
SELECT p.id, c.id, 1
FROM public.packages p, public.categories c
WHERE p.slug = 'buddhism-rajgir-india' AND c.slug = 'buddhism'
ON CONFLICT (package_id, category_id) DO NOTHING;
INSERT INTO public.package_categories (package_id, category_id, display_order)
SELECT p.id, c.id, 0
FROM public.packages p, public.categories c
WHERE p.slug = 'buddhism-sarnath-india' AND c.slug = 'pilgrimage'
ON CONFLICT (package_id, category_id) DO NOTHING;
INSERT INTO public.package_categories (package_id, category_id, display_order)
SELECT p.id, c.id, 1
FROM public.packages p, public.categories c
WHERE p.slug = 'buddhism-sarnath-india' AND c.slug = 'buddhism'
ON CONFLICT (package_id, category_id) DO NOTHING;
INSERT INTO public.package_categories (package_id, category_id, display_order)
SELECT p.id, c.id, 0
FROM public.packages p, public.categories c
WHERE p.slug = 'buddhism-shwedagon-pagoda-myanmar' AND c.slug = 'pilgrimage'
ON CONFLICT (package_id, category_id) DO NOTHING;
INSERT INTO public.package_categories (package_id, category_id, display_order)
SELECT p.id, c.id, 1
FROM public.packages p, public.categories c
WHERE p.slug = 'buddhism-shwedagon-pagoda-myanmar' AND c.slug = 'buddhism'
ON CONFLICT (package_id, category_id) DO NOTHING;
INSERT INTO public.package_categories (package_id, category_id, display_order)
SELECT p.id, c.id, 0
FROM public.packages p, public.categories c
WHERE p.slug = 'buddhism-tiger-s-nest-monastery-paro-taktsang-bhutan' AND c.slug = 'pilgrimage'
ON CONFLICT (package_id, category_id) DO NOTHING;
INSERT INTO public.package_categories (package_id, category_id, display_order)
SELECT p.id, c.id, 1
FROM public.packages p, public.categories c
WHERE p.slug = 'buddhism-tiger-s-nest-monastery-paro-taktsang-bhutan' AND c.slug = 'buddhism'
ON CONFLICT (package_id, category_id) DO NOTHING;
INSERT INTO public.package_categories (package_id, category_id, display_order)
SELECT p.id, c.id, 0
FROM public.packages p, public.categories c
WHERE p.slug = 'christianity-basilica-of-our-lady-of-guadalupe-mexico' AND c.slug = 'pilgrimage'
ON CONFLICT (package_id, category_id) DO NOTHING;
INSERT INTO public.package_categories (package_id, category_id, display_order)
SELECT p.id, c.id, 1
FROM public.packages p, public.categories c
WHERE p.slug = 'christianity-basilica-of-our-lady-of-guadalupe-mexico' AND c.slug = 'christianity'
ON CONFLICT (package_id, category_id) DO NOTHING;
INSERT INTO public.package_categories (package_id, category_id, display_order)
SELECT p.id, c.id, 0
FROM public.packages p, public.categories c
WHERE p.slug = 'christianity-basilica-of-saint-peter-vatican-city' AND c.slug = 'pilgrimage'
ON CONFLICT (package_id, category_id) DO NOTHING;
INSERT INTO public.package_categories (package_id, category_id, display_order)
SELECT p.id, c.id, 1
FROM public.packages p, public.categories c
WHERE p.slug = 'christianity-basilica-of-saint-peter-vatican-city' AND c.slug = 'christianity'
ON CONFLICT (package_id, category_id) DO NOTHING;
INSERT INTO public.package_categories (package_id, category_id, display_order)
SELECT p.id, c.id, 0
FROM public.packages p, public.categories c
WHERE p.slug = 'christianity-bethlehem-palestine' AND c.slug = 'pilgrimage'
ON CONFLICT (package_id, category_id) DO NOTHING;
INSERT INTO public.package_categories (package_id, category_id, display_order)
SELECT p.id, c.id, 1
FROM public.packages p, public.categories c
WHERE p.slug = 'christianity-bethlehem-palestine' AND c.slug = 'christianity'
ON CONFLICT (package_id, category_id) DO NOTHING;
INSERT INTO public.package_categories (package_id, category_id, display_order)
SELECT p.id, c.id, 0
FROM public.packages p, public.categories c
WHERE p.slug = 'christianity-camino-de-santiago-spain' AND c.slug = 'pilgrimage'
ON CONFLICT (package_id, category_id) DO NOTHING;
INSERT INTO public.package_categories (package_id, category_id, display_order)
SELECT p.id, c.id, 1
FROM public.packages p, public.categories c
WHERE p.slug = 'christianity-camino-de-santiago-spain' AND c.slug = 'christianity'
ON CONFLICT (package_id, category_id) DO NOTHING;
INSERT INTO public.package_categories (package_id, category_id, display_order)
SELECT p.id, c.id, 0
FROM public.packages p, public.categories c
WHERE p.slug = 'christianity-canterbury-cathedral-england' AND c.slug = 'pilgrimage'
ON CONFLICT (package_id, category_id) DO NOTHING;
INSERT INTO public.package_categories (package_id, category_id, display_order)
SELECT p.id, c.id, 1
FROM public.packages p, public.categories c
WHERE p.slug = 'christianity-canterbury-cathedral-england' AND c.slug = 'christianity'
ON CONFLICT (package_id, category_id) DO NOTHING;
INSERT INTO public.package_categories (package_id, category_id, display_order)
SELECT p.id, c.id, 0
FROM public.packages p, public.categories c
WHERE p.slug = 'christianity-church-of-the-holy-sepulchre-jerusalem-israel' AND c.slug = 'pilgrimage'
ON CONFLICT (package_id, category_id) DO NOTHING;
INSERT INTO public.package_categories (package_id, category_id, display_order)
SELECT p.id, c.id, 1
FROM public.packages p, public.categories c
WHERE p.slug = 'christianity-church-of-the-holy-sepulchre-jerusalem-israel' AND c.slug = 'christianity'
ON CONFLICT (package_id, category_id) DO NOTHING;
INSERT INTO public.package_categories (package_id, category_id, display_order)
SELECT p.id, c.id, 0
FROM public.packages p, public.categories c
WHERE p.slug = 'christianity-el-santuario-de-chimayo-new-mexico-usa' AND c.slug = 'pilgrimage'
ON CONFLICT (package_id, category_id) DO NOTHING;
INSERT INTO public.package_categories (package_id, category_id, display_order)
SELECT p.id, c.id, 1
FROM public.packages p, public.categories c
WHERE p.slug = 'christianity-el-santuario-de-chimayo-new-mexico-usa' AND c.slug = 'christianity'
ON CONFLICT (package_id, category_id) DO NOTHING;
INSERT INTO public.package_categories (package_id, category_id, display_order)
SELECT p.id, c.id, 0
FROM public.packages p, public.categories c
WHERE p.slug = 'christianity-f-tima-portugal' AND c.slug = 'pilgrimage'
ON CONFLICT (package_id, category_id) DO NOTHING;
INSERT INTO public.package_categories (package_id, category_id, display_order)
SELECT p.id, c.id, 1
FROM public.packages p, public.categories c
WHERE p.slug = 'christianity-f-tima-portugal' AND c.slug = 'christianity'
ON CONFLICT (package_id, category_id) DO NOTHING;
INSERT INTO public.package_categories (package_id, category_id, display_order)
SELECT p.id, c.id, 0
FROM public.packages p, public.categories c
WHERE p.slug = 'christianity-lalibela-ethiopia' AND c.slug = 'pilgrimage'
ON CONFLICT (package_id, category_id) DO NOTHING;
INSERT INTO public.package_categories (package_id, category_id, display_order)
SELECT p.id, c.id, 1
FROM public.packages p, public.categories c
WHERE p.slug = 'christianity-lalibela-ethiopia' AND c.slug = 'christianity'
ON CONFLICT (package_id, category_id) DO NOTHING;
INSERT INTO public.package_categories (package_id, category_id, display_order)
SELECT p.id, c.id, 0
FROM public.packages p, public.categories c
WHERE p.slug = 'christianity-mount-athos-greece' AND c.slug = 'pilgrimage'
ON CONFLICT (package_id, category_id) DO NOTHING;
INSERT INTO public.package_categories (package_id, category_id, display_order)
SELECT p.id, c.id, 1
FROM public.packages p, public.categories c
WHERE p.slug = 'christianity-mount-athos-greece' AND c.slug = 'christianity'
ON CONFLICT (package_id, category_id) DO NOTHING;
INSERT INTO public.package_categories (package_id, category_id, display_order)
SELECT p.id, c.id, 0
FROM public.packages p, public.categories c
WHERE p.slug = 'christianity-old-city-jerusalem-israel' AND c.slug = 'pilgrimage'
ON CONFLICT (package_id, category_id) DO NOTHING;
INSERT INTO public.package_categories (package_id, category_id, display_order)
SELECT p.id, c.id, 1
FROM public.packages p, public.categories c
WHERE p.slug = 'christianity-old-city-jerusalem-israel' AND c.slug = 'christianity'
ON CONFLICT (package_id, category_id) DO NOTHING;
INSERT INTO public.package_categories (package_id, category_id, display_order)
SELECT p.id, c.id, 0
FROM public.packages p, public.categories c
WHERE p.slug = 'christianity-sanctuary-of-our-lady-of-lourdes-france' AND c.slug = 'pilgrimage'
ON CONFLICT (package_id, category_id) DO NOTHING;
INSERT INTO public.package_categories (package_id, category_id, display_order)
SELECT p.id, c.id, 1
FROM public.packages p, public.categories c
WHERE p.slug = 'christianity-sanctuary-of-our-lady-of-lourdes-france' AND c.slug = 'christianity'
ON CONFLICT (package_id, category_id) DO NOTHING;
INSERT INTO public.package_categories (package_id, category_id, display_order)
SELECT p.id, c.id, 0
FROM public.packages p, public.categories c
WHERE p.slug = 'christianity-santiago-atitl-n-guatemala' AND c.slug = 'pilgrimage'
ON CONFLICT (package_id, category_id) DO NOTHING;
INSERT INTO public.package_categories (package_id, category_id, display_order)
SELECT p.id, c.id, 1
FROM public.packages p, public.categories c
WHERE p.slug = 'christianity-santiago-atitl-n-guatemala' AND c.slug = 'christianity'
ON CONFLICT (package_id, category_id) DO NOTHING;
INSERT INTO public.package_categories (package_id, category_id, display_order)
SELECT p.id, c.id, 0
FROM public.packages p, public.categories c
WHERE p.slug = 'christianity-santu-rio-de-nossa-senhora-aparecida-brazil' AND c.slug = 'pilgrimage'
ON CONFLICT (package_id, category_id) DO NOTHING;
INSERT INTO public.package_categories (package_id, category_id, display_order)
SELECT p.id, c.id, 1
FROM public.packages p, public.categories c
WHERE p.slug = 'christianity-santu-rio-de-nossa-senhora-aparecida-brazil' AND c.slug = 'christianity'
ON CONFLICT (package_id, category_id) DO NOTHING;
INSERT INTO public.package_categories (package_id, category_id, display_order)
SELECT p.id, c.id, 0
FROM public.packages p, public.categories c
WHERE p.slug = 'christianity-vatican-city-italy' AND c.slug = 'pilgrimage'
ON CONFLICT (package_id, category_id) DO NOTHING;
INSERT INTO public.package_categories (package_id, category_id, display_order)
SELECT p.id, c.id, 1
FROM public.packages p, public.categories c
WHERE p.slug = 'christianity-vatican-city-italy' AND c.slug = 'christianity'
ON CONFLICT (package_id, category_id) DO NOTHING;
INSERT INTO public.package_categories (package_id, category_id, display_order)
SELECT p.id, c.id, 0
FROM public.packages p, public.categories c
WHERE p.slug = 'hinduism-adam-s-peak-sri-pada-sri-lanka' AND c.slug = 'pilgrimage'
ON CONFLICT (package_id, category_id) DO NOTHING;
INSERT INTO public.package_categories (package_id, category_id, display_order)
SELECT p.id, c.id, 1
FROM public.packages p, public.categories c
WHERE p.slug = 'hinduism-adam-s-peak-sri-pada-sri-lanka' AND c.slug = 'hinduism'
ON CONFLICT (package_id, category_id) DO NOTHING;
INSERT INTO public.package_categories (package_id, category_id, display_order)
SELECT p.id, c.id, 0
FROM public.packages p, public.categories c
WHERE p.slug = 'hinduism-badrinath-india' AND c.slug = 'pilgrimage'
ON CONFLICT (package_id, category_id) DO NOTHING;
INSERT INTO public.package_categories (package_id, category_id, display_order)
SELECT p.id, c.id, 1
FROM public.packages p, public.categories c
WHERE p.slug = 'hinduism-badrinath-india' AND c.slug = 'hinduism'
ON CONFLICT (package_id, category_id) DO NOTHING;
INSERT INTO public.package_categories (package_id, category_id, display_order)
SELECT p.id, c.id, 0
FROM public.packages p, public.categories c
WHERE p.slug = 'hinduism-dwarkadhish-temple-dwarka-india' AND c.slug = 'pilgrimage'
ON CONFLICT (package_id, category_id) DO NOTHING;
INSERT INTO public.package_categories (package_id, category_id, display_order)
SELECT p.id, c.id, 1
FROM public.packages p, public.categories c
WHERE p.slug = 'hinduism-dwarkadhish-temple-dwarka-india' AND c.slug = 'hinduism'
ON CONFLICT (package_id, category_id) DO NOTHING;
INSERT INTO public.package_categories (package_id, category_id, display_order)
SELECT p.id, c.id, 0
FROM public.packages p, public.categories c
WHERE p.slug = 'hinduism-golden-temple-harmandir-sahib-amritsar-india' AND c.slug = 'pilgrimage'
ON CONFLICT (package_id, category_id) DO NOTHING;
INSERT INTO public.package_categories (package_id, category_id, display_order)
SELECT p.id, c.id, 1
FROM public.packages p, public.categories c
WHERE p.slug = 'hinduism-golden-temple-harmandir-sahib-amritsar-india' AND c.slug = 'hinduism'
ON CONFLICT (package_id, category_id) DO NOTHING;
INSERT INTO public.package_categories (package_id, category_id, display_order)
SELECT p.id, c.id, 0
FROM public.packages p, public.categories c
WHERE p.slug = 'hinduism-haridwar-rishikesh-india' AND c.slug = 'pilgrimage'
ON CONFLICT (package_id, category_id) DO NOTHING;
INSERT INTO public.package_categories (package_id, category_id, display_order)
SELECT p.id, c.id, 1
FROM public.packages p, public.categories c
WHERE p.slug = 'hinduism-haridwar-rishikesh-india' AND c.slug = 'hinduism'
ON CONFLICT (package_id, category_id) DO NOTHING;
INSERT INTO public.package_categories (package_id, category_id, display_order)
SELECT p.id, c.id, 0
FROM public.packages p, public.categories c
WHERE p.slug = 'hinduism-jagannath-temple-puri-india' AND c.slug = 'pilgrimage'
ON CONFLICT (package_id, category_id) DO NOTHING;
INSERT INTO public.package_categories (package_id, category_id, display_order)
SELECT p.id, c.id, 1
FROM public.packages p, public.categories c
WHERE p.slug = 'hinduism-jagannath-temple-puri-india' AND c.slug = 'hinduism'
ON CONFLICT (package_id, category_id) DO NOTHING;
INSERT INTO public.package_categories (package_id, category_id, display_order)
SELECT p.id, c.id, 0
FROM public.packages p, public.categories c
WHERE p.slug = 'hinduism-kashi-vishwanath-varanasi-india' AND c.slug = 'pilgrimage'
ON CONFLICT (package_id, category_id) DO NOTHING;
INSERT INTO public.package_categories (package_id, category_id, display_order)
SELECT p.id, c.id, 1
FROM public.packages p, public.categories c
WHERE p.slug = 'hinduism-kashi-vishwanath-varanasi-india' AND c.slug = 'hinduism'
ON CONFLICT (package_id, category_id) DO NOTHING;
INSERT INTO public.package_categories (package_id, category_id, display_order)
SELECT p.id, c.id, 0
FROM public.packages p, public.categories c
WHERE p.slug = 'hinduism-kedarnath-india' AND c.slug = 'pilgrimage'
ON CONFLICT (package_id, category_id) DO NOTHING;
INSERT INTO public.package_categories (package_id, category_id, display_order)
SELECT p.id, c.id, 1
FROM public.packages p, public.categories c
WHERE p.slug = 'hinduism-kedarnath-india' AND c.slug = 'hinduism'
ON CONFLICT (package_id, category_id) DO NOTHING;
INSERT INTO public.package_categories (package_id, category_id, display_order)
SELECT p.id, c.id, 0
FROM public.packages p, public.categories c
WHERE p.slug = 'hinduism-mahakaleshwar-temple-ujjain-india' AND c.slug = 'pilgrimage'
ON CONFLICT (package_id, category_id) DO NOTHING;
INSERT INTO public.package_categories (package_id, category_id, display_order)
SELECT p.id, c.id, 1
FROM public.packages p, public.categories c
WHERE p.slug = 'hinduism-mahakaleshwar-temple-ujjain-india' AND c.slug = 'hinduism'
ON CONFLICT (package_id, category_id) DO NOTHING;
INSERT INTO public.package_categories (package_id, category_id, display_order)
SELECT p.id, c.id, 0
FROM public.packages p, public.categories c
WHERE p.slug = 'hinduism-mount-kailash-tibet' AND c.slug = 'pilgrimage'
ON CONFLICT (package_id, category_id) DO NOTHING;
INSERT INTO public.package_categories (package_id, category_id, display_order)
SELECT p.id, c.id, 1
FROM public.packages p, public.categories c
WHERE p.slug = 'hinduism-mount-kailash-tibet' AND c.slug = 'hinduism'
ON CONFLICT (package_id, category_id) DO NOTHING;
INSERT INTO public.package_categories (package_id, category_id, display_order)
SELECT p.id, c.id, 0
FROM public.packages p, public.categories c
WHERE p.slug = 'hinduism-rameswaram-india' AND c.slug = 'pilgrimage'
ON CONFLICT (package_id, category_id) DO NOTHING;
INSERT INTO public.package_categories (package_id, category_id, display_order)
SELECT p.id, c.id, 1
FROM public.packages p, public.categories c
WHERE p.slug = 'hinduism-rameswaram-india' AND c.slug = 'hinduism'
ON CONFLICT (package_id, category_id) DO NOTHING;
INSERT INTO public.package_categories (package_id, category_id, display_order)
SELECT p.id, c.id, 0
FROM public.packages p, public.categories c
WHERE p.slug = 'hinduism-somnath-temple-india' AND c.slug = 'pilgrimage'
ON CONFLICT (package_id, category_id) DO NOTHING;
INSERT INTO public.package_categories (package_id, category_id, display_order)
SELECT p.id, c.id, 1
FROM public.packages p, public.categories c
WHERE p.slug = 'hinduism-somnath-temple-india' AND c.slug = 'hinduism'
ON CONFLICT (package_id, category_id) DO NOTHING;
INSERT INTO public.package_categories (package_id, category_id, display_order)
SELECT p.id, c.id, 0
FROM public.packages p, public.categories c
WHERE p.slug = 'hinduism-tirupati-balaji-temple-india' AND c.slug = 'pilgrimage'
ON CONFLICT (package_id, category_id) DO NOTHING;
INSERT INTO public.package_categories (package_id, category_id, display_order)
SELECT p.id, c.id, 1
FROM public.packages p, public.categories c
WHERE p.slug = 'hinduism-tirupati-balaji-temple-india' AND c.slug = 'hinduism'
ON CONFLICT (package_id, category_id) DO NOTHING;
INSERT INTO public.package_categories (package_id, category_id, display_order)
SELECT p.id, c.id, 0
FROM public.packages p, public.categories c
WHERE p.slug = 'hinduism-trimbakeshwar-temple-nashik-india' AND c.slug = 'pilgrimage'
ON CONFLICT (package_id, category_id) DO NOTHING;
INSERT INTO public.package_categories (package_id, category_id, display_order)
SELECT p.id, c.id, 1
FROM public.packages p, public.categories c
WHERE p.slug = 'hinduism-trimbakeshwar-temple-nashik-india' AND c.slug = 'hinduism'
ON CONFLICT (package_id, category_id) DO NOTHING;
INSERT INTO public.package_categories (package_id, category_id, display_order)
SELECT p.id, c.id, 0
FROM public.packages p, public.categories c
WHERE p.slug = 'hinduism-vaishno-devi-india' AND c.slug = 'pilgrimage'
ON CONFLICT (package_id, category_id) DO NOTHING;
INSERT INTO public.package_categories (package_id, category_id, display_order)
SELECT p.id, c.id, 1
FROM public.packages p, public.categories c
WHERE p.slug = 'hinduism-vaishno-devi-india' AND c.slug = 'hinduism'
ON CONFLICT (package_id, category_id) DO NOTHING;
INSERT INTO public.package_categories (package_id, category_id, display_order)
SELECT p.id, c.id, 0
FROM public.packages p, public.categories c
WHERE p.slug = 'islam-ajmer-sharif-dargah-india' AND c.slug = 'pilgrimage'
ON CONFLICT (package_id, category_id) DO NOTHING;
INSERT INTO public.package_categories (package_id, category_id, display_order)
SELECT p.id, c.id, 1
FROM public.packages p, public.categories c
WHERE p.slug = 'islam-ajmer-sharif-dargah-india' AND c.slug = 'islam'
ON CONFLICT (package_id, category_id) DO NOTHING;
INSERT INTO public.package_categories (package_id, category_id, display_order)
SELECT p.id, c.id, 0
FROM public.packages p, public.categories c
WHERE p.slug = 'islam-al-aqsa-mosque-jerusalem-israel' AND c.slug = 'pilgrimage'
ON CONFLICT (package_id, category_id) DO NOTHING;
INSERT INTO public.package_categories (package_id, category_id, display_order)
SELECT p.id, c.id, 1
FROM public.packages p, public.categories c
WHERE p.slug = 'islam-al-aqsa-mosque-jerusalem-israel' AND c.slug = 'islam'
ON CONFLICT (package_id, category_id) DO NOTHING;
INSERT INTO public.package_categories (package_id, category_id, display_order)
SELECT p.id, c.id, 0
FROM public.packages p, public.categories c
WHERE p.slug = 'islam-al-azhar-mosque-cairo-egypt' AND c.slug = 'pilgrimage'
ON CONFLICT (package_id, category_id) DO NOTHING;
INSERT INTO public.package_categories (package_id, category_id, display_order)
SELECT p.id, c.id, 1
FROM public.packages p, public.categories c
WHERE p.slug = 'islam-al-azhar-mosque-cairo-egypt' AND c.slug = 'islam'
ON CONFLICT (package_id, category_id) DO NOTHING;
INSERT INTO public.package_categories (package_id, category_id, display_order)
SELECT p.id, c.id, 0
FROM public.packages p, public.categories c
WHERE p.slug = 'islam-al-masjid-al-qiblatayn-medina-saudi-arabia' AND c.slug = 'pilgrimage'
ON CONFLICT (package_id, category_id) DO NOTHING;
INSERT INTO public.package_categories (package_id, category_id, display_order)
SELECT p.id, c.id, 1
FROM public.packages p, public.categories c
WHERE p.slug = 'islam-al-masjid-al-qiblatayn-medina-saudi-arabia' AND c.slug = 'islam'
ON CONFLICT (package_id, category_id) DO NOTHING;
INSERT INTO public.package_categories (package_id, category_id, display_order)
SELECT p.id, c.id, 0
FROM public.packages p, public.categories c
WHERE p.slug = 'islam-data-darbar-lahore-pakistan' AND c.slug = 'pilgrimage'
ON CONFLICT (package_id, category_id) DO NOTHING;
INSERT INTO public.package_categories (package_id, category_id, display_order)
SELECT p.id, c.id, 1
FROM public.packages p, public.categories c
WHERE p.slug = 'islam-data-darbar-lahore-pakistan' AND c.slug = 'islam'
ON CONFLICT (package_id, category_id) DO NOTHING;
INSERT INTO public.package_categories (package_id, category_id, display_order)
SELECT p.id, c.id, 0
FROM public.packages p, public.categories c
WHERE p.slug = 'islam-dome-of-the-rock-jerusalem-israel' AND c.slug = 'pilgrimage'
ON CONFLICT (package_id, category_id) DO NOTHING;
INSERT INTO public.package_categories (package_id, category_id, display_order)
SELECT p.id, c.id, 1
FROM public.packages p, public.categories c
WHERE p.slug = 'islam-dome-of-the-rock-jerusalem-israel' AND c.slug = 'islam'
ON CONFLICT (package_id, category_id) DO NOTHING;
INSERT INTO public.package_categories (package_id, category_id, display_order)
SELECT p.id, c.id, 0
FROM public.packages p, public.categories c
WHERE p.slug = 'islam-imam-ali-shrine-najaf-iraq' AND c.slug = 'pilgrimage'
ON CONFLICT (package_id, category_id) DO NOTHING;
INSERT INTO public.package_categories (package_id, category_id, display_order)
SELECT p.id, c.id, 1
FROM public.packages p, public.categories c
WHERE p.slug = 'islam-imam-ali-shrine-najaf-iraq' AND c.slug = 'islam'
ON CONFLICT (package_id, category_id) DO NOTHING;
INSERT INTO public.package_categories (package_id, category_id, display_order)
SELECT p.id, c.id, 0
FROM public.packages p, public.categories c
WHERE p.slug = 'islam-imam-husayn-shrine-karbala-iraq' AND c.slug = 'pilgrimage'
ON CONFLICT (package_id, category_id) DO NOTHING;
INSERT INTO public.package_categories (package_id, category_id, display_order)
SELECT p.id, c.id, 1
FROM public.packages p, public.categories c
WHERE p.slug = 'islam-imam-husayn-shrine-karbala-iraq' AND c.slug = 'islam'
ON CONFLICT (package_id, category_id) DO NOTHING;
INSERT INTO public.package_categories (package_id, category_id, display_order)
SELECT p.id, c.id, 0
FROM public.packages p, public.categories c
WHERE p.slug = 'islam-imam-reza-shrine-mashhad-iran' AND c.slug = 'pilgrimage'
ON CONFLICT (package_id, category_id) DO NOTHING;
INSERT INTO public.package_categories (package_id, category_id, display_order)
SELECT p.id, c.id, 1
FROM public.packages p, public.categories c
WHERE p.slug = 'islam-imam-reza-shrine-mashhad-iran' AND c.slug = 'islam'
ON CONFLICT (package_id, category_id) DO NOTHING;
INSERT INTO public.package_categories (package_id, category_id, display_order)
SELECT p.id, c.id, 0
FROM public.packages p, public.categories c
WHERE p.slug = 'islam-mecca-saudi-arabia' AND c.slug = 'pilgrimage'
ON CONFLICT (package_id, category_id) DO NOTHING;
INSERT INTO public.package_categories (package_id, category_id, display_order)
SELECT p.id, c.id, 1
FROM public.packages p, public.categories c
WHERE p.slug = 'islam-mecca-saudi-arabia' AND c.slug = 'islam'
ON CONFLICT (package_id, category_id) DO NOTHING;
INSERT INTO public.package_categories (package_id, category_id, display_order)
SELECT p.id, c.id, 0
FROM public.packages p, public.categories c
WHERE p.slug = 'islam-medina-saudi-arabia' AND c.slug = 'pilgrimage'
ON CONFLICT (package_id, category_id) DO NOTHING;
INSERT INTO public.package_categories (package_id, category_id, display_order)
SELECT p.id, c.id, 1
FROM public.packages p, public.categories c
WHERE p.slug = 'islam-medina-saudi-arabia' AND c.slug = 'islam'
ON CONFLICT (package_id, category_id) DO NOTHING;
INSERT INTO public.package_categories (package_id, category_id, display_order)
SELECT p.id, c.id, 0
FROM public.packages p, public.categories c
WHERE p.slug = 'islam-old-city-jerusalem-israel' AND c.slug = 'pilgrimage'
ON CONFLICT (package_id, category_id) DO NOTHING;
INSERT INTO public.package_categories (package_id, category_id, display_order)
SELECT p.id, c.id, 1
FROM public.packages p, public.categories c
WHERE p.slug = 'islam-old-city-jerusalem-israel' AND c.slug = 'islam'
ON CONFLICT (package_id, category_id) DO NOTHING;
INSERT INTO public.package_categories (package_id, category_id, display_order)
SELECT p.id, c.id, 0
FROM public.packages p, public.categories c
WHERE p.slug = 'islam-quba-mosque-medina-saudi-arabia' AND c.slug = 'pilgrimage'
ON CONFLICT (package_id, category_id) DO NOTHING;
INSERT INTO public.package_categories (package_id, category_id, display_order)
SELECT p.id, c.id, 1
FROM public.packages p, public.categories c
WHERE p.slug = 'islam-quba-mosque-medina-saudi-arabia' AND c.slug = 'islam'
ON CONFLICT (package_id, category_id) DO NOTHING;
INSERT INTO public.package_categories (package_id, category_id, display_order)
SELECT p.id, c.id, 0
FROM public.packages p, public.categories c
WHERE p.slug = 'islam-touba-senegal' AND c.slug = 'pilgrimage'
ON CONFLICT (package_id, category_id) DO NOTHING;
INSERT INTO public.package_categories (package_id, category_id, display_order)
SELECT p.id, c.id, 1
FROM public.packages p, public.categories c
WHERE p.slug = 'islam-touba-senegal' AND c.slug = 'islam'
ON CONFLICT (package_id, category_id) DO NOTHING;
INSERT INTO public.package_categories (package_id, category_id, display_order)
SELECT p.id, c.id, 0
FROM public.packages p, public.categories c
WHERE p.slug = 'islam-umayyad-mosque-damascus-syria' AND c.slug = 'pilgrimage'
ON CONFLICT (package_id, category_id) DO NOTHING;
INSERT INTO public.package_categories (package_id, category_id, display_order)
SELECT p.id, c.id, 1
FROM public.packages p, public.categories c
WHERE p.slug = 'islam-umayyad-mosque-damascus-syria' AND c.slug = 'islam'
ON CONFLICT (package_id, category_id) DO NOTHING;
END $$;