DO $$
BEGIN
INSERT INTO public.destinations (name, slug, city, state, country, description, image_url, alt_text, main_category, faith_category, category_badge, is_active)
VALUES ('Mecca', 'mecca', 'Makkah', 'Saudi Arabia', 'India', 'The holiest city in Islam and home of the Sacred Kaaba.', '/images/tourist-places/pilgrimage/Islam/Mecca, Saudi Arabia.jpg', 'Holy Kaaba pilgrimage in Mecca, Saudi Arabia', 'Pilgrimage', 'Islam', 'Islamic Pilgrimage', true)
ON CONFLICT (slug) DO UPDATE SET
  name = EXCLUDED.name,
  city = EXCLUDED.city,
  state = EXCLUDED.state,
  country = EXCLUDED.country,
  description = EXCLUDED.description,
  image_url = EXCLUDED.image_url,
  alt_text = EXCLUDED.alt_text,
  main_category = EXCLUDED.main_category,
  faith_category = EXCLUDED.faith_category,
  category_badge = EXCLUDED.category_badge;
INSERT INTO public.destinations (name, slug, city, state, country, description, image_url, alt_text, main_category, faith_category, category_badge, is_active)
VALUES ('Medina', 'medina', 'Saudi Arabia', NULL, 'India', 'The Prophet''s city housing Al-Masjid an-Nabawi.', '/images/tourist-places/pilgrimage/Islam/Medina, Saudi Arabia.jpg', 'Medina holy city pilgrimage in Saudi Arabia', 'Pilgrimage', 'Islam', 'Islamic Pilgrimage', true)
ON CONFLICT (slug) DO UPDATE SET
  name = EXCLUDED.name,
  city = EXCLUDED.city,
  state = EXCLUDED.state,
  country = EXCLUDED.country,
  description = EXCLUDED.description,
  image_url = EXCLUDED.image_url,
  alt_text = EXCLUDED.alt_text,
  main_category = EXCLUDED.main_category,
  faith_category = EXCLUDED.faith_category,
  category_badge = EXCLUDED.category_badge;
INSERT INTO public.destinations (name, slug, city, state, country, description, image_url, alt_text, main_category, faith_category, category_badge, is_active)
VALUES ('Al-Aqsa Mosque', 'al-aqsa-mosque', 'Jerusalem', 'Israel', 'India', 'The third holiest site in Islam located on the Noble Sanctuary.', '/images/tourist-places/pilgrimage/Islam/Al-Aqsa Mosque, Jerusalem, Israel.jpg', 'Al-Aqsa Mosque pilgrimage in Jerusalem, Israel', 'Pilgrimage', 'Islam', 'Islamic Pilgrimage', true)
ON CONFLICT (slug) DO UPDATE SET
  name = EXCLUDED.name,
  city = EXCLUDED.city,
  state = EXCLUDED.state,
  country = EXCLUDED.country,
  description = EXCLUDED.description,
  image_url = EXCLUDED.image_url,
  alt_text = EXCLUDED.alt_text,
  main_category = EXCLUDED.main_category,
  faith_category = EXCLUDED.faith_category,
  category_badge = EXCLUDED.category_badge;
INSERT INTO public.destinations (name, slug, city, state, country, description, image_url, alt_text, main_category, faith_category, category_badge, is_active)
VALUES ('Dome of the Rock', 'dome-of-the-rock', 'Jerusalem', 'Israel', 'India', 'Iconic golden-domed Islamic landmark overlooking Jerusalem.', '/images/tourist-places/pilgrimage/Islam/Dome of the Rock, Jerusalem, Israel.jpg', 'Dome of the Rock in Jerusalem, Israel', 'Pilgrimage', 'Islam', 'Islamic Pilgrimage', true)
ON CONFLICT (slug) DO UPDATE SET
  name = EXCLUDED.name,
  city = EXCLUDED.city,
  state = EXCLUDED.state,
  country = EXCLUDED.country,
  description = EXCLUDED.description,
  image_url = EXCLUDED.image_url,
  alt_text = EXCLUDED.alt_text,
  main_category = EXCLUDED.main_category,
  faith_category = EXCLUDED.faith_category,
  category_badge = EXCLUDED.category_badge;
