DO $$
BEGIN
INSERT INTO public.itinerary_days (
  package_id, day_number, title, location, overview,
  morning_title, morning_description, afternoon_title, afternoon_description, evening_title, evening_description,
  important_timings, meals, transport, walking_level, stay, weather, dress_code, packing_suggestions,
  accessibility_note, visitor_note, travel_duration
) SELECT
  p.id, 1, 'Arrival & Settle in at Singapore', 'Singapore', 'Welcome to your yatra. Arrive in Singapore, transfer to your stay, and rest before your sightseeing tour.',
  'Arrival & Check-in', 'Arrive at the nearest transit hub. Meet our coordinator and transfer to your pre-booked stay in Singapore.',
  'Leisure & Rest', 'Check into your hotel room, unpack your luggage, and rest to recover from your flight or train journey.',
  'Orientation Walk', 'Meet your local guide for a small walk around the neighborhood. Receive a detailed brief on local customs.',
  'Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM', 'Welcome Drink & Buffet Dinner included.', 'AC Shuttle Transit for close proximity site transfers and passenger drops.',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Heritage Boutique Resort (Comfortable rooms, garden paths, active room services)', 'Warm and sunny afternoon, ideal for outdoor sightseeing, average temp 24°C.',
  'Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.', 'Comfortable travel footwear, photo ID, essential personal medication, daypack.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 1 to 2 hours transfer'
FROM public.packages p WHERE p.slug = 'family-marina-bay-sands-skypark'
ON CONFLICT (package_id, day_number) DO UPDATE SET
  title = EXCLUDED.title,
  overview = EXCLUDED.overview,
  morning_description = EXCLUDED.morning_description;
INSERT INTO public.itinerary_days (
  package_id, day_number, title, location, overview,
  morning_title, morning_description, afternoon_title, afternoon_description, evening_title, evening_description,
  important_timings, meals, transport, walking_level, stay, weather, dress_code, packing_suggestions,
  accessibility_note, visitor_note, travel_duration
) SELECT
  p.id, 2, 'Explore Marina Bay Sands SkyPark Heritage Centre', 'Singapore', 'Spend your day visiting Marina Bay Sands SkyPark Heritage Centre, the primary attraction in Marina Bay Sands SkyPark, accompanied by our expert guide.',
  'Guided Tour of Marina Bay Sands SkyPark Heritage Centre', 'Early morning visit to Marina Bay Sands SkyPark Heritage Centre to avoid crowds. Learn about the heritage and unique history of this landmark.',
  'Local Traditional Lunch', 'Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings.',
  'Evening walk at Marina Bay Sands SkyPark Panoramic Viewpoint', 'Stroll around Marina Bay Sands SkyPark Panoramic Viewpoint for scenic sunset views. Capture great family photos as the evening lights turn on.',
  'Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM', 'Complimentary Breakfast & Traditional Lunch.', 'AC Private Sedan with professional local driver (includes first-aid kit and bottled water).',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Lakefront Guest House (Scenic balcony views, hot water, western-style bathrooms)', 'Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.',
  'Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.', 'Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 3 to 4 hours local tour'
FROM public.packages p WHERE p.slug = 'family-marina-bay-sands-skypark'
ON CONFLICT (package_id, day_number) DO UPDATE SET
  title = EXCLUDED.title,
  overview = EXCLUDED.overview,
  morning_description = EXCLUDED.morning_description;
INSERT INTO public.itinerary_days (
  package_id, day_number, title, location, overview,
  morning_title, morning_description, afternoon_title, afternoon_description, evening_title, evening_description,
  important_timings, meals, transport, walking_level, stay, weather, dress_code, packing_suggestions,
  accessibility_note, visitor_note, travel_duration
) SELECT
  p.id, 3, 'Excursion to Marina Bay Sands SkyPark Local Culture Park', 'Singapore', 'Excursion to Marina Bay Sands SkyPark Local Culture Park and surrounding craft villages to experience native arts, handlooms, and culture.',
  'Nature Walk at Marina Bay Sands SkyPark Local Culture Park', 'Guided scenic walk near the lake or parks surrounding Marina Bay Sands SkyPark Local Culture Park. Enjoy quiet reflection and fresh air.',
  'Local Handloom Visit', 'Visit local cottage industries to see artisans hand-weaving fabrics and crafting traditional wooden toys.',
  'Cultural Dance & Music Show', 'Attend a traditional cultural presentation depicting historical folk tales, followed by dinner.',
  'Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM', 'Breakfast & Special Dinner Buffet.', 'AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Premium Executive Hotel (AC rooms, elevator access, 24/7 front desk assistance)', 'Perfect travel weather with low humidity and comfortable evening temperature 20°C.',
  'Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.', 'Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 3 to 4 hours local tour'
FROM public.packages p WHERE p.slug = 'family-marina-bay-sands-skypark'
ON CONFLICT (package_id, day_number) DO UPDATE SET
  title = EXCLUDED.title,
  overview = EXCLUDED.overview,
  morning_description = EXCLUDED.morning_description;
INSERT INTO public.itinerary_days (
  package_id, day_number, title, location, overview,
  morning_title, morning_description, afternoon_title, afternoon_description, evening_title, evening_description,
  important_timings, meals, transport, walking_level, stay, weather, dress_code, packing_suggestions,
  accessibility_note, visitor_note, travel_duration
) SELECT
  p.id, 4, 'Souvenir Shopping & Onward Departure', 'Singapore', 'Conclude your memorable stay in Singapore with local craft shopping, checkout, and outbound transfers.',
  'Handicrafts Shopping', 'Visit local co-operative markets to buy traditional souvenirs, regional sweets, or native organic spices.',
  'Check-out & Packing', 'Return to your hotel, pack your bags, clear any local incidentals, and check out from your rooms.',
  'Outbound Transfer', 'Board your private vehicle transfer to the airport or railway station for your onward return journey home.',
  'Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM', 'Complimentary Healthy Breakfast included.', 'AC Private SUV for comfortable road transfers with regular rest stops.',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Standard Comfort Hotel (Fully sanitized rooms, private bathroom, free Wi-Fi, desk space)', 'Clear sky, comfortable morning temperature 21°C, warming up to 26°C by noon.',
  'Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.', 'Walking socks, small daypack for personal belongings, sanitizers, light jacket.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 1 to 2 hours transfer'
FROM public.packages p WHERE p.slug = 'family-marina-bay-sands-skypark'
ON CONFLICT (package_id, day_number) DO UPDATE SET
  title = EXCLUDED.title,
  overview = EXCLUDED.overview,
  morning_description = EXCLUDED.morning_description;
INSERT INTO public.itinerary_days (
  package_id, day_number, title, location, overview,
  morning_title, morning_description, afternoon_title, afternoon_description, evening_title, evening_description,
  important_timings, meals, transport, walking_level, stay, weather, dress_code, packing_suggestions,
  accessibility_note, visitor_note, travel_duration
) SELECT
  p.id, 1, 'Arrival & Settle in at Jodhpur', 'Jodhpur', 'Welcome to your yatra. Arrive in Jodhpur, transfer to your stay, and rest before your sightseeing tour.',
  'Arrival & Check-in', 'Arrive at the nearest transit hub. Meet our coordinator and transfer to your pre-booked stay in Jodhpur.',
  'Leisure & Rest', 'Check into your hotel room, unpack your luggage, and rest to recover from your flight or train journey.',
  'Orientation Walk', 'Meet your local guide for a small walk around the neighborhood. Receive a detailed brief on local customs.',
  'Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM', 'Welcome Drink & Buffet Dinner included.', 'AC Shuttle Transit for close proximity site transfers and passenger drops.',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Heritage Boutique Resort (Comfortable rooms, garden paths, active room services)', 'Warm and sunny afternoon, ideal for outdoor sightseeing, average temp 24°C.',
  'Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.', 'Comfortable travel footwear, photo ID, essential personal medication, daypack.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 1 to 2 hours transfer'
FROM public.packages p WHERE p.slug = 'family-mehrangarh-fort'
ON CONFLICT (package_id, day_number) DO UPDATE SET
  title = EXCLUDED.title,
  overview = EXCLUDED.overview,
  morning_description = EXCLUDED.morning_description;
