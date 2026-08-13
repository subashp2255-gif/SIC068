DO $$
BEGIN
INSERT INTO public.itinerary_days (
  package_id, day_number, title, location, overview,
  morning_title, morning_description, afternoon_title, afternoon_description, evening_title, evening_description,
  important_timings, meals, transport, walking_level, stay, weather, dress_code, packing_suggestions,
  accessibility_note, visitor_note, travel_duration
) SELECT
  p.id, 1, 'Arrival & Settle in at Goa / Karnataka', 'Goa / Karnataka', 'Welcome to your yatra. Arrive in Goa / Karnataka, transfer to your stay, and rest before your sightseeing tour.',
  'Arrival & Check-in', 'Arrive at the nearest transit hub. Meet our coordinator and transfer to your pre-booked stay in Goa / Karnataka.',
  'Leisure & Rest', 'Check into your hotel room, unpack your luggage, and rest to recover from your flight or train journey.',
  'Orientation Walk', 'Meet your local guide for a small walk around the neighborhood. Receive a detailed brief on local customs.',
  'Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM', 'Welcome Drink & Buffet Dinner included.', 'AC Shuttle Transit for close proximity site transfers and passenger drops.',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Heritage Boutique Resort (Comfortable rooms, garden paths, active room services)', 'Warm and sunny afternoon, ideal for outdoor sightseeing, average temp 24°C.',
  'Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.', 'Comfortable travel footwear, photo ID, essential personal medication, daypack.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 1 to 2 hours transfer'
FROM public.packages p WHERE p.slug = 'family-dudhsagar-falls'
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
  p.id, 2, 'Explore Dudhsagar Falls Heritage Centre', 'Goa / Karnataka', 'Spend your day visiting Dudhsagar Falls Heritage Centre, the primary attraction in Dudhsagar Falls, accompanied by our expert guide.',
  'Guided Tour of Dudhsagar Falls Heritage Centre', 'Early morning visit to Dudhsagar Falls Heritage Centre to avoid crowds. Learn about the heritage and unique history of this landmark.',
  'Local Traditional Lunch', 'Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings.',
  'Evening walk at Dudhsagar Falls Panoramic Viewpoint', 'Stroll around Dudhsagar Falls Panoramic Viewpoint for scenic sunset views. Capture great family photos as the evening lights turn on.',
  'Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM', 'Complimentary Breakfast & Traditional Lunch.', 'AC Private Sedan with professional local driver (includes first-aid kit and bottled water).',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Lakefront Guest House (Scenic balcony views, hot water, western-style bathrooms)', 'Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.',
  'Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.', 'Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 3 to 4 hours local tour'
FROM public.packages p WHERE p.slug = 'family-dudhsagar-falls'
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
  p.id, 3, 'Excursion to Dudhsagar Falls Local Culture Park', 'Goa / Karnataka', 'Excursion to Dudhsagar Falls Local Culture Park and surrounding craft villages to experience native arts, handlooms, and culture.',
  'Nature Walk at Dudhsagar Falls Local Culture Park', 'Guided scenic walk near the lake or parks surrounding Dudhsagar Falls Local Culture Park. Enjoy quiet reflection and fresh air.',
  'Local Handloom Visit', 'Visit local cottage industries to see artisans hand-weaving fabrics and crafting traditional wooden toys.',
  'Cultural Dance & Music Show', 'Attend a traditional cultural presentation depicting historical folk tales, followed by dinner.',
  'Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM', 'Breakfast & Special Dinner Buffet.', 'AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Premium Executive Hotel (AC rooms, elevator access, 24/7 front desk assistance)', 'Perfect travel weather with low humidity and comfortable evening temperature 20°C.',
  'Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.', 'Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 3 to 4 hours local tour'
FROM public.packages p WHERE p.slug = 'family-dudhsagar-falls'
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
  p.id, 4, 'Souvenir Shopping & Onward Departure', 'Goa / Karnataka', 'Conclude your memorable stay in Goa / Karnataka with local craft shopping, checkout, and outbound transfers.',
  'Handicrafts Shopping', 'Visit local co-operative markets to buy traditional souvenirs, regional sweets, or native organic spices.',
  'Check-out & Packing', 'Return to your hotel, pack your bags, clear any local incidentals, and check out from your rooms.',
  'Outbound Transfer', 'Board your private vehicle transfer to the airport or railway station for your onward return journey home.',
  'Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM', 'Complimentary Healthy Breakfast included.', 'AC Private SUV for comfortable road transfers with regular rest stops.',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Standard Comfort Hotel (Fully sanitized rooms, private bathroom, free Wi-Fi, desk space)', 'Clear sky, comfortable morning temperature 21°C, warming up to 26°C by noon.',
  'Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.', 'Walking socks, small daypack for personal belongings, sanitizers, light jacket.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 1 to 2 hours transfer'
FROM public.packages p WHERE p.slug = 'family-dudhsagar-falls'
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
  p.id, 1, 'Arrival & Settle in at Paris', 'Paris', 'Welcome to your yatra. Arrive in Paris, transfer to your stay, and rest before your sightseeing tour.',
  'Arrival & Check-in', 'Arrive at the nearest transit hub. Meet our coordinator and transfer to your pre-booked stay in Paris.',
  'Leisure & Rest', 'Check into your hotel room, unpack your luggage, and rest to recover from your flight or train journey.',
  'Orientation Walk', 'Meet your local guide for a small walk around the neighborhood. Receive a detailed brief on local customs.',
  'Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM', 'Welcome Drink & Buffet Dinner included.', 'AC Shuttle Transit for close proximity site transfers and passenger drops.',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Heritage Boutique Resort (Comfortable rooms, garden paths, active room services)', 'Warm and sunny afternoon, ideal for outdoor sightseeing, average temp 24°C.',
  'Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.', 'Comfortable travel footwear, photo ID, essential personal medication, daypack.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 1 to 2 hours transfer'
