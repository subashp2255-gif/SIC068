DO $$
BEGIN
INSERT INTO public.itinerary_days (
  package_id, day_number, title, location, overview,
  morning_title, morning_description, afternoon_title, afternoon_description, evening_title, evening_description,
  important_timings, meals, transport, walking_level, stay, weather, dress_code, packing_suggestions,
  accessibility_note, visitor_note, travel_duration
) SELECT
  p.id, 1, 'Arrival & Settle in at Tokyo', 'Tokyo', 'Welcome to your yatra. Arrive in Tokyo, transfer to your stay, and rest before your sightseeing tour.',
  'Arrival & Check-in', 'Arrive at the nearest transit hub. Meet our coordinator and transfer to your pre-booked stay in Tokyo.',
  'Leisure & Rest', 'Check into your hotel room, unpack your luggage, and rest to recover from your flight or train journey.',
  'Orientation Walk', 'Meet your local guide for a small walk around the neighborhood. Receive a detailed brief on local customs.',
  'Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM', 'Welcome Drink & Buffet Dinner included.', 'AC Shuttle Transit for close proximity site transfers and passenger drops.',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Heritage Boutique Resort (Comfortable rooms, garden paths, active room services)', 'Warm and sunny afternoon, ideal for outdoor sightseeing, average temp 24°C.',
  'Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.', 'Comfortable travel footwear, photo ID, essential personal medication, daypack.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 1 to 2 hours transfer'
FROM public.packages p WHERE p.slug = 'family-tokyo-disneyland'
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
  p.id, 2, 'Explore Tokyo Disneyland Heritage Centre', 'Tokyo', 'Spend your day visiting Tokyo Disneyland Heritage Centre, the primary attraction in Tokyo Disneyland, accompanied by our expert guide.',
  'Guided Tour of Tokyo Disneyland Heritage Centre', 'Early morning visit to Tokyo Disneyland Heritage Centre to avoid crowds. Learn about the heritage and unique history of this landmark.',
  'Local Traditional Lunch', 'Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings.',
  'Evening walk at Tokyo Disneyland Panoramic Viewpoint', 'Stroll around Tokyo Disneyland Panoramic Viewpoint for scenic sunset views. Capture great family photos as the evening lights turn on.',
  'Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM', 'Complimentary Breakfast & Traditional Lunch.', 'AC Private Sedan with professional local driver (includes first-aid kit and bottled water).',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Lakefront Guest House (Scenic balcony views, hot water, western-style bathrooms)', 'Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.',
  'Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.', 'Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 3 to 4 hours local tour'
FROM public.packages p WHERE p.slug = 'family-tokyo-disneyland'
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
  p.id, 3, 'Excursion to Tokyo Disneyland Local Culture Park', 'Tokyo', 'Excursion to Tokyo Disneyland Local Culture Park and surrounding craft villages to experience native arts, handlooms, and culture.',
  'Nature Walk at Tokyo Disneyland Local Culture Park', 'Guided scenic walk near the lake or parks surrounding Tokyo Disneyland Local Culture Park. Enjoy quiet reflection and fresh air.',
  'Local Handloom Visit', 'Visit local cottage industries to see artisans hand-weaving fabrics and crafting traditional wooden toys.',
  'Cultural Dance & Music Show', 'Attend a traditional cultural presentation depicting historical folk tales, followed by dinner.',
  'Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM', 'Breakfast & Special Dinner Buffet.', 'AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Premium Executive Hotel (AC rooms, elevator access, 24/7 front desk assistance)', 'Perfect travel weather with low humidity and comfortable evening temperature 20°C.',
  'Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.', 'Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 3 to 4 hours local tour'
FROM public.packages p WHERE p.slug = 'family-tokyo-disneyland'
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
  p.id, 4, 'Souvenir Shopping & Onward Departure', 'Tokyo', 'Conclude your memorable stay in Tokyo with local craft shopping, checkout, and outbound transfers.',
  'Handicrafts Shopping', 'Visit local co-operative markets to buy traditional souvenirs, regional sweets, or native organic spices.',
  'Check-out & Packing', 'Return to your hotel, pack your bags, clear any local incidentals, and check out from your rooms.',
  'Outbound Transfer', 'Board your private vehicle transfer to the airport or railway station for your onward return journey home.',
  'Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM', 'Complimentary Healthy Breakfast included.', 'AC Private SUV for comfortable road transfers with regular rest stops.',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Standard Comfort Hotel (Fully sanitized rooms, private bathroom, free Wi-Fi, desk space)', 'Clear sky, comfortable morning temperature 21°C, warming up to 26°C by noon.',
  'Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.', 'Walking socks, small daypack for personal belongings, sanitizers, light jacket.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 1 to 2 hours transfer'
FROM public.packages p WHERE p.slug = 'family-tokyo-disneyland'
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
  p.id, 1, 'Arrival & Settle in at Osaka', 'Osaka', 'Welcome to your yatra. Arrive in Osaka, transfer to your stay, and rest before your sightseeing tour.',
  'Arrival & Check-in', 'Arrive at the nearest transit hub. Meet our coordinator and transfer to your pre-booked stay in Osaka.',
  'Leisure & Rest', 'Check into your hotel room, unpack your luggage, and rest to recover from your flight or train journey.',
  'Orientation Walk', 'Meet your local guide for a small walk around the neighborhood. Receive a detailed brief on local customs.',
  'Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM', 'Welcome Drink & Buffet Dinner included.', 'AC Shuttle Transit for close proximity site transfers and passenger drops.',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Heritage Boutique Resort (Comfortable rooms, garden paths, active room services)', 'Warm and sunny afternoon, ideal for outdoor sightseeing, average temp 24°C.',
  'Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.', 'Comfortable travel footwear, photo ID, essential personal medication, daypack.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 1 to 2 hours transfer'
FROM public.packages p WHERE p.slug = 'family-universal-studios-japan'
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
  p.id, 2, 'Explore Universal Studios Japan Heritage Centre', 'Osaka', 'Spend your day visiting Universal Studios Japan Heritage Centre, the primary attraction in Universal Studios Japan, accompanied by our expert guide.',
  'Guided Tour of Universal Studios Japan Heritage Centre', 'Early morning visit to Universal Studios Japan Heritage Centre to avoid crowds. Learn about the heritage and unique history of this landmark.',
  'Local Traditional Lunch', 'Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings.',
  'Evening walk at Universal Studios Japan Panoramic Viewpoint', 'Stroll around Universal Studios Japan Panoramic Viewpoint for scenic sunset views. Capture great family photos as the evening lights turn on.',
  'Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM', 'Complimentary Breakfast & Traditional Lunch.', 'AC Private Sedan with professional local driver (includes first-aid kit and bottled water).',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Lakefront Guest House (Scenic balcony views, hot water, western-style bathrooms)', 'Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.',
  'Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.', 'Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 3 to 4 hours local tour'
FROM public.packages p WHERE p.slug = 'family-universal-studios-japan'
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
  p.id, 3, 'Excursion to Universal Studios Japan Local Culture Park', 'Osaka', 'Excursion to Universal Studios Japan Local Culture Park and surrounding craft villages to experience native arts, handlooms, and culture.',
  'Nature Walk at Universal Studios Japan Local Culture Park', 'Guided scenic walk near the lake or parks surrounding Universal Studios Japan Local Culture Park. Enjoy quiet reflection and fresh air.',
  'Local Handloom Visit', 'Visit local cottage industries to see artisans hand-weaving fabrics and crafting traditional wooden toys.',
  'Cultural Dance & Music Show', 'Attend a traditional cultural presentation depicting historical folk tales, followed by dinner.',
  'Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM', 'Breakfast & Special Dinner Buffet.', 'AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Premium Executive Hotel (AC rooms, elevator access, 24/7 front desk assistance)', 'Perfect travel weather with low humidity and comfortable evening temperature 20°C.',
  'Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.', 'Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 3 to 4 hours local tour'
FROM public.packages p WHERE p.slug = 'family-universal-studios-japan'
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
  p.id, 4, 'Souvenir Shopping & Onward Departure', 'Osaka', 'Conclude your memorable stay in Osaka with local craft shopping, checkout, and outbound transfers.',
  'Handicrafts Shopping', 'Visit local co-operative markets to buy traditional souvenirs, regional sweets, or native organic spices.',
  'Check-out & Packing', 'Return to your hotel, pack your bags, clear any local incidentals, and check out from your rooms.',
  'Outbound Transfer', 'Board your private vehicle transfer to the airport or railway station for your onward return journey home.',
  'Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM', 'Complimentary Healthy Breakfast included.', 'AC Private SUV for comfortable road transfers with regular rest stops.',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Standard Comfort Hotel (Fully sanitized rooms, private bathroom, free Wi-Fi, desk space)', 'Clear sky, comfortable morning temperature 21°C, warming up to 26°C by noon.',
  'Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.', 'Walking socks, small daypack for personal belongings, sanitizers, light jacket.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 1 to 2 hours transfer'
FROM public.packages p WHERE p.slug = 'family-universal-studios-japan'
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
  p.id, 1, 'Arrival & Settle in at Venice', 'Venice', 'Welcome to your yatra. Arrive in Venice, transfer to your stay, and rest before your sightseeing tour.',
  'Arrival & Check-in', 'Arrive at the nearest transit hub. Meet our coordinator and transfer to your pre-booked stay in Venice.',
  'Leisure & Rest', 'Check into your hotel room, unpack your luggage, and rest to recover from your flight or train journey.',
  'Orientation Walk', 'Meet your local guide for a small walk around the neighborhood. Receive a detailed brief on local customs.',
  'Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM', 'Welcome Drink & Buffet Dinner included.', 'AC Shuttle Transit for close proximity site transfers and passenger drops.',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Heritage Boutique Resort (Comfortable rooms, garden paths, active room services)', 'Warm and sunny afternoon, ideal for outdoor sightseeing, average temp 24°C.',
  'Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.', 'Comfortable travel footwear, photo ID, essential personal medication, daypack.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 1 to 2 hours transfer'
FROM public.packages p WHERE p.slug = 'family-venice-grand-canal'
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
  p.id, 2, 'Explore Venice Grand Canal Heritage Centre', 'Venice', 'Spend your day visiting Venice Grand Canal Heritage Centre, the primary attraction in Venice Grand Canal, accompanied by our expert guide.',
  'Guided Tour of Venice Grand Canal Heritage Centre', 'Early morning visit to Venice Grand Canal Heritage Centre to avoid crowds. Learn about the heritage and unique history of this landmark.',
  'Local Traditional Lunch', 'Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings.',
  'Evening walk at Venice Grand Canal Panoramic Viewpoint', 'Stroll around Venice Grand Canal Panoramic Viewpoint for scenic sunset views. Capture great family photos as the evening lights turn on.',
  'Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM', 'Complimentary Breakfast & Traditional Lunch.', 'AC Private Sedan with professional local driver (includes first-aid kit and bottled water).',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Lakefront Guest House (Scenic balcony views, hot water, western-style bathrooms)', 'Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.',
  'Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.', 'Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 3 to 4 hours local tour'
FROM public.packages p WHERE p.slug = 'family-venice-grand-canal'
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
  p.id, 3, 'Excursion to Venice Grand Canal Local Culture Park', 'Venice', 'Excursion to Venice Grand Canal Local Culture Park and surrounding craft villages to experience native arts, handlooms, and culture.',
  'Nature Walk at Venice Grand Canal Local Culture Park', 'Guided scenic walk near the lake or parks surrounding Venice Grand Canal Local Culture Park. Enjoy quiet reflection and fresh air.',
  'Local Handloom Visit', 'Visit local cottage industries to see artisans hand-weaving fabrics and crafting traditional wooden toys.',
  'Cultural Dance & Music Show', 'Attend a traditional cultural presentation depicting historical folk tales, followed by dinner.',
  'Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM', 'Breakfast & Special Dinner Buffet.', 'AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Premium Executive Hotel (AC rooms, elevator access, 24/7 front desk assistance)', 'Perfect travel weather with low humidity and comfortable evening temperature 20°C.',
  'Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.', 'Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 3 to 4 hours local tour'
FROM public.packages p WHERE p.slug = 'family-venice-grand-canal'
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
  p.id, 4, 'Souvenir Shopping & Onward Departure', 'Venice', 'Conclude your memorable stay in Venice with local craft shopping, checkout, and outbound transfers.',
  'Handicrafts Shopping', 'Visit local co-operative markets to buy traditional souvenirs, regional sweets, or native organic spices.',
  'Check-out & Packing', 'Return to your hotel, pack your bags, clear any local incidentals, and check out from your rooms.',
  'Outbound Transfer', 'Board your private vehicle transfer to the airport or railway station for your onward return journey home.',
  'Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM', 'Complimentary Healthy Breakfast included.', 'AC Private SUV for comfortable road transfers with regular rest stops.',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Standard Comfort Hotel (Fully sanitized rooms, private bathroom, free Wi-Fi, desk space)', 'Clear sky, comfortable morning temperature 21°C, warming up to 26°C by noon.',
  'Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.', 'Walking socks, small daypack for personal belongings, sanitizers, light jacket.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 1 to 2 hours transfer'
FROM public.packages p WHERE p.slug = 'family-venice-grand-canal'
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
  p.id, 1, 'Arrival & Settle in at Ratnapura', 'Ratnapura', 'Welcome to your yatra. Arrive in Ratnapura, transfer to your stay, and rest before your sightseeing tour.',
  'Arrival & Check-in', 'Arrive at the nearest transit hub. Meet our coordinator and transfer to your pre-booked stay in Ratnapura.',
  'Leisure & Rest', 'Check into your hotel room, unpack your luggage, and rest to recover from your flight or train journey.',
  'Orientation Walk', 'Meet your local guide for a small walk around the neighborhood. Receive a detailed brief on local customs.',
  'Monastery Hours: 5:00 AM - 11:30 AM, 2:30 PM - 6:00 PM | Meditation: 5:30 AM', 'Welcome Drink & Buffet Dinner included (100% Satvik Veg).', 'AC Shuttle Transit for close proximity site transfers and passenger drops.',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Vedic Heritage Inn (Ashram atmosphere, close to main shrines, Western toilets, hot water)', 'Warm and sunny afternoon, ideal for outdoor sightseeing, average temp 24°C.',
  'Modest clothing that covers shoulders and knees. Light-colored cotton attire is highly recommended.', 'Comfortable travel footwear, photo ID, essential personal medication, daypack.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 1 to 2 hours transfer'
FROM public.packages p WHERE p.slug = 'buddhism-adam-s-peak-sri-pada-sri-lanka'
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
  p.id, 2, 'Explore Adam’s Peak (Sri Pada) Heritage Centre', 'Ratnapura', 'Spend your day visiting Adam’s Peak (Sri Pada) Heritage Centre, the primary attraction in Adam’s Peak (Sri Pada), accompanied by our expert guide.',
  'Guided Tour of Adam’s Peak (Sri Pada) Heritage Centre', 'Early morning visit to Adam’s Peak (Sri Pada) Heritage Centre to avoid crowds. Learn about the heritage and unique history of this landmark.',
  'Local Traditional Lunch', 'Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings.',
  'Evening walk at Adam’s Peak (Sri Pada) Panoramic Viewpoint', 'Stroll around Adam’s Peak (Sri Pada) Panoramic Viewpoint for scenic sunset views. Capture great family photos as the evening lights turn on.',
  'Monastery Hours: 5:00 AM - 11:30 AM, 2:30 PM - 6:00 PM | Meditation: 5:30 AM', 'Complimentary Breakfast & Traditional Lunch (100% Satvik Veg).', 'AC Private Sedan with professional local driver (includes first-aid kit and bottled water).',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Premium Pilgrim Hotel (AC rooms, elevator, clean linen, hot water, elevator access)', 'Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.',
  'Modest clothing that covers shoulders and knees. Light-colored cotton attire is highly recommended.', 'Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 3 to 4 hours local tour'
FROM public.packages p WHERE p.slug = 'buddhism-adam-s-peak-sri-pada-sri-lanka'
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
  p.id, 3, 'Souvenir Shopping & Onward Departure', 'Ratnapura', 'Conclude your memorable stay in Ratnapura with local craft shopping, checkout, and outbound transfers.',
  'Handicrafts Shopping', 'Visit local co-operative markets to buy traditional souvenirs, regional sweets, or native organic spices.',
  'Check-out & Packing', 'Return to your hotel, pack your bags, clear any local incidentals, and check out from your rooms.',
  'Outbound Transfer', 'Board your private vehicle transfer to the airport or railway station for your onward return journey home.',
  'Monastery Hours: 5:00 AM - 11:30 AM, 2:30 PM - 6:00 PM | Meditation: 5:30 AM', 'Breakfast & Special Dinner Buffet (100% Satvik Veg).', 'AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Pilgrim Rest House (Safe, family-friendly rooms, walking distance to sacred sites)', 'Perfect travel weather with low humidity and comfortable evening temperature 20°C.',
  'Modest clothing that covers shoulders and knees. Light-colored cotton attire is highly recommended.', 'Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 1 to 2 hours transfer'
FROM public.packages p WHERE p.slug = 'buddhism-adam-s-peak-sri-pada-sri-lanka'
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
  p.id, 1, 'Arrival & Settle in at Gaya', 'Gaya', 'Welcome to your yatra. Arrive in Gaya, transfer to your stay, and rest before your sightseeing tour.',
  'Arrival & Check-in', 'Arrive at the nearest transit hub. Meet our coordinator and transfer to your pre-booked stay in Gaya.',
  'Leisure & Rest', 'Check into your hotel room, unpack your luggage, and rest to recover from your flight or train journey.',
  'Orientation Walk', 'Meet your local guide for a small walk around the neighborhood. Receive a detailed brief on local customs.',
  'Monastery Hours: 5:00 AM - 11:30 AM, 2:30 PM - 6:00 PM | Meditation: 5:30 AM', 'Welcome Drink & Buffet Dinner included (100% Satvik Veg).', 'AC Shuttle Transit for close proximity site transfers and passenger drops.',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Vedic Heritage Inn (Ashram atmosphere, close to main shrines, Western toilets, hot water)', 'Warm and sunny afternoon, ideal for outdoor sightseeing, average temp 24°C.',
  'Modest clothing that covers shoulders and knees. Light-colored cotton attire is highly recommended.', 'Comfortable travel footwear, photo ID, essential personal medication, daypack.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 1 to 2 hours transfer'
FROM public.packages p WHERE p.slug = 'buddhism-bodh-gaya-india'
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
  p.id, 2, 'Explore Great Buddha Statue', 'Gaya', 'Spend your day visiting Great Buddha Statue, the primary attraction in Bodh Gaya, accompanied by our expert guide.',
  'Guided Tour of Great Buddha Statue', 'Early morning visit to Great Buddha Statue to avoid crowds. Learn about the heritage and unique history of this landmark.',
  'Local Traditional Lunch', 'Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings.',
  'Evening walk at Muchalinda Lake & Lotus pond', 'Stroll around Muchalinda Lake & Lotus pond for scenic sunset views. Capture great family photos as the evening lights turn on.',
  'Monastery Hours: 5:00 AM - 11:30 AM, 2:30 PM - 6:00 PM | Meditation: 5:30 AM', 'Complimentary Breakfast & Traditional Lunch (100% Satvik Veg).', 'AC Private Sedan with professional local driver (includes first-aid kit and bottled water).',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Premium Pilgrim Hotel (AC rooms, elevator, clean linen, hot water, elevator access)', 'Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.',
  'Modest clothing that covers shoulders and knees. Light-colored cotton attire is highly recommended.', 'Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 3 to 4 hours local tour'
FROM public.packages p WHERE p.slug = 'buddhism-bodh-gaya-india'
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
  p.id, 3, 'Souvenir Shopping & Onward Departure', 'Gaya', 'Conclude your memorable stay in Gaya with local craft shopping, checkout, and outbound transfers.',
  'Handicrafts Shopping', 'Visit local co-operative markets to buy traditional souvenirs, regional sweets, or native organic spices.',
  'Check-out & Packing', 'Return to your hotel, pack your bags, clear any local incidentals, and check out from your rooms.',
  'Outbound Transfer', 'Board your private vehicle transfer to the airport or railway station for your onward return journey home.',
  'Monastery Hours: 5:00 AM - 11:30 AM, 2:30 PM - 6:00 PM | Meditation: 5:30 AM', 'Breakfast & Special Dinner Buffet (100% Satvik Veg).', 'AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Pilgrim Rest House (Safe, family-friendly rooms, walking distance to sacred sites)', 'Perfect travel weather with low humidity and comfortable evening temperature 20°C.',
  'Modest clothing that covers shoulders and knees. Light-colored cotton attire is highly recommended.', 'Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 1 to 2 hours transfer'
FROM public.packages p WHERE p.slug = 'buddhism-bodh-gaya-india'
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
  p.id, 1, 'Arrival & Settle in at Magelang', 'Magelang', 'Welcome to your yatra. Arrive in Magelang, transfer to your stay, and rest before your sightseeing tour.',
  'Arrival & Check-in', 'Arrive at the nearest transit hub. Meet our coordinator and transfer to your pre-booked stay in Magelang.',
  'Leisure & Rest', 'Check into your hotel room, unpack your luggage, and rest to recover from your flight or train journey.',
  'Orientation Walk', 'Meet your local guide for a small walk around the neighborhood. Receive a detailed brief on local customs.',
  'Monastery Hours: 5:00 AM - 11:30 AM, 2:30 PM - 6:00 PM | Meditation: 5:30 AM', 'Welcome Drink & Buffet Dinner included (100% Satvik Veg).', 'AC Shuttle Transit for close proximity site transfers and passenger drops.',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Vedic Heritage Inn (Ashram atmosphere, close to main shrines, Western toilets, hot water)', 'Warm and sunny afternoon, ideal for outdoor sightseeing, average temp 24°C.',
  'Modest clothing that covers shoulders and knees. Light-colored cotton attire is highly recommended.', 'Comfortable travel footwear, photo ID, essential personal medication, daypack.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 1 to 2 hours transfer'
FROM public.packages p WHERE p.slug = 'buddhism-borobudur-temple-indonesia'
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
  p.id, 2, 'Explore Borobudur Temple Heritage Centre', 'Magelang', 'Spend your day visiting Borobudur Temple Heritage Centre, the primary attraction in Borobudur Temple, accompanied by our expert guide.',
  'Guided Tour of Borobudur Temple Heritage Centre', 'Early morning visit to Borobudur Temple Heritage Centre to avoid crowds. Learn about the heritage and unique history of this landmark.',
  'Local Traditional Lunch', 'Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings.',
  'Evening walk at Borobudur Temple Panoramic Viewpoint', 'Stroll around Borobudur Temple Panoramic Viewpoint for scenic sunset views. Capture great family photos as the evening lights turn on.',
  'Monastery Hours: 5:00 AM - 11:30 AM, 2:30 PM - 6:00 PM | Meditation: 5:30 AM', 'Complimentary Breakfast & Traditional Lunch (100% Satvik Veg).', 'AC Private Sedan with professional local driver (includes first-aid kit and bottled water).',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Premium Pilgrim Hotel (AC rooms, elevator, clean linen, hot water, elevator access)', 'Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.',
  'Modest clothing that covers shoulders and knees. Light-colored cotton attire is highly recommended.', 'Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 3 to 4 hours local tour'
FROM public.packages p WHERE p.slug = 'buddhism-borobudur-temple-indonesia'
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
  p.id, 3, 'Souvenir Shopping & Onward Departure', 'Magelang', 'Conclude your memorable stay in Magelang with local craft shopping, checkout, and outbound transfers.',
  'Handicrafts Shopping', 'Visit local co-operative markets to buy traditional souvenirs, regional sweets, or native organic spices.',
  'Check-out & Packing', 'Return to your hotel, pack your bags, clear any local incidentals, and check out from your rooms.',
  'Outbound Transfer', 'Board your private vehicle transfer to the airport or railway station for your onward return journey home.',
  'Monastery Hours: 5:00 AM - 11:30 AM, 2:30 PM - 6:00 PM | Meditation: 5:30 AM', 'Breakfast & Special Dinner Buffet (100% Satvik Veg).', 'AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Pilgrim Rest House (Safe, family-friendly rooms, walking distance to sacred sites)', 'Perfect travel weather with low humidity and comfortable evening temperature 20°C.',
  'Modest clothing that covers shoulders and knees. Light-colored cotton attire is highly recommended.', 'Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 1 to 2 hours transfer'
FROM public.packages p WHERE p.slug = 'buddhism-borobudur-temple-indonesia'
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
  p.id, 1, 'Arrival & Settle in at Matale', 'Matale', 'Welcome to your yatra. Arrive in Matale, transfer to your stay, and rest before your sightseeing tour.',
  'Arrival & Check-in', 'Arrive at the nearest transit hub. Meet our coordinator and transfer to your pre-booked stay in Matale.',
  'Leisure & Rest', 'Check into your hotel room, unpack your luggage, and rest to recover from your flight or train journey.',
  'Orientation Walk', 'Meet your local guide for a small walk around the neighborhood. Receive a detailed brief on local customs.',
  'Monastery Hours: 5:00 AM - 11:30 AM, 2:30 PM - 6:00 PM | Meditation: 5:30 AM', 'Welcome Drink & Buffet Dinner included (100% Satvik Veg).', 'AC Shuttle Transit for close proximity site transfers and passenger drops.',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Vedic Heritage Inn (Ashram atmosphere, close to main shrines, Western toilets, hot water)', 'Warm and sunny afternoon, ideal for outdoor sightseeing, average temp 24°C.',
  'Modest clothing that covers shoulders and knees. Light-colored cotton attire is highly recommended.', 'Comfortable travel footwear, photo ID, essential personal medication, daypack.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 1 to 2 hours transfer'
FROM public.packages p WHERE p.slug = 'buddhism-dambulla-cave-temple-sri-lanka'
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
  p.id, 2, 'Explore Dambulla Cave Temple Heritage Centre', 'Matale', 'Spend your day visiting Dambulla Cave Temple Heritage Centre, the primary attraction in Dambulla Cave Temple, accompanied by our expert guide.',
  'Guided Tour of Dambulla Cave Temple Heritage Centre', 'Early morning visit to Dambulla Cave Temple Heritage Centre to avoid crowds. Learn about the heritage and unique history of this landmark.',
  'Local Traditional Lunch', 'Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings.',
  'Evening walk at Dambulla Cave Temple Panoramic Viewpoint', 'Stroll around Dambulla Cave Temple Panoramic Viewpoint for scenic sunset views. Capture great family photos as the evening lights turn on.',
  'Monastery Hours: 5:00 AM - 11:30 AM, 2:30 PM - 6:00 PM | Meditation: 5:30 AM', 'Complimentary Breakfast & Traditional Lunch (100% Satvik Veg).', 'AC Private Sedan with professional local driver (includes first-aid kit and bottled water).',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Premium Pilgrim Hotel (AC rooms, elevator, clean linen, hot water, elevator access)', 'Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.',
  'Modest clothing that covers shoulders and knees. Light-colored cotton attire is highly recommended.', 'Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 3 to 4 hours local tour'
FROM public.packages p WHERE p.slug = 'buddhism-dambulla-cave-temple-sri-lanka'
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
  p.id, 3, 'Souvenir Shopping & Onward Departure', 'Matale', 'Conclude your memorable stay in Matale with local craft shopping, checkout, and outbound transfers.',
  'Handicrafts Shopping', 'Visit local co-operative markets to buy traditional souvenirs, regional sweets, or native organic spices.',
  'Check-out & Packing', 'Return to your hotel, pack your bags, clear any local incidentals, and check out from your rooms.',
  'Outbound Transfer', 'Board your private vehicle transfer to the airport or railway station for your onward return journey home.',
  'Monastery Hours: 5:00 AM - 11:30 AM, 2:30 PM - 6:00 PM | Meditation: 5:30 AM', 'Breakfast & Special Dinner Buffet (100% Satvik Veg).', 'AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Pilgrim Rest House (Safe, family-friendly rooms, walking distance to sacred sites)', 'Perfect travel weather with low humidity and comfortable evening temperature 20°C.',
  'Modest clothing that covers shoulders and knees. Light-colored cotton attire is highly recommended.', 'Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 1 to 2 hours transfer'
FROM public.packages p WHERE p.slug = 'buddhism-dambulla-cave-temple-sri-lanka'
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
  p.id, 1, 'Arrival & Settle in at Lhasa', 'Lhasa', 'Welcome to your yatra. Arrive in Lhasa, transfer to your stay, and rest before your sightseeing tour.',
  'Arrival & Check-in', 'Arrive at the nearest transit hub. Meet our coordinator and transfer to your pre-booked stay in Lhasa.',
  'Leisure & Rest', 'Check into your hotel room, unpack your luggage, and rest to recover from your flight or train journey.',
  'Orientation Walk', 'Meet your local guide for a small walk around the neighborhood. Receive a detailed brief on local customs.',
  'Monastery Hours: 5:00 AM - 11:30 AM, 2:30 PM - 6:00 PM | Meditation: 5:30 AM', 'Welcome Drink & Buffet Dinner included (100% Satvik Veg).', 'AC Shuttle Transit for close proximity site transfers and passenger drops.',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Vedic Heritage Inn (Ashram atmosphere, close to main shrines, Western toilets, hot water)', 'Warm and sunny afternoon, ideal for outdoor sightseeing, average temp 24°C.',
  'Modest clothing that covers shoulders and knees. Light-colored cotton attire is highly recommended.', 'Comfortable travel footwear, photo ID, essential personal medication, daypack.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 1 to 2 hours transfer'
FROM public.packages p WHERE p.slug = 'buddhism-jokhang-temple-lhasa-tibet'
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
  p.id, 2, 'Explore Jokhang Temple, Lhasa Heritage Centre', 'Lhasa', 'Spend your day visiting Jokhang Temple, Lhasa Heritage Centre, the primary attraction in Jokhang Temple, Lhasa, accompanied by our expert guide.',
  'Guided Tour of Jokhang Temple, Lhasa Heritage Centre', 'Early morning visit to Jokhang Temple, Lhasa Heritage Centre to avoid crowds. Learn about the heritage and unique history of this landmark.',
  'Local Traditional Lunch', 'Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings.',
  'Evening walk at Jokhang Temple, Lhasa Panoramic Viewpoint', 'Stroll around Jokhang Temple, Lhasa Panoramic Viewpoint for scenic sunset views. Capture great family photos as the evening lights turn on.',
  'Monastery Hours: 5:00 AM - 11:30 AM, 2:30 PM - 6:00 PM | Meditation: 5:30 AM', 'Complimentary Breakfast & Traditional Lunch (100% Satvik Veg).', 'AC Private Sedan with professional local driver (includes first-aid kit and bottled water).',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Premium Pilgrim Hotel (AC rooms, elevator, clean linen, hot water, elevator access)', 'Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.',
  'Modest clothing that covers shoulders and knees. Light-colored cotton attire is highly recommended.', 'Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 3 to 4 hours local tour'
FROM public.packages p WHERE p.slug = 'buddhism-jokhang-temple-lhasa-tibet'
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
  p.id, 3, 'Souvenir Shopping & Onward Departure', 'Lhasa', 'Conclude your memorable stay in Lhasa with local craft shopping, checkout, and outbound transfers.',
  'Handicrafts Shopping', 'Visit local co-operative markets to buy traditional souvenirs, regional sweets, or native organic spices.',
  'Check-out & Packing', 'Return to your hotel, pack your bags, clear any local incidentals, and check out from your rooms.',
  'Outbound Transfer', 'Board your private vehicle transfer to the airport or railway station for your onward return journey home.',
  'Monastery Hours: 5:00 AM - 11:30 AM, 2:30 PM - 6:00 PM | Meditation: 5:30 AM', 'Breakfast & Special Dinner Buffet (100% Satvik Veg).', 'AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Pilgrim Rest House (Safe, family-friendly rooms, walking distance to sacred sites)', 'Perfect travel weather with low humidity and comfortable evening temperature 20°C.',
  'Modest clothing that covers shoulders and knees. Light-colored cotton attire is highly recommended.', 'Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 1 to 2 hours transfer'
FROM public.packages p WHERE p.slug = 'buddhism-jokhang-temple-lhasa-tibet'
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
  p.id, 1, 'Arrival & Settle in at Wakayama', 'Wakayama', 'Welcome to your yatra. Arrive in Wakayama, transfer to your stay, and rest before your sightseeing tour.',
  'Arrival & Check-in', 'Arrive at the nearest transit hub. Meet our coordinator and transfer to your pre-booked stay in Wakayama.',
  'Leisure & Rest', 'Check into your hotel room, unpack your luggage, and rest to recover from your flight or train journey.',
  'Orientation Walk', 'Meet your local guide for a small walk around the neighborhood. Receive a detailed brief on local customs.',
  'Monastery Hours: 5:00 AM - 11:30 AM, 2:30 PM - 6:00 PM | Meditation: 5:30 AM', 'Welcome Drink & Buffet Dinner included (100% Satvik Veg).', 'AC Shuttle Transit for close proximity site transfers and passenger drops.',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Vedic Heritage Inn (Ashram atmosphere, close to main shrines, Western toilets, hot water)', 'Warm and sunny afternoon, ideal for outdoor sightseeing, average temp 24°C.',
  'Modest clothing that covers shoulders and knees. Light-colored cotton attire is highly recommended.', 'Comfortable travel footwear, photo ID, essential personal medication, daypack.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 1 to 2 hours transfer'
FROM public.packages p WHERE p.slug = 'buddhism-kumano-kodo-japan'
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
  p.id, 2, 'Explore Kumano Kodo Heritage Centre', 'Wakayama', 'Spend your day visiting Kumano Kodo Heritage Centre, the primary attraction in Kumano Kodo, accompanied by our expert guide.',
  'Guided Tour of Kumano Kodo Heritage Centre', 'Early morning visit to Kumano Kodo Heritage Centre to avoid crowds. Learn about the heritage and unique history of this landmark.',
  'Local Traditional Lunch', 'Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings.',
  'Evening walk at Kumano Kodo Panoramic Viewpoint', 'Stroll around Kumano Kodo Panoramic Viewpoint for scenic sunset views. Capture great family photos as the evening lights turn on.',
  'Monastery Hours: 5:00 AM - 11:30 AM, 2:30 PM - 6:00 PM | Meditation: 5:30 AM', 'Complimentary Breakfast & Traditional Lunch (100% Satvik Veg).', 'AC Private Sedan with professional local driver (includes first-aid kit and bottled water).',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Premium Pilgrim Hotel (AC rooms, elevator, clean linen, hot water, elevator access)', 'Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.',
  'Modest clothing that covers shoulders and knees. Light-colored cotton attire is highly recommended.', 'Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 3 to 4 hours local tour'
FROM public.packages p WHERE p.slug = 'buddhism-kumano-kodo-japan'
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
  p.id, 3, 'Souvenir Shopping & Onward Departure', 'Wakayama', 'Conclude your memorable stay in Wakayama with local craft shopping, checkout, and outbound transfers.',
  'Handicrafts Shopping', 'Visit local co-operative markets to buy traditional souvenirs, regional sweets, or native organic spices.',
  'Check-out & Packing', 'Return to your hotel, pack your bags, clear any local incidentals, and check out from your rooms.',
  'Outbound Transfer', 'Board your private vehicle transfer to the airport or railway station for your onward return journey home.',
  'Monastery Hours: 5:00 AM - 11:30 AM, 2:30 PM - 6:00 PM | Meditation: 5:30 AM', 'Breakfast & Special Dinner Buffet (100% Satvik Veg).', 'AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Pilgrim Rest House (Safe, family-friendly rooms, walking distance to sacred sites)', 'Perfect travel weather with low humidity and comfortable evening temperature 20°C.',
  'Modest clothing that covers shoulders and knees. Light-colored cotton attire is highly recommended.', 'Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 1 to 2 hours transfer'
FROM public.packages p WHERE p.slug = 'buddhism-kumano-kodo-japan'
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
  p.id, 1, 'Arrival & Settle in at Kushinagar', 'Kushinagar', 'Welcome to your yatra. Arrive in Kushinagar, transfer to your stay, and rest before your sightseeing tour.',
  'Arrival & Check-in', 'Arrive at the nearest transit hub. Meet our coordinator and transfer to your pre-booked stay in Kushinagar.',
  'Leisure & Rest', 'Check into your hotel room, unpack your luggage, and rest to recover from your flight or train journey.',
  'Orientation Walk', 'Meet your local guide for a small walk around the neighborhood. Receive a detailed brief on local customs.',
  'Monastery Hours: 5:00 AM - 11:30 AM, 2:30 PM - 6:00 PM | Meditation: 5:30 AM', 'Welcome Drink & Buffet Dinner included (100% Satvik Veg).', 'AC Shuttle Transit for close proximity site transfers and passenger drops.',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Vedic Heritage Inn (Ashram atmosphere, close to main shrines, Western toilets, hot water)', 'Warm and sunny afternoon, ideal for outdoor sightseeing, average temp 24°C.',
  'Modest clothing that covers shoulders and knees. Light-colored cotton attire is highly recommended.', 'Comfortable travel footwear, photo ID, essential personal medication, daypack.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 1 to 2 hours transfer'
FROM public.packages p WHERE p.slug = 'buddhism-kushinagar-india'
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
  p.id, 2, 'Explore Kushinagar Heritage Centre', 'Kushinagar', 'Spend your day visiting Kushinagar Heritage Centre, the primary attraction in Kushinagar, accompanied by our expert guide.',
  'Guided Tour of Kushinagar Heritage Centre', 'Early morning visit to Kushinagar Heritage Centre to avoid crowds. Learn about the heritage and unique history of this landmark.',
  'Local Traditional Lunch', 'Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings.',
  'Evening walk at Kushinagar Panoramic Viewpoint', 'Stroll around Kushinagar Panoramic Viewpoint for scenic sunset views. Capture great family photos as the evening lights turn on.',
  'Monastery Hours: 5:00 AM - 11:30 AM, 2:30 PM - 6:00 PM | Meditation: 5:30 AM', 'Complimentary Breakfast & Traditional Lunch (100% Satvik Veg).', 'AC Private Sedan with professional local driver (includes first-aid kit and bottled water).',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Premium Pilgrim Hotel (AC rooms, elevator, clean linen, hot water, elevator access)', 'Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.',
  'Modest clothing that covers shoulders and knees. Light-colored cotton attire is highly recommended.', 'Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 3 to 4 hours local tour'
FROM public.packages p WHERE p.slug = 'buddhism-kushinagar-india'
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
  p.id, 3, 'Souvenir Shopping & Onward Departure', 'Kushinagar', 'Conclude your memorable stay in Kushinagar with local craft shopping, checkout, and outbound transfers.',
  'Handicrafts Shopping', 'Visit local co-operative markets to buy traditional souvenirs, regional sweets, or native organic spices.',
  'Check-out & Packing', 'Return to your hotel, pack your bags, clear any local incidentals, and check out from your rooms.',
  'Outbound Transfer', 'Board your private vehicle transfer to the airport or railway station for your onward return journey home.',
  'Monastery Hours: 5:00 AM - 11:30 AM, 2:30 PM - 6:00 PM | Meditation: 5:30 AM', 'Breakfast & Special Dinner Buffet (100% Satvik Veg).', 'AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Pilgrim Rest House (Safe, family-friendly rooms, walking distance to sacred sites)', 'Perfect travel weather with low humidity and comfortable evening temperature 20°C.',
  'Modest clothing that covers shoulders and knees. Light-colored cotton attire is highly recommended.', 'Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 1 to 2 hours transfer'
FROM public.packages p WHERE p.slug = 'buddhism-kushinagar-india'
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
  p.id, 1, 'Arrival & Settle in at Rupandehi', 'Rupandehi', 'Welcome to your yatra. Arrive in Rupandehi, transfer to your stay, and rest before your sightseeing tour.',
  'Arrival & Check-in', 'Arrive at the nearest transit hub. Meet our coordinator and transfer to your pre-booked stay in Rupandehi.',
  'Leisure & Rest', 'Check into your hotel room, unpack your luggage, and rest to recover from your flight or train journey.',
  'Orientation Walk', 'Meet your local guide for a small walk around the neighborhood. Receive a detailed brief on local customs.',
  'Monastery Hours: 5:00 AM - 11:30 AM, 2:30 PM - 6:00 PM | Meditation: 5:30 AM', 'Welcome Drink & Buffet Dinner included (100% Satvik Veg).', 'AC Shuttle Transit for close proximity site transfers and passenger drops.',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Vedic Heritage Inn (Ashram atmosphere, close to main shrines, Western toilets, hot water)', 'Warm and sunny afternoon, ideal for outdoor sightseeing, average temp 24°C.',
  'Modest clothing that covers shoulders and knees. Light-colored cotton attire is highly recommended.', 'Comfortable travel footwear, photo ID, essential personal medication, daypack.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 1 to 2 hours transfer'
FROM public.packages p WHERE p.slug = 'buddhism-lumbini-nepal'
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
  p.id, 2, 'Explore Lumbini Heritage Centre', 'Rupandehi', 'Spend your day visiting Lumbini Heritage Centre, the primary attraction in Lumbini, accompanied by our expert guide.',
  'Guided Tour of Lumbini Heritage Centre', 'Early morning visit to Lumbini Heritage Centre to avoid crowds. Learn about the heritage and unique history of this landmark.',
  'Local Traditional Lunch', 'Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings.',
  'Evening walk at Lumbini Panoramic Viewpoint', 'Stroll around Lumbini Panoramic Viewpoint for scenic sunset views. Capture great family photos as the evening lights turn on.',
  'Monastery Hours: 5:00 AM - 11:30 AM, 2:30 PM - 6:00 PM | Meditation: 5:30 AM', 'Complimentary Breakfast & Traditional Lunch (100% Satvik Veg).', 'AC Private Sedan with professional local driver (includes first-aid kit and bottled water).',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Premium Pilgrim Hotel (AC rooms, elevator, clean linen, hot water, elevator access)', 'Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.',
  'Modest clothing that covers shoulders and knees. Light-colored cotton attire is highly recommended.', 'Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 3 to 4 hours local tour'
FROM public.packages p WHERE p.slug = 'buddhism-lumbini-nepal'
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
  p.id, 3, 'Souvenir Shopping & Onward Departure', 'Rupandehi', 'Conclude your memorable stay in Rupandehi with local craft shopping, checkout, and outbound transfers.',
  'Handicrafts Shopping', 'Visit local co-operative markets to buy traditional souvenirs, regional sweets, or native organic spices.',
  'Check-out & Packing', 'Return to your hotel, pack your bags, clear any local incidentals, and check out from your rooms.',
  'Outbound Transfer', 'Board your private vehicle transfer to the airport or railway station for your onward return journey home.',
  'Monastery Hours: 5:00 AM - 11:30 AM, 2:30 PM - 6:00 PM | Meditation: 5:30 AM', 'Breakfast & Special Dinner Buffet (100% Satvik Veg).', 'AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Pilgrim Rest House (Safe, family-friendly rooms, walking distance to sacred sites)', 'Perfect travel weather with low humidity and comfortable evening temperature 20°C.',
  'Modest clothing that covers shoulders and knees. Light-colored cotton attire is highly recommended.', 'Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 1 to 2 hours transfer'
FROM public.packages p WHERE p.slug = 'buddhism-lumbini-nepal'
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
  p.id, 1, 'Arrival & Settle in at Bagan', 'Bagan', 'Welcome to your yatra. Arrive in Bagan, transfer to your stay, and rest before your sightseeing tour.',
  'Arrival & Check-in', 'Arrive at the nearest transit hub. Meet our coordinator and transfer to your pre-booked stay in Bagan.',
  'Leisure & Rest', 'Check into your hotel room, unpack your luggage, and rest to recover from your flight or train journey.',
  'Orientation Walk', 'Meet your local guide for a small walk around the neighborhood. Receive a detailed brief on local customs.',
  'Monastery Hours: 5:00 AM - 11:30 AM, 2:30 PM - 6:00 PM | Meditation: 5:30 AM', 'Welcome Drink & Buffet Dinner included (100% Satvik Veg).', 'AC Shuttle Transit for close proximity site transfers and passenger drops.',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Vedic Heritage Inn (Ashram atmosphere, close to main shrines, Western toilets, hot water)', 'Warm and sunny afternoon, ideal for outdoor sightseeing, average temp 24°C.',
  'Modest clothing that covers shoulders and knees. Light-colored cotton attire is highly recommended.', 'Comfortable travel footwear, photo ID, essential personal medication, daypack.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 1 to 2 hours transfer'
FROM public.packages p WHERE p.slug = 'buddhism-mahabodhi-temple-bagan-myanmar'
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
  p.id, 2, 'Explore Mahabodhi Temple, Bagan Heritage Centre', 'Bagan', 'Spend your day visiting Mahabodhi Temple, Bagan Heritage Centre, the primary attraction in Mahabodhi Temple, Bagan, accompanied by our expert guide.',
  'Guided Tour of Mahabodhi Temple, Bagan Heritage Centre', 'Early morning visit to Mahabodhi Temple, Bagan Heritage Centre to avoid crowds. Learn about the heritage and unique history of this landmark.',
  'Local Traditional Lunch', 'Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings.',
  'Evening walk at Mahabodhi Temple, Bagan Panoramic Viewpoint', 'Stroll around Mahabodhi Temple, Bagan Panoramic Viewpoint for scenic sunset views. Capture great family photos as the evening lights turn on.',
  'Monastery Hours: 5:00 AM - 11:30 AM, 2:30 PM - 6:00 PM | Meditation: 5:30 AM', 'Complimentary Breakfast & Traditional Lunch (100% Satvik Veg).', 'AC Private Sedan with professional local driver (includes first-aid kit and bottled water).',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Premium Pilgrim Hotel (AC rooms, elevator, clean linen, hot water, elevator access)', 'Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.',
  'Modest clothing that covers shoulders and knees. Light-colored cotton attire is highly recommended.', 'Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 3 to 4 hours local tour'
FROM public.packages p WHERE p.slug = 'buddhism-mahabodhi-temple-bagan-myanmar'
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
  p.id, 3, 'Souvenir Shopping & Onward Departure', 'Bagan', 'Conclude your memorable stay in Bagan with local craft shopping, checkout, and outbound transfers.',
  'Handicrafts Shopping', 'Visit local co-operative markets to buy traditional souvenirs, regional sweets, or native organic spices.',
  'Check-out & Packing', 'Return to your hotel, pack your bags, clear any local incidentals, and check out from your rooms.',
  'Outbound Transfer', 'Board your private vehicle transfer to the airport or railway station for your onward return journey home.',
  'Monastery Hours: 5:00 AM - 11:30 AM, 2:30 PM - 6:00 PM | Meditation: 5:30 AM', 'Breakfast & Special Dinner Buffet (100% Satvik Veg).', 'AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Pilgrim Rest House (Safe, family-friendly rooms, walking distance to sacred sites)', 'Perfect travel weather with low humidity and comfortable evening temperature 20°C.',
  'Modest clothing that covers shoulders and knees. Light-colored cotton attire is highly recommended.', 'Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 1 to 2 hours transfer'
FROM public.packages p WHERE p.slug = 'buddhism-mahabodhi-temple-bagan-myanmar'
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
  p.id, 1, 'Arrival & Settle in at Ngari', 'Ngari', 'Welcome to your yatra. Arrive in Ngari, transfer to your stay, and rest before your sightseeing tour.',
  'Arrival & Check-in', 'Arrive at the nearest transit hub. Meet our coordinator and transfer to your pre-booked stay in Ngari.',
  'Leisure & Rest', 'Check into your hotel room, unpack your luggage, and rest to recover from your flight or train journey.',
  'Orientation Walk', 'Meet your local guide for a small walk around the neighborhood. Receive a detailed brief on local customs.',
  'Monastery Hours: 5:00 AM - 11:30 AM, 2:30 PM - 6:00 PM | Meditation: 5:30 AM', 'Welcome Drink & Buffet Dinner included (100% Satvik Veg).', 'AC Shuttle Transit for close proximity site transfers and passenger drops.',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Vedic Heritage Inn (Ashram atmosphere, close to main shrines, Western toilets, hot water)', 'Warm and sunny afternoon, ideal for outdoor sightseeing, average temp 24°C.',
  'Modest clothing that covers shoulders and knees. Light-colored cotton attire is highly recommended.', 'Comfortable travel footwear, photo ID, essential personal medication, daypack.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 1 to 2 hours transfer'
FROM public.packages p WHERE p.slug = 'buddhism-mount-kailash-tibet'
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
  p.id, 2, 'Explore Mount Kailash Heritage Centre', 'Ngari', 'Spend your day visiting Mount Kailash Heritage Centre, the primary attraction in Mount Kailash, accompanied by our expert guide.',
  'Guided Tour of Mount Kailash Heritage Centre', 'Early morning visit to Mount Kailash Heritage Centre to avoid crowds. Learn about the heritage and unique history of this landmark.',
  'Local Traditional Lunch', 'Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings.',
  'Evening walk at Mount Kailash Panoramic Viewpoint', 'Stroll around Mount Kailash Panoramic Viewpoint for scenic sunset views. Capture great family photos as the evening lights turn on.',
  'Monastery Hours: 5:00 AM - 11:30 AM, 2:30 PM - 6:00 PM | Meditation: 5:30 AM', 'Complimentary Breakfast & Traditional Lunch (100% Satvik Veg).', 'AC Private Sedan with professional local driver (includes first-aid kit and bottled water).',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Premium Pilgrim Hotel (AC rooms, elevator, clean linen, hot water, elevator access)', 'Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.',
  'Modest clothing that covers shoulders and knees. Light-colored cotton attire is highly recommended.', 'Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 3 to 4 hours local tour'
FROM public.packages p WHERE p.slug = 'buddhism-mount-kailash-tibet'
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
  p.id, 3, 'Souvenir Shopping & Onward Departure', 'Ngari', 'Conclude your memorable stay in Ngari with local craft shopping, checkout, and outbound transfers.',
  'Handicrafts Shopping', 'Visit local co-operative markets to buy traditional souvenirs, regional sweets, or native organic spices.',
  'Check-out & Packing', 'Return to your hotel, pack your bags, clear any local incidentals, and check out from your rooms.',
  'Outbound Transfer', 'Board your private vehicle transfer to the airport or railway station for your onward return journey home.',
  'Monastery Hours: 5:00 AM - 11:30 AM, 2:30 PM - 6:00 PM | Meditation: 5:30 AM', 'Breakfast & Special Dinner Buffet (100% Satvik Veg).', 'AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Pilgrim Rest House (Safe, family-friendly rooms, walking distance to sacred sites)', 'Perfect travel weather with low humidity and comfortable evening temperature 20°C.',
  'Modest clothing that covers shoulders and knees. Light-colored cotton attire is highly recommended.', 'Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 1 to 2 hours transfer'
FROM public.packages p WHERE p.slug = 'buddhism-mount-kailash-tibet'
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
  p.id, 1, 'Arrival & Settle in at Nalanda', 'Nalanda', 'Welcome to your yatra. Arrive in Nalanda, transfer to your stay, and rest before your sightseeing tour.',
  'Arrival & Check-in', 'Arrive at the nearest transit hub. Meet our coordinator and transfer to your pre-booked stay in Nalanda.',
  'Leisure & Rest', 'Check into your hotel room, unpack your luggage, and rest to recover from your flight or train journey.',
  'Orientation Walk', 'Meet your local guide for a small walk around the neighborhood. Receive a detailed brief on local customs.',
  'Monastery Hours: 5:00 AM - 11:30 AM, 2:30 PM - 6:00 PM | Meditation: 5:30 AM', 'Welcome Drink & Buffet Dinner included (100% Satvik Veg).', 'AC Shuttle Transit for close proximity site transfers and passenger drops.',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Vedic Heritage Inn (Ashram atmosphere, close to main shrines, Western toilets, hot water)', 'Warm and sunny afternoon, ideal for outdoor sightseeing, average temp 24°C.',
  'Modest clothing that covers shoulders and knees. Light-colored cotton attire is highly recommended.', 'Comfortable travel footwear, photo ID, essential personal medication, daypack.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 1 to 2 hours transfer'
FROM public.packages p WHERE p.slug = 'buddhism-nalanda-india'
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
  p.id, 2, 'Explore Nalanda Heritage Centre', 'Nalanda', 'Spend your day visiting Nalanda Heritage Centre, the primary attraction in Nalanda, accompanied by our expert guide.',
  'Guided Tour of Nalanda Heritage Centre', 'Early morning visit to Nalanda Heritage Centre to avoid crowds. Learn about the heritage and unique history of this landmark.',
  'Local Traditional Lunch', 'Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings.',
  'Evening walk at Nalanda Panoramic Viewpoint', 'Stroll around Nalanda Panoramic Viewpoint for scenic sunset views. Capture great family photos as the evening lights turn on.',
  'Monastery Hours: 5:00 AM - 11:30 AM, 2:30 PM - 6:00 PM | Meditation: 5:30 AM', 'Complimentary Breakfast & Traditional Lunch (100% Satvik Veg).', 'AC Private Sedan with professional local driver (includes first-aid kit and bottled water).',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Premium Pilgrim Hotel (AC rooms, elevator, clean linen, hot water, elevator access)', 'Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.',
  'Modest clothing that covers shoulders and knees. Light-colored cotton attire is highly recommended.', 'Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 3 to 4 hours local tour'
FROM public.packages p WHERE p.slug = 'buddhism-nalanda-india'
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
  p.id, 3, 'Souvenir Shopping & Onward Departure', 'Nalanda', 'Conclude your memorable stay in Nalanda with local craft shopping, checkout, and outbound transfers.',
  'Handicrafts Shopping', 'Visit local co-operative markets to buy traditional souvenirs, regional sweets, or native organic spices.',
  'Check-out & Packing', 'Return to your hotel, pack your bags, clear any local incidentals, and check out from your rooms.',
  'Outbound Transfer', 'Board your private vehicle transfer to the airport or railway station for your onward return journey home.',
  'Monastery Hours: 5:00 AM - 11:30 AM, 2:30 PM - 6:00 PM | Meditation: 5:30 AM', 'Breakfast & Special Dinner Buffet (100% Satvik Veg).', 'AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Pilgrim Rest House (Safe, family-friendly rooms, walking distance to sacred sites)', 'Perfect travel weather with low humidity and comfortable evening temperature 20°C.',
  'Modest clothing that covers shoulders and knees. Light-colored cotton attire is highly recommended.', 'Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 1 to 2 hours transfer'
FROM public.packages p WHERE p.slug = 'buddhism-nalanda-india'
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
  p.id, 1, 'Arrival & Settle in at Nalanda', 'Nalanda', 'Welcome to your yatra. Arrive in Nalanda, transfer to your stay, and rest before your sightseeing tour.',
  'Arrival & Check-in', 'Arrive at the nearest transit hub. Meet our coordinator and transfer to your pre-booked stay in Nalanda.',
  'Leisure & Rest', 'Check into your hotel room, unpack your luggage, and rest to recover from your flight or train journey.',
  'Orientation Walk', 'Meet your local guide for a small walk around the neighborhood. Receive a detailed brief on local customs.',
  'Monastery Hours: 5:00 AM - 11:30 AM, 2:30 PM - 6:00 PM | Meditation: 5:30 AM', 'Welcome Drink & Buffet Dinner included (100% Satvik Veg).', 'AC Shuttle Transit for close proximity site transfers and passenger drops.',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Vedic Heritage Inn (Ashram atmosphere, close to main shrines, Western toilets, hot water)', 'Warm and sunny afternoon, ideal for outdoor sightseeing, average temp 24°C.',
  'Modest clothing that covers shoulders and knees. Light-colored cotton attire is highly recommended.', 'Comfortable travel footwear, photo ID, essential personal medication, daypack.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 1 to 2 hours transfer'
FROM public.packages p WHERE p.slug = 'buddhism-rajgir-india'
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
  p.id, 2, 'Explore Rajgir Heritage Centre', 'Nalanda', 'Spend your day visiting Rajgir Heritage Centre, the primary attraction in Rajgir, accompanied by our expert guide.',
  'Guided Tour of Rajgir Heritage Centre', 'Early morning visit to Rajgir Heritage Centre to avoid crowds. Learn about the heritage and unique history of this landmark.',
  'Local Traditional Lunch', 'Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings.',
  'Evening walk at Rajgir Panoramic Viewpoint', 'Stroll around Rajgir Panoramic Viewpoint for scenic sunset views. Capture great family photos as the evening lights turn on.',
  'Monastery Hours: 5:00 AM - 11:30 AM, 2:30 PM - 6:00 PM | Meditation: 5:30 AM', 'Complimentary Breakfast & Traditional Lunch (100% Satvik Veg).', 'AC Private Sedan with professional local driver (includes first-aid kit and bottled water).',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Premium Pilgrim Hotel (AC rooms, elevator, clean linen, hot water, elevator access)', 'Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.',
  'Modest clothing that covers shoulders and knees. Light-colored cotton attire is highly recommended.', 'Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 3 to 4 hours local tour'
FROM public.packages p WHERE p.slug = 'buddhism-rajgir-india'
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
  p.id, 3, 'Souvenir Shopping & Onward Departure', 'Nalanda', 'Conclude your memorable stay in Nalanda with local craft shopping, checkout, and outbound transfers.',
  'Handicrafts Shopping', 'Visit local co-operative markets to buy traditional souvenirs, regional sweets, or native organic spices.',
  'Check-out & Packing', 'Return to your hotel, pack your bags, clear any local incidentals, and check out from your rooms.',
  'Outbound Transfer', 'Board your private vehicle transfer to the airport or railway station for your onward return journey home.',
  'Monastery Hours: 5:00 AM - 11:30 AM, 2:30 PM - 6:00 PM | Meditation: 5:30 AM', 'Breakfast & Special Dinner Buffet (100% Satvik Veg).', 'AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Pilgrim Rest House (Safe, family-friendly rooms, walking distance to sacred sites)', 'Perfect travel weather with low humidity and comfortable evening temperature 20°C.',
  'Modest clothing that covers shoulders and knees. Light-colored cotton attire is highly recommended.', 'Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 1 to 2 hours transfer'
FROM public.packages p WHERE p.slug = 'buddhism-rajgir-india'
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
  p.id, 1, 'Arrival & Settle in at Varanasi', 'Varanasi', 'Welcome to your yatra. Arrive in Varanasi, transfer to your stay, and rest before your sightseeing tour.',
  'Arrival & Check-in', 'Arrive at the nearest transit hub. Meet our coordinator and transfer to your pre-booked stay in Varanasi.',
  'Leisure & Rest', 'Check into your hotel room, unpack your luggage, and rest to recover from your flight or train journey.',
  'Orientation Walk', 'Meet your local guide for a small walk around the neighborhood. Receive a detailed brief on local customs.',
  'Monastery Hours: 5:00 AM - 11:30 AM, 2:30 PM - 6:00 PM | Meditation: 5:30 AM', 'Welcome Drink & Buffet Dinner included (100% Satvik Veg).', 'AC Shuttle Transit for close proximity site transfers and passenger drops.',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Vedic Heritage Inn (Ashram atmosphere, close to main shrines, Western toilets, hot water)', 'Warm and sunny afternoon, ideal for outdoor sightseeing, average temp 24°C.',
  'Modest clothing that covers shoulders and knees. Light-colored cotton attire is highly recommended.', 'Comfortable travel footwear, photo ID, essential personal medication, daypack.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 1 to 2 hours transfer'
FROM public.packages p WHERE p.slug = 'buddhism-sarnath-india'
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
  p.id, 2, 'Explore Sarnath Heritage Centre', 'Varanasi', 'Spend your day visiting Sarnath Heritage Centre, the primary attraction in Sarnath, accompanied by our expert guide.',
  'Guided Tour of Sarnath Heritage Centre', 'Early morning visit to Sarnath Heritage Centre to avoid crowds. Learn about the heritage and unique history of this landmark.',
  'Local Traditional Lunch', 'Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings.',
  'Evening walk at Sarnath Panoramic Viewpoint', 'Stroll around Sarnath Panoramic Viewpoint for scenic sunset views. Capture great family photos as the evening lights turn on.',
  'Monastery Hours: 5:00 AM - 11:30 AM, 2:30 PM - 6:00 PM | Meditation: 5:30 AM', 'Complimentary Breakfast & Traditional Lunch (100% Satvik Veg).', 'AC Private Sedan with professional local driver (includes first-aid kit and bottled water).',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Premium Pilgrim Hotel (AC rooms, elevator, clean linen, hot water, elevator access)', 'Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.',
  'Modest clothing that covers shoulders and knees. Light-colored cotton attire is highly recommended.', 'Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 3 to 4 hours local tour'
FROM public.packages p WHERE p.slug = 'buddhism-sarnath-india'
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
  p.id, 3, 'Souvenir Shopping & Onward Departure', 'Varanasi', 'Conclude your memorable stay in Varanasi with local craft shopping, checkout, and outbound transfers.',
  'Handicrafts Shopping', 'Visit local co-operative markets to buy traditional souvenirs, regional sweets, or native organic spices.',
  'Check-out & Packing', 'Return to your hotel, pack your bags, clear any local incidentals, and check out from your rooms.',
  'Outbound Transfer', 'Board your private vehicle transfer to the airport or railway station for your onward return journey home.',
  'Monastery Hours: 5:00 AM - 11:30 AM, 2:30 PM - 6:00 PM | Meditation: 5:30 AM', 'Breakfast & Special Dinner Buffet (100% Satvik Veg).', 'AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Pilgrim Rest House (Safe, family-friendly rooms, walking distance to sacred sites)', 'Perfect travel weather with low humidity and comfortable evening temperature 20°C.',
  'Modest clothing that covers shoulders and knees. Light-colored cotton attire is highly recommended.', 'Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 1 to 2 hours transfer'
FROM public.packages p WHERE p.slug = 'buddhism-sarnath-india'
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
  p.id, 1, 'Arrival & Settle in at Yangon', 'Yangon', 'Welcome to your yatra. Arrive in Yangon, transfer to your stay, and rest before your sightseeing tour.',
  'Arrival & Check-in', 'Arrive at the nearest transit hub. Meet our coordinator and transfer to your pre-booked stay in Yangon.',
  'Leisure & Rest', 'Check into your hotel room, unpack your luggage, and rest to recover from your flight or train journey.',
  'Orientation Walk', 'Meet your local guide for a small walk around the neighborhood. Receive a detailed brief on local customs.',
  'Monastery Hours: 5:00 AM - 11:30 AM, 2:30 PM - 6:00 PM | Meditation: 5:30 AM', 'Welcome Drink & Buffet Dinner included (100% Satvik Veg).', 'AC Shuttle Transit for close proximity site transfers and passenger drops.',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Vedic Heritage Inn (Ashram atmosphere, close to main shrines, Western toilets, hot water)', 'Warm and sunny afternoon, ideal for outdoor sightseeing, average temp 24°C.',
  'Modest clothing that covers shoulders and knees. Light-colored cotton attire is highly recommended.', 'Comfortable travel footwear, photo ID, essential personal medication, daypack.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 1 to 2 hours transfer'
FROM public.packages p WHERE p.slug = 'buddhism-shwedagon-pagoda-myanmar'
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
  p.id, 2, 'Explore Shwedagon Pagoda Heritage Centre', 'Yangon', 'Spend your day visiting Shwedagon Pagoda Heritage Centre, the primary attraction in Shwedagon Pagoda, accompanied by our expert guide.',
  'Guided Tour of Shwedagon Pagoda Heritage Centre', 'Early morning visit to Shwedagon Pagoda Heritage Centre to avoid crowds. Learn about the heritage and unique history of this landmark.',
  'Local Traditional Lunch', 'Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings.',
  'Evening walk at Shwedagon Pagoda Panoramic Viewpoint', 'Stroll around Shwedagon Pagoda Panoramic Viewpoint for scenic sunset views. Capture great family photos as the evening lights turn on.',
  'Monastery Hours: 5:00 AM - 11:30 AM, 2:30 PM - 6:00 PM | Meditation: 5:30 AM', 'Complimentary Breakfast & Traditional Lunch (100% Satvik Veg).', 'AC Private Sedan with professional local driver (includes first-aid kit and bottled water).',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Premium Pilgrim Hotel (AC rooms, elevator, clean linen, hot water, elevator access)', 'Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.',
  'Modest clothing that covers shoulders and knees. Light-colored cotton attire is highly recommended.', 'Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 3 to 4 hours local tour'
FROM public.packages p WHERE p.slug = 'buddhism-shwedagon-pagoda-myanmar'
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
  p.id, 3, 'Souvenir Shopping & Onward Departure', 'Yangon', 'Conclude your memorable stay in Yangon with local craft shopping, checkout, and outbound transfers.',
  'Handicrafts Shopping', 'Visit local co-operative markets to buy traditional souvenirs, regional sweets, or native organic spices.',
  'Check-out & Packing', 'Return to your hotel, pack your bags, clear any local incidentals, and check out from your rooms.',
  'Outbound Transfer', 'Board your private vehicle transfer to the airport or railway station for your onward return journey home.',
  'Monastery Hours: 5:00 AM - 11:30 AM, 2:30 PM - 6:00 PM | Meditation: 5:30 AM', 'Breakfast & Special Dinner Buffet (100% Satvik Veg).', 'AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Pilgrim Rest House (Safe, family-friendly rooms, walking distance to sacred sites)', 'Perfect travel weather with low humidity and comfortable evening temperature 20°C.',
  'Modest clothing that covers shoulders and knees. Light-colored cotton attire is highly recommended.', 'Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 1 to 2 hours transfer'
FROM public.packages p WHERE p.slug = 'buddhism-shwedagon-pagoda-myanmar'
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
  p.id, 1, 'Arrival & Settle in at Paro', 'Paro', 'Welcome to your yatra. Arrive in Paro, transfer to your stay, and rest before your sightseeing tour.',
  'Arrival & Check-in', 'Arrive at the nearest transit hub. Meet our coordinator and transfer to your pre-booked stay in Paro.',
  'Leisure & Rest', 'Check into your hotel room, unpack your luggage, and rest to recover from your flight or train journey.',
  'Orientation Walk', 'Meet your local guide for a small walk around the neighborhood. Receive a detailed brief on local customs.',
  'Monastery Hours: 5:00 AM - 11:30 AM, 2:30 PM - 6:00 PM | Meditation: 5:30 AM', 'Welcome Drink & Buffet Dinner included (100% Satvik Veg).', 'AC Shuttle Transit for close proximity site transfers and passenger drops.',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Vedic Heritage Inn (Ashram atmosphere, close to main shrines, Western toilets, hot water)', 'Warm and sunny afternoon, ideal for outdoor sightseeing, average temp 24°C.',
  'Modest clothing that covers shoulders and knees. Light-colored cotton attire is highly recommended.', 'Comfortable travel footwear, photo ID, essential personal medication, daypack.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 1 to 2 hours transfer'
FROM public.packages p WHERE p.slug = 'buddhism-tiger-s-nest-monastery-paro-taktsang-bhutan'
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
  p.id, 2, 'Explore Tiger’s Nest Monastery Heritage Centre', 'Paro', 'Spend your day visiting Tiger’s Nest Monastery Heritage Centre, the primary attraction in Tiger’s Nest Monastery, accompanied by our expert guide.',
  'Guided Tour of Tiger’s Nest Monastery Heritage Centre', 'Early morning visit to Tiger’s Nest Monastery Heritage Centre to avoid crowds. Learn about the heritage and unique history of this landmark.',
  'Local Traditional Lunch', 'Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings.',
  'Evening walk at Tiger’s Nest Monastery Panoramic Viewpoint', 'Stroll around Tiger’s Nest Monastery Panoramic Viewpoint for scenic sunset views. Capture great family photos as the evening lights turn on.',
  'Monastery Hours: 5:00 AM - 11:30 AM, 2:30 PM - 6:00 PM | Meditation: 5:30 AM', 'Complimentary Breakfast & Traditional Lunch (100% Satvik Veg).', 'AC Private Sedan with professional local driver (includes first-aid kit and bottled water).',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Premium Pilgrim Hotel (AC rooms, elevator, clean linen, hot water, elevator access)', 'Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.',
  'Modest clothing that covers shoulders and knees. Light-colored cotton attire is highly recommended.', 'Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 3 to 4 hours local tour'
FROM public.packages p WHERE p.slug = 'buddhism-tiger-s-nest-monastery-paro-taktsang-bhutan'
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
  p.id, 3, 'Souvenir Shopping & Onward Departure', 'Paro', 'Conclude your memorable stay in Paro with local craft shopping, checkout, and outbound transfers.',
  'Handicrafts Shopping', 'Visit local co-operative markets to buy traditional souvenirs, regional sweets, or native organic spices.',
  'Check-out & Packing', 'Return to your hotel, pack your bags, clear any local incidentals, and check out from your rooms.',
  'Outbound Transfer', 'Board your private vehicle transfer to the airport or railway station for your onward return journey home.',
  'Monastery Hours: 5:00 AM - 11:30 AM, 2:30 PM - 6:00 PM | Meditation: 5:30 AM', 'Breakfast & Special Dinner Buffet (100% Satvik Veg).', 'AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Pilgrim Rest House (Safe, family-friendly rooms, walking distance to sacred sites)', 'Perfect travel weather with low humidity and comfortable evening temperature 20°C.',
  'Modest clothing that covers shoulders and knees. Light-colored cotton attire is highly recommended.', 'Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 1 to 2 hours transfer'
FROM public.packages p WHERE p.slug = 'buddhism-tiger-s-nest-monastery-paro-taktsang-bhutan'
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
  p.id, 1, 'Arrival & Settle in at Mexico City', 'Mexico City', 'Welcome to your yatra. Arrive in Mexico City, transfer to your stay, and rest before your sightseeing tour.',
  'Arrival & Check-in', 'Arrive at the nearest transit hub. Meet our coordinator and transfer to your pre-booked stay in Mexico City.',
  'Leisure & Rest', 'Check into your hotel room, unpack your luggage, and rest to recover from your flight or train journey.',
  'Orientation Walk', 'Meet your local guide for a small walk around the neighborhood. Receive a detailed brief on local customs.',
  'Cathedral Mass: 7:00 AM, 9:00 AM | Sanctuary guided walks: 10:00 AM - 4:00 PM', 'Welcome Drink & Buffet Dinner included (100% Satvik Veg).', 'AC Shuttle Transit for close proximity site transfers and passenger drops.',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Vedic Heritage Inn (Ashram atmosphere, close to main shrines, Western toilets, hot water)', 'Warm and sunny afternoon, ideal for outdoor sightseeing, average temp 24°C.',
  'Smart casual attire. No tank tops, short skirts, or beachwear allowed inside the sanctuary gates.', 'Comfortable travel footwear, photo ID, essential personal medication, daypack.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 1 to 2 hours transfer'
FROM public.packages p WHERE p.slug = 'christianity-basilica-of-our-lady-of-guadalupe-mexico'
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
  p.id, 2, 'Explore Basilica of Our Lady of Guadalupe Heritage Centre', 'Mexico City', 'Spend your day visiting Basilica of Our Lady of Guadalupe Heritage Centre, the primary attraction in Basilica of Our Lady of Guadalupe, accompanied by our expert guide.',
  'Guided Tour of Basilica of Our Lady of Guadalupe Heritage Centre', 'Early morning visit to Basilica of Our Lady of Guadalupe Heritage Centre to avoid crowds. Learn about the heritage and unique history of this landmark.',
  'Local Traditional Lunch', 'Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings.',
  'Evening walk at Basilica of Our Lady of Guadalupe Panoramic Viewpoint', 'Stroll around Basilica of Our Lady of Guadalupe Panoramic Viewpoint for scenic sunset views. Capture great family photos as the evening lights turn on.',
  'Cathedral Mass: 7:00 AM, 9:00 AM | Sanctuary guided walks: 10:00 AM - 4:00 PM', 'Complimentary Breakfast & Traditional Lunch (100% Satvik Veg).', 'AC Private Sedan with professional local driver (includes first-aid kit and bottled water).',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Premium Pilgrim Hotel (AC rooms, elevator, clean linen, hot water, elevator access)', 'Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.',
  'Smart casual attire. No tank tops, short skirts, or beachwear allowed inside the sanctuary gates.', 'Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 3 to 4 hours local tour'
FROM public.packages p WHERE p.slug = 'christianity-basilica-of-our-lady-of-guadalupe-mexico'
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
  p.id, 3, 'Souvenir Shopping & Onward Departure', 'Mexico City', 'Conclude your memorable stay in Mexico City with local craft shopping, checkout, and outbound transfers.',
  'Handicrafts Shopping', 'Visit local co-operative markets to buy traditional souvenirs, regional sweets, or native organic spices.',
  'Check-out & Packing', 'Return to your hotel, pack your bags, clear any local incidentals, and check out from your rooms.',
  'Outbound Transfer', 'Board your private vehicle transfer to the airport or railway station for your onward return journey home.',
  'Cathedral Mass: 7:00 AM, 9:00 AM | Sanctuary guided walks: 10:00 AM - 4:00 PM', 'Breakfast & Special Dinner Buffet (100% Satvik Veg).', 'AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Pilgrim Rest House (Safe, family-friendly rooms, walking distance to sacred sites)', 'Perfect travel weather with low humidity and comfortable evening temperature 20°C.',
  'Smart casual attire. No tank tops, short skirts, or beachwear allowed inside the sanctuary gates.', 'Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 1 to 2 hours transfer'
FROM public.packages p WHERE p.slug = 'christianity-basilica-of-our-lady-of-guadalupe-mexico'
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
  p.id, 1, 'Arrival & Settle in at Vatican City', 'Vatican City', 'Welcome to your yatra. Arrive in Vatican City, transfer to your stay, and rest before your sightseeing tour.',
  'Arrival & Check-in', 'Arrive at the nearest transit hub. Meet our coordinator and transfer to your pre-booked stay in Vatican City.',
  'Leisure & Rest', 'Check into your hotel room, unpack your luggage, and rest to recover from your flight or train journey.',
  'Orientation Walk', 'Meet your local guide for a small walk around the neighborhood. Receive a detailed brief on local customs.',
  'Cathedral Mass: 7:00 AM, 9:00 AM | Sanctuary guided walks: 10:00 AM - 4:00 PM', 'Welcome Drink & Buffet Dinner included (100% Satvik Veg).', 'AC Shuttle Transit for close proximity site transfers and passenger drops.',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Vedic Heritage Inn (Ashram atmosphere, close to main shrines, Western toilets, hot water)', 'Warm and sunny afternoon, ideal for outdoor sightseeing, average temp 24°C.',
  'Smart casual attire. No tank tops, short skirts, or beachwear allowed inside the sanctuary gates.', 'Comfortable travel footwear, photo ID, essential personal medication, daypack.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 1 to 2 hours transfer'
FROM public.packages p WHERE p.slug = 'christianity-basilica-of-saint-peter-vatican-city'
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
  p.id, 2, 'Explore Basilica of Saint Peter, Vatican City Heritage Centre', 'Vatican City', 'Spend your day visiting Basilica of Saint Peter, Vatican City Heritage Centre, the primary attraction in Basilica of Saint Peter, Vatican City, accompanied by our expert guide.',
  'Guided Tour of Basilica of Saint Peter, Vatican City Heritage Centre', 'Early morning visit to Basilica of Saint Peter, Vatican City Heritage Centre to avoid crowds. Learn about the heritage and unique history of this landmark.',
  'Local Traditional Lunch', 'Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings.',
  'Evening walk at Basilica of Saint Peter, Vatican City Panoramic Viewpoint', 'Stroll around Basilica of Saint Peter, Vatican City Panoramic Viewpoint for scenic sunset views. Capture great family photos as the evening lights turn on.',
  'Cathedral Mass: 7:00 AM, 9:00 AM | Sanctuary guided walks: 10:00 AM - 4:00 PM', 'Complimentary Breakfast & Traditional Lunch (100% Satvik Veg).', 'AC Private Sedan with professional local driver (includes first-aid kit and bottled water).',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Premium Pilgrim Hotel (AC rooms, elevator, clean linen, hot water, elevator access)', 'Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.',
  'Smart casual attire. No tank tops, short skirts, or beachwear allowed inside the sanctuary gates.', 'Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 3 to 4 hours local tour'
FROM public.packages p WHERE p.slug = 'christianity-basilica-of-saint-peter-vatican-city'
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
  p.id, 3, 'Souvenir Shopping & Onward Departure', 'Vatican City', 'Conclude your memorable stay in Vatican City with local craft shopping, checkout, and outbound transfers.',
  'Handicrafts Shopping', 'Visit local co-operative markets to buy traditional souvenirs, regional sweets, or native organic spices.',
  'Check-out & Packing', 'Return to your hotel, pack your bags, clear any local incidentals, and check out from your rooms.',
  'Outbound Transfer', 'Board your private vehicle transfer to the airport or railway station for your onward return journey home.',
  'Cathedral Mass: 7:00 AM, 9:00 AM | Sanctuary guided walks: 10:00 AM - 4:00 PM', 'Breakfast & Special Dinner Buffet (100% Satvik Veg).', 'AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Pilgrim Rest House (Safe, family-friendly rooms, walking distance to sacred sites)', 'Perfect travel weather with low humidity and comfortable evening temperature 20°C.',
  'Smart casual attire. No tank tops, short skirts, or beachwear allowed inside the sanctuary gates.', 'Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 1 to 2 hours transfer'
FROM public.packages p WHERE p.slug = 'christianity-basilica-of-saint-peter-vatican-city'
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
  p.id, 1, 'Arrival & Settle in at West Bank', 'West Bank', 'Welcome to your yatra. Arrive in West Bank, transfer to your stay, and rest before your sightseeing tour.',
  'Arrival & Check-in', 'Arrive at the nearest transit hub. Meet our coordinator and transfer to your pre-booked stay in West Bank.',
  'Leisure & Rest', 'Check into your hotel room, unpack your luggage, and rest to recover from your flight or train journey.',
  'Orientation Walk', 'Meet your local guide for a small walk around the neighborhood. Receive a detailed brief on local customs.',
  'Cathedral Mass: 7:00 AM, 9:00 AM | Sanctuary guided walks: 10:00 AM - 4:00 PM', 'Welcome Drink & Buffet Dinner included (100% Satvik Veg).', 'AC Shuttle Transit for close proximity site transfers and passenger drops.',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Vedic Heritage Inn (Ashram atmosphere, close to main shrines, Western toilets, hot water)', 'Warm and sunny afternoon, ideal for outdoor sightseeing, average temp 24°C.',
  'Smart casual attire. No tank tops, short skirts, or beachwear allowed inside the sanctuary gates.', 'Comfortable travel footwear, photo ID, essential personal medication, daypack.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 1 to 2 hours transfer'
FROM public.packages p WHERE p.slug = 'christianity-bethlehem-palestine'
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
  p.id, 2, 'Explore Bethlehem Heritage Centre', 'West Bank', 'Spend your day visiting Bethlehem Heritage Centre, the primary attraction in Bethlehem, accompanied by our expert guide.',
  'Guided Tour of Bethlehem Heritage Centre', 'Early morning visit to Bethlehem Heritage Centre to avoid crowds. Learn about the heritage and unique history of this landmark.',
  'Local Traditional Lunch', 'Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings.',
  'Evening walk at Bethlehem Panoramic Viewpoint', 'Stroll around Bethlehem Panoramic Viewpoint for scenic sunset views. Capture great family photos as the evening lights turn on.',
  'Cathedral Mass: 7:00 AM, 9:00 AM | Sanctuary guided walks: 10:00 AM - 4:00 PM', 'Complimentary Breakfast & Traditional Lunch (100% Satvik Veg).', 'AC Private Sedan with professional local driver (includes first-aid kit and bottled water).',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Premium Pilgrim Hotel (AC rooms, elevator, clean linen, hot water, elevator access)', 'Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.',
  'Smart casual attire. No tank tops, short skirts, or beachwear allowed inside the sanctuary gates.', 'Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 3 to 4 hours local tour'
FROM public.packages p WHERE p.slug = 'christianity-bethlehem-palestine'
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
  p.id, 3, 'Souvenir Shopping & Onward Departure', 'West Bank', 'Conclude your memorable stay in West Bank with local craft shopping, checkout, and outbound transfers.',
  'Handicrafts Shopping', 'Visit local co-operative markets to buy traditional souvenirs, regional sweets, or native organic spices.',
  'Check-out & Packing', 'Return to your hotel, pack your bags, clear any local incidentals, and check out from your rooms.',
  'Outbound Transfer', 'Board your private vehicle transfer to the airport or railway station for your onward return journey home.',
  'Cathedral Mass: 7:00 AM, 9:00 AM | Sanctuary guided walks: 10:00 AM - 4:00 PM', 'Breakfast & Special Dinner Buffet (100% Satvik Veg).', 'AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Pilgrim Rest House (Safe, family-friendly rooms, walking distance to sacred sites)', 'Perfect travel weather with low humidity and comfortable evening temperature 20°C.',
  'Smart casual attire. No tank tops, short skirts, or beachwear allowed inside the sanctuary gates.', 'Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 1 to 2 hours transfer'
FROM public.packages p WHERE p.slug = 'christianity-bethlehem-palestine'
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
  p.id, 1, 'Arrival & Settle in at Galicia', 'Galicia', 'Welcome to your yatra. Arrive in Galicia, transfer to your stay, and rest before your sightseeing tour.',
  'Arrival & Check-in', 'Arrive at the nearest transit hub. Meet our coordinator and transfer to your pre-booked stay in Galicia.',
  'Leisure & Rest', 'Check into your hotel room, unpack your luggage, and rest to recover from your flight or train journey.',
  'Orientation Walk', 'Meet your local guide for a small walk around the neighborhood. Receive a detailed brief on local customs.',
  'Cathedral Mass: 7:00 AM, 9:00 AM | Sanctuary guided walks: 10:00 AM - 4:00 PM', 'Welcome Drink & Buffet Dinner included (100% Satvik Veg).', 'AC Shuttle Transit for close proximity site transfers and passenger drops.',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Vedic Heritage Inn (Ashram atmosphere, close to main shrines, Western toilets, hot water)', 'Warm and sunny afternoon, ideal for outdoor sightseeing, average temp 24°C.',
  'Smart casual attire. No tank tops, short skirts, or beachwear allowed inside the sanctuary gates.', 'Comfortable travel footwear, photo ID, essential personal medication, daypack.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 1 to 2 hours transfer'
FROM public.packages p WHERE p.slug = 'christianity-camino-de-santiago-spain'
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
  p.id, 2, 'Explore Camino de Santiago, Spain Heritage Centre', 'Galicia', 'Spend your day visiting Camino de Santiago, Spain Heritage Centre, the primary attraction in Camino de Santiago, Spain, accompanied by our expert guide.',
  'Guided Tour of Camino de Santiago, Spain Heritage Centre', 'Early morning visit to Camino de Santiago, Spain Heritage Centre to avoid crowds. Learn about the heritage and unique history of this landmark.',
  'Local Traditional Lunch', 'Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings.',
  'Evening walk at Camino de Santiago, Spain Panoramic Viewpoint', 'Stroll around Camino de Santiago, Spain Panoramic Viewpoint for scenic sunset views. Capture great family photos as the evening lights turn on.',
  'Cathedral Mass: 7:00 AM, 9:00 AM | Sanctuary guided walks: 10:00 AM - 4:00 PM', 'Complimentary Breakfast & Traditional Lunch (100% Satvik Veg).', 'AC Private Sedan with professional local driver (includes first-aid kit and bottled water).',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Premium Pilgrim Hotel (AC rooms, elevator, clean linen, hot water, elevator access)', 'Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.',
  'Smart casual attire. No tank tops, short skirts, or beachwear allowed inside the sanctuary gates.', 'Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 3 to 4 hours local tour'
FROM public.packages p WHERE p.slug = 'christianity-camino-de-santiago-spain'
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
  p.id, 3, 'Souvenir Shopping & Onward Departure', 'Galicia', 'Conclude your memorable stay in Galicia with local craft shopping, checkout, and outbound transfers.',
  'Handicrafts Shopping', 'Visit local co-operative markets to buy traditional souvenirs, regional sweets, or native organic spices.',
  'Check-out & Packing', 'Return to your hotel, pack your bags, clear any local incidentals, and check out from your rooms.',
  'Outbound Transfer', 'Board your private vehicle transfer to the airport or railway station for your onward return journey home.',
  'Cathedral Mass: 7:00 AM, 9:00 AM | Sanctuary guided walks: 10:00 AM - 4:00 PM', 'Breakfast & Special Dinner Buffet (100% Satvik Veg).', 'AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Pilgrim Rest House (Safe, family-friendly rooms, walking distance to sacred sites)', 'Perfect travel weather with low humidity and comfortable evening temperature 20°C.',
  'Smart casual attire. No tank tops, short skirts, or beachwear allowed inside the sanctuary gates.', 'Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 1 to 2 hours transfer'
FROM public.packages p WHERE p.slug = 'christianity-camino-de-santiago-spain'
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
  p.id, 1, 'Arrival & Settle in at Kent', 'Kent', 'Welcome to your yatra. Arrive in Kent, transfer to your stay, and rest before your sightseeing tour.',
  'Arrival & Check-in', 'Arrive at the nearest transit hub. Meet our coordinator and transfer to your pre-booked stay in Kent.',
  'Leisure & Rest', 'Check into your hotel room, unpack your luggage, and rest to recover from your flight or train journey.',
  'Orientation Walk', 'Meet your local guide for a small walk around the neighborhood. Receive a detailed brief on local customs.',
  'Cathedral Mass: 7:00 AM, 9:00 AM | Sanctuary guided walks: 10:00 AM - 4:00 PM', 'Welcome Drink & Buffet Dinner included (100% Satvik Veg).', 'AC Shuttle Transit for close proximity site transfers and passenger drops.',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Vedic Heritage Inn (Ashram atmosphere, close to main shrines, Western toilets, hot water)', 'Warm and sunny afternoon, ideal for outdoor sightseeing, average temp 24°C.',
  'Smart casual attire. No tank tops, short skirts, or beachwear allowed inside the sanctuary gates.', 'Comfortable travel footwear, photo ID, essential personal medication, daypack.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 1 to 2 hours transfer'
FROM public.packages p WHERE p.slug = 'christianity-canterbury-cathedral-england'
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
  p.id, 2, 'Explore Canterbury Cathedral Heritage Centre', 'Kent', 'Spend your day visiting Canterbury Cathedral Heritage Centre, the primary attraction in Canterbury Cathedral, accompanied by our expert guide.',
  'Guided Tour of Canterbury Cathedral Heritage Centre', 'Early morning visit to Canterbury Cathedral Heritage Centre to avoid crowds. Learn about the heritage and unique history of this landmark.',
  'Local Traditional Lunch', 'Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings.',
  'Evening walk at Canterbury Cathedral Panoramic Viewpoint', 'Stroll around Canterbury Cathedral Panoramic Viewpoint for scenic sunset views. Capture great family photos as the evening lights turn on.',
  'Cathedral Mass: 7:00 AM, 9:00 AM | Sanctuary guided walks: 10:00 AM - 4:00 PM', 'Complimentary Breakfast & Traditional Lunch (100% Satvik Veg).', 'AC Private Sedan with professional local driver (includes first-aid kit and bottled water).',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Premium Pilgrim Hotel (AC rooms, elevator, clean linen, hot water, elevator access)', 'Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.',
  'Smart casual attire. No tank tops, short skirts, or beachwear allowed inside the sanctuary gates.', 'Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 3 to 4 hours local tour'
FROM public.packages p WHERE p.slug = 'christianity-canterbury-cathedral-england'
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
  p.id, 3, 'Souvenir Shopping & Onward Departure', 'Kent', 'Conclude your memorable stay in Kent with local craft shopping, checkout, and outbound transfers.',
  'Handicrafts Shopping', 'Visit local co-operative markets to buy traditional souvenirs, regional sweets, or native organic spices.',
  'Check-out & Packing', 'Return to your hotel, pack your bags, clear any local incidentals, and check out from your rooms.',
  'Outbound Transfer', 'Board your private vehicle transfer to the airport or railway station for your onward return journey home.',
  'Cathedral Mass: 7:00 AM, 9:00 AM | Sanctuary guided walks: 10:00 AM - 4:00 PM', 'Breakfast & Special Dinner Buffet (100% Satvik Veg).', 'AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Pilgrim Rest House (Safe, family-friendly rooms, walking distance to sacred sites)', 'Perfect travel weather with low humidity and comfortable evening temperature 20°C.',
  'Smart casual attire. No tank tops, short skirts, or beachwear allowed inside the sanctuary gates.', 'Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 1 to 2 hours transfer'
FROM public.packages p WHERE p.slug = 'christianity-canterbury-cathedral-england'
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
  p.id, 1, 'Arrival & Settle in at Jerusalem', 'Jerusalem', 'Welcome to your yatra. Arrive in Jerusalem, transfer to your stay, and rest before your sightseeing tour.',
  'Arrival & Check-in', 'Arrive at the nearest transit hub. Meet our coordinator and transfer to your pre-booked stay in Jerusalem.',
  'Leisure & Rest', 'Check into your hotel room, unpack your luggage, and rest to recover from your flight or train journey.',
  'Orientation Walk', 'Meet your local guide for a small walk around the neighborhood. Receive a detailed brief on local customs.',
  'Cathedral Mass: 7:00 AM, 9:00 AM | Sanctuary guided walks: 10:00 AM - 4:00 PM', 'Welcome Drink & Buffet Dinner included (100% Satvik Veg).', 'AC Shuttle Transit for close proximity site transfers and passenger drops.',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Vedic Heritage Inn (Ashram atmosphere, close to main shrines, Western toilets, hot water)', 'Warm and sunny afternoon, ideal for outdoor sightseeing, average temp 24°C.',
  'Smart casual attire. No tank tops, short skirts, or beachwear allowed inside the sanctuary gates.', 'Comfortable travel footwear, photo ID, essential personal medication, daypack.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 1 to 2 hours transfer'
FROM public.packages p WHERE p.slug = 'christianity-church-of-the-holy-sepulchre-jerusalem-israel'
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
  p.id, 2, 'Explore Church of the Holy Sepulchre, Jerusalem Heritage Centre', 'Jerusalem', 'Spend your day visiting Church of the Holy Sepulchre, Jerusalem Heritage Centre, the primary attraction in Church of the Holy Sepulchre, Jerusalem, accompanied by our expert guide.',
  'Guided Tour of Church of the Holy Sepulchre, Jerusalem Heritage Centre', 'Early morning visit to Church of the Holy Sepulchre, Jerusalem Heritage Centre to avoid crowds. Learn about the heritage and unique history of this landmark.',
  'Local Traditional Lunch', 'Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings.',
  'Evening walk at Church of the Holy Sepulchre, Jerusalem Panoramic Viewpoint', 'Stroll around Church of the Holy Sepulchre, Jerusalem Panoramic Viewpoint for scenic sunset views. Capture great family photos as the evening lights turn on.',
  'Cathedral Mass: 7:00 AM, 9:00 AM | Sanctuary guided walks: 10:00 AM - 4:00 PM', 'Complimentary Breakfast & Traditional Lunch (100% Satvik Veg).', 'AC Private Sedan with professional local driver (includes first-aid kit and bottled water).',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Premium Pilgrim Hotel (AC rooms, elevator, clean linen, hot water, elevator access)', 'Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.',
  'Smart casual attire. No tank tops, short skirts, or beachwear allowed inside the sanctuary gates.', 'Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 3 to 4 hours local tour'
FROM public.packages p WHERE p.slug = 'christianity-church-of-the-holy-sepulchre-jerusalem-israel'
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
  p.id, 3, 'Souvenir Shopping & Onward Departure', 'Jerusalem', 'Conclude your memorable stay in Jerusalem with local craft shopping, checkout, and outbound transfers.',
  'Handicrafts Shopping', 'Visit local co-operative markets to buy traditional souvenirs, regional sweets, or native organic spices.',
  'Check-out & Packing', 'Return to your hotel, pack your bags, clear any local incidentals, and check out from your rooms.',
  'Outbound Transfer', 'Board your private vehicle transfer to the airport or railway station for your onward return journey home.',
  'Cathedral Mass: 7:00 AM, 9:00 AM | Sanctuary guided walks: 10:00 AM - 4:00 PM', 'Breakfast & Special Dinner Buffet (100% Satvik Veg).', 'AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Pilgrim Rest House (Safe, family-friendly rooms, walking distance to sacred sites)', 'Perfect travel weather with low humidity and comfortable evening temperature 20°C.',
  'Smart casual attire. No tank tops, short skirts, or beachwear allowed inside the sanctuary gates.', 'Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 1 to 2 hours transfer'
FROM public.packages p WHERE p.slug = 'christianity-church-of-the-holy-sepulchre-jerusalem-israel'
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
  p.id, 1, 'Arrival & Settle in at New Mexico', 'New Mexico', 'Welcome to your yatra. Arrive in New Mexico, transfer to your stay, and rest before your sightseeing tour.',
  'Arrival & Check-in', 'Arrive at the nearest transit hub. Meet our coordinator and transfer to your pre-booked stay in New Mexico.',
  'Leisure & Rest', 'Check into your hotel room, unpack your luggage, and rest to recover from your flight or train journey.',
  'Orientation Walk', 'Meet your local guide for a small walk around the neighborhood. Receive a detailed brief on local customs.',
  'Cathedral Mass: 7:00 AM, 9:00 AM | Sanctuary guided walks: 10:00 AM - 4:00 PM', 'Welcome Drink & Buffet Dinner included (100% Satvik Veg).', 'AC Shuttle Transit for close proximity site transfers and passenger drops.',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Vedic Heritage Inn (Ashram atmosphere, close to main shrines, Western toilets, hot water)', 'Warm and sunny afternoon, ideal for outdoor sightseeing, average temp 24°C.',
  'Smart casual attire. No tank tops, short skirts, or beachwear allowed inside the sanctuary gates.', 'Comfortable travel footwear, photo ID, essential personal medication, daypack.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 1 to 2 hours transfer'
FROM public.packages p WHERE p.slug = 'christianity-el-santuario-de-chimayo-new-mexico-usa'
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
  p.id, 2, 'Explore El Santuario de Chimayo Heritage Centre', 'New Mexico', 'Spend your day visiting El Santuario de Chimayo Heritage Centre, the primary attraction in El Santuario de Chimayo, accompanied by our expert guide.',
  'Guided Tour of El Santuario de Chimayo Heritage Centre', 'Early morning visit to El Santuario de Chimayo Heritage Centre to avoid crowds. Learn about the heritage and unique history of this landmark.',
  'Local Traditional Lunch', 'Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings.',
  'Evening walk at El Santuario de Chimayo Panoramic Viewpoint', 'Stroll around El Santuario de Chimayo Panoramic Viewpoint for scenic sunset views. Capture great family photos as the evening lights turn on.',
  'Cathedral Mass: 7:00 AM, 9:00 AM | Sanctuary guided walks: 10:00 AM - 4:00 PM', 'Complimentary Breakfast & Traditional Lunch (100% Satvik Veg).', 'AC Private Sedan with professional local driver (includes first-aid kit and bottled water).',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Premium Pilgrim Hotel (AC rooms, elevator, clean linen, hot water, elevator access)', 'Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.',
  'Smart casual attire. No tank tops, short skirts, or beachwear allowed inside the sanctuary gates.', 'Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 3 to 4 hours local tour'
FROM public.packages p WHERE p.slug = 'christianity-el-santuario-de-chimayo-new-mexico-usa'
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
  p.id, 3, 'Souvenir Shopping & Onward Departure', 'New Mexico', 'Conclude your memorable stay in New Mexico with local craft shopping, checkout, and outbound transfers.',
  'Handicrafts Shopping', 'Visit local co-operative markets to buy traditional souvenirs, regional sweets, or native organic spices.',
  'Check-out & Packing', 'Return to your hotel, pack your bags, clear any local incidentals, and check out from your rooms.',
  'Outbound Transfer', 'Board your private vehicle transfer to the airport or railway station for your onward return journey home.',
  'Cathedral Mass: 7:00 AM, 9:00 AM | Sanctuary guided walks: 10:00 AM - 4:00 PM', 'Breakfast & Special Dinner Buffet (100% Satvik Veg).', 'AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Pilgrim Rest House (Safe, family-friendly rooms, walking distance to sacred sites)', 'Perfect travel weather with low humidity and comfortable evening temperature 20°C.',
  'Smart casual attire. No tank tops, short skirts, or beachwear allowed inside the sanctuary gates.', 'Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 1 to 2 hours transfer'
FROM public.packages p WHERE p.slug = 'christianity-el-santuario-de-chimayo-new-mexico-usa'
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
  p.id, 1, 'Arrival & Settle in at Santarém', 'Santarém', 'Welcome to your yatra. Arrive in Santarém, transfer to your stay, and rest before your sightseeing tour.',
  'Arrival & Check-in', 'Arrive at the nearest transit hub. Meet our coordinator and transfer to your pre-booked stay in Santarém.',
  'Leisure & Rest', 'Check into your hotel room, unpack your luggage, and rest to recover from your flight or train journey.',
  'Orientation Walk', 'Meet your local guide for a small walk around the neighborhood. Receive a detailed brief on local customs.',
  'Cathedral Mass: 7:00 AM, 9:00 AM | Sanctuary guided walks: 10:00 AM - 4:00 PM', 'Welcome Drink & Buffet Dinner included (100% Satvik Veg).', 'AC Shuttle Transit for close proximity site transfers and passenger drops.',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Vedic Heritage Inn (Ashram atmosphere, close to main shrines, Western toilets, hot water)', 'Warm and sunny afternoon, ideal for outdoor sightseeing, average temp 24°C.',
  'Smart casual attire. No tank tops, short skirts, or beachwear allowed inside the sanctuary gates.', 'Comfortable travel footwear, photo ID, essential personal medication, daypack.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 1 to 2 hours transfer'
FROM public.packages p WHERE p.slug = 'christianity-f-tima-portugal'
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
  p.id, 2, 'Explore Fátima Heritage Centre', 'Santarém', 'Spend your day visiting Fátima Heritage Centre, the primary attraction in Fátima, accompanied by our expert guide.',
  'Guided Tour of Fátima Heritage Centre', 'Early morning visit to Fátima Heritage Centre to avoid crowds. Learn about the heritage and unique history of this landmark.',
  'Local Traditional Lunch', 'Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings.',
  'Evening walk at Fátima Panoramic Viewpoint', 'Stroll around Fátima Panoramic Viewpoint for scenic sunset views. Capture great family photos as the evening lights turn on.',
  'Cathedral Mass: 7:00 AM, 9:00 AM | Sanctuary guided walks: 10:00 AM - 4:00 PM', 'Complimentary Breakfast & Traditional Lunch (100% Satvik Veg).', 'AC Private Sedan with professional local driver (includes first-aid kit and bottled water).',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Premium Pilgrim Hotel (AC rooms, elevator, clean linen, hot water, elevator access)', 'Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.',
  'Smart casual attire. No tank tops, short skirts, or beachwear allowed inside the sanctuary gates.', 'Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 3 to 4 hours local tour'
FROM public.packages p WHERE p.slug = 'christianity-f-tima-portugal'
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
  p.id, 3, 'Souvenir Shopping & Onward Departure', 'Santarém', 'Conclude your memorable stay in Santarém with local craft shopping, checkout, and outbound transfers.',
  'Handicrafts Shopping', 'Visit local co-operative markets to buy traditional souvenirs, regional sweets, or native organic spices.',
  'Check-out & Packing', 'Return to your hotel, pack your bags, clear any local incidentals, and check out from your rooms.',
  'Outbound Transfer', 'Board your private vehicle transfer to the airport or railway station for your onward return journey home.',
  'Cathedral Mass: 7:00 AM, 9:00 AM | Sanctuary guided walks: 10:00 AM - 4:00 PM', 'Breakfast & Special Dinner Buffet (100% Satvik Veg).', 'AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Pilgrim Rest House (Safe, family-friendly rooms, walking distance to sacred sites)', 'Perfect travel weather with low humidity and comfortable evening temperature 20°C.',
  'Smart casual attire. No tank tops, short skirts, or beachwear allowed inside the sanctuary gates.', 'Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 1 to 2 hours transfer'
FROM public.packages p WHERE p.slug = 'christianity-f-tima-portugal'
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
  p.id, 1, 'Arrival & Settle in at Amhara', 'Amhara', 'Welcome to your yatra. Arrive in Amhara, transfer to your stay, and rest before your sightseeing tour.',
  'Arrival & Check-in', 'Arrive at the nearest transit hub. Meet our coordinator and transfer to your pre-booked stay in Amhara.',
  'Leisure & Rest', 'Check into your hotel room, unpack your luggage, and rest to recover from your flight or train journey.',
  'Orientation Walk', 'Meet your local guide for a small walk around the neighborhood. Receive a detailed brief on local customs.',
  'Cathedral Mass: 7:00 AM, 9:00 AM | Sanctuary guided walks: 10:00 AM - 4:00 PM', 'Welcome Drink & Buffet Dinner included (100% Satvik Veg).', 'AC Shuttle Transit for close proximity site transfers and passenger drops.',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Vedic Heritage Inn (Ashram atmosphere, close to main shrines, Western toilets, hot water)', 'Warm and sunny afternoon, ideal for outdoor sightseeing, average temp 24°C.',
  'Smart casual attire. No tank tops, short skirts, or beachwear allowed inside the sanctuary gates.', 'Comfortable travel footwear, photo ID, essential personal medication, daypack.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 1 to 2 hours transfer'
FROM public.packages p WHERE p.slug = 'christianity-lalibela-ethiopia'
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
  p.id, 2, 'Explore Lalibela Heritage Centre', 'Amhara', 'Spend your day visiting Lalibela Heritage Centre, the primary attraction in Lalibela, accompanied by our expert guide.',
  'Guided Tour of Lalibela Heritage Centre', 'Early morning visit to Lalibela Heritage Centre to avoid crowds. Learn about the heritage and unique history of this landmark.',
  'Local Traditional Lunch', 'Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings.',
  'Evening walk at Lalibela Panoramic Viewpoint', 'Stroll around Lalibela Panoramic Viewpoint for scenic sunset views. Capture great family photos as the evening lights turn on.',
  'Cathedral Mass: 7:00 AM, 9:00 AM | Sanctuary guided walks: 10:00 AM - 4:00 PM', 'Complimentary Breakfast & Traditional Lunch (100% Satvik Veg).', 'AC Private Sedan with professional local driver (includes first-aid kit and bottled water).',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Premium Pilgrim Hotel (AC rooms, elevator, clean linen, hot water, elevator access)', 'Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.',
  'Smart casual attire. No tank tops, short skirts, or beachwear allowed inside the sanctuary gates.', 'Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 3 to 4 hours local tour'
FROM public.packages p WHERE p.slug = 'christianity-lalibela-ethiopia'
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
  p.id, 3, 'Souvenir Shopping & Onward Departure', 'Amhara', 'Conclude your memorable stay in Amhara with local craft shopping, checkout, and outbound transfers.',
  'Handicrafts Shopping', 'Visit local co-operative markets to buy traditional souvenirs, regional sweets, or native organic spices.',
  'Check-out & Packing', 'Return to your hotel, pack your bags, clear any local incidentals, and check out from your rooms.',
  'Outbound Transfer', 'Board your private vehicle transfer to the airport or railway station for your onward return journey home.',
  'Cathedral Mass: 7:00 AM, 9:00 AM | Sanctuary guided walks: 10:00 AM - 4:00 PM', 'Breakfast & Special Dinner Buffet (100% Satvik Veg).', 'AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Pilgrim Rest House (Safe, family-friendly rooms, walking distance to sacred sites)', 'Perfect travel weather with low humidity and comfortable evening temperature 20°C.',
  'Smart casual attire. No tank tops, short skirts, or beachwear allowed inside the sanctuary gates.', 'Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 1 to 2 hours transfer'
FROM public.packages p WHERE p.slug = 'christianity-lalibela-ethiopia'
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
  p.id, 1, 'Arrival & Settle in at Chalkidiki', 'Chalkidiki', 'Welcome to your yatra. Arrive in Chalkidiki, transfer to your stay, and rest before your sightseeing tour.',
  'Arrival & Check-in', 'Arrive at the nearest transit hub. Meet our coordinator and transfer to your pre-booked stay in Chalkidiki.',
  'Leisure & Rest', 'Check into your hotel room, unpack your luggage, and rest to recover from your flight or train journey.',
  'Orientation Walk', 'Meet your local guide for a small walk around the neighborhood. Receive a detailed brief on local customs.',
  'Cathedral Mass: 7:00 AM, 9:00 AM | Sanctuary guided walks: 10:00 AM - 4:00 PM', 'Welcome Drink & Buffet Dinner included (100% Satvik Veg).', 'AC Shuttle Transit for close proximity site transfers and passenger drops.',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Vedic Heritage Inn (Ashram atmosphere, close to main shrines, Western toilets, hot water)', 'Warm and sunny afternoon, ideal for outdoor sightseeing, average temp 24°C.',
  'Smart casual attire. No tank tops, short skirts, or beachwear allowed inside the sanctuary gates.', 'Comfortable travel footwear, photo ID, essential personal medication, daypack.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 1 to 2 hours transfer'
FROM public.packages p WHERE p.slug = 'christianity-mount-athos-greece'
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
  p.id, 2, 'Explore Mount Athos Heritage Centre', 'Chalkidiki', 'Spend your day visiting Mount Athos Heritage Centre, the primary attraction in Mount Athos, accompanied by our expert guide.',
  'Guided Tour of Mount Athos Heritage Centre', 'Early morning visit to Mount Athos Heritage Centre to avoid crowds. Learn about the heritage and unique history of this landmark.',
  'Local Traditional Lunch', 'Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings.',
  'Evening walk at Mount Athos Panoramic Viewpoint', 'Stroll around Mount Athos Panoramic Viewpoint for scenic sunset views. Capture great family photos as the evening lights turn on.',
  'Cathedral Mass: 7:00 AM, 9:00 AM | Sanctuary guided walks: 10:00 AM - 4:00 PM', 'Complimentary Breakfast & Traditional Lunch (100% Satvik Veg).', 'AC Private Sedan with professional local driver (includes first-aid kit and bottled water).',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Premium Pilgrim Hotel (AC rooms, elevator, clean linen, hot water, elevator access)', 'Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.',
  'Smart casual attire. No tank tops, short skirts, or beachwear allowed inside the sanctuary gates.', 'Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 3 to 4 hours local tour'
FROM public.packages p WHERE p.slug = 'christianity-mount-athos-greece'
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
  p.id, 3, 'Souvenir Shopping & Onward Departure', 'Chalkidiki', 'Conclude your memorable stay in Chalkidiki with local craft shopping, checkout, and outbound transfers.',
  'Handicrafts Shopping', 'Visit local co-operative markets to buy traditional souvenirs, regional sweets, or native organic spices.',
  'Check-out & Packing', 'Return to your hotel, pack your bags, clear any local incidentals, and check out from your rooms.',
  'Outbound Transfer', 'Board your private vehicle transfer to the airport or railway station for your onward return journey home.',
  'Cathedral Mass: 7:00 AM, 9:00 AM | Sanctuary guided walks: 10:00 AM - 4:00 PM', 'Breakfast & Special Dinner Buffet (100% Satvik Veg).', 'AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Pilgrim Rest House (Safe, family-friendly rooms, walking distance to sacred sites)', 'Perfect travel weather with low humidity and comfortable evening temperature 20°C.',
  'Smart casual attire. No tank tops, short skirts, or beachwear allowed inside the sanctuary gates.', 'Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 1 to 2 hours transfer'
FROM public.packages p WHERE p.slug = 'christianity-mount-athos-greece'
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
  p.id, 1, 'Arrival & Settle in at Jerusalem', 'Jerusalem', 'Welcome to your yatra. Arrive in Jerusalem, transfer to your stay, and rest before your sightseeing tour.',
  'Arrival & Check-in', 'Arrive at the nearest transit hub. Meet our coordinator and transfer to your pre-booked stay in Jerusalem.',
  'Leisure & Rest', 'Check into your hotel room, unpack your luggage, and rest to recover from your flight or train journey.',
  'Orientation Walk', 'Meet your local guide for a small walk around the neighborhood. Receive a detailed brief on local customs.',
  'Cathedral Mass: 7:00 AM, 9:00 AM | Sanctuary guided walks: 10:00 AM - 4:00 PM', 'Welcome Drink & Buffet Dinner included (100% Satvik Veg).', 'AC Shuttle Transit for close proximity site transfers and passenger drops.',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Vedic Heritage Inn (Ashram atmosphere, close to main shrines, Western toilets, hot water)', 'Warm and sunny afternoon, ideal for outdoor sightseeing, average temp 24°C.',
  'Smart casual attire. No tank tops, short skirts, or beachwear allowed inside the sanctuary gates.', 'Comfortable travel footwear, photo ID, essential personal medication, daypack.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 1 to 2 hours transfer'
FROM public.packages p WHERE p.slug = 'christianity-old-city-jerusalem-israel'
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
  p.id, 2, 'Explore Old City Jerusalem Heritage Centre', 'Jerusalem', 'Spend your day visiting Old City Jerusalem Heritage Centre, the primary attraction in Old City Jerusalem, accompanied by our expert guide.',
  'Guided Tour of Old City Jerusalem Heritage Centre', 'Early morning visit to Old City Jerusalem Heritage Centre to avoid crowds. Learn about the heritage and unique history of this landmark.',
  'Local Traditional Lunch', 'Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings.',
  'Evening walk at Old City Jerusalem Panoramic Viewpoint', 'Stroll around Old City Jerusalem Panoramic Viewpoint for scenic sunset views. Capture great family photos as the evening lights turn on.',
  'Cathedral Mass: 7:00 AM, 9:00 AM | Sanctuary guided walks: 10:00 AM - 4:00 PM', 'Complimentary Breakfast & Traditional Lunch (100% Satvik Veg).', 'AC Private Sedan with professional local driver (includes first-aid kit and bottled water).',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Premium Pilgrim Hotel (AC rooms, elevator, clean linen, hot water, elevator access)', 'Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.',
  'Smart casual attire. No tank tops, short skirts, or beachwear allowed inside the sanctuary gates.', 'Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 3 to 4 hours local tour'
FROM public.packages p WHERE p.slug = 'christianity-old-city-jerusalem-israel'
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
  p.id, 3, 'Souvenir Shopping & Onward Departure', 'Jerusalem', 'Conclude your memorable stay in Jerusalem with local craft shopping, checkout, and outbound transfers.',
  'Handicrafts Shopping', 'Visit local co-operative markets to buy traditional souvenirs, regional sweets, or native organic spices.',
  'Check-out & Packing', 'Return to your hotel, pack your bags, clear any local incidentals, and check out from your rooms.',
  'Outbound Transfer', 'Board your private vehicle transfer to the airport or railway station for your onward return journey home.',
  'Cathedral Mass: 7:00 AM, 9:00 AM | Sanctuary guided walks: 10:00 AM - 4:00 PM', 'Breakfast & Special Dinner Buffet (100% Satvik Veg).', 'AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Pilgrim Rest House (Safe, family-friendly rooms, walking distance to sacred sites)', 'Perfect travel weather with low humidity and comfortable evening temperature 20°C.',
  'Smart casual attire. No tank tops, short skirts, or beachwear allowed inside the sanctuary gates.', 'Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 1 to 2 hours transfer'
FROM public.packages p WHERE p.slug = 'christianity-old-city-jerusalem-israel'
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
  p.id, 1, 'Arrival & Settle in at Hautes-Pyrénées', 'Hautes-Pyrénées', 'Welcome to your yatra. Arrive in Hautes-Pyrénées, transfer to your stay, and rest before your sightseeing tour.',
  'Arrival & Check-in', 'Arrive at the nearest transit hub. Meet our coordinator and transfer to your pre-booked stay in Hautes-Pyrénées.',
  'Leisure & Rest', 'Check into your hotel room, unpack your luggage, and rest to recover from your flight or train journey.',
  'Orientation Walk', 'Meet your local guide for a small walk around the neighborhood. Receive a detailed brief on local customs.',
  'Cathedral Mass: 7:00 AM, 9:00 AM | Sanctuary guided walks: 10:00 AM - 4:00 PM', 'Welcome Drink & Buffet Dinner included (100% Satvik Veg).', 'AC Shuttle Transit for close proximity site transfers and passenger drops.',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Vedic Heritage Inn (Ashram atmosphere, close to main shrines, Western toilets, hot water)', 'Warm and sunny afternoon, ideal for outdoor sightseeing, average temp 24°C.',
  'Smart casual attire. No tank tops, short skirts, or beachwear allowed inside the sanctuary gates.', 'Comfortable travel footwear, photo ID, essential personal medication, daypack.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 1 to 2 hours transfer'
FROM public.packages p WHERE p.slug = 'christianity-sanctuary-of-our-lady-of-lourdes-france'
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
  p.id, 2, 'Explore Sanctuary of Our Lady of Lourdes Heritage Centre', 'Hautes-Pyrénées', 'Spend your day visiting Sanctuary of Our Lady of Lourdes Heritage Centre, the primary attraction in Sanctuary of Our Lady of Lourdes, accompanied by our expert guide.',
  'Guided Tour of Sanctuary of Our Lady of Lourdes Heritage Centre', 'Early morning visit to Sanctuary of Our Lady of Lourdes Heritage Centre to avoid crowds. Learn about the heritage and unique history of this landmark.',
  'Local Traditional Lunch', 'Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings.',
  'Evening walk at Sanctuary of Our Lady of Lourdes Panoramic Viewpoint', 'Stroll around Sanctuary of Our Lady of Lourdes Panoramic Viewpoint for scenic sunset views. Capture great family photos as the evening lights turn on.',
  'Cathedral Mass: 7:00 AM, 9:00 AM | Sanctuary guided walks: 10:00 AM - 4:00 PM', 'Complimentary Breakfast & Traditional Lunch (100% Satvik Veg).', 'AC Private Sedan with professional local driver (includes first-aid kit and bottled water).',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Premium Pilgrim Hotel (AC rooms, elevator, clean linen, hot water, elevator access)', 'Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.',
  'Smart casual attire. No tank tops, short skirts, or beachwear allowed inside the sanctuary gates.', 'Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 3 to 4 hours local tour'
FROM public.packages p WHERE p.slug = 'christianity-sanctuary-of-our-lady-of-lourdes-france'
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
  p.id, 3, 'Souvenir Shopping & Onward Departure', 'Hautes-Pyrénées', 'Conclude your memorable stay in Hautes-Pyrénées with local craft shopping, checkout, and outbound transfers.',
  'Handicrafts Shopping', 'Visit local co-operative markets to buy traditional souvenirs, regional sweets, or native organic spices.',
  'Check-out & Packing', 'Return to your hotel, pack your bags, clear any local incidentals, and check out from your rooms.',
  'Outbound Transfer', 'Board your private vehicle transfer to the airport or railway station for your onward return journey home.',
  'Cathedral Mass: 7:00 AM, 9:00 AM | Sanctuary guided walks: 10:00 AM - 4:00 PM', 'Breakfast & Special Dinner Buffet (100% Satvik Veg).', 'AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Pilgrim Rest House (Safe, family-friendly rooms, walking distance to sacred sites)', 'Perfect travel weather with low humidity and comfortable evening temperature 20°C.',
  'Smart casual attire. No tank tops, short skirts, or beachwear allowed inside the sanctuary gates.', 'Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 1 to 2 hours transfer'
FROM public.packages p WHERE p.slug = 'christianity-sanctuary-of-our-lady-of-lourdes-france'
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
  p.id, 1, 'Arrival & Settle in at Sololá', 'Sololá', 'Welcome to your yatra. Arrive in Sololá, transfer to your stay, and rest before your sightseeing tour.',
  'Arrival & Check-in', 'Arrive at the nearest transit hub. Meet our coordinator and transfer to your pre-booked stay in Sololá.',
  'Leisure & Rest', 'Check into your hotel room, unpack your luggage, and rest to recover from your flight or train journey.',
  'Orientation Walk', 'Meet your local guide for a small walk around the neighborhood. Receive a detailed brief on local customs.',
  'Cathedral Mass: 7:00 AM, 9:00 AM | Sanctuary guided walks: 10:00 AM - 4:00 PM', 'Welcome Drink & Buffet Dinner included (100% Satvik Veg).', 'AC Shuttle Transit for close proximity site transfers and passenger drops.',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Vedic Heritage Inn (Ashram atmosphere, close to main shrines, Western toilets, hot water)', 'Warm and sunny afternoon, ideal for outdoor sightseeing, average temp 24°C.',
  'Smart casual attire. No tank tops, short skirts, or beachwear allowed inside the sanctuary gates.', 'Comfortable travel footwear, photo ID, essential personal medication, daypack.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 1 to 2 hours transfer'
FROM public.packages p WHERE p.slug = 'christianity-santiago-atitl-n-guatemala'
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
  p.id, 2, 'Explore Santiago Atitlán Heritage Centre', 'Sololá', 'Spend your day visiting Santiago Atitlán Heritage Centre, the primary attraction in Santiago Atitlán, accompanied by our expert guide.',
  'Guided Tour of Santiago Atitlán Heritage Centre', 'Early morning visit to Santiago Atitlán Heritage Centre to avoid crowds. Learn about the heritage and unique history of this landmark.',
  'Local Traditional Lunch', 'Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings.',
  'Evening walk at Santiago Atitlán Panoramic Viewpoint', 'Stroll around Santiago Atitlán Panoramic Viewpoint for scenic sunset views. Capture great family photos as the evening lights turn on.',
  'Cathedral Mass: 7:00 AM, 9:00 AM | Sanctuary guided walks: 10:00 AM - 4:00 PM', 'Complimentary Breakfast & Traditional Lunch (100% Satvik Veg).', 'AC Private Sedan with professional local driver (includes first-aid kit and bottled water).',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Premium Pilgrim Hotel (AC rooms, elevator, clean linen, hot water, elevator access)', 'Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.',
  'Smart casual attire. No tank tops, short skirts, or beachwear allowed inside the sanctuary gates.', 'Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 3 to 4 hours local tour'
FROM public.packages p WHERE p.slug = 'christianity-santiago-atitl-n-guatemala'
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
  p.id, 3, 'Souvenir Shopping & Onward Departure', 'Sololá', 'Conclude your memorable stay in Sololá with local craft shopping, checkout, and outbound transfers.',
  'Handicrafts Shopping', 'Visit local co-operative markets to buy traditional souvenirs, regional sweets, or native organic spices.',
  'Check-out & Packing', 'Return to your hotel, pack your bags, clear any local incidentals, and check out from your rooms.',
  'Outbound Transfer', 'Board your private vehicle transfer to the airport or railway station for your onward return journey home.',
  'Cathedral Mass: 7:00 AM, 9:00 AM | Sanctuary guided walks: 10:00 AM - 4:00 PM', 'Breakfast & Special Dinner Buffet (100% Satvik Veg).', 'AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Pilgrim Rest House (Safe, family-friendly rooms, walking distance to sacred sites)', 'Perfect travel weather with low humidity and comfortable evening temperature 20°C.',
  'Smart casual attire. No tank tops, short skirts, or beachwear allowed inside the sanctuary gates.', 'Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 1 to 2 hours transfer'
FROM public.packages p WHERE p.slug = 'christianity-santiago-atitl-n-guatemala'
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
  p.id, 1, 'Arrival & Settle in at São Paulo', 'São Paulo', 'Welcome to your yatra. Arrive in São Paulo, transfer to your stay, and rest before your sightseeing tour.',
  'Arrival & Check-in', 'Arrive at the nearest transit hub. Meet our coordinator and transfer to your pre-booked stay in São Paulo.',
  'Leisure & Rest', 'Check into your hotel room, unpack your luggage, and rest to recover from your flight or train journey.',
  'Orientation Walk', 'Meet your local guide for a small walk around the neighborhood. Receive a detailed brief on local customs.',
  'Cathedral Mass: 7:00 AM, 9:00 AM | Sanctuary guided walks: 10:00 AM - 4:00 PM', 'Welcome Drink & Buffet Dinner included (100% Satvik Veg).', 'AC Shuttle Transit for close proximity site transfers and passenger drops.',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Vedic Heritage Inn (Ashram atmosphere, close to main shrines, Western toilets, hot water)', 'Warm and sunny afternoon, ideal for outdoor sightseeing, average temp 24°C.',
  'Smart casual attire. No tank tops, short skirts, or beachwear allowed inside the sanctuary gates.', 'Comfortable travel footwear, photo ID, essential personal medication, daypack.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 1 to 2 hours transfer'
FROM public.packages p WHERE p.slug = 'christianity-santu-rio-de-nossa-senhora-aparecida-brazil'
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
  p.id, 2, 'Explore Santuário de Nossa Senhora Aparecida Heritage Centre', 'São Paulo', 'Spend your day visiting Santuário de Nossa Senhora Aparecida Heritage Centre, the primary attraction in Santuário de Nossa Senhora Aparecida, accompanied by our expert guide.',
  'Guided Tour of Santuário de Nossa Senhora Aparecida Heritage Centre', 'Early morning visit to Santuário de Nossa Senhora Aparecida Heritage Centre to avoid crowds. Learn about the heritage and unique history of this landmark.',
  'Local Traditional Lunch', 'Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings.',
  'Evening walk at Santuário de Nossa Senhora Aparecida Panoramic Viewpoint', 'Stroll around Santuário de Nossa Senhora Aparecida Panoramic Viewpoint for scenic sunset views. Capture great family photos as the evening lights turn on.',
  'Cathedral Mass: 7:00 AM, 9:00 AM | Sanctuary guided walks: 10:00 AM - 4:00 PM', 'Complimentary Breakfast & Traditional Lunch (100% Satvik Veg).', 'AC Private Sedan with professional local driver (includes first-aid kit and bottled water).',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Premium Pilgrim Hotel (AC rooms, elevator, clean linen, hot water, elevator access)', 'Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.',
  'Smart casual attire. No tank tops, short skirts, or beachwear allowed inside the sanctuary gates.', 'Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 3 to 4 hours local tour'
FROM public.packages p WHERE p.slug = 'christianity-santu-rio-de-nossa-senhora-aparecida-brazil'
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
  p.id, 3, 'Souvenir Shopping & Onward Departure', 'São Paulo', 'Conclude your memorable stay in São Paulo with local craft shopping, checkout, and outbound transfers.',
  'Handicrafts Shopping', 'Visit local co-operative markets to buy traditional souvenirs, regional sweets, or native organic spices.',
  'Check-out & Packing', 'Return to your hotel, pack your bags, clear any local incidentals, and check out from your rooms.',
  'Outbound Transfer', 'Board your private vehicle transfer to the airport or railway station for your onward return journey home.',
  'Cathedral Mass: 7:00 AM, 9:00 AM | Sanctuary guided walks: 10:00 AM - 4:00 PM', 'Breakfast & Special Dinner Buffet (100% Satvik Veg).', 'AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Pilgrim Rest House (Safe, family-friendly rooms, walking distance to sacred sites)', 'Perfect travel weather with low humidity and comfortable evening temperature 20°C.',
  'Smart casual attire. No tank tops, short skirts, or beachwear allowed inside the sanctuary gates.', 'Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 1 to 2 hours transfer'
FROM public.packages p WHERE p.slug = 'christianity-santu-rio-de-nossa-senhora-aparecida-brazil'
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
  p.id, 1, 'Arrival & Settle in at Vatican City', 'Vatican City', 'Welcome to your yatra. Arrive in Vatican City, transfer to your stay, and rest before your sightseeing tour.',
  'Arrival & Check-in', 'Arrive at the nearest transit hub. Meet our coordinator and transfer to your pre-booked stay in Vatican City.',
  'Leisure & Rest', 'Check into your hotel room, unpack your luggage, and rest to recover from your flight or train journey.',
  'Orientation Walk', 'Meet your local guide for a small walk around the neighborhood. Receive a detailed brief on local customs.',
  'Cathedral Mass: 7:00 AM, 9:00 AM | Sanctuary guided walks: 10:00 AM - 4:00 PM', 'Welcome Drink & Buffet Dinner included (100% Satvik Veg).', 'AC Shuttle Transit for close proximity site transfers and passenger drops.',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Vedic Heritage Inn (Ashram atmosphere, close to main shrines, Western toilets, hot water)', 'Warm and sunny afternoon, ideal for outdoor sightseeing, average temp 24°C.',
  'Smart casual attire. No tank tops, short skirts, or beachwear allowed inside the sanctuary gates.', 'Comfortable travel footwear, photo ID, essential personal medication, daypack.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 1 to 2 hours transfer'
FROM public.packages p WHERE p.slug = 'christianity-vatican-city-italy'
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
  p.id, 2, 'Explore Vatican City Heritage Centre', 'Vatican City', 'Spend your day visiting Vatican City Heritage Centre, the primary attraction in Vatican City, accompanied by our expert guide.',
  'Guided Tour of Vatican City Heritage Centre', 'Early morning visit to Vatican City Heritage Centre to avoid crowds. Learn about the heritage and unique history of this landmark.',
  'Local Traditional Lunch', 'Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings.',
  'Evening walk at Vatican City Panoramic Viewpoint', 'Stroll around Vatican City Panoramic Viewpoint for scenic sunset views. Capture great family photos as the evening lights turn on.',
  'Cathedral Mass: 7:00 AM, 9:00 AM | Sanctuary guided walks: 10:00 AM - 4:00 PM', 'Complimentary Breakfast & Traditional Lunch (100% Satvik Veg).', 'AC Private Sedan with professional local driver (includes first-aid kit and bottled water).',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Premium Pilgrim Hotel (AC rooms, elevator, clean linen, hot water, elevator access)', 'Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.',
  'Smart casual attire. No tank tops, short skirts, or beachwear allowed inside the sanctuary gates.', 'Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 3 to 4 hours local tour'
FROM public.packages p WHERE p.slug = 'christianity-vatican-city-italy'
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
  p.id, 3, 'Souvenir Shopping & Onward Departure', 'Vatican City', 'Conclude your memorable stay in Vatican City with local craft shopping, checkout, and outbound transfers.',
  'Handicrafts Shopping', 'Visit local co-operative markets to buy traditional souvenirs, regional sweets, or native organic spices.',
  'Check-out & Packing', 'Return to your hotel, pack your bags, clear any local incidentals, and check out from your rooms.',
  'Outbound Transfer', 'Board your private vehicle transfer to the airport or railway station for your onward return journey home.',
  'Cathedral Mass: 7:00 AM, 9:00 AM | Sanctuary guided walks: 10:00 AM - 4:00 PM', 'Breakfast & Special Dinner Buffet (100% Satvik Veg).', 'AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Pilgrim Rest House (Safe, family-friendly rooms, walking distance to sacred sites)', 'Perfect travel weather with low humidity and comfortable evening temperature 20°C.',
  'Smart casual attire. No tank tops, short skirts, or beachwear allowed inside the sanctuary gates.', 'Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 1 to 2 hours transfer'
FROM public.packages p WHERE p.slug = 'christianity-vatican-city-italy'
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
  p.id, 1, 'Arrival & Settle in at Ratnapura', 'Ratnapura', 'Welcome to your yatra. Arrive in Ratnapura, transfer to your stay, and rest before your sightseeing tour.',
  'Arrival & Check-in', 'Arrive at the nearest transit hub. Meet our coordinator and transfer to your pre-booked stay in Ratnapura.',
  'Leisure & Rest', 'Check into your hotel room, unpack your luggage, and rest to recover from your flight or train journey.',
  'Orientation Walk', 'Meet your local guide for a small walk around the neighborhood. Receive a detailed brief on local customs.',
  'Temple Darshan: 6:00 AM - 12:30 PM, 4:30 PM - 8:30 PM | Evening Aarti: 6:30 PM', 'Welcome Drink & Buffet Dinner included (100% Satvik Veg).', 'AC Shuttle Transit for close proximity site transfers and passenger drops.',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Vedic Heritage Inn (Ashram atmosphere, close to main shrines, Western toilets, hot water)', 'Warm and sunny afternoon, ideal for outdoor sightseeing, average temp 24°C.',
  'Traditional wear. Dhoti or Pyjama-Kurta for men; Saree or Salwar suit for women. Sleeveless strictly prohibited.', 'Comfortable travel footwear, photo ID, essential personal medication, daypack.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 1 to 2 hours transfer'
FROM public.packages p WHERE p.slug = 'hinduism-adam-s-peak-sri-pada-sri-lanka'
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
  p.id, 2, 'Explore Adam’s Peak (Sri Pada) Heritage Centre', 'Ratnapura', 'Spend your day visiting Adam’s Peak (Sri Pada) Heritage Centre, the primary attraction in Adam’s Peak (Sri Pada), accompanied by our expert guide.',
  'Guided Tour of Adam’s Peak (Sri Pada) Heritage Centre', 'Early morning visit to Adam’s Peak (Sri Pada) Heritage Centre to avoid crowds. Learn about the heritage and unique history of this landmark.',
  'Local Traditional Lunch', 'Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings.',
  'Evening walk at Adam’s Peak (Sri Pada) Panoramic Viewpoint', 'Stroll around Adam’s Peak (Sri Pada) Panoramic Viewpoint for scenic sunset views. Capture great family photos as the evening lights turn on.',
  'Temple Darshan: 6:00 AM - 12:30 PM, 4:30 PM - 8:30 PM | Evening Aarti: 6:30 PM', 'Complimentary Breakfast & Traditional Lunch (100% Satvik Veg).', 'AC Private Sedan with professional local driver (includes first-aid kit and bottled water).',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Premium Pilgrim Hotel (AC rooms, elevator, clean linen, hot water, elevator access)', 'Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.',
  'Traditional wear. Dhoti or Pyjama-Kurta for men; Saree or Salwar suit for women. Sleeveless strictly prohibited.', 'Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 3 to 4 hours local tour'
FROM public.packages p WHERE p.slug = 'hinduism-adam-s-peak-sri-pada-sri-lanka'
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
  p.id, 3, 'Souvenir Shopping & Onward Departure', 'Ratnapura', 'Conclude your memorable stay in Ratnapura with local craft shopping, checkout, and outbound transfers.',
  'Handicrafts Shopping', 'Visit local co-operative markets to buy traditional souvenirs, regional sweets, or native organic spices.',
  'Check-out & Packing', 'Return to your hotel, pack your bags, clear any local incidentals, and check out from your rooms.',
  'Outbound Transfer', 'Board your private vehicle transfer to the airport or railway station for your onward return journey home.',
  'Temple Darshan: 6:00 AM - 12:30 PM, 4:30 PM - 8:30 PM | Evening Aarti: 6:30 PM', 'Breakfast & Special Dinner Buffet (100% Satvik Veg).', 'AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Pilgrim Rest House (Safe, family-friendly rooms, walking distance to sacred sites)', 'Perfect travel weather with low humidity and comfortable evening temperature 20°C.',
  'Traditional wear. Dhoti or Pyjama-Kurta for men; Saree or Salwar suit for women. Sleeveless strictly prohibited.', 'Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 1 to 2 hours transfer'
FROM public.packages p WHERE p.slug = 'hinduism-adam-s-peak-sri-pada-sri-lanka'
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
  p.id, 1, 'Arrival & Settle in at Chamoli', 'Chamoli', 'Welcome to your yatra. Arrive in Chamoli, transfer to your stay, and rest before your sightseeing tour.',
  'Arrival & Check-in', 'Arrive at the nearest transit hub. Meet our coordinator and transfer to your pre-booked stay in Chamoli.',
  'Leisure & Rest', 'Check into your hotel room, unpack your luggage, and rest to recover from your flight or train journey.',
  'Orientation Walk', 'Meet your local guide for a small walk around the neighborhood. Receive a detailed brief on local customs.',
  'Temple Darshan: 6:00 AM - 12:30 PM, 4:30 PM - 8:30 PM | Evening Aarti: 6:30 PM', 'Welcome Drink & Buffet Dinner included (100% Satvik Veg).', 'AC Shuttle Transit for close proximity site transfers and passenger drops.',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Vedic Heritage Inn (Ashram atmosphere, close to main shrines, Western toilets, hot water)', 'Warm and sunny afternoon, ideal for outdoor sightseeing, average temp 24°C.',
  'Traditional wear. Dhoti or Pyjama-Kurta for men; Saree or Salwar suit for women. Sleeveless strictly prohibited.', 'Comfortable travel footwear, photo ID, essential personal medication, daypack.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 1 to 2 hours transfer'
FROM public.packages p WHERE p.slug = 'hinduism-badrinath-india'
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
  p.id, 2, 'Explore Badrinath Heritage Centre', 'Chamoli', 'Spend your day visiting Badrinath Heritage Centre, the primary attraction in Badrinath, accompanied by our expert guide.',
  'Guided Tour of Badrinath Heritage Centre', 'Early morning visit to Badrinath Heritage Centre to avoid crowds. Learn about the heritage and unique history of this landmark.',
  'Local Traditional Lunch', 'Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings.',
  'Evening walk at Badrinath Panoramic Viewpoint', 'Stroll around Badrinath Panoramic Viewpoint for scenic sunset views. Capture great family photos as the evening lights turn on.',
  'Temple Darshan: 6:00 AM - 12:30 PM, 4:30 PM - 8:30 PM | Evening Aarti: 6:30 PM', 'Complimentary Breakfast & Traditional Lunch (100% Satvik Veg).', 'AC Private Sedan with professional local driver (includes first-aid kit and bottled water).',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Premium Pilgrim Hotel (AC rooms, elevator, clean linen, hot water, elevator access)', 'Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.',
  'Traditional wear. Dhoti or Pyjama-Kurta for men; Saree or Salwar suit for women. Sleeveless strictly prohibited.', 'Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 3 to 4 hours local tour'
FROM public.packages p WHERE p.slug = 'hinduism-badrinath-india'
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
  p.id, 3, 'Souvenir Shopping & Onward Departure', 'Chamoli', 'Conclude your memorable stay in Chamoli with local craft shopping, checkout, and outbound transfers.',
  'Handicrafts Shopping', 'Visit local co-operative markets to buy traditional souvenirs, regional sweets, or native organic spices.',
  'Check-out & Packing', 'Return to your hotel, pack your bags, clear any local incidentals, and check out from your rooms.',
  'Outbound Transfer', 'Board your private vehicle transfer to the airport or railway station for your onward return journey home.',
  'Temple Darshan: 6:00 AM - 12:30 PM, 4:30 PM - 8:30 PM | Evening Aarti: 6:30 PM', 'Breakfast & Special Dinner Buffet (100% Satvik Veg).', 'AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Pilgrim Rest House (Safe, family-friendly rooms, walking distance to sacred sites)', 'Perfect travel weather with low humidity and comfortable evening temperature 20°C.',
  'Traditional wear. Dhoti or Pyjama-Kurta for men; Saree or Salwar suit for women. Sleeveless strictly prohibited.', 'Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 1 to 2 hours transfer'
FROM public.packages p WHERE p.slug = 'hinduism-badrinath-india'
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
  p.id, 1, 'Arrival & Settle in at Dwarka', 'Dwarka', 'Welcome to your yatra. Arrive in Dwarka, transfer to your stay, and rest before your sightseeing tour.',
  'Arrival & Check-in', 'Arrive at the nearest transit hub. Meet our coordinator and transfer to your pre-booked stay in Dwarka.',
  'Leisure & Rest', 'Check into your hotel room, unpack your luggage, and rest to recover from your flight or train journey.',
  'Orientation Walk', 'Meet your local guide for a small walk around the neighborhood. Receive a detailed brief on local customs.',
  'Temple Darshan: 6:00 AM - 12:30 PM, 4:30 PM - 8:30 PM | Evening Aarti: 6:30 PM', 'Welcome Drink & Buffet Dinner included (100% Satvik Veg).', 'AC Shuttle Transit for close proximity site transfers and passenger drops.',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Vedic Heritage Inn (Ashram atmosphere, close to main shrines, Western toilets, hot water)', 'Warm and sunny afternoon, ideal for outdoor sightseeing, average temp 24°C.',
  'Traditional wear. Dhoti or Pyjama-Kurta for men; Saree or Salwar suit for women. Sleeveless strictly prohibited.', 'Comfortable travel footwear, photo ID, essential personal medication, daypack.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 1 to 2 hours transfer'
FROM public.packages p WHERE p.slug = 'hinduism-dwarkadhish-temple-dwarka-india'
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
  p.id, 2, 'Explore Dwarkadhish Temple Heritage Centre', 'Dwarka', 'Spend your day visiting Dwarkadhish Temple Heritage Centre, the primary attraction in Dwarkadhish Temple, accompanied by our expert guide.',
  'Guided Tour of Dwarkadhish Temple Heritage Centre', 'Early morning visit to Dwarkadhish Temple Heritage Centre to avoid crowds. Learn about the heritage and unique history of this landmark.',
  'Local Traditional Lunch', 'Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings.',
  'Evening walk at Dwarkadhish Temple Panoramic Viewpoint', 'Stroll around Dwarkadhish Temple Panoramic Viewpoint for scenic sunset views. Capture great family photos as the evening lights turn on.',
  'Temple Darshan: 6:00 AM - 12:30 PM, 4:30 PM - 8:30 PM | Evening Aarti: 6:30 PM', 'Complimentary Breakfast & Traditional Lunch (100% Satvik Veg).', 'AC Private Sedan with professional local driver (includes first-aid kit and bottled water).',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Premium Pilgrim Hotel (AC rooms, elevator, clean linen, hot water, elevator access)', 'Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.',
  'Traditional wear. Dhoti or Pyjama-Kurta for men; Saree or Salwar suit for women. Sleeveless strictly prohibited.', 'Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 3 to 4 hours local tour'
FROM public.packages p WHERE p.slug = 'hinduism-dwarkadhish-temple-dwarka-india'
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
  p.id, 3, 'Souvenir Shopping & Onward Departure', 'Dwarka', 'Conclude your memorable stay in Dwarka with local craft shopping, checkout, and outbound transfers.',
  'Handicrafts Shopping', 'Visit local co-operative markets to buy traditional souvenirs, regional sweets, or native organic spices.',
  'Check-out & Packing', 'Return to your hotel, pack your bags, clear any local incidentals, and check out from your rooms.',
  'Outbound Transfer', 'Board your private vehicle transfer to the airport or railway station for your onward return journey home.',
  'Temple Darshan: 6:00 AM - 12:30 PM, 4:30 PM - 8:30 PM | Evening Aarti: 6:30 PM', 'Breakfast & Special Dinner Buffet (100% Satvik Veg).', 'AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Pilgrim Rest House (Safe, family-friendly rooms, walking distance to sacred sites)', 'Perfect travel weather with low humidity and comfortable evening temperature 20°C.',
  'Traditional wear. Dhoti or Pyjama-Kurta for men; Saree or Salwar suit for women. Sleeveless strictly prohibited.', 'Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 1 to 2 hours transfer'
FROM public.packages p WHERE p.slug = 'hinduism-dwarkadhish-temple-dwarka-india'
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
  p.id, 1, 'Arrival & Settle in at Amritsar', 'Amritsar', 'Welcome to your yatra. Arrive in Amritsar, transfer to your stay, and rest before your sightseeing tour.',
  'Arrival & Check-in', 'Arrive at the nearest transit hub. Meet our coordinator and transfer to your pre-booked stay in Amritsar.',
  'Leisure & Rest', 'Check into your hotel room, unpack your luggage, and rest to recover from your flight or train journey.',
  'Orientation Walk', 'Meet your local guide for a small walk around the neighborhood. Receive a detailed brief on local customs.',
  'Temple Darshan: 6:00 AM - 12:30 PM, 4:30 PM - 8:30 PM | Evening Aarti: 6:30 PM', 'Welcome Drink & Buffet Dinner included (100% Satvik Veg).', 'AC Shuttle Transit for close proximity site transfers and passenger drops.',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Vedic Heritage Inn (Ashram atmosphere, close to main shrines, Western toilets, hot water)', 'Warm and sunny afternoon, ideal for outdoor sightseeing, average temp 24°C.',
  'Traditional wear. Dhoti or Pyjama-Kurta for men; Saree or Salwar suit for women. Sleeveless strictly prohibited.', 'Comfortable travel footwear, photo ID, essential personal medication, daypack.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 1 to 2 hours transfer'
FROM public.packages p WHERE p.slug = 'hinduism-golden-temple-harmandir-sahib-amritsar-india'
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
  p.id, 2, 'Explore Golden Temple Heritage Centre', 'Amritsar', 'Spend your day visiting Golden Temple Heritage Centre, the primary attraction in Golden Temple, accompanied by our expert guide.',
  'Guided Tour of Golden Temple Heritage Centre', 'Early morning visit to Golden Temple Heritage Centre to avoid crowds. Learn about the heritage and unique history of this landmark.',
  'Local Traditional Lunch', 'Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings.',
  'Evening walk at Golden Temple Panoramic Viewpoint', 'Stroll around Golden Temple Panoramic Viewpoint for scenic sunset views. Capture great family photos as the evening lights turn on.',
  'Temple Darshan: 6:00 AM - 12:30 PM, 4:30 PM - 8:30 PM | Evening Aarti: 6:30 PM', 'Complimentary Breakfast & Traditional Lunch (100% Satvik Veg).', 'AC Private Sedan with professional local driver (includes first-aid kit and bottled water).',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Premium Pilgrim Hotel (AC rooms, elevator, clean linen, hot water, elevator access)', 'Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.',
  'Traditional wear. Dhoti or Pyjama-Kurta for men; Saree or Salwar suit for women. Sleeveless strictly prohibited.', 'Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 3 to 4 hours local tour'
FROM public.packages p WHERE p.slug = 'hinduism-golden-temple-harmandir-sahib-amritsar-india'
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
  p.id, 3, 'Souvenir Shopping & Onward Departure', 'Amritsar', 'Conclude your memorable stay in Amritsar with local craft shopping, checkout, and outbound transfers.',
  'Handicrafts Shopping', 'Visit local co-operative markets to buy traditional souvenirs, regional sweets, or native organic spices.',
  'Check-out & Packing', 'Return to your hotel, pack your bags, clear any local incidentals, and check out from your rooms.',
  'Outbound Transfer', 'Board your private vehicle transfer to the airport or railway station for your onward return journey home.',
  'Temple Darshan: 6:00 AM - 12:30 PM, 4:30 PM - 8:30 PM | Evening Aarti: 6:30 PM', 'Breakfast & Special Dinner Buffet (100% Satvik Veg).', 'AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Pilgrim Rest House (Safe, family-friendly rooms, walking distance to sacred sites)', 'Perfect travel weather with low humidity and comfortable evening temperature 20°C.',
  'Traditional wear. Dhoti or Pyjama-Kurta for men; Saree or Salwar suit for women. Sleeveless strictly prohibited.', 'Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 1 to 2 hours transfer'
FROM public.packages p WHERE p.slug = 'hinduism-golden-temple-harmandir-sahib-amritsar-india'
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
  p.id, 1, 'Arrival & Settle in at Uttarakhand', 'Uttarakhand', 'Welcome to your yatra. Arrive in Uttarakhand, transfer to your stay, and rest before your sightseeing tour.',
  'Arrival & Check-in', 'Arrive at the nearest transit hub. Meet our coordinator and transfer to your pre-booked stay in Uttarakhand.',
  'Leisure & Rest', 'Check into your hotel room, unpack your luggage, and rest to recover from your flight or train journey.',
  'Orientation Walk', 'Meet your local guide for a small walk around the neighborhood. Receive a detailed brief on local customs.',
  'Temple Darshan: 6:00 AM - 12:30 PM, 4:30 PM - 8:30 PM | Evening Aarti: 6:30 PM', 'Welcome Drink & Buffet Dinner included (100% Satvik Veg).', 'AC Shuttle Transit for close proximity site transfers and passenger drops.',
  'Moderate Paced (Gentle staircases, guide assistance available)', 'Vedic Heritage Inn (Ashram atmosphere, close to main shrines, Western toilets, hot water)', 'Warm and sunny afternoon, ideal for outdoor sightseeing, average temp 24°C.',
  'Traditional wear. Dhoti or Pyjama-Kurta for men; Saree or Salwar suit for women. Sleeveless strictly prohibited.', 'Comfortable travel footwear, photo ID, essential personal medication, daypack.',
  'Not recommended for guests requiring wheelchair support due to steep stairs and terrain.', 'Expect moderate physical movement. Wear athletic shoes with excellent grip.', 'Approx. 1 to 2 hours transfer'
FROM public.packages p WHERE p.slug = 'hinduism-haridwar-rishikesh-india'
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
  p.id, 2, 'Explore Haridwar & Rishikesh Heritage Centre', 'Uttarakhand', 'Spend your day visiting Haridwar & Rishikesh Heritage Centre, the primary attraction in Haridwar & Rishikesh, accompanied by our expert guide.',
  'Guided Tour of Haridwar & Rishikesh Heritage Centre', 'Early morning visit to Haridwar & Rishikesh Heritage Centre to avoid crowds. Learn about the heritage and unique history of this landmark.',
  'Local Traditional Lunch', 'Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings.',
  'Evening walk at Haridwar & Rishikesh Panoramic Viewpoint', 'Stroll around Haridwar & Rishikesh Panoramic Viewpoint for scenic sunset views. Capture great family photos as the evening lights turn on.',
  'Temple Darshan: 6:00 AM - 12:30 PM, 4:30 PM - 8:30 PM | Evening Aarti: 6:30 PM', 'Complimentary Breakfast & Traditional Lunch (100% Satvik Veg).', 'AC Private Sedan with professional local driver (includes first-aid kit and bottled water).',
  'Moderate Paced (Gentle staircases, guide assistance available)', 'Premium Pilgrim Hotel (AC rooms, elevator, clean linen, hot water, elevator access)', 'Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.',
  'Traditional wear. Dhoti or Pyjama-Kurta for men; Saree or Salwar suit for women. Sleeveless strictly prohibited.', 'Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.',
  'Not recommended for guests requiring wheelchair support due to steep stairs and terrain.', 'Expect moderate physical movement. Wear athletic shoes with excellent grip.', 'Approx. 3 to 4 hours local tour'
FROM public.packages p WHERE p.slug = 'hinduism-haridwar-rishikesh-india'
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
  p.id, 3, 'Souvenir Shopping & Onward Departure', 'Uttarakhand', 'Conclude your memorable stay in Uttarakhand with local craft shopping, checkout, and outbound transfers.',
  'Handicrafts Shopping', 'Visit local co-operative markets to buy traditional souvenirs, regional sweets, or native organic spices.',
  'Check-out & Packing', 'Return to your hotel, pack your bags, clear any local incidentals, and check out from your rooms.',
  'Outbound Transfer', 'Board your private vehicle transfer to the airport or railway station for your onward return journey home.',
  'Temple Darshan: 6:00 AM - 12:30 PM, 4:30 PM - 8:30 PM | Evening Aarti: 6:30 PM', 'Breakfast & Special Dinner Buffet (100% Satvik Veg).', 'AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).',
  'Moderate Paced (Gentle staircases, guide assistance available)', 'Pilgrim Rest House (Safe, family-friendly rooms, walking distance to sacred sites)', 'Perfect travel weather with low humidity and comfortable evening temperature 20°C.',
  'Traditional wear. Dhoti or Pyjama-Kurta for men; Saree or Salwar suit for women. Sleeveless strictly prohibited.', 'Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.',
  'Not recommended for guests requiring wheelchair support due to steep stairs and terrain.', 'Expect moderate physical movement. Wear athletic shoes with excellent grip.', 'Approx. 1 to 2 hours transfer'
FROM public.packages p WHERE p.slug = 'hinduism-haridwar-rishikesh-india'
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
  p.id, 1, 'Arrival & Settle in at Puri', 'Puri', 'Welcome to your yatra. Arrive in Puri, transfer to your stay, and rest before your sightseeing tour.',
  'Arrival & Check-in', 'Arrive at the nearest transit hub. Meet our coordinator and transfer to your pre-booked stay in Puri.',
  'Leisure & Rest', 'Check into your hotel room, unpack your luggage, and rest to recover from your flight or train journey.',
  'Orientation Walk', 'Meet your local guide for a small walk around the neighborhood. Receive a detailed brief on local customs.',
  'Temple Darshan: 6:00 AM - 12:30 PM, 4:30 PM - 8:30 PM | Evening Aarti: 6:30 PM', 'Welcome Drink & Buffet Dinner included (100% Satvik Veg).', 'AC Shuttle Transit for close proximity site transfers and passenger drops.',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Vedic Heritage Inn (Ashram atmosphere, close to main shrines, Western toilets, hot water)', 'Warm and sunny afternoon, ideal for outdoor sightseeing, average temp 24°C.',
  'Traditional wear. Dhoti or Pyjama-Kurta for men; Saree or Salwar suit for women. Sleeveless strictly prohibited.', 'Comfortable travel footwear, photo ID, essential personal medication, daypack.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 1 to 2 hours transfer'
FROM public.packages p WHERE p.slug = 'hinduism-jagannath-temple-puri-india'
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
  p.id, 2, 'Explore Jagannath Temple Heritage Centre', 'Puri', 'Spend your day visiting Jagannath Temple Heritage Centre, the primary attraction in Jagannath Temple, accompanied by our expert guide.',
  'Guided Tour of Jagannath Temple Heritage Centre', 'Early morning visit to Jagannath Temple Heritage Centre to avoid crowds. Learn about the heritage and unique history of this landmark.',
  'Local Traditional Lunch', 'Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings.',
  'Evening walk at Jagannath Temple Panoramic Viewpoint', 'Stroll around Jagannath Temple Panoramic Viewpoint for scenic sunset views. Capture great family photos as the evening lights turn on.',
  'Temple Darshan: 6:00 AM - 12:30 PM, 4:30 PM - 8:30 PM | Evening Aarti: 6:30 PM', 'Complimentary Breakfast & Traditional Lunch (100% Satvik Veg).', 'AC Private Sedan with professional local driver (includes first-aid kit and bottled water).',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Premium Pilgrim Hotel (AC rooms, elevator, clean linen, hot water, elevator access)', 'Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.',
  'Traditional wear. Dhoti or Pyjama-Kurta for men; Saree or Salwar suit for women. Sleeveless strictly prohibited.', 'Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 3 to 4 hours local tour'
FROM public.packages p WHERE p.slug = 'hinduism-jagannath-temple-puri-india'
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
  p.id, 3, 'Souvenir Shopping & Onward Departure', 'Puri', 'Conclude your memorable stay in Puri with local craft shopping, checkout, and outbound transfers.',
  'Handicrafts Shopping', 'Visit local co-operative markets to buy traditional souvenirs, regional sweets, or native organic spices.',
  'Check-out & Packing', 'Return to your hotel, pack your bags, clear any local incidentals, and check out from your rooms.',
  'Outbound Transfer', 'Board your private vehicle transfer to the airport or railway station for your onward return journey home.',
  'Temple Darshan: 6:00 AM - 12:30 PM, 4:30 PM - 8:30 PM | Evening Aarti: 6:30 PM', 'Breakfast & Special Dinner Buffet (100% Satvik Veg).', 'AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Pilgrim Rest House (Safe, family-friendly rooms, walking distance to sacred sites)', 'Perfect travel weather with low humidity and comfortable evening temperature 20°C.',
  'Traditional wear. Dhoti or Pyjama-Kurta for men; Saree or Salwar suit for women. Sleeveless strictly prohibited.', 'Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 1 to 2 hours transfer'
FROM public.packages p WHERE p.slug = 'hinduism-jagannath-temple-puri-india'
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
  p.id, 1, 'Arrival & Settle in at Varanasi', 'Varanasi', 'Welcome to your yatra. Arrive in Varanasi, transfer to your stay, and rest before your sightseeing tour.',
  'Arrival & Check-in', 'Arrive at the nearest transit hub. Meet our coordinator and transfer to your pre-booked stay in Varanasi.',
  'Leisure & Rest', 'Check into your hotel room, unpack your luggage, and rest to recover from your flight or train journey.',
  'Orientation Walk', 'Meet your local guide for a small walk around the neighborhood. Receive a detailed brief on local customs.',
  'Temple Darshan: 6:00 AM - 12:30 PM, 4:30 PM - 8:30 PM | Evening Aarti: 6:30 PM', 'Welcome Drink & Buffet Dinner included (100% Satvik Veg).', 'AC Shuttle Transit for close proximity site transfers and passenger drops.',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Vedic Heritage Inn (Ashram atmosphere, close to main shrines, Western toilets, hot water)', 'Warm and sunny afternoon, ideal for outdoor sightseeing, average temp 24°C.',
  'Traditional wear. Dhoti or Pyjama-Kurta for men; Saree or Salwar suit for women. Sleeveless strictly prohibited.', 'Comfortable travel footwear, photo ID, essential personal medication, daypack.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 1 to 2 hours transfer'
FROM public.packages p WHERE p.slug = 'hinduism-kashi-vishwanath-varanasi-india'
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
  p.id, 2, 'Explore Kashi Vishwanath Heritage Centre', 'Varanasi', 'Spend your day visiting Kashi Vishwanath Heritage Centre, the primary attraction in Kashi Vishwanath, accompanied by our expert guide.',
  'Guided Tour of Kashi Vishwanath Heritage Centre', 'Early morning visit to Kashi Vishwanath Heritage Centre to avoid crowds. Learn about the heritage and unique history of this landmark.',
  'Local Traditional Lunch', 'Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings.',
  'Evening walk at Kashi Vishwanath Panoramic Viewpoint', 'Stroll around Kashi Vishwanath Panoramic Viewpoint for scenic sunset views. Capture great family photos as the evening lights turn on.',
  'Temple Darshan: 6:00 AM - 12:30 PM, 4:30 PM - 8:30 PM | Evening Aarti: 6:30 PM', 'Complimentary Breakfast & Traditional Lunch (100% Satvik Veg).', 'AC Private Sedan with professional local driver (includes first-aid kit and bottled water).',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Premium Pilgrim Hotel (AC rooms, elevator, clean linen, hot water, elevator access)', 'Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.',
  'Traditional wear. Dhoti or Pyjama-Kurta for men; Saree or Salwar suit for women. Sleeveless strictly prohibited.', 'Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 3 to 4 hours local tour'
FROM public.packages p WHERE p.slug = 'hinduism-kashi-vishwanath-varanasi-india'
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
  p.id, 3, 'Souvenir Shopping & Onward Departure', 'Varanasi', 'Conclude your memorable stay in Varanasi with local craft shopping, checkout, and outbound transfers.',
  'Handicrafts Shopping', 'Visit local co-operative markets to buy traditional souvenirs, regional sweets, or native organic spices.',
  'Check-out & Packing', 'Return to your hotel, pack your bags, clear any local incidentals, and check out from your rooms.',
  'Outbound Transfer', 'Board your private vehicle transfer to the airport or railway station for your onward return journey home.',
  'Temple Darshan: 6:00 AM - 12:30 PM, 4:30 PM - 8:30 PM | Evening Aarti: 6:30 PM', 'Breakfast & Special Dinner Buffet (100% Satvik Veg).', 'AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Pilgrim Rest House (Safe, family-friendly rooms, walking distance to sacred sites)', 'Perfect travel weather with low humidity and comfortable evening temperature 20°C.',
  'Traditional wear. Dhoti or Pyjama-Kurta for men; Saree or Salwar suit for women. Sleeveless strictly prohibited.', 'Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 1 to 2 hours transfer'
FROM public.packages p WHERE p.slug = 'hinduism-kashi-vishwanath-varanasi-india'
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
  p.id, 1, 'Arrival & Settle in at Rudraprayag', 'Rudraprayag', 'Welcome to your yatra. Arrive in Rudraprayag, transfer to your stay, and rest before your sightseeing tour.',
  'Arrival & Check-in', 'Arrive at the nearest transit hub. Meet our coordinator and transfer to your pre-booked stay in Rudraprayag.',
  'Leisure & Rest', 'Check into your hotel room, unpack your luggage, and rest to recover from your flight or train journey.',
  'Orientation Walk', 'Meet your local guide for a small walk around the neighborhood. Receive a detailed brief on local customs.',
  'Temple Darshan: 6:00 AM - 12:30 PM, 4:30 PM - 8:30 PM | Evening Aarti: 6:30 PM', 'Welcome Drink & Buffet Dinner included (100% Satvik Veg).', 'AC Shuttle Transit for close proximity site transfers and passenger drops.',
  'Moderate Paced (Gentle staircases, guide assistance available)', 'Vedic Heritage Inn (Ashram atmosphere, close to main shrines, Western toilets, hot water)', 'Warm and sunny afternoon, ideal for outdoor sightseeing, average temp 24°C.',
  'Traditional wear. Dhoti or Pyjama-Kurta for men; Saree or Salwar suit for women. Sleeveless strictly prohibited.', 'Comfortable travel footwear, photo ID, essential personal medication, daypack.',
  'Not recommended for guests requiring wheelchair support due to steep stairs and terrain.', 'Expect moderate physical movement. Wear athletic shoes with excellent grip.', 'Approx. 1 to 2 hours transfer'
FROM public.packages p WHERE p.slug = 'hinduism-kedarnath-india'
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
  p.id, 2, 'Explore Kedarnath Heritage Centre', 'Rudraprayag', 'Spend your day visiting Kedarnath Heritage Centre, the primary attraction in Kedarnath, accompanied by our expert guide.',
  'Guided Tour of Kedarnath Heritage Centre', 'Early morning visit to Kedarnath Heritage Centre to avoid crowds. Learn about the heritage and unique history of this landmark.',
  'Local Traditional Lunch', 'Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings.',
  'Evening walk at Kedarnath Panoramic Viewpoint', 'Stroll around Kedarnath Panoramic Viewpoint for scenic sunset views. Capture great family photos as the evening lights turn on.',
  'Temple Darshan: 6:00 AM - 12:30 PM, 4:30 PM - 8:30 PM | Evening Aarti: 6:30 PM', 'Complimentary Breakfast & Traditional Lunch (100% Satvik Veg).', 'AC Private Sedan with professional local driver (includes first-aid kit and bottled water).',
  'Moderate Paced (Gentle staircases, guide assistance available)', 'Premium Pilgrim Hotel (AC rooms, elevator, clean linen, hot water, elevator access)', 'Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.',
  'Traditional wear. Dhoti or Pyjama-Kurta for men; Saree or Salwar suit for women. Sleeveless strictly prohibited.', 'Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.',
  'Not recommended for guests requiring wheelchair support due to steep stairs and terrain.', 'Expect moderate physical movement. Wear athletic shoes with excellent grip.', 'Approx. 3 to 4 hours local tour'
FROM public.packages p WHERE p.slug = 'hinduism-kedarnath-india'
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
  p.id, 3, 'Souvenir Shopping & Onward Departure', 'Rudraprayag', 'Conclude your memorable stay in Rudraprayag with local craft shopping, checkout, and outbound transfers.',
  'Handicrafts Shopping', 'Visit local co-operative markets to buy traditional souvenirs, regional sweets, or native organic spices.',
  'Check-out & Packing', 'Return to your hotel, pack your bags, clear any local incidentals, and check out from your rooms.',
  'Outbound Transfer', 'Board your private vehicle transfer to the airport or railway station for your onward return journey home.',
  'Temple Darshan: 6:00 AM - 12:30 PM, 4:30 PM - 8:30 PM | Evening Aarti: 6:30 PM', 'Breakfast & Special Dinner Buffet (100% Satvik Veg).', 'AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).',
  'Moderate Paced (Gentle staircases, guide assistance available)', 'Pilgrim Rest House (Safe, family-friendly rooms, walking distance to sacred sites)', 'Perfect travel weather with low humidity and comfortable evening temperature 20°C.',
  'Traditional wear. Dhoti or Pyjama-Kurta for men; Saree or Salwar suit for women. Sleeveless strictly prohibited.', 'Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.',
  'Not recommended for guests requiring wheelchair support due to steep stairs and terrain.', 'Expect moderate physical movement. Wear athletic shoes with excellent grip.', 'Approx. 1 to 2 hours transfer'
FROM public.packages p WHERE p.slug = 'hinduism-kedarnath-india'
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
  p.id, 1, 'Arrival & Settle in at Ujjain', 'Ujjain', 'Welcome to your yatra. Arrive in Ujjain, transfer to your stay, and rest before your sightseeing tour.',
  'Arrival & Check-in', 'Arrive at the nearest transit hub. Meet our coordinator and transfer to your pre-booked stay in Ujjain.',
  'Leisure & Rest', 'Check into your hotel room, unpack your luggage, and rest to recover from your flight or train journey.',
  'Orientation Walk', 'Meet your local guide for a small walk around the neighborhood. Receive a detailed brief on local customs.',
  'Temple Darshan: 6:00 AM - 12:30 PM, 4:30 PM - 8:30 PM | Evening Aarti: 6:30 PM', 'Welcome Drink & Buffet Dinner included (100% Satvik Veg).', 'AC Shuttle Transit for close proximity site transfers and passenger drops.',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Vedic Heritage Inn (Ashram atmosphere, close to main shrines, Western toilets, hot water)', 'Warm and sunny afternoon, ideal for outdoor sightseeing, average temp 24°C.',
  'Traditional wear. Dhoti or Pyjama-Kurta for men; Saree or Salwar suit for women. Sleeveless strictly prohibited.', 'Comfortable travel footwear, photo ID, essential personal medication, daypack.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 1 to 2 hours transfer'
FROM public.packages p WHERE p.slug = 'hinduism-mahakaleshwar-temple-ujjain-india'
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
  p.id, 2, 'Explore Mahakaleshwar Temple Heritage Centre', 'Ujjain', 'Spend your day visiting Mahakaleshwar Temple Heritage Centre, the primary attraction in Mahakaleshwar Temple, accompanied by our expert guide.',
  'Guided Tour of Mahakaleshwar Temple Heritage Centre', 'Early morning visit to Mahakaleshwar Temple Heritage Centre to avoid crowds. Learn about the heritage and unique history of this landmark.',
  'Local Traditional Lunch', 'Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings.',
  'Evening walk at Mahakaleshwar Temple Panoramic Viewpoint', 'Stroll around Mahakaleshwar Temple Panoramic Viewpoint for scenic sunset views. Capture great family photos as the evening lights turn on.',
  'Temple Darshan: 6:00 AM - 12:30 PM, 4:30 PM - 8:30 PM | Evening Aarti: 6:30 PM', 'Complimentary Breakfast & Traditional Lunch (100% Satvik Veg).', 'AC Private Sedan with professional local driver (includes first-aid kit and bottled water).',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Premium Pilgrim Hotel (AC rooms, elevator, clean linen, hot water, elevator access)', 'Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.',
  'Traditional wear. Dhoti or Pyjama-Kurta for men; Saree or Salwar suit for women. Sleeveless strictly prohibited.', 'Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 3 to 4 hours local tour'
FROM public.packages p WHERE p.slug = 'hinduism-mahakaleshwar-temple-ujjain-india'
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
  p.id, 3, 'Souvenir Shopping & Onward Departure', 'Ujjain', 'Conclude your memorable stay in Ujjain with local craft shopping, checkout, and outbound transfers.',
  'Handicrafts Shopping', 'Visit local co-operative markets to buy traditional souvenirs, regional sweets, or native organic spices.',
  'Check-out & Packing', 'Return to your hotel, pack your bags, clear any local incidentals, and check out from your rooms.',
  'Outbound Transfer', 'Board your private vehicle transfer to the airport or railway station for your onward return journey home.',
  'Temple Darshan: 6:00 AM - 12:30 PM, 4:30 PM - 8:30 PM | Evening Aarti: 6:30 PM', 'Breakfast & Special Dinner Buffet (100% Satvik Veg).', 'AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Pilgrim Rest House (Safe, family-friendly rooms, walking distance to sacred sites)', 'Perfect travel weather with low humidity and comfortable evening temperature 20°C.',
  'Traditional wear. Dhoti or Pyjama-Kurta for men; Saree or Salwar suit for women. Sleeveless strictly prohibited.', 'Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 1 to 2 hours transfer'
FROM public.packages p WHERE p.slug = 'hinduism-mahakaleshwar-temple-ujjain-india'
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
  p.id, 1, 'Arrival & Settle in at Ngari', 'Ngari', 'Welcome to your yatra. Arrive in Ngari, transfer to your stay, and rest before your sightseeing tour.',
  'Arrival & Check-in', 'Arrive at the nearest transit hub. Meet our coordinator and transfer to your pre-booked stay in Ngari.',
  'Leisure & Rest', 'Check into your hotel room, unpack your luggage, and rest to recover from your flight or train journey.',
  'Orientation Walk', 'Meet your local guide for a small walk around the neighborhood. Receive a detailed brief on local customs.',
  'Temple Darshan: 6:00 AM - 12:30 PM, 4:30 PM - 8:30 PM | Evening Aarti: 6:30 PM', 'Welcome Drink & Buffet Dinner included (100% Satvik Veg).', 'AC Shuttle Transit for close proximity site transfers and passenger drops.',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Vedic Heritage Inn (Ashram atmosphere, close to main shrines, Western toilets, hot water)', 'Warm and sunny afternoon, ideal for outdoor sightseeing, average temp 24°C.',
  'Traditional wear. Dhoti or Pyjama-Kurta for men; Saree or Salwar suit for women. Sleeveless strictly prohibited.', 'Comfortable travel footwear, photo ID, essential personal medication, daypack.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 1 to 2 hours transfer'
FROM public.packages p WHERE p.slug = 'hinduism-mount-kailash-tibet'
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
  p.id, 2, 'Explore Mount Kailash Heritage Centre', 'Ngari', 'Spend your day visiting Mount Kailash Heritage Centre, the primary attraction in Mount Kailash, accompanied by our expert guide.',
  'Guided Tour of Mount Kailash Heritage Centre', 'Early morning visit to Mount Kailash Heritage Centre to avoid crowds. Learn about the heritage and unique history of this landmark.',
  'Local Traditional Lunch', 'Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings.',
  'Evening walk at Mount Kailash Panoramic Viewpoint', 'Stroll around Mount Kailash Panoramic Viewpoint for scenic sunset views. Capture great family photos as the evening lights turn on.',
  'Temple Darshan: 6:00 AM - 12:30 PM, 4:30 PM - 8:30 PM | Evening Aarti: 6:30 PM', 'Complimentary Breakfast & Traditional Lunch (100% Satvik Veg).', 'AC Private Sedan with professional local driver (includes first-aid kit and bottled water).',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Premium Pilgrim Hotel (AC rooms, elevator, clean linen, hot water, elevator access)', 'Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.',
  'Traditional wear. Dhoti or Pyjama-Kurta for men; Saree or Salwar suit for women. Sleeveless strictly prohibited.', 'Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 3 to 4 hours local tour'
FROM public.packages p WHERE p.slug = 'hinduism-mount-kailash-tibet'
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
  p.id, 3, 'Souvenir Shopping & Onward Departure', 'Ngari', 'Conclude your memorable stay in Ngari with local craft shopping, checkout, and outbound transfers.',
  'Handicrafts Shopping', 'Visit local co-operative markets to buy traditional souvenirs, regional sweets, or native organic spices.',
  'Check-out & Packing', 'Return to your hotel, pack your bags, clear any local incidentals, and check out from your rooms.',
  'Outbound Transfer', 'Board your private vehicle transfer to the airport or railway station for your onward return journey home.',
  'Temple Darshan: 6:00 AM - 12:30 PM, 4:30 PM - 8:30 PM | Evening Aarti: 6:30 PM', 'Breakfast & Special Dinner Buffet (100% Satvik Veg).', 'AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Pilgrim Rest House (Safe, family-friendly rooms, walking distance to sacred sites)', 'Perfect travel weather with low humidity and comfortable evening temperature 20°C.',
  'Traditional wear. Dhoti or Pyjama-Kurta for men; Saree or Salwar suit for women. Sleeveless strictly prohibited.', 'Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 1 to 2 hours transfer'
FROM public.packages p WHERE p.slug = 'hinduism-mount-kailash-tibet'
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
  p.id, 1, 'Arrival & Settle in at Ramanathapuram', 'Ramanathapuram', 'Welcome to your yatra. Arrive in Ramanathapuram, transfer to your stay, and rest before your sightseeing tour.',
  'Arrival & Check-in', 'Arrive at the nearest transit hub. Meet our coordinator and transfer to your pre-booked stay in Ramanathapuram.',
  'Leisure & Rest', 'Check into your hotel room, unpack your luggage, and rest to recover from your flight or train journey.',
  'Orientation Walk', 'Meet your local guide for a small walk around the neighborhood. Receive a detailed brief on local customs.',
  'Temple Darshan: 6:00 AM - 12:30 PM, 4:30 PM - 8:30 PM | Evening Aarti: 6:30 PM', 'Welcome Drink & Buffet Dinner included (100% Satvik Veg).', 'AC Shuttle Transit for close proximity site transfers and passenger drops.',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Vedic Heritage Inn (Ashram atmosphere, close to main shrines, Western toilets, hot water)', 'Warm and sunny afternoon, ideal for outdoor sightseeing, average temp 24°C.',
  'Traditional wear. Dhoti or Pyjama-Kurta for men; Saree or Salwar suit for women. Sleeveless strictly prohibited.', 'Comfortable travel footwear, photo ID, essential personal medication, daypack.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 1 to 2 hours transfer'
FROM public.packages p WHERE p.slug = 'hinduism-rameswaram-india'
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
  p.id, 2, 'Explore Rameswaram Heritage Centre', 'Ramanathapuram', 'Spend your day visiting Rameswaram Heritage Centre, the primary attraction in Rameswaram, accompanied by our expert guide.',
  'Guided Tour of Rameswaram Heritage Centre', 'Early morning visit to Rameswaram Heritage Centre to avoid crowds. Learn about the heritage and unique history of this landmark.',
  'Local Traditional Lunch', 'Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings.',
  'Evening walk at Rameswaram Panoramic Viewpoint', 'Stroll around Rameswaram Panoramic Viewpoint for scenic sunset views. Capture great family photos as the evening lights turn on.',
  'Temple Darshan: 6:00 AM - 12:30 PM, 4:30 PM - 8:30 PM | Evening Aarti: 6:30 PM', 'Complimentary Breakfast & Traditional Lunch (100% Satvik Veg).', 'AC Private Sedan with professional local driver (includes first-aid kit and bottled water).',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Premium Pilgrim Hotel (AC rooms, elevator, clean linen, hot water, elevator access)', 'Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.',
  'Traditional wear. Dhoti or Pyjama-Kurta for men; Saree or Salwar suit for women. Sleeveless strictly prohibited.', 'Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 3 to 4 hours local tour'
FROM public.packages p WHERE p.slug = 'hinduism-rameswaram-india'
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
  p.id, 3, 'Souvenir Shopping & Onward Departure', 'Ramanathapuram', 'Conclude your memorable stay in Ramanathapuram with local craft shopping, checkout, and outbound transfers.',
  'Handicrafts Shopping', 'Visit local co-operative markets to buy traditional souvenirs, regional sweets, or native organic spices.',
  'Check-out & Packing', 'Return to your hotel, pack your bags, clear any local incidentals, and check out from your rooms.',
  'Outbound Transfer', 'Board your private vehicle transfer to the airport or railway station for your onward return journey home.',
  'Temple Darshan: 6:00 AM - 12:30 PM, 4:30 PM - 8:30 PM | Evening Aarti: 6:30 PM', 'Breakfast & Special Dinner Buffet (100% Satvik Veg).', 'AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Pilgrim Rest House (Safe, family-friendly rooms, walking distance to sacred sites)', 'Perfect travel weather with low humidity and comfortable evening temperature 20°C.',
  'Traditional wear. Dhoti or Pyjama-Kurta for men; Saree or Salwar suit for women. Sleeveless strictly prohibited.', 'Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 1 to 2 hours transfer'
FROM public.packages p WHERE p.slug = 'hinduism-rameswaram-india'
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
  p.id, 1, 'Arrival & Settle in at Prabhas Patan', 'Prabhas Patan', 'Welcome to your yatra. Arrive in Prabhas Patan, transfer to your stay, and rest before your sightseeing tour.',
  'Arrival & Check-in', 'Arrive at the nearest transit hub. Meet our coordinator and transfer to your pre-booked stay in Prabhas Patan.',
  'Leisure & Rest', 'Check into your hotel room, unpack your luggage, and rest to recover from your flight or train journey.',
  'Orientation Walk', 'Meet your local guide for a small walk around the neighborhood. Receive a detailed brief on local customs.',
  'Temple Darshan: 6:00 AM - 12:30 PM, 4:30 PM - 8:30 PM | Evening Aarti: 6:30 PM', 'Welcome Drink & Buffet Dinner included (100% Satvik Veg).', 'AC Shuttle Transit for close proximity site transfers and passenger drops.',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Vedic Heritage Inn (Ashram atmosphere, close to main shrines, Western toilets, hot water)', 'Warm and sunny afternoon, ideal for outdoor sightseeing, average temp 24°C.',
  'Traditional wear. Dhoti or Pyjama-Kurta for men; Saree or Salwar suit for women. Sleeveless strictly prohibited.', 'Comfortable travel footwear, photo ID, essential personal medication, daypack.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 1 to 2 hours transfer'
FROM public.packages p WHERE p.slug = 'hinduism-somnath-temple-india'
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
  p.id, 2, 'Explore Somnath Temple Heritage Centre', 'Prabhas Patan', 'Spend your day visiting Somnath Temple Heritage Centre, the primary attraction in Somnath Temple, accompanied by our expert guide.',
  'Guided Tour of Somnath Temple Heritage Centre', 'Early morning visit to Somnath Temple Heritage Centre to avoid crowds. Learn about the heritage and unique history of this landmark.',
  'Local Traditional Lunch', 'Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings.',
  'Evening walk at Somnath Temple Panoramic Viewpoint', 'Stroll around Somnath Temple Panoramic Viewpoint for scenic sunset views. Capture great family photos as the evening lights turn on.',
  'Temple Darshan: 6:00 AM - 12:30 PM, 4:30 PM - 8:30 PM | Evening Aarti: 6:30 PM', 'Complimentary Breakfast & Traditional Lunch (100% Satvik Veg).', 'AC Private Sedan with professional local driver (includes first-aid kit and bottled water).',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Premium Pilgrim Hotel (AC rooms, elevator, clean linen, hot water, elevator access)', 'Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.',
  'Traditional wear. Dhoti or Pyjama-Kurta for men; Saree or Salwar suit for women. Sleeveless strictly prohibited.', 'Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 3 to 4 hours local tour'
FROM public.packages p WHERE p.slug = 'hinduism-somnath-temple-india'
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
  p.id, 3, 'Souvenir Shopping & Onward Departure', 'Prabhas Patan', 'Conclude your memorable stay in Prabhas Patan with local craft shopping, checkout, and outbound transfers.',
  'Handicrafts Shopping', 'Visit local co-operative markets to buy traditional souvenirs, regional sweets, or native organic spices.',
  'Check-out & Packing', 'Return to your hotel, pack your bags, clear any local incidentals, and check out from your rooms.',
  'Outbound Transfer', 'Board your private vehicle transfer to the airport or railway station for your onward return journey home.',
  'Temple Darshan: 6:00 AM - 12:30 PM, 4:30 PM - 8:30 PM | Evening Aarti: 6:30 PM', 'Breakfast & Special Dinner Buffet (100% Satvik Veg).', 'AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Pilgrim Rest House (Safe, family-friendly rooms, walking distance to sacred sites)', 'Perfect travel weather with low humidity and comfortable evening temperature 20°C.',
  'Traditional wear. Dhoti or Pyjama-Kurta for men; Saree or Salwar suit for women. Sleeveless strictly prohibited.', 'Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 1 to 2 hours transfer'
FROM public.packages p WHERE p.slug = 'hinduism-somnath-temple-india'
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
  p.id, 1, 'Arrival & Settle in at Tirupati', 'Tirupati', 'Welcome to your yatra. Arrive in Tirupati, transfer to your stay, and rest before your sightseeing tour.',
  'Arrival & Check-in', 'Arrive at the nearest transit hub. Meet our coordinator and transfer to your pre-booked stay in Tirupati.',
  'Leisure & Rest', 'Check into your hotel room, unpack your luggage, and rest to recover from your flight or train journey.',
  'Orientation Walk', 'Meet your local guide for a small walk around the neighborhood. Receive a detailed brief on local customs.',
  'Temple Darshan: 6:00 AM - 12:30 PM, 4:30 PM - 8:30 PM | Evening Aarti: 6:30 PM', 'Welcome Drink & Buffet Dinner included (100% Satvik Veg).', 'AC Shuttle Transit for close proximity site transfers and passenger drops.',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Vedic Heritage Inn (Ashram atmosphere, close to main shrines, Western toilets, hot water)', 'Warm and sunny afternoon, ideal for outdoor sightseeing, average temp 24°C.',
  'Traditional wear. Dhoti or Pyjama-Kurta for men; Saree or Salwar suit for women. Sleeveless strictly prohibited.', 'Comfortable travel footwear, photo ID, essential personal medication, daypack.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 1 to 2 hours transfer'
FROM public.packages p WHERE p.slug = 'hinduism-tirupati-balaji-temple-india'
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
  p.id, 2, 'Explore Tirupati Balaji Temple Heritage Centre', 'Tirupati', 'Spend your day visiting Tirupati Balaji Temple Heritage Centre, the primary attraction in Tirupati Balaji Temple, accompanied by our expert guide.',
  'Guided Tour of Tirupati Balaji Temple Heritage Centre', 'Early morning visit to Tirupati Balaji Temple Heritage Centre to avoid crowds. Learn about the heritage and unique history of this landmark.',
  'Local Traditional Lunch', 'Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings.',
  'Evening walk at Tirupati Balaji Temple Panoramic Viewpoint', 'Stroll around Tirupati Balaji Temple Panoramic Viewpoint for scenic sunset views. Capture great family photos as the evening lights turn on.',
  'Temple Darshan: 6:00 AM - 12:30 PM, 4:30 PM - 8:30 PM | Evening Aarti: 6:30 PM', 'Complimentary Breakfast & Traditional Lunch (100% Satvik Veg).', 'AC Private Sedan with professional local driver (includes first-aid kit and bottled water).',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Premium Pilgrim Hotel (AC rooms, elevator, clean linen, hot water, elevator access)', 'Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.',
  'Traditional wear. Dhoti or Pyjama-Kurta for men; Saree or Salwar suit for women. Sleeveless strictly prohibited.', 'Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 3 to 4 hours local tour'
FROM public.packages p WHERE p.slug = 'hinduism-tirupati-balaji-temple-india'
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
  p.id, 3, 'Souvenir Shopping & Onward Departure', 'Tirupati', 'Conclude your memorable stay in Tirupati with local craft shopping, checkout, and outbound transfers.',
  'Handicrafts Shopping', 'Visit local co-operative markets to buy traditional souvenirs, regional sweets, or native organic spices.',
  'Check-out & Packing', 'Return to your hotel, pack your bags, clear any local incidentals, and check out from your rooms.',
  'Outbound Transfer', 'Board your private vehicle transfer to the airport or railway station for your onward return journey home.',
  'Temple Darshan: 6:00 AM - 12:30 PM, 4:30 PM - 8:30 PM | Evening Aarti: 6:30 PM', 'Breakfast & Special Dinner Buffet (100% Satvik Veg).', 'AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Pilgrim Rest House (Safe, family-friendly rooms, walking distance to sacred sites)', 'Perfect travel weather with low humidity and comfortable evening temperature 20°C.',
  'Traditional wear. Dhoti or Pyjama-Kurta for men; Saree or Salwar suit for women. Sleeveless strictly prohibited.', 'Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 1 to 2 hours transfer'
FROM public.packages p WHERE p.slug = 'hinduism-tirupati-balaji-temple-india'
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
  p.id, 1, 'Arrival & Settle in at Nashik', 'Nashik', 'Welcome to your yatra. Arrive in Nashik, transfer to your stay, and rest before your sightseeing tour.',
  'Arrival & Check-in', 'Arrive at the nearest transit hub. Meet our coordinator and transfer to your pre-booked stay in Nashik.',
  'Leisure & Rest', 'Check into your hotel room, unpack your luggage, and rest to recover from your flight or train journey.',
  'Orientation Walk', 'Meet your local guide for a small walk around the neighborhood. Receive a detailed brief on local customs.',
  'Temple Darshan: 6:00 AM - 12:30 PM, 4:30 PM - 8:30 PM | Evening Aarti: 6:30 PM', 'Welcome Drink & Buffet Dinner included (100% Satvik Veg).', 'AC Shuttle Transit for close proximity site transfers and passenger drops.',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Vedic Heritage Inn (Ashram atmosphere, close to main shrines, Western toilets, hot water)', 'Warm and sunny afternoon, ideal for outdoor sightseeing, average temp 24°C.',
  'Traditional wear. Dhoti or Pyjama-Kurta for men; Saree or Salwar suit for women. Sleeveless strictly prohibited.', 'Comfortable travel footwear, photo ID, essential personal medication, daypack.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 1 to 2 hours transfer'
FROM public.packages p WHERE p.slug = 'hinduism-trimbakeshwar-temple-nashik-india'
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
  p.id, 2, 'Explore Trimbakeshwar Temple Heritage Centre', 'Nashik', 'Spend your day visiting Trimbakeshwar Temple Heritage Centre, the primary attraction in Trimbakeshwar Temple, accompanied by our expert guide.',
  'Guided Tour of Trimbakeshwar Temple Heritage Centre', 'Early morning visit to Trimbakeshwar Temple Heritage Centre to avoid crowds. Learn about the heritage and unique history of this landmark.',
  'Local Traditional Lunch', 'Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings.',
  'Evening walk at Trimbakeshwar Temple Panoramic Viewpoint', 'Stroll around Trimbakeshwar Temple Panoramic Viewpoint for scenic sunset views. Capture great family photos as the evening lights turn on.',
  'Temple Darshan: 6:00 AM - 12:30 PM, 4:30 PM - 8:30 PM | Evening Aarti: 6:30 PM', 'Complimentary Breakfast & Traditional Lunch (100% Satvik Veg).', 'AC Private Sedan with professional local driver (includes first-aid kit and bottled water).',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Premium Pilgrim Hotel (AC rooms, elevator, clean linen, hot water, elevator access)', 'Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.',
  'Traditional wear. Dhoti or Pyjama-Kurta for men; Saree or Salwar suit for women. Sleeveless strictly prohibited.', 'Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 3 to 4 hours local tour'
FROM public.packages p WHERE p.slug = 'hinduism-trimbakeshwar-temple-nashik-india'
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
  p.id, 3, 'Souvenir Shopping & Onward Departure', 'Nashik', 'Conclude your memorable stay in Nashik with local craft shopping, checkout, and outbound transfers.',
  'Handicrafts Shopping', 'Visit local co-operative markets to buy traditional souvenirs, regional sweets, or native organic spices.',
  'Check-out & Packing', 'Return to your hotel, pack your bags, clear any local incidentals, and check out from your rooms.',
  'Outbound Transfer', 'Board your private vehicle transfer to the airport or railway station for your onward return journey home.',
  'Temple Darshan: 6:00 AM - 12:30 PM, 4:30 PM - 8:30 PM | Evening Aarti: 6:30 PM', 'Breakfast & Special Dinner Buffet (100% Satvik Veg).', 'AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Pilgrim Rest House (Safe, family-friendly rooms, walking distance to sacred sites)', 'Perfect travel weather with low humidity and comfortable evening temperature 20°C.',
  'Traditional wear. Dhoti or Pyjama-Kurta for men; Saree or Salwar suit for women. Sleeveless strictly prohibited.', 'Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 1 to 2 hours transfer'
FROM public.packages p WHERE p.slug = 'hinduism-trimbakeshwar-temple-nashik-india'
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
  p.id, 1, 'Arrival & Settle in at Katra', 'Katra', 'Welcome to your yatra. Arrive in Katra, transfer to your stay, and rest before your sightseeing tour.',
  'Arrival & Check-in', 'Arrive at the nearest transit hub. Meet our coordinator and transfer to your pre-booked stay in Katra.',
  'Leisure & Rest', 'Check into your hotel room, unpack your luggage, and rest to recover from your flight or train journey.',
  'Orientation Walk', 'Meet your local guide for a small walk around the neighborhood. Receive a detailed brief on local customs.',
  'Temple Darshan: 6:00 AM - 12:30 PM, 4:30 PM - 8:30 PM | Evening Aarti: 6:30 PM', 'Welcome Drink & Buffet Dinner included (100% Satvik Veg).', 'AC Shuttle Transit for close proximity site transfers and passenger drops.',
  'Moderate Paced (Gentle staircases, guide assistance available)', 'Vedic Heritage Inn (Ashram atmosphere, close to main shrines, Western toilets, hot water)', 'Warm and sunny afternoon, ideal for outdoor sightseeing, average temp 24°C.',
  'Traditional wear. Dhoti or Pyjama-Kurta for men; Saree or Salwar suit for women. Sleeveless strictly prohibited.', 'Comfortable travel footwear, photo ID, essential personal medication, daypack.',
  'Not recommended for guests requiring wheelchair support due to steep stairs and terrain.', 'Expect moderate physical movement. Wear athletic shoes with excellent grip.', 'Approx. 1 to 2 hours transfer'
FROM public.packages p WHERE p.slug = 'hinduism-vaishno-devi-india'
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
  p.id, 2, 'Explore Vaishno Devi Heritage Centre', 'Katra', 'Spend your day visiting Vaishno Devi Heritage Centre, the primary attraction in Vaishno Devi, accompanied by our expert guide.',
  'Guided Tour of Vaishno Devi Heritage Centre', 'Early morning visit to Vaishno Devi Heritage Centre to avoid crowds. Learn about the heritage and unique history of this landmark.',
  'Local Traditional Lunch', 'Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings.',
  'Evening walk at Vaishno Devi Panoramic Viewpoint', 'Stroll around Vaishno Devi Panoramic Viewpoint for scenic sunset views. Capture great family photos as the evening lights turn on.',
  'Temple Darshan: 6:00 AM - 12:30 PM, 4:30 PM - 8:30 PM | Evening Aarti: 6:30 PM', 'Complimentary Breakfast & Traditional Lunch (100% Satvik Veg).', 'AC Private Sedan with professional local driver (includes first-aid kit and bottled water).',
  'Moderate Paced (Gentle staircases, guide assistance available)', 'Premium Pilgrim Hotel (AC rooms, elevator, clean linen, hot water, elevator access)', 'Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.',
  'Traditional wear. Dhoti or Pyjama-Kurta for men; Saree or Salwar suit for women. Sleeveless strictly prohibited.', 'Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.',
  'Not recommended for guests requiring wheelchair support due to steep stairs and terrain.', 'Expect moderate physical movement. Wear athletic shoes with excellent grip.', 'Approx. 3 to 4 hours local tour'
FROM public.packages p WHERE p.slug = 'hinduism-vaishno-devi-india'
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
  p.id, 3, 'Souvenir Shopping & Onward Departure', 'Katra', 'Conclude your memorable stay in Katra with local craft shopping, checkout, and outbound transfers.',
  'Handicrafts Shopping', 'Visit local co-operative markets to buy traditional souvenirs, regional sweets, or native organic spices.',
  'Check-out & Packing', 'Return to your hotel, pack your bags, clear any local incidentals, and check out from your rooms.',
  'Outbound Transfer', 'Board your private vehicle transfer to the airport or railway station for your onward return journey home.',
  'Temple Darshan: 6:00 AM - 12:30 PM, 4:30 PM - 8:30 PM | Evening Aarti: 6:30 PM', 'Breakfast & Special Dinner Buffet (100% Satvik Veg).', 'AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).',
  'Moderate Paced (Gentle staircases, guide assistance available)', 'Pilgrim Rest House (Safe, family-friendly rooms, walking distance to sacred sites)', 'Perfect travel weather with low humidity and comfortable evening temperature 20°C.',
  'Traditional wear. Dhoti or Pyjama-Kurta for men; Saree or Salwar suit for women. Sleeveless strictly prohibited.', 'Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.',
  'Not recommended for guests requiring wheelchair support due to steep stairs and terrain.', 'Expect moderate physical movement. Wear athletic shoes with excellent grip.', 'Approx. 1 to 2 hours transfer'
FROM public.packages p WHERE p.slug = 'hinduism-vaishno-devi-india'
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
  p.id, 1, 'Arrival & Settle in at Ajmer', 'Ajmer', 'Welcome to your yatra. Arrive in Ajmer, transfer to your stay, and rest before your sightseeing tour.',
  'Arrival & Check-in', 'Arrive at the nearest transit hub. Meet our coordinator and transfer to your pre-booked stay in Ajmer.',
  'Leisure & Rest', 'Check into your hotel room, unpack your luggage, and rest to recover from your flight or train journey.',
  'Orientation Walk', 'Meet your local guide for a small walk around the neighborhood. Receive a detailed brief on local customs.',
  'Prayer Times: Fajr 4:45 AM, Dhuhr 12:30 PM, Asr 3:45 PM, Maghrib 6:45 PM, Isha 8:15 PM', 'Welcome Drink & Buffet Dinner included (100% Satvik Veg).', 'AC Shuttle Transit for close proximity site transfers and passenger drops.',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Vedic Heritage Inn (Ashram atmosphere, close to main shrines, Western toilets, hot water)', 'Warm and sunny afternoon, ideal for outdoor sightseeing, average temp 24°C.',
  'Full Islamic modest attire. Women must wear loose clothing covering limbs and head. Men wear full trousers.', 'Comfortable travel footwear, photo ID, essential personal medication, daypack.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 1 to 2 hours transfer'
FROM public.packages p WHERE p.slug = 'islam-ajmer-sharif-dargah-india'
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
  p.id, 2, 'Explore Ajmer Sharif Dargah Heritage Centre', 'Ajmer', 'Spend your day visiting Ajmer Sharif Dargah Heritage Centre, the primary attraction in Ajmer Sharif Dargah, accompanied by our expert guide.',
  'Guided Tour of Ajmer Sharif Dargah Heritage Centre', 'Early morning visit to Ajmer Sharif Dargah Heritage Centre to avoid crowds. Learn about the heritage and unique history of this landmark.',
  'Local Traditional Lunch', 'Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings.',
  'Evening walk at Ajmer Sharif Dargah Panoramic Viewpoint', 'Stroll around Ajmer Sharif Dargah Panoramic Viewpoint for scenic sunset views. Capture great family photos as the evening lights turn on.',
  'Prayer Times: Fajr 4:45 AM, Dhuhr 12:30 PM, Asr 3:45 PM, Maghrib 6:45 PM, Isha 8:15 PM', 'Complimentary Breakfast & Traditional Lunch (100% Satvik Veg).', 'AC Private Sedan with professional local driver (includes first-aid kit and bottled water).',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Premium Pilgrim Hotel (AC rooms, elevator, clean linen, hot water, elevator access)', 'Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.',
  'Full Islamic modest attire. Women must wear loose clothing covering limbs and head. Men wear full trousers.', 'Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 3 to 4 hours local tour'
FROM public.packages p WHERE p.slug = 'islam-ajmer-sharif-dargah-india'
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
  p.id, 3, 'Souvenir Shopping & Onward Departure', 'Ajmer', 'Conclude your memorable stay in Ajmer with local craft shopping, checkout, and outbound transfers.',
  'Handicrafts Shopping', 'Visit local co-operative markets to buy traditional souvenirs, regional sweets, or native organic spices.',
  'Check-out & Packing', 'Return to your hotel, pack your bags, clear any local incidentals, and check out from your rooms.',
  'Outbound Transfer', 'Board your private vehicle transfer to the airport or railway station for your onward return journey home.',
  'Prayer Times: Fajr 4:45 AM, Dhuhr 12:30 PM, Asr 3:45 PM, Maghrib 6:45 PM, Isha 8:15 PM', 'Breakfast & Special Dinner Buffet (100% Satvik Veg).', 'AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Pilgrim Rest House (Safe, family-friendly rooms, walking distance to sacred sites)', 'Perfect travel weather with low humidity and comfortable evening temperature 20°C.',
  'Full Islamic modest attire. Women must wear loose clothing covering limbs and head. Men wear full trousers.', 'Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 1 to 2 hours transfer'
FROM public.packages p WHERE p.slug = 'islam-ajmer-sharif-dargah-india'
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
  p.id, 1, 'Arrival & Settle in at Jerusalem', 'Jerusalem', 'Welcome to your yatra. Arrive in Jerusalem, transfer to your stay, and rest before your sightseeing tour.',
  'Arrival & Check-in', 'Arrive at the nearest transit hub. Meet our coordinator and transfer to your pre-booked stay in Jerusalem.',
  'Leisure & Rest', 'Check into your hotel room, unpack your luggage, and rest to recover from your flight or train journey.',
  'Orientation Walk', 'Meet your local guide for a small walk around the neighborhood. Receive a detailed brief on local customs.',
  'Prayer Times: Fajr 4:45 AM, Dhuhr 12:30 PM, Asr 3:45 PM, Maghrib 6:45 PM, Isha 8:15 PM', 'Welcome Drink & Buffet Dinner included (100% Satvik Veg).', 'AC Shuttle Transit for close proximity site transfers and passenger drops.',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Vedic Heritage Inn (Ashram atmosphere, close to main shrines, Western toilets, hot water)', 'Warm and sunny afternoon, ideal for outdoor sightseeing, average temp 24°C.',
  'Full Islamic modest attire. Women must wear loose clothing covering limbs and head. Men wear full trousers.', 'Comfortable travel footwear, photo ID, essential personal medication, daypack.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 1 to 2 hours transfer'
FROM public.packages p WHERE p.slug = 'islam-al-aqsa-mosque-jerusalem-israel'
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
  p.id, 2, 'Explore Al Aqsa Mosque, Jerusalem Heritage Centre', 'Jerusalem', 'Spend your day visiting Al Aqsa Mosque, Jerusalem Heritage Centre, the primary attraction in Al Aqsa Mosque, Jerusalem, accompanied by our expert guide.',
  'Guided Tour of Al Aqsa Mosque, Jerusalem Heritage Centre', 'Early morning visit to Al Aqsa Mosque, Jerusalem Heritage Centre to avoid crowds. Learn about the heritage and unique history of this landmark.',
  'Local Traditional Lunch', 'Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings.',
  'Evening walk at Al Aqsa Mosque, Jerusalem Panoramic Viewpoint', 'Stroll around Al Aqsa Mosque, Jerusalem Panoramic Viewpoint for scenic sunset views. Capture great family photos as the evening lights turn on.',
  'Prayer Times: Fajr 4:45 AM, Dhuhr 12:30 PM, Asr 3:45 PM, Maghrib 6:45 PM, Isha 8:15 PM', 'Complimentary Breakfast & Traditional Lunch (100% Satvik Veg).', 'AC Private Sedan with professional local driver (includes first-aid kit and bottled water).',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Premium Pilgrim Hotel (AC rooms, elevator, clean linen, hot water, elevator access)', 'Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.',
  'Full Islamic modest attire. Women must wear loose clothing covering limbs and head. Men wear full trousers.', 'Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 3 to 4 hours local tour'
FROM public.packages p WHERE p.slug = 'islam-al-aqsa-mosque-jerusalem-israel'
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
  p.id, 3, 'Souvenir Shopping & Onward Departure', 'Jerusalem', 'Conclude your memorable stay in Jerusalem with local craft shopping, checkout, and outbound transfers.',
  'Handicrafts Shopping', 'Visit local co-operative markets to buy traditional souvenirs, regional sweets, or native organic spices.',
  'Check-out & Packing', 'Return to your hotel, pack your bags, clear any local incidentals, and check out from your rooms.',
  'Outbound Transfer', 'Board your private vehicle transfer to the airport or railway station for your onward return journey home.',
  'Prayer Times: Fajr 4:45 AM, Dhuhr 12:30 PM, Asr 3:45 PM, Maghrib 6:45 PM, Isha 8:15 PM', 'Breakfast & Special Dinner Buffet (100% Satvik Veg).', 'AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Pilgrim Rest House (Safe, family-friendly rooms, walking distance to sacred sites)', 'Perfect travel weather with low humidity and comfortable evening temperature 20°C.',
  'Full Islamic modest attire. Women must wear loose clothing covering limbs and head. Men wear full trousers.', 'Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 1 to 2 hours transfer'
FROM public.packages p WHERE p.slug = 'islam-al-aqsa-mosque-jerusalem-israel'
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
  p.id, 1, 'Arrival & Settle in at Cairo', 'Cairo', 'Welcome to your yatra. Arrive in Cairo, transfer to your stay, and rest before your sightseeing tour.',
  'Arrival & Check-in', 'Arrive at the nearest transit hub. Meet our coordinator and transfer to your pre-booked stay in Cairo.',
  'Leisure & Rest', 'Check into your hotel room, unpack your luggage, and rest to recover from your flight or train journey.',
  'Orientation Walk', 'Meet your local guide for a small walk around the neighborhood. Receive a detailed brief on local customs.',
  'Prayer Times: Fajr 4:45 AM, Dhuhr 12:30 PM, Asr 3:45 PM, Maghrib 6:45 PM, Isha 8:15 PM', 'Welcome Drink & Buffet Dinner included (100% Satvik Veg).', 'AC Shuttle Transit for close proximity site transfers and passenger drops.',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Vedic Heritage Inn (Ashram atmosphere, close to main shrines, Western toilets, hot water)', 'Warm and sunny afternoon, ideal for outdoor sightseeing, average temp 24°C.',
  'Full Islamic modest attire. Women must wear loose clothing covering limbs and head. Men wear full trousers.', 'Comfortable travel footwear, photo ID, essential personal medication, daypack.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 1 to 2 hours transfer'
FROM public.packages p WHERE p.slug = 'islam-al-azhar-mosque-cairo-egypt'
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
  p.id, 2, 'Explore Al Azhar Mosque, Cairo Heritage Centre', 'Cairo', 'Spend your day visiting Al Azhar Mosque, Cairo Heritage Centre, the primary attraction in Al Azhar Mosque, Cairo, accompanied by our expert guide.',
  'Guided Tour of Al Azhar Mosque, Cairo Heritage Centre', 'Early morning visit to Al Azhar Mosque, Cairo Heritage Centre to avoid crowds. Learn about the heritage and unique history of this landmark.',
  'Local Traditional Lunch', 'Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings.',
  'Evening walk at Al Azhar Mosque, Cairo Panoramic Viewpoint', 'Stroll around Al Azhar Mosque, Cairo Panoramic Viewpoint for scenic sunset views. Capture great family photos as the evening lights turn on.',
  'Prayer Times: Fajr 4:45 AM, Dhuhr 12:30 PM, Asr 3:45 PM, Maghrib 6:45 PM, Isha 8:15 PM', 'Complimentary Breakfast & Traditional Lunch (100% Satvik Veg).', 'AC Private Sedan with professional local driver (includes first-aid kit and bottled water).',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Premium Pilgrim Hotel (AC rooms, elevator, clean linen, hot water, elevator access)', 'Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.',
  'Full Islamic modest attire. Women must wear loose clothing covering limbs and head. Men wear full trousers.', 'Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 3 to 4 hours local tour'
FROM public.packages p WHERE p.slug = 'islam-al-azhar-mosque-cairo-egypt'
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
  p.id, 3, 'Souvenir Shopping & Onward Departure', 'Cairo', 'Conclude your memorable stay in Cairo with local craft shopping, checkout, and outbound transfers.',
  'Handicrafts Shopping', 'Visit local co-operative markets to buy traditional souvenirs, regional sweets, or native organic spices.',
  'Check-out & Packing', 'Return to your hotel, pack your bags, clear any local incidentals, and check out from your rooms.',
  'Outbound Transfer', 'Board your private vehicle transfer to the airport or railway station for your onward return journey home.',
  'Prayer Times: Fajr 4:45 AM, Dhuhr 12:30 PM, Asr 3:45 PM, Maghrib 6:45 PM, Isha 8:15 PM', 'Breakfast & Special Dinner Buffet (100% Satvik Veg).', 'AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Pilgrim Rest House (Safe, family-friendly rooms, walking distance to sacred sites)', 'Perfect travel weather with low humidity and comfortable evening temperature 20°C.',
  'Full Islamic modest attire. Women must wear loose clothing covering limbs and head. Men wear full trousers.', 'Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 1 to 2 hours transfer'
FROM public.packages p WHERE p.slug = 'islam-al-azhar-mosque-cairo-egypt'
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
  p.id, 1, 'Arrival & Settle in at Medina', 'Medina', 'Welcome to your yatra. Arrive in Medina, transfer to your stay, and rest before your sightseeing tour.',
  'Arrival & Check-in', 'Arrive at the nearest transit hub. Meet our coordinator and transfer to your pre-booked stay in Medina.',
  'Leisure & Rest', 'Check into your hotel room, unpack your luggage, and rest to recover from your flight or train journey.',
  'Orientation Walk', 'Meet your local guide for a small walk around the neighborhood. Receive a detailed brief on local customs.',
  'Prayer Times: Fajr 4:45 AM, Dhuhr 12:30 PM, Asr 3:45 PM, Maghrib 6:45 PM, Isha 8:15 PM', 'Welcome Drink & Buffet Dinner included (100% Satvik Veg).', 'AC Shuttle Transit for close proximity site transfers and passenger drops.',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Vedic Heritage Inn (Ashram atmosphere, close to main shrines, Western toilets, hot water)', 'Warm and sunny afternoon, ideal for outdoor sightseeing, average temp 24°C.',
  'Full Islamic modest attire. Women must wear loose clothing covering limbs and head. Men wear full trousers.', 'Comfortable travel footwear, photo ID, essential personal medication, daypack.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 1 to 2 hours transfer'
FROM public.packages p WHERE p.slug = 'islam-al-masjid-al-qiblatayn-medina-saudi-arabia'
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
  p.id, 2, 'Explore Al Masjid al Qiblatayn, Medina Heritage Centre', 'Medina', 'Spend your day visiting Al Masjid al Qiblatayn, Medina Heritage Centre, the primary attraction in Al Masjid al Qiblatayn, Medina, accompanied by our expert guide.',
  'Guided Tour of Al Masjid al Qiblatayn, Medina Heritage Centre', 'Early morning visit to Al Masjid al Qiblatayn, Medina Heritage Centre to avoid crowds. Learn about the heritage and unique history of this landmark.',
  'Local Traditional Lunch', 'Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings.',
  'Evening walk at Al Masjid al Qiblatayn, Medina Panoramic Viewpoint', 'Stroll around Al Masjid al Qiblatayn, Medina Panoramic Viewpoint for scenic sunset views. Capture great family photos as the evening lights turn on.',
  'Prayer Times: Fajr 4:45 AM, Dhuhr 12:30 PM, Asr 3:45 PM, Maghrib 6:45 PM, Isha 8:15 PM', 'Complimentary Breakfast & Traditional Lunch (100% Satvik Veg).', 'AC Private Sedan with professional local driver (includes first-aid kit and bottled water).',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Premium Pilgrim Hotel (AC rooms, elevator, clean linen, hot water, elevator access)', 'Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.',
  'Full Islamic modest attire. Women must wear loose clothing covering limbs and head. Men wear full trousers.', 'Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 3 to 4 hours local tour'
FROM public.packages p WHERE p.slug = 'islam-al-masjid-al-qiblatayn-medina-saudi-arabia'
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
  p.id, 3, 'Souvenir Shopping & Onward Departure', 'Medina', 'Conclude your memorable stay in Medina with local craft shopping, checkout, and outbound transfers.',
  'Handicrafts Shopping', 'Visit local co-operative markets to buy traditional souvenirs, regional sweets, or native organic spices.',
  'Check-out & Packing', 'Return to your hotel, pack your bags, clear any local incidentals, and check out from your rooms.',
  'Outbound Transfer', 'Board your private vehicle transfer to the airport or railway station for your onward return journey home.',
  'Prayer Times: Fajr 4:45 AM, Dhuhr 12:30 PM, Asr 3:45 PM, Maghrib 6:45 PM, Isha 8:15 PM', 'Breakfast & Special Dinner Buffet (100% Satvik Veg).', 'AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Pilgrim Rest House (Safe, family-friendly rooms, walking distance to sacred sites)', 'Perfect travel weather with low humidity and comfortable evening temperature 20°C.',
  'Full Islamic modest attire. Women must wear loose clothing covering limbs and head. Men wear full trousers.', 'Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 1 to 2 hours transfer'
FROM public.packages p WHERE p.slug = 'islam-al-masjid-al-qiblatayn-medina-saudi-arabia'
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
  p.id, 1, 'Arrival & Settle in at Lahore', 'Lahore', 'Welcome to your yatra. Arrive in Lahore, transfer to your stay, and rest before your sightseeing tour.',
  'Arrival & Check-in', 'Arrive at the nearest transit hub. Meet our coordinator and transfer to your pre-booked stay in Lahore.',
  'Leisure & Rest', 'Check into your hotel room, unpack your luggage, and rest to recover from your flight or train journey.',
  'Orientation Walk', 'Meet your local guide for a small walk around the neighborhood. Receive a detailed brief on local customs.',
  'Prayer Times: Fajr 4:45 AM, Dhuhr 12:30 PM, Asr 3:45 PM, Maghrib 6:45 PM, Isha 8:15 PM', 'Welcome Drink & Buffet Dinner included (100% Satvik Veg).', 'AC Shuttle Transit for close proximity site transfers and passenger drops.',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Vedic Heritage Inn (Ashram atmosphere, close to main shrines, Western toilets, hot water)', 'Warm and sunny afternoon, ideal for outdoor sightseeing, average temp 24°C.',
  'Full Islamic modest attire. Women must wear loose clothing covering limbs and head. Men wear full trousers.', 'Comfortable travel footwear, photo ID, essential personal medication, daypack.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 1 to 2 hours transfer'
FROM public.packages p WHERE p.slug = 'islam-data-darbar-lahore-pakistan'
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
  p.id, 2, 'Explore Data Darbar, Lahore Heritage Centre', 'Lahore', 'Spend your day visiting Data Darbar, Lahore Heritage Centre, the primary attraction in Data Darbar, Lahore, accompanied by our expert guide.',
  'Guided Tour of Data Darbar, Lahore Heritage Centre', 'Early morning visit to Data Darbar, Lahore Heritage Centre to avoid crowds. Learn about the heritage and unique history of this landmark.',
  'Local Traditional Lunch', 'Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings.',
  'Evening walk at Data Darbar, Lahore Panoramic Viewpoint', 'Stroll around Data Darbar, Lahore Panoramic Viewpoint for scenic sunset views. Capture great family photos as the evening lights turn on.',
  'Prayer Times: Fajr 4:45 AM, Dhuhr 12:30 PM, Asr 3:45 PM, Maghrib 6:45 PM, Isha 8:15 PM', 'Complimentary Breakfast & Traditional Lunch (100% Satvik Veg).', 'AC Private Sedan with professional local driver (includes first-aid kit and bottled water).',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Premium Pilgrim Hotel (AC rooms, elevator, clean linen, hot water, elevator access)', 'Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.',
  'Full Islamic modest attire. Women must wear loose clothing covering limbs and head. Men wear full trousers.', 'Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 3 to 4 hours local tour'
FROM public.packages p WHERE p.slug = 'islam-data-darbar-lahore-pakistan'
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
  p.id, 3, 'Souvenir Shopping & Onward Departure', 'Lahore', 'Conclude your memorable stay in Lahore with local craft shopping, checkout, and outbound transfers.',
  'Handicrafts Shopping', 'Visit local co-operative markets to buy traditional souvenirs, regional sweets, or native organic spices.',
  'Check-out & Packing', 'Return to your hotel, pack your bags, clear any local incidentals, and check out from your rooms.',
  'Outbound Transfer', 'Board your private vehicle transfer to the airport or railway station for your onward return journey home.',
  'Prayer Times: Fajr 4:45 AM, Dhuhr 12:30 PM, Asr 3:45 PM, Maghrib 6:45 PM, Isha 8:15 PM', 'Breakfast & Special Dinner Buffet (100% Satvik Veg).', 'AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Pilgrim Rest House (Safe, family-friendly rooms, walking distance to sacred sites)', 'Perfect travel weather with low humidity and comfortable evening temperature 20°C.',
  'Full Islamic modest attire. Women must wear loose clothing covering limbs and head. Men wear full trousers.', 'Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 1 to 2 hours transfer'
FROM public.packages p WHERE p.slug = 'islam-data-darbar-lahore-pakistan'
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
  p.id, 1, 'Arrival & Settle in at Jerusalem', 'Jerusalem', 'Welcome to your yatra. Arrive in Jerusalem, transfer to your stay, and rest before your sightseeing tour.',
  'Arrival & Check-in', 'Arrive at the nearest transit hub. Meet our coordinator and transfer to your pre-booked stay in Jerusalem.',
  'Leisure & Rest', 'Check into your hotel room, unpack your luggage, and rest to recover from your flight or train journey.',
  'Orientation Walk', 'Meet your local guide for a small walk around the neighborhood. Receive a detailed brief on local customs.',
  'Prayer Times: Fajr 4:45 AM, Dhuhr 12:30 PM, Asr 3:45 PM, Maghrib 6:45 PM, Isha 8:15 PM', 'Welcome Drink & Buffet Dinner included (100% Satvik Veg).', 'AC Shuttle Transit for close proximity site transfers and passenger drops.',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Vedic Heritage Inn (Ashram atmosphere, close to main shrines, Western toilets, hot water)', 'Warm and sunny afternoon, ideal for outdoor sightseeing, average temp 24°C.',
  'Full Islamic modest attire. Women must wear loose clothing covering limbs and head. Men wear full trousers.', 'Comfortable travel footwear, photo ID, essential personal medication, daypack.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 1 to 2 hours transfer'
FROM public.packages p WHERE p.slug = 'islam-dome-of-the-rock-jerusalem-israel'
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
  p.id, 2, 'Explore Dome of the Rock, Jerusalem Heritage Centre', 'Jerusalem', 'Spend your day visiting Dome of the Rock, Jerusalem Heritage Centre, the primary attraction in Dome of the Rock, Jerusalem, accompanied by our expert guide.',
  'Guided Tour of Dome of the Rock, Jerusalem Heritage Centre', 'Early morning visit to Dome of the Rock, Jerusalem Heritage Centre to avoid crowds. Learn about the heritage and unique history of this landmark.',
  'Local Traditional Lunch', 'Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings.',
  'Evening walk at Dome of the Rock, Jerusalem Panoramic Viewpoint', 'Stroll around Dome of the Rock, Jerusalem Panoramic Viewpoint for scenic sunset views. Capture great family photos as the evening lights turn on.',
  'Prayer Times: Fajr 4:45 AM, Dhuhr 12:30 PM, Asr 3:45 PM, Maghrib 6:45 PM, Isha 8:15 PM', 'Complimentary Breakfast & Traditional Lunch (100% Satvik Veg).', 'AC Private Sedan with professional local driver (includes first-aid kit and bottled water).',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Premium Pilgrim Hotel (AC rooms, elevator, clean linen, hot water, elevator access)', 'Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.',
  'Full Islamic modest attire. Women must wear loose clothing covering limbs and head. Men wear full trousers.', 'Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 3 to 4 hours local tour'
FROM public.packages p WHERE p.slug = 'islam-dome-of-the-rock-jerusalem-israel'
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
  p.id, 3, 'Souvenir Shopping & Onward Departure', 'Jerusalem', 'Conclude your memorable stay in Jerusalem with local craft shopping, checkout, and outbound transfers.',
  'Handicrafts Shopping', 'Visit local co-operative markets to buy traditional souvenirs, regional sweets, or native organic spices.',
  'Check-out & Packing', 'Return to your hotel, pack your bags, clear any local incidentals, and check out from your rooms.',
  'Outbound Transfer', 'Board your private vehicle transfer to the airport or railway station for your onward return journey home.',
  'Prayer Times: Fajr 4:45 AM, Dhuhr 12:30 PM, Asr 3:45 PM, Maghrib 6:45 PM, Isha 8:15 PM', 'Breakfast & Special Dinner Buffet (100% Satvik Veg).', 'AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Pilgrim Rest House (Safe, family-friendly rooms, walking distance to sacred sites)', 'Perfect travel weather with low humidity and comfortable evening temperature 20°C.',
  'Full Islamic modest attire. Women must wear loose clothing covering limbs and head. Men wear full trousers.', 'Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 1 to 2 hours transfer'
FROM public.packages p WHERE p.slug = 'islam-dome-of-the-rock-jerusalem-israel'
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
  p.id, 1, 'Arrival & Settle in at Najaf', 'Najaf', 'Welcome to your yatra. Arrive in Najaf, transfer to your stay, and rest before your sightseeing tour.',
  'Arrival & Check-in', 'Arrive at the nearest transit hub. Meet our coordinator and transfer to your pre-booked stay in Najaf.',
  'Leisure & Rest', 'Check into your hotel room, unpack your luggage, and rest to recover from your flight or train journey.',
  'Orientation Walk', 'Meet your local guide for a small walk around the neighborhood. Receive a detailed brief on local customs.',
  'Prayer Times: Fajr 4:45 AM, Dhuhr 12:30 PM, Asr 3:45 PM, Maghrib 6:45 PM, Isha 8:15 PM', 'Welcome Drink & Buffet Dinner included (100% Satvik Veg).', 'AC Shuttle Transit for close proximity site transfers and passenger drops.',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Vedic Heritage Inn (Ashram atmosphere, close to main shrines, Western toilets, hot water)', 'Warm and sunny afternoon, ideal for outdoor sightseeing, average temp 24°C.',
  'Full Islamic modest attire. Women must wear loose clothing covering limbs and head. Men wear full trousers.', 'Comfortable travel footwear, photo ID, essential personal medication, daypack.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 1 to 2 hours transfer'
FROM public.packages p WHERE p.slug = 'islam-imam-ali-shrine-najaf-iraq'
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
  p.id, 2, 'Explore Imam Ali Shrine, Najaf Heritage Centre', 'Najaf', 'Spend your day visiting Imam Ali Shrine, Najaf Heritage Centre, the primary attraction in Imam Ali Shrine, Najaf, accompanied by our expert guide.',
  'Guided Tour of Imam Ali Shrine, Najaf Heritage Centre', 'Early morning visit to Imam Ali Shrine, Najaf Heritage Centre to avoid crowds. Learn about the heritage and unique history of this landmark.',
  'Local Traditional Lunch', 'Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings.',
  'Evening walk at Imam Ali Shrine, Najaf Panoramic Viewpoint', 'Stroll around Imam Ali Shrine, Najaf Panoramic Viewpoint for scenic sunset views. Capture great family photos as the evening lights turn on.',
  'Prayer Times: Fajr 4:45 AM, Dhuhr 12:30 PM, Asr 3:45 PM, Maghrib 6:45 PM, Isha 8:15 PM', 'Complimentary Breakfast & Traditional Lunch (100% Satvik Veg).', 'AC Private Sedan with professional local driver (includes first-aid kit and bottled water).',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Premium Pilgrim Hotel (AC rooms, elevator, clean linen, hot water, elevator access)', 'Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.',
  'Full Islamic modest attire. Women must wear loose clothing covering limbs and head. Men wear full trousers.', 'Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 3 to 4 hours local tour'
FROM public.packages p WHERE p.slug = 'islam-imam-ali-shrine-najaf-iraq'
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
  p.id, 3, 'Souvenir Shopping & Onward Departure', 'Najaf', 'Conclude your memorable stay in Najaf with local craft shopping, checkout, and outbound transfers.',
  'Handicrafts Shopping', 'Visit local co-operative markets to buy traditional souvenirs, regional sweets, or native organic spices.',
  'Check-out & Packing', 'Return to your hotel, pack your bags, clear any local incidentals, and check out from your rooms.',
  'Outbound Transfer', 'Board your private vehicle transfer to the airport or railway station for your onward return journey home.',
  'Prayer Times: Fajr 4:45 AM, Dhuhr 12:30 PM, Asr 3:45 PM, Maghrib 6:45 PM, Isha 8:15 PM', 'Breakfast & Special Dinner Buffet (100% Satvik Veg).', 'AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Pilgrim Rest House (Safe, family-friendly rooms, walking distance to sacred sites)', 'Perfect travel weather with low humidity and comfortable evening temperature 20°C.',
  'Full Islamic modest attire. Women must wear loose clothing covering limbs and head. Men wear full trousers.', 'Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 1 to 2 hours transfer'
FROM public.packages p WHERE p.slug = 'islam-imam-ali-shrine-najaf-iraq'
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
  p.id, 1, 'Arrival & Settle in at Karbala', 'Karbala', 'Welcome to your yatra. Arrive in Karbala, transfer to your stay, and rest before your sightseeing tour.',
  'Arrival & Check-in', 'Arrive at the nearest transit hub. Meet our coordinator and transfer to your pre-booked stay in Karbala.',
  'Leisure & Rest', 'Check into your hotel room, unpack your luggage, and rest to recover from your flight or train journey.',
  'Orientation Walk', 'Meet your local guide for a small walk around the neighborhood. Receive a detailed brief on local customs.',
  'Prayer Times: Fajr 4:45 AM, Dhuhr 12:30 PM, Asr 3:45 PM, Maghrib 6:45 PM, Isha 8:15 PM', 'Welcome Drink & Buffet Dinner included (100% Satvik Veg).', 'AC Shuttle Transit for close proximity site transfers and passenger drops.',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Vedic Heritage Inn (Ashram atmosphere, close to main shrines, Western toilets, hot water)', 'Warm and sunny afternoon, ideal for outdoor sightseeing, average temp 24°C.',
  'Full Islamic modest attire. Women must wear loose clothing covering limbs and head. Men wear full trousers.', 'Comfortable travel footwear, photo ID, essential personal medication, daypack.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 1 to 2 hours transfer'
FROM public.packages p WHERE p.slug = 'islam-imam-husayn-shrine-karbala-iraq'
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
  p.id, 2, 'Explore Imam Husayn Shrine, Karbala Heritage Centre', 'Karbala', 'Spend your day visiting Imam Husayn Shrine, Karbala Heritage Centre, the primary attraction in Imam Husayn Shrine, Karbala, accompanied by our expert guide.',
  'Guided Tour of Imam Husayn Shrine, Karbala Heritage Centre', 'Early morning visit to Imam Husayn Shrine, Karbala Heritage Centre to avoid crowds. Learn about the heritage and unique history of this landmark.',
  'Local Traditional Lunch', 'Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings.',
  'Evening walk at Imam Husayn Shrine, Karbala Panoramic Viewpoint', 'Stroll around Imam Husayn Shrine, Karbala Panoramic Viewpoint for scenic sunset views. Capture great family photos as the evening lights turn on.',
  'Prayer Times: Fajr 4:45 AM, Dhuhr 12:30 PM, Asr 3:45 PM, Maghrib 6:45 PM, Isha 8:15 PM', 'Complimentary Breakfast & Traditional Lunch (100% Satvik Veg).', 'AC Private Sedan with professional local driver (includes first-aid kit and bottled water).',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Premium Pilgrim Hotel (AC rooms, elevator, clean linen, hot water, elevator access)', 'Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.',
  'Full Islamic modest attire. Women must wear loose clothing covering limbs and head. Men wear full trousers.', 'Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 3 to 4 hours local tour'
FROM public.packages p WHERE p.slug = 'islam-imam-husayn-shrine-karbala-iraq'
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
  p.id, 3, 'Souvenir Shopping & Onward Departure', 'Karbala', 'Conclude your memorable stay in Karbala with local craft shopping, checkout, and outbound transfers.',
  'Handicrafts Shopping', 'Visit local co-operative markets to buy traditional souvenirs, regional sweets, or native organic spices.',
  'Check-out & Packing', 'Return to your hotel, pack your bags, clear any local incidentals, and check out from your rooms.',
  'Outbound Transfer', 'Board your private vehicle transfer to the airport or railway station for your onward return journey home.',
  'Prayer Times: Fajr 4:45 AM, Dhuhr 12:30 PM, Asr 3:45 PM, Maghrib 6:45 PM, Isha 8:15 PM', 'Breakfast & Special Dinner Buffet (100% Satvik Veg).', 'AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Pilgrim Rest House (Safe, family-friendly rooms, walking distance to sacred sites)', 'Perfect travel weather with low humidity and comfortable evening temperature 20°C.',
  'Full Islamic modest attire. Women must wear loose clothing covering limbs and head. Men wear full trousers.', 'Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 1 to 2 hours transfer'
FROM public.packages p WHERE p.slug = 'islam-imam-husayn-shrine-karbala-iraq'
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
  p.id, 1, 'Arrival & Settle in at Mashhad', 'Mashhad', 'Welcome to your yatra. Arrive in Mashhad, transfer to your stay, and rest before your sightseeing tour.',
  'Arrival & Check-in', 'Arrive at the nearest transit hub. Meet our coordinator and transfer to your pre-booked stay in Mashhad.',
  'Leisure & Rest', 'Check into your hotel room, unpack your luggage, and rest to recover from your flight or train journey.',
  'Orientation Walk', 'Meet your local guide for a small walk around the neighborhood. Receive a detailed brief on local customs.',
  'Prayer Times: Fajr 4:45 AM, Dhuhr 12:30 PM, Asr 3:45 PM, Maghrib 6:45 PM, Isha 8:15 PM', 'Welcome Drink & Buffet Dinner included (100% Satvik Veg).', 'AC Shuttle Transit for close proximity site transfers and passenger drops.',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Vedic Heritage Inn (Ashram atmosphere, close to main shrines, Western toilets, hot water)', 'Warm and sunny afternoon, ideal for outdoor sightseeing, average temp 24°C.',
  'Full Islamic modest attire. Women must wear loose clothing covering limbs and head. Men wear full trousers.', 'Comfortable travel footwear, photo ID, essential personal medication, daypack.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 1 to 2 hours transfer'
FROM public.packages p WHERE p.slug = 'islam-imam-reza-shrine-mashhad-iran'
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
  p.id, 2, 'Explore Imam Reza Shrine, Mashhad Heritage Centre', 'Mashhad', 'Spend your day visiting Imam Reza Shrine, Mashhad Heritage Centre, the primary attraction in Imam Reza Shrine, Mashhad, accompanied by our expert guide.',
  'Guided Tour of Imam Reza Shrine, Mashhad Heritage Centre', 'Early morning visit to Imam Reza Shrine, Mashhad Heritage Centre to avoid crowds. Learn about the heritage and unique history of this landmark.',
  'Local Traditional Lunch', 'Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings.',
  'Evening walk at Imam Reza Shrine, Mashhad Panoramic Viewpoint', 'Stroll around Imam Reza Shrine, Mashhad Panoramic Viewpoint for scenic sunset views. Capture great family photos as the evening lights turn on.',
  'Prayer Times: Fajr 4:45 AM, Dhuhr 12:30 PM, Asr 3:45 PM, Maghrib 6:45 PM, Isha 8:15 PM', 'Complimentary Breakfast & Traditional Lunch (100% Satvik Veg).', 'AC Private Sedan with professional local driver (includes first-aid kit and bottled water).',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Premium Pilgrim Hotel (AC rooms, elevator, clean linen, hot water, elevator access)', 'Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.',
  'Full Islamic modest attire. Women must wear loose clothing covering limbs and head. Men wear full trousers.', 'Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 3 to 4 hours local tour'
FROM public.packages p WHERE p.slug = 'islam-imam-reza-shrine-mashhad-iran'
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
  p.id, 3, 'Souvenir Shopping & Onward Departure', 'Mashhad', 'Conclude your memorable stay in Mashhad with local craft shopping, checkout, and outbound transfers.',
  'Handicrafts Shopping', 'Visit local co-operative markets to buy traditional souvenirs, regional sweets, or native organic spices.',
  'Check-out & Packing', 'Return to your hotel, pack your bags, clear any local incidentals, and check out from your rooms.',
  'Outbound Transfer', 'Board your private vehicle transfer to the airport or railway station for your onward return journey home.',
  'Prayer Times: Fajr 4:45 AM, Dhuhr 12:30 PM, Asr 3:45 PM, Maghrib 6:45 PM, Isha 8:15 PM', 'Breakfast & Special Dinner Buffet (100% Satvik Veg).', 'AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Pilgrim Rest House (Safe, family-friendly rooms, walking distance to sacred sites)', 'Perfect travel weather with low humidity and comfortable evening temperature 20°C.',
  'Full Islamic modest attire. Women must wear loose clothing covering limbs and head. Men wear full trousers.', 'Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 1 to 2 hours transfer'
FROM public.packages p WHERE p.slug = 'islam-imam-reza-shrine-mashhad-iran'
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
  p.id, 1, 'Arrival & Settle in at Makkah', 'Makkah', 'Welcome to your yatra. Arrive in Makkah, transfer to your stay, and rest before your sightseeing tour.',
  'Arrival & Check-in', 'Arrive at the nearest transit hub. Meet our coordinator and transfer to your pre-booked stay in Makkah.',
  'Leisure & Rest', 'Check into your hotel room, unpack your luggage, and rest to recover from your flight or train journey.',
  'Orientation Walk', 'Meet your local guide for a small walk around the neighborhood. Receive a detailed brief on local customs.',
  'Prayer Times: Fajr 4:45 AM, Dhuhr 12:30 PM, Asr 3:45 PM, Maghrib 6:45 PM, Isha 8:15 PM', 'Welcome Drink & Buffet Dinner included (100% Satvik Veg).', 'AC Shuttle Transit for close proximity site transfers and passenger drops.',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Vedic Heritage Inn (Ashram atmosphere, close to main shrines, Western toilets, hot water)', 'Warm and sunny afternoon, ideal for outdoor sightseeing, average temp 24°C.',
  'Full Islamic modest attire. Women must wear loose clothing covering limbs and head. Men wear full trousers.', 'Comfortable travel footwear, photo ID, essential personal medication, daypack.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 1 to 2 hours transfer'
FROM public.packages p WHERE p.slug = 'islam-mecca-saudi-arabia'
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
  p.id, 2, 'Explore Mecca Heritage Centre', 'Makkah', 'Spend your day visiting Mecca Heritage Centre, the primary attraction in Mecca, accompanied by our expert guide.',
  'Guided Tour of Mecca Heritage Centre', 'Early morning visit to Mecca Heritage Centre to avoid crowds. Learn about the heritage and unique history of this landmark.',
  'Local Traditional Lunch', 'Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings.',
  'Evening walk at Mecca Panoramic Viewpoint', 'Stroll around Mecca Panoramic Viewpoint for scenic sunset views. Capture great family photos as the evening lights turn on.',
  'Prayer Times: Fajr 4:45 AM, Dhuhr 12:30 PM, Asr 3:45 PM, Maghrib 6:45 PM, Isha 8:15 PM', 'Complimentary Breakfast & Traditional Lunch (100% Satvik Veg).', 'AC Private Sedan with professional local driver (includes first-aid kit and bottled water).',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Premium Pilgrim Hotel (AC rooms, elevator, clean linen, hot water, elevator access)', 'Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.',
  'Full Islamic modest attire. Women must wear loose clothing covering limbs and head. Men wear full trousers.', 'Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 3 to 4 hours local tour'
FROM public.packages p WHERE p.slug = 'islam-mecca-saudi-arabia'
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
  p.id, 3, 'Souvenir Shopping & Onward Departure', 'Makkah', 'Conclude your memorable stay in Makkah with local craft shopping, checkout, and outbound transfers.',
  'Handicrafts Shopping', 'Visit local co-operative markets to buy traditional souvenirs, regional sweets, or native organic spices.',
  'Check-out & Packing', 'Return to your hotel, pack your bags, clear any local incidentals, and check out from your rooms.',
  'Outbound Transfer', 'Board your private vehicle transfer to the airport or railway station for your onward return journey home.',
  'Prayer Times: Fajr 4:45 AM, Dhuhr 12:30 PM, Asr 3:45 PM, Maghrib 6:45 PM, Isha 8:15 PM', 'Breakfast & Special Dinner Buffet (100% Satvik Veg).', 'AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Pilgrim Rest House (Safe, family-friendly rooms, walking distance to sacred sites)', 'Perfect travel weather with low humidity and comfortable evening temperature 20°C.',
  'Full Islamic modest attire. Women must wear loose clothing covering limbs and head. Men wear full trousers.', 'Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 1 to 2 hours transfer'
FROM public.packages p WHERE p.slug = 'islam-mecca-saudi-arabia'
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
  p.id, 1, 'Arrival & Settle in at Saudi Arabia', 'Saudi Arabia', 'Welcome to your yatra. Arrive in Saudi Arabia, transfer to your stay, and rest before your sightseeing tour.',
  'Arrival & Check-in', 'Arrive at the nearest transit hub. Meet our coordinator and transfer to your pre-booked stay in Saudi Arabia.',
  'Leisure & Rest', 'Check into your hotel room, unpack your luggage, and rest to recover from your flight or train journey.',
  'Orientation Walk', 'Meet your local guide for a small walk around the neighborhood. Receive a detailed brief on local customs.',
  'Prayer Times: Fajr 4:45 AM, Dhuhr 12:30 PM, Asr 3:45 PM, Maghrib 6:45 PM, Isha 8:15 PM', 'Welcome Drink & Buffet Dinner included (100% Satvik Veg).', 'AC Shuttle Transit for close proximity site transfers and passenger drops.',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Vedic Heritage Inn (Ashram atmosphere, close to main shrines, Western toilets, hot water)', 'Warm and sunny afternoon, ideal for outdoor sightseeing, average temp 24°C.',
  'Full Islamic modest attire. Women must wear loose clothing covering limbs and head. Men wear full trousers.', 'Comfortable travel footwear, photo ID, essential personal medication, daypack.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 1 to 2 hours transfer'
FROM public.packages p WHERE p.slug = 'islam-medina-saudi-arabia'
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
  p.id, 2, 'Explore Medina Heritage Centre', 'Saudi Arabia', 'Spend your day visiting Medina Heritage Centre, the primary attraction in Medina, accompanied by our expert guide.',
  'Guided Tour of Medina Heritage Centre', 'Early morning visit to Medina Heritage Centre to avoid crowds. Learn about the heritage and unique history of this landmark.',
  'Local Traditional Lunch', 'Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings.',
  'Evening walk at Medina Panoramic Viewpoint', 'Stroll around Medina Panoramic Viewpoint for scenic sunset views. Capture great family photos as the evening lights turn on.',
  'Prayer Times: Fajr 4:45 AM, Dhuhr 12:30 PM, Asr 3:45 PM, Maghrib 6:45 PM, Isha 8:15 PM', 'Complimentary Breakfast & Traditional Lunch (100% Satvik Veg).', 'AC Private Sedan with professional local driver (includes first-aid kit and bottled water).',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Premium Pilgrim Hotel (AC rooms, elevator, clean linen, hot water, elevator access)', 'Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.',
  'Full Islamic modest attire. Women must wear loose clothing covering limbs and head. Men wear full trousers.', 'Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 3 to 4 hours local tour'
FROM public.packages p WHERE p.slug = 'islam-medina-saudi-arabia'
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
  p.id, 3, 'Souvenir Shopping & Onward Departure', 'Saudi Arabia', 'Conclude your memorable stay in Saudi Arabia with local craft shopping, checkout, and outbound transfers.',
  'Handicrafts Shopping', 'Visit local co-operative markets to buy traditional souvenirs, regional sweets, or native organic spices.',
  'Check-out & Packing', 'Return to your hotel, pack your bags, clear any local incidentals, and check out from your rooms.',
  'Outbound Transfer', 'Board your private vehicle transfer to the airport or railway station for your onward return journey home.',
  'Prayer Times: Fajr 4:45 AM, Dhuhr 12:30 PM, Asr 3:45 PM, Maghrib 6:45 PM, Isha 8:15 PM', 'Breakfast & Special Dinner Buffet (100% Satvik Veg).', 'AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Pilgrim Rest House (Safe, family-friendly rooms, walking distance to sacred sites)', 'Perfect travel weather with low humidity and comfortable evening temperature 20°C.',
  'Full Islamic modest attire. Women must wear loose clothing covering limbs and head. Men wear full trousers.', 'Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 1 to 2 hours transfer'
FROM public.packages p WHERE p.slug = 'islam-medina-saudi-arabia'
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
  p.id, 1, 'Arrival & Settle in at Jerusalem', 'Jerusalem', 'Welcome to your yatra. Arrive in Jerusalem, transfer to your stay, and rest before your sightseeing tour.',
  'Arrival & Check-in', 'Arrive at the nearest transit hub. Meet our coordinator and transfer to your pre-booked stay in Jerusalem.',
  'Leisure & Rest', 'Check into your hotel room, unpack your luggage, and rest to recover from your flight or train journey.',
  'Orientation Walk', 'Meet your local guide for a small walk around the neighborhood. Receive a detailed brief on local customs.',
  'Prayer Times: Fajr 4:45 AM, Dhuhr 12:30 PM, Asr 3:45 PM, Maghrib 6:45 PM, Isha 8:15 PM', 'Welcome Drink & Buffet Dinner included (100% Satvik Veg).', 'AC Shuttle Transit for close proximity site transfers and passenger drops.',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Vedic Heritage Inn (Ashram atmosphere, close to main shrines, Western toilets, hot water)', 'Warm and sunny afternoon, ideal for outdoor sightseeing, average temp 24°C.',
  'Full Islamic modest attire. Women must wear loose clothing covering limbs and head. Men wear full trousers.', 'Comfortable travel footwear, photo ID, essential personal medication, daypack.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 1 to 2 hours transfer'
FROM public.packages p WHERE p.slug = 'islam-old-city-jerusalem-israel'
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
  p.id, 2, 'Explore Old City Jerusalem Heritage Centre', 'Jerusalem', 'Spend your day visiting Old City Jerusalem Heritage Centre, the primary attraction in Old City Jerusalem, accompanied by our expert guide.',
  'Guided Tour of Old City Jerusalem Heritage Centre', 'Early morning visit to Old City Jerusalem Heritage Centre to avoid crowds. Learn about the heritage and unique history of this landmark.',
  'Local Traditional Lunch', 'Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings.',
  'Evening walk at Old City Jerusalem Panoramic Viewpoint', 'Stroll around Old City Jerusalem Panoramic Viewpoint for scenic sunset views. Capture great family photos as the evening lights turn on.',
  'Prayer Times: Fajr 4:45 AM, Dhuhr 12:30 PM, Asr 3:45 PM, Maghrib 6:45 PM, Isha 8:15 PM', 'Complimentary Breakfast & Traditional Lunch (100% Satvik Veg).', 'AC Private Sedan with professional local driver (includes first-aid kit and bottled water).',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Premium Pilgrim Hotel (AC rooms, elevator, clean linen, hot water, elevator access)', 'Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.',
  'Full Islamic modest attire. Women must wear loose clothing covering limbs and head. Men wear full trousers.', 'Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 3 to 4 hours local tour'
FROM public.packages p WHERE p.slug = 'islam-old-city-jerusalem-israel'
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
  p.id, 3, 'Souvenir Shopping & Onward Departure', 'Jerusalem', 'Conclude your memorable stay in Jerusalem with local craft shopping, checkout, and outbound transfers.',
  'Handicrafts Shopping', 'Visit local co-operative markets to buy traditional souvenirs, regional sweets, or native organic spices.',
  'Check-out & Packing', 'Return to your hotel, pack your bags, clear any local incidentals, and check out from your rooms.',
  'Outbound Transfer', 'Board your private vehicle transfer to the airport or railway station for your onward return journey home.',
  'Prayer Times: Fajr 4:45 AM, Dhuhr 12:30 PM, Asr 3:45 PM, Maghrib 6:45 PM, Isha 8:15 PM', 'Breakfast & Special Dinner Buffet (100% Satvik Veg).', 'AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Pilgrim Rest House (Safe, family-friendly rooms, walking distance to sacred sites)', 'Perfect travel weather with low humidity and comfortable evening temperature 20°C.',
  'Full Islamic modest attire. Women must wear loose clothing covering limbs and head. Men wear full trousers.', 'Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 1 to 2 hours transfer'
FROM public.packages p WHERE p.slug = 'islam-old-city-jerusalem-israel'
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
  p.id, 1, 'Arrival & Settle in at Medina', 'Medina', 'Welcome to your yatra. Arrive in Medina, transfer to your stay, and rest before your sightseeing tour.',
  'Arrival & Check-in', 'Arrive at the nearest transit hub. Meet our coordinator and transfer to your pre-booked stay in Medina.',
  'Leisure & Rest', 'Check into your hotel room, unpack your luggage, and rest to recover from your flight or train journey.',
  'Orientation Walk', 'Meet your local guide for a small walk around the neighborhood. Receive a detailed brief on local customs.',
  'Prayer Times: Fajr 4:45 AM, Dhuhr 12:30 PM, Asr 3:45 PM, Maghrib 6:45 PM, Isha 8:15 PM', 'Welcome Drink & Buffet Dinner included (100% Satvik Veg).', 'AC Shuttle Transit for close proximity site transfers and passenger drops.',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Vedic Heritage Inn (Ashram atmosphere, close to main shrines, Western toilets, hot water)', 'Warm and sunny afternoon, ideal for outdoor sightseeing, average temp 24°C.',
  'Full Islamic modest attire. Women must wear loose clothing covering limbs and head. Men wear full trousers.', 'Comfortable travel footwear, photo ID, essential personal medication, daypack.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 1 to 2 hours transfer'
FROM public.packages p WHERE p.slug = 'islam-quba-mosque-medina-saudi-arabia'
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
  p.id, 2, 'Explore Quba Mosque, Medina Heritage Centre', 'Medina', 'Spend your day visiting Quba Mosque, Medina Heritage Centre, the primary attraction in Quba Mosque, Medina, accompanied by our expert guide.',
  'Guided Tour of Quba Mosque, Medina Heritage Centre', 'Early morning visit to Quba Mosque, Medina Heritage Centre to avoid crowds. Learn about the heritage and unique history of this landmark.',
  'Local Traditional Lunch', 'Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings.',
  'Evening walk at Quba Mosque, Medina Panoramic Viewpoint', 'Stroll around Quba Mosque, Medina Panoramic Viewpoint for scenic sunset views. Capture great family photos as the evening lights turn on.',
  'Prayer Times: Fajr 4:45 AM, Dhuhr 12:30 PM, Asr 3:45 PM, Maghrib 6:45 PM, Isha 8:15 PM', 'Complimentary Breakfast & Traditional Lunch (100% Satvik Veg).', 'AC Private Sedan with professional local driver (includes first-aid kit and bottled water).',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Premium Pilgrim Hotel (AC rooms, elevator, clean linen, hot water, elevator access)', 'Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.',
  'Full Islamic modest attire. Women must wear loose clothing covering limbs and head. Men wear full trousers.', 'Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 3 to 4 hours local tour'
FROM public.packages p WHERE p.slug = 'islam-quba-mosque-medina-saudi-arabia'
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
  p.id, 3, 'Souvenir Shopping & Onward Departure', 'Medina', 'Conclude your memorable stay in Medina with local craft shopping, checkout, and outbound transfers.',
  'Handicrafts Shopping', 'Visit local co-operative markets to buy traditional souvenirs, regional sweets, or native organic spices.',
  'Check-out & Packing', 'Return to your hotel, pack your bags, clear any local incidentals, and check out from your rooms.',
  'Outbound Transfer', 'Board your private vehicle transfer to the airport or railway station for your onward return journey home.',
  'Prayer Times: Fajr 4:45 AM, Dhuhr 12:30 PM, Asr 3:45 PM, Maghrib 6:45 PM, Isha 8:15 PM', 'Breakfast & Special Dinner Buffet (100% Satvik Veg).', 'AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Pilgrim Rest House (Safe, family-friendly rooms, walking distance to sacred sites)', 'Perfect travel weather with low humidity and comfortable evening temperature 20°C.',
  'Full Islamic modest attire. Women must wear loose clothing covering limbs and head. Men wear full trousers.', 'Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 1 to 2 hours transfer'
FROM public.packages p WHERE p.slug = 'islam-quba-mosque-medina-saudi-arabia'
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
  p.id, 1, 'Arrival & Settle in at Diourbel', 'Diourbel', 'Welcome to your yatra. Arrive in Diourbel, transfer to your stay, and rest before your sightseeing tour.',
  'Arrival & Check-in', 'Arrive at the nearest transit hub. Meet our coordinator and transfer to your pre-booked stay in Diourbel.',
  'Leisure & Rest', 'Check into your hotel room, unpack your luggage, and rest to recover from your flight or train journey.',
  'Orientation Walk', 'Meet your local guide for a small walk around the neighborhood. Receive a detailed brief on local customs.',
  'Prayer Times: Fajr 4:45 AM, Dhuhr 12:30 PM, Asr 3:45 PM, Maghrib 6:45 PM, Isha 8:15 PM', 'Welcome Drink & Buffet Dinner included (100% Satvik Veg).', 'AC Shuttle Transit for close proximity site transfers and passenger drops.',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Vedic Heritage Inn (Ashram atmosphere, close to main shrines, Western toilets, hot water)', 'Warm and sunny afternoon, ideal for outdoor sightseeing, average temp 24°C.',
  'Full Islamic modest attire. Women must wear loose clothing covering limbs and head. Men wear full trousers.', 'Comfortable travel footwear, photo ID, essential personal medication, daypack.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 1 to 2 hours transfer'
FROM public.packages p WHERE p.slug = 'islam-touba-senegal'
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
  p.id, 2, 'Explore Touba Heritage Centre', 'Diourbel', 'Spend your day visiting Touba Heritage Centre, the primary attraction in Touba, accompanied by our expert guide.',
  'Guided Tour of Touba Heritage Centre', 'Early morning visit to Touba Heritage Centre to avoid crowds. Learn about the heritage and unique history of this landmark.',
  'Local Traditional Lunch', 'Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings.',
  'Evening walk at Touba Panoramic Viewpoint', 'Stroll around Touba Panoramic Viewpoint for scenic sunset views. Capture great family photos as the evening lights turn on.',
  'Prayer Times: Fajr 4:45 AM, Dhuhr 12:30 PM, Asr 3:45 PM, Maghrib 6:45 PM, Isha 8:15 PM', 'Complimentary Breakfast & Traditional Lunch (100% Satvik Veg).', 'AC Private Sedan with professional local driver (includes first-aid kit and bottled water).',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Premium Pilgrim Hotel (AC rooms, elevator, clean linen, hot water, elevator access)', 'Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.',
  'Full Islamic modest attire. Women must wear loose clothing covering limbs and head. Men wear full trousers.', 'Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 3 to 4 hours local tour'
FROM public.packages p WHERE p.slug = 'islam-touba-senegal'
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
  p.id, 3, 'Souvenir Shopping & Onward Departure', 'Diourbel', 'Conclude your memorable stay in Diourbel with local craft shopping, checkout, and outbound transfers.',
  'Handicrafts Shopping', 'Visit local co-operative markets to buy traditional souvenirs, regional sweets, or native organic spices.',
  'Check-out & Packing', 'Return to your hotel, pack your bags, clear any local incidentals, and check out from your rooms.',
  'Outbound Transfer', 'Board your private vehicle transfer to the airport or railway station for your onward return journey home.',
  'Prayer Times: Fajr 4:45 AM, Dhuhr 12:30 PM, Asr 3:45 PM, Maghrib 6:45 PM, Isha 8:15 PM', 'Breakfast & Special Dinner Buffet (100% Satvik Veg).', 'AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Pilgrim Rest House (Safe, family-friendly rooms, walking distance to sacred sites)', 'Perfect travel weather with low humidity and comfortable evening temperature 20°C.',
  'Full Islamic modest attire. Women must wear loose clothing covering limbs and head. Men wear full trousers.', 'Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 1 to 2 hours transfer'
FROM public.packages p WHERE p.slug = 'islam-touba-senegal'
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
  p.id, 1, 'Arrival & Settle in at Damascus', 'Damascus', 'Welcome to your yatra. Arrive in Damascus, transfer to your stay, and rest before your sightseeing tour.',
  'Arrival & Check-in', 'Arrive at the nearest transit hub. Meet our coordinator and transfer to your pre-booked stay in Damascus.',
  'Leisure & Rest', 'Check into your hotel room, unpack your luggage, and rest to recover from your flight or train journey.',
  'Orientation Walk', 'Meet your local guide for a small walk around the neighborhood. Receive a detailed brief on local customs.',
  'Prayer Times: Fajr 4:45 AM, Dhuhr 12:30 PM, Asr 3:45 PM, Maghrib 6:45 PM, Isha 8:15 PM', 'Welcome Drink & Buffet Dinner included (100% Satvik Veg).', 'AC Shuttle Transit for close proximity site transfers and passenger drops.',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Vedic Heritage Inn (Ashram atmosphere, close to main shrines, Western toilets, hot water)', 'Warm and sunny afternoon, ideal for outdoor sightseeing, average temp 24°C.',
  'Full Islamic modest attire. Women must wear loose clothing covering limbs and head. Men wear full trousers.', 'Comfortable travel footwear, photo ID, essential personal medication, daypack.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 1 to 2 hours transfer'
FROM public.packages p WHERE p.slug = 'islam-umayyad-mosque-damascus-syria'
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
  p.id, 2, 'Explore Umayyad Mosque, Damascus Heritage Centre', 'Damascus', 'Spend your day visiting Umayyad Mosque, Damascus Heritage Centre, the primary attraction in Umayyad Mosque, Damascus, accompanied by our expert guide.',
  'Guided Tour of Umayyad Mosque, Damascus Heritage Centre', 'Early morning visit to Umayyad Mosque, Damascus Heritage Centre to avoid crowds. Learn about the heritage and unique history of this landmark.',
  'Local Traditional Lunch', 'Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings.',
  'Evening walk at Umayyad Mosque, Damascus Panoramic Viewpoint', 'Stroll around Umayyad Mosque, Damascus Panoramic Viewpoint for scenic sunset views. Capture great family photos as the evening lights turn on.',
  'Prayer Times: Fajr 4:45 AM, Dhuhr 12:30 PM, Asr 3:45 PM, Maghrib 6:45 PM, Isha 8:15 PM', 'Complimentary Breakfast & Traditional Lunch (100% Satvik Veg).', 'AC Private Sedan with professional local driver (includes first-aid kit and bottled water).',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Premium Pilgrim Hotel (AC rooms, elevator, clean linen, hot water, elevator access)', 'Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.',
  'Full Islamic modest attire. Women must wear loose clothing covering limbs and head. Men wear full trousers.', 'Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 3 to 4 hours local tour'
FROM public.packages p WHERE p.slug = 'islam-umayyad-mosque-damascus-syria'
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
  p.id, 3, 'Souvenir Shopping & Onward Departure', 'Damascus', 'Conclude your memorable stay in Damascus with local craft shopping, checkout, and outbound transfers.',
  'Handicrafts Shopping', 'Visit local co-operative markets to buy traditional souvenirs, regional sweets, or native organic spices.',
  'Check-out & Packing', 'Return to your hotel, pack your bags, clear any local incidentals, and check out from your rooms.',
  'Outbound Transfer', 'Board your private vehicle transfer to the airport or railway station for your onward return journey home.',
  'Prayer Times: Fajr 4:45 AM, Dhuhr 12:30 PM, Asr 3:45 PM, Maghrib 6:45 PM, Isha 8:15 PM', 'Breakfast & Special Dinner Buffet (100% Satvik Veg).', 'AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Pilgrim Rest House (Safe, family-friendly rooms, walking distance to sacred sites)', 'Perfect travel weather with low humidity and comfortable evening temperature 20°C.',
  'Full Islamic modest attire. Women must wear loose clothing covering limbs and head. Men wear full trousers.', 'Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 1 to 2 hours transfer'
FROM public.packages p WHERE p.slug = 'islam-umayyad-mosque-damascus-syria'
ON CONFLICT (package_id, day_number) DO UPDATE SET
  title = EXCLUDED.title,
  overview = EXCLUDED.overview,
  morning_description = EXCLUDED.morning_description;
DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'family-alleppey-backwaters');
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Hotel Stay', 0 FROM public.packages WHERE slug = 'family-alleppey-backwaters';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Meals Included', 1 FROM public.packages WHERE slug = 'family-alleppey-backwaters';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'AC Transit', 2 FROM public.packages WHERE slug = 'family-alleppey-backwaters';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Local Experience', 3 FROM public.packages WHERE slug = 'family-alleppey-backwaters';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Relaxing stay and leisure exploration in Alleppey Backwaters', 0 FROM public.packages WHERE slug = 'family-alleppey-backwaters';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Scenic beauty and local dining experiences', 1 FROM public.packages WHERE slug = 'family-alleppey-backwaters';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Private luxury transfers for ultimate comfort', 2 FROM public.packages WHERE slug = 'family-alleppey-backwaters';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry sun protection (glasses/hat) for outdoor excursions.', 0 FROM public.packages WHERE slug = 'family-alleppey-backwaters';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Keep local currency handy for local markets.', 1 FROM public.packages WHERE slug = 'family-alleppey-backwaters';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Follow guidelines at heritage locations.', 2 FROM public.packages WHERE slug = 'family-alleppey-backwaters';
DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'family-amber-fort');
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Hotel Stay', 0 FROM public.packages WHERE slug = 'family-amber-fort';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Meals Included', 1 FROM public.packages WHERE slug = 'family-amber-fort';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'AC Transit', 2 FROM public.packages WHERE slug = 'family-amber-fort';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Expert Guide', 3 FROM public.packages WHERE slug = 'family-amber-fort';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Entry Passes', 4 FROM public.packages WHERE slug = 'family-amber-fort';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Guided heritage sightseeing of Amber Fort landmarks', 0 FROM public.packages WHERE slug = 'family-amber-fort';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Immersive cultural show and local market visits', 1 FROM public.packages WHERE slug = 'family-amber-fort';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Delight in authentic regional delicacies', 2 FROM public.packages WHERE slug = 'family-amber-fort';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry sun protection (glasses/hat) for outdoor excursions.', 0 FROM public.packages WHERE slug = 'family-amber-fort';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Keep local currency handy for local markets.', 1 FROM public.packages WHERE slug = 'family-amber-fort';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Follow guidelines at heritage locations.', 2 FROM public.packages WHERE slug = 'family-amber-fort';
DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'family-athirappilly-waterfalls');
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Hotel Stay', 0 FROM public.packages WHERE slug = 'family-athirappilly-waterfalls';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Meals Included', 1 FROM public.packages WHERE slug = 'family-athirappilly-waterfalls';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'AC Transit', 2 FROM public.packages WHERE slug = 'family-athirappilly-waterfalls';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Expert Guide', 3 FROM public.packages WHERE slug = 'family-athirappilly-waterfalls';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Medical Support', 4 FROM public.packages WHERE slug = 'family-athirappilly-waterfalls';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Local Experience', 5 FROM public.packages WHERE slug = 'family-athirappilly-waterfalls';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Explore the scenic nature trails and waterfall routes in Athirappilly Waterfalls', 0 FROM public.packages WHERE slug = 'family-athirappilly-waterfalls';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Breathtaking viewpoints and photo opportunities', 1 FROM public.packages WHERE slug = 'family-athirappilly-waterfalls';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Guided trekking and outdoor activities', 2 FROM public.packages WHERE slug = 'family-athirappilly-waterfalls';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Wear sturdy, non-slip walking shoes.', 0 FROM public.packages WHERE slug = 'family-athirappilly-waterfalls';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry a light raincoat or umbrella depending on the season.', 1 FROM public.packages WHERE slug = 'family-athirappilly-waterfalls';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Stay well-hydrated during the walk.', 2 FROM public.packages WHERE slug = 'family-athirappilly-waterfalls';
DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'family-big-ben');
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Hotel Stay', 0 FROM public.packages WHERE slug = 'family-big-ben';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Meals Included', 1 FROM public.packages WHERE slug = 'family-big-ben';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'AC Transit', 2 FROM public.packages WHERE slug = 'family-big-ben';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Guided heritage sightseeing of Big Ben landmarks', 0 FROM public.packages WHERE slug = 'family-big-ben';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Immersive cultural show and local market visits', 1 FROM public.packages WHERE slug = 'family-big-ben';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Delight in authentic regional delicacies', 2 FROM public.packages WHERE slug = 'family-big-ben';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry sun protection (glasses/hat) for outdoor excursions.', 0 FROM public.packages WHERE slug = 'family-big-ben';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Keep local currency handy for local markets.', 1 FROM public.packages WHERE slug = 'family-big-ben';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Follow guidelines at heritage locations.', 2 FROM public.packages WHERE slug = 'family-big-ben';
DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'family-burj-khalifa');
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Hotel Stay', 0 FROM public.packages WHERE slug = 'family-burj-khalifa';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Meals Included', 1 FROM public.packages WHERE slug = 'family-burj-khalifa';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'AC Transit', 2 FROM public.packages WHERE slug = 'family-burj-khalifa';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Guided heritage sightseeing of Burj Khalifa landmarks', 0 FROM public.packages WHERE slug = 'family-burj-khalifa';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Immersive cultural show and local market visits', 1 FROM public.packages WHERE slug = 'family-burj-khalifa';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Delight in authentic regional delicacies', 2 FROM public.packages WHERE slug = 'family-burj-khalifa';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry sun protection (glasses/hat) for outdoor excursions.', 0 FROM public.packages WHERE slug = 'family-burj-khalifa';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Keep local currency handy for local markets.', 1 FROM public.packages WHERE slug = 'family-burj-khalifa';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Follow guidelines at heritage locations.', 2 FROM public.packages WHERE slug = 'family-burj-khalifa';
DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'family-chitrakote-waterfalls');
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Hotel Stay', 0 FROM public.packages WHERE slug = 'family-chitrakote-waterfalls';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Meals Included', 1 FROM public.packages WHERE slug = 'family-chitrakote-waterfalls';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'AC Transit', 2 FROM public.packages WHERE slug = 'family-chitrakote-waterfalls';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Expert Guide', 3 FROM public.packages WHERE slug = 'family-chitrakote-waterfalls';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Medical Support', 4 FROM public.packages WHERE slug = 'family-chitrakote-waterfalls';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Local Experience', 5 FROM public.packages WHERE slug = 'family-chitrakote-waterfalls';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Explore the scenic nature trails and waterfall routes in Chitrakote Waterfalls', 0 FROM public.packages WHERE slug = 'family-chitrakote-waterfalls';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Breathtaking viewpoints and photo opportunities', 1 FROM public.packages WHERE slug = 'family-chitrakote-waterfalls';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Guided trekking and outdoor activities', 2 FROM public.packages WHERE slug = 'family-chitrakote-waterfalls';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Wear sturdy, non-slip walking shoes.', 0 FROM public.packages WHERE slug = 'family-chitrakote-waterfalls';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry a light raincoat or umbrella depending on the season.', 1 FROM public.packages WHERE slug = 'family-chitrakote-waterfalls';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Stay well-hydrated during the walk.', 2 FROM public.packages WHERE slug = 'family-chitrakote-waterfalls';
DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'family-city-palace-udaipur');
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Hotel Stay', 0 FROM public.packages WHERE slug = 'family-city-palace-udaipur';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Meals Included', 1 FROM public.packages WHERE slug = 'family-city-palace-udaipur';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'AC Transit', 2 FROM public.packages WHERE slug = 'family-city-palace-udaipur';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Expert Guide', 3 FROM public.packages WHERE slug = 'family-city-palace-udaipur';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Entry Passes', 4 FROM public.packages WHERE slug = 'family-city-palace-udaipur';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Guided heritage sightseeing of City Palace, Udaipur landmarks', 0 FROM public.packages WHERE slug = 'family-city-palace-udaipur';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Immersive cultural show and local market visits', 1 FROM public.packages WHERE slug = 'family-city-palace-udaipur';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Delight in authentic regional delicacies', 2 FROM public.packages WHERE slug = 'family-city-palace-udaipur';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry sun protection (glasses/hat) for outdoor excursions.', 0 FROM public.packages WHERE slug = 'family-city-palace-udaipur';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Keep local currency handy for local markets.', 1 FROM public.packages WHERE slug = 'family-city-palace-udaipur';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Follow guidelines at heritage locations.', 2 FROM public.packages WHERE slug = 'family-city-palace-udaipur';
DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'family-colosseum');
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Hotel Stay', 0 FROM public.packages WHERE slug = 'family-colosseum';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Meals Included', 1 FROM public.packages WHERE slug = 'family-colosseum';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'AC Transit', 2 FROM public.packages WHERE slug = 'family-colosseum';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Guided heritage sightseeing of Colosseum landmarks', 0 FROM public.packages WHERE slug = 'family-colosseum';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Immersive cultural show and local market visits', 1 FROM public.packages WHERE slug = 'family-colosseum';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Delight in authentic regional delicacies', 2 FROM public.packages WHERE slug = 'family-colosseum';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry sun protection (glasses/hat) for outdoor excursions.', 0 FROM public.packages WHERE slug = 'family-colosseum';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Keep local currency handy for local markets.', 1 FROM public.packages WHERE slug = 'family-colosseum';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Follow guidelines at heritage locations.', 2 FROM public.packages WHERE slug = 'family-colosseum';
DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'family-dawki-river-umngot-river');
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Hotel Stay', 0 FROM public.packages WHERE slug = 'family-dawki-river-umngot-river';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Meals Included', 1 FROM public.packages WHERE slug = 'family-dawki-river-umngot-river';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'AC Transit', 2 FROM public.packages WHERE slug = 'family-dawki-river-umngot-river';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Guided heritage sightseeing of Dawki River landmarks', 0 FROM public.packages WHERE slug = 'family-dawki-river-umngot-river';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Immersive cultural show and local market visits', 1 FROM public.packages WHERE slug = 'family-dawki-river-umngot-river';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Delight in authentic regional delicacies', 2 FROM public.packages WHERE slug = 'family-dawki-river-umngot-river';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry sun protection (glasses/hat) for outdoor excursions.', 0 FROM public.packages WHERE slug = 'family-dawki-river-umngot-river';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Keep local currency handy for local markets.', 1 FROM public.packages WHERE slug = 'family-dawki-river-umngot-river';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Follow guidelines at heritage locations.', 2 FROM public.packages WHERE slug = 'family-dawki-river-umngot-river';
DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'family-disneyland-paris');
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Hotel Stay', 0 FROM public.packages WHERE slug = 'family-disneyland-paris';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Meals Included', 1 FROM public.packages WHERE slug = 'family-disneyland-paris';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'AC Transit', 2 FROM public.packages WHERE slug = 'family-disneyland-paris';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Guided heritage sightseeing of Disneyland Paris landmarks', 0 FROM public.packages WHERE slug = 'family-disneyland-paris';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Immersive cultural show and local market visits', 1 FROM public.packages WHERE slug = 'family-disneyland-paris';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Delight in authentic regional delicacies', 2 FROM public.packages WHERE slug = 'family-disneyland-paris';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry sun protection (glasses/hat) for outdoor excursions.', 0 FROM public.packages WHERE slug = 'family-disneyland-paris';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Keep local currency handy for local markets.', 1 FROM public.packages WHERE slug = 'family-disneyland-paris';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Follow guidelines at heritage locations.', 2 FROM public.packages WHERE slug = 'family-disneyland-paris';
DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'family-dubai-miracle-garden');
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Hotel Stay', 0 FROM public.packages WHERE slug = 'family-dubai-miracle-garden';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Meals Included', 1 FROM public.packages WHERE slug = 'family-dubai-miracle-garden';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'AC Transit', 2 FROM public.packages WHERE slug = 'family-dubai-miracle-garden';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Guided heritage sightseeing of Dubai Miracle Garden landmarks', 0 FROM public.packages WHERE slug = 'family-dubai-miracle-garden';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Immersive cultural show and local market visits', 1 FROM public.packages WHERE slug = 'family-dubai-miracle-garden';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Delight in authentic regional delicacies', 2 FROM public.packages WHERE slug = 'family-dubai-miracle-garden';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry sun protection (glasses/hat) for outdoor excursions.', 0 FROM public.packages WHERE slug = 'family-dubai-miracle-garden';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Keep local currency handy for local markets.', 1 FROM public.packages WHERE slug = 'family-dubai-miracle-garden';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Follow guidelines at heritage locations.', 2 FROM public.packages WHERE slug = 'family-dubai-miracle-garden';
DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'family-dudhsagar-falls');
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Hotel Stay', 0 FROM public.packages WHERE slug = 'family-dudhsagar-falls';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Meals Included', 1 FROM public.packages WHERE slug = 'family-dudhsagar-falls';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'AC Transit', 2 FROM public.packages WHERE slug = 'family-dudhsagar-falls';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Local Experience', 3 FROM public.packages WHERE slug = 'family-dudhsagar-falls';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Relaxing stay and leisure exploration in Dudhsagar Falls', 0 FROM public.packages WHERE slug = 'family-dudhsagar-falls';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Scenic beauty and local dining experiences', 1 FROM public.packages WHERE slug = 'family-dudhsagar-falls';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Private luxury transfers for ultimate comfort', 2 FROM public.packages WHERE slug = 'family-dudhsagar-falls';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry sun protection (glasses/hat) for outdoor excursions.', 0 FROM public.packages WHERE slug = 'family-dudhsagar-falls';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Keep local currency handy for local markets.', 1 FROM public.packages WHERE slug = 'family-dudhsagar-falls';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Follow guidelines at heritage locations.', 2 FROM public.packages WHERE slug = 'family-dudhsagar-falls';
DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'family-eiffel-tower');
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Hotel Stay', 0 FROM public.packages WHERE slug = 'family-eiffel-tower';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Meals Included', 1 FROM public.packages WHERE slug = 'family-eiffel-tower';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'AC Transit', 2 FROM public.packages WHERE slug = 'family-eiffel-tower';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Guided heritage sightseeing of Eiffel Tower landmarks', 0 FROM public.packages WHERE slug = 'family-eiffel-tower';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Immersive cultural show and local market visits', 1 FROM public.packages WHERE slug = 'family-eiffel-tower';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Delight in authentic regional delicacies', 2 FROM public.packages WHERE slug = 'family-eiffel-tower';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry sun protection (glasses/hat) for outdoor excursions.', 0 FROM public.packages WHERE slug = 'family-eiffel-tower';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Keep local currency handy for local markets.', 1 FROM public.packages WHERE slug = 'family-eiffel-tower';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Follow guidelines at heritage locations.', 2 FROM public.packages WHERE slug = 'family-eiffel-tower';
DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'family-gardens-by-the-bay');
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Hotel Stay', 0 FROM public.packages WHERE slug = 'family-gardens-by-the-bay';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Meals Included', 1 FROM public.packages WHERE slug = 'family-gardens-by-the-bay';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'AC Transit', 2 FROM public.packages WHERE slug = 'family-gardens-by-the-bay';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Guided heritage sightseeing of Gardens by the Bay landmarks', 0 FROM public.packages WHERE slug = 'family-gardens-by-the-bay';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Immersive cultural show and local market visits', 1 FROM public.packages WHERE slug = 'family-gardens-by-the-bay';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Delight in authentic regional delicacies', 2 FROM public.packages WHERE slug = 'family-gardens-by-the-bay';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry sun protection (glasses/hat) for outdoor excursions.', 0 FROM public.packages WHERE slug = 'family-gardens-by-the-bay';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Keep local currency handy for local markets.', 1 FROM public.packages WHERE slug = 'family-gardens-by-the-bay';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Follow guidelines at heritage locations.', 2 FROM public.packages WHERE slug = 'family-gardens-by-the-bay';
DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'family-glacier-3000');
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Hotel Stay', 0 FROM public.packages WHERE slug = 'family-glacier-3000';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Meals Included', 1 FROM public.packages WHERE slug = 'family-glacier-3000';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'AC Transit', 2 FROM public.packages WHERE slug = 'family-glacier-3000';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Guided heritage sightseeing of Glacier 3000 landmarks', 0 FROM public.packages WHERE slug = 'family-glacier-3000';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Immersive cultural show and local market visits', 1 FROM public.packages WHERE slug = 'family-glacier-3000';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Delight in authentic regional delicacies', 2 FROM public.packages WHERE slug = 'family-glacier-3000';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry sun protection (glasses/hat) for outdoor excursions.', 0 FROM public.packages WHERE slug = 'family-glacier-3000';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Keep local currency handy for local markets.', 1 FROM public.packages WHERE slug = 'family-glacier-3000';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Follow guidelines at heritage locations.', 2 FROM public.packages WHERE slug = 'family-glacier-3000';
DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'family-gol-gumbaz');
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Hotel Stay', 0 FROM public.packages WHERE slug = 'family-gol-gumbaz';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Meals Included', 1 FROM public.packages WHERE slug = 'family-gol-gumbaz';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'AC Transit', 2 FROM public.packages WHERE slug = 'family-gol-gumbaz';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Guided heritage sightseeing of Gol Gumbaz landmarks', 0 FROM public.packages WHERE slug = 'family-gol-gumbaz';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Immersive cultural show and local market visits', 1 FROM public.packages WHERE slug = 'family-gol-gumbaz';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Delight in authentic regional delicacies', 2 FROM public.packages WHERE slug = 'family-gol-gumbaz';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry sun protection (glasses/hat) for outdoor excursions.', 0 FROM public.packages WHERE slug = 'family-gol-gumbaz';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Keep local currency handy for local markets.', 1 FROM public.packages WHERE slug = 'family-gol-gumbaz';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Follow guidelines at heritage locations.', 2 FROM public.packages WHERE slug = 'family-gol-gumbaz';
DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'family-hampi-monuments');
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Hotel Stay', 0 FROM public.packages WHERE slug = 'family-hampi-monuments';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Meals Included', 1 FROM public.packages WHERE slug = 'family-hampi-monuments';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'AC Transit', 2 FROM public.packages WHERE slug = 'family-hampi-monuments';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Expert Guide', 3 FROM public.packages WHERE slug = 'family-hampi-monuments';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Entry Passes', 4 FROM public.packages WHERE slug = 'family-hampi-monuments';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Guided heritage sightseeing of Hampi Monuments landmarks', 0 FROM public.packages WHERE slug = 'family-hampi-monuments';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Immersive cultural show and local market visits', 1 FROM public.packages WHERE slug = 'family-hampi-monuments';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Delight in authentic regional delicacies', 2 FROM public.packages WHERE slug = 'family-hampi-monuments';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry sun protection (glasses/hat) for outdoor excursions.', 0 FROM public.packages WHERE slug = 'family-hampi-monuments';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Keep local currency handy for local markets.', 1 FROM public.packages WHERE slug = 'family-hampi-monuments';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Follow guidelines at heritage locations.', 2 FROM public.packages WHERE slug = 'family-hampi-monuments';
DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'family-hawa-mahal');
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Hotel Stay', 0 FROM public.packages WHERE slug = 'family-hawa-mahal';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Meals Included', 1 FROM public.packages WHERE slug = 'family-hawa-mahal';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'AC Transit', 2 FROM public.packages WHERE slug = 'family-hawa-mahal';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Guided heritage sightseeing of Hawa Mahal landmarks', 0 FROM public.packages WHERE slug = 'family-hawa-mahal';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Immersive cultural show and local market visits', 1 FROM public.packages WHERE slug = 'family-hawa-mahal';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Delight in authentic regional delicacies', 2 FROM public.packages WHERE slug = 'family-hawa-mahal';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry sun protection (glasses/hat) for outdoor excursions.', 0 FROM public.packages WHERE slug = 'family-hawa-mahal';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Keep local currency handy for local markets.', 1 FROM public.packages WHERE slug = 'family-hawa-mahal';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Follow guidelines at heritage locations.', 2 FROM public.packages WHERE slug = 'family-hawa-mahal';
DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'family-leaning-tower-of-pisa');
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Hotel Stay', 0 FROM public.packages WHERE slug = 'family-leaning-tower-of-pisa';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Meals Included', 1 FROM public.packages WHERE slug = 'family-leaning-tower-of-pisa';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'AC Transit', 2 FROM public.packages WHERE slug = 'family-leaning-tower-of-pisa';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Guided heritage sightseeing of Leaning Tower of Pisa landmarks', 0 FROM public.packages WHERE slug = 'family-leaning-tower-of-pisa';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Immersive cultural show and local market visits', 1 FROM public.packages WHERE slug = 'family-leaning-tower-of-pisa';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Delight in authentic regional delicacies', 2 FROM public.packages WHERE slug = 'family-leaning-tower-of-pisa';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry sun protection (glasses/hat) for outdoor excursions.', 0 FROM public.packages WHERE slug = 'family-leaning-tower-of-pisa';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Keep local currency handy for local markets.', 1 FROM public.packages WHERE slug = 'family-leaning-tower-of-pisa';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Follow guidelines at heritage locations.', 2 FROM public.packages WHERE slug = 'family-leaning-tower-of-pisa';
DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'family-living-root-bridges');
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Hotel Stay', 0 FROM public.packages WHERE slug = 'family-living-root-bridges';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Meals Included', 1 FROM public.packages WHERE slug = 'family-living-root-bridges';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'AC Transit', 2 FROM public.packages WHERE slug = 'family-living-root-bridges';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Guided heritage sightseeing of Living Root Bridges landmarks', 0 FROM public.packages WHERE slug = 'family-living-root-bridges';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Immersive cultural show and local market visits', 1 FROM public.packages WHERE slug = 'family-living-root-bridges';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Delight in authentic regional delicacies', 2 FROM public.packages WHERE slug = 'family-living-root-bridges';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry sun protection (glasses/hat) for outdoor excursions.', 0 FROM public.packages WHERE slug = 'family-living-root-bridges';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Keep local currency handy for local markets.', 1 FROM public.packages WHERE slug = 'family-living-root-bridges';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Follow guidelines at heritage locations.', 2 FROM public.packages WHERE slug = 'family-living-root-bridges';
DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'family-london-eye');
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Hotel Stay', 0 FROM public.packages WHERE slug = 'family-london-eye';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Meals Included', 1 FROM public.packages WHERE slug = 'family-london-eye';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'AC Transit', 2 FROM public.packages WHERE slug = 'family-london-eye';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Guided heritage sightseeing of London Eye landmarks', 0 FROM public.packages WHERE slug = 'family-london-eye';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Immersive cultural show and local market visits', 1 FROM public.packages WHERE slug = 'family-london-eye';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Delight in authentic regional delicacies', 2 FROM public.packages WHERE slug = 'family-london-eye';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry sun protection (glasses/hat) for outdoor excursions.', 0 FROM public.packages WHERE slug = 'family-london-eye';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Keep local currency handy for local markets.', 1 FROM public.packages WHERE slug = 'family-london-eye';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Follow guidelines at heritage locations.', 2 FROM public.packages WHERE slug = 'family-london-eye';
DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'family-marina-bay-sands-skypark');
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Hotel Stay', 0 FROM public.packages WHERE slug = 'family-marina-bay-sands-skypark';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Meals Included', 1 FROM public.packages WHERE slug = 'family-marina-bay-sands-skypark';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'AC Transit', 2 FROM public.packages WHERE slug = 'family-marina-bay-sands-skypark';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Guided heritage sightseeing of Marina Bay Sands SkyPark landmarks', 0 FROM public.packages WHERE slug = 'family-marina-bay-sands-skypark';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Immersive cultural show and local market visits', 1 FROM public.packages WHERE slug = 'family-marina-bay-sands-skypark';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Delight in authentic regional delicacies', 2 FROM public.packages WHERE slug = 'family-marina-bay-sands-skypark';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry sun protection (glasses/hat) for outdoor excursions.', 0 FROM public.packages WHERE slug = 'family-marina-bay-sands-skypark';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Keep local currency handy for local markets.', 1 FROM public.packages WHERE slug = 'family-marina-bay-sands-skypark';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Follow guidelines at heritage locations.', 2 FROM public.packages WHERE slug = 'family-marina-bay-sands-skypark';
DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'family-mehrangarh-fort');
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Hotel Stay', 0 FROM public.packages WHERE slug = 'family-mehrangarh-fort';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Meals Included', 1 FROM public.packages WHERE slug = 'family-mehrangarh-fort';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'AC Transit', 2 FROM public.packages WHERE slug = 'family-mehrangarh-fort';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Expert Guide', 3 FROM public.packages WHERE slug = 'family-mehrangarh-fort';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Entry Passes', 4 FROM public.packages WHERE slug = 'family-mehrangarh-fort';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Guided heritage sightseeing of Mehrangarh Fort landmarks', 0 FROM public.packages WHERE slug = 'family-mehrangarh-fort';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Immersive cultural show and local market visits', 1 FROM public.packages WHERE slug = 'family-mehrangarh-fort';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Delight in authentic regional delicacies', 2 FROM public.packages WHERE slug = 'family-mehrangarh-fort';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry sun protection (glasses/hat) for outdoor excursions.', 0 FROM public.packages WHERE slug = 'family-mehrangarh-fort';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Keep local currency handy for local markets.', 1 FROM public.packages WHERE slug = 'family-mehrangarh-fort';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Follow guidelines at heritage locations.', 2 FROM public.packages WHERE slug = 'family-mehrangarh-fort';
DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'family-mount-fuji');
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Hotel Stay', 0 FROM public.packages WHERE slug = 'family-mount-fuji';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Meals Included', 1 FROM public.packages WHERE slug = 'family-mount-fuji';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'AC Transit', 2 FROM public.packages WHERE slug = 'family-mount-fuji';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Guided heritage sightseeing of Mount Fuji landmarks', 0 FROM public.packages WHERE slug = 'family-mount-fuji';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Immersive cultural show and local market visits', 1 FROM public.packages WHERE slug = 'family-mount-fuji';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Delight in authentic regional delicacies', 2 FROM public.packages WHERE slug = 'family-mount-fuji';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry sun protection (glasses/hat) for outdoor excursions.', 0 FROM public.packages WHERE slug = 'family-mount-fuji';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Keep local currency handy for local markets.', 1 FROM public.packages WHERE slug = 'family-mount-fuji';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Follow guidelines at heritage locations.', 2 FROM public.packages WHERE slug = 'family-mount-fuji';
DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'family-mount-titlis');
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Hotel Stay', 0 FROM public.packages WHERE slug = 'family-mount-titlis';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Meals Included', 1 FROM public.packages WHERE slug = 'family-mount-titlis';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'AC Transit', 2 FROM public.packages WHERE slug = 'family-mount-titlis';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Guided heritage sightseeing of Mount Titlis landmarks', 0 FROM public.packages WHERE slug = 'family-mount-titlis';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Immersive cultural show and local market visits', 1 FROM public.packages WHERE slug = 'family-mount-titlis';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Delight in authentic regional delicacies', 2 FROM public.packages WHERE slug = 'family-mount-titlis';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry sun protection (glasses/hat) for outdoor excursions.', 0 FROM public.packages WHERE slug = 'family-mount-titlis';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Keep local currency handy for local markets.', 1 FROM public.packages WHERE slug = 'family-mount-titlis';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Follow guidelines at heritage locations.', 2 FROM public.packages WHERE slug = 'family-mount-titlis';
DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'family-munnar-tea-gardens');
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Hotel Stay', 0 FROM public.packages WHERE slug = 'family-munnar-tea-gardens';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Meals Included', 1 FROM public.packages WHERE slug = 'family-munnar-tea-gardens';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'AC Transit', 2 FROM public.packages WHERE slug = 'family-munnar-tea-gardens';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Local Experience', 3 FROM public.packages WHERE slug = 'family-munnar-tea-gardens';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Guided heritage sightseeing of Munnar Tea Gardens landmarks', 0 FROM public.packages WHERE slug = 'family-munnar-tea-gardens';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Immersive cultural show and local market visits', 1 FROM public.packages WHERE slug = 'family-munnar-tea-gardens';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Delight in authentic regional delicacies', 2 FROM public.packages WHERE slug = 'family-munnar-tea-gardens';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry sun protection (glasses/hat) for outdoor excursions.', 0 FROM public.packages WHERE slug = 'family-munnar-tea-gardens';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Keep local currency handy for local markets.', 1 FROM public.packages WHERE slug = 'family-munnar-tea-gardens';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Follow guidelines at heritage locations.', 2 FROM public.packages WHERE slug = 'family-munnar-tea-gardens';
DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'family-museum-of-the-future');
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Hotel Stay', 0 FROM public.packages WHERE slug = 'family-museum-of-the-future';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Meals Included', 1 FROM public.packages WHERE slug = 'family-museum-of-the-future';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'AC Transit', 2 FROM public.packages WHERE slug = 'family-museum-of-the-future';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Guided heritage sightseeing of Museum of the Future landmarks', 0 FROM public.packages WHERE slug = 'family-museum-of-the-future';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Immersive cultural show and local market visits', 1 FROM public.packages WHERE slug = 'family-museum-of-the-future';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Delight in authentic regional delicacies', 2 FROM public.packages WHERE slug = 'family-museum-of-the-future';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry sun protection (glasses/hat) for outdoor excursions.', 0 FROM public.packages WHERE slug = 'family-museum-of-the-future';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Keep local currency handy for local markets.', 1 FROM public.packages WHERE slug = 'family-museum-of-the-future';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Follow guidelines at heritage locations.', 2 FROM public.packages WHERE slug = 'family-museum-of-the-future';
DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'family-mysore-palace');
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Hotel Stay', 0 FROM public.packages WHERE slug = 'family-mysore-palace';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Meals Included', 1 FROM public.packages WHERE slug = 'family-mysore-palace';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'AC Transit', 2 FROM public.packages WHERE slug = 'family-mysore-palace';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Expert Guide', 3 FROM public.packages WHERE slug = 'family-mysore-palace';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Entry Passes', 4 FROM public.packages WHERE slug = 'family-mysore-palace';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Guided heritage sightseeing of Mysore Palace landmarks', 0 FROM public.packages WHERE slug = 'family-mysore-palace';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Immersive cultural show and local market visits', 1 FROM public.packages WHERE slug = 'family-mysore-palace';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Delight in authentic regional delicacies', 2 FROM public.packages WHERE slug = 'family-mysore-palace';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry sun protection (glasses/hat) for outdoor excursions.', 0 FROM public.packages WHERE slug = 'family-mysore-palace';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Keep local currency handy for local markets.', 1 FROM public.packages WHERE slug = 'family-mysore-palace';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Follow guidelines at heritage locations.', 2 FROM public.packages WHERE slug = 'family-mysore-palace';
DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'family-niagara-falls');
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Hotel Stay', 0 FROM public.packages WHERE slug = 'family-niagara-falls';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Meals Included', 1 FROM public.packages WHERE slug = 'family-niagara-falls';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'AC Transit', 2 FROM public.packages WHERE slug = 'family-niagara-falls';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Expert Guide', 3 FROM public.packages WHERE slug = 'family-niagara-falls';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Medical Support', 4 FROM public.packages WHERE slug = 'family-niagara-falls';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Local Experience', 5 FROM public.packages WHERE slug = 'family-niagara-falls';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Explore the scenic nature trails and waterfall routes in Niagara Falls', 0 FROM public.packages WHERE slug = 'family-niagara-falls';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Breathtaking viewpoints and photo opportunities', 1 FROM public.packages WHERE slug = 'family-niagara-falls';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Guided trekking and outdoor activities', 2 FROM public.packages WHERE slug = 'family-niagara-falls';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Wear sturdy, non-slip walking shoes.', 0 FROM public.packages WHERE slug = 'family-niagara-falls';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry a light raincoat or umbrella depending on the season.', 1 FROM public.packages WHERE slug = 'family-niagara-falls';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Stay well-hydrated during the walk.', 2 FROM public.packages WHERE slug = 'family-niagara-falls';
DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'family-nubra-valley');
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Hotel Stay', 0 FROM public.packages WHERE slug = 'family-nubra-valley';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Meals Included', 1 FROM public.packages WHERE slug = 'family-nubra-valley';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'AC Transit', 2 FROM public.packages WHERE slug = 'family-nubra-valley';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Expert Guide', 3 FROM public.packages WHERE slug = 'family-nubra-valley';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Medical Support', 4 FROM public.packages WHERE slug = 'family-nubra-valley';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Explore the scenic nature trails and waterfall routes in Nubra Valley', 0 FROM public.packages WHERE slug = 'family-nubra-valley';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Breathtaking viewpoints and photo opportunities', 1 FROM public.packages WHERE slug = 'family-nubra-valley';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Guided trekking and outdoor activities', 2 FROM public.packages WHERE slug = 'family-nubra-valley';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Wear sturdy, non-slip walking shoes.', 0 FROM public.packages WHERE slug = 'family-nubra-valley';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry a light raincoat or umbrella depending on the season.', 1 FROM public.packages WHERE slug = 'family-nubra-valley';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Stay well-hydrated during the walk.', 2 FROM public.packages WHERE slug = 'family-nubra-valley';
DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'family-palm-jumeirah');
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Hotel Stay', 0 FROM public.packages WHERE slug = 'family-palm-jumeirah';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Meals Included', 1 FROM public.packages WHERE slug = 'family-palm-jumeirah';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'AC Transit', 2 FROM public.packages WHERE slug = 'family-palm-jumeirah';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Guided heritage sightseeing of Palm Jumeirah landmarks', 0 FROM public.packages WHERE slug = 'family-palm-jumeirah';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Immersive cultural show and local market visits', 1 FROM public.packages WHERE slug = 'family-palm-jumeirah';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Delight in authentic regional delicacies', 2 FROM public.packages WHERE slug = 'family-palm-jumeirah';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry sun protection (glasses/hat) for outdoor excursions.', 0 FROM public.packages WHERE slug = 'family-palm-jumeirah';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Keep local currency handy for local markets.', 1 FROM public.packages WHERE slug = 'family-palm-jumeirah';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Follow guidelines at heritage locations.', 2 FROM public.packages WHERE slug = 'family-palm-jumeirah';
DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'family-pangong-lake');
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Hotel Stay', 0 FROM public.packages WHERE slug = 'family-pangong-lake';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Meals Included', 1 FROM public.packages WHERE slug = 'family-pangong-lake';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'AC Transit', 2 FROM public.packages WHERE slug = 'family-pangong-lake';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Expert Guide', 3 FROM public.packages WHERE slug = 'family-pangong-lake';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Medical Support', 4 FROM public.packages WHERE slug = 'family-pangong-lake';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Explore the scenic nature trails and waterfall routes in Pangong Lake', 0 FROM public.packages WHERE slug = 'family-pangong-lake';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Breathtaking viewpoints and photo opportunities', 1 FROM public.packages WHERE slug = 'family-pangong-lake';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Guided trekking and outdoor activities', 2 FROM public.packages WHERE slug = 'family-pangong-lake';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Wear sturdy, non-slip walking shoes.', 0 FROM public.packages WHERE slug = 'family-pangong-lake';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry a light raincoat or umbrella depending on the season.', 1 FROM public.packages WHERE slug = 'family-pangong-lake';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Stay well-hydrated during the walk.', 2 FROM public.packages WHERE slug = 'family-pangong-lake';
DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'family-radhanagar-beach');
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Hotel Stay', 0 FROM public.packages WHERE slug = 'family-radhanagar-beach';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Meals Included', 1 FROM public.packages WHERE slug = 'family-radhanagar-beach';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'AC Transit', 2 FROM public.packages WHERE slug = 'family-radhanagar-beach';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Local Experience', 3 FROM public.packages WHERE slug = 'family-radhanagar-beach';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Relaxing stay and leisure exploration in Radhanagar Beach', 0 FROM public.packages WHERE slug = 'family-radhanagar-beach';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Scenic beauty and local dining experiences', 1 FROM public.packages WHERE slug = 'family-radhanagar-beach';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Private luxury transfers for ultimate comfort', 2 FROM public.packages WHERE slug = 'family-radhanagar-beach';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry sun protection (glasses/hat) for outdoor excursions.', 0 FROM public.packages WHERE slug = 'family-radhanagar-beach';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Keep local currency handy for local markets.', 1 FROM public.packages WHERE slug = 'family-radhanagar-beach';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Follow guidelines at heritage locations.', 2 FROM public.packages WHERE slug = 'family-radhanagar-beach';
DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'family-rohtang-pass');
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Hotel Stay', 0 FROM public.packages WHERE slug = 'family-rohtang-pass';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Meals Included', 1 FROM public.packages WHERE slug = 'family-rohtang-pass';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'AC Transit', 2 FROM public.packages WHERE slug = 'family-rohtang-pass';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Guided heritage sightseeing of Rohtang Pass landmarks', 0 FROM public.packages WHERE slug = 'family-rohtang-pass';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Immersive cultural show and local market visits', 1 FROM public.packages WHERE slug = 'family-rohtang-pass';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Delight in authentic regional delicacies', 2 FROM public.packages WHERE slug = 'family-rohtang-pass';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry sun protection (glasses/hat) for outdoor excursions.', 0 FROM public.packages WHERE slug = 'family-rohtang-pass';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Keep local currency handy for local markets.', 1 FROM public.packages WHERE slug = 'family-rohtang-pass';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Follow guidelines at heritage locations.', 2 FROM public.packages WHERE slug = 'family-rohtang-pass';
DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'family-sentosa-island');
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Hotel Stay', 0 FROM public.packages WHERE slug = 'family-sentosa-island';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Meals Included', 1 FROM public.packages WHERE slug = 'family-sentosa-island';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'AC Transit', 2 FROM public.packages WHERE slug = 'family-sentosa-island';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Guided heritage sightseeing of Sentosa Island landmarks', 0 FROM public.packages WHERE slug = 'family-sentosa-island';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Immersive cultural show and local market visits', 1 FROM public.packages WHERE slug = 'family-sentosa-island';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Delight in authentic regional delicacies', 2 FROM public.packages WHERE slug = 'family-sentosa-island';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry sun protection (glasses/hat) for outdoor excursions.', 0 FROM public.packages WHERE slug = 'family-sentosa-island';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Keep local currency handy for local markets.', 1 FROM public.packages WHERE slug = 'family-sentosa-island';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Follow guidelines at heritage locations.', 2 FROM public.packages WHERE slug = 'family-sentosa-island';
DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'family-swiss-alps-jungfraujoch');
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Hotel Stay', 0 FROM public.packages WHERE slug = 'family-swiss-alps-jungfraujoch';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Meals Included', 1 FROM public.packages WHERE slug = 'family-swiss-alps-jungfraujoch';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'AC Transit', 2 FROM public.packages WHERE slug = 'family-swiss-alps-jungfraujoch';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Guided heritage sightseeing of Swiss Alps landmarks', 0 FROM public.packages WHERE slug = 'family-swiss-alps-jungfraujoch';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Immersive cultural show and local market visits', 1 FROM public.packages WHERE slug = 'family-swiss-alps-jungfraujoch';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Delight in authentic regional delicacies', 2 FROM public.packages WHERE slug = 'family-swiss-alps-jungfraujoch';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry sun protection (glasses/hat) for outdoor excursions.', 0 FROM public.packages WHERE slug = 'family-swiss-alps-jungfraujoch';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Keep local currency handy for local markets.', 1 FROM public.packages WHERE slug = 'family-swiss-alps-jungfraujoch';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Follow guidelines at heritage locations.', 2 FROM public.packages WHERE slug = 'family-swiss-alps-jungfraujoch';
DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'family-taj-mahal');
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Hotel Stay', 0 FROM public.packages WHERE slug = 'family-taj-mahal';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Meals Included', 1 FROM public.packages WHERE slug = 'family-taj-mahal';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'AC Transit', 2 FROM public.packages WHERE slug = 'family-taj-mahal';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Guided heritage sightseeing of Taj Mahal landmarks', 0 FROM public.packages WHERE slug = 'family-taj-mahal';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Immersive cultural show and local market visits', 1 FROM public.packages WHERE slug = 'family-taj-mahal';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Delight in authentic regional delicacies', 2 FROM public.packages WHERE slug = 'family-taj-mahal';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry sun protection (glasses/hat) for outdoor excursions.', 0 FROM public.packages WHERE slug = 'family-taj-mahal';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Keep local currency handy for local markets.', 1 FROM public.packages WHERE slug = 'family-taj-mahal';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Follow guidelines at heritage locations.', 2 FROM public.packages WHERE slug = 'family-taj-mahal';
DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'family-tokyo-disneyland');
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Hotel Stay', 0 FROM public.packages WHERE slug = 'family-tokyo-disneyland';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Meals Included', 1 FROM public.packages WHERE slug = 'family-tokyo-disneyland';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'AC Transit', 2 FROM public.packages WHERE slug = 'family-tokyo-disneyland';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Guided heritage sightseeing of Tokyo Disneyland landmarks', 0 FROM public.packages WHERE slug = 'family-tokyo-disneyland';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Immersive cultural show and local market visits', 1 FROM public.packages WHERE slug = 'family-tokyo-disneyland';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Delight in authentic regional delicacies', 2 FROM public.packages WHERE slug = 'family-tokyo-disneyland';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry sun protection (glasses/hat) for outdoor excursions.', 0 FROM public.packages WHERE slug = 'family-tokyo-disneyland';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Keep local currency handy for local markets.', 1 FROM public.packages WHERE slug = 'family-tokyo-disneyland';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Follow guidelines at heritage locations.', 2 FROM public.packages WHERE slug = 'family-tokyo-disneyland';
DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'family-universal-studios-japan');
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Hotel Stay', 0 FROM public.packages WHERE slug = 'family-universal-studios-japan';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Meals Included', 1 FROM public.packages WHERE slug = 'family-universal-studios-japan';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'AC Transit', 2 FROM public.packages WHERE slug = 'family-universal-studios-japan';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Guided heritage sightseeing of Universal Studios Japan landmarks', 0 FROM public.packages WHERE slug = 'family-universal-studios-japan';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Immersive cultural show and local market visits', 1 FROM public.packages WHERE slug = 'family-universal-studios-japan';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Delight in authentic regional delicacies', 2 FROM public.packages WHERE slug = 'family-universal-studios-japan';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry sun protection (glasses/hat) for outdoor excursions.', 0 FROM public.packages WHERE slug = 'family-universal-studios-japan';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Keep local currency handy for local markets.', 1 FROM public.packages WHERE slug = 'family-universal-studios-japan';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Follow guidelines at heritage locations.', 2 FROM public.packages WHERE slug = 'family-universal-studios-japan';
DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'family-venice-grand-canal');
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Hotel Stay', 0 FROM public.packages WHERE slug = 'family-venice-grand-canal';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Meals Included', 1 FROM public.packages WHERE slug = 'family-venice-grand-canal';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'AC Transit', 2 FROM public.packages WHERE slug = 'family-venice-grand-canal';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Guided heritage sightseeing of Venice Grand Canal landmarks', 0 FROM public.packages WHERE slug = 'family-venice-grand-canal';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Immersive cultural show and local market visits', 1 FROM public.packages WHERE slug = 'family-venice-grand-canal';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Delight in authentic regional delicacies', 2 FROM public.packages WHERE slug = 'family-venice-grand-canal';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry sun protection (glasses/hat) for outdoor excursions.', 0 FROM public.packages WHERE slug = 'family-venice-grand-canal';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Keep local currency handy for local markets.', 1 FROM public.packages WHERE slug = 'family-venice-grand-canal';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Follow guidelines at heritage locations.', 2 FROM public.packages WHERE slug = 'family-venice-grand-canal';
DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'buddhism-adam-s-peak-sri-pada-sri-lanka');
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Hotel Stay', 0 FROM public.packages WHERE slug = 'buddhism-adam-s-peak-sri-pada-sri-lanka';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Meals Included', 1 FROM public.packages WHERE slug = 'buddhism-adam-s-peak-sri-pada-sri-lanka';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'AC Transit', 2 FROM public.packages WHERE slug = 'buddhism-adam-s-peak-sri-pada-sri-lanka';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Expert Guide', 3 FROM public.packages WHERE slug = 'buddhism-adam-s-peak-sri-pada-sri-lanka';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Entry Passes', 4 FROM public.packages WHERE slug = 'buddhism-adam-s-peak-sri-pada-sri-lanka';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Spiritual darshan and guided temple tour in Adam’s Peak (Sri Pada)', 0 FROM public.packages WHERE slug = 'buddhism-adam-s-peak-sri-pada-sri-lanka';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Experience peaceful aarti assemblies and sacred rituals', 1 FROM public.packages WHERE slug = 'buddhism-adam-s-peak-sri-pada-sri-lanka';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Comfortable transfers to all holy sites', 2 FROM public.packages WHERE slug = 'buddhism-adam-s-peak-sri-pada-sri-lanka';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry valid government ID cards for verification.', 0 FROM public.packages WHERE slug = 'buddhism-adam-s-peak-sri-pada-sri-lanka';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Traditional decency wear is recommended inside temple corridors.', 1 FROM public.packages WHERE slug = 'buddhism-adam-s-peak-sri-pada-sri-lanka';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Avoid carrying electronics inside the inner sanctum.', 2 FROM public.packages WHERE slug = 'buddhism-adam-s-peak-sri-pada-sri-lanka';
DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'buddhism-bodh-gaya-india');
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Hotel Stay', 0 FROM public.packages WHERE slug = 'buddhism-bodh-gaya-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Meals Included', 1 FROM public.packages WHERE slug = 'buddhism-bodh-gaya-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'AC Transit', 2 FROM public.packages WHERE slug = 'buddhism-bodh-gaya-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Expert Guide', 3 FROM public.packages WHERE slug = 'buddhism-bodh-gaya-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Entry Passes', 4 FROM public.packages WHERE slug = 'buddhism-bodh-gaya-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Spiritual darshan and guided temple tour in Bodh Gaya', 0 FROM public.packages WHERE slug = 'buddhism-bodh-gaya-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Experience peaceful aarti assemblies and sacred rituals', 1 FROM public.packages WHERE slug = 'buddhism-bodh-gaya-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Comfortable transfers to all holy sites', 2 FROM public.packages WHERE slug = 'buddhism-bodh-gaya-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry valid government ID cards for verification.', 0 FROM public.packages WHERE slug = 'buddhism-bodh-gaya-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Traditional decency wear is recommended inside temple corridors.', 1 FROM public.packages WHERE slug = 'buddhism-bodh-gaya-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Avoid carrying electronics inside the inner sanctum.', 2 FROM public.packages WHERE slug = 'buddhism-bodh-gaya-india';
DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'buddhism-borobudur-temple-indonesia');
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Hotel Stay', 0 FROM public.packages WHERE slug = 'buddhism-borobudur-temple-indonesia';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Meals Included', 1 FROM public.packages WHERE slug = 'buddhism-borobudur-temple-indonesia';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'AC Transit', 2 FROM public.packages WHERE slug = 'buddhism-borobudur-temple-indonesia';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Expert Guide', 3 FROM public.packages WHERE slug = 'buddhism-borobudur-temple-indonesia';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Entry Passes', 4 FROM public.packages WHERE slug = 'buddhism-borobudur-temple-indonesia';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Spiritual darshan and guided temple tour in Borobudur Temple', 0 FROM public.packages WHERE slug = 'buddhism-borobudur-temple-indonesia';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Experience peaceful aarti assemblies and sacred rituals', 1 FROM public.packages WHERE slug = 'buddhism-borobudur-temple-indonesia';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Comfortable transfers to all holy sites', 2 FROM public.packages WHERE slug = 'buddhism-borobudur-temple-indonesia';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry valid government ID cards for verification.', 0 FROM public.packages WHERE slug = 'buddhism-borobudur-temple-indonesia';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Traditional decency wear is recommended inside temple corridors.', 1 FROM public.packages WHERE slug = 'buddhism-borobudur-temple-indonesia';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Avoid carrying electronics inside the inner sanctum.', 2 FROM public.packages WHERE slug = 'buddhism-borobudur-temple-indonesia';
DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'buddhism-dambulla-cave-temple-sri-lanka');
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Hotel Stay', 0 FROM public.packages WHERE slug = 'buddhism-dambulla-cave-temple-sri-lanka';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Meals Included', 1 FROM public.packages WHERE slug = 'buddhism-dambulla-cave-temple-sri-lanka';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'AC Transit', 2 FROM public.packages WHERE slug = 'buddhism-dambulla-cave-temple-sri-lanka';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Expert Guide', 3 FROM public.packages WHERE slug = 'buddhism-dambulla-cave-temple-sri-lanka';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Entry Passes', 4 FROM public.packages WHERE slug = 'buddhism-dambulla-cave-temple-sri-lanka';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Spiritual darshan and guided temple tour in Dambulla Cave Temple', 0 FROM public.packages WHERE slug = 'buddhism-dambulla-cave-temple-sri-lanka';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Experience peaceful aarti assemblies and sacred rituals', 1 FROM public.packages WHERE slug = 'buddhism-dambulla-cave-temple-sri-lanka';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Comfortable transfers to all holy sites', 2 FROM public.packages WHERE slug = 'buddhism-dambulla-cave-temple-sri-lanka';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry valid government ID cards for verification.', 0 FROM public.packages WHERE slug = 'buddhism-dambulla-cave-temple-sri-lanka';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Traditional decency wear is recommended inside temple corridors.', 1 FROM public.packages WHERE slug = 'buddhism-dambulla-cave-temple-sri-lanka';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Avoid carrying electronics inside the inner sanctum.', 2 FROM public.packages WHERE slug = 'buddhism-dambulla-cave-temple-sri-lanka';
DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'buddhism-jokhang-temple-lhasa-tibet');
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Hotel Stay', 0 FROM public.packages WHERE slug = 'buddhism-jokhang-temple-lhasa-tibet';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Meals Included', 1 FROM public.packages WHERE slug = 'buddhism-jokhang-temple-lhasa-tibet';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'AC Transit', 2 FROM public.packages WHERE slug = 'buddhism-jokhang-temple-lhasa-tibet';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Expert Guide', 3 FROM public.packages WHERE slug = 'buddhism-jokhang-temple-lhasa-tibet';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Entry Passes', 4 FROM public.packages WHERE slug = 'buddhism-jokhang-temple-lhasa-tibet';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Spiritual darshan and guided temple tour in Jokhang Temple, Lhasa', 0 FROM public.packages WHERE slug = 'buddhism-jokhang-temple-lhasa-tibet';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Experience peaceful aarti assemblies and sacred rituals', 1 FROM public.packages WHERE slug = 'buddhism-jokhang-temple-lhasa-tibet';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Comfortable transfers to all holy sites', 2 FROM public.packages WHERE slug = 'buddhism-jokhang-temple-lhasa-tibet';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry valid government ID cards for verification.', 0 FROM public.packages WHERE slug = 'buddhism-jokhang-temple-lhasa-tibet';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Traditional decency wear is recommended inside temple corridors.', 1 FROM public.packages WHERE slug = 'buddhism-jokhang-temple-lhasa-tibet';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Avoid carrying electronics inside the inner sanctum.', 2 FROM public.packages WHERE slug = 'buddhism-jokhang-temple-lhasa-tibet';
DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'buddhism-kumano-kodo-japan');
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Hotel Stay', 0 FROM public.packages WHERE slug = 'buddhism-kumano-kodo-japan';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Meals Included', 1 FROM public.packages WHERE slug = 'buddhism-kumano-kodo-japan';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'AC Transit', 2 FROM public.packages WHERE slug = 'buddhism-kumano-kodo-japan';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Expert Guide', 3 FROM public.packages WHERE slug = 'buddhism-kumano-kodo-japan';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Entry Passes', 4 FROM public.packages WHERE slug = 'buddhism-kumano-kodo-japan';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Spiritual darshan and guided temple tour in Kumano Kodo', 0 FROM public.packages WHERE slug = 'buddhism-kumano-kodo-japan';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Experience peaceful aarti assemblies and sacred rituals', 1 FROM public.packages WHERE slug = 'buddhism-kumano-kodo-japan';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Comfortable transfers to all holy sites', 2 FROM public.packages WHERE slug = 'buddhism-kumano-kodo-japan';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry valid government ID cards for verification.', 0 FROM public.packages WHERE slug = 'buddhism-kumano-kodo-japan';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Traditional decency wear is recommended inside temple corridors.', 1 FROM public.packages WHERE slug = 'buddhism-kumano-kodo-japan';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Avoid carrying electronics inside the inner sanctum.', 2 FROM public.packages WHERE slug = 'buddhism-kumano-kodo-japan';
DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'buddhism-kushinagar-india');
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Hotel Stay', 0 FROM public.packages WHERE slug = 'buddhism-kushinagar-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Meals Included', 1 FROM public.packages WHERE slug = 'buddhism-kushinagar-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'AC Transit', 2 FROM public.packages WHERE slug = 'buddhism-kushinagar-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Expert Guide', 3 FROM public.packages WHERE slug = 'buddhism-kushinagar-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Entry Passes', 4 FROM public.packages WHERE slug = 'buddhism-kushinagar-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Spiritual darshan and guided temple tour in Kushinagar', 0 FROM public.packages WHERE slug = 'buddhism-kushinagar-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Experience peaceful aarti assemblies and sacred rituals', 1 FROM public.packages WHERE slug = 'buddhism-kushinagar-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Comfortable transfers to all holy sites', 2 FROM public.packages WHERE slug = 'buddhism-kushinagar-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry valid government ID cards for verification.', 0 FROM public.packages WHERE slug = 'buddhism-kushinagar-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Traditional decency wear is recommended inside temple corridors.', 1 FROM public.packages WHERE slug = 'buddhism-kushinagar-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Avoid carrying electronics inside the inner sanctum.', 2 FROM public.packages WHERE slug = 'buddhism-kushinagar-india';
DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'buddhism-lumbini-nepal');
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Hotel Stay', 0 FROM public.packages WHERE slug = 'buddhism-lumbini-nepal';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Meals Included', 1 FROM public.packages WHERE slug = 'buddhism-lumbini-nepal';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'AC Transit', 2 FROM public.packages WHERE slug = 'buddhism-lumbini-nepal';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Expert Guide', 3 FROM public.packages WHERE slug = 'buddhism-lumbini-nepal';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Entry Passes', 4 FROM public.packages WHERE slug = 'buddhism-lumbini-nepal';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Spiritual darshan and guided temple tour in Lumbini', 0 FROM public.packages WHERE slug = 'buddhism-lumbini-nepal';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Experience peaceful aarti assemblies and sacred rituals', 1 FROM public.packages WHERE slug = 'buddhism-lumbini-nepal';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Comfortable transfers to all holy sites', 2 FROM public.packages WHERE slug = 'buddhism-lumbini-nepal';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry valid government ID cards for verification.', 0 FROM public.packages WHERE slug = 'buddhism-lumbini-nepal';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Traditional decency wear is recommended inside temple corridors.', 1 FROM public.packages WHERE slug = 'buddhism-lumbini-nepal';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Avoid carrying electronics inside the inner sanctum.', 2 FROM public.packages WHERE slug = 'buddhism-lumbini-nepal';
DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'buddhism-mahabodhi-temple-bagan-myanmar');
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Hotel Stay', 0 FROM public.packages WHERE slug = 'buddhism-mahabodhi-temple-bagan-myanmar';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Meals Included', 1 FROM public.packages WHERE slug = 'buddhism-mahabodhi-temple-bagan-myanmar';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'AC Transit', 2 FROM public.packages WHERE slug = 'buddhism-mahabodhi-temple-bagan-myanmar';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Expert Guide', 3 FROM public.packages WHERE slug = 'buddhism-mahabodhi-temple-bagan-myanmar';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Entry Passes', 4 FROM public.packages WHERE slug = 'buddhism-mahabodhi-temple-bagan-myanmar';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Spiritual darshan and guided temple tour in Mahabodhi Temple, Bagan', 0 FROM public.packages WHERE slug = 'buddhism-mahabodhi-temple-bagan-myanmar';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Experience peaceful aarti assemblies and sacred rituals', 1 FROM public.packages WHERE slug = 'buddhism-mahabodhi-temple-bagan-myanmar';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Comfortable transfers to all holy sites', 2 FROM public.packages WHERE slug = 'buddhism-mahabodhi-temple-bagan-myanmar';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry valid government ID cards for verification.', 0 FROM public.packages WHERE slug = 'buddhism-mahabodhi-temple-bagan-myanmar';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Traditional decency wear is recommended inside temple corridors.', 1 FROM public.packages WHERE slug = 'buddhism-mahabodhi-temple-bagan-myanmar';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Avoid carrying electronics inside the inner sanctum.', 2 FROM public.packages WHERE slug = 'buddhism-mahabodhi-temple-bagan-myanmar';
DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'buddhism-mount-kailash-tibet');
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Hotel Stay', 0 FROM public.packages WHERE slug = 'buddhism-mount-kailash-tibet';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Meals Included', 1 FROM public.packages WHERE slug = 'buddhism-mount-kailash-tibet';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'AC Transit', 2 FROM public.packages WHERE slug = 'buddhism-mount-kailash-tibet';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Expert Guide', 3 FROM public.packages WHERE slug = 'buddhism-mount-kailash-tibet';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Entry Passes', 4 FROM public.packages WHERE slug = 'buddhism-mount-kailash-tibet';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Spiritual darshan and guided temple tour in Mount Kailash', 0 FROM public.packages WHERE slug = 'buddhism-mount-kailash-tibet';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Experience peaceful aarti assemblies and sacred rituals', 1 FROM public.packages WHERE slug = 'buddhism-mount-kailash-tibet';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Comfortable transfers to all holy sites', 2 FROM public.packages WHERE slug = 'buddhism-mount-kailash-tibet';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry valid government ID cards for verification.', 0 FROM public.packages WHERE slug = 'buddhism-mount-kailash-tibet';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Traditional decency wear is recommended inside temple corridors.', 1 FROM public.packages WHERE slug = 'buddhism-mount-kailash-tibet';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Avoid carrying electronics inside the inner sanctum.', 2 FROM public.packages WHERE slug = 'buddhism-mount-kailash-tibet';
DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'buddhism-nalanda-india');
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Hotel Stay', 0 FROM public.packages WHERE slug = 'buddhism-nalanda-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Meals Included', 1 FROM public.packages WHERE slug = 'buddhism-nalanda-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'AC Transit', 2 FROM public.packages WHERE slug = 'buddhism-nalanda-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Expert Guide', 3 FROM public.packages WHERE slug = 'buddhism-nalanda-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Entry Passes', 4 FROM public.packages WHERE slug = 'buddhism-nalanda-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Spiritual darshan and guided temple tour in Nalanda', 0 FROM public.packages WHERE slug = 'buddhism-nalanda-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Experience peaceful aarti assemblies and sacred rituals', 1 FROM public.packages WHERE slug = 'buddhism-nalanda-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Comfortable transfers to all holy sites', 2 FROM public.packages WHERE slug = 'buddhism-nalanda-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry valid government ID cards for verification.', 0 FROM public.packages WHERE slug = 'buddhism-nalanda-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Traditional decency wear is recommended inside temple corridors.', 1 FROM public.packages WHERE slug = 'buddhism-nalanda-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Avoid carrying electronics inside the inner sanctum.', 2 FROM public.packages WHERE slug = 'buddhism-nalanda-india';
DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'buddhism-rajgir-india');
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Hotel Stay', 0 FROM public.packages WHERE slug = 'buddhism-rajgir-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Meals Included', 1 FROM public.packages WHERE slug = 'buddhism-rajgir-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'AC Transit', 2 FROM public.packages WHERE slug = 'buddhism-rajgir-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Expert Guide', 3 FROM public.packages WHERE slug = 'buddhism-rajgir-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Entry Passes', 4 FROM public.packages WHERE slug = 'buddhism-rajgir-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Spiritual darshan and guided temple tour in Rajgir', 0 FROM public.packages WHERE slug = 'buddhism-rajgir-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Experience peaceful aarti assemblies and sacred rituals', 1 FROM public.packages WHERE slug = 'buddhism-rajgir-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Comfortable transfers to all holy sites', 2 FROM public.packages WHERE slug = 'buddhism-rajgir-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry valid government ID cards for verification.', 0 FROM public.packages WHERE slug = 'buddhism-rajgir-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Traditional decency wear is recommended inside temple corridors.', 1 FROM public.packages WHERE slug = 'buddhism-rajgir-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Avoid carrying electronics inside the inner sanctum.', 2 FROM public.packages WHERE slug = 'buddhism-rajgir-india';
DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'buddhism-sarnath-india');
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Hotel Stay', 0 FROM public.packages WHERE slug = 'buddhism-sarnath-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Meals Included', 1 FROM public.packages WHERE slug = 'buddhism-sarnath-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'AC Transit', 2 FROM public.packages WHERE slug = 'buddhism-sarnath-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Expert Guide', 3 FROM public.packages WHERE slug = 'buddhism-sarnath-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Entry Passes', 4 FROM public.packages WHERE slug = 'buddhism-sarnath-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Spiritual darshan and guided temple tour in Sarnath', 0 FROM public.packages WHERE slug = 'buddhism-sarnath-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Experience peaceful aarti assemblies and sacred rituals', 1 FROM public.packages WHERE slug = 'buddhism-sarnath-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Comfortable transfers to all holy sites', 2 FROM public.packages WHERE slug = 'buddhism-sarnath-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry valid government ID cards for verification.', 0 FROM public.packages WHERE slug = 'buddhism-sarnath-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Traditional decency wear is recommended inside temple corridors.', 1 FROM public.packages WHERE slug = 'buddhism-sarnath-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Avoid carrying electronics inside the inner sanctum.', 2 FROM public.packages WHERE slug = 'buddhism-sarnath-india';
DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'buddhism-shwedagon-pagoda-myanmar');
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Hotel Stay', 0 FROM public.packages WHERE slug = 'buddhism-shwedagon-pagoda-myanmar';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Meals Included', 1 FROM public.packages WHERE slug = 'buddhism-shwedagon-pagoda-myanmar';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'AC Transit', 2 FROM public.packages WHERE slug = 'buddhism-shwedagon-pagoda-myanmar';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Expert Guide', 3 FROM public.packages WHERE slug = 'buddhism-shwedagon-pagoda-myanmar';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Entry Passes', 4 FROM public.packages WHERE slug = 'buddhism-shwedagon-pagoda-myanmar';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Spiritual darshan and guided temple tour in Shwedagon Pagoda', 0 FROM public.packages WHERE slug = 'buddhism-shwedagon-pagoda-myanmar';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Experience peaceful aarti assemblies and sacred rituals', 1 FROM public.packages WHERE slug = 'buddhism-shwedagon-pagoda-myanmar';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Comfortable transfers to all holy sites', 2 FROM public.packages WHERE slug = 'buddhism-shwedagon-pagoda-myanmar';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry valid government ID cards for verification.', 0 FROM public.packages WHERE slug = 'buddhism-shwedagon-pagoda-myanmar';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Traditional decency wear is recommended inside temple corridors.', 1 FROM public.packages WHERE slug = 'buddhism-shwedagon-pagoda-myanmar';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Avoid carrying electronics inside the inner sanctum.', 2 FROM public.packages WHERE slug = 'buddhism-shwedagon-pagoda-myanmar';
DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'buddhism-tiger-s-nest-monastery-paro-taktsang-bhutan');
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Hotel Stay', 0 FROM public.packages WHERE slug = 'buddhism-tiger-s-nest-monastery-paro-taktsang-bhutan';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Meals Included', 1 FROM public.packages WHERE slug = 'buddhism-tiger-s-nest-monastery-paro-taktsang-bhutan';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'AC Transit', 2 FROM public.packages WHERE slug = 'buddhism-tiger-s-nest-monastery-paro-taktsang-bhutan';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Expert Guide', 3 FROM public.packages WHERE slug = 'buddhism-tiger-s-nest-monastery-paro-taktsang-bhutan';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Entry Passes', 4 FROM public.packages WHERE slug = 'buddhism-tiger-s-nest-monastery-paro-taktsang-bhutan';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Spiritual darshan and guided temple tour in Tiger’s Nest Monastery', 0 FROM public.packages WHERE slug = 'buddhism-tiger-s-nest-monastery-paro-taktsang-bhutan';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Experience peaceful aarti assemblies and sacred rituals', 1 FROM public.packages WHERE slug = 'buddhism-tiger-s-nest-monastery-paro-taktsang-bhutan';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Comfortable transfers to all holy sites', 2 FROM public.packages WHERE slug = 'buddhism-tiger-s-nest-monastery-paro-taktsang-bhutan';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry valid government ID cards for verification.', 0 FROM public.packages WHERE slug = 'buddhism-tiger-s-nest-monastery-paro-taktsang-bhutan';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Traditional decency wear is recommended inside temple corridors.', 1 FROM public.packages WHERE slug = 'buddhism-tiger-s-nest-monastery-paro-taktsang-bhutan';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Avoid carrying electronics inside the inner sanctum.', 2 FROM public.packages WHERE slug = 'buddhism-tiger-s-nest-monastery-paro-taktsang-bhutan';
DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'christianity-basilica-of-our-lady-of-guadalupe-mexico');
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Hotel Stay', 0 FROM public.packages WHERE slug = 'christianity-basilica-of-our-lady-of-guadalupe-mexico';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Meals Included', 1 FROM public.packages WHERE slug = 'christianity-basilica-of-our-lady-of-guadalupe-mexico';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'AC Transit', 2 FROM public.packages WHERE slug = 'christianity-basilica-of-our-lady-of-guadalupe-mexico';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Expert Guide', 3 FROM public.packages WHERE slug = 'christianity-basilica-of-our-lady-of-guadalupe-mexico';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Entry Passes', 4 FROM public.packages WHERE slug = 'christianity-basilica-of-our-lady-of-guadalupe-mexico';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Spiritual darshan and guided temple tour in Basilica of Our Lady of Guadalupe', 0 FROM public.packages WHERE slug = 'christianity-basilica-of-our-lady-of-guadalupe-mexico';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Experience peaceful aarti assemblies and sacred rituals', 1 FROM public.packages WHERE slug = 'christianity-basilica-of-our-lady-of-guadalupe-mexico';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Comfortable transfers to all holy sites', 2 FROM public.packages WHERE slug = 'christianity-basilica-of-our-lady-of-guadalupe-mexico';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry valid government ID cards for verification.', 0 FROM public.packages WHERE slug = 'christianity-basilica-of-our-lady-of-guadalupe-mexico';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Traditional decency wear is recommended inside temple corridors.', 1 FROM public.packages WHERE slug = 'christianity-basilica-of-our-lady-of-guadalupe-mexico';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Avoid carrying electronics inside the inner sanctum.', 2 FROM public.packages WHERE slug = 'christianity-basilica-of-our-lady-of-guadalupe-mexico';
DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'christianity-basilica-of-saint-peter-vatican-city');
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Hotel Stay', 0 FROM public.packages WHERE slug = 'christianity-basilica-of-saint-peter-vatican-city';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Meals Included', 1 FROM public.packages WHERE slug = 'christianity-basilica-of-saint-peter-vatican-city';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'AC Transit', 2 FROM public.packages WHERE slug = 'christianity-basilica-of-saint-peter-vatican-city';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Expert Guide', 3 FROM public.packages WHERE slug = 'christianity-basilica-of-saint-peter-vatican-city';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Entry Passes', 4 FROM public.packages WHERE slug = 'christianity-basilica-of-saint-peter-vatican-city';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Spiritual darshan and guided temple tour in Basilica of Saint Peter, Vatican City', 0 FROM public.packages WHERE slug = 'christianity-basilica-of-saint-peter-vatican-city';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Experience peaceful aarti assemblies and sacred rituals', 1 FROM public.packages WHERE slug = 'christianity-basilica-of-saint-peter-vatican-city';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Comfortable transfers to all holy sites', 2 FROM public.packages WHERE slug = 'christianity-basilica-of-saint-peter-vatican-city';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry valid government ID cards for verification.', 0 FROM public.packages WHERE slug = 'christianity-basilica-of-saint-peter-vatican-city';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Traditional decency wear is recommended inside temple corridors.', 1 FROM public.packages WHERE slug = 'christianity-basilica-of-saint-peter-vatican-city';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Avoid carrying electronics inside the inner sanctum.', 2 FROM public.packages WHERE slug = 'christianity-basilica-of-saint-peter-vatican-city';
DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'christianity-bethlehem-palestine');
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Hotel Stay', 0 FROM public.packages WHERE slug = 'christianity-bethlehem-palestine';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Meals Included', 1 FROM public.packages WHERE slug = 'christianity-bethlehem-palestine';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'AC Transit', 2 FROM public.packages WHERE slug = 'christianity-bethlehem-palestine';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Expert Guide', 3 FROM public.packages WHERE slug = 'christianity-bethlehem-palestine';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Entry Passes', 4 FROM public.packages WHERE slug = 'christianity-bethlehem-palestine';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Spiritual darshan and guided temple tour in Bethlehem', 0 FROM public.packages WHERE slug = 'christianity-bethlehem-palestine';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Experience peaceful aarti assemblies and sacred rituals', 1 FROM public.packages WHERE slug = 'christianity-bethlehem-palestine';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Comfortable transfers to all holy sites', 2 FROM public.packages WHERE slug = 'christianity-bethlehem-palestine';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry valid government ID cards for verification.', 0 FROM public.packages WHERE slug = 'christianity-bethlehem-palestine';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Traditional decency wear is recommended inside temple corridors.', 1 FROM public.packages WHERE slug = 'christianity-bethlehem-palestine';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Avoid carrying electronics inside the inner sanctum.', 2 FROM public.packages WHERE slug = 'christianity-bethlehem-palestine';
DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'christianity-camino-de-santiago-spain');
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Hotel Stay', 0 FROM public.packages WHERE slug = 'christianity-camino-de-santiago-spain';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Meals Included', 1 FROM public.packages WHERE slug = 'christianity-camino-de-santiago-spain';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'AC Transit', 2 FROM public.packages WHERE slug = 'christianity-camino-de-santiago-spain';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Expert Guide', 3 FROM public.packages WHERE slug = 'christianity-camino-de-santiago-spain';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Entry Passes', 4 FROM public.packages WHERE slug = 'christianity-camino-de-santiago-spain';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Spiritual darshan and guided temple tour in Camino de Santiago, Spain', 0 FROM public.packages WHERE slug = 'christianity-camino-de-santiago-spain';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Experience peaceful aarti assemblies and sacred rituals', 1 FROM public.packages WHERE slug = 'christianity-camino-de-santiago-spain';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Comfortable transfers to all holy sites', 2 FROM public.packages WHERE slug = 'christianity-camino-de-santiago-spain';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry valid government ID cards for verification.', 0 FROM public.packages WHERE slug = 'christianity-camino-de-santiago-spain';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Traditional decency wear is recommended inside temple corridors.', 1 FROM public.packages WHERE slug = 'christianity-camino-de-santiago-spain';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Avoid carrying electronics inside the inner sanctum.', 2 FROM public.packages WHERE slug = 'christianity-camino-de-santiago-spain';
DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'christianity-canterbury-cathedral-england');
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Hotel Stay', 0 FROM public.packages WHERE slug = 'christianity-canterbury-cathedral-england';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Meals Included', 1 FROM public.packages WHERE slug = 'christianity-canterbury-cathedral-england';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'AC Transit', 2 FROM public.packages WHERE slug = 'christianity-canterbury-cathedral-england';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Expert Guide', 3 FROM public.packages WHERE slug = 'christianity-canterbury-cathedral-england';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Entry Passes', 4 FROM public.packages WHERE slug = 'christianity-canterbury-cathedral-england';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Spiritual darshan and guided temple tour in Canterbury Cathedral', 0 FROM public.packages WHERE slug = 'christianity-canterbury-cathedral-england';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Experience peaceful aarti assemblies and sacred rituals', 1 FROM public.packages WHERE slug = 'christianity-canterbury-cathedral-england';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Comfortable transfers to all holy sites', 2 FROM public.packages WHERE slug = 'christianity-canterbury-cathedral-england';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry valid government ID cards for verification.', 0 FROM public.packages WHERE slug = 'christianity-canterbury-cathedral-england';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Traditional decency wear is recommended inside temple corridors.', 1 FROM public.packages WHERE slug = 'christianity-canterbury-cathedral-england';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Avoid carrying electronics inside the inner sanctum.', 2 FROM public.packages WHERE slug = 'christianity-canterbury-cathedral-england';
DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'christianity-church-of-the-holy-sepulchre-jerusalem-israel');
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Hotel Stay', 0 FROM public.packages WHERE slug = 'christianity-church-of-the-holy-sepulchre-jerusalem-israel';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Meals Included', 1 FROM public.packages WHERE slug = 'christianity-church-of-the-holy-sepulchre-jerusalem-israel';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'AC Transit', 2 FROM public.packages WHERE slug = 'christianity-church-of-the-holy-sepulchre-jerusalem-israel';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Expert Guide', 3 FROM public.packages WHERE slug = 'christianity-church-of-the-holy-sepulchre-jerusalem-israel';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Entry Passes', 4 FROM public.packages WHERE slug = 'christianity-church-of-the-holy-sepulchre-jerusalem-israel';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Spiritual darshan and guided temple tour in Church of the Holy Sepulchre, Jerusalem', 0 FROM public.packages WHERE slug = 'christianity-church-of-the-holy-sepulchre-jerusalem-israel';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Experience peaceful aarti assemblies and sacred rituals', 1 FROM public.packages WHERE slug = 'christianity-church-of-the-holy-sepulchre-jerusalem-israel';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Comfortable transfers to all holy sites', 2 FROM public.packages WHERE slug = 'christianity-church-of-the-holy-sepulchre-jerusalem-israel';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry valid government ID cards for verification.', 0 FROM public.packages WHERE slug = 'christianity-church-of-the-holy-sepulchre-jerusalem-israel';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Traditional decency wear is recommended inside temple corridors.', 1 FROM public.packages WHERE slug = 'christianity-church-of-the-holy-sepulchre-jerusalem-israel';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Avoid carrying electronics inside the inner sanctum.', 2 FROM public.packages WHERE slug = 'christianity-church-of-the-holy-sepulchre-jerusalem-israel';
DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'christianity-el-santuario-de-chimayo-new-mexico-usa');
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Hotel Stay', 0 FROM public.packages WHERE slug = 'christianity-el-santuario-de-chimayo-new-mexico-usa';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Meals Included', 1 FROM public.packages WHERE slug = 'christianity-el-santuario-de-chimayo-new-mexico-usa';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'AC Transit', 2 FROM public.packages WHERE slug = 'christianity-el-santuario-de-chimayo-new-mexico-usa';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Expert Guide', 3 FROM public.packages WHERE slug = 'christianity-el-santuario-de-chimayo-new-mexico-usa';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Entry Passes', 4 FROM public.packages WHERE slug = 'christianity-el-santuario-de-chimayo-new-mexico-usa';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Spiritual darshan and guided temple tour in El Santuario de Chimayo', 0 FROM public.packages WHERE slug = 'christianity-el-santuario-de-chimayo-new-mexico-usa';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Experience peaceful aarti assemblies and sacred rituals', 1 FROM public.packages WHERE slug = 'christianity-el-santuario-de-chimayo-new-mexico-usa';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Comfortable transfers to all holy sites', 2 FROM public.packages WHERE slug = 'christianity-el-santuario-de-chimayo-new-mexico-usa';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry valid government ID cards for verification.', 0 FROM public.packages WHERE slug = 'christianity-el-santuario-de-chimayo-new-mexico-usa';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Traditional decency wear is recommended inside temple corridors.', 1 FROM public.packages WHERE slug = 'christianity-el-santuario-de-chimayo-new-mexico-usa';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Avoid carrying electronics inside the inner sanctum.', 2 FROM public.packages WHERE slug = 'christianity-el-santuario-de-chimayo-new-mexico-usa';
DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'christianity-f-tima-portugal');
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Hotel Stay', 0 FROM public.packages WHERE slug = 'christianity-f-tima-portugal';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Meals Included', 1 FROM public.packages WHERE slug = 'christianity-f-tima-portugal';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'AC Transit', 2 FROM public.packages WHERE slug = 'christianity-f-tima-portugal';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Expert Guide', 3 FROM public.packages WHERE slug = 'christianity-f-tima-portugal';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Entry Passes', 4 FROM public.packages WHERE slug = 'christianity-f-tima-portugal';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Spiritual darshan and guided temple tour in Fátima', 0 FROM public.packages WHERE slug = 'christianity-f-tima-portugal';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Experience peaceful aarti assemblies and sacred rituals', 1 FROM public.packages WHERE slug = 'christianity-f-tima-portugal';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Comfortable transfers to all holy sites', 2 FROM public.packages WHERE slug = 'christianity-f-tima-portugal';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry valid government ID cards for verification.', 0 FROM public.packages WHERE slug = 'christianity-f-tima-portugal';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Traditional decency wear is recommended inside temple corridors.', 1 FROM public.packages WHERE slug = 'christianity-f-tima-portugal';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Avoid carrying electronics inside the inner sanctum.', 2 FROM public.packages WHERE slug = 'christianity-f-tima-portugal';
DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'christianity-lalibela-ethiopia');
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Hotel Stay', 0 FROM public.packages WHERE slug = 'christianity-lalibela-ethiopia';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Meals Included', 1 FROM public.packages WHERE slug = 'christianity-lalibela-ethiopia';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'AC Transit', 2 FROM public.packages WHERE slug = 'christianity-lalibela-ethiopia';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Expert Guide', 3 FROM public.packages WHERE slug = 'christianity-lalibela-ethiopia';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Entry Passes', 4 FROM public.packages WHERE slug = 'christianity-lalibela-ethiopia';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Spiritual darshan and guided temple tour in Lalibela', 0 FROM public.packages WHERE slug = 'christianity-lalibela-ethiopia';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Experience peaceful aarti assemblies and sacred rituals', 1 FROM public.packages WHERE slug = 'christianity-lalibela-ethiopia';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Comfortable transfers to all holy sites', 2 FROM public.packages WHERE slug = 'christianity-lalibela-ethiopia';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry valid government ID cards for verification.', 0 FROM public.packages WHERE slug = 'christianity-lalibela-ethiopia';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Traditional decency wear is recommended inside temple corridors.', 1 FROM public.packages WHERE slug = 'christianity-lalibela-ethiopia';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Avoid carrying electronics inside the inner sanctum.', 2 FROM public.packages WHERE slug = 'christianity-lalibela-ethiopia';
DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'christianity-mount-athos-greece');
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Hotel Stay', 0 FROM public.packages WHERE slug = 'christianity-mount-athos-greece';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Meals Included', 1 FROM public.packages WHERE slug = 'christianity-mount-athos-greece';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'AC Transit', 2 FROM public.packages WHERE slug = 'christianity-mount-athos-greece';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Expert Guide', 3 FROM public.packages WHERE slug = 'christianity-mount-athos-greece';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Entry Passes', 4 FROM public.packages WHERE slug = 'christianity-mount-athos-greece';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Spiritual darshan and guided temple tour in Mount Athos', 0 FROM public.packages WHERE slug = 'christianity-mount-athos-greece';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Experience peaceful aarti assemblies and sacred rituals', 1 FROM public.packages WHERE slug = 'christianity-mount-athos-greece';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Comfortable transfers to all holy sites', 2 FROM public.packages WHERE slug = 'christianity-mount-athos-greece';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry valid government ID cards for verification.', 0 FROM public.packages WHERE slug = 'christianity-mount-athos-greece';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Traditional decency wear is recommended inside temple corridors.', 1 FROM public.packages WHERE slug = 'christianity-mount-athos-greece';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Avoid carrying electronics inside the inner sanctum.', 2 FROM public.packages WHERE slug = 'christianity-mount-athos-greece';
DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'christianity-old-city-jerusalem-israel');
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Hotel Stay', 0 FROM public.packages WHERE slug = 'christianity-old-city-jerusalem-israel';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Meals Included', 1 FROM public.packages WHERE slug = 'christianity-old-city-jerusalem-israel';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'AC Transit', 2 FROM public.packages WHERE slug = 'christianity-old-city-jerusalem-israel';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Expert Guide', 3 FROM public.packages WHERE slug = 'christianity-old-city-jerusalem-israel';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Entry Passes', 4 FROM public.packages WHERE slug = 'christianity-old-city-jerusalem-israel';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Spiritual darshan and guided temple tour in Old City Jerusalem', 0 FROM public.packages WHERE slug = 'christianity-old-city-jerusalem-israel';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Experience peaceful aarti assemblies and sacred rituals', 1 FROM public.packages WHERE slug = 'christianity-old-city-jerusalem-israel';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Comfortable transfers to all holy sites', 2 FROM public.packages WHERE slug = 'christianity-old-city-jerusalem-israel';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry valid government ID cards for verification.', 0 FROM public.packages WHERE slug = 'christianity-old-city-jerusalem-israel';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Traditional decency wear is recommended inside temple corridors.', 1 FROM public.packages WHERE slug = 'christianity-old-city-jerusalem-israel';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Avoid carrying electronics inside the inner sanctum.', 2 FROM public.packages WHERE slug = 'christianity-old-city-jerusalem-israel';
DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'christianity-sanctuary-of-our-lady-of-lourdes-france');
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Hotel Stay', 0 FROM public.packages WHERE slug = 'christianity-sanctuary-of-our-lady-of-lourdes-france';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Meals Included', 1 FROM public.packages WHERE slug = 'christianity-sanctuary-of-our-lady-of-lourdes-france';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'AC Transit', 2 FROM public.packages WHERE slug = 'christianity-sanctuary-of-our-lady-of-lourdes-france';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Expert Guide', 3 FROM public.packages WHERE slug = 'christianity-sanctuary-of-our-lady-of-lourdes-france';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Entry Passes', 4 FROM public.packages WHERE slug = 'christianity-sanctuary-of-our-lady-of-lourdes-france';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Spiritual darshan and guided temple tour in Sanctuary of Our Lady of Lourdes', 0 FROM public.packages WHERE slug = 'christianity-sanctuary-of-our-lady-of-lourdes-france';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Experience peaceful aarti assemblies and sacred rituals', 1 FROM public.packages WHERE slug = 'christianity-sanctuary-of-our-lady-of-lourdes-france';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Comfortable transfers to all holy sites', 2 FROM public.packages WHERE slug = 'christianity-sanctuary-of-our-lady-of-lourdes-france';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry valid government ID cards for verification.', 0 FROM public.packages WHERE slug = 'christianity-sanctuary-of-our-lady-of-lourdes-france';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Traditional decency wear is recommended inside temple corridors.', 1 FROM public.packages WHERE slug = 'christianity-sanctuary-of-our-lady-of-lourdes-france';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Avoid carrying electronics inside the inner sanctum.', 2 FROM public.packages WHERE slug = 'christianity-sanctuary-of-our-lady-of-lourdes-france';
DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'christianity-santiago-atitl-n-guatemala');
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Hotel Stay', 0 FROM public.packages WHERE slug = 'christianity-santiago-atitl-n-guatemala';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Meals Included', 1 FROM public.packages WHERE slug = 'christianity-santiago-atitl-n-guatemala';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'AC Transit', 2 FROM public.packages WHERE slug = 'christianity-santiago-atitl-n-guatemala';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Expert Guide', 3 FROM public.packages WHERE slug = 'christianity-santiago-atitl-n-guatemala';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Entry Passes', 4 FROM public.packages WHERE slug = 'christianity-santiago-atitl-n-guatemala';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Spiritual darshan and guided temple tour in Santiago Atitlán', 0 FROM public.packages WHERE slug = 'christianity-santiago-atitl-n-guatemala';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Experience peaceful aarti assemblies and sacred rituals', 1 FROM public.packages WHERE slug = 'christianity-santiago-atitl-n-guatemala';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Comfortable transfers to all holy sites', 2 FROM public.packages WHERE slug = 'christianity-santiago-atitl-n-guatemala';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry valid government ID cards for verification.', 0 FROM public.packages WHERE slug = 'christianity-santiago-atitl-n-guatemala';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Traditional decency wear is recommended inside temple corridors.', 1 FROM public.packages WHERE slug = 'christianity-santiago-atitl-n-guatemala';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Avoid carrying electronics inside the inner sanctum.', 2 FROM public.packages WHERE slug = 'christianity-santiago-atitl-n-guatemala';
DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'christianity-santu-rio-de-nossa-senhora-aparecida-brazil');
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Hotel Stay', 0 FROM public.packages WHERE slug = 'christianity-santu-rio-de-nossa-senhora-aparecida-brazil';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Meals Included', 1 FROM public.packages WHERE slug = 'christianity-santu-rio-de-nossa-senhora-aparecida-brazil';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'AC Transit', 2 FROM public.packages WHERE slug = 'christianity-santu-rio-de-nossa-senhora-aparecida-brazil';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Expert Guide', 3 FROM public.packages WHERE slug = 'christianity-santu-rio-de-nossa-senhora-aparecida-brazil';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Entry Passes', 4 FROM public.packages WHERE slug = 'christianity-santu-rio-de-nossa-senhora-aparecida-brazil';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Spiritual darshan and guided temple tour in Santuário de Nossa Senhora Aparecida', 0 FROM public.packages WHERE slug = 'christianity-santu-rio-de-nossa-senhora-aparecida-brazil';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Experience peaceful aarti assemblies and sacred rituals', 1 FROM public.packages WHERE slug = 'christianity-santu-rio-de-nossa-senhora-aparecida-brazil';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Comfortable transfers to all holy sites', 2 FROM public.packages WHERE slug = 'christianity-santu-rio-de-nossa-senhora-aparecida-brazil';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry valid government ID cards for verification.', 0 FROM public.packages WHERE slug = 'christianity-santu-rio-de-nossa-senhora-aparecida-brazil';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Traditional decency wear is recommended inside temple corridors.', 1 FROM public.packages WHERE slug = 'christianity-santu-rio-de-nossa-senhora-aparecida-brazil';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Avoid carrying electronics inside the inner sanctum.', 2 FROM public.packages WHERE slug = 'christianity-santu-rio-de-nossa-senhora-aparecida-brazil';
DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'christianity-vatican-city-italy');
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Hotel Stay', 0 FROM public.packages WHERE slug = 'christianity-vatican-city-italy';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Meals Included', 1 FROM public.packages WHERE slug = 'christianity-vatican-city-italy';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'AC Transit', 2 FROM public.packages WHERE slug = 'christianity-vatican-city-italy';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Expert Guide', 3 FROM public.packages WHERE slug = 'christianity-vatican-city-italy';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Entry Passes', 4 FROM public.packages WHERE slug = 'christianity-vatican-city-italy';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Spiritual darshan and guided temple tour in Vatican City', 0 FROM public.packages WHERE slug = 'christianity-vatican-city-italy';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Experience peaceful aarti assemblies and sacred rituals', 1 FROM public.packages WHERE slug = 'christianity-vatican-city-italy';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Comfortable transfers to all holy sites', 2 FROM public.packages WHERE slug = 'christianity-vatican-city-italy';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry valid government ID cards for verification.', 0 FROM public.packages WHERE slug = 'christianity-vatican-city-italy';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Traditional decency wear is recommended inside temple corridors.', 1 FROM public.packages WHERE slug = 'christianity-vatican-city-italy';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Avoid carrying electronics inside the inner sanctum.', 2 FROM public.packages WHERE slug = 'christianity-vatican-city-italy';
DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'hinduism-adam-s-peak-sri-pada-sri-lanka');
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Hotel Stay', 0 FROM public.packages WHERE slug = 'hinduism-adam-s-peak-sri-pada-sri-lanka';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Meals Included', 1 FROM public.packages WHERE slug = 'hinduism-adam-s-peak-sri-pada-sri-lanka';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'AC Transit', 2 FROM public.packages WHERE slug = 'hinduism-adam-s-peak-sri-pada-sri-lanka';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Expert Guide', 3 FROM public.packages WHERE slug = 'hinduism-adam-s-peak-sri-pada-sri-lanka';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Entry Passes', 4 FROM public.packages WHERE slug = 'hinduism-adam-s-peak-sri-pada-sri-lanka';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Spiritual darshan and guided temple tour in Adam’s Peak (Sri Pada)', 0 FROM public.packages WHERE slug = 'hinduism-adam-s-peak-sri-pada-sri-lanka';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Experience peaceful aarti assemblies and sacred rituals', 1 FROM public.packages WHERE slug = 'hinduism-adam-s-peak-sri-pada-sri-lanka';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Comfortable transfers to all holy sites', 2 FROM public.packages WHERE slug = 'hinduism-adam-s-peak-sri-pada-sri-lanka';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry valid government ID cards for verification.', 0 FROM public.packages WHERE slug = 'hinduism-adam-s-peak-sri-pada-sri-lanka';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Traditional decency wear is recommended inside temple corridors.', 1 FROM public.packages WHERE slug = 'hinduism-adam-s-peak-sri-pada-sri-lanka';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Avoid carrying electronics inside the inner sanctum.', 2 FROM public.packages WHERE slug = 'hinduism-adam-s-peak-sri-pada-sri-lanka';
DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'hinduism-badrinath-india');
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Hotel Stay', 0 FROM public.packages WHERE slug = 'hinduism-badrinath-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Meals Included', 1 FROM public.packages WHERE slug = 'hinduism-badrinath-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'AC Transit', 2 FROM public.packages WHERE slug = 'hinduism-badrinath-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Expert Guide', 3 FROM public.packages WHERE slug = 'hinduism-badrinath-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Entry Passes', 4 FROM public.packages WHERE slug = 'hinduism-badrinath-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Medical Support', 5 FROM public.packages WHERE slug = 'hinduism-badrinath-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Spiritual darshan and guided temple tour in Badrinath', 0 FROM public.packages WHERE slug = 'hinduism-badrinath-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Experience peaceful aarti assemblies and sacred rituals', 1 FROM public.packages WHERE slug = 'hinduism-badrinath-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Comfortable transfers to all holy sites', 2 FROM public.packages WHERE slug = 'hinduism-badrinath-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry valid government ID cards for verification.', 0 FROM public.packages WHERE slug = 'hinduism-badrinath-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Traditional decency wear is recommended inside temple corridors.', 1 FROM public.packages WHERE slug = 'hinduism-badrinath-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Avoid carrying electronics inside the inner sanctum.', 2 FROM public.packages WHERE slug = 'hinduism-badrinath-india';
DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'hinduism-dwarkadhish-temple-dwarka-india');
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Hotel Stay', 0 FROM public.packages WHERE slug = 'hinduism-dwarkadhish-temple-dwarka-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Meals Included', 1 FROM public.packages WHERE slug = 'hinduism-dwarkadhish-temple-dwarka-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'AC Transit', 2 FROM public.packages WHERE slug = 'hinduism-dwarkadhish-temple-dwarka-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Expert Guide', 3 FROM public.packages WHERE slug = 'hinduism-dwarkadhish-temple-dwarka-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Entry Passes', 4 FROM public.packages WHERE slug = 'hinduism-dwarkadhish-temple-dwarka-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Spiritual darshan and guided temple tour in Dwarkadhish Temple', 0 FROM public.packages WHERE slug = 'hinduism-dwarkadhish-temple-dwarka-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Experience peaceful aarti assemblies and sacred rituals', 1 FROM public.packages WHERE slug = 'hinduism-dwarkadhish-temple-dwarka-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Comfortable transfers to all holy sites', 2 FROM public.packages WHERE slug = 'hinduism-dwarkadhish-temple-dwarka-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry valid government ID cards for verification.', 0 FROM public.packages WHERE slug = 'hinduism-dwarkadhish-temple-dwarka-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Traditional decency wear is recommended inside temple corridors.', 1 FROM public.packages WHERE slug = 'hinduism-dwarkadhish-temple-dwarka-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Avoid carrying electronics inside the inner sanctum.', 2 FROM public.packages WHERE slug = 'hinduism-dwarkadhish-temple-dwarka-india';
DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'hinduism-golden-temple-harmandir-sahib-amritsar-india');
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Hotel Stay', 0 FROM public.packages WHERE slug = 'hinduism-golden-temple-harmandir-sahib-amritsar-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Meals Included', 1 FROM public.packages WHERE slug = 'hinduism-golden-temple-harmandir-sahib-amritsar-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'AC Transit', 2 FROM public.packages WHERE slug = 'hinduism-golden-temple-harmandir-sahib-amritsar-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Expert Guide', 3 FROM public.packages WHERE slug = 'hinduism-golden-temple-harmandir-sahib-amritsar-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Entry Passes', 4 FROM public.packages WHERE slug = 'hinduism-golden-temple-harmandir-sahib-amritsar-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Spiritual darshan and guided temple tour in Golden Temple', 0 FROM public.packages WHERE slug = 'hinduism-golden-temple-harmandir-sahib-amritsar-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Experience peaceful aarti assemblies and sacred rituals', 1 FROM public.packages WHERE slug = 'hinduism-golden-temple-harmandir-sahib-amritsar-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Comfortable transfers to all holy sites', 2 FROM public.packages WHERE slug = 'hinduism-golden-temple-harmandir-sahib-amritsar-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry valid government ID cards for verification.', 0 FROM public.packages WHERE slug = 'hinduism-golden-temple-harmandir-sahib-amritsar-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Traditional decency wear is recommended inside temple corridors.', 1 FROM public.packages WHERE slug = 'hinduism-golden-temple-harmandir-sahib-amritsar-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Avoid carrying electronics inside the inner sanctum.', 2 FROM public.packages WHERE slug = 'hinduism-golden-temple-harmandir-sahib-amritsar-india';
DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'hinduism-haridwar-rishikesh-india');
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Hotel Stay', 0 FROM public.packages WHERE slug = 'hinduism-haridwar-rishikesh-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Meals Included', 1 FROM public.packages WHERE slug = 'hinduism-haridwar-rishikesh-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'AC Transit', 2 FROM public.packages WHERE slug = 'hinduism-haridwar-rishikesh-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Expert Guide', 3 FROM public.packages WHERE slug = 'hinduism-haridwar-rishikesh-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Entry Passes', 4 FROM public.packages WHERE slug = 'hinduism-haridwar-rishikesh-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Medical Support', 5 FROM public.packages WHERE slug = 'hinduism-haridwar-rishikesh-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Spiritual darshan and guided temple tour in Haridwar & Rishikesh', 0 FROM public.packages WHERE slug = 'hinduism-haridwar-rishikesh-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Experience peaceful aarti assemblies and sacred rituals', 1 FROM public.packages WHERE slug = 'hinduism-haridwar-rishikesh-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Comfortable transfers to all holy sites', 2 FROM public.packages WHERE slug = 'hinduism-haridwar-rishikesh-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry valid government ID cards for verification.', 0 FROM public.packages WHERE slug = 'hinduism-haridwar-rishikesh-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Traditional decency wear is recommended inside temple corridors.', 1 FROM public.packages WHERE slug = 'hinduism-haridwar-rishikesh-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Avoid carrying electronics inside the inner sanctum.', 2 FROM public.packages WHERE slug = 'hinduism-haridwar-rishikesh-india';
DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'hinduism-jagannath-temple-puri-india');
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Hotel Stay', 0 FROM public.packages WHERE slug = 'hinduism-jagannath-temple-puri-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Meals Included', 1 FROM public.packages WHERE slug = 'hinduism-jagannath-temple-puri-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'AC Transit', 2 FROM public.packages WHERE slug = 'hinduism-jagannath-temple-puri-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Expert Guide', 3 FROM public.packages WHERE slug = 'hinduism-jagannath-temple-puri-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Entry Passes', 4 FROM public.packages WHERE slug = 'hinduism-jagannath-temple-puri-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Spiritual darshan and guided temple tour in Jagannath Temple', 0 FROM public.packages WHERE slug = 'hinduism-jagannath-temple-puri-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Experience peaceful aarti assemblies and sacred rituals', 1 FROM public.packages WHERE slug = 'hinduism-jagannath-temple-puri-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Comfortable transfers to all holy sites', 2 FROM public.packages WHERE slug = 'hinduism-jagannath-temple-puri-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry valid government ID cards for verification.', 0 FROM public.packages WHERE slug = 'hinduism-jagannath-temple-puri-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Traditional decency wear is recommended inside temple corridors.', 1 FROM public.packages WHERE slug = 'hinduism-jagannath-temple-puri-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Avoid carrying electronics inside the inner sanctum.', 2 FROM public.packages WHERE slug = 'hinduism-jagannath-temple-puri-india';
DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'hinduism-kashi-vishwanath-varanasi-india');
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Hotel Stay', 0 FROM public.packages WHERE slug = 'hinduism-kashi-vishwanath-varanasi-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Meals Included', 1 FROM public.packages WHERE slug = 'hinduism-kashi-vishwanath-varanasi-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'AC Transit', 2 FROM public.packages WHERE slug = 'hinduism-kashi-vishwanath-varanasi-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Expert Guide', 3 FROM public.packages WHERE slug = 'hinduism-kashi-vishwanath-varanasi-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Entry Passes', 4 FROM public.packages WHERE slug = 'hinduism-kashi-vishwanath-varanasi-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Spiritual darshan and guided temple tour in Kashi Vishwanath', 0 FROM public.packages WHERE slug = 'hinduism-kashi-vishwanath-varanasi-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Experience peaceful aarti assemblies and sacred rituals', 1 FROM public.packages WHERE slug = 'hinduism-kashi-vishwanath-varanasi-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Comfortable transfers to all holy sites', 2 FROM public.packages WHERE slug = 'hinduism-kashi-vishwanath-varanasi-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry valid government ID cards for verification.', 0 FROM public.packages WHERE slug = 'hinduism-kashi-vishwanath-varanasi-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Traditional decency wear is recommended inside temple corridors.', 1 FROM public.packages WHERE slug = 'hinduism-kashi-vishwanath-varanasi-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Avoid carrying electronics inside the inner sanctum.', 2 FROM public.packages WHERE slug = 'hinduism-kashi-vishwanath-varanasi-india';
DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'hinduism-kedarnath-india');
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Hotel Stay', 0 FROM public.packages WHERE slug = 'hinduism-kedarnath-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Meals Included', 1 FROM public.packages WHERE slug = 'hinduism-kedarnath-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'AC Transit', 2 FROM public.packages WHERE slug = 'hinduism-kedarnath-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Expert Guide', 3 FROM public.packages WHERE slug = 'hinduism-kedarnath-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Entry Passes', 4 FROM public.packages WHERE slug = 'hinduism-kedarnath-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Medical Support', 5 FROM public.packages WHERE slug = 'hinduism-kedarnath-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Spiritual darshan and guided temple tour in Kedarnath', 0 FROM public.packages WHERE slug = 'hinduism-kedarnath-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Experience peaceful aarti assemblies and sacred rituals', 1 FROM public.packages WHERE slug = 'hinduism-kedarnath-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Comfortable transfers to all holy sites', 2 FROM public.packages WHERE slug = 'hinduism-kedarnath-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry valid government ID cards for verification.', 0 FROM public.packages WHERE slug = 'hinduism-kedarnath-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Traditional decency wear is recommended inside temple corridors.', 1 FROM public.packages WHERE slug = 'hinduism-kedarnath-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Avoid carrying electronics inside the inner sanctum.', 2 FROM public.packages WHERE slug = 'hinduism-kedarnath-india';
DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'hinduism-mahakaleshwar-temple-ujjain-india');
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Hotel Stay', 0 FROM public.packages WHERE slug = 'hinduism-mahakaleshwar-temple-ujjain-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Meals Included', 1 FROM public.packages WHERE slug = 'hinduism-mahakaleshwar-temple-ujjain-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'AC Transit', 2 FROM public.packages WHERE slug = 'hinduism-mahakaleshwar-temple-ujjain-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Expert Guide', 3 FROM public.packages WHERE slug = 'hinduism-mahakaleshwar-temple-ujjain-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Entry Passes', 4 FROM public.packages WHERE slug = 'hinduism-mahakaleshwar-temple-ujjain-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Spiritual darshan and guided temple tour in Mahakaleshwar Temple', 0 FROM public.packages WHERE slug = 'hinduism-mahakaleshwar-temple-ujjain-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Experience peaceful aarti assemblies and sacred rituals', 1 FROM public.packages WHERE slug = 'hinduism-mahakaleshwar-temple-ujjain-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Comfortable transfers to all holy sites', 2 FROM public.packages WHERE slug = 'hinduism-mahakaleshwar-temple-ujjain-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry valid government ID cards for verification.', 0 FROM public.packages WHERE slug = 'hinduism-mahakaleshwar-temple-ujjain-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Traditional decency wear is recommended inside temple corridors.', 1 FROM public.packages WHERE slug = 'hinduism-mahakaleshwar-temple-ujjain-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Avoid carrying electronics inside the inner sanctum.', 2 FROM public.packages WHERE slug = 'hinduism-mahakaleshwar-temple-ujjain-india';
DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'hinduism-mount-kailash-tibet');
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Hotel Stay', 0 FROM public.packages WHERE slug = 'hinduism-mount-kailash-tibet';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Meals Included', 1 FROM public.packages WHERE slug = 'hinduism-mount-kailash-tibet';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'AC Transit', 2 FROM public.packages WHERE slug = 'hinduism-mount-kailash-tibet';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Expert Guide', 3 FROM public.packages WHERE slug = 'hinduism-mount-kailash-tibet';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Entry Passes', 4 FROM public.packages WHERE slug = 'hinduism-mount-kailash-tibet';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Spiritual darshan and guided temple tour in Mount Kailash', 0 FROM public.packages WHERE slug = 'hinduism-mount-kailash-tibet';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Experience peaceful aarti assemblies and sacred rituals', 1 FROM public.packages WHERE slug = 'hinduism-mount-kailash-tibet';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Comfortable transfers to all holy sites', 2 FROM public.packages WHERE slug = 'hinduism-mount-kailash-tibet';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry valid government ID cards for verification.', 0 FROM public.packages WHERE slug = 'hinduism-mount-kailash-tibet';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Traditional decency wear is recommended inside temple corridors.', 1 FROM public.packages WHERE slug = 'hinduism-mount-kailash-tibet';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Avoid carrying electronics inside the inner sanctum.', 2 FROM public.packages WHERE slug = 'hinduism-mount-kailash-tibet';
DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'hinduism-rameswaram-india');
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Hotel Stay', 0 FROM public.packages WHERE slug = 'hinduism-rameswaram-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Meals Included', 1 FROM public.packages WHERE slug = 'hinduism-rameswaram-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'AC Transit', 2 FROM public.packages WHERE slug = 'hinduism-rameswaram-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Expert Guide', 3 FROM public.packages WHERE slug = 'hinduism-rameswaram-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Entry Passes', 4 FROM public.packages WHERE slug = 'hinduism-rameswaram-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Spiritual darshan and guided temple tour in Rameswaram', 0 FROM public.packages WHERE slug = 'hinduism-rameswaram-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Experience peaceful aarti assemblies and sacred rituals', 1 FROM public.packages WHERE slug = 'hinduism-rameswaram-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Comfortable transfers to all holy sites', 2 FROM public.packages WHERE slug = 'hinduism-rameswaram-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry valid government ID cards for verification.', 0 FROM public.packages WHERE slug = 'hinduism-rameswaram-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Traditional decency wear is recommended inside temple corridors.', 1 FROM public.packages WHERE slug = 'hinduism-rameswaram-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Avoid carrying electronics inside the inner sanctum.', 2 FROM public.packages WHERE slug = 'hinduism-rameswaram-india';
DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'hinduism-somnath-temple-india');
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Hotel Stay', 0 FROM public.packages WHERE slug = 'hinduism-somnath-temple-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Meals Included', 1 FROM public.packages WHERE slug = 'hinduism-somnath-temple-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'AC Transit', 2 FROM public.packages WHERE slug = 'hinduism-somnath-temple-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Expert Guide', 3 FROM public.packages WHERE slug = 'hinduism-somnath-temple-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Entry Passes', 4 FROM public.packages WHERE slug = 'hinduism-somnath-temple-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Spiritual darshan and guided temple tour in Somnath Temple', 0 FROM public.packages WHERE slug = 'hinduism-somnath-temple-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Experience peaceful aarti assemblies and sacred rituals', 1 FROM public.packages WHERE slug = 'hinduism-somnath-temple-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Comfortable transfers to all holy sites', 2 FROM public.packages WHERE slug = 'hinduism-somnath-temple-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry valid government ID cards for verification.', 0 FROM public.packages WHERE slug = 'hinduism-somnath-temple-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Traditional decency wear is recommended inside temple corridors.', 1 FROM public.packages WHERE slug = 'hinduism-somnath-temple-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Avoid carrying electronics inside the inner sanctum.', 2 FROM public.packages WHERE slug = 'hinduism-somnath-temple-india';
DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'hinduism-tirupati-balaji-temple-india');
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Hotel Stay', 0 FROM public.packages WHERE slug = 'hinduism-tirupati-balaji-temple-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Meals Included', 1 FROM public.packages WHERE slug = 'hinduism-tirupati-balaji-temple-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'AC Transit', 2 FROM public.packages WHERE slug = 'hinduism-tirupati-balaji-temple-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Expert Guide', 3 FROM public.packages WHERE slug = 'hinduism-tirupati-balaji-temple-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Entry Passes', 4 FROM public.packages WHERE slug = 'hinduism-tirupati-balaji-temple-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Spiritual darshan and guided temple tour in Tirupati Balaji Temple', 0 FROM public.packages WHERE slug = 'hinduism-tirupati-balaji-temple-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Experience peaceful aarti assemblies and sacred rituals', 1 FROM public.packages WHERE slug = 'hinduism-tirupati-balaji-temple-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Comfortable transfers to all holy sites', 2 FROM public.packages WHERE slug = 'hinduism-tirupati-balaji-temple-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry valid government ID cards for verification.', 0 FROM public.packages WHERE slug = 'hinduism-tirupati-balaji-temple-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Traditional decency wear is recommended inside temple corridors.', 1 FROM public.packages WHERE slug = 'hinduism-tirupati-balaji-temple-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Avoid carrying electronics inside the inner sanctum.', 2 FROM public.packages WHERE slug = 'hinduism-tirupati-balaji-temple-india';
DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'hinduism-trimbakeshwar-temple-nashik-india');
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Hotel Stay', 0 FROM public.packages WHERE slug = 'hinduism-trimbakeshwar-temple-nashik-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Meals Included', 1 FROM public.packages WHERE slug = 'hinduism-trimbakeshwar-temple-nashik-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'AC Transit', 2 FROM public.packages WHERE slug = 'hinduism-trimbakeshwar-temple-nashik-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Expert Guide', 3 FROM public.packages WHERE slug = 'hinduism-trimbakeshwar-temple-nashik-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Entry Passes', 4 FROM public.packages WHERE slug = 'hinduism-trimbakeshwar-temple-nashik-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Spiritual darshan and guided temple tour in Trimbakeshwar Temple', 0 FROM public.packages WHERE slug = 'hinduism-trimbakeshwar-temple-nashik-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Experience peaceful aarti assemblies and sacred rituals', 1 FROM public.packages WHERE slug = 'hinduism-trimbakeshwar-temple-nashik-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Comfortable transfers to all holy sites', 2 FROM public.packages WHERE slug = 'hinduism-trimbakeshwar-temple-nashik-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry valid government ID cards for verification.', 0 FROM public.packages WHERE slug = 'hinduism-trimbakeshwar-temple-nashik-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Traditional decency wear is recommended inside temple corridors.', 1 FROM public.packages WHERE slug = 'hinduism-trimbakeshwar-temple-nashik-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Avoid carrying electronics inside the inner sanctum.', 2 FROM public.packages WHERE slug = 'hinduism-trimbakeshwar-temple-nashik-india';
DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'hinduism-vaishno-devi-india');
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Hotel Stay', 0 FROM public.packages WHERE slug = 'hinduism-vaishno-devi-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Meals Included', 1 FROM public.packages WHERE slug = 'hinduism-vaishno-devi-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'AC Transit', 2 FROM public.packages WHERE slug = 'hinduism-vaishno-devi-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Expert Guide', 3 FROM public.packages WHERE slug = 'hinduism-vaishno-devi-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Entry Passes', 4 FROM public.packages WHERE slug = 'hinduism-vaishno-devi-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Medical Support', 5 FROM public.packages WHERE slug = 'hinduism-vaishno-devi-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Spiritual darshan and guided temple tour in Vaishno Devi', 0 FROM public.packages WHERE slug = 'hinduism-vaishno-devi-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Experience peaceful aarti assemblies and sacred rituals', 1 FROM public.packages WHERE slug = 'hinduism-vaishno-devi-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Comfortable transfers to all holy sites', 2 FROM public.packages WHERE slug = 'hinduism-vaishno-devi-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry valid government ID cards for verification.', 0 FROM public.packages WHERE slug = 'hinduism-vaishno-devi-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Traditional decency wear is recommended inside temple corridors.', 1 FROM public.packages WHERE slug = 'hinduism-vaishno-devi-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Avoid carrying electronics inside the inner sanctum.', 2 FROM public.packages WHERE slug = 'hinduism-vaishno-devi-india';
DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'islam-ajmer-sharif-dargah-india');
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Hotel Stay', 0 FROM public.packages WHERE slug = 'islam-ajmer-sharif-dargah-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Meals Included', 1 FROM public.packages WHERE slug = 'islam-ajmer-sharif-dargah-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'AC Transit', 2 FROM public.packages WHERE slug = 'islam-ajmer-sharif-dargah-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Expert Guide', 3 FROM public.packages WHERE slug = 'islam-ajmer-sharif-dargah-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Entry Passes', 4 FROM public.packages WHERE slug = 'islam-ajmer-sharif-dargah-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Spiritual darshan and guided temple tour in Ajmer Sharif Dargah', 0 FROM public.packages WHERE slug = 'islam-ajmer-sharif-dargah-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Experience peaceful aarti assemblies and sacred rituals', 1 FROM public.packages WHERE slug = 'islam-ajmer-sharif-dargah-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Comfortable transfers to all holy sites', 2 FROM public.packages WHERE slug = 'islam-ajmer-sharif-dargah-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry valid government ID cards for verification.', 0 FROM public.packages WHERE slug = 'islam-ajmer-sharif-dargah-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Traditional decency wear is recommended inside temple corridors.', 1 FROM public.packages WHERE slug = 'islam-ajmer-sharif-dargah-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Avoid carrying electronics inside the inner sanctum.', 2 FROM public.packages WHERE slug = 'islam-ajmer-sharif-dargah-india';
DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'islam-al-aqsa-mosque-jerusalem-israel');
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Hotel Stay', 0 FROM public.packages WHERE slug = 'islam-al-aqsa-mosque-jerusalem-israel';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Meals Included', 1 FROM public.packages WHERE slug = 'islam-al-aqsa-mosque-jerusalem-israel';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'AC Transit', 2 FROM public.packages WHERE slug = 'islam-al-aqsa-mosque-jerusalem-israel';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Expert Guide', 3 FROM public.packages WHERE slug = 'islam-al-aqsa-mosque-jerusalem-israel';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Entry Passes', 4 FROM public.packages WHERE slug = 'islam-al-aqsa-mosque-jerusalem-israel';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Spiritual darshan and guided temple tour in Al Aqsa Mosque, Jerusalem', 0 FROM public.packages WHERE slug = 'islam-al-aqsa-mosque-jerusalem-israel';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Experience peaceful aarti assemblies and sacred rituals', 1 FROM public.packages WHERE slug = 'islam-al-aqsa-mosque-jerusalem-israel';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Comfortable transfers to all holy sites', 2 FROM public.packages WHERE slug = 'islam-al-aqsa-mosque-jerusalem-israel';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry valid government ID cards for verification.', 0 FROM public.packages WHERE slug = 'islam-al-aqsa-mosque-jerusalem-israel';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Traditional decency wear is recommended inside temple corridors.', 1 FROM public.packages WHERE slug = 'islam-al-aqsa-mosque-jerusalem-israel';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Avoid carrying electronics inside the inner sanctum.', 2 FROM public.packages WHERE slug = 'islam-al-aqsa-mosque-jerusalem-israel';
DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'islam-al-azhar-mosque-cairo-egypt');
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Hotel Stay', 0 FROM public.packages WHERE slug = 'islam-al-azhar-mosque-cairo-egypt';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Meals Included', 1 FROM public.packages WHERE slug = 'islam-al-azhar-mosque-cairo-egypt';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'AC Transit', 2 FROM public.packages WHERE slug = 'islam-al-azhar-mosque-cairo-egypt';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Expert Guide', 3 FROM public.packages WHERE slug = 'islam-al-azhar-mosque-cairo-egypt';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Entry Passes', 4 FROM public.packages WHERE slug = 'islam-al-azhar-mosque-cairo-egypt';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Spiritual darshan and guided temple tour in Al Azhar Mosque, Cairo', 0 FROM public.packages WHERE slug = 'islam-al-azhar-mosque-cairo-egypt';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Experience peaceful aarti assemblies and sacred rituals', 1 FROM public.packages WHERE slug = 'islam-al-azhar-mosque-cairo-egypt';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Comfortable transfers to all holy sites', 2 FROM public.packages WHERE slug = 'islam-al-azhar-mosque-cairo-egypt';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry valid government ID cards for verification.', 0 FROM public.packages WHERE slug = 'islam-al-azhar-mosque-cairo-egypt';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Traditional decency wear is recommended inside temple corridors.', 1 FROM public.packages WHERE slug = 'islam-al-azhar-mosque-cairo-egypt';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Avoid carrying electronics inside the inner sanctum.', 2 FROM public.packages WHERE slug = 'islam-al-azhar-mosque-cairo-egypt';
DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'islam-al-masjid-al-qiblatayn-medina-saudi-arabia');
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Hotel Stay', 0 FROM public.packages WHERE slug = 'islam-al-masjid-al-qiblatayn-medina-saudi-arabia';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Meals Included', 1 FROM public.packages WHERE slug = 'islam-al-masjid-al-qiblatayn-medina-saudi-arabia';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'AC Transit', 2 FROM public.packages WHERE slug = 'islam-al-masjid-al-qiblatayn-medina-saudi-arabia';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Expert Guide', 3 FROM public.packages WHERE slug = 'islam-al-masjid-al-qiblatayn-medina-saudi-arabia';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Entry Passes', 4 FROM public.packages WHERE slug = 'islam-al-masjid-al-qiblatayn-medina-saudi-arabia';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Spiritual darshan and guided temple tour in Al Masjid al Qiblatayn, Medina', 0 FROM public.packages WHERE slug = 'islam-al-masjid-al-qiblatayn-medina-saudi-arabia';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Experience peaceful aarti assemblies and sacred rituals', 1 FROM public.packages WHERE slug = 'islam-al-masjid-al-qiblatayn-medina-saudi-arabia';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Comfortable transfers to all holy sites', 2 FROM public.packages WHERE slug = 'islam-al-masjid-al-qiblatayn-medina-saudi-arabia';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry valid government ID cards for verification.', 0 FROM public.packages WHERE slug = 'islam-al-masjid-al-qiblatayn-medina-saudi-arabia';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Traditional decency wear is recommended inside temple corridors.', 1 FROM public.packages WHERE slug = 'islam-al-masjid-al-qiblatayn-medina-saudi-arabia';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Avoid carrying electronics inside the inner sanctum.', 2 FROM public.packages WHERE slug = 'islam-al-masjid-al-qiblatayn-medina-saudi-arabia';
DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'islam-data-darbar-lahore-pakistan');
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Hotel Stay', 0 FROM public.packages WHERE slug = 'islam-data-darbar-lahore-pakistan';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Meals Included', 1 FROM public.packages WHERE slug = 'islam-data-darbar-lahore-pakistan';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'AC Transit', 2 FROM public.packages WHERE slug = 'islam-data-darbar-lahore-pakistan';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Expert Guide', 3 FROM public.packages WHERE slug = 'islam-data-darbar-lahore-pakistan';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Entry Passes', 4 FROM public.packages WHERE slug = 'islam-data-darbar-lahore-pakistan';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Spiritual darshan and guided temple tour in Data Darbar, Lahore', 0 FROM public.packages WHERE slug = 'islam-data-darbar-lahore-pakistan';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Experience peaceful aarti assemblies and sacred rituals', 1 FROM public.packages WHERE slug = 'islam-data-darbar-lahore-pakistan';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Comfortable transfers to all holy sites', 2 FROM public.packages WHERE slug = 'islam-data-darbar-lahore-pakistan';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry valid government ID cards for verification.', 0 FROM public.packages WHERE slug = 'islam-data-darbar-lahore-pakistan';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Traditional decency wear is recommended inside temple corridors.', 1 FROM public.packages WHERE slug = 'islam-data-darbar-lahore-pakistan';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Avoid carrying electronics inside the inner sanctum.', 2 FROM public.packages WHERE slug = 'islam-data-darbar-lahore-pakistan';
DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'islam-dome-of-the-rock-jerusalem-israel');
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Hotel Stay', 0 FROM public.packages WHERE slug = 'islam-dome-of-the-rock-jerusalem-israel';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Meals Included', 1 FROM public.packages WHERE slug = 'islam-dome-of-the-rock-jerusalem-israel';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'AC Transit', 2 FROM public.packages WHERE slug = 'islam-dome-of-the-rock-jerusalem-israel';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Expert Guide', 3 FROM public.packages WHERE slug = 'islam-dome-of-the-rock-jerusalem-israel';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Entry Passes', 4 FROM public.packages WHERE slug = 'islam-dome-of-the-rock-jerusalem-israel';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Spiritual darshan and guided temple tour in Dome of the Rock, Jerusalem', 0 FROM public.packages WHERE slug = 'islam-dome-of-the-rock-jerusalem-israel';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Experience peaceful aarti assemblies and sacred rituals', 1 FROM public.packages WHERE slug = 'islam-dome-of-the-rock-jerusalem-israel';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Comfortable transfers to all holy sites', 2 FROM public.packages WHERE slug = 'islam-dome-of-the-rock-jerusalem-israel';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry valid government ID cards for verification.', 0 FROM public.packages WHERE slug = 'islam-dome-of-the-rock-jerusalem-israel';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Traditional decency wear is recommended inside temple corridors.', 1 FROM public.packages WHERE slug = 'islam-dome-of-the-rock-jerusalem-israel';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Avoid carrying electronics inside the inner sanctum.', 2 FROM public.packages WHERE slug = 'islam-dome-of-the-rock-jerusalem-israel';
DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'islam-imam-ali-shrine-najaf-iraq');
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Hotel Stay', 0 FROM public.packages WHERE slug = 'islam-imam-ali-shrine-najaf-iraq';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Meals Included', 1 FROM public.packages WHERE slug = 'islam-imam-ali-shrine-najaf-iraq';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'AC Transit', 2 FROM public.packages WHERE slug = 'islam-imam-ali-shrine-najaf-iraq';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Expert Guide', 3 FROM public.packages WHERE slug = 'islam-imam-ali-shrine-najaf-iraq';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Entry Passes', 4 FROM public.packages WHERE slug = 'islam-imam-ali-shrine-najaf-iraq';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Spiritual darshan and guided temple tour in Imam Ali Shrine, Najaf', 0 FROM public.packages WHERE slug = 'islam-imam-ali-shrine-najaf-iraq';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Experience peaceful aarti assemblies and sacred rituals', 1 FROM public.packages WHERE slug = 'islam-imam-ali-shrine-najaf-iraq';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Comfortable transfers to all holy sites', 2 FROM public.packages WHERE slug = 'islam-imam-ali-shrine-najaf-iraq';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry valid government ID cards for verification.', 0 FROM public.packages WHERE slug = 'islam-imam-ali-shrine-najaf-iraq';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Traditional decency wear is recommended inside temple corridors.', 1 FROM public.packages WHERE slug = 'islam-imam-ali-shrine-najaf-iraq';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Avoid carrying electronics inside the inner sanctum.', 2 FROM public.packages WHERE slug = 'islam-imam-ali-shrine-najaf-iraq';
DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'islam-imam-husayn-shrine-karbala-iraq');
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Hotel Stay', 0 FROM public.packages WHERE slug = 'islam-imam-husayn-shrine-karbala-iraq';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Meals Included', 1 FROM public.packages WHERE slug = 'islam-imam-husayn-shrine-karbala-iraq';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'AC Transit', 2 FROM public.packages WHERE slug = 'islam-imam-husayn-shrine-karbala-iraq';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Expert Guide', 3 FROM public.packages WHERE slug = 'islam-imam-husayn-shrine-karbala-iraq';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Entry Passes', 4 FROM public.packages WHERE slug = 'islam-imam-husayn-shrine-karbala-iraq';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Spiritual darshan and guided temple tour in Imam Husayn Shrine, Karbala', 0 FROM public.packages WHERE slug = 'islam-imam-husayn-shrine-karbala-iraq';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Experience peaceful aarti assemblies and sacred rituals', 1 FROM public.packages WHERE slug = 'islam-imam-husayn-shrine-karbala-iraq';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Comfortable transfers to all holy sites', 2 FROM public.packages WHERE slug = 'islam-imam-husayn-shrine-karbala-iraq';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry valid government ID cards for verification.', 0 FROM public.packages WHERE slug = 'islam-imam-husayn-shrine-karbala-iraq';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Traditional decency wear is recommended inside temple corridors.', 1 FROM public.packages WHERE slug = 'islam-imam-husayn-shrine-karbala-iraq';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Avoid carrying electronics inside the inner sanctum.', 2 FROM public.packages WHERE slug = 'islam-imam-husayn-shrine-karbala-iraq';
DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'islam-imam-reza-shrine-mashhad-iran');
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Hotel Stay', 0 FROM public.packages WHERE slug = 'islam-imam-reza-shrine-mashhad-iran';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Meals Included', 1 FROM public.packages WHERE slug = 'islam-imam-reza-shrine-mashhad-iran';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'AC Transit', 2 FROM public.packages WHERE slug = 'islam-imam-reza-shrine-mashhad-iran';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Expert Guide', 3 FROM public.packages WHERE slug = 'islam-imam-reza-shrine-mashhad-iran';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Entry Passes', 4 FROM public.packages WHERE slug = 'islam-imam-reza-shrine-mashhad-iran';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Spiritual darshan and guided temple tour in Imam Reza Shrine, Mashhad', 0 FROM public.packages WHERE slug = 'islam-imam-reza-shrine-mashhad-iran';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Experience peaceful aarti assemblies and sacred rituals', 1 FROM public.packages WHERE slug = 'islam-imam-reza-shrine-mashhad-iran';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Comfortable transfers to all holy sites', 2 FROM public.packages WHERE slug = 'islam-imam-reza-shrine-mashhad-iran';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry valid government ID cards for verification.', 0 FROM public.packages WHERE slug = 'islam-imam-reza-shrine-mashhad-iran';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Traditional decency wear is recommended inside temple corridors.', 1 FROM public.packages WHERE slug = 'islam-imam-reza-shrine-mashhad-iran';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Avoid carrying electronics inside the inner sanctum.', 2 FROM public.packages WHERE slug = 'islam-imam-reza-shrine-mashhad-iran';
DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'islam-mecca-saudi-arabia');
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Hotel Stay', 0 FROM public.packages WHERE slug = 'islam-mecca-saudi-arabia';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Meals Included', 1 FROM public.packages WHERE slug = 'islam-mecca-saudi-arabia';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'AC Transit', 2 FROM public.packages WHERE slug = 'islam-mecca-saudi-arabia';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Expert Guide', 3 FROM public.packages WHERE slug = 'islam-mecca-saudi-arabia';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Entry Passes', 4 FROM public.packages WHERE slug = 'islam-mecca-saudi-arabia';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Spiritual darshan and guided temple tour in Mecca', 0 FROM public.packages WHERE slug = 'islam-mecca-saudi-arabia';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Experience peaceful aarti assemblies and sacred rituals', 1 FROM public.packages WHERE slug = 'islam-mecca-saudi-arabia';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Comfortable transfers to all holy sites', 2 FROM public.packages WHERE slug = 'islam-mecca-saudi-arabia';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry valid government ID cards for verification.', 0 FROM public.packages WHERE slug = 'islam-mecca-saudi-arabia';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Traditional decency wear is recommended inside temple corridors.', 1 FROM public.packages WHERE slug = 'islam-mecca-saudi-arabia';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Avoid carrying electronics inside the inner sanctum.', 2 FROM public.packages WHERE slug = 'islam-mecca-saudi-arabia';
DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'islam-medina-saudi-arabia');
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Hotel Stay', 0 FROM public.packages WHERE slug = 'islam-medina-saudi-arabia';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Meals Included', 1 FROM public.packages WHERE slug = 'islam-medina-saudi-arabia';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'AC Transit', 2 FROM public.packages WHERE slug = 'islam-medina-saudi-arabia';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Expert Guide', 3 FROM public.packages WHERE slug = 'islam-medina-saudi-arabia';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Entry Passes', 4 FROM public.packages WHERE slug = 'islam-medina-saudi-arabia';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Spiritual darshan and guided temple tour in Medina', 0 FROM public.packages WHERE slug = 'islam-medina-saudi-arabia';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Experience peaceful aarti assemblies and sacred rituals', 1 FROM public.packages WHERE slug = 'islam-medina-saudi-arabia';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Comfortable transfers to all holy sites', 2 FROM public.packages WHERE slug = 'islam-medina-saudi-arabia';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry valid government ID cards for verification.', 0 FROM public.packages WHERE slug = 'islam-medina-saudi-arabia';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Traditional decency wear is recommended inside temple corridors.', 1 FROM public.packages WHERE slug = 'islam-medina-saudi-arabia';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Avoid carrying electronics inside the inner sanctum.', 2 FROM public.packages WHERE slug = 'islam-medina-saudi-arabia';
DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'islam-old-city-jerusalem-israel');
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Hotel Stay', 0 FROM public.packages WHERE slug = 'islam-old-city-jerusalem-israel';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Meals Included', 1 FROM public.packages WHERE slug = 'islam-old-city-jerusalem-israel';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'AC Transit', 2 FROM public.packages WHERE slug = 'islam-old-city-jerusalem-israel';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Expert Guide', 3 FROM public.packages WHERE slug = 'islam-old-city-jerusalem-israel';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Entry Passes', 4 FROM public.packages WHERE slug = 'islam-old-city-jerusalem-israel';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Spiritual darshan and guided temple tour in Old City Jerusalem', 0 FROM public.packages WHERE slug = 'islam-old-city-jerusalem-israel';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Experience peaceful aarti assemblies and sacred rituals', 1 FROM public.packages WHERE slug = 'islam-old-city-jerusalem-israel';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Comfortable transfers to all holy sites', 2 FROM public.packages WHERE slug = 'islam-old-city-jerusalem-israel';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry valid government ID cards for verification.', 0 FROM public.packages WHERE slug = 'islam-old-city-jerusalem-israel';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Traditional decency wear is recommended inside temple corridors.', 1 FROM public.packages WHERE slug = 'islam-old-city-jerusalem-israel';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Avoid carrying electronics inside the inner sanctum.', 2 FROM public.packages WHERE slug = 'islam-old-city-jerusalem-israel';
DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'islam-quba-mosque-medina-saudi-arabia');
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Hotel Stay', 0 FROM public.packages WHERE slug = 'islam-quba-mosque-medina-saudi-arabia';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Meals Included', 1 FROM public.packages WHERE slug = 'islam-quba-mosque-medina-saudi-arabia';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'AC Transit', 2 FROM public.packages WHERE slug = 'islam-quba-mosque-medina-saudi-arabia';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Expert Guide', 3 FROM public.packages WHERE slug = 'islam-quba-mosque-medina-saudi-arabia';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Entry Passes', 4 FROM public.packages WHERE slug = 'islam-quba-mosque-medina-saudi-arabia';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Spiritual darshan and guided temple tour in Quba Mosque, Medina', 0 FROM public.packages WHERE slug = 'islam-quba-mosque-medina-saudi-arabia';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Experience peaceful aarti assemblies and sacred rituals', 1 FROM public.packages WHERE slug = 'islam-quba-mosque-medina-saudi-arabia';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Comfortable transfers to all holy sites', 2 FROM public.packages WHERE slug = 'islam-quba-mosque-medina-saudi-arabia';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry valid government ID cards for verification.', 0 FROM public.packages WHERE slug = 'islam-quba-mosque-medina-saudi-arabia';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Traditional decency wear is recommended inside temple corridors.', 1 FROM public.packages WHERE slug = 'islam-quba-mosque-medina-saudi-arabia';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Avoid carrying electronics inside the inner sanctum.', 2 FROM public.packages WHERE slug = 'islam-quba-mosque-medina-saudi-arabia';
DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'islam-touba-senegal');
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Hotel Stay', 0 FROM public.packages WHERE slug = 'islam-touba-senegal';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Meals Included', 1 FROM public.packages WHERE slug = 'islam-touba-senegal';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'AC Transit', 2 FROM public.packages WHERE slug = 'islam-touba-senegal';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Expert Guide', 3 FROM public.packages WHERE slug = 'islam-touba-senegal';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Entry Passes', 4 FROM public.packages WHERE slug = 'islam-touba-senegal';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Spiritual darshan and guided temple tour in Touba', 0 FROM public.packages WHERE slug = 'islam-touba-senegal';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Experience peaceful aarti assemblies and sacred rituals', 1 FROM public.packages WHERE slug = 'islam-touba-senegal';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Comfortable transfers to all holy sites', 2 FROM public.packages WHERE slug = 'islam-touba-senegal';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry valid government ID cards for verification.', 0 FROM public.packages WHERE slug = 'islam-touba-senegal';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Traditional decency wear is recommended inside temple corridors.', 1 FROM public.packages WHERE slug = 'islam-touba-senegal';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Avoid carrying electronics inside the inner sanctum.', 2 FROM public.packages WHERE slug = 'islam-touba-senegal';
DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'islam-umayyad-mosque-damascus-syria');
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Hotel Stay', 0 FROM public.packages WHERE slug = 'islam-umayyad-mosque-damascus-syria';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Meals Included', 1 FROM public.packages WHERE slug = 'islam-umayyad-mosque-damascus-syria';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'AC Transit', 2 FROM public.packages WHERE slug = 'islam-umayyad-mosque-damascus-syria';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Expert Guide', 3 FROM public.packages WHERE slug = 'islam-umayyad-mosque-damascus-syria';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Entry Passes', 4 FROM public.packages WHERE slug = 'islam-umayyad-mosque-damascus-syria';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Spiritual darshan and guided temple tour in Umayyad Mosque, Damascus', 0 FROM public.packages WHERE slug = 'islam-umayyad-mosque-damascus-syria';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Experience peaceful aarti assemblies and sacred rituals', 1 FROM public.packages WHERE slug = 'islam-umayyad-mosque-damascus-syria';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Comfortable transfers to all holy sites', 2 FROM public.packages WHERE slug = 'islam-umayyad-mosque-damascus-syria';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry valid government ID cards for verification.', 0 FROM public.packages WHERE slug = 'islam-umayyad-mosque-damascus-syria';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Traditional decency wear is recommended inside temple corridors.', 1 FROM public.packages WHERE slug = 'islam-umayyad-mosque-damascus-syria';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Avoid carrying electronics inside the inner sanctum.', 2 FROM public.packages WHERE slug = 'islam-umayyad-mosque-damascus-syria';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'family-alleppey-backwaters');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/family/Alleppey Backwaters.jpg', 'Alleppey Backwaters family tour destination in Alappuzha, Kerala', true, 0
FROM public.packages WHERE slug = 'family-alleppey-backwaters';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'family-amber-fort');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/family/Amber Fort.jpg', 'Amber Fort family tour destination in Jaipur, Rajasthan', true, 0
FROM public.packages WHERE slug = 'family-amber-fort';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'family-athirappilly-waterfalls');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/family/Athirappilly Waterfalls.jpg', 'Athirappilly Waterfalls family tour destination in Thrissur, Kerala', true, 0
FROM public.packages WHERE slug = 'family-athirappilly-waterfalls';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'family-big-ben');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/family/Big Ben.jpg', 'Big Ben family tour destination in London, United Kingdom', true, 0
FROM public.packages WHERE slug = 'family-big-ben';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'family-burj-khalifa');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/family/Burj Khalifa.jpg', 'Burj Khalifa family tour destination in Dubai, United Arab Emirates', true, 0
FROM public.packages WHERE slug = 'family-burj-khalifa';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'family-chitrakote-waterfalls');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/family/Chitrakote Waterfalls.jpg', 'Chitrakote Waterfalls family tour destination in Bastar, Chhattisgarh', true, 0
FROM public.packages WHERE slug = 'family-chitrakote-waterfalls';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'family-city-palace-udaipur');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/family/City Palace, Udaipur.jpg', 'City Palace, Udaipur family tour destination in Udaipur, Rajasthan', true, 0
FROM public.packages WHERE slug = 'family-city-palace-udaipur';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'family-colosseum');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/family/Colosseum.jpg', 'Colosseum family tour destination in Rome, Italy', true, 0
FROM public.packages WHERE slug = 'family-colosseum';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'family-dawki-river-umngot-river');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/family/Dawki River (Umngot River).webp', 'Dawki River family tour destination in West Jaintia Hills, Meghalaya', true, 0
FROM public.packages WHERE slug = 'family-dawki-river-umngot-river';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'family-disneyland-paris');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/family/Disneyland Paris.webp', 'Disneyland Paris family tour destination in Marne-la-Vallée, France', true, 0
FROM public.packages WHERE slug = 'family-disneyland-paris';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'family-dubai-miracle-garden');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/family/Dubai Miracle Garden.jpg', 'Dubai Miracle Garden family tour destination in Dubai, United Arab Emirates', true, 0
FROM public.packages WHERE slug = 'family-dubai-miracle-garden';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'family-dudhsagar-falls');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/family/Dudhsagar Falls.jpg', 'Dudhsagar Falls family tour destination in Goa / Karnataka', true, 0
FROM public.packages WHERE slug = 'family-dudhsagar-falls';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'family-eiffel-tower');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/family/Eiffel Tower.jpg', 'Eiffel Tower family tour destination in Paris, France', true, 0
FROM public.packages WHERE slug = 'family-eiffel-tower';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'family-gardens-by-the-bay');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/family/Gardens by the Bay.jpg', 'Gardens by the Bay family tour destination in Singapore', true, 0
FROM public.packages WHERE slug = 'family-gardens-by-the-bay';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'family-glacier-3000');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/family/Glacier 3000.jpg', 'Glacier 3000 family tour destination in Les Diablerets, Switzerland', true, 0
FROM public.packages WHERE slug = 'family-glacier-3000';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'family-gol-gumbaz');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/family/Gol Gumbaz.jpg', 'Gol Gumbaz family tour destination in Vijayapura, Karnataka', true, 0
FROM public.packages WHERE slug = 'family-gol-gumbaz';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'family-hampi-monuments');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/family/Hampi Monuments.jpg', 'Hampi Monuments family tour destination in Vijayanagara, Karnataka', true, 0
FROM public.packages WHERE slug = 'family-hampi-monuments';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'family-hawa-mahal');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/family/Hawa Mahal.jpg', 'Hawa Mahal family tour destination in Jaipur, Rajasthan', true, 0
FROM public.packages WHERE slug = 'family-hawa-mahal';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'family-leaning-tower-of-pisa');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/family/Leaning Tower of Pisa.webp', 'Leaning Tower of Pisa family tour destination in Pisa, Italy', true, 0
FROM public.packages WHERE slug = 'family-leaning-tower-of-pisa';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'family-living-root-bridges');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/family/Living Root Bridges.jpg', 'Living Root Bridges family tour destination in Cherrapunji, Meghalaya', true, 0
FROM public.packages WHERE slug = 'family-living-root-bridges';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'family-london-eye');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/family/London Eye.jpg', 'London Eye family tour destination in London, United Kingdom', true, 0
FROM public.packages WHERE slug = 'family-london-eye';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'family-marina-bay-sands-skypark');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/family/Marina Bay Sands SkyPark.jpg', 'Marina Bay Sands SkyPark family tour destination in Singapore', true, 0
FROM public.packages WHERE slug = 'family-marina-bay-sands-skypark';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'family-mehrangarh-fort');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/family/Mehrangarh Fort.jpg', 'Mehrangarh Fort family tour destination in Jodhpur, Rajasthan', true, 0
FROM public.packages WHERE slug = 'family-mehrangarh-fort';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'family-mount-fuji');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/family/Mount Fuji.jpg', 'Mount Fuji family tour destination in Honshu, Japan', true, 0
FROM public.packages WHERE slug = 'family-mount-fuji';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'family-mount-titlis');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/family/Mount Titlis.jpg', 'Mount Titlis family tour destination in Engelberg, Switzerland', true, 0
FROM public.packages WHERE slug = 'family-mount-titlis';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'family-munnar-tea-gardens');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/family/Munnar Tea Gardens.jpg', 'Munnar Tea Gardens family tour destination in Munnar, Kerala', true, 0
FROM public.packages WHERE slug = 'family-munnar-tea-gardens';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'family-museum-of-the-future');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/family/Museum of the Future.jpeg', 'Museum of the Future family tour destination in Dubai, United Arab Emirates', true, 0
FROM public.packages WHERE slug = 'family-museum-of-the-future';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'family-mysore-palace');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/family/Mysore Palace.jpg', 'Mysore Palace family tour destination in Mysore, Karnataka', true, 0
FROM public.packages WHERE slug = 'family-mysore-palace';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'family-niagara-falls');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/family/Niagara Falls.jpg', 'Niagara Falls family tour destination in Ontario, Canada / New York, USA', true, 0
FROM public.packages WHERE slug = 'family-niagara-falls';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'family-nubra-valley');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/family/Nubra Valley.jpg', 'Nubra Valley family tour destination in Ladakh', true, 0
FROM public.packages WHERE slug = 'family-nubra-valley';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'family-palm-jumeirah');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/family/Palm Jumeirah.jpg', 'Palm Jumeirah family tour destination in Dubai, United Arab Emirates', true, 0
FROM public.packages WHERE slug = 'family-palm-jumeirah';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'family-pangong-lake');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/family/Pangong Lake.jpg', 'Pangong Lake family tour destination in Ladakh', true, 0
FROM public.packages WHERE slug = 'family-pangong-lake';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'family-radhanagar-beach');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/family/Radhanagar Beach.jpg', 'Radhanagar Beach family tour destination in Andaman & Nicobar Islands', true, 0
FROM public.packages WHERE slug = 'family-radhanagar-beach';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'family-rohtang-pass');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/family/Rohtang-Pass.jpg', 'Rohtang Pass family tour destination in Manali, Himachal Pradesh', true, 0
FROM public.packages WHERE slug = 'family-rohtang-pass';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'family-sentosa-island');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/family/Sentosa Island.jpg', 'Sentosa Island family tour destination in Singapore', true, 0
FROM public.packages WHERE slug = 'family-sentosa-island';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'family-swiss-alps-jungfraujoch');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/family/Swiss Alps (Jungfraujoch).webp', 'Swiss Alps family tour destination in Bernese Oberland, Switzerland', true, 0
FROM public.packages WHERE slug = 'family-swiss-alps-jungfraujoch';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'family-taj-mahal');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/family/Taj Mahal.webp', 'Taj Mahal family tour destination in Agra, Uttar Pradesh', true, 0
FROM public.packages WHERE slug = 'family-taj-mahal';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'family-tokyo-disneyland');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/family/Tokyo Disneyland.jpg', 'Tokyo Disneyland family tour destination in Tokyo, Japan', true, 0
FROM public.packages WHERE slug = 'family-tokyo-disneyland';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'family-universal-studios-japan');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/family/Universal Studios Japan.jpg', 'Universal Studios Japan family tour destination in Osaka, Japan', true, 0
FROM public.packages WHERE slug = 'family-universal-studios-japan';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'family-venice-grand-canal');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/family/Venice Grand Canal.jpg', 'Venice Grand Canal family tour destination in Venice, Italy', true, 0
FROM public.packages WHERE slug = 'family-venice-grand-canal';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'buddhism-adam-s-peak-sri-pada-sri-lanka');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/pilgrimage/Buddhism/Adam’s Peak (Sri Pada), Sri Lanka.jpg', 'Adam’s Peak (Sri Pada) buddhist pilgrimage destination in Ratnapura, Sri Lanka', true, 0
FROM public.packages WHERE slug = 'buddhism-adam-s-peak-sri-pada-sri-lanka';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'buddhism-bodh-gaya-india');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/pilgrimage/Buddhism/Bodh Gaya, India.jpg', 'Bodh Gaya buddhist pilgrimage destination in Gaya, Bihar, India', true, 0
FROM public.packages WHERE slug = 'buddhism-bodh-gaya-india';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'buddhism-borobudur-temple-indonesia');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/pilgrimage/Buddhism/Borobudur Temple, Indonesia.jpg', 'Borobudur Temple buddhist pilgrimage destination in Magelang, Indonesia', true, 0
FROM public.packages WHERE slug = 'buddhism-borobudur-temple-indonesia';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'buddhism-dambulla-cave-temple-sri-lanka');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/pilgrimage/Buddhism/Dambulla Cave Temple, Sri Lanka.jpg', 'Dambulla Cave Temple buddhist pilgrimage destination in Matale, Sri Lanka', true, 0
FROM public.packages WHERE slug = 'buddhism-dambulla-cave-temple-sri-lanka';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'buddhism-jokhang-temple-lhasa-tibet');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/pilgrimage/Buddhism/Jokhang Temple, Lhasa, Tibet.jpg', 'Jokhang Temple, Lhasa buddhist pilgrimage destination in Lhasa, Tibet', true, 0
FROM public.packages WHERE slug = 'buddhism-jokhang-temple-lhasa-tibet';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'buddhism-kumano-kodo-japan');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/pilgrimage/Buddhism/Kumano Kodo, Japan.jpg', 'Kumano Kodo buddhist pilgrimage destination in Wakayama, Japan', true, 0
FROM public.packages WHERE slug = 'buddhism-kumano-kodo-japan';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'buddhism-kushinagar-india');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/pilgrimage/Buddhism/Kushinagar, India.webp', 'Kushinagar buddhist pilgrimage destination in Kushinagar, Uttar Pradesh, India', true, 0
FROM public.packages WHERE slug = 'buddhism-kushinagar-india';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'buddhism-lumbini-nepal');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/pilgrimage/Buddhism/Lumbini, Nepal.jpg', 'Lumbini buddhist pilgrimage destination in Rupandehi, Nepal', true, 0
FROM public.packages WHERE slug = 'buddhism-lumbini-nepal';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'buddhism-mahabodhi-temple-bagan-myanmar');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/pilgrimage/Buddhism/Mahabodhi Temple, Bagan, Myanmar.jpg', 'Mahabodhi Temple, Bagan buddhist pilgrimage destination in Bagan, Myanmar', true, 0
FROM public.packages WHERE slug = 'buddhism-mahabodhi-temple-bagan-myanmar';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'buddhism-mount-kailash-tibet');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/pilgrimage/Buddhism/Mount Kailash, Tibet.webp', 'Mount Kailash buddhist pilgrimage destination in Ngari, Tibet', true, 0
FROM public.packages WHERE slug = 'buddhism-mount-kailash-tibet';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'buddhism-nalanda-india');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/pilgrimage/Buddhism/Nalanda, India.jpg', 'Nalanda buddhist pilgrimage destination in Nalanda, Bihar, India', true, 0
FROM public.packages WHERE slug = 'buddhism-nalanda-india';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'buddhism-rajgir-india');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/pilgrimage/Buddhism/Rajgir, India.jpg', 'Rajgir buddhist pilgrimage destination in Nalanda, Bihar, India', true, 0
FROM public.packages WHERE slug = 'buddhism-rajgir-india';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'buddhism-sarnath-india');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/pilgrimage/Buddhism/Sarnath, India.jpg', 'Sarnath buddhist pilgrimage destination in Varanasi, Uttar Pradesh, India', true, 0
FROM public.packages WHERE slug = 'buddhism-sarnath-india';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'buddhism-shwedagon-pagoda-myanmar');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/pilgrimage/Buddhism/Shwedagon Pagoda, Myanmar.jpg', 'Shwedagon Pagoda buddhist pilgrimage destination in Yangon, Myanmar', true, 0
FROM public.packages WHERE slug = 'buddhism-shwedagon-pagoda-myanmar';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'buddhism-tiger-s-nest-monastery-paro-taktsang-bhutan');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/pilgrimage/Buddhism/Tiger’s Nest Monastery (Paro Taktsang), Bhutan.jpg', 'Tiger’s Nest Monastery buddhist pilgrimage destination in Paro, Bhutan', true, 0
FROM public.packages WHERE slug = 'buddhism-tiger-s-nest-monastery-paro-taktsang-bhutan';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'christianity-basilica-of-our-lady-of-guadalupe-mexico');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/pilgrimage/Christianity/Basilica of Our Lady of Guadalupe, Mexico.jpg', 'Basilica of Our Lady of Guadalupe christian pilgrimage destination in Mexico City, Mexico', true, 0
FROM public.packages WHERE slug = 'christianity-basilica-of-our-lady-of-guadalupe-mexico';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'christianity-basilica-of-saint-peter-vatican-city');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/pilgrimage/Christianity/Basilica of Saint Peter, Vatican City.jpg', 'Basilica of Saint Peter, Vatican City christian pilgrimage destination in Vatican City', true, 0
FROM public.packages WHERE slug = 'christianity-basilica-of-saint-peter-vatican-city';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'christianity-bethlehem-palestine');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/pilgrimage/Christianity/Bethlehem, Palestine.jpg', 'Bethlehem christian pilgrimage destination in West Bank, Palestine', true, 0
FROM public.packages WHERE slug = 'christianity-bethlehem-palestine';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'christianity-camino-de-santiago-spain');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/pilgrimage/Christianity/Camino de Santiago, Spain.jpg', 'Camino de Santiago, Spain christian pilgrimage destination in Galicia, Spain', true, 0
FROM public.packages WHERE slug = 'christianity-camino-de-santiago-spain';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'christianity-canterbury-cathedral-england');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/pilgrimage/Christianity/Canterbury Cathedral, England.jpg', 'Canterbury Cathedral christian pilgrimage destination in Kent, England', true, 0
FROM public.packages WHERE slug = 'christianity-canterbury-cathedral-england';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'christianity-church-of-the-holy-sepulchre-jerusalem-israel');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/pilgrimage/Christianity/Church of the Holy Sepulchre, Jerusalem, Israel.jpg', 'Church of the Holy Sepulchre, Jerusalem christian pilgrimage destination in Jerusalem, Israel', true, 0
FROM public.packages WHERE slug = 'christianity-church-of-the-holy-sepulchre-jerusalem-israel';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'christianity-el-santuario-de-chimayo-new-mexico-usa');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/pilgrimage/Christianity/El Santuario de Chimayo, New Mexico, USA.jpg', 'El Santuario de Chimayo christian pilgrimage destination in New Mexico, USA', true, 0
FROM public.packages WHERE slug = 'christianity-el-santuario-de-chimayo-new-mexico-usa';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'christianity-f-tima-portugal');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/pilgrimage/Christianity/Fátima, Portugal.jpg', 'Fátima christian pilgrimage destination in Santarém, Portugal', true, 0
FROM public.packages WHERE slug = 'christianity-f-tima-portugal';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'christianity-lalibela-ethiopia');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/pilgrimage/Christianity/Lalibela, Ethiopia.webp', 'Lalibela christian pilgrimage destination in Amhara, Ethiopia', true, 0
FROM public.packages WHERE slug = 'christianity-lalibela-ethiopia';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'christianity-mount-athos-greece');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/pilgrimage/Christianity/Mount Athos, Greece.jpg', 'Mount Athos christian pilgrimage destination in Chalkidiki, Greece', true, 0
FROM public.packages WHERE slug = 'christianity-mount-athos-greece';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'christianity-old-city-jerusalem-israel');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/pilgrimage/Christianity/Old City Jerusalem, Israel.jpg', 'Old City Jerusalem christian pilgrimage destination in Jerusalem, Israel', true, 0
FROM public.packages WHERE slug = 'christianity-old-city-jerusalem-israel';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'christianity-sanctuary-of-our-lady-of-lourdes-france');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/pilgrimage/Christianity/Sanctuary of Our Lady of Lourdes, France.jpg', 'Sanctuary of Our Lady of Lourdes christian pilgrimage destination in Hautes-Pyrénées, France', true, 0
FROM public.packages WHERE slug = 'christianity-sanctuary-of-our-lady-of-lourdes-france';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'christianity-santiago-atitl-n-guatemala');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/pilgrimage/Christianity/Santiago Atitlán, Guatemala.jpg', 'Santiago Atitlán christian pilgrimage destination in Sololá, Guatemala', true, 0
FROM public.packages WHERE slug = 'christianity-santiago-atitl-n-guatemala';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'christianity-santu-rio-de-nossa-senhora-aparecida-brazil');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/pilgrimage/Christianity/Santuário de Nossa Senhora Aparecida, Brazil.jpg', 'Santuário de Nossa Senhora Aparecida christian pilgrimage destination in São Paulo, Brazil', true, 0
FROM public.packages WHERE slug = 'christianity-santu-rio-de-nossa-senhora-aparecida-brazil';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'christianity-vatican-city-italy');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/pilgrimage/Christianity/Vatican City, Italy.jpg', 'Vatican City christian pilgrimage destination in Vatican City, Italy', true, 0
FROM public.packages WHERE slug = 'christianity-vatican-city-italy';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'hinduism-adam-s-peak-sri-pada-sri-lanka');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/pilgrimage/Hinduism/Adam’s Peak (Sri Pada), Sri Lanka.jpg', 'Adam’s Peak (Sri Pada) hindu pilgrimage destination in Ratnapura, Sri Lanka', true, 0
FROM public.packages WHERE slug = 'hinduism-adam-s-peak-sri-pada-sri-lanka';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'hinduism-badrinath-india');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/pilgrimage/Hinduism/Badrinath, India.jpg', 'Badrinath hindu pilgrimage destination in Chamoli, Uttarakhand, India', true, 0
FROM public.packages WHERE slug = 'hinduism-badrinath-india';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'hinduism-dwarkadhish-temple-dwarka-india');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/pilgrimage/Hinduism/Dwarkadhish Temple (Dwarka), India.jpg', 'Dwarkadhish Temple hindu pilgrimage destination in Dwarka, Gujarat, India', true, 0
FROM public.packages WHERE slug = 'hinduism-dwarkadhish-temple-dwarka-india';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'hinduism-golden-temple-harmandir-sahib-amritsar-india');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/pilgrimage/Hinduism/Golden Temple (Harmandir Sahib), Amritsar, India.jpg', 'Golden Temple hindu pilgrimage destination in Amritsar, Punjab, India', true, 0
FROM public.packages WHERE slug = 'hinduism-golden-temple-harmandir-sahib-amritsar-india';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'hinduism-haridwar-rishikesh-india');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/pilgrimage/Hinduism/Haridwar & Rishikesh, India.jpg', 'Haridwar & Rishikesh hindu pilgrimage destination in Uttarakhand, India', true, 0
FROM public.packages WHERE slug = 'hinduism-haridwar-rishikesh-india';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'hinduism-jagannath-temple-puri-india');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/pilgrimage/Hinduism/Jagannath Temple (Puri), India.jpg', 'Jagannath Temple hindu pilgrimage destination in Puri, Odisha, India', true, 0
FROM public.packages WHERE slug = 'hinduism-jagannath-temple-puri-india';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'hinduism-kashi-vishwanath-varanasi-india');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/pilgrimage/Hinduism/Kashi Vishwanath (Varanasi), India.jpg', 'Kashi Vishwanath hindu pilgrimage destination in Varanasi, Uttar Pradesh, India', true, 0
FROM public.packages WHERE slug = 'hinduism-kashi-vishwanath-varanasi-india';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'hinduism-kedarnath-india');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/pilgrimage/Hinduism/Kedarnath, India.jpg', 'Kedarnath hindu pilgrimage destination in Rudraprayag, Uttarakhand, India', true, 0
FROM public.packages WHERE slug = 'hinduism-kedarnath-india';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'hinduism-mahakaleshwar-temple-ujjain-india');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/pilgrimage/Hinduism/Mahakaleshwar Temple (Ujjain), India.jpg', 'Mahakaleshwar Temple hindu pilgrimage destination in Ujjain, Madhya Pradesh, India', true, 0
FROM public.packages WHERE slug = 'hinduism-mahakaleshwar-temple-ujjain-india';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'hinduism-mount-kailash-tibet');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/pilgrimage/Hinduism/Mount Kailash, Tibet.webp', 'Mount Kailash hindu pilgrimage destination in Ngari, Tibet', true, 0
FROM public.packages WHERE slug = 'hinduism-mount-kailash-tibet';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'hinduism-rameswaram-india');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/pilgrimage/Hinduism/Rameswaram, India.jpg', 'Rameswaram hindu pilgrimage destination in Ramanathapuram, Tamil Nadu, India', true, 0
FROM public.packages WHERE slug = 'hinduism-rameswaram-india';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'hinduism-somnath-temple-india');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/pilgrimage/Hinduism/Somnath Temple, India.jpg', 'Somnath Temple hindu pilgrimage destination in Prabhas Patan, Gujarat, India', true, 0
FROM public.packages WHERE slug = 'hinduism-somnath-temple-india';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'hinduism-tirupati-balaji-temple-india');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/pilgrimage/Hinduism/Tirupati Balaji Temple, India.webp', 'Tirupati Balaji Temple hindu pilgrimage destination in Tirupati, Andhra Pradesh, India', true, 0
FROM public.packages WHERE slug = 'hinduism-tirupati-balaji-temple-india';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'hinduism-trimbakeshwar-temple-nashik-india');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/pilgrimage/Hinduism/Trimbakeshwar Temple (Nashik), India.jpg', 'Trimbakeshwar Temple hindu pilgrimage destination in Nashik, Maharashtra, India', true, 0
FROM public.packages WHERE slug = 'hinduism-trimbakeshwar-temple-nashik-india';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'hinduism-vaishno-devi-india');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/pilgrimage/Hinduism/Vaishno Devi, India.jpg', 'Vaishno Devi hindu pilgrimage destination in Katra, Jammu & Kashmir, India', true, 0
FROM public.packages WHERE slug = 'hinduism-vaishno-devi-india';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'islam-ajmer-sharif-dargah-india');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/pilgrimage/Islam/Ajmer Sharif Dargah, India.jpg', 'Ajmer Sharif Dargah islamic pilgrimage destination in Ajmer, Rajasthan, India', true, 0
FROM public.packages WHERE slug = 'islam-ajmer-sharif-dargah-india';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'islam-al-aqsa-mosque-jerusalem-israel');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/pilgrimage/Islam/Al-Aqsa Mosque, Jerusalem, Israel.jpg', 'Al Aqsa Mosque, Jerusalem islamic pilgrimage destination in Jerusalem, Israel', true, 0
FROM public.packages WHERE slug = 'islam-al-aqsa-mosque-jerusalem-israel';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'islam-al-azhar-mosque-cairo-egypt');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/pilgrimage/Islam/Al-Azhar Mosque, Cairo, Egypt.jpg', 'Al Azhar Mosque, Cairo islamic pilgrimage destination in Cairo, Egypt', true, 0
FROM public.packages WHERE slug = 'islam-al-azhar-mosque-cairo-egypt';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'islam-al-masjid-al-qiblatayn-medina-saudi-arabia');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/pilgrimage/Islam/Al-Masjid al-Qiblatayn, Medina, Saudi Arabia.jpg', 'Al Masjid al Qiblatayn, Medina islamic pilgrimage destination in Medina, Saudi Arabia', true, 0
FROM public.packages WHERE slug = 'islam-al-masjid-al-qiblatayn-medina-saudi-arabia';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'islam-data-darbar-lahore-pakistan');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/pilgrimage/Islam/Data Darbar, Lahore, Pakistan.jpg', 'Data Darbar, Lahore islamic pilgrimage destination in Lahore, Pakistan', true, 0
FROM public.packages WHERE slug = 'islam-data-darbar-lahore-pakistan';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'islam-dome-of-the-rock-jerusalem-israel');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/pilgrimage/Islam/Dome of the Rock, Jerusalem, Israel.jpg', 'Dome of the Rock, Jerusalem islamic pilgrimage destination in Jerusalem, Israel', true, 0
FROM public.packages WHERE slug = 'islam-dome-of-the-rock-jerusalem-israel';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'islam-imam-ali-shrine-najaf-iraq');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/pilgrimage/Islam/Imam Ali Shrine, Najaf, Iraq.jpg', 'Imam Ali Shrine, Najaf islamic pilgrimage destination in Najaf, Iraq', true, 0
FROM public.packages WHERE slug = 'islam-imam-ali-shrine-najaf-iraq';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'islam-imam-husayn-shrine-karbala-iraq');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/pilgrimage/Islam/Imam Husayn Shrine, Karbala, Iraq.jpg', 'Imam Husayn Shrine, Karbala islamic pilgrimage destination in Karbala, Iraq', true, 0
FROM public.packages WHERE slug = 'islam-imam-husayn-shrine-karbala-iraq';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'islam-imam-reza-shrine-mashhad-iran');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/pilgrimage/Islam/Imam Reza Shrine, Mashhad, Iran.jpg', 'Imam Reza Shrine, Mashhad islamic pilgrimage destination in Mashhad, Iran', true, 0
FROM public.packages WHERE slug = 'islam-imam-reza-shrine-mashhad-iran';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'islam-mecca-saudi-arabia');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/pilgrimage/Islam/Mecca, Saudi Arabia.jpg', 'Mecca islamic pilgrimage destination in Makkah, Saudi Arabia', true, 0
FROM public.packages WHERE slug = 'islam-mecca-saudi-arabia';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'islam-medina-saudi-arabia');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/pilgrimage/Islam/Medina, Saudi Arabia.jpg', 'Medina islamic pilgrimage destination in Saudi Arabia', true, 0
FROM public.packages WHERE slug = 'islam-medina-saudi-arabia';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'islam-old-city-jerusalem-israel');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/pilgrimage/Islam/Old City Jerusalem, Israel.jpg', 'Old City Jerusalem islamic pilgrimage destination in Jerusalem, Israel', true, 0
FROM public.packages WHERE slug = 'islam-old-city-jerusalem-israel';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'islam-quba-mosque-medina-saudi-arabia');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/pilgrimage/Islam/Quba Mosque, Medina, Saudi Arabia.jpg', 'Quba Mosque, Medina islamic pilgrimage destination in Medina, Saudi Arabia', true, 0
FROM public.packages WHERE slug = 'islam-quba-mosque-medina-saudi-arabia';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'islam-touba-senegal');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/pilgrimage/Islam/Touba, Senegal.webp', 'Touba islamic pilgrimage destination in Diourbel, Senegal', true, 0
FROM public.packages WHERE slug = 'islam-touba-senegal';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'islam-umayyad-mosque-damascus-syria');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/pilgrimage/Islam/Umayyad Mosque, Damascus, Syria.jpg', 'Umayyad Mosque, Damascus islamic pilgrimage destination in Damascus, Syria', true, 0
FROM public.packages WHERE slug = 'islam-umayyad-mosque-damascus-syria';
INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, true, false,
  true, false, false,
  false, true, false,
  'Accessibility features available on request.', true
FROM public.packages WHERE slug = 'family-alleppey-backwaters'
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;
INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, true, true,
  true, true, false,
  false, true, false,
  NULL, true
FROM public.packages WHERE slug = 'family-amber-fort'
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;
INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, false, false,
  false, false, false,
  false, false, true,
  NULL, false
FROM public.packages WHERE slug = 'family-athirappilly-waterfalls'
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;
INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, true, true,
  true, true, true,
  true, true, false,
  NULL, false
FROM public.packages WHERE slug = 'family-big-ben'
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;
INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, true, true,
  true, true, true,
  true, true, false,
  NULL, false
FROM public.packages WHERE slug = 'family-burj-khalifa'
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;
INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, false, false,
  false, false, false,
  false, false, true,
  NULL, false
FROM public.packages WHERE slug = 'family-chitrakote-waterfalls'
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;
INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, true, true,
  true, true, false,
  false, true, false,
  NULL, true
FROM public.packages WHERE slug = 'family-city-palace-udaipur'
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;
INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, true, true,
  true, true, true,
  true, true, false,
  NULL, false
FROM public.packages WHERE slug = 'family-colosseum'
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;
INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, true, false,
  true, false, false,
  false, true, false,
  'Accessibility features available on request.', true
FROM public.packages WHERE slug = 'family-dawki-river-umngot-river'
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;
INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, true, true,
  true, true, true,
  true, true, false,
  NULL, false
FROM public.packages WHERE slug = 'family-disneyland-paris'
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;
INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, true, true,
  true, true, true,
  true, true, false,
  NULL, false
FROM public.packages WHERE slug = 'family-dubai-miracle-garden'
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;
INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, true, true,
  true, true, true,
  true, true, false,
  NULL, false
FROM public.packages WHERE slug = 'family-dudhsagar-falls'
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;
INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, true, true,
  true, true, true,
  true, true, false,
  NULL, false
FROM public.packages WHERE slug = 'family-eiffel-tower'
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;
INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, true, true,
  true, true, true,
  true, true, false,
  NULL, false
FROM public.packages WHERE slug = 'family-gardens-by-the-bay'
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;
INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, true, true,
  true, true, true,
  true, true, false,
  NULL, false
FROM public.packages WHERE slug = 'family-glacier-3000'
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;
INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, true, true,
  true, true, true,
  true, true, false,
  NULL, false
FROM public.packages WHERE slug = 'family-gol-gumbaz'
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;
INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, true, true,
  true, true, false,
  false, true, false,
  NULL, true
FROM public.packages WHERE slug = 'family-hampi-monuments'
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;
INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, true, true,
  true, true, true,
  true, true, false,
  NULL, false
FROM public.packages WHERE slug = 'family-hawa-mahal'
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;
INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, true, true,
  true, true, true,
  true, true, false,
  NULL, false
FROM public.packages WHERE slug = 'family-leaning-tower-of-pisa'
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;
INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, true, true,
  true, true, true,
  true, true, false,
  NULL, false
FROM public.packages WHERE slug = 'family-living-root-bridges'
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;
INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, true, true,
  true, true, true,
  true, true, false,
  NULL, false
FROM public.packages WHERE slug = 'family-london-eye'
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;
INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, true, true,
  true, true, true,
  true, true, false,
  NULL, false
FROM public.packages WHERE slug = 'family-marina-bay-sands-skypark'
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;
INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, true, true,
  true, true, false,
  false, true, false,
  NULL, true
FROM public.packages WHERE slug = 'family-mehrangarh-fort'
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;
INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, true, true,
  true, true, true,
  true, true, false,
  NULL, false
FROM public.packages WHERE slug = 'family-mount-fuji'
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;
INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, true, true,
  true, true, true,
  true, true, false,
  NULL, false
FROM public.packages WHERE slug = 'family-mount-titlis'
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;
INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, true, true,
  true, true, true,
  true, true, false,
  NULL, false
FROM public.packages WHERE slug = 'family-munnar-tea-gardens'
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;
INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, true, true,
  true, true, true,
  true, true, false,
  NULL, false
FROM public.packages WHERE slug = 'family-museum-of-the-future'
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;
INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, true, true,
  true, true, false,
  false, true, false,
  NULL, true
FROM public.packages WHERE slug = 'family-mysore-palace'
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;
INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, false, false,
  false, false, false,
  false, false, true,
  NULL, false
FROM public.packages WHERE slug = 'family-niagara-falls'
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;
INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, false, false,
  false, false, false,
  false, false, true,
  NULL, false
FROM public.packages WHERE slug = 'family-nubra-valley'
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;
INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, true, true,
  true, true, true,
  true, true, false,
  NULL, false
FROM public.packages WHERE slug = 'family-palm-jumeirah'
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;
INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, false, false,
  false, false, false,
  false, false, true,
  NULL, false
FROM public.packages WHERE slug = 'family-pangong-lake'
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;
INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, true, true,
  true, true, true,
  true, true, false,
  NULL, false
FROM public.packages WHERE slug = 'family-radhanagar-beach'
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;
INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, true, true,
  true, true, true,
  true, true, false,
  NULL, false
FROM public.packages WHERE slug = 'family-rohtang-pass'
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;
INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, true, true,
  true, true, true,
  true, true, false,
  NULL, false
FROM public.packages WHERE slug = 'family-sentosa-island'
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;
INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, true, true,
  true, true, true,
  true, true, false,
  NULL, false
FROM public.packages WHERE slug = 'family-swiss-alps-jungfraujoch'
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;
INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, true, true,
  true, true, true,
  true, true, false,
  NULL, false
FROM public.packages WHERE slug = 'family-taj-mahal'
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;
INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, true, true,
  true, true, true,
  true, true, false,
  NULL, false
FROM public.packages WHERE slug = 'family-tokyo-disneyland'
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;
INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, true, true,
  true, true, true,
  true, true, false,
  NULL, false
FROM public.packages WHERE slug = 'family-universal-studios-japan'
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;
INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, true, true,
  true, true, true,
  true, true, false,
  NULL, false
FROM public.packages WHERE slug = 'family-venice-grand-canal'
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;
INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, true, true,
  true, true, true,
  true, true, false,
  NULL, false
FROM public.packages WHERE slug = 'buddhism-adam-s-peak-sri-pada-sri-lanka'
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;
INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, true, true,
  true, true, true,
  true, true, false,
  NULL, false
FROM public.packages WHERE slug = 'buddhism-bodh-gaya-india'
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;
INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, true, true,
  true, true, true,
  true, true, false,
  NULL, false
FROM public.packages WHERE slug = 'buddhism-borobudur-temple-indonesia'
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;
INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, true, true,
  true, true, true,
  true, true, false,
  NULL, false
FROM public.packages WHERE slug = 'buddhism-dambulla-cave-temple-sri-lanka'
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;
INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, true, true,
  true, true, true,
  true, true, false,
  NULL, false
FROM public.packages WHERE slug = 'buddhism-jokhang-temple-lhasa-tibet'
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;
INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, true, true,
  true, true, true,
  true, true, false,
  NULL, false
FROM public.packages WHERE slug = 'buddhism-kumano-kodo-japan'
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;
INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, true, true,
  true, true, true,
  true, true, false,
  NULL, false
FROM public.packages WHERE slug = 'buddhism-kushinagar-india'
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;
INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, true, true,
  true, true, true,
  true, true, false,
  NULL, false
FROM public.packages WHERE slug = 'buddhism-lumbini-nepal'
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;
INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, true, true,
  true, true, true,
  true, true, false,
  NULL, false
FROM public.packages WHERE slug = 'buddhism-mahabodhi-temple-bagan-myanmar'
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;
INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, true, true,
  true, true, false,
  false, true, false,
  NULL, true
FROM public.packages WHERE slug = 'buddhism-mount-kailash-tibet'
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;
INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, true, true,
  true, true, true,
  true, true, false,
  NULL, false
FROM public.packages WHERE slug = 'buddhism-nalanda-india'
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;
INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, true, true,
  true, true, true,
  true, true, false,
  NULL, false
FROM public.packages WHERE slug = 'buddhism-rajgir-india'
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;
INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, true, true,
  true, true, true,
  true, true, false,
  NULL, false
FROM public.packages WHERE slug = 'buddhism-sarnath-india'
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;
INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, true, true,
  true, true, true,
  true, true, false,
  NULL, false
FROM public.packages WHERE slug = 'buddhism-shwedagon-pagoda-myanmar'
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;
INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, true, true,
  true, true, true,
  true, true, false,
  NULL, false
FROM public.packages WHERE slug = 'buddhism-tiger-s-nest-monastery-paro-taktsang-bhutan'
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;
INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, true, true,
  true, true, true,
  true, true, false,
  NULL, false
FROM public.packages WHERE slug = 'christianity-basilica-of-our-lady-of-guadalupe-mexico'
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;
INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, true, true,
  true, true, true,
  true, true, false,
  NULL, false
FROM public.packages WHERE slug = 'christianity-basilica-of-saint-peter-vatican-city'
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;
INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, true, true,
  true, true, true,
  true, true, false,
  NULL, false
FROM public.packages WHERE slug = 'christianity-bethlehem-palestine'
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;
INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, true, true,
  true, true, true,
  true, true, false,
  NULL, false
FROM public.packages WHERE slug = 'christianity-camino-de-santiago-spain'
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;
INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, true, true,
  true, true, true,
  true, true, false,
  NULL, false
FROM public.packages WHERE slug = 'christianity-canterbury-cathedral-england'
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;
INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, true, true,
  true, true, true,
  true, true, false,
  NULL, false
FROM public.packages WHERE slug = 'christianity-church-of-the-holy-sepulchre-jerusalem-israel'
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;
INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, true, true,
  true, true, true,
  true, true, false,
  NULL, false
FROM public.packages WHERE slug = 'christianity-el-santuario-de-chimayo-new-mexico-usa'
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;
INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, true, true,
  true, true, true,
  true, true, false,
  NULL, false
FROM public.packages WHERE slug = 'christianity-f-tima-portugal'
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;
INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, true, true,
  true, true, true,
  true, true, false,
  NULL, false
FROM public.packages WHERE slug = 'christianity-lalibela-ethiopia'
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;
INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, true, true,
  true, true, true,
  true, true, false,
  NULL, false
FROM public.packages WHERE slug = 'christianity-mount-athos-greece'
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;
INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, true, true,
  true, true, true,
  true, true, false,
  NULL, false
FROM public.packages WHERE slug = 'christianity-old-city-jerusalem-israel'
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;
INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, true, true,
  true, true, true,
  true, true, false,
  NULL, false
FROM public.packages WHERE slug = 'christianity-sanctuary-of-our-lady-of-lourdes-france'
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;
INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, true, true,
  true, true, true,
  true, true, false,
  NULL, false
FROM public.packages WHERE slug = 'christianity-santiago-atitl-n-guatemala'
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;
INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, true, true,
  true, true, true,
  true, true, false,
  NULL, false
FROM public.packages WHERE slug = 'christianity-santu-rio-de-nossa-senhora-aparecida-brazil'
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;
INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, true, true,
  true, true, true,
  true, true, false,
  NULL, false
FROM public.packages WHERE slug = 'christianity-vatican-city-italy'
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;
INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, true, true,
  true, true, true,
  true, true, false,
  NULL, false
FROM public.packages WHERE slug = 'hinduism-adam-s-peak-sri-pada-sri-lanka'
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;
INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, true, true,
  true, true, false,
  false, true, true,
  NULL, true
FROM public.packages WHERE slug = 'hinduism-badrinath-india'
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;
INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, true, true,
  true, true, true,
  true, true, false,
  NULL, false
FROM public.packages WHERE slug = 'hinduism-dwarkadhish-temple-dwarka-india'
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;
INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, true, true,
  true, true, true,
  true, true, false,
  NULL, false
FROM public.packages WHERE slug = 'hinduism-golden-temple-harmandir-sahib-amritsar-india'
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;
INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, false, false,
  false, false, false,
  false, false, true,
  NULL, false
FROM public.packages WHERE slug = 'hinduism-haridwar-rishikesh-india'
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;
INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, true, true,
  true, true, true,
  true, true, false,
  NULL, false
FROM public.packages WHERE slug = 'hinduism-jagannath-temple-puri-india'
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;
INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, true, true,
  true, true, true,
  true, true, false,
  NULL, false
FROM public.packages WHERE slug = 'hinduism-kashi-vishwanath-varanasi-india'
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;
INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, false, false,
  false, false, false,
  false, false, true,
  NULL, false
FROM public.packages WHERE slug = 'hinduism-kedarnath-india'
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;
INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, true, true,
  true, true, true,
  true, true, false,
  NULL, false
FROM public.packages WHERE slug = 'hinduism-mahakaleshwar-temple-ujjain-india'
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;
INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, true, true,
  true, true, false,
  false, true, false,
  NULL, true
FROM public.packages WHERE slug = 'hinduism-mount-kailash-tibet'
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;
INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, true, true,
  true, true, true,
  true, true, false,
  NULL, false
FROM public.packages WHERE slug = 'hinduism-rameswaram-india'
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;
INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, true, true,
  true, true, true,
  true, true, false,
  NULL, false
FROM public.packages WHERE slug = 'hinduism-somnath-temple-india'
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;
INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, true, true,
  true, true, true,
  true, true, false,
  NULL, false
FROM public.packages WHERE slug = 'hinduism-tirupati-balaji-temple-india'
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;
INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, true, true,
  true, true, true,
  true, true, false,
  NULL, false
FROM public.packages WHERE slug = 'hinduism-trimbakeshwar-temple-nashik-india'
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;
INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, false, false,
  false, false, false,
  false, false, true,
  NULL, false
FROM public.packages WHERE slug = 'hinduism-vaishno-devi-india'
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;
INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, true, true,
  true, true, true,
  true, true, false,
  NULL, false
FROM public.packages WHERE slug = 'islam-ajmer-sharif-dargah-india'
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;
INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, true, true,
  true, true, true,
  true, true, false,
  NULL, false
FROM public.packages WHERE slug = 'islam-al-aqsa-mosque-jerusalem-israel'
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;
INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, true, true,
  true, true, true,
  true, true, false,
  NULL, false
FROM public.packages WHERE slug = 'islam-al-azhar-mosque-cairo-egypt'
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;
INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, true, true,
  true, true, true,
  true, true, false,
  NULL, false
FROM public.packages WHERE slug = 'islam-al-masjid-al-qiblatayn-medina-saudi-arabia'
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;
INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, true, true,
  true, true, true,
  true, true, false,
  NULL, false
FROM public.packages WHERE slug = 'islam-data-darbar-lahore-pakistan'
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;
INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, true, true,
  true, true, true,
  true, true, false,
  NULL, false
FROM public.packages WHERE slug = 'islam-dome-of-the-rock-jerusalem-israel'
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;
INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, true, true,
  true, true, true,
  true, true, false,
  NULL, false
FROM public.packages WHERE slug = 'islam-imam-ali-shrine-najaf-iraq'
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;
INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, true, true,
  true, true, true,
  true, true, false,
  NULL, false
FROM public.packages WHERE slug = 'islam-imam-husayn-shrine-karbala-iraq'
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;
INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, true, true,
  true, true, true,
  true, true, false,
  NULL, false
FROM public.packages WHERE slug = 'islam-imam-reza-shrine-mashhad-iran'
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;
INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, true, true,
  true, true, true,
  true, true, false,
  NULL, false
FROM public.packages WHERE slug = 'islam-mecca-saudi-arabia'
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;
INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, true, true,
  true, true, true,
  true, true, false,
  NULL, false
FROM public.packages WHERE slug = 'islam-medina-saudi-arabia'
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;
INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, true, true,
  true, true, true,
  true, true, false,
  NULL, false
FROM public.packages WHERE slug = 'islam-old-city-jerusalem-israel'
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;
INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, true, true,
  true, true, true,
  true, true, false,
  NULL, false
FROM public.packages WHERE slug = 'islam-quba-mosque-medina-saudi-arabia'
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;
INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, true, true,
  true, true, true,
  true, true, false,
  NULL, false
FROM public.packages WHERE slug = 'islam-touba-senegal'
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;
INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, true, true,
  true, true, true,
  true, true, false,
  NULL, false
FROM public.packages WHERE slug = 'islam-umayyad-mosque-damascus-syria'
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;
DELETE FROM public.faqs WHERE package_id IS NULL;
INSERT INTO public.faqs (package_id, category, question, answer, display_order, is_active)
VALUES (NULL, 'general', 'How do you ensure safety and comfort for senior citizens?', 'Our senior citizen packages feature hotels located close to the temples, low walking distances, battery-operated carts/e-rickshaws where allowed, pre-booked VIP Darshan access to avoid long queues, and an experienced coordinator on-ground. Additionally, all transport vehicles are equipped with first-aid kits and we have emergency contacts with local doctors at every destination.', 0, true);
INSERT INTO public.faqs (package_id, category, question, answer, display_order, is_active)
VALUES (NULL, 'general', 'Are the meals provided pure vegetarian?', 'Yes, all meals provided during our tours are strictly pure vegetarian (Satvik) prepared without onion and garlic on request. We carefully select hygienically run, verified restaurants and ashrams to cater to our yatris.', 1, true);
INSERT INTO public.faqs (package_id, category, question, answer, display_order, is_active)
VALUES (NULL, 'general', 'Do you arrange wheelchair assistance at the temples?', 'Absolutely. Wheelchair assistance can be pre-arranged at the time of booking. Our dedicated coordinators will ensure that a helper and a wheelchair are ready at the temple entry drop-off points.', 2, true);
INSERT INTO public.faqs (package_id, category, question, answer, display_order, is_active)
VALUES (NULL, 'general', 'Can we customize a package for a private family group?', 'Yes, you can request a custom plan. Simply use our AI Trip Planner or click ''Request Custom Plan'' to provide details about your group size, budget, specific mobility needs, and destination preferences, and our travel experts will curate a customized itinerary for you.', 3, true);
INSERT INTO public.faqs (package_id, category, question, answer, display_order, is_active)
VALUES (NULL, 'general', 'Is there any medical support available during the trip?', 'Our guides are first-aid certified, and we maintain an active database of local doctors and hospitals near our routing points. In case of any medical emergencies, we quickly facilitate clinical consultations.', 4, true);
DELETE FROM public.testimonials;
INSERT INTO public.testimonials (traveller_name, traveller_age, traveller_location, quote, rating, avatar_url, trip_name, is_featured, is_active)
VALUES ('Ramesh & Savitri Iyer', 68, 'Chennai', 'We were very anxious about traveling to Rameswaram because of my arthritis. OneJourney took care of everything—pre-arranged wheelchairs, zero walking in queues, and hotel just steps from the temple. A blessed experience!', 5, '/images/avatar_female_senior.png', 'Divine South Yatra', true, true);
INSERT INTO public.testimonials (traveller_name, traveller_age, traveller_location, quote, rating, avatar_url, trip_name, is_featured, is_active)
VALUES ('Prof. Alok Sharma', 72, 'New Delhi', 'The VIP Darshan in Kashi Vishwanath was organized seamlessly. As senior citizens, avoiding the chaotic queues made our pilgrimage peaceful and fully spiritual. The coordinator was exceptionally respectful and caring.', 5, '/images/avatar_male_senior.png', 'Kashi Serenity Tour', true, true);
INSERT INTO public.testimonials (traveller_name, traveller_age, traveller_location, quote, rating, avatar_url, trip_name, is_featured, is_active)
VALUES ('Meenakshi Kulkarni', 62, 'Mumbai', 'Our family group package to Somnath and Dwarka was excellently managed. Pure vegetarian food at all stops, comfortable AC transport with medical kits on-board. Recommended for anyone travelling with elders.', 5, '/images/avatar_female_young.png', 'Gujarat Jyotirlinga Yatra', true, true);
END $$;