INSERT INTO public.itinerary_days (
  package_id, day_number, title, location, overview,
  morning_title, morning_description, afternoon_title, afternoon_description, evening_title, evening_description,
  important_timings, meals, transport, walking_level, stay, weather, dress_code, packing_suggestions,
  accessibility_note, visitor_note, travel_duration
) SELECT
  p.id, 2, 'Explore Mehrangarh Fort Heritage Centre', 'Jodhpur', 'Spend your day visiting Mehrangarh Fort Heritage Centre, the primary attraction in Mehrangarh Fort, accompanied by our expert guide.',
  'Guided Tour of Mehrangarh Fort Heritage Centre', 'Early morning visit to Mehrangarh Fort Heritage Centre to avoid crowds. Learn about the heritage and unique history of this landmark.',
  'Local Traditional Lunch', 'Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings.',
  'Evening walk at Mehrangarh Fort Panoramic Viewpoint', 'Stroll around Mehrangarh Fort Panoramic Viewpoint for scenic sunset views. Capture great family photos as the evening lights turn on.',
  'Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM', 'Complimentary Breakfast & Traditional Lunch.', 'AC Private Sedan with professional local driver (includes first-aid kit and bottled water).',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Lakefront Guest House (Scenic balcony views, hot water, western-style bathrooms)', 'Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.',
  'Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.', 'Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 3 to 4 hours local tour'
FROM public.packages p WHERE p.slug = 'family-mehrangarh-fort'
ON CONFLICT (package_id, day_number) DO UPDATE SET
  title = EXCLUDED.title,
  overview = EXCLUDED.overview,
  morning_description = EXCLUDED.morning_description;
INSERT INTO public.itinerary_days (
  package_id, day_number, title, location, overview,
  morning_title, morning_description, afternoon_title, afternoon_description, evening_title, evening_description,
  important_timings, meals, transport, walking_level, stay, weather, dress_code, packing_suggestions,
  accessibility_note, visitor_note, travel_duration
) SELECT
  p.id, 3, 'Excursion to Mehrangarh Fort Local Culture Park', 'Jodhpur', 'Excursion to Mehrangarh Fort Local Culture Park and surrounding craft villages to experience native arts, handlooms, and culture.',
  'Nature Walk at Mehrangarh Fort Local Culture Park', 'Guided scenic walk near the lake or parks surrounding Mehrangarh Fort Local Culture Park. Enjoy quiet reflection and fresh air.',
  'Local Handloom Visit', 'Visit local cottage industries to see artisans hand-weaving fabrics and crafting traditional wooden toys.',
  'Cultural Dance & Music Show', 'Attend a traditional cultural presentation depicting historical folk tales, followed by dinner.',
  'Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM', 'Breakfast & Special Dinner Buffet.', 'AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Premium Executive Hotel (AC rooms, elevator access, 24/7 front desk assistance)', 'Perfect travel weather with low humidity and comfortable evening temperature 20°C.',
  'Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.', 'Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 3 to 4 hours local tour'
FROM public.packages p WHERE p.slug = 'family-mehrangarh-fort'
ON CONFLICT (package_id, day_number) DO UPDATE SET
  title = EXCLUDED.title,
  overview = EXCLUDED.overview,
  morning_description = EXCLUDED.morning_description;
INSERT INTO public.itinerary_days (
  package_id, day_number, title, location, overview,
  morning_title, morning_description, afternoon_title, afternoon_description, evening_title, evening_description,
  important_timings, meals, transport, walking_level, stay, weather, dress_code, packing_suggestions,
  accessibility_note, visitor_note, travel_duration
) SELECT
  p.id, 4, 'Souvenir Shopping & Onward Departure', 'Jodhpur', 'Conclude your memorable stay in Jodhpur with local craft shopping, checkout, and outbound transfers.',
  'Handicrafts Shopping', 'Visit local co-operative markets to buy traditional souvenirs, regional sweets, or native organic spices.',
  'Check-out & Packing', 'Return to your hotel, pack your bags, clear any local incidentals, and check out from your rooms.',
  'Outbound Transfer', 'Board your private vehicle transfer to the airport or railway station for your onward return journey home.',
  'Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM', 'Complimentary Healthy Breakfast included.', 'AC Private SUV for comfortable road transfers with regular rest stops.',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Standard Comfort Hotel (Fully sanitized rooms, private bathroom, free Wi-Fi, desk space)', 'Clear sky, comfortable morning temperature 21°C, warming up to 26°C by noon.',
  'Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.', 'Walking socks, small daypack for personal belongings, sanitizers, light jacket.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 1 to 2 hours transfer'
FROM public.packages p WHERE p.slug = 'family-mehrangarh-fort'
ON CONFLICT (package_id, day_number) DO UPDATE SET
  title = EXCLUDED.title,
  overview = EXCLUDED.overview,
  morning_description = EXCLUDED.morning_description;
INSERT INTO public.itinerary_days (
  package_id, day_number, title, location, overview,
  morning_title, morning_description, afternoon_title, afternoon_description, evening_title, evening_description,
  important_timings, meals, transport, walking_level, stay, weather, dress_code, packing_suggestions,
  accessibility_note, visitor_note, travel_duration
) SELECT
  p.id, 1, 'Arrival & Settle in at Honshu', 'Honshu', 'Welcome to your yatra. Arrive in Honshu, transfer to your stay, and rest before your sightseeing tour.',
  'Arrival & Check-in', 'Arrive at the nearest transit hub. Meet our coordinator and transfer to your pre-booked stay in Honshu.',
  'Leisure & Rest', 'Check into your hotel room, unpack your luggage, and rest to recover from your flight or train journey.',
  'Orientation Walk', 'Meet your local guide for a small walk around the neighborhood. Receive a detailed brief on local customs.',
  'Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM', 'Welcome Drink & Buffet Dinner included.', 'AC Shuttle Transit for close proximity site transfers and passenger drops.',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Heritage Boutique Resort (Comfortable rooms, garden paths, active room services)', 'Warm and sunny afternoon, ideal for outdoor sightseeing, average temp 24°C.',
  'Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.', 'Comfortable travel footwear, photo ID, essential personal medication, daypack.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 1 to 2 hours transfer'
FROM public.packages p WHERE p.slug = 'family-mount-fuji'
ON CONFLICT (package_id, day_number) DO UPDATE SET
  title = EXCLUDED.title,
  overview = EXCLUDED.overview,
  morning_description = EXCLUDED.morning_description;
INSERT INTO public.itinerary_days (
  package_id, day_number, title, location, overview,
  morning_title, morning_description, afternoon_title, afternoon_description, evening_title, evening_description,
  important_timings, meals, transport, walking_level, stay, weather, dress_code, packing_suggestions,
  accessibility_note, visitor_note, travel_duration
) SELECT
  p.id, 2, 'Explore Mount Fuji Heritage Centre', 'Honshu', 'Spend your day visiting Mount Fuji Heritage Centre, the primary attraction in Mount Fuji, accompanied by our expert guide.',
  'Guided Tour of Mount Fuji Heritage Centre', 'Early morning visit to Mount Fuji Heritage Centre to avoid crowds. Learn about the heritage and unique history of this landmark.',
  'Local Traditional Lunch', 'Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings.',
  'Evening walk at Mount Fuji Panoramic Viewpoint', 'Stroll around Mount Fuji Panoramic Viewpoint for scenic sunset views. Capture great family photos as the evening lights turn on.',
  'Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM', 'Complimentary Breakfast & Traditional Lunch.', 'AC Private Sedan with professional local driver (includes first-aid kit and bottled water).',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Lakefront Guest House (Scenic balcony views, hot water, western-style bathrooms)', 'Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.',
  'Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.', 'Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 3 to 4 hours local tour'
FROM public.packages p WHERE p.slug = 'family-mount-fuji'
ON CONFLICT (package_id, day_number) DO UPDATE SET
  title = EXCLUDED.title,
  overview = EXCLUDED.overview,
  morning_description = EXCLUDED.morning_description;