FROM public.packages p WHERE p.slug = 'family-eiffel-tower'
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
  p.id, 2, 'Explore Eiffel Tower Heritage Centre', 'Paris', 'Spend your day visiting Eiffel Tower Heritage Centre, the primary attraction in Eiffel Tower, accompanied by our expert guide.',
  'Guided Tour of Eiffel Tower Heritage Centre', 'Early morning visit to Eiffel Tower Heritage Centre to avoid crowds. Learn about the heritage and unique history of this landmark.',
  'Local Traditional Lunch', 'Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings.',
  'Evening walk at Eiffel Tower Panoramic Viewpoint', 'Stroll around Eiffel Tower Panoramic Viewpoint for scenic sunset views. Capture great family photos as the evening lights turn on.',
  'Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM', 'Complimentary Breakfast & Traditional Lunch.', 'AC Private Sedan with professional local driver (includes first-aid kit and bottled water).',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Lakefront Guest House (Scenic balcony views, hot water, western-style bathrooms)', 'Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.',
  'Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.', 'Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 3 to 4 hours local tour'
FROM public.packages p WHERE p.slug = 'family-eiffel-tower'
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
  p.id, 3, 'Excursion to Eiffel Tower Local Culture Park', 'Paris', 'Excursion to Eiffel Tower Local Culture Park and surrounding craft villages to experience native arts, handlooms, and culture.',
  'Nature Walk at Eiffel Tower Local Culture Park', 'Guided scenic walk near the lake or parks surrounding Eiffel Tower Local Culture Park. Enjoy quiet reflection and fresh air.',
  'Local Handloom Visit', 'Visit local cottage industries to see artisans hand-weaving fabrics and crafting traditional wooden toys.',
  'Cultural Dance & Music Show', 'Attend a traditional cultural presentation depicting historical folk tales, followed by dinner.',
  'Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM', 'Breakfast & Special Dinner Buffet.', 'AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Premium Executive Hotel (AC rooms, elevator access, 24/7 front desk assistance)', 'Perfect travel weather with low humidity and comfortable evening temperature 20°C.',
  'Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.', 'Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 3 to 4 hours local tour'
FROM public.packages p WHERE p.slug = 'family-eiffel-tower'
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
  p.id, 4, 'Souvenir Shopping & Onward Departure', 'Paris', 'Conclude your memorable stay in Paris with local craft shopping, checkout, and outbound transfers.',
  'Handicrafts Shopping', 'Visit local co-operative markets to buy traditional souvenirs, regional sweets, or native organic spices.',
  'Check-out & Packing', 'Return to your hotel, pack your bags, clear any local incidentals, and check out from your rooms.',
  'Outbound Transfer', 'Board your private vehicle transfer to the airport or railway station for your onward return journey home.',
  'Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM', 'Complimentary Healthy Breakfast included.', 'AC Private SUV for comfortable road transfers with regular rest stops.',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Standard Comfort Hotel (Fully sanitized rooms, private bathroom, free Wi-Fi, desk space)', 'Clear sky, comfortable morning temperature 21°C, warming up to 26°C by noon.',
  'Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.', 'Walking socks, small daypack for personal belongings, sanitizers, light jacket.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 1 to 2 hours transfer'
FROM public.packages p WHERE p.slug = 'family-eiffel-tower'
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
  p.id, 1, 'Arrival & Settle in at Singapore', 'Singapore', 'Welcome to your yatra. Arrive in Singapore, transfer to your stay, and rest before your sightseeing tour.',
  'Arrival & Check-in', 'Arrive at the nearest transit hub. Meet our coordinator and transfer to your pre-booked stay in Singapore.',
  'Leisure & Rest', 'Check into your hotel room, unpack your luggage, and rest to recover from your flight or train journey.',
  'Orientation Walk', 'Meet your local guide for a small walk around the neighborhood. Receive a detailed brief on local customs.',
  'Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM', 'Welcome Drink & Buffet Dinner included.', 'AC Shuttle Transit for close proximity site transfers and passenger drops.',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Heritage Boutique Resort (Comfortable rooms, garden paths, active room services)', 'Warm and sunny afternoon, ideal for outdoor sightseeing, average temp 24°C.',
  'Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.', 'Comfortable travel footwear, photo ID, essential personal medication, daypack.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 1 to 2 hours transfer'
FROM public.packages p WHERE p.slug = 'family-gardens-by-the-bay'
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
  p.id, 2, 'Explore Gardens by the Bay Heritage Centre', 'Singapore', 'Spend your day visiting Gardens by the Bay Heritage Centre, the primary attraction in Gardens by the Bay, accompanied by our expert guide.',
  'Guided Tour of Gardens by the Bay Heritage Centre', 'Early morning visit to Gardens by the Bay Heritage Centre to avoid crowds. Learn about the heritage and unique history of this landmark.',
  'Local Traditional Lunch', 'Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings.',
  'Evening walk at Gardens by the Bay Panoramic Viewpoint', 'Stroll around Gardens by the Bay Panoramic Viewpoint for scenic sunset views. Capture great family photos as the evening lights turn on.',
  'Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM', 'Complimentary Breakfast & Traditional Lunch.', 'AC Private Sedan with professional local driver (includes first-aid kit and bottled water).',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Lakefront Guest House (Scenic balcony views, hot water, western-style bathrooms)', 'Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.',
  'Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.', 'Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 3 to 4 hours local tour'