INSERT INTO public.destinations (name, slug, city, state, country, description, image_url, alt_text, main_category, faith_category, category_badge, is_active)
VALUES ('Imam Reza Shrine', 'imam-reza-shrine', 'Mashhad', 'Iran', 'India', 'Vast spiritual complex and revered shrine in Mashhad.', '/images/tourist-places/pilgrimage/Islam/Imam Reza Shrine, Mashhad, Iran.jpg', 'Imam Reza Shrine pilgrimage in Mashhad, Iran', 'Pilgrimage', 'Islam', 'Islamic Pilgrimage', true)
ON CONFLICT (slug) DO UPDATE SET
  name = EXCLUDED.name,
  city = EXCLUDED.city,
  state = EXCLUDED.state,
  country = EXCLUDED.country,
  description = EXCLUDED.description,
  image_url = EXCLUDED.image_url,
  alt_text = EXCLUDED.alt_text,
  main_category = EXCLUDED.main_category,
  faith_category = EXCLUDED.faith_category,
  category_badge = EXCLUDED.category_badge;
INSERT INTO public.destinations (name, slug, city, state, country, description, image_url, alt_text, main_category, faith_category, category_badge, is_active)
VALUES ('Imam Husayn Shrine', 'imam-husayn-shrine', 'Karbala', 'Iraq', 'India', 'Sacred pilgrimage shrine visited by millions during Arba''een.', '/images/tourist-places/pilgrimage/Islam/Imam Husayn Shrine, Karbala, Iraq.jpg', 'Imam Husayn Shrine pilgrimage in Karbala, Iraq', 'Pilgrimage', 'Islam', 'Islamic Pilgrimage', true)
ON CONFLICT (slug) DO UPDATE SET
  name = EXCLUDED.name,
  city = EXCLUDED.city,
  state = EXCLUDED.state,
  country = EXCLUDED.country,
  description = EXCLUDED.description,
  image_url = EXCLUDED.image_url,
  alt_text = EXCLUDED.alt_text,
  main_category = EXCLUDED.main_category,
  faith_category = EXCLUDED.faith_category,
  category_badge = EXCLUDED.category_badge;
INSERT INTO public.destinations (name, slug, city, state, country, description, image_url, alt_text, main_category, faith_category, category_badge, is_active)
VALUES ('Imam Ali Shrine', 'imam-ali-shrine', 'Najaf', 'Iraq', 'India', 'Revered holy shrine of Imam Ali with magnificent golden dome.', '/images/tourist-places/pilgrimage/Islam/Imam Ali Shrine, Najaf, Iraq.jpg', 'Imam Ali Shrine pilgrimage in Najaf, Iraq', 'Pilgrimage', 'Islam', 'Islamic Pilgrimage', true)
ON CONFLICT (slug) DO UPDATE SET
  name = EXCLUDED.name,
  city = EXCLUDED.city,
  state = EXCLUDED.state,
  country = EXCLUDED.country,
  description = EXCLUDED.description,
  image_url = EXCLUDED.image_url,
  alt_text = EXCLUDED.alt_text,
  main_category = EXCLUDED.main_category,
  faith_category = EXCLUDED.faith_category,
  category_badge = EXCLUDED.category_badge;
INSERT INTO public.destinations (name, slug, city, state, country, description, image_url, alt_text, main_category, faith_category, category_badge, is_active)
VALUES ('Al-Masjid al-Qiblatayn', 'al-masjid-al-qiblatayn', 'Medina', 'Saudi Arabia', 'India', 'Historic mosque where the Qibla was commanded towards Mecca.', '/images/tourist-places/pilgrimage/Islam/Al-Masjid al-Qiblatayn, Medina, Saudi Arabia.jpg', 'Al-Masjid al-Qiblatayn in Medina, Saudi Arabia', 'Pilgrimage', 'Islam', 'Islamic Pilgrimage', true)
ON CONFLICT (slug) DO UPDATE SET
  name = EXCLUDED.name,
  city = EXCLUDED.city,
  state = EXCLUDED.state,
  country = EXCLUDED.country,
  description = EXCLUDED.description,
  image_url = EXCLUDED.image_url,
  alt_text = EXCLUDED.alt_text,
  main_category = EXCLUDED.main_category,
  faith_category = EXCLUDED.faith_category,
  category_badge = EXCLUDED.category_badge;