INSERT INTO public.itinerary_days (
  package_id, day_number, title, location, overview,
  morning_title, morning_description, afternoon_title, afternoon_description, evening_title, evening_description,
  important_timings, meals, transport, walking_level, stay, weather, dress_code, packing_suggestions,
  accessibility_note, visitor_note, travel_duration
) SELECT
  p.id, 3, 'Excursion to Mount Fuji Local Culture Park', 'Honshu', 'Excursion to Mount Fuji Local Culture Park and surrounding craft villages to experience native arts, handlooms, and culture.',
  'Nature Walk at Mount Fuji Local Culture Park', 'Guided scenic walk near the lake or parks surrounding Mount Fuji Local Culture Park. Enjoy quiet reflection and fresh air.',
  'Local Handloom Visit', 'Visit local cottage industries to see artisans hand-weaving fabrics and crafting traditional wooden toys.',
  'Cultural Dance & Music Show', 'Attend a traditional cultural presentation depicting historical folk tales, followed by dinner.',
  'Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM', 'Breakfast & Special Dinner Buffet.', 'AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Premium Executive Hotel (AC rooms, elevator access, 24/7 front desk assistance)', 'Perfect travel weather with low humidity and comfortable evening temperature 20°C.',
  'Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.', 'Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 3 to 4 hours local tour'
FROM public.packages p WHERE p.slug = 'family-mount-fuji'
ON CONFLICT (package_id, day_number) DO UPDATE SET
  title = EXCLUDED.title,
  overview = EXCLUDED.overview,
  morning_description = EXCLUDED.morning_description;
INSERT INTO public.itinerary_days (
  package_id, day_number, title, location, overview,
  morning_title, morning_description, afternoon_title, afternoon_description, evening_title, evening_description,
  important_timings, meals, transport, walking_level, stay, weather, dress_code, packing_suggestions,
  accessibility_note, visitor_note, travel_duration
) SELECT
  p.id, 4, 'Souvenir Shopping & Onward Departure', 'Honshu', 'Conclude your memorable stay in Honshu with local craft shopping, checkout, and outbound transfers.',
  'Handicrafts Shopping', 'Visit local co-operative markets to buy traditional souvenirs, regional sweets, or native organic spices.',
  'Check-out & Packing', 'Return to your hotel, pack your bags, clear any local incidentals, and check out from your rooms.',
  'Outbound Transfer', 'Board your private vehicle transfer to the airport or railway station for your onward return journey home.',
  'Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM', 'Complimentary Healthy Breakfast included.', 'AC Private SUV for comfortable road transfers with regular rest stops.',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Standard Comfort Hotel (Fully sanitized rooms, private bathroom, free Wi-Fi, desk space)', 'Clear sky, comfortable morning temperature 21°C, warming up to 26°C by noon.',
  'Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.', 'Walking socks, small daypack for personal belongings, sanitizers, light jacket.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 1 to 2 hours transfer'
FROM public.packages p WHERE p.slug = 'family-mount-fuji'
ON CONFLICT (package_id, day_number) DO UPDATE SET
  title = EXCLUDED.title,
  overview = EXCLUDED.overview,
  morning_description = EXCLUDED.morning_description;
INSERT INTO public.itinerary_days (
  package_id, day_number, title, location, overview,
  morning_title, morning_description, afternoon_title, afternoon_description, evening_title, evening_description,
  important_timings, meals, transport, walking_level, stay, weather, dress_code, packing_suggestions,
  accessibility_note, visitor_note, travel_duration
) SELECT
  p.id, 1, 'Arrival & Settle in at Engelberg', 'Engelberg', 'Welcome to your yatra. Arrive in Engelberg, transfer to your stay, and rest before your sightseeing tour.',
  'Arrival & Check-in', 'Arrive at the nearest transit hub. Meet our coordinator and transfer to your pre-booked stay in Engelberg.',
  'Leisure & Rest', 'Check into your hotel room, unpack your luggage, and rest to recover from your flight or train journey.',
  'Orientation Walk', 'Meet your local guide for a small walk around the neighborhood. Receive a detailed brief on local customs.',
  'Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM', 'Welcome Drink & Buffet Dinner included.', 'AC Shuttle Transit for close proximity site transfers and passenger drops.',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Heritage Boutique Resort (Comfortable rooms, garden paths, active room services)', 'Warm and sunny afternoon, ideal for outdoor sightseeing, average temp 24°C.',
  'Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.', 'Comfortable travel footwear, photo ID, essential personal medication, daypack.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 1 to 2 hours transfer'
FROM public.packages p WHERE p.slug = 'family-mount-titlis'
ON CONFLICT (package_id, day_number) DO UPDATE SET
  title = EXCLUDED.title,
  overview = EXCLUDED.overview,
  morning_description = EXCLUDED.morning_description;
INSERT INTO public.itinerary_days (
  package_id, day_number, title, location, overview,
  morning_title, morning_description, afternoon_title, afternoon_description, evening_title, evening_description,
  important_timings, meals, transport, walking_level, stay, weather, dress_code, packing_suggestions,
  accessibility_note, visitor_note, travel_duration
) SELECT
  p.id, 2, 'Explore Mount Titlis Heritage Centre', 'Engelberg', 'Spend your day visiting Mount Titlis Heritage Centre, the primary attraction in Mount Titlis, accompanied by our expert guide.',
  'Guided Tour of Mount Titlis Heritage Centre', 'Early morning visit to Mount Titlis Heritage Centre to avoid crowds. Learn about the heritage and unique history of this landmark.',
  'Local Traditional Lunch', 'Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings.',
  'Evening walk at Mount Titlis Panoramic Viewpoint', 'Stroll around Mount Titlis Panoramic Viewpoint for scenic sunset views. Capture great family photos as the evening lights turn on.',
  'Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM', 'Complimentary Breakfast & Traditional Lunch.', 'AC Private Sedan with professional local driver (includes first-aid kit and bottled water).',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Lakefront Guest House (Scenic balcony views, hot water, western-style bathrooms)', 'Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.',
  'Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.', 'Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 3 to 4 hours local tour'
FROM public.packages p WHERE p.slug = 'family-mount-titlis'
ON CONFLICT (package_id, day_number) DO UPDATE SET
  title = EXCLUDED.title,
  overview = EXCLUDED.overview,
  morning_description = EXCLUDED.morning_description;
INSERT INTO public.itinerary_days (
  package_id, day_number, title, location, overview,
  morning_title, morning_description, afternoon_title, afternoon_description, evening_title, evening_description,
  important_timings, meals, transport, walking_level, stay, weather, dress_code, packing_suggestions,
  accessibility_note, visitor_note, travel_duration
) SELECT
  p.id, 3, 'Excursion to Mount Titlis Local Culture Park', 'Engelberg', 'Excursion to Mount Titlis Local Culture Park and surrounding craft villages to experience native arts, handlooms, and culture.',
  'Nature Walk at Mount Titlis Local Culture Park', 'Guided scenic walk near the lake or parks surrounding Mount Titlis Local Culture Park. Enjoy quiet reflection and fresh air.',
  'Local Handloom Visit', 'Visit local cottage industries to see artisans hand-weaving fabrics and crafting traditional wooden toys.',
  'Cultural Dance & Music Show', 'Attend a traditional cultural presentation depicting historical folk tales, followed by dinner.',
  'Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM', 'Breakfast & Special Dinner Buffet.', 'AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Premium Executive Hotel (AC rooms, elevator access, 24/7 front desk assistance)', 'Perfect travel weather with low humidity and comfortable evening temperature 20°C.',
  'Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.', 'Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 3 to 4 hours local tour'
FROM public.packages p WHERE p.slug = 'family-mount-titlis'
ON CONFLICT (package_id, day_number) DO UPDATE SET
  title = EXCLUDED.title,
  overview = EXCLUDED.overview,
  morning_description = EXCLUDED.morning_description;