FROM public.packages p WHERE p.slug = 'family-gardens-by-the-bay'
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
  p.id, 3, 'Excursion to Gardens by the Bay Local Culture Park', 'Singapore', 'Excursion to Gardens by the Bay Local Culture Park and surrounding craft villages to experience native arts, handlooms, and culture.',
  'Nature Walk at Gardens by the Bay Local Culture Park', 'Guided scenic walk near the lake or parks surrounding Gardens by the Bay Local Culture Park. Enjoy quiet reflection and fresh air.',
  'Local Handloom Visit', 'Visit local cottage industries to see artisans hand-weaving fabrics and crafting traditional wooden toys.',
  'Cultural Dance & Music Show', 'Attend a traditional cultural presentation depicting historical folk tales, followed by dinner.',
  'Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM', 'Breakfast & Special Dinner Buffet.', 'AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Premium Executive Hotel (AC rooms, elevator access, 24/7 front desk assistance)', 'Perfect travel weather with low humidity and comfortable evening temperature 20°C.',
  'Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.', 'Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 3 to 4 hours local tour'
FROM public.packages p WHERE p.slug = 'family-gardens-by-the-bay'
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
FROM public.packages p WHERE p.slug = 'family-gardens-by-the-bay'
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
  p.id, 1, 'Arrival & Settle in at Les Diablerets', 'Les Diablerets', 'Welcome to your yatra. Arrive in Les Diablerets, transfer to your stay, and rest before your sightseeing tour.',
  'Arrival & Check-in', 'Arrive at the nearest transit hub. Meet our coordinator and transfer to your pre-booked stay in Les Diablerets.',
  'Leisure & Rest', 'Check into your hotel room, unpack your luggage, and rest to recover from your flight or train journey.',
  'Orientation Walk', 'Meet your local guide for a small walk around the neighborhood. Receive a detailed brief on local customs.',
  'Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM', 'Welcome Drink & Buffet Dinner included.', 'AC Shuttle Transit for close proximity site transfers and passenger drops.',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Heritage Boutique Resort (Comfortable rooms, garden paths, active room services)', 'Warm and sunny afternoon, ideal for outdoor sightseeing, average temp 24°C.',
  'Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.', 'Comfortable travel footwear, photo ID, essential personal medication, daypack.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 1 to 2 hours transfer'
FROM public.packages p WHERE p.slug = 'family-glacier-3000'
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
  p.id, 2, 'Explore Glacier 3000 Heritage Centre', 'Les Diablerets', 'Spend your day visiting Glacier 3000 Heritage Centre, the primary attraction in Glacier 3000, accompanied by our expert guide.',
  'Guided Tour of Glacier 3000 Heritage Centre', 'Early morning visit to Glacier 3000 Heritage Centre to avoid crowds. Learn about the heritage and unique history of this landmark.',
  'Local Traditional Lunch', 'Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings.',
  'Evening walk at Glacier 3000 Panoramic Viewpoint', 'Stroll around Glacier 3000 Panoramic Viewpoint for scenic sunset views. Capture great family photos as the evening lights turn on.',
  'Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM', 'Complimentary Breakfast & Traditional Lunch.', 'AC Private Sedan with professional local driver (includes first-aid kit and bottled water).',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Lakefront Guest House (Scenic balcony views, hot water, western-style bathrooms)', 'Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.',
  'Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.', 'Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 3 to 4 hours local tour'
FROM public.packages p WHERE p.slug = 'family-glacier-3000'
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
  p.id, 3, 'Excursion to Glacier 3000 Local Culture Park', 'Les Diablerets', 'Excursion to Glacier 3000 Local Culture Park and surrounding craft villages to experience native arts, handlooms, and culture.',
  'Nature Walk at Glacier 3000 Local Culture Park', 'Guided scenic walk near the lake or parks surrounding Glacier 3000 Local Culture Park. Enjoy quiet reflection and fresh air.',
  'Local Handloom Visit', 'Visit local cottage industries to see artisans hand-weaving fabrics and crafting traditional wooden toys.',
  'Cultural Dance & Music Show', 'Attend a traditional cultural presentation depicting historical folk tales, followed by dinner.',
  'Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM', 'Breakfast & Special Dinner Buffet.', 'AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Premium Executive Hotel (AC rooms, elevator access, 24/7 front desk assistance)', 'Perfect travel weather with low humidity and comfortable evening temperature 20°C.',
  'Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.', 'Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 3 to 4 hours local tour'