INSERT INTO public.destinations (name, slug, city, state, country, description, image_url, alt_text, main_category, faith_category, category_badge, is_active)
VALUES ('Quba Mosque', 'quba-mosque', 'Medina', 'Saudi Arabia', 'India', 'The first mosque built in Islamic history.', '/images/tourist-places/pilgrimage/Islam/Quba Mosque, Medina, Saudi Arabia.jpg', 'Quba Mosque pilgrimage in Medina, Saudi Arabia', 'Pilgrimage', 'Islam', 'Islamic Pilgrimage', true)
ON CONFLICT (slug) DO UPDATE SET
  name = EXCLUDED.name,
  city = EXCLUDED.city,
  state = EXCLUDED.state,
  country = EXCLUDED.country,
  description = EXCLUDED.description,
  image_url = EXCLUDED.image_url,
  alt_text = EXCLUDED.alt_text,
  main_category = EXCLUDED.main_category,
  faith_category = EXCLUDED.faith_category,
  category_badge = EXCLUDED.category_badge;
INSERT INTO public.destinations (name, slug, city, state, country, description, image_url, alt_text, main_category, faith_category, category_badge, is_active)
VALUES ('Umayyad Mosque', 'umayyad-mosque', 'Damascus', 'Syria', 'India', 'One of the oldest and largest mosques in the world.', '/images/tourist-places/pilgrimage/Islam/Umayyad Mosque, Damascus, Syria.jpg', 'Umayyad Mosque in Damascus, Syria', 'Pilgrimage', 'Islam', 'Islamic Pilgrimage', true)
ON CONFLICT (slug) DO UPDATE SET
  name = EXCLUDED.name,
  city = EXCLUDED.city,
  state = EXCLUDED.state,
  country = EXCLUDED.country,
  description = EXCLUDED.description,
  image_url = EXCLUDED.image_url,
  alt_text = EXCLUDED.alt_text,
  main_category = EXCLUDED.main_category,
  faith_category = EXCLUDED.faith_category,
  category_badge = EXCLUDED.category_badge;
INSERT INTO public.destinations (name, slug, city, state, country, description, image_url, alt_text, main_category, faith_category, category_badge, is_active)
VALUES ('Al-Azhar Mosque', 'al-azhar-mosque', 'Cairo', 'Egypt', 'India', 'Historic mosque and world-renowned center of Islamic learning.', '/images/tourist-places/pilgrimage/Islam/Al-Azhar Mosque, Cairo, Egypt.jpg', 'Al-Azhar Mosque in Cairo, Egypt', 'Pilgrimage', 'Islam', 'Islamic Pilgrimage', true)
ON CONFLICT (slug) DO UPDATE SET
  name = EXCLUDED.name,
  city = EXCLUDED.city,
  state = EXCLUDED.state,
  country = EXCLUDED.country,
  description = EXCLUDED.description,
  image_url = EXCLUDED.image_url,
  alt_text = EXCLUDED.alt_text,
  main_category = EXCLUDED.main_category,
  faith_category = EXCLUDED.faith_category,
  category_badge = EXCLUDED.category_badge;