INSERT INTO public.itinerary_days (
  package_id, day_number, title, location, overview,
  morning_title, morning_description, afternoon_title, afternoon_description, evening_title, evening_description,
  important_timings, meals, transport, walking_level, stay, weather, dress_code, packing_suggestions,
  accessibility_note, visitor_note, travel_duration
) SELECT
  p.id, 4, 'Souvenir Shopping & Onward Departure', 'Engelberg', 'Conclude your memorable stay in Engelberg with local craft shopping, checkout, and outbound transfers.',
  'Handicrafts Shopping', 'Visit local co-operative markets to buy traditional souvenirs, regional sweets, or native organic spices.',
  'Check-out & Packing', 'Return to your hotel, pack your bags, clear any local incidentals, and check out from your rooms.',
  'Outbound Transfer', 'Board your private vehicle transfer to the airport or railway station for your onward return journey home.',
  'Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM', 'Complimentary Healthy Breakfast included.', 'AC Private SUV for comfortable road transfers with regular rest stops.',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Standard Comfort Hotel (Fully sanitized rooms, private bathroom, free Wi-Fi, desk space)', 'Clear sky, comfortable morning temperature 21°C, warming up to 26°C by noon.',
  'Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.', 'Walking socks, small daypack for personal belongings, sanitizers, light jacket.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 1 to 2 hours transfer'
FROM public.packages p WHERE p.slug = 'family-mount-titlis'
ON CONFLICT (package_id, day_number) DO UPDATE SET
  title = EXCLUDED.title,
  overview = EXCLUDED.overview,
  morning_description = EXCLUDED.morning_description;
INSERT INTO public.itinerary_days (
  package_id, day_number, title, location, overview,
  morning_title, morning_description, afternoon_title, afternoon_description, evening_title, evening_description,
  important_timings, meals, transport, walking_level, stay, weather, dress_code, packing_suggestions,
  accessibility_note, visitor_note, travel_duration
) SELECT
  p.id, 1, 'Arrival & Settle in at Munnar', 'Munnar', 'Welcome to your yatra. Arrive in Munnar, transfer to your stay, and rest before your sightseeing tour.',
  'Arrival & Check-in', 'Arrive at the nearest transit hub. Meet our coordinator and transfer to your pre-booked stay in Munnar.',
  'Leisure & Rest', 'Check into your hotel room, unpack your luggage, and rest to recover from your flight or train journey.',
  'Orientation Walk', 'Meet your local guide for a small walk around the neighborhood. Receive a detailed brief on local customs.',
  'Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM', 'Welcome Drink & Buffet Dinner included.', 'AC Shuttle Transit for close proximity site transfers and passenger drops.',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Heritage Boutique Resort (Comfortable rooms, garden paths, active room services)', 'Warm and sunny afternoon, ideal for outdoor sightseeing, average temp 24°C.',
  'Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.', 'Comfortable travel footwear, photo ID, essential personal medication, daypack.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 1 to 2 hours transfer'
FROM public.packages p WHERE p.slug = 'family-munnar-tea-gardens'
ON CONFLICT (package_id, day_number) DO UPDATE SET
  title = EXCLUDED.title,
  overview = EXCLUDED.overview,
  morning_description = EXCLUDED.morning_description;
INSERT INTO public.itinerary_days (
  package_id, day_number, title, location, overview,
  morning_title, morning_description, afternoon_title, afternoon_description, evening_title, evening_description,
  important_timings, meals, transport, walking_level, stay, weather, dress_code, packing_suggestions,
  accessibility_note, visitor_note, travel_duration
) SELECT
  p.id, 2, 'Explore Munnar Tea Gardens Heritage Centre', 'Munnar', 'Spend your day visiting Munnar Tea Gardens Heritage Centre, the primary attraction in Munnar Tea Gardens, accompanied by our expert guide.',
  'Guided Tour of Munnar Tea Gardens Heritage Centre', 'Early morning visit to Munnar Tea Gardens Heritage Centre to avoid crowds. Learn about the heritage and unique history of this landmark.',
  'Local Traditional Lunch', 'Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings.',
  'Evening walk at Munnar Tea Gardens Panoramic Viewpoint', 'Stroll around Munnar Tea Gardens Panoramic Viewpoint for scenic sunset views. Capture great family photos as the evening lights turn on.',
  'Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM', 'Complimentary Breakfast & Traditional Lunch.', 'AC Private Sedan with professional local driver (includes first-aid kit and bottled water).',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Lakefront Guest House (Scenic balcony views, hot water, western-style bathrooms)', 'Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.',
  'Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.', 'Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 3 to 4 hours local tour'
FROM public.packages p WHERE p.slug = 'family-munnar-tea-gardens'
ON CONFLICT (package_id, day_number) DO UPDATE SET
  title = EXCLUDED.title,
  overview = EXCLUDED.overview,
  morning_description = EXCLUDED.morning_description;
INSERT INTO public.itinerary_days (
  package_id, day_number, title, location, overview,
  morning_title, morning_description, afternoon_title, afternoon_description, evening_title, evening_description,
  important_timings, meals, transport, walking_level, stay, weather, dress_code, packing_suggestions,
  accessibility_note, visitor_note, travel_duration
) SELECT
  p.id, 3, 'Excursion to Munnar Tea Gardens Local Culture Park', 'Munnar', 'Excursion to Munnar Tea Gardens Local Culture Park and surrounding craft villages to experience native arts, handlooms, and culture.',
  'Nature Walk at Munnar Tea Gardens Local Culture Park', 'Guided scenic walk near the lake or parks surrounding Munnar Tea Gardens Local Culture Park. Enjoy quiet reflection and fresh air.',
  'Local Handloom Visit', 'Visit local cottage industries to see artisans hand-weaving fabrics and crafting traditional wooden toys.',
  'Cultural Dance & Music Show', 'Attend a traditional cultural presentation depicting historical folk tales, followed by dinner.',
  'Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM', 'Breakfast & Special Dinner Buffet.', 'AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Premium Executive Hotel (AC rooms, elevator access, 24/7 front desk assistance)', 'Perfect travel weather with low humidity and comfortable evening temperature 20°C.',
  'Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.', 'Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 3 to 4 hours local tour'
FROM public.packages p WHERE p.slug = 'family-munnar-tea-gardens'
ON CONFLICT (package_id, day_number) DO UPDATE SET
  title = EXCLUDED.title,
  overview = EXCLUDED.overview,
  morning_description = EXCLUDED.morning_description;
INSERT INTO public.itinerary_days (
  package_id, day_number, title, location, overview,
  morning_title, morning_description, afternoon_title, afternoon_description, evening_title, evening_description,
  important_timings, meals, transport, walking_level, stay, weather, dress_code, packing_suggestions,
  accessibility_note, visitor_note, travel_duration
) SELECT
  p.id, 4, 'Souvenir Shopping & Onward Departure', 'Munnar', 'Conclude your memorable stay in Munnar with local craft shopping, checkout, and outbound transfers.',
  'Handicrafts Shopping', 'Visit local co-operative markets to buy traditional souvenirs, regional sweets, or native organic spices.',
  'Check-out & Packing', 'Return to your hotel, pack your bags, clear any local incidentals, and check out from your rooms.',
  'Outbound Transfer', 'Board your private vehicle transfer to the airport or railway station for your onward return journey home.',
  'Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM', 'Complimentary Healthy Breakfast included.', 'AC Private SUV for comfortable road transfers with regular rest stops.',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Standard Comfort Hotel (Fully sanitized rooms, private bathroom, free Wi-Fi, desk space)', 'Clear sky, comfortable morning temperature 21°C, warming up to 26°C by noon.',
  'Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.', 'Walking socks, small daypack for personal belongings, sanitizers, light jacket.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 1 to 2 hours transfer'
FROM public.packages p WHERE p.slug = 'family-munnar-tea-gardens'
ON CONFLICT (package_id, day_number) DO UPDATE SET
  title = EXCLUDED.title,
  overview = EXCLUDED.overview,
  morning_description = EXCLUDED.morning_description;
INSERT INTO public.itinerary_days (
  package_id, day_number, title, location, overview,
  morning_title, morning_description, afternoon_title, afternoon_description, evening_title, evening_description,
  important_timings, meals, transport, walking_level, stay, weather, dress_code, packing_suggestions,
  accessibility_note, visitor_note, travel_duration
) SELECT
  p.id, 1, 'Arrival & Settle in at Dubai', 'Dubai', 'Welcome to your yatra. Arrive in Dubai, transfer to your stay, and rest before your sightseeing tour.',
  'Arrival & Check-in', 'Arrive at the nearest transit hub. Meet our coordinator and transfer to your pre-booked stay in Dubai.',
  'Leisure & Rest', 'Check into your hotel room, unpack your luggage, and rest to recover from your flight or train journey.',
  'Orientation Walk', 'Meet your local guide for a small walk around the neighborhood. Receive a detailed brief on local customs.',
  'Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM', 'Welcome Drink & Buffet Dinner included.', 'AC Shuttle Transit for close proximity site transfers and passenger drops.',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Heritage Boutique Resort (Comfortable rooms, garden paths, active room services)', 'Warm and sunny afternoon, ideal for outdoor sightseeing, average temp 24°C.',
  'Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.', 'Comfortable travel footwear, photo ID, essential personal medication, daypack.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 1 to 2 hours transfer'