FROM public.packages p WHERE p.slug = 'family-glacier-3000'
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
  p.id, 4, 'Souvenir Shopping & Onward Departure', 'Les Diablerets', 'Conclude your memorable stay in Les Diablerets with local craft shopping, checkout, and outbound transfers.',
  'Handicrafts Shopping', 'Visit local co-operative markets to buy traditional souvenirs, regional sweets, or native organic spices.',
  'Check-out & Packing', 'Return to your hotel, pack your bags, clear any local incidentals, and check out from your rooms.',
  'Outbound Transfer', 'Board your private vehicle transfer to the airport or railway station for your onward return journey home.',
  'Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM', 'Complimentary Healthy Breakfast included.', 'AC Private SUV for comfortable road transfers with regular rest stops.',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Standard Comfort Hotel (Fully sanitized rooms, private bathroom, free Wi-Fi, desk space)', 'Clear sky, comfortable morning temperature 21°C, warming up to 26°C by noon.',
  'Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.', 'Walking socks, small daypack for personal belongings, sanitizers, light jacket.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 1 to 2 hours transfer'
FROM public.packages p WHERE p.slug = 'family-glacier-3000'
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
  p.id, 1, 'Arrival & Settle in at Vijayapura', 'Vijayapura', 'Welcome to your yatra. Arrive in Vijayapura, transfer to your stay, and rest before your sightseeing tour.',
  'Arrival & Check-in', 'Arrive at the nearest transit hub. Meet our coordinator and transfer to your pre-booked stay in Vijayapura.',
  'Leisure & Rest', 'Check into your hotel room, unpack your luggage, and rest to recover from your flight or train journey.',
  'Orientation Walk', 'Meet your local guide for a small walk around the neighborhood. Receive a detailed brief on local customs.',
  'Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM', 'Welcome Drink & Buffet Dinner included.', 'AC Shuttle Transit for close proximity site transfers and passenger drops.',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Heritage Boutique Resort (Comfortable rooms, garden paths, active room services)', 'Warm and sunny afternoon, ideal for outdoor sightseeing, average temp 24°C.',
  'Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.', 'Comfortable travel footwear, photo ID, essential personal medication, daypack.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 1 to 2 hours transfer'
FROM public.packages p WHERE p.slug = 'family-gol-gumbaz'
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
  p.id, 2, 'Explore Gol Gumbaz Heritage Centre', 'Vijayapura', 'Spend your day visiting Gol Gumbaz Heritage Centre, the primary attraction in Gol Gumbaz, accompanied by our expert guide.',
  'Guided Tour of Gol Gumbaz Heritage Centre', 'Early morning visit to Gol Gumbaz Heritage Centre to avoid crowds. Learn about the heritage and unique history of this landmark.',
  'Local Traditional Lunch', 'Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings.',
  'Evening walk at Gol Gumbaz Panoramic Viewpoint', 'Stroll around Gol Gumbaz Panoramic Viewpoint for scenic sunset views. Capture great family photos as the evening lights turn on.',
  'Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM', 'Complimentary Breakfast & Traditional Lunch.', 'AC Private Sedan with professional local driver (includes first-aid kit and bottled water).',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Lakefront Guest House (Scenic balcony views, hot water, western-style bathrooms)', 'Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.',
  'Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.', 'Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 3 to 4 hours local tour'
FROM public.packages p WHERE p.slug = 'family-gol-gumbaz'
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
  p.id, 3, 'Excursion to Gol Gumbaz Local Culture Park', 'Vijayapura', 'Excursion to Gol Gumbaz Local Culture Park and surrounding craft villages to experience native arts, handlooms, and culture.',
  'Nature Walk at Gol Gumbaz Local Culture Park', 'Guided scenic walk near the lake or parks surrounding Gol Gumbaz Local Culture Park. Enjoy quiet reflection and fresh air.',
  'Local Handloom Visit', 'Visit local cottage industries to see artisans hand-weaving fabrics and crafting traditional wooden toys.',
  'Cultural Dance & Music Show', 'Attend a traditional cultural presentation depicting historical folk tales, followed by dinner.',
  'Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM', 'Breakfast & Special Dinner Buffet.', 'AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Premium Executive Hotel (AC rooms, elevator access, 24/7 front desk assistance)', 'Perfect travel weather with low humidity and comfortable evening temperature 20°C.',
  'Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.', 'Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 3 to 4 hours local tour'
FROM public.packages p WHERE p.slug = 'family-gol-gumbaz'
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
  p.id, 4, 'Souvenir Shopping & Onward Departure', 'Vijayapura', 'Conclude your memorable stay in Vijayapura with local craft shopping, checkout, and outbound transfers.',
  'Handicrafts Shopping', 'Visit local co-operative markets to buy traditional souvenirs, regional sweets, or native organic spices.',
  'Check-out & Packing', 'Return to your hotel, pack your bags, clear any local incidentals, and check out from your rooms.',
  'Outbound Transfer', 'Board your private vehicle transfer to the airport or railway station for your onward return journey home.',
  'Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM', 'Complimentary Healthy Breakfast included.', 'AC Private SUV for comfortable road transfers with regular rest stops.',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Standard Comfort Hotel (Fully sanitized rooms, private bathroom, free Wi-Fi, desk space)', 'Clear sky, comfortable morning temperature 21°C, warming up to 26°C by noon.',
  'Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.', 'Walking socks, small daypack for personal belongings, sanitizers, light jacket.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 1 to 2 hours transfer'