INSERT INTO public.destinations (name, slug, city, state, country, description, image_url, alt_text, main_category, faith_category, category_badge, is_active)
VALUES ('Data Darbar', 'data-darbar', 'Lahore', 'Pakistan', 'India', 'Revered Sufi shrine complex located in historic Lahore.', '/images/tourist-places/pilgrimage/Islam/Data Darbar, Lahore, Pakistan.jpg', 'Data Darbar shrine in Lahore, Pakistan', 'Pilgrimage', 'Islam', 'Islamic Pilgrimage', true)
ON CONFLICT (slug) DO UPDATE SET
  name = EXCLUDED.name,
  city = EXCLUDED.city,
  state = EXCLUDED.state,
  country = EXCLUDED.country,
  description = EXCLUDED.description,
  image_url = EXCLUDED.image_url,
  alt_text = EXCLUDED.alt_text,
  main_category = EXCLUDED.main_category,
  faith_category = EXCLUDED.faith_category,
  category_badge = EXCLUDED.category_badge;
INSERT INTO public.destinations (name, slug, city, state, country, description, image_url, alt_text, main_category, faith_category, category_badge, is_active)
VALUES ('Ajmer Sharif Dargah', 'ajmer-sharif-dargah', 'Ajmer', 'Rajasthan, India', 'India', 'Sacred Sufi shrine of Khwaja Moinuddin Chishti.', '/images/tourist-places/pilgrimage/Islam/Ajmer Sharif Dargah, India.jpg', 'Ajmer Sharif Dargah in Rajasthan, India', 'Pilgrimage', 'Islam', 'Islamic Pilgrimage', true)
ON CONFLICT (slug) DO UPDATE SET
  name = EXCLUDED.name,
  city = EXCLUDED.city,
  state = EXCLUDED.state,
  country = EXCLUDED.country,
  description = EXCLUDED.description,
  image_url = EXCLUDED.image_url,
  alt_text = EXCLUDED.alt_text,
  main_category = EXCLUDED.main_category,
  faith_category = EXCLUDED.faith_category,
  category_badge = EXCLUDED.category_badge;
INSERT INTO public.destinations (name, slug, city, state, country, description, image_url, alt_text, main_category, faith_category, category_badge, is_active)
VALUES ('Touba', 'touba', 'Diourbel', 'Senegal', 'India', 'Spiritual center of the Mouride order featuring the Great Mosque of Touba.', '/images/tourist-places/pilgrimage/Islam/Touba, Senegal.webp', 'Great Mosque of Touba in Senegal', 'Pilgrimage', 'Islam', 'Islamic Pilgrimage', true)
ON CONFLICT (slug) DO UPDATE SET
  name = EXCLUDED.name,
  city = EXCLUDED.city,
  state = EXCLUDED.state,
  country = EXCLUDED.country,
  description = EXCLUDED.description,
  image_url = EXCLUDED.image_url,
  alt_text = EXCLUDED.alt_text,
  main_category = EXCLUDED.main_category,
  faith_category = EXCLUDED.faith_category,
  category_badge = EXCLUDED.category_badge;
INSERT INTO public.categories (name, slug, description, display_order, is_active)
VALUES ('Pilgrimage', 'pilgrimage', 'Sacred pilgrimage tours', 2, true)
ON CONFLICT (slug) DO UPDATE SET name = EXCLUDED.name, description = EXCLUDED.description;
INSERT INTO public.categories (name, slug, description, display_order, is_active)
VALUES ('Hinduism', 'hinduism', 'Hindu pilgrimage destinations', 3, true)
ON CONFLICT (slug) DO UPDATE SET name = EXCLUDED.name, description = EXCLUDED.description;
INSERT INTO public.categories (name, slug, description, display_order, is_active)
VALUES ('Buddhism', 'buddhism', 'Buddhist heritage trails', 4, true)
ON CONFLICT (slug) DO UPDATE SET name = EXCLUDED.name, description = EXCLUDED.description;
INSERT INTO public.categories (name, slug, description, display_order, is_active)
VALUES ('Christianity', 'christianity', 'Christian pilgrimage sites', 5, true)
ON CONFLICT (slug) DO UPDATE SET name = EXCLUDED.name, description = EXCLUDED.description;
INSERT INTO public.categories (name, slug, description, display_order, is_active)
VALUES ('Islam', 'islam', 'Islamic heritage and pilgrimage', 6, true)
ON CONFLICT (slug) DO UPDATE SET name = EXCLUDED.name, description = EXCLUDED.description;
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
END $$;