FROM public.packages p WHERE p.slug = 'family-museum-of-the-future'
ON CONFLICT (package_id, day_number) DO UPDATE SET
  title = EXCLUDED.title,
  overview = EXCLUDED.overview,
  morning_description = EXCLUDED.morning_description;
INSERT INTO public.itinerary_days (
  package_id, day_number, title, location, overview,
  morning_title, morning_description, afternoon_title, afternoon_description, evening_title, evening_description,
  important_timings, meals, transport, walking_level, stay, weather, dress_code, packing_suggestions,
  accessibility_note, visitor_note, travel_duration
) SELECT
  p.id, 2, 'Explore Museum of the Future Heritage Centre', 'Dubai', 'Spend your day visiting Museum of the Future Heritage Centre, the primary attraction in Museum of the Future, accompanied by our expert guide.',
  'Guided Tour of Museum of the Future Heritage Centre', 'Early morning visit to Museum of the Future Heritage Centre to avoid crowds. Learn about the heritage and unique history of this landmark.',
  'Local Traditional Lunch', 'Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings.',
  'Evening walk at Museum of the Future Panoramic Viewpoint', 'Stroll around Museum of the Future Panoramic Viewpoint for scenic sunset views. Capture great family photos as the evening lights turn on.',
  'Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM', 'Complimentary Breakfast & Traditional Lunch.', 'AC Private Sedan with professional local driver (includes first-aid kit and bottled water).',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Lakefront Guest House (Scenic balcony views, hot water, western-style bathrooms)', 'Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.',
  'Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.', 'Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 3 to 4 hours local tour'
FROM public.packages p WHERE p.slug = 'family-museum-of-the-future'
ON CONFLICT (package_id, day_number) DO UPDATE SET
  title = EXCLUDED.title,
  overview = EXCLUDED.overview,
  morning_description = EXCLUDED.morning_description;
INSERT INTO public.itinerary_days (
  package_id, day_number, title, location, overview,
  morning_title, morning_description, afternoon_title, afternoon_description, evening_title, evening_description,
  important_timings, meals, transport, walking_level, stay, weather, dress_code, packing_suggestions,
  accessibility_note, visitor_note, travel_duration
) SELECT
  p.id, 3, 'Excursion to Museum of the Future Local Culture Park', 'Dubai', 'Excursion to Museum of the Future Local Culture Park and surrounding craft villages to experience native arts, handlooms, and culture.',
  'Nature Walk at Museum of the Future Local Culture Park', 'Guided scenic walk near the lake or parks surrounding Museum of the Future Local Culture Park. Enjoy quiet reflection and fresh air.',
  'Local Handloom Visit', 'Visit local cottage industries to see artisans hand-weaving fabrics and crafting traditional wooden toys.',
  'Cultural Dance & Music Show', 'Attend a traditional cultural presentation depicting historical folk tales, followed by dinner.',
  'Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM', 'Breakfast & Special Dinner Buffet.', 'AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Premium Executive Hotel (AC rooms, elevator access, 24/7 front desk assistance)', 'Perfect travel weather with low humidity and comfortable evening temperature 20°C.',
  'Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.', 'Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 3 to 4 hours local tour'
FROM public.packages p WHERE p.slug = 'family-museum-of-the-future'
ON CONFLICT (package_id, day_number) DO UPDATE SET
  title = EXCLUDED.title,
  overview = EXCLUDED.overview,
  morning_description = EXCLUDED.morning_description;
INSERT INTO public.itinerary_days (
  package_id, day_number, title, location, overview,
  morning_title, morning_description, afternoon_title, afternoon_description, evening_title, evening_description,
  important_timings, meals, transport, walking_level, stay, weather, dress_code, packing_suggestions,
  accessibility_note, visitor_note, travel_duration
) SELECT
  p.id, 4, 'Souvenir Shopping & Onward Departure', 'Dubai', 'Conclude your memorable stay in Dubai with local craft shopping, checkout, and outbound transfers.',
  'Handicrafts Shopping', 'Visit local co-operative markets to buy traditional souvenirs, regional sweets, or native organic spices.',
  'Check-out & Packing', 'Return to your hotel, pack your bags, clear any local incidentals, and check out from your rooms.',
  'Outbound Transfer', 'Board your private vehicle transfer to the airport or railway station for your onward return journey home.',
  'Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM', 'Complimentary Healthy Breakfast included.', 'AC Private SUV for comfortable road transfers with regular rest stops.',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Standard Comfort Hotel (Fully sanitized rooms, private bathroom, free Wi-Fi, desk space)', 'Clear sky, comfortable morning temperature 21°C, warming up to 26°C by noon.',
  'Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.', 'Walking socks, small daypack for personal belongings, sanitizers, light jacket.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 1 to 2 hours transfer'
FROM public.packages p WHERE p.slug = 'family-museum-of-the-future'
ON CONFLICT (package_id, day_number) DO UPDATE SET
  title = EXCLUDED.title,
  overview = EXCLUDED.overview,
  morning_description = EXCLUDED.morning_description;
INSERT INTO public.itinerary_days (
  package_id, day_number, title, location, overview,
  morning_title, morning_description, afternoon_title, afternoon_description, evening_title, evening_description,
  important_timings, meals, transport, walking_level, stay, weather, dress_code, packing_suggestions,
  accessibility_note, visitor_note, travel_duration
) SELECT
  p.id, 1, 'Arrival & Settle in at Mysore', 'Mysore', 'Welcome to your yatra. Arrive in Mysore, transfer to your stay, and rest before your sightseeing tour.',
  'Arrival & Check-in', 'Arrive at the nearest transit hub. Meet our coordinator and transfer to your pre-booked stay in Mysore.',
  'Leisure & Rest', 'Check into your hotel room, unpack your luggage, and rest to recover from your flight or train journey.',
  'Orientation Walk', 'Meet your local guide for a small walk around the neighborhood. Receive a detailed brief on local customs.',
  'Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM', 'Welcome Drink & Buffet Dinner included.', 'AC Shuttle Transit for close proximity site transfers and passenger drops.',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Heritage Boutique Resort (Comfortable rooms, garden paths, active room services)', 'Warm and sunny afternoon, ideal for outdoor sightseeing, average temp 24°C.',
  'Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.', 'Comfortable travel footwear, photo ID, essential personal medication, daypack.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 1 to 2 hours transfer'
FROM public.packages p WHERE p.slug = 'family-mysore-palace'
ON CONFLICT (package_id, day_number) DO UPDATE SET
  title = EXCLUDED.title,
  overview = EXCLUDED.overview,
  morning_description = EXCLUDED.morning_description;
INSERT INTO public.itinerary_days (
  package_id, day_number, title, location, overview,
  morning_title, morning_description, afternoon_title, afternoon_description, evening_title, evening_description,
  important_timings, meals, transport, walking_level, stay, weather, dress_code, packing_suggestions,
  accessibility_note, visitor_note, travel_duration
) SELECT
  p.id, 2, 'Explore Mysore Palace Heritage Centre', 'Mysore', 'Spend your day visiting Mysore Palace Heritage Centre, the primary attraction in Mysore Palace, accompanied by our expert guide.',
  'Guided Tour of Mysore Palace Heritage Centre', 'Early morning visit to Mysore Palace Heritage Centre to avoid crowds. Learn about the heritage and unique history of this landmark.',
  'Local Traditional Lunch', 'Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings.',
  'Evening walk at Mysore Palace Panoramic Viewpoint', 'Stroll around Mysore Palace Panoramic Viewpoint for scenic sunset views. Capture great family photos as the evening lights turn on.',
  'Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM', 'Complimentary Breakfast & Traditional Lunch.', 'AC Private Sedan with professional local driver (includes first-aid kit and bottled water).',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Lakefront Guest House (Scenic balcony views, hot water, western-style bathrooms)', 'Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.',
  'Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.', 'Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 3 to 4 hours local tour'