FROM public.packages p WHERE p.slug = 'family-gol-gumbaz'
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
  p.id, 1, 'Arrival & Settle in at Vijayanagara', 'Vijayanagara', 'Welcome to your yatra. Arrive in Vijayanagara, transfer to your stay, and rest before your sightseeing tour.',
  'Arrival & Check-in', 'Arrive at the nearest transit hub. Meet our coordinator and transfer to your pre-booked stay in Vijayanagara.',
  'Leisure & Rest', 'Check into your hotel room, unpack your luggage, and rest to recover from your flight or train journey.',
  'Orientation Walk', 'Meet your local guide for a small walk around the neighborhood. Receive a detailed brief on local customs.',
  'Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM', 'Welcome Drink & Buffet Dinner included.', 'AC Shuttle Transit for close proximity site transfers and passenger drops.',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Heritage Boutique Resort (Comfortable rooms, garden paths, active room services)', 'Warm and sunny afternoon, ideal for outdoor sightseeing, average temp 24°C.',
  'Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.', 'Comfortable travel footwear, photo ID, essential personal medication, daypack.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 1 to 2 hours transfer'
FROM public.packages p WHERE p.slug = 'family-hampi-monuments'
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
  p.id, 2, 'Explore Hampi Monuments Heritage Centre', 'Vijayanagara', 'Spend your day visiting Hampi Monuments Heritage Centre, the primary attraction in Hampi Monuments, accompanied by our expert guide.',
  'Guided Tour of Hampi Monuments Heritage Centre', 'Early morning visit to Hampi Monuments Heritage Centre to avoid crowds. Learn about the heritage and unique history of this landmark.',
  'Local Traditional Lunch', 'Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings.',
  'Evening walk at Hampi Monuments Panoramic Viewpoint', 'Stroll around Hampi Monuments Panoramic Viewpoint for scenic sunset views. Capture great family photos as the evening lights turn on.',
  'Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM', 'Complimentary Breakfast & Traditional Lunch.', 'AC Private Sedan with professional local driver (includes first-aid kit and bottled water).',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Lakefront Guest House (Scenic balcony views, hot water, western-style bathrooms)', 'Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.',
  'Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.', 'Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 3 to 4 hours local tour'
FROM public.packages p WHERE p.slug = 'family-hampi-monuments'
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
  p.id, 3, 'Excursion to Hampi Monuments Local Culture Park', 'Vijayanagara', 'Excursion to Hampi Monuments Local Culture Park and surrounding craft villages to experience native arts, handlooms, and culture.',
  'Nature Walk at Hampi Monuments Local Culture Park', 'Guided scenic walk near the lake or parks surrounding Hampi Monuments Local Culture Park. Enjoy quiet reflection and fresh air.',
  'Local Handloom Visit', 'Visit local cottage industries to see artisans hand-weaving fabrics and crafting traditional wooden toys.',
  'Cultural Dance & Music Show', 'Attend a traditional cultural presentation depicting historical folk tales, followed by dinner.',
  'Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM', 'Breakfast & Special Dinner Buffet.', 'AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Premium Executive Hotel (AC rooms, elevator access, 24/7 front desk assistance)', 'Perfect travel weather with low humidity and comfortable evening temperature 20°C.',
  'Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.', 'Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 3 to 4 hours local tour'
FROM public.packages p WHERE p.slug = 'family-hampi-monuments'
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
  p.id, 4, 'Souvenir Shopping & Onward Departure', 'Vijayanagara', 'Conclude your memorable stay in Vijayanagara with local craft shopping, checkout, and outbound transfers.',
  'Handicrafts Shopping', 'Visit local co-operative markets to buy traditional souvenirs, regional sweets, or native organic spices.',
  'Check-out & Packing', 'Return to your hotel, pack your bags, clear any local incidentals, and check out from your rooms.',
  'Outbound Transfer', 'Board your private vehicle transfer to the airport or railway station for your onward return journey home.',
  'Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM', 'Complimentary Healthy Breakfast included.', 'AC Private SUV for comfortable road transfers with regular rest stops.',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Standard Comfort Hotel (Fully sanitized rooms, private bathroom, free Wi-Fi, desk space)', 'Clear sky, comfortable morning temperature 21°C, warming up to 26°C by noon.',
  'Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.', 'Walking socks, small daypack for personal belongings, sanitizers, light jacket.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 1 to 2 hours transfer'
FROM public.packages p WHERE p.slug = 'family-hampi-monuments'
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
  p.id, 1, 'Arrival & Settle in at Jaipur', 'Jaipur', 'Welcome to your yatra. Arrive in Jaipur, transfer to your stay, and rest before your sightseeing tour.',
  'Arrival & Check-in', 'Arrive at the nearest transit hub. Meet our coordinator and transfer to your pre-booked stay in Jaipur.',
  'Leisure & Rest', 'Check into your hotel room, unpack your luggage, and rest to recover from your flight or train journey.',
  'Orientation Walk', 'Meet your local guide for a small walk around the neighborhood. Receive a detailed brief on local customs.',
  'Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM', 'Welcome Drink & Buffet Dinner included.', 'AC Shuttle Transit for close proximity site transfers and passenger drops.',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Heritage Boutique Resort (Comfortable rooms, garden paths, active room services)', 'Warm and sunny afternoon, ideal for outdoor sightseeing, average temp 24°C.',
  'Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.', 'Comfortable travel footwear, photo ID, essential personal medication, daypack.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 1 to 2 hours transfer'