FROM public.packages p WHERE p.slug = 'family-mysore-palace'
ON CONFLICT (package_id, day_number) DO UPDATE SET
  title = EXCLUDED.title,
  overview = EXCLUDED.overview,
  morning_description = EXCLUDED.morning_description;
INSERT INTO public.itinerary_days (
  package_id, day_number, title, location, overview,
  morning_title, morning_description, afternoon_title, afternoon_description, evening_title, evening_description,
  important_timings, meals, transport, walking_level, stay, weather, dress_code, packing_suggestions,
  accessibility_note, visitor_note, travel_duration
) SELECT
  p.id, 3, 'Excursion to Mysore Palace Local Culture Park', 'Mysore', 'Excursion to Mysore Palace Local Culture Park and surrounding craft villages to experience native arts, handlooms, and culture.',
  'Nature Walk at Mysore Palace Local Culture Park', 'Guided scenic walk near the lake or parks surrounding Mysore Palace Local Culture Park. Enjoy quiet reflection and fresh air.',
  'Local Handloom Visit', 'Visit local cottage industries to see artisans hand-weaving fabrics and crafting traditional wooden toys.',
  'Cultural Dance & Music Show', 'Attend a traditional cultural presentation depicting historical folk tales, followed by dinner.',
  'Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM', 'Breakfast & Special Dinner Buffet.', 'AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Premium Executive Hotel (AC rooms, elevator access, 24/7 front desk assistance)', 'Perfect travel weather with low humidity and comfortable evening temperature 20°C.',
  'Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.', 'Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 3 to 4 hours local tour'
FROM public.packages p WHERE p.slug = 'family-mysore-palace'
ON CONFLICT (package_id, day_number) DO UPDATE SET
  title = EXCLUDED.title,
  overview = EXCLUDED.overview,
  morning_description = EXCLUDED.morning_description;
INSERT INTO public.itinerary_days (
  package_id, day_number, title, location, overview,
  morning_title, morning_description, afternoon_title, afternoon_description, evening_title, evening_description,
  important_timings, meals, transport, walking_level, stay, weather, dress_code, packing_suggestions,
  accessibility_note, visitor_note, travel_duration
) SELECT
  p.id, 4, 'Souvenir Shopping & Onward Departure', 'Mysore', 'Conclude your memorable stay in Mysore with local craft shopping, checkout, and outbound transfers.',
  'Handicrafts Shopping', 'Visit local co-operative markets to buy traditional souvenirs, regional sweets, or native organic spices.',
  'Check-out & Packing', 'Return to your hotel, pack your bags, clear any local incidentals, and check out from your rooms.',
  'Outbound Transfer', 'Board your private vehicle transfer to the airport or railway station for your onward return journey home.',
  'Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM', 'Complimentary Healthy Breakfast included.', 'AC Private SUV for comfortable road transfers with regular rest stops.',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Standard Comfort Hotel (Fully sanitized rooms, private bathroom, free Wi-Fi, desk space)', 'Clear sky, comfortable morning temperature 21°C, warming up to 26°C by noon.',
  'Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.', 'Walking socks, small daypack for personal belongings, sanitizers, light jacket.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 1 to 2 hours transfer'
FROM public.packages p WHERE p.slug = 'family-mysore-palace'
ON CONFLICT (package_id, day_number) DO UPDATE SET
  title = EXCLUDED.title,
  overview = EXCLUDED.overview,
  morning_description = EXCLUDED.morning_description;
INSERT INTO public.itinerary_days (
  package_id, day_number, title, location, overview,
  morning_title, morning_description, afternoon_title, afternoon_description, evening_title, evening_description,
  important_timings, meals, transport, walking_level, stay, weather, dress_code, packing_suggestions,
  accessibility_note, visitor_note, travel_duration
) SELECT
  p.id, 1, 'Arrival & Settle in at Ontario', 'Ontario', 'Welcome to your yatra. Arrive in Ontario, transfer to your stay, and rest before your sightseeing tour.',
  'Arrival & Check-in', 'Arrive at the nearest transit hub. Meet our coordinator and transfer to your pre-booked stay in Ontario.',
  'Leisure & Rest', 'Check into your hotel room, unpack your luggage, and rest to recover from your flight or train journey.',
  'Orientation Walk', 'Meet your local guide for a small walk around the neighborhood. Receive a detailed brief on local customs.',
  'Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM', 'Welcome Drink & Buffet Dinner included.', 'AC Shuttle Transit for close proximity site transfers and passenger drops.',
  'Moderate Paced (Gentle staircases, guide assistance available)', 'Heritage Boutique Resort (Comfortable rooms, garden paths, active room services)', 'Warm and sunny afternoon, ideal for outdoor sightseeing, average temp 24°C.',
  'Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.', 'Comfortable travel footwear, photo ID, essential personal medication, daypack.',
  'Not recommended for guests requiring wheelchair support due to steep stairs and terrain.', 'Expect moderate physical movement. Wear athletic shoes with excellent grip.', 'Approx. 1 to 2 hours transfer'
FROM public.packages p WHERE p.slug = 'family-niagara-falls'
ON CONFLICT (package_id, day_number) DO UPDATE SET
  title = EXCLUDED.title,
  overview = EXCLUDED.overview,
  morning_description = EXCLUDED.morning_description;
INSERT INTO public.itinerary_days (
  package_id, day_number, title, location, overview,
  morning_title, morning_description, afternoon_title, afternoon_description, evening_title, evening_description,
  important_timings, meals, transport, walking_level, stay, weather, dress_code, packing_suggestions,
  accessibility_note, visitor_note, travel_duration
) SELECT
  p.id, 2, 'Explore Niagara Falls Heritage Centre', 'Ontario', 'Spend your day visiting Niagara Falls Heritage Centre, the primary attraction in Niagara Falls, accompanied by our expert guide.',
  'Guided Tour of Niagara Falls Heritage Centre', 'Early morning visit to Niagara Falls Heritage Centre to avoid crowds. Learn about the heritage and unique history of this landmark.',
  'Local Traditional Lunch', 'Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings.',
  'Evening walk at Niagara Falls Panoramic Viewpoint', 'Stroll around Niagara Falls Panoramic Viewpoint for scenic sunset views. Capture great family photos as the evening lights turn on.',
  'Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM', 'Complimentary Breakfast & Traditional Lunch.', 'AC Private Sedan with professional local driver (includes first-aid kit and bottled water).',
  'Moderate Paced (Gentle staircases, guide assistance available)', 'Lakefront Guest House (Scenic balcony views, hot water, western-style bathrooms)', 'Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.',
  'Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.', 'Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.',
  'Not recommended for guests requiring wheelchair support due to steep stairs and terrain.', 'Expect moderate physical movement. Wear athletic shoes with excellent grip.', 'Approx. 3 to 4 hours local tour'
FROM public.packages p WHERE p.slug = 'family-niagara-falls'
ON CONFLICT (package_id, day_number) DO UPDATE SET
  title = EXCLUDED.title,
  overview = EXCLUDED.overview,
  morning_description = EXCLUDED.morning_description;
INSERT INTO public.itinerary_days (
  package_id, day_number, title, location, overview,
  morning_title, morning_description, afternoon_title, afternoon_description, evening_title, evening_description,
  important_timings, meals, transport, walking_level, stay, weather, dress_code, packing_suggestions,
  accessibility_note, visitor_note, travel_duration
) SELECT
  p.id, 3, 'Excursion to Niagara Falls Local Culture Park', 'Ontario', 'Excursion to Niagara Falls Local Culture Park and surrounding craft villages to experience native arts, handlooms, and culture.',
  'Nature Walk at Niagara Falls Local Culture Park', 'Guided scenic walk near the lake or parks surrounding Niagara Falls Local Culture Park. Enjoy quiet reflection and fresh air.',
  'Local Handloom Visit', 'Visit local cottage industries to see artisans hand-weaving fabrics and crafting traditional wooden toys.',
  'Cultural Dance & Music Show', 'Attend a traditional cultural presentation depicting historical folk tales, followed by dinner.',
  'Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM', 'Breakfast & Special Dinner Buffet.', 'AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).',
  'Moderate Paced (Gentle staircases, guide assistance available)', 'Premium Executive Hotel (AC rooms, elevator access, 24/7 front desk assistance)', 'Perfect travel weather with low humidity and comfortable evening temperature 20°C.',
  'Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.', 'Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.',
  'Not recommended for guests requiring wheelchair support due to steep stairs and terrain.', 'Expect moderate physical movement. Wear athletic shoes with excellent grip.', 'Approx. 3 to 4 hours local tour'
FROM public.packages p WHERE p.slug = 'family-niagara-falls'
ON CONFLICT (package_id, day_number) DO UPDATE SET
  title = EXCLUDED.title,
  overview = EXCLUDED.overview,
  morning_description = EXCLUDED.morning_description;
INSERT INTO public.itinerary_days (
  package_id, day_number, title, location, overview,
  morning_title, morning_description, afternoon_title, afternoon_description, evening_title, evening_description,
  important_timings, meals, transport, walking_level, stay, weather, dress_code, packing_suggestions,
  accessibility_note, visitor_note, travel_duration
) SELECT
  p.id, 4, 'Souvenir Shopping & Onward Departure', 'Ontario', 'Conclude your memorable stay in Ontario with local craft shopping, checkout, and outbound transfers.',
  'Handicrafts Shopping', 'Visit local co-operative markets to buy traditional souvenirs, regional sweets, or native organic spices.',
  'Check-out & Packing', 'Return to your hotel, pack your bags, clear any local incidentals, and check out from your rooms.',
  'Outbound Transfer', 'Board your private vehicle transfer to the airport or railway station for your onward return journey home.',
  'Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM', 'Complimentary Healthy Breakfast included.', 'AC Private SUV for comfortable road transfers with regular rest stops.',
  'Moderate Paced (Gentle staircases, guide assistance available)', 'Standard Comfort Hotel (Fully sanitized rooms, private bathroom, free Wi-Fi, desk space)', 'Clear sky, comfortable morning temperature 21°C, warming up to 26°C by noon.',
  'Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.', 'Walking socks, small daypack for personal belongings, sanitizers, light jacket.',
  'Not recommended for guests requiring wheelchair support due to steep stairs and terrain.', 'Expect moderate physical movement. Wear athletic shoes with excellent grip.', 'Approx. 1 to 2 hours transfer'
FROM public.packages p WHERE p.slug = 'family-niagara-falls'
ON CONFLICT (package_id, day_number) DO UPDATE SET
  title = EXCLUDED.title,
  overview = EXCLUDED.overview,
  morning_description = EXCLUDED.morning_description;
INSERT INTO public.itinerary_days (
  package_id, day_number, title, location, overview,
  morning_title, morning_description, afternoon_title, afternoon_description, evening_title, evening_description,
  important_timings, meals, transport, walking_level, stay, weather, dress_code, packing_suggestions,
  accessibility_note, visitor_note, travel_duration
) SELECT
  p.id, 1, 'Arrival & Settle in at Ladakh', 'Ladakh', 'Welcome to your yatra. Arrive in Ladakh, transfer to your stay, and rest before your sightseeing tour.',
  'Arrival & Check-in', 'Arrive at the nearest transit hub. Meet our coordinator and transfer to your pre-booked stay in Ladakh.',
  'Leisure & Rest', 'Check into your hotel room, unpack your luggage, and rest to recover from your flight or train journey.',
  'Orientation Walk', 'Meet your local guide for a small walk around the neighborhood. Receive a detailed brief on local customs.',
  'Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM', 'Welcome Drink & Buffet Dinner included.', 'AC Shuttle Transit for close proximity site transfers and passenger drops.',
  'Moderate Paced (Gentle staircases, guide assistance available)', 'Heritage Boutique Resort (Comfortable rooms, garden paths, active room services)', 'Warm and sunny afternoon, ideal for outdoor sightseeing, average temp 24°C.',
  'Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.', 'Comfortable travel footwear, photo ID, essential personal medication, daypack.',
  'Not recommended for guests requiring wheelchair support due to steep stairs and terrain.', 'Expect moderate physical movement. Wear athletic shoes with excellent grip.', 'Approx. 1 to 2 hours transfer'
FROM public.packages p WHERE p.slug = 'family-nubra-valley'
ON CONFLICT (package_id, day_number) DO UPDATE SET
  title = EXCLUDED.title,
  overview = EXCLUDED.overview,
  morning_description = EXCLUDED.morning_description;
INSERT INTO public.itinerary_days (
  package_id, day_number, title, location, overview,
  morning_title, morning_description, afternoon_title, afternoon_description, evening_title, evening_description,
  important_timings, meals, transport, walking_level, stay, weather, dress_code, packing_suggestions,
  accessibility_note, visitor_note, travel_duration
) SELECT
  p.id, 2, 'Explore Nubra Valley Heritage Centre', 'Ladakh', 'Spend your day visiting Nubra Valley Heritage Centre, the primary attraction in Nubra Valley, accompanied by our expert guide.',
  'Guided Tour of Nubra Valley Heritage Centre', 'Early morning visit to Nubra Valley Heritage Centre to avoid crowds. Learn about the heritage and unique history of this landmark.',
  'Local Traditional Lunch', 'Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings.',
  'Evening walk at Nubra Valley Panoramic Viewpoint', 'Stroll around Nubra Valley Panoramic Viewpoint for scenic sunset views. Capture great family photos as the evening lights turn on.',
  'Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM', 'Complimentary Breakfast & Traditional Lunch.', 'AC Private Sedan with professional local driver (includes first-aid kit and bottled water).',
  'Moderate Paced (Gentle staircases, guide assistance available)', 'Lakefront Guest House (Scenic balcony views, hot water, western-style bathrooms)', 'Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.',
  'Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.', 'Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.',
  'Not recommended for guests requiring wheelchair support due to steep stairs and terrain.', 'Expect moderate physical movement. Wear athletic shoes with excellent grip.', 'Approx. 3 to 4 hours local tour'
FROM public.packages p WHERE p.slug = 'family-nubra-valley'
ON CONFLICT (package_id, day_number) DO UPDATE SET
  title = EXCLUDED.title,
  overview = EXCLUDED.overview,
  morning_description = EXCLUDED.morning_description;
INSERT INTO public.itinerary_days (
  package_id, day_number, title, location, overview,
  morning_title, morning_description, afternoon_title, afternoon_description, evening_title, evening_description,
  important_timings, meals, transport, walking_level, stay, weather, dress_code, packing_suggestions,
  accessibility_note, visitor_note, travel_duration
) SELECT
  p.id, 3, 'Excursion to Nubra Valley Local Culture Park', 'Ladakh', 'Excursion to Nubra Valley Local Culture Park and surrounding craft villages to experience native arts, handlooms, and culture.',
  'Nature Walk at Nubra Valley Local Culture Park', 'Guided scenic walk near the lake or parks surrounding Nubra Valley Local Culture Park. Enjoy quiet reflection and fresh air.',
  'Local Handloom Visit', 'Visit local cottage industries to see artisans hand-weaving fabrics and crafting traditional wooden toys.',
  'Cultural Dance & Music Show', 'Attend a traditional cultural presentation depicting historical folk tales, followed by dinner.',
  'Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM', 'Breakfast & Special Dinner Buffet.', 'AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).',
  'Moderate Paced (Gentle staircases, guide assistance available)', 'Premium Executive Hotel (AC rooms, elevator access, 24/7 front desk assistance)', 'Perfect travel weather with low humidity and comfortable evening temperature 20°C.',
  'Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.', 'Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.',
  'Not recommended for guests requiring wheelchair support due to steep stairs and terrain.', 'Expect moderate physical movement. Wear athletic shoes with excellent grip.', 'Approx. 3 to 4 hours local tour'
FROM public.packages p WHERE p.slug = 'family-nubra-valley'
ON CONFLICT (package_id, day_number) DO UPDATE SET
  title = EXCLUDED.title,
  overview = EXCLUDED.overview,
  morning_description = EXCLUDED.morning_description;