FROM public.packages p WHERE p.slug = 'family-hawa-mahal'
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
  p.id, 2, 'Explore Hawa Mahal Heritage Centre', 'Jaipur', 'Spend your day visiting Hawa Mahal Heritage Centre, the primary attraction in Hawa Mahal, accompanied by our expert guide.',
  'Guided Tour of Hawa Mahal Heritage Centre', 'Early morning visit to Hawa Mahal Heritage Centre to avoid crowds. Learn about the heritage and unique history of this landmark.',
  'Local Traditional Lunch', 'Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings.',
  'Evening walk at Hawa Mahal Panoramic Viewpoint', 'Stroll around Hawa Mahal Panoramic Viewpoint for scenic sunset views. Capture great family photos as the evening lights turn on.',
  'Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM', 'Complimentary Breakfast & Traditional Lunch.', 'AC Private Sedan with professional local driver (includes first-aid kit and bottled water).',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Lakefront Guest House (Scenic balcony views, hot water, western-style bathrooms)', 'Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.',
  'Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.', 'Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 3 to 4 hours local tour'
FROM public.packages p WHERE p.slug = 'family-hawa-mahal'
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
  p.id, 3, 'Excursion to Hawa Mahal Local Culture Park', 'Jaipur', 'Excursion to Hawa Mahal Local Culture Park and surrounding craft villages to experience native arts, handlooms, and culture.',
  'Nature Walk at Hawa Mahal Local Culture Park', 'Guided scenic walk near the lake or parks surrounding Hawa Mahal Local Culture Park. Enjoy quiet reflection and fresh air.',
  'Local Handloom Visit', 'Visit local cottage industries to see artisans hand-weaving fabrics and crafting traditional wooden toys.',
  'Cultural Dance & Music Show', 'Attend a traditional cultural presentation depicting historical folk tales, followed by dinner.',
  'Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM', 'Breakfast & Special Dinner Buffet.', 'AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Premium Executive Hotel (AC rooms, elevator access, 24/7 front desk assistance)', 'Perfect travel weather with low humidity and comfortable evening temperature 20°C.',
  'Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.', 'Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 3 to 4 hours local tour'
FROM public.packages p WHERE p.slug = 'family-hawa-mahal'
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
  p.id, 4, 'Souvenir Shopping & Onward Departure', 'Jaipur', 'Conclude your memorable stay in Jaipur with local craft shopping, checkout, and outbound transfers.',
  'Handicrafts Shopping', 'Visit local co-operative markets to buy traditional souvenirs, regional sweets, or native organic spices.',
  'Check-out & Packing', 'Return to your hotel, pack your bags, clear any local incidentals, and check out from your rooms.',
  'Outbound Transfer', 'Board your private vehicle transfer to the airport or railway station for your onward return journey home.',
  'Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM', 'Complimentary Healthy Breakfast included.', 'AC Private SUV for comfortable road transfers with regular rest stops.',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Standard Comfort Hotel (Fully sanitized rooms, private bathroom, free Wi-Fi, desk space)', 'Clear sky, comfortable morning temperature 21°C, warming up to 26°C by noon.',
  'Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.', 'Walking socks, small daypack for personal belongings, sanitizers, light jacket.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 1 to 2 hours transfer'
FROM public.packages p WHERE p.slug = 'family-hawa-mahal'
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
  p.id, 1, 'Arrival & Settle in at Pisa', 'Pisa', 'Welcome to your yatra. Arrive in Pisa, transfer to your stay, and rest before your sightseeing tour.',
  'Arrival & Check-in', 'Arrive at the nearest transit hub. Meet our coordinator and transfer to your pre-booked stay in Pisa.',
  'Leisure & Rest', 'Check into your hotel room, unpack your luggage, and rest to recover from your flight or train journey.',
  'Orientation Walk', 'Meet your local guide for a small walk around the neighborhood. Receive a detailed brief on local customs.',
  'Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM', 'Welcome Drink & Buffet Dinner included.', 'AC Shuttle Transit for close proximity site transfers and passenger drops.',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Heritage Boutique Resort (Comfortable rooms, garden paths, active room services)', 'Warm and sunny afternoon, ideal for outdoor sightseeing, average temp 24°C.',
  'Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.', 'Comfortable travel footwear, photo ID, essential personal medication, daypack.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 1 to 2 hours transfer'
FROM public.packages p WHERE p.slug = 'family-leaning-tower-of-pisa'
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
  p.id, 2, 'Explore Leaning Tower of Pisa Heritage Centre', 'Pisa', 'Spend your day visiting Leaning Tower of Pisa Heritage Centre, the primary attraction in Leaning Tower of Pisa, accompanied by our expert guide.',
  'Guided Tour of Leaning Tower of Pisa Heritage Centre', 'Early morning visit to Leaning Tower of Pisa Heritage Centre to avoid crowds. Learn about the heritage and unique history of this landmark.',
  'Local Traditional Lunch', 'Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings.',
  'Evening walk at Leaning Tower of Pisa Panoramic Viewpoint', 'Stroll around Leaning Tower of Pisa Panoramic Viewpoint for scenic sunset views. Capture great family photos as the evening lights turn on.',
  'Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM', 'Complimentary Breakfast & Traditional Lunch.', 'AC Private Sedan with professional local driver (includes first-aid kit and bottled water).',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Lakefront Guest House (Scenic balcony views, hot water, western-style bathrooms)', 'Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.',
  'Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.', 'Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 3 to 4 hours local tour'