INSERT INTO public.itinerary_days (
  package_id, day_number, title, location, overview,
  morning_title, morning_description, afternoon_title, afternoon_description, evening_title, evening_description,
  important_timings, meals, transport, walking_level, stay, weather, dress_code, packing_suggestions,
  accessibility_note, visitor_note, travel_duration
) SELECT
  p.id, 4, 'Souvenir Shopping & Onward Departure', 'Ladakh', 'Conclude your memorable stay in Ladakh with local craft shopping, checkout, and outbound transfers.',
  'Handicrafts Shopping', 'Visit local co-operative markets to buy traditional souvenirs, regional sweets, or native organic spices.',
  'Check-out & Packing', 'Return to your hotel, pack your bags, clear any local incidentals, and check out from your rooms.',
  'Outbound Transfer', 'Board your private vehicle transfer to the airport or railway station for your onward return journey home.',
  'Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM', 'Complimentary Healthy Breakfast included.', 'AC Private SUV for comfortable road transfers with regular rest stops.',
  'Moderate Paced (Gentle staircases, guide assistance available)', 'Standard Comfort Hotel (Fully sanitized rooms, private bathroom, free Wi-Fi, desk space)', 'Clear sky, comfortable morning temperature 21°C, warming up to 26°C by noon.',
  'Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.', 'Walking socks, small daypack for personal belongings, sanitizers, light jacket.',
  'Not recommended for guests requiring wheelchair support due to steep stairs and terrain.', 'Expect moderate physical movement. Wear athletic shoes with excellent grip.', 'Approx. 1 to 2 hours transfer'
FROM public.packages p WHERE p.slug = 'family-nubra-valley'
ON CONFLICT (package_id, day_number) DO UPDATE SET
  title = EXCLUDED.title,
  overview = EXCLUDED.overview,
  morning_description = EXCLUDED.morning_description;
INSERT INTO public.itinerary_days (
  package_id, day_number, title, location, overview,
  morning_title, morning_description, afternoon_title, afternoon_description, evening_title, evening_description,
  important_timings, meals, transport, walking_level, stay, weather, dress_code, packing_suggestions,
  accessibility_note, visitor_note, travel_duration
) SELECT
  p.id, 1, 'Arrival & Settle in at Dubai', 'Dubai', 'Welcome to your yatra. Arrive in Dubai, transfer to your stay, and rest before your sightseeing tour.',
  'Arrival & Check-in', 'Arrive at the nearest transit hub. Meet our coordinator and transfer to your pre-booked stay in Dubai.',
  'Leisure & Rest', 'Check into your hotel room, unpack your luggage, and rest to recover from your flight or train journey.',
  'Orientation Walk', 'Meet your local guide for a small walk around the neighborhood. Receive a detailed brief on local customs.',
  'Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM', 'Welcome Drink & Buffet Dinner included.', 'AC Shuttle Transit for close proximity site transfers and passenger drops.',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Heritage Boutique Resort (Comfortable rooms, garden paths, active room services)', 'Warm and sunny afternoon, ideal for outdoor sightseeing, average temp 24°C.',
  'Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.', 'Comfortable travel footwear, photo ID, essential personal medication, daypack.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 1 to 2 hours transfer'
FROM public.packages p WHERE p.slug = 'family-palm-jumeirah'
ON CONFLICT (package_id, day_number) DO UPDATE SET
  title = EXCLUDED.title,
  overview = EXCLUDED.overview,
  morning_description = EXCLUDED.morning_description;
INSERT INTO public.itinerary_days (
  package_id, day_number, title, location, overview,
  morning_title, morning_description, afternoon_title, afternoon_description, evening_title, evening_description,
  important_timings, meals, transport, walking_level, stay, weather, dress_code, packing_suggestions,
  accessibility_note, visitor_note, travel_duration
) SELECT
  p.id, 2, 'Explore Palm Jumeirah Heritage Centre', 'Dubai', 'Spend your day visiting Palm Jumeirah Heritage Centre, the primary attraction in Palm Jumeirah, accompanied by our expert guide.',
  'Guided Tour of Palm Jumeirah Heritage Centre', 'Early morning visit to Palm Jumeirah Heritage Centre to avoid crowds. Learn about the heritage and unique history of this landmark.',
  'Local Traditional Lunch', 'Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings.',
  'Evening walk at Palm Jumeirah Panoramic Viewpoint', 'Stroll around Palm Jumeirah Panoramic Viewpoint for scenic sunset views. Capture great family photos as the evening lights turn on.',
  'Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM', 'Complimentary Breakfast & Traditional Lunch.', 'AC Private Sedan with professional local driver (includes first-aid kit and bottled water).',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Lakefront Guest House (Scenic balcony views, hot water, western-style bathrooms)', 'Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.',
  'Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.', 'Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 3 to 4 hours local tour'
FROM public.packages p WHERE p.slug = 'family-palm-jumeirah'
ON CONFLICT (package_id, day_number) DO UPDATE SET
  title = EXCLUDED.title,
  overview = EXCLUDED.overview,
  morning_description = EXCLUDED.morning_description;
INSERT INTO public.itinerary_days (
  package_id, day_number, title, location, overview,
  morning_title, morning_description, afternoon_title, afternoon_description, evening_title, evening_description,
  important_timings, meals, transport, walking_level, stay, weather, dress_code, packing_suggestions,
  accessibility_note, visitor_note, travel_duration
) SELECT
  p.id, 3, 'Excursion to Palm Jumeirah Local Culture Park', 'Dubai', 'Excursion to Palm Jumeirah Local Culture Park and surrounding craft villages to experience native arts, handlooms, and culture.',
  'Nature Walk at Palm Jumeirah Local Culture Park', 'Guided scenic walk near the lake or parks surrounding Palm Jumeirah Local Culture Park. Enjoy quiet reflection and fresh air.',
  'Local Handloom Visit', 'Visit local cottage industries to see artisans hand-weaving fabrics and crafting traditional wooden toys.',
  'Cultural Dance & Music Show', 'Attend a traditional cultural presentation depicting historical folk tales, followed by dinner.',
  'Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM', 'Breakfast & Special Dinner Buffet.', 'AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Premium Executive Hotel (AC rooms, elevator access, 24/7 front desk assistance)', 'Perfect travel weather with low humidity and comfortable evening temperature 20°C.',
  'Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.', 'Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 3 to 4 hours local tour'
FROM public.packages p WHERE p.slug = 'family-palm-jumeirah'
ON CONFLICT (package_id, day_number) DO UPDATE SET
  title = EXCLUDED.title,
  overview = EXCLUDED.overview,
  morning_description = EXCLUDED.morning_description;
INSERT INTO public.itinerary_days (
  package_id, day_number, title, location, overview,
  morning_title, morning_description, afternoon_title, afternoon_description, evening_title, evening_description,
  important_timings, meals, transport, walking_level, stay, weather, dress_code, packing_suggestions,
  accessibility_note, visitor_note, travel_duration
) SELECT
  p.id, 4, 'Souvenir Shopping & Onward Departure', 'Dubai', 'Conclude your memorable stay in Dubai with local craft shopping, checkout, and outbound transfers.',
  'Handicrafts Shopping', 'Visit local co-operative markets to buy traditional souvenirs, regional sweets, or native organic spices.',
  'Check-out & Packing', 'Return to your hotel, pack your bags, clear any local incidentals, and check out from your rooms.',
  'Outbound Transfer', 'Board your private vehicle transfer to the airport or railway station for your onward return journey home.',
  'Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM', 'Complimentary Healthy Breakfast included.', 'AC Private SUV for comfortable road transfers with regular rest stops.',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Standard Comfort Hotel (Fully sanitized rooms, private bathroom, free Wi-Fi, desk space)', 'Clear sky, comfortable morning temperature 21°C, warming up to 26°C by noon.',
  'Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.', 'Walking socks, small daypack for personal belongings, sanitizers, light jacket.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 1 to 2 hours transfer'
FROM public.packages p WHERE p.slug = 'family-palm-jumeirah'
ON CONFLICT (package_id, day_number) DO UPDATE SET
  title = EXCLUDED.title,
  overview = EXCLUDED.overview,
  morning_description = EXCLUDED.morning_description;
END $$;