FROM public.packages p WHERE p.slug = 'family-leaning-tower-of-pisa'
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
  p.id, 3, 'Excursion to Leaning Tower of Pisa Local Culture Park', 'Pisa', 'Excursion to Leaning Tower of Pisa Local Culture Park and surrounding craft villages to experience native arts, handlooms, and culture.',
  'Nature Walk at Leaning Tower of Pisa Local Culture Park', 'Guided scenic walk near the lake or parks surrounding Leaning Tower of Pisa Local Culture Park. Enjoy quiet reflection and fresh air.',
  'Local Handloom Visit', 'Visit local cottage industries to see artisans hand-weaving fabrics and crafting traditional wooden toys.',
  'Cultural Dance & Music Show', 'Attend a traditional cultural presentation depicting historical folk tales, followed by dinner.',
  'Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM', 'Breakfast & Special Dinner Buffet.', 'AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Premium Executive Hotel (AC rooms, elevator access, 24/7 front desk assistance)', 'Perfect travel weather with low humidity and comfortable evening temperature 20°C.',
  'Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.', 'Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 3 to 4 hours local tour'
FROM public.packages p WHERE p.slug = 'family-leaning-tower-of-pisa'
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
  p.id, 4, 'Souvenir Shopping & Onward Departure', 'Pisa', 'Conclude your memorable stay in Pisa with local craft shopping, checkout, and outbound transfers.',
  'Handicrafts Shopping', 'Visit local co-operative markets to buy traditional souvenirs, regional sweets, or native organic spices.',
  'Check-out & Packing', 'Return to your hotel, pack your bags, clear any local incidentals, and check out from your rooms.',
  'Outbound Transfer', 'Board your private vehicle transfer to the airport or railway station for your onward return journey home.',
  'Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM', 'Complimentary Healthy Breakfast included.', 'AC Private SUV for comfortable road transfers with regular rest stops.',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Standard Comfort Hotel (Fully sanitized rooms, private bathroom, free Wi-Fi, desk space)', 'Clear sky, comfortable morning temperature 21°C, warming up to 26°C by noon.',
  'Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.', 'Walking socks, small daypack for personal belongings, sanitizers, light jacket.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 1 to 2 hours transfer'
FROM public.packages p WHERE p.slug = 'family-leaning-tower-of-pisa'
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
  p.id, 1, 'Arrival & Settle in at Cherrapunji', 'Cherrapunji', 'Welcome to your yatra. Arrive in Cherrapunji, transfer to your stay, and rest before your sightseeing tour.',
  'Arrival & Check-in', 'Arrive at the nearest transit hub. Meet our coordinator and transfer to your pre-booked stay in Cherrapunji.',
  'Leisure & Rest', 'Check into your hotel room, unpack your luggage, and rest to recover from your flight or train journey.',
  'Orientation Walk', 'Meet your local guide for a small walk around the neighborhood. Receive a detailed brief on local customs.',
  'Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM', 'Welcome Drink & Buffet Dinner included.', 'AC Shuttle Transit for close proximity site transfers and passenger drops.',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Heritage Boutique Resort (Comfortable rooms, garden paths, active room services)', 'Warm and sunny afternoon, ideal for outdoor sightseeing, average temp 24°C.',
  'Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.', 'Comfortable travel footwear, photo ID, essential personal medication, daypack.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 1 to 2 hours transfer'
FROM public.packages p WHERE p.slug = 'family-living-root-bridges'
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
  p.id, 2, 'Explore Living Root Bridges Heritage Centre', 'Cherrapunji', 'Spend your day visiting Living Root Bridges Heritage Centre, the primary attraction in Living Root Bridges, accompanied by our expert guide.',
  'Guided Tour of Living Root Bridges Heritage Centre', 'Early morning visit to Living Root Bridges Heritage Centre to avoid crowds. Learn about the heritage and unique history of this landmark.',
  'Local Traditional Lunch', 'Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings.',
  'Evening walk at Living Root Bridges Panoramic Viewpoint', 'Stroll around Living Root Bridges Panoramic Viewpoint for scenic sunset views. Capture great family photos as the evening lights turn on.',
  'Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM', 'Complimentary Breakfast & Traditional Lunch.', 'AC Private Sedan with professional local driver (includes first-aid kit and bottled water).',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Lakefront Guest House (Scenic balcony views, hot water, western-style bathrooms)', 'Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.',
  'Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.', 'Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 3 to 4 hours local tour'
FROM public.packages p WHERE p.slug = 'family-living-root-bridges'
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
  p.id, 3, 'Excursion to Living Root Bridges Local Culture Park', 'Cherrapunji', 'Excursion to Living Root Bridges Local Culture Park and surrounding craft villages to experience native arts, handlooms, and culture.',
  'Nature Walk at Living Root Bridges Local Culture Park', 'Guided scenic walk near the lake or parks surrounding Living Root Bridges Local Culture Park. Enjoy quiet reflection and fresh air.',
  'Local Handloom Visit', 'Visit local cottage industries to see artisans hand-weaving fabrics and crafting traditional wooden toys.',
  'Cultural Dance & Music Show', 'Attend a traditional cultural presentation depicting historical folk tales, followed by dinner.',
  'Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM', 'Breakfast & Special Dinner Buffet.', 'AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Premium Executive Hotel (AC rooms, elevator access, 24/7 front desk assistance)', 'Perfect travel weather with low humidity and comfortable evening temperature 20°C.',
  'Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.', 'Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 3 to 4 hours local tour'
FROM public.packages p WHERE p.slug = 'family-living-root-bridges'
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
  p.id, 4, 'Souvenir Shopping & Onward Departure', 'Cherrapunji', 'Conclude your memorable stay in Cherrapunji with local craft shopping, checkout, and outbound transfers.',
  'Handicrafts Shopping', 'Visit local co-operative markets to buy traditional souvenirs, regional sweets, or native organic spices.',
  'Check-out & Packing', 'Return to your hotel, pack your bags, clear any local incidentals, and check out from your rooms.',
  'Outbound Transfer', 'Board your private vehicle transfer to the airport or railway station for your onward return journey home.',
  'Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM', 'Complimentary Healthy Breakfast included.', 'AC Private SUV for comfortable road transfers with regular rest stops.',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Standard Comfort Hotel (Fully sanitized rooms, private bathroom, free Wi-Fi, desk space)', 'Clear sky, comfortable morning temperature 21°C, warming up to 26°C by noon.',
  'Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.', 'Walking socks, small daypack for personal belongings, sanitizers, light jacket.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 1 to 2 hours transfer'
FROM public.packages p WHERE p.slug = 'family-living-root-bridges'
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
  p.id, 1, 'Arrival & Settle in at London', 'London', 'Welcome to your yatra. Arrive in London, transfer to your stay, and rest before your sightseeing tour.',
  'Arrival & Check-in', 'Arrive at the nearest transit hub. Meet our coordinator and transfer to your pre-booked stay in London.',
  'Leisure & Rest', 'Check into your hotel room, unpack your luggage, and rest to recover from your flight or train journey.',
  'Orientation Walk', 'Meet your local guide for a small walk around the neighborhood. Receive a detailed brief on local customs.',
  'Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM', 'Welcome Drink & Buffet Dinner included.', 'AC Shuttle Transit for close proximity site transfers and passenger drops.',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Heritage Boutique Resort (Comfortable rooms, garden paths, active room services)', 'Warm and sunny afternoon, ideal for outdoor sightseeing, average temp 24°C.',
  'Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.', 'Comfortable travel footwear, photo ID, essential personal medication, daypack.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 1 to 2 hours transfer'
FROM public.packages p WHERE p.slug = 'family-london-eye'
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
  p.id, 2, 'Explore London Eye Heritage Centre', 'London', 'Spend your day visiting London Eye Heritage Centre, the primary attraction in London Eye, accompanied by our expert guide.',
  'Guided Tour of London Eye Heritage Centre', 'Early morning visit to London Eye Heritage Centre to avoid crowds. Learn about the heritage and unique history of this landmark.',
  'Local Traditional Lunch', 'Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings.',
  'Evening walk at London Eye Panoramic Viewpoint', 'Stroll around London Eye Panoramic Viewpoint for scenic sunset views. Capture great family photos as the evening lights turn on.',
  'Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM', 'Complimentary Breakfast & Traditional Lunch.', 'AC Private Sedan with professional local driver (includes first-aid kit and bottled water).',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Lakefront Guest House (Scenic balcony views, hot water, western-style bathrooms)', 'Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.',
  'Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.', 'Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 3 to 4 hours local tour'
FROM public.packages p WHERE p.slug = 'family-london-eye'
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
  p.id, 3, 'Excursion to London Eye Local Culture Park', 'London', 'Excursion to London Eye Local Culture Park and surrounding craft villages to experience native arts, handlooms, and culture.',
  'Nature Walk at London Eye Local Culture Park', 'Guided scenic walk near the lake or parks surrounding London Eye Local Culture Park. Enjoy quiet reflection and fresh air.',
  'Local Handloom Visit', 'Visit local cottage industries to see artisans hand-weaving fabrics and crafting traditional wooden toys.',
  'Cultural Dance & Music Show', 'Attend a traditional cultural presentation depicting historical folk tales, followed by dinner.',
  'Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM', 'Breakfast & Special Dinner Buffet.', 'AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Premium Executive Hotel (AC rooms, elevator access, 24/7 front desk assistance)', 'Perfect travel weather with low humidity and comfortable evening temperature 20°C.',
  'Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.', 'Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 3 to 4 hours local tour'
FROM public.packages p WHERE p.slug = 'family-london-eye'
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
  p.id, 4, 'Souvenir Shopping & Onward Departure', 'London', 'Conclude your memorable stay in London with local craft shopping, checkout, and outbound transfers.',
  'Handicrafts Shopping', 'Visit local co-operative markets to buy traditional souvenirs, regional sweets, or native organic spices.',
  'Check-out & Packing', 'Return to your hotel, pack your bags, clear any local incidentals, and check out from your rooms.',
  'Outbound Transfer', 'Board your private vehicle transfer to the airport or railway station for your onward return journey home.',
  'Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM', 'Complimentary Healthy Breakfast included.', 'AC Private SUV for comfortable road transfers with regular rest stops.',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Standard Comfort Hotel (Fully sanitized rooms, private bathroom, free Wi-Fi, desk space)', 'Clear sky, comfortable morning temperature 21°C, warming up to 26°C by noon.',
  'Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.', 'Walking socks, small daypack for personal belongings, sanitizers, light jacket.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 1 to 2 hours transfer'
FROM public.packages p WHERE p.slug = 'family-london-eye'
ON CONFLICT (package_id, day_number) DO UPDATE SET
  title = EXCLUDED.title,
  overview = EXCLUDED.overview,
  morning_description = EXCLUDED.morning_description;
END $$;