DO $$
BEGIN
INSERT INTO public.itinerary_days (
  package_id, day_number, title, location, overview,
  morning_title, morning_description, afternoon_title, afternoon_description, evening_title, evening_description,
  important_timings, meals, transport, walking_level, stay, weather, dress_code, packing_suggestions,
  accessibility_note, visitor_note, travel_duration
) SELECT
  p.id, 1, 'Arrival & Settle in at Alappuzha', 'Alappuzha', 'Welcome to your yatra. Arrive in Alappuzha, transfer to your stay, and rest before your sightseeing tour.',
  'Arrival & Check-in', 'Arrive at the nearest transit hub. Meet our coordinator and transfer to your pre-booked stay in Alappuzha.',
  'Leisure & Rest', 'Check into your hotel room, unpack your luggage, and rest to recover from your flight or train journey.',
  'Orientation Walk', 'Meet your local guide for a small walk around the neighborhood. Receive a detailed brief on local customs.',
  'Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM', 'Welcome Drink & Buffet Dinner included.', 'AC Shuttle Transit for close proximity site transfers and passenger drops.',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Heritage Boutique Resort (Comfortable rooms, garden paths, active room services)', 'Warm and sunny afternoon, ideal for outdoor sightseeing, average temp 24°C.',
  'Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.', 'Comfortable travel footwear, photo ID, essential personal medication, daypack.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 1 to 2 hours transfer'
FROM public.packages p WHERE p.slug = 'family-alleppey-backwaters'
ON CONFLICT (package_id, day_number) DO UPDATE SET
  title = EXCLUDED.title,
  overview = EXCLUDED.overview,
  morning_description = EXCLUDED.morning_description;
INSERT INTO public.itinerary_days (
  package_id, day_number, title, location, overview,
  morning_title, morning_description, afternoon_title, afternoon_description, evening_title, evening_description,
  important_timings, meals, transport, walking_level, stay, weather, dress_code, packing_suggestions,
  accessibility_note, visitor_note, travel_duration
) SELECT
  p.id, 2, 'Explore Punnamada Lake Canal Cruise', 'Alappuzha', 'Spend your day visiting Punnamada Lake Canal Cruise, the primary attraction in Alleppey Backwaters, accompanied by our expert guide.',
  'Guided Tour of Punnamada Lake Canal Cruise', 'Early morning visit to Punnamada Lake Canal Cruise to avoid crowds. Learn about the heritage and unique history of this landmark.',
  'Local Traditional Lunch', 'Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings.',
  'Evening walk at Pathiramanal Island Walk', 'Stroll around Pathiramanal Island Walk for scenic sunset views. Capture great family photos as the evening lights turn on.',
  'Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM', 'Complimentary Breakfast & Traditional Lunch.', 'AC Private Sedan with professional local driver (includes first-aid kit and bottled water).',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Lakefront Guest House (Scenic balcony views, hot water, western-style bathrooms)', 'Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.',
  'Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.', 'Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 3 to 4 hours local tour'
FROM public.packages p WHERE p.slug = 'family-alleppey-backwaters'
ON CONFLICT (package_id, day_number) DO UPDATE SET
  title = EXCLUDED.title,
  overview = EXCLUDED.overview,
  morning_description = EXCLUDED.morning_description;
INSERT INTO public.itinerary_days (
  package_id, day_number, title, location, overview,
  morning_title, morning_description, afternoon_title, afternoon_description, evening_title, evening_description,
  important_timings, meals, transport, walking_level, stay, weather, dress_code, packing_suggestions,
  accessibility_note, visitor_note, travel_duration
) SELECT
  p.id, 3, 'Excursion to Champakulam Kalloorkadu Church', 'Alappuzha', 'Excursion to Champakulam Kalloorkadu Church and surrounding craft villages to experience native arts, handlooms, and culture.',
  'Nature Walk at Champakulam Kalloorkadu Church', 'Guided scenic walk near the lake or parks surrounding Champakulam Kalloorkadu Church. Enjoy quiet reflection and fresh air.',
  'Local Handloom Visit', 'Visit local cottage industries to see artisans hand-weaving fabrics and crafting traditional wooden toys.',
  'Cultural Dance & Music Show', 'Attend a traditional cultural presentation depicting historical folk tales, followed by dinner.',
  'Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM', 'Breakfast & Special Dinner Buffet.', 'AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Premium Executive Hotel (AC rooms, elevator access, 24/7 front desk assistance)', 'Perfect travel weather with low humidity and comfortable evening temperature 20°C.',
  'Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.', 'Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 3 to 4 hours local tour'
FROM public.packages p WHERE p.slug = 'family-alleppey-backwaters'
ON CONFLICT (package_id, day_number) DO UPDATE SET
  title = EXCLUDED.title,
  overview = EXCLUDED.overview,
  morning_description = EXCLUDED.morning_description;
INSERT INTO public.itinerary_days (
  package_id, day_number, title, location, overview,
  morning_title, morning_description, afternoon_title, afternoon_description, evening_title, evening_description,
  important_timings, meals, transport, walking_level, stay, weather, dress_code, packing_suggestions,
  accessibility_note, visitor_note, travel_duration
) SELECT
  p.id, 4, 'Souvenir Shopping & Onward Departure', 'Alappuzha', 'Conclude your memorable stay in Alappuzha with local craft shopping, checkout, and outbound transfers.',
  'Handicrafts Shopping', 'Visit local co-operative markets to buy traditional souvenirs, regional sweets, or native organic spices.',
  'Check-out & Packing', 'Return to your hotel, pack your bags, clear any local incidentals, and check out from your rooms.',
  'Outbound Transfer', 'Board your private vehicle transfer to the airport or railway station for your onward return journey home.',
  'Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM', 'Complimentary Healthy Breakfast included.', 'AC Private SUV for comfortable road transfers with regular rest stops.',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Standard Comfort Hotel (Fully sanitized rooms, private bathroom, free Wi-Fi, desk space)', 'Clear sky, comfortable morning temperature 21°C, warming up to 26°C by noon.',
  'Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.', 'Walking socks, small daypack for personal belongings, sanitizers, light jacket.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 1 to 2 hours transfer'
FROM public.packages p WHERE p.slug = 'family-alleppey-backwaters'
ON CONFLICT (package_id, day_number) DO UPDATE SET
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
FROM public.packages p WHERE p.slug = 'family-amber-fort'
ON CONFLICT (package_id, day_number) DO UPDATE SET
  title = EXCLUDED.title,
  overview = EXCLUDED.overview,
  morning_description = EXCLUDED.morning_description;
INSERT INTO public.itinerary_days (
  package_id, day_number, title, location, overview,
  morning_title, morning_description, afternoon_title, afternoon_description, evening_title, evening_description,
  important_timings, meals, transport, walking_level, stay, weather, dress_code, packing_suggestions,
  accessibility_note, visitor_note, travel_duration
) SELECT
  p.id, 2, 'Explore Amber Fort Sheesh Mahal', 'Jaipur', 'Spend your day visiting Amber Fort Sheesh Mahal, the primary attraction in Amber Fort, accompanied by our expert guide.',
  'Guided Tour of Amber Fort Sheesh Mahal', 'Early morning visit to Amber Fort Sheesh Mahal to avoid crowds. Learn about the heritage and unique history of this landmark.',
  'Local Traditional Lunch', 'Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings.',
  'Evening walk at Jaigarh Fort & Jaivana Cannon', 'Stroll around Jaigarh Fort & Jaivana Cannon for scenic sunset views. Capture great family photos as the evening lights turn on.',
  'Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM', 'Complimentary Breakfast & Traditional Lunch.', 'AC Private Sedan with professional local driver (includes first-aid kit and bottled water).',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Lakefront Guest House (Scenic balcony views, hot water, western-style bathrooms)', 'Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.',
  'Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.', 'Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 3 to 4 hours local tour'
FROM public.packages p WHERE p.slug = 'family-amber-fort'
ON CONFLICT (package_id, day_number) DO UPDATE SET
  title = EXCLUDED.title,
  overview = EXCLUDED.overview,
  morning_description = EXCLUDED.morning_description;
INSERT INTO public.itinerary_days (
  package_id, day_number, title, location, overview,
  morning_title, morning_description, afternoon_title, afternoon_description, evening_title, evening_description,
  important_timings, meals, transport, walking_level, stay, weather, dress_code, packing_suggestions,
  accessibility_note, visitor_note, travel_duration
) SELECT
  p.id, 3, 'Excursion to City Palace & Jantar Mantar', 'Jaipur', 'Excursion to City Palace & Jantar Mantar and surrounding craft villages to experience native arts, handlooms, and culture.',
  'Nature Walk at City Palace & Jantar Mantar', 'Guided scenic walk near the lake or parks surrounding City Palace & Jantar Mantar. Enjoy quiet reflection and fresh air.',
  'Local Handloom Visit', 'Visit local cottage industries to see artisans hand-weaving fabrics and crafting traditional wooden toys.',
  'Cultural Dance & Music Show', 'Attend a traditional cultural presentation depicting historical folk tales, followed by dinner.',
  'Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM', 'Breakfast & Special Dinner Buffet.', 'AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Premium Executive Hotel (AC rooms, elevator access, 24/7 front desk assistance)', 'Perfect travel weather with low humidity and comfortable evening temperature 20°C.',
  'Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.', 'Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 3 to 4 hours local tour'
FROM public.packages p WHERE p.slug = 'family-amber-fort'
ON CONFLICT (package_id, day_number) DO UPDATE SET
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
FROM public.packages p WHERE p.slug = 'family-amber-fort'
ON CONFLICT (package_id, day_number) DO UPDATE SET
  title = EXCLUDED.title,
  overview = EXCLUDED.overview,
  morning_description = EXCLUDED.morning_description;
INSERT INTO public.itinerary_days (
  package_id, day_number, title, location, overview,
  morning_title, morning_description, afternoon_title, afternoon_description, evening_title, evening_description,
  important_timings, meals, transport, walking_level, stay, weather, dress_code, packing_suggestions,
  accessibility_note, visitor_note, travel_duration
) SELECT
  p.id, 1, 'Arrival & Settle in at Thrissur', 'Thrissur', 'Welcome to your yatra. Arrive in Thrissur, transfer to your stay, and rest before your sightseeing tour.',
  'Arrival & Check-in', 'Arrive at the nearest transit hub. Meet our coordinator and transfer to your pre-booked stay in Thrissur.',
  'Leisure & Rest', 'Check into your hotel room, unpack your luggage, and rest to recover from your flight or train journey.',
  'Orientation Walk', 'Meet your local guide for a small walk around the neighborhood. Receive a detailed brief on local customs.',
  'Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM', 'Welcome Drink & Buffet Dinner included.', 'AC Shuttle Transit for close proximity site transfers and passenger drops.',
  'Moderate Paced (Gentle staircases, guide assistance available)', 'Heritage Boutique Resort (Comfortable rooms, garden paths, active room services)', 'Warm and sunny afternoon, ideal for outdoor sightseeing, average temp 24°C.',
  'Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.', 'Comfortable travel footwear, photo ID, essential personal medication, daypack.',
  'Not recommended for guests requiring wheelchair support due to steep stairs and terrain.', 'Expect moderate physical movement. Wear athletic shoes with excellent grip.', 'Approx. 1 to 2 hours transfer'
FROM public.packages p WHERE p.slug = 'family-athirappilly-waterfalls'
ON CONFLICT (package_id, day_number) DO UPDATE SET
  title = EXCLUDED.title,
  overview = EXCLUDED.overview,
  morning_description = EXCLUDED.morning_description;
INSERT INTO public.itinerary_days (
  package_id, day_number, title, location, overview,
  morning_title, morning_description, afternoon_title, afternoon_description, evening_title, evening_description,
  important_timings, meals, transport, walking_level, stay, weather, dress_code, packing_suggestions,
  accessibility_note, visitor_note, travel_duration
) SELECT
  p.id, 2, 'Explore Athirappilly Main Falls Trek', 'Thrissur', 'Spend your day visiting Athirappilly Main Falls Trek, the primary attraction in Athirappilly Waterfalls, accompanied by our expert guide.',
  'Guided Tour of Athirappilly Main Falls Trek', 'Early morning visit to Athirappilly Main Falls Trek to avoid crowds. Learn about the heritage and unique history of this landmark.',
  'Local Traditional Lunch', 'Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings.',
  'Evening walk at Ezhattumugham Nature Village', 'Stroll around Ezhattumugham Nature Village for scenic sunset views. Capture great family photos as the evening lights turn on.',
  'Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM', 'Complimentary Breakfast & Traditional Lunch.', 'AC Private Sedan with professional local driver (includes first-aid kit and bottled water).',
  'Moderate Paced (Gentle staircases, guide assistance available)', 'Lakefront Guest House (Scenic balcony views, hot water, western-style bathrooms)', 'Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.',
  'Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.', 'Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.',
  'Not recommended for guests requiring wheelchair support due to steep stairs and terrain.', 'Expect moderate physical movement. Wear athletic shoes with excellent grip.', 'Approx. 3 to 4 hours local tour'
FROM public.packages p WHERE p.slug = 'family-athirappilly-waterfalls'
ON CONFLICT (package_id, day_number) DO UPDATE SET
  title = EXCLUDED.title,
  overview = EXCLUDED.overview,
  morning_description = EXCLUDED.morning_description;
INSERT INTO public.itinerary_days (
  package_id, day_number, title, location, overview,
  morning_title, morning_description, afternoon_title, afternoon_description, evening_title, evening_description,
  important_timings, meals, transport, walking_level, stay, weather, dress_code, packing_suggestions,
  accessibility_note, visitor_note, travel_duration
) SELECT
  p.id, 3, 'Excursion to Thumboormuzhi Butterfly Park', 'Thrissur', 'Excursion to Thumboormuzhi Butterfly Park and surrounding craft villages to experience native arts, handlooms, and culture.',
  'Nature Walk at Thumboormuzhi Butterfly Park', 'Guided scenic walk near the lake or parks surrounding Thumboormuzhi Butterfly Park. Enjoy quiet reflection and fresh air.',
  'Local Handloom Visit', 'Visit local cottage industries to see artisans hand-weaving fabrics and crafting traditional wooden toys.',
  'Cultural Dance & Music Show', 'Attend a traditional cultural presentation depicting historical folk tales, followed by dinner.',
  'Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM', 'Breakfast & Special Dinner Buffet.', 'AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).',
  'Moderate Paced (Gentle staircases, guide assistance available)', 'Premium Executive Hotel (AC rooms, elevator access, 24/7 front desk assistance)', 'Perfect travel weather with low humidity and comfortable evening temperature 20°C.',
  'Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.', 'Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.',
  'Not recommended for guests requiring wheelchair support due to steep stairs and terrain.', 'Expect moderate physical movement. Wear athletic shoes with excellent grip.', 'Approx. 3 to 4 hours local tour'
FROM public.packages p WHERE p.slug = 'family-athirappilly-waterfalls'
ON CONFLICT (package_id, day_number) DO UPDATE SET
  title = EXCLUDED.title,
  overview = EXCLUDED.overview,
  morning_description = EXCLUDED.morning_description;
INSERT INTO public.itinerary_days (
  package_id, day_number, title, location, overview,
  morning_title, morning_description, afternoon_title, afternoon_description, evening_title, evening_description,
  important_timings, meals, transport, walking_level, stay, weather, dress_code, packing_suggestions,
  accessibility_note, visitor_note, travel_duration
) SELECT
  p.id, 4, 'Souvenir Shopping & Onward Departure', 'Thrissur', 'Conclude your memorable stay in Thrissur with local craft shopping, checkout, and outbound transfers.',
  'Handicrafts Shopping', 'Visit local co-operative markets to buy traditional souvenirs, regional sweets, or native organic spices.',
  'Check-out & Packing', 'Return to your hotel, pack your bags, clear any local incidentals, and check out from your rooms.',
  'Outbound Transfer', 'Board your private vehicle transfer to the airport or railway station for your onward return journey home.',
  'Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM', 'Complimentary Healthy Breakfast included.', 'AC Private SUV for comfortable road transfers with regular rest stops.',
  'Moderate Paced (Gentle staircases, guide assistance available)', 'Standard Comfort Hotel (Fully sanitized rooms, private bathroom, free Wi-Fi, desk space)', 'Clear sky, comfortable morning temperature 21°C, warming up to 26°C by noon.',
  'Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.', 'Walking socks, small daypack for personal belongings, sanitizers, light jacket.',
  'Not recommended for guests requiring wheelchair support due to steep stairs and terrain.', 'Expect moderate physical movement. Wear athletic shoes with excellent grip.', 'Approx. 1 to 2 hours transfer'
FROM public.packages p WHERE p.slug = 'family-athirappilly-waterfalls'
ON CONFLICT (package_id, day_number) DO UPDATE SET
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
FROM public.packages p WHERE p.slug = 'family-big-ben'
ON CONFLICT (package_id, day_number) DO UPDATE SET
  title = EXCLUDED.title,
  overview = EXCLUDED.overview,
  morning_description = EXCLUDED.morning_description;
INSERT INTO public.itinerary_days (
  package_id, day_number, title, location, overview,
  morning_title, morning_description, afternoon_title, afternoon_description, evening_title, evening_description,
  important_timings, meals, transport, walking_level, stay, weather, dress_code, packing_suggestions,
  accessibility_note, visitor_note, travel_duration
) SELECT
  p.id, 2, 'Explore Big Ben Heritage Centre', 'London', 'Spend your day visiting Big Ben Heritage Centre, the primary attraction in Big Ben, accompanied by our expert guide.',
  'Guided Tour of Big Ben Heritage Centre', 'Early morning visit to Big Ben Heritage Centre to avoid crowds. Learn about the heritage and unique history of this landmark.',
  'Local Traditional Lunch', 'Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings.',
  'Evening walk at Big Ben Panoramic Viewpoint', 'Stroll around Big Ben Panoramic Viewpoint for scenic sunset views. Capture great family photos as the evening lights turn on.',
  'Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM', 'Complimentary Breakfast & Traditional Lunch.', 'AC Private Sedan with professional local driver (includes first-aid kit and bottled water).',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Lakefront Guest House (Scenic balcony views, hot water, western-style bathrooms)', 'Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.',
  'Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.', 'Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 3 to 4 hours local tour'
FROM public.packages p WHERE p.slug = 'family-big-ben'
ON CONFLICT (package_id, day_number) DO UPDATE SET
  title = EXCLUDED.title,
  overview = EXCLUDED.overview,
  morning_description = EXCLUDED.morning_description;
INSERT INTO public.itinerary_days (
  package_id, day_number, title, location, overview,
  morning_title, morning_description, afternoon_title, afternoon_description, evening_title, evening_description,
  important_timings, meals, transport, walking_level, stay, weather, dress_code, packing_suggestions,
  accessibility_note, visitor_note, travel_duration
) SELECT
  p.id, 3, 'Excursion to Big Ben Local Culture Park', 'London', 'Excursion to Big Ben Local Culture Park and surrounding craft villages to experience native arts, handlooms, and culture.',
  'Nature Walk at Big Ben Local Culture Park', 'Guided scenic walk near the lake or parks surrounding Big Ben Local Culture Park. Enjoy quiet reflection and fresh air.',
  'Local Handloom Visit', 'Visit local cottage industries to see artisans hand-weaving fabrics and crafting traditional wooden toys.',
  'Cultural Dance & Music Show', 'Attend a traditional cultural presentation depicting historical folk tales, followed by dinner.',
  'Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM', 'Breakfast & Special Dinner Buffet.', 'AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Premium Executive Hotel (AC rooms, elevator access, 24/7 front desk assistance)', 'Perfect travel weather with low humidity and comfortable evening temperature 20°C.',
  'Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.', 'Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 3 to 4 hours local tour'
FROM public.packages p WHERE p.slug = 'family-big-ben'
ON CONFLICT (package_id, day_number) DO UPDATE SET
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
FROM public.packages p WHERE p.slug = 'family-big-ben'
ON CONFLICT (package_id, day_number) DO UPDATE SET
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
FROM public.packages p WHERE p.slug = 'family-burj-khalifa'
ON CONFLICT (package_id, day_number) DO UPDATE SET
  title = EXCLUDED.title,
  overview = EXCLUDED.overview,
  morning_description = EXCLUDED.morning_description;
INSERT INTO public.itinerary_days (
  package_id, day_number, title, location, overview,
  morning_title, morning_description, afternoon_title, afternoon_description, evening_title, evening_description,
  important_timings, meals, transport, walking_level, stay, weather, dress_code, packing_suggestions,
  accessibility_note, visitor_note, travel_duration
) SELECT
  p.id, 2, 'Explore Burj Khalifa Heritage Centre', 'Dubai', 'Spend your day visiting Burj Khalifa Heritage Centre, the primary attraction in Burj Khalifa, accompanied by our expert guide.',
  'Guided Tour of Burj Khalifa Heritage Centre', 'Early morning visit to Burj Khalifa Heritage Centre to avoid crowds. Learn about the heritage and unique history of this landmark.',
  'Local Traditional Lunch', 'Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings.',
  'Evening walk at Burj Khalifa Panoramic Viewpoint', 'Stroll around Burj Khalifa Panoramic Viewpoint for scenic sunset views. Capture great family photos as the evening lights turn on.',
  'Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM', 'Complimentary Breakfast & Traditional Lunch.', 'AC Private Sedan with professional local driver (includes first-aid kit and bottled water).',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Lakefront Guest House (Scenic balcony views, hot water, western-style bathrooms)', 'Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.',
  'Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.', 'Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 3 to 4 hours local tour'
FROM public.packages p WHERE p.slug = 'family-burj-khalifa'
ON CONFLICT (package_id, day_number) DO UPDATE SET
  title = EXCLUDED.title,
  overview = EXCLUDED.overview,
  morning_description = EXCLUDED.morning_description;
INSERT INTO public.itinerary_days (
  package_id, day_number, title, location, overview,
  morning_title, morning_description, afternoon_title, afternoon_description, evening_title, evening_description,
  important_timings, meals, transport, walking_level, stay, weather, dress_code, packing_suggestions,
  accessibility_note, visitor_note, travel_duration
) SELECT
  p.id, 3, 'Excursion to Burj Khalifa Local Culture Park', 'Dubai', 'Excursion to Burj Khalifa Local Culture Park and surrounding craft villages to experience native arts, handlooms, and culture.',
  'Nature Walk at Burj Khalifa Local Culture Park', 'Guided scenic walk near the lake or parks surrounding Burj Khalifa Local Culture Park. Enjoy quiet reflection and fresh air.',
  'Local Handloom Visit', 'Visit local cottage industries to see artisans hand-weaving fabrics and crafting traditional wooden toys.',
  'Cultural Dance & Music Show', 'Attend a traditional cultural presentation depicting historical folk tales, followed by dinner.',
  'Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM', 'Breakfast & Special Dinner Buffet.', 'AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Premium Executive Hotel (AC rooms, elevator access, 24/7 front desk assistance)', 'Perfect travel weather with low humidity and comfortable evening temperature 20°C.',
  'Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.', 'Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 3 to 4 hours local tour'
FROM public.packages p WHERE p.slug = 'family-burj-khalifa'
ON CONFLICT (package_id, day_number) DO UPDATE SET
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
FROM public.packages p WHERE p.slug = 'family-burj-khalifa'
ON CONFLICT (package_id, day_number) DO UPDATE SET
  title = EXCLUDED.title,
  overview = EXCLUDED.overview,
  morning_description = EXCLUDED.morning_description;
INSERT INTO public.itinerary_days (
  package_id, day_number, title, location, overview,
  morning_title, morning_description, afternoon_title, afternoon_description, evening_title, evening_description,
  important_timings, meals, transport, walking_level, stay, weather, dress_code, packing_suggestions,
  accessibility_note, visitor_note, travel_duration
) SELECT
  p.id, 1, 'Arrival & Settle in at Bastar', 'Bastar', 'Welcome to your yatra. Arrive in Bastar, transfer to your stay, and rest before your sightseeing tour.',
  'Arrival & Check-in', 'Arrive at the nearest transit hub. Meet our coordinator and transfer to your pre-booked stay in Bastar.',
  'Leisure & Rest', 'Check into your hotel room, unpack your luggage, and rest to recover from your flight or train journey.',
  'Orientation Walk', 'Meet your local guide for a small walk around the neighborhood. Receive a detailed brief on local customs.',
  'Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM', 'Welcome Drink & Buffet Dinner included.', 'AC Shuttle Transit for close proximity site transfers and passenger drops.',
  'Moderate Paced (Gentle staircases, guide assistance available)', 'Heritage Boutique Resort (Comfortable rooms, garden paths, active room services)', 'Warm and sunny afternoon, ideal for outdoor sightseeing, average temp 24°C.',
  'Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.', 'Comfortable travel footwear, photo ID, essential personal medication, daypack.',
  'Not recommended for guests requiring wheelchair support due to steep stairs and terrain.', 'Expect moderate physical movement. Wear athletic shoes with excellent grip.', 'Approx. 1 to 2 hours transfer'
FROM public.packages p WHERE p.slug = 'family-chitrakote-waterfalls'
ON CONFLICT (package_id, day_number) DO UPDATE SET
  title = EXCLUDED.title,
  overview = EXCLUDED.overview,
  morning_description = EXCLUDED.morning_description;
INSERT INTO public.itinerary_days (
  package_id, day_number, title, location, overview,
  morning_title, morning_description, afternoon_title, afternoon_description, evening_title, evening_description,
  important_timings, meals, transport, walking_level, stay, weather, dress_code, packing_suggestions,
  accessibility_note, visitor_note, travel_duration
) SELECT
  p.id, 2, 'Explore Chitrakote Waterfalls Heritage Centre', 'Bastar', 'Spend your day visiting Chitrakote Waterfalls Heritage Centre, the primary attraction in Chitrakote Waterfalls, accompanied by our expert guide.',
  'Guided Tour of Chitrakote Waterfalls Heritage Centre', 'Early morning visit to Chitrakote Waterfalls Heritage Centre to avoid crowds. Learn about the heritage and unique history of this landmark.',
  'Local Traditional Lunch', 'Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings.',
  'Evening walk at Chitrakote Waterfalls Panoramic Viewpoint', 'Stroll around Chitrakote Waterfalls Panoramic Viewpoint for scenic sunset views. Capture great family photos as the evening lights turn on.',
  'Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM', 'Complimentary Breakfast & Traditional Lunch.', 'AC Private Sedan with professional local driver (includes first-aid kit and bottled water).',
  'Moderate Paced (Gentle staircases, guide assistance available)', 'Lakefront Guest House (Scenic balcony views, hot water, western-style bathrooms)', 'Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.',
  'Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.', 'Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.',
  'Not recommended for guests requiring wheelchair support due to steep stairs and terrain.', 'Expect moderate physical movement. Wear athletic shoes with excellent grip.', 'Approx. 3 to 4 hours local tour'
FROM public.packages p WHERE p.slug = 'family-chitrakote-waterfalls'
ON CONFLICT (package_id, day_number) DO UPDATE SET
  title = EXCLUDED.title,
  overview = EXCLUDED.overview,
  morning_description = EXCLUDED.morning_description;
INSERT INTO public.itinerary_days (
  package_id, day_number, title, location, overview,
  morning_title, morning_description, afternoon_title, afternoon_description, evening_title, evening_description,
  important_timings, meals, transport, walking_level, stay, weather, dress_code, packing_suggestions,
  accessibility_note, visitor_note, travel_duration
) SELECT
  p.id, 3, 'Excursion to Chitrakote Waterfalls Local Culture Park', 'Bastar', 'Excursion to Chitrakote Waterfalls Local Culture Park and surrounding craft villages to experience native arts, handlooms, and culture.',
  'Nature Walk at Chitrakote Waterfalls Local Culture Park', 'Guided scenic walk near the lake or parks surrounding Chitrakote Waterfalls Local Culture Park. Enjoy quiet reflection and fresh air.',
  'Local Handloom Visit', 'Visit local cottage industries to see artisans hand-weaving fabrics and crafting traditional wooden toys.',
  'Cultural Dance & Music Show', 'Attend a traditional cultural presentation depicting historical folk tales, followed by dinner.',
  'Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM', 'Breakfast & Special Dinner Buffet.', 'AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).',
  'Moderate Paced (Gentle staircases, guide assistance available)', 'Premium Executive Hotel (AC rooms, elevator access, 24/7 front desk assistance)', 'Perfect travel weather with low humidity and comfortable evening temperature 20°C.',
  'Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.', 'Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.',
  'Not recommended for guests requiring wheelchair support due to steep stairs and terrain.', 'Expect moderate physical movement. Wear athletic shoes with excellent grip.', 'Approx. 3 to 4 hours local tour'
FROM public.packages p WHERE p.slug = 'family-chitrakote-waterfalls'
ON CONFLICT (package_id, day_number) DO UPDATE SET
  title = EXCLUDED.title,
  overview = EXCLUDED.overview,
  morning_description = EXCLUDED.morning_description;
INSERT INTO public.itinerary_days (
  package_id, day_number, title, location, overview,
  morning_title, morning_description, afternoon_title, afternoon_description, evening_title, evening_description,
  important_timings, meals, transport, walking_level, stay, weather, dress_code, packing_suggestions,
  accessibility_note, visitor_note, travel_duration
) SELECT
  p.id, 4, 'Souvenir Shopping & Onward Departure', 'Bastar', 'Conclude your memorable stay in Bastar with local craft shopping, checkout, and outbound transfers.',
  'Handicrafts Shopping', 'Visit local co-operative markets to buy traditional souvenirs, regional sweets, or native organic spices.',
  'Check-out & Packing', 'Return to your hotel, pack your bags, clear any local incidentals, and check out from your rooms.',
  'Outbound Transfer', 'Board your private vehicle transfer to the airport or railway station for your onward return journey home.',
  'Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM', 'Complimentary Healthy Breakfast included.', 'AC Private SUV for comfortable road transfers with regular rest stops.',
  'Moderate Paced (Gentle staircases, guide assistance available)', 'Standard Comfort Hotel (Fully sanitized rooms, private bathroom, free Wi-Fi, desk space)', 'Clear sky, comfortable morning temperature 21°C, warming up to 26°C by noon.',
  'Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.', 'Walking socks, small daypack for personal belongings, sanitizers, light jacket.',
  'Not recommended for guests requiring wheelchair support due to steep stairs and terrain.', 'Expect moderate physical movement. Wear athletic shoes with excellent grip.', 'Approx. 1 to 2 hours transfer'
FROM public.packages p WHERE p.slug = 'family-chitrakote-waterfalls'
ON CONFLICT (package_id, day_number) DO UPDATE SET
  title = EXCLUDED.title,
  overview = EXCLUDED.overview,
  morning_description = EXCLUDED.morning_description;
INSERT INTO public.itinerary_days (
  package_id, day_number, title, location, overview,
  morning_title, morning_description, afternoon_title, afternoon_description, evening_title, evening_description,
  important_timings, meals, transport, walking_level, stay, weather, dress_code, packing_suggestions,
  accessibility_note, visitor_note, travel_duration
) SELECT
  p.id, 1, 'Arrival & Settle in at Udaipur', 'Udaipur', 'Welcome to your yatra. Arrive in Udaipur, transfer to your stay, and rest before your sightseeing tour.',
  'Arrival & Check-in', 'Arrive at the nearest transit hub. Meet our coordinator and transfer to your pre-booked stay in Udaipur.',
  'Leisure & Rest', 'Check into your hotel room, unpack your luggage, and rest to recover from your flight or train journey.',
  'Orientation Walk', 'Meet your local guide for a small walk around the neighborhood. Receive a detailed brief on local customs.',
  'Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM', 'Welcome Drink & Buffet Dinner included.', 'AC Shuttle Transit for close proximity site transfers and passenger drops.',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Heritage Boutique Resort (Comfortable rooms, garden paths, active room services)', 'Warm and sunny afternoon, ideal for outdoor sightseeing, average temp 24°C.',
  'Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.', 'Comfortable travel footwear, photo ID, essential personal medication, daypack.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 1 to 2 hours transfer'
FROM public.packages p WHERE p.slug = 'family-city-palace-udaipur'
ON CONFLICT (package_id, day_number) DO UPDATE SET
  title = EXCLUDED.title,
  overview = EXCLUDED.overview,
  morning_description = EXCLUDED.morning_description;
INSERT INTO public.itinerary_days (
  package_id, day_number, title, location, overview,
  morning_title, morning_description, afternoon_title, afternoon_description, evening_title, evening_description,
  important_timings, meals, transport, walking_level, stay, weather, dress_code, packing_suggestions,
  accessibility_note, visitor_note, travel_duration
) SELECT
  p.id, 2, 'Explore City Palace, Udaipur Heritage Centre', 'Udaipur', 'Spend your day visiting City Palace, Udaipur Heritage Centre, the primary attraction in City Palace, Udaipur, accompanied by our expert guide.',
  'Guided Tour of City Palace, Udaipur Heritage Centre', 'Early morning visit to City Palace, Udaipur Heritage Centre to avoid crowds. Learn about the heritage and unique history of this landmark.',
  'Local Traditional Lunch', 'Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings.',
  'Evening walk at City Palace, Udaipur Panoramic Viewpoint', 'Stroll around City Palace, Udaipur Panoramic Viewpoint for scenic sunset views. Capture great family photos as the evening lights turn on.',
  'Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM', 'Complimentary Breakfast & Traditional Lunch.', 'AC Private Sedan with professional local driver (includes first-aid kit and bottled water).',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Lakefront Guest House (Scenic balcony views, hot water, western-style bathrooms)', 'Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.',
  'Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.', 'Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 3 to 4 hours local tour'
FROM public.packages p WHERE p.slug = 'family-city-palace-udaipur'
ON CONFLICT (package_id, day_number) DO UPDATE SET
  title = EXCLUDED.title,
  overview = EXCLUDED.overview,
  morning_description = EXCLUDED.morning_description;
INSERT INTO public.itinerary_days (
  package_id, day_number, title, location, overview,
  morning_title, morning_description, afternoon_title, afternoon_description, evening_title, evening_description,
  important_timings, meals, transport, walking_level, stay, weather, dress_code, packing_suggestions,
  accessibility_note, visitor_note, travel_duration
) SELECT
  p.id, 3, 'Excursion to City Palace, Udaipur Local Culture Park', 'Udaipur', 'Excursion to City Palace, Udaipur Local Culture Park and surrounding craft villages to experience native arts, handlooms, and culture.',
  'Nature Walk at City Palace, Udaipur Local Culture Park', 'Guided scenic walk near the lake or parks surrounding City Palace, Udaipur Local Culture Park. Enjoy quiet reflection and fresh air.',
  'Local Handloom Visit', 'Visit local cottage industries to see artisans hand-weaving fabrics and crafting traditional wooden toys.',
  'Cultural Dance & Music Show', 'Attend a traditional cultural presentation depicting historical folk tales, followed by dinner.',
  'Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM', 'Breakfast & Special Dinner Buffet.', 'AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Premium Executive Hotel (AC rooms, elevator access, 24/7 front desk assistance)', 'Perfect travel weather with low humidity and comfortable evening temperature 20°C.',
  'Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.', 'Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 3 to 4 hours local tour'
FROM public.packages p WHERE p.slug = 'family-city-palace-udaipur'
ON CONFLICT (package_id, day_number) DO UPDATE SET
  title = EXCLUDED.title,
  overview = EXCLUDED.overview,
  morning_description = EXCLUDED.morning_description;
INSERT INTO public.itinerary_days (
  package_id, day_number, title, location, overview,
  morning_title, morning_description, afternoon_title, afternoon_description, evening_title, evening_description,
  important_timings, meals, transport, walking_level, stay, weather, dress_code, packing_suggestions,
  accessibility_note, visitor_note, travel_duration
) SELECT
  p.id, 4, 'Souvenir Shopping & Onward Departure', 'Udaipur', 'Conclude your memorable stay in Udaipur with local craft shopping, checkout, and outbound transfers.',
  'Handicrafts Shopping', 'Visit local co-operative markets to buy traditional souvenirs, regional sweets, or native organic spices.',
  'Check-out & Packing', 'Return to your hotel, pack your bags, clear any local incidentals, and check out from your rooms.',
  'Outbound Transfer', 'Board your private vehicle transfer to the airport or railway station for your onward return journey home.',
  'Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM', 'Complimentary Healthy Breakfast included.', 'AC Private SUV for comfortable road transfers with regular rest stops.',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Standard Comfort Hotel (Fully sanitized rooms, private bathroom, free Wi-Fi, desk space)', 'Clear sky, comfortable morning temperature 21°C, warming up to 26°C by noon.',
  'Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.', 'Walking socks, small daypack for personal belongings, sanitizers, light jacket.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 1 to 2 hours transfer'
FROM public.packages p WHERE p.slug = 'family-city-palace-udaipur'
ON CONFLICT (package_id, day_number) DO UPDATE SET
  title = EXCLUDED.title,
  overview = EXCLUDED.overview,
  morning_description = EXCLUDED.morning_description;
INSERT INTO public.itinerary_days (
  package_id, day_number, title, location, overview,
  morning_title, morning_description, afternoon_title, afternoon_description, evening_title, evening_description,
  important_timings, meals, transport, walking_level, stay, weather, dress_code, packing_suggestions,
  accessibility_note, visitor_note, travel_duration
) SELECT
  p.id, 1, 'Arrival & Settle in at Rome', 'Rome', 'Welcome to your yatra. Arrive in Rome, transfer to your stay, and rest before your sightseeing tour.',
  'Arrival & Check-in', 'Arrive at the nearest transit hub. Meet our coordinator and transfer to your pre-booked stay in Rome.',
  'Leisure & Rest', 'Check into your hotel room, unpack your luggage, and rest to recover from your flight or train journey.',
  'Orientation Walk', 'Meet your local guide for a small walk around the neighborhood. Receive a detailed brief on local customs.',
  'Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM', 'Welcome Drink & Buffet Dinner included.', 'AC Shuttle Transit for close proximity site transfers and passenger drops.',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Heritage Boutique Resort (Comfortable rooms, garden paths, active room services)', 'Warm and sunny afternoon, ideal for outdoor sightseeing, average temp 24°C.',
  'Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.', 'Comfortable travel footwear, photo ID, essential personal medication, daypack.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 1 to 2 hours transfer'
FROM public.packages p WHERE p.slug = 'family-colosseum'
ON CONFLICT (package_id, day_number) DO UPDATE SET
  title = EXCLUDED.title,
  overview = EXCLUDED.overview,
  morning_description = EXCLUDED.morning_description;
INSERT INTO public.itinerary_days (
  package_id, day_number, title, location, overview,
  morning_title, morning_description, afternoon_title, afternoon_description, evening_title, evening_description,
  important_timings, meals, transport, walking_level, stay, weather, dress_code, packing_suggestions,
  accessibility_note, visitor_note, travel_duration
) SELECT
  p.id, 2, 'Explore Colosseum Heritage Centre', 'Rome', 'Spend your day visiting Colosseum Heritage Centre, the primary attraction in Colosseum, accompanied by our expert guide.',
  'Guided Tour of Colosseum Heritage Centre', 'Early morning visit to Colosseum Heritage Centre to avoid crowds. Learn about the heritage and unique history of this landmark.',
  'Local Traditional Lunch', 'Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings.',
  'Evening walk at Colosseum Panoramic Viewpoint', 'Stroll around Colosseum Panoramic Viewpoint for scenic sunset views. Capture great family photos as the evening lights turn on.',
  'Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM', 'Complimentary Breakfast & Traditional Lunch.', 'AC Private Sedan with professional local driver (includes first-aid kit and bottled water).',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Lakefront Guest House (Scenic balcony views, hot water, western-style bathrooms)', 'Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.',
  'Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.', 'Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 3 to 4 hours local tour'
FROM public.packages p WHERE p.slug = 'family-colosseum'
ON CONFLICT (package_id, day_number) DO UPDATE SET
  title = EXCLUDED.title,
  overview = EXCLUDED.overview,
  morning_description = EXCLUDED.morning_description;
INSERT INTO public.itinerary_days (
  package_id, day_number, title, location, overview,
  morning_title, morning_description, afternoon_title, afternoon_description, evening_title, evening_description,
  important_timings, meals, transport, walking_level, stay, weather, dress_code, packing_suggestions,
  accessibility_note, visitor_note, travel_duration
) SELECT
  p.id, 3, 'Excursion to Colosseum Local Culture Park', 'Rome', 'Excursion to Colosseum Local Culture Park and surrounding craft villages to experience native arts, handlooms, and culture.',
  'Nature Walk at Colosseum Local Culture Park', 'Guided scenic walk near the lake or parks surrounding Colosseum Local Culture Park. Enjoy quiet reflection and fresh air.',
  'Local Handloom Visit', 'Visit local cottage industries to see artisans hand-weaving fabrics and crafting traditional wooden toys.',
  'Cultural Dance & Music Show', 'Attend a traditional cultural presentation depicting historical folk tales, followed by dinner.',
  'Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM', 'Breakfast & Special Dinner Buffet.', 'AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Premium Executive Hotel (AC rooms, elevator access, 24/7 front desk assistance)', 'Perfect travel weather with low humidity and comfortable evening temperature 20°C.',
  'Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.', 'Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 3 to 4 hours local tour'
FROM public.packages p WHERE p.slug = 'family-colosseum'
ON CONFLICT (package_id, day_number) DO UPDATE SET
  title = EXCLUDED.title,
  overview = EXCLUDED.overview,
  morning_description = EXCLUDED.morning_description;
INSERT INTO public.itinerary_days (
  package_id, day_number, title, location, overview,
  morning_title, morning_description, afternoon_title, afternoon_description, evening_title, evening_description,
  important_timings, meals, transport, walking_level, stay, weather, dress_code, packing_suggestions,
  accessibility_note, visitor_note, travel_duration
) SELECT
  p.id, 4, 'Souvenir Shopping & Onward Departure', 'Rome', 'Conclude your memorable stay in Rome with local craft shopping, checkout, and outbound transfers.',
  'Handicrafts Shopping', 'Visit local co-operative markets to buy traditional souvenirs, regional sweets, or native organic spices.',
  'Check-out & Packing', 'Return to your hotel, pack your bags, clear any local incidentals, and check out from your rooms.',
  'Outbound Transfer', 'Board your private vehicle transfer to the airport or railway station for your onward return journey home.',
  'Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM', 'Complimentary Healthy Breakfast included.', 'AC Private SUV for comfortable road transfers with regular rest stops.',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Standard Comfort Hotel (Fully sanitized rooms, private bathroom, free Wi-Fi, desk space)', 'Clear sky, comfortable morning temperature 21°C, warming up to 26°C by noon.',
  'Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.', 'Walking socks, small daypack for personal belongings, sanitizers, light jacket.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 1 to 2 hours transfer'
FROM public.packages p WHERE p.slug = 'family-colosseum'
ON CONFLICT (package_id, day_number) DO UPDATE SET
  title = EXCLUDED.title,
  overview = EXCLUDED.overview,
  morning_description = EXCLUDED.morning_description;
INSERT INTO public.itinerary_days (
  package_id, day_number, title, location, overview,
  morning_title, morning_description, afternoon_title, afternoon_description, evening_title, evening_description,
  important_timings, meals, transport, walking_level, stay, weather, dress_code, packing_suggestions,
  accessibility_note, visitor_note, travel_duration
) SELECT
  p.id, 1, 'Arrival & Settle in at West Jaintia Hills', 'West Jaintia Hills', 'Welcome to your yatra. Arrive in West Jaintia Hills, transfer to your stay, and rest before your sightseeing tour.',
  'Arrival & Check-in', 'Arrive at the nearest transit hub. Meet our coordinator and transfer to your pre-booked stay in West Jaintia Hills.',
  'Leisure & Rest', 'Check into your hotel room, unpack your luggage, and rest to recover from your flight or train journey.',
  'Orientation Walk', 'Meet your local guide for a small walk around the neighborhood. Receive a detailed brief on local customs.',
  'Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM', 'Welcome Drink & Buffet Dinner included.', 'AC Shuttle Transit for close proximity site transfers and passenger drops.',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Heritage Boutique Resort (Comfortable rooms, garden paths, active room services)', 'Warm and sunny afternoon, ideal for outdoor sightseeing, average temp 24°C.',
  'Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.', 'Comfortable travel footwear, photo ID, essential personal medication, daypack.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 1 to 2 hours transfer'
FROM public.packages p WHERE p.slug = 'family-dawki-river-umngot-river'
ON CONFLICT (package_id, day_number) DO UPDATE SET
  title = EXCLUDED.title,
  overview = EXCLUDED.overview,
  morning_description = EXCLUDED.morning_description;
INSERT INTO public.itinerary_days (
  package_id, day_number, title, location, overview,
  morning_title, morning_description, afternoon_title, afternoon_description, evening_title, evening_description,
  important_timings, meals, transport, walking_level, stay, weather, dress_code, packing_suggestions,
  accessibility_note, visitor_note, travel_duration
) SELECT
  p.id, 2, 'Explore Dawki River Heritage Centre', 'West Jaintia Hills', 'Spend your day visiting Dawki River Heritage Centre, the primary attraction in Dawki River, accompanied by our expert guide.',
  'Guided Tour of Dawki River Heritage Centre', 'Early morning visit to Dawki River Heritage Centre to avoid crowds. Learn about the heritage and unique history of this landmark.',
  'Local Traditional Lunch', 'Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings.',
  'Evening walk at Dawki River Panoramic Viewpoint', 'Stroll around Dawki River Panoramic Viewpoint for scenic sunset views. Capture great family photos as the evening lights turn on.',
  'Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM', 'Complimentary Breakfast & Traditional Lunch.', 'AC Private Sedan with professional local driver (includes first-aid kit and bottled water).',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Lakefront Guest House (Scenic balcony views, hot water, western-style bathrooms)', 'Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.',
  'Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.', 'Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 3 to 4 hours local tour'
FROM public.packages p WHERE p.slug = 'family-dawki-river-umngot-river'
ON CONFLICT (package_id, day_number) DO UPDATE SET
  title = EXCLUDED.title,
  overview = EXCLUDED.overview,
  morning_description = EXCLUDED.morning_description;
INSERT INTO public.itinerary_days (
  package_id, day_number, title, location, overview,
  morning_title, morning_description, afternoon_title, afternoon_description, evening_title, evening_description,
  important_timings, meals, transport, walking_level, stay, weather, dress_code, packing_suggestions,
  accessibility_note, visitor_note, travel_duration
) SELECT
  p.id, 3, 'Excursion to Dawki River Local Culture Park', 'West Jaintia Hills', 'Excursion to Dawki River Local Culture Park and surrounding craft villages to experience native arts, handlooms, and culture.',
  'Nature Walk at Dawki River Local Culture Park', 'Guided scenic walk near the lake or parks surrounding Dawki River Local Culture Park. Enjoy quiet reflection and fresh air.',
  'Local Handloom Visit', 'Visit local cottage industries to see artisans hand-weaving fabrics and crafting traditional wooden toys.',
  'Cultural Dance & Music Show', 'Attend a traditional cultural presentation depicting historical folk tales, followed by dinner.',
  'Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM', 'Breakfast & Special Dinner Buffet.', 'AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Premium Executive Hotel (AC rooms, elevator access, 24/7 front desk assistance)', 'Perfect travel weather with low humidity and comfortable evening temperature 20°C.',
  'Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.', 'Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 3 to 4 hours local tour'
FROM public.packages p WHERE p.slug = 'family-dawki-river-umngot-river'
ON CONFLICT (package_id, day_number) DO UPDATE SET
  title = EXCLUDED.title,
  overview = EXCLUDED.overview,
  morning_description = EXCLUDED.morning_description;
INSERT INTO public.itinerary_days (
  package_id, day_number, title, location, overview,
  morning_title, morning_description, afternoon_title, afternoon_description, evening_title, evening_description,
  important_timings, meals, transport, walking_level, stay, weather, dress_code, packing_suggestions,
  accessibility_note, visitor_note, travel_duration
) SELECT
  p.id, 4, 'Souvenir Shopping & Onward Departure', 'West Jaintia Hills', 'Conclude your memorable stay in West Jaintia Hills with local craft shopping, checkout, and outbound transfers.',
  'Handicrafts Shopping', 'Visit local co-operative markets to buy traditional souvenirs, regional sweets, or native organic spices.',
  'Check-out & Packing', 'Return to your hotel, pack your bags, clear any local incidentals, and check out from your rooms.',
  'Outbound Transfer', 'Board your private vehicle transfer to the airport or railway station for your onward return journey home.',
  'Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM', 'Complimentary Healthy Breakfast included.', 'AC Private SUV for comfortable road transfers with regular rest stops.',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Standard Comfort Hotel (Fully sanitized rooms, private bathroom, free Wi-Fi, desk space)', 'Clear sky, comfortable morning temperature 21°C, warming up to 26°C by noon.',
  'Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.', 'Walking socks, small daypack for personal belongings, sanitizers, light jacket.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 1 to 2 hours transfer'
FROM public.packages p WHERE p.slug = 'family-dawki-river-umngot-river'
ON CONFLICT (package_id, day_number) DO UPDATE SET
  title = EXCLUDED.title,
  overview = EXCLUDED.overview,
  morning_description = EXCLUDED.morning_description;
INSERT INTO public.itinerary_days (
  package_id, day_number, title, location, overview,
  morning_title, morning_description, afternoon_title, afternoon_description, evening_title, evening_description,
  important_timings, meals, transport, walking_level, stay, weather, dress_code, packing_suggestions,
  accessibility_note, visitor_note, travel_duration
) SELECT
  p.id, 1, 'Arrival & Settle in at Marne-la-Vallée', 'Marne-la-Vallée', 'Welcome to your yatra. Arrive in Marne-la-Vallée, transfer to your stay, and rest before your sightseeing tour.',
  'Arrival & Check-in', 'Arrive at the nearest transit hub. Meet our coordinator and transfer to your pre-booked stay in Marne-la-Vallée.',
  'Leisure & Rest', 'Check into your hotel room, unpack your luggage, and rest to recover from your flight or train journey.',
  'Orientation Walk', 'Meet your local guide for a small walk around the neighborhood. Receive a detailed brief on local customs.',
  'Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM', 'Welcome Drink & Buffet Dinner included.', 'AC Shuttle Transit for close proximity site transfers and passenger drops.',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Heritage Boutique Resort (Comfortable rooms, garden paths, active room services)', 'Warm and sunny afternoon, ideal for outdoor sightseeing, average temp 24°C.',
  'Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.', 'Comfortable travel footwear, photo ID, essential personal medication, daypack.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 1 to 2 hours transfer'
FROM public.packages p WHERE p.slug = 'family-disneyland-paris'
ON CONFLICT (package_id, day_number) DO UPDATE SET
  title = EXCLUDED.title,
  overview = EXCLUDED.overview,
  morning_description = EXCLUDED.morning_description;
INSERT INTO public.itinerary_days (
  package_id, day_number, title, location, overview,
  morning_title, morning_description, afternoon_title, afternoon_description, evening_title, evening_description,
  important_timings, meals, transport, walking_level, stay, weather, dress_code, packing_suggestions,
  accessibility_note, visitor_note, travel_duration
) SELECT
  p.id, 2, 'Explore Disneyland Paris Heritage Centre', 'Marne-la-Vallée', 'Spend your day visiting Disneyland Paris Heritage Centre, the primary attraction in Disneyland Paris, accompanied by our expert guide.',
  'Guided Tour of Disneyland Paris Heritage Centre', 'Early morning visit to Disneyland Paris Heritage Centre to avoid crowds. Learn about the heritage and unique history of this landmark.',
  'Local Traditional Lunch', 'Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings.',
  'Evening walk at Disneyland Paris Panoramic Viewpoint', 'Stroll around Disneyland Paris Panoramic Viewpoint for scenic sunset views. Capture great family photos as the evening lights turn on.',
  'Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM', 'Complimentary Breakfast & Traditional Lunch.', 'AC Private Sedan with professional local driver (includes first-aid kit and bottled water).',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Lakefront Guest House (Scenic balcony views, hot water, western-style bathrooms)', 'Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.',
  'Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.', 'Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 3 to 4 hours local tour'
FROM public.packages p WHERE p.slug = 'family-disneyland-paris'
ON CONFLICT (package_id, day_number) DO UPDATE SET
  title = EXCLUDED.title,
  overview = EXCLUDED.overview,
  morning_description = EXCLUDED.morning_description;
INSERT INTO public.itinerary_days (
  package_id, day_number, title, location, overview,
  morning_title, morning_description, afternoon_title, afternoon_description, evening_title, evening_description,
  important_timings, meals, transport, walking_level, stay, weather, dress_code, packing_suggestions,
  accessibility_note, visitor_note, travel_duration
) SELECT
  p.id, 3, 'Excursion to Disneyland Paris Local Culture Park', 'Marne-la-Vallée', 'Excursion to Disneyland Paris Local Culture Park and surrounding craft villages to experience native arts, handlooms, and culture.',
  'Nature Walk at Disneyland Paris Local Culture Park', 'Guided scenic walk near the lake or parks surrounding Disneyland Paris Local Culture Park. Enjoy quiet reflection and fresh air.',
  'Local Handloom Visit', 'Visit local cottage industries to see artisans hand-weaving fabrics and crafting traditional wooden toys.',
  'Cultural Dance & Music Show', 'Attend a traditional cultural presentation depicting historical folk tales, followed by dinner.',
  'Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM', 'Breakfast & Special Dinner Buffet.', 'AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Premium Executive Hotel (AC rooms, elevator access, 24/7 front desk assistance)', 'Perfect travel weather with low humidity and comfortable evening temperature 20°C.',
  'Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.', 'Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 3 to 4 hours local tour'
FROM public.packages p WHERE p.slug = 'family-disneyland-paris'
ON CONFLICT (package_id, day_number) DO UPDATE SET
  title = EXCLUDED.title,
  overview = EXCLUDED.overview,
  morning_description = EXCLUDED.morning_description;
INSERT INTO public.itinerary_days (
  package_id, day_number, title, location, overview,
  morning_title, morning_description, afternoon_title, afternoon_description, evening_title, evening_description,
  important_timings, meals, transport, walking_level, stay, weather, dress_code, packing_suggestions,
  accessibility_note, visitor_note, travel_duration
) SELECT
  p.id, 4, 'Souvenir Shopping & Onward Departure', 'Marne-la-Vallée', 'Conclude your memorable stay in Marne-la-Vallée with local craft shopping, checkout, and outbound transfers.',
  'Handicrafts Shopping', 'Visit local co-operative markets to buy traditional souvenirs, regional sweets, or native organic spices.',
  'Check-out & Packing', 'Return to your hotel, pack your bags, clear any local incidentals, and check out from your rooms.',
  'Outbound Transfer', 'Board your private vehicle transfer to the airport or railway station for your onward return journey home.',
  'Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM', 'Complimentary Healthy Breakfast included.', 'AC Private SUV for comfortable road transfers with regular rest stops.',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Standard Comfort Hotel (Fully sanitized rooms, private bathroom, free Wi-Fi, desk space)', 'Clear sky, comfortable morning temperature 21°C, warming up to 26°C by noon.',
  'Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.', 'Walking socks, small daypack for personal belongings, sanitizers, light jacket.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 1 to 2 hours transfer'
FROM public.packages p WHERE p.slug = 'family-disneyland-paris'
ON CONFLICT (package_id, day_number) DO UPDATE SET
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
FROM public.packages p WHERE p.slug = 'family-dubai-miracle-garden'
ON CONFLICT (package_id, day_number) DO UPDATE SET
  title = EXCLUDED.title,
  overview = EXCLUDED.overview,
  morning_description = EXCLUDED.morning_description;
INSERT INTO public.itinerary_days (
  package_id, day_number, title, location, overview,
  morning_title, morning_description, afternoon_title, afternoon_description, evening_title, evening_description,
  important_timings, meals, transport, walking_level, stay, weather, dress_code, packing_suggestions,
  accessibility_note, visitor_note, travel_duration
) SELECT
  p.id, 2, 'Explore Dubai Miracle Garden Heritage Centre', 'Dubai', 'Spend your day visiting Dubai Miracle Garden Heritage Centre, the primary attraction in Dubai Miracle Garden, accompanied by our expert guide.',
  'Guided Tour of Dubai Miracle Garden Heritage Centre', 'Early morning visit to Dubai Miracle Garden Heritage Centre to avoid crowds. Learn about the heritage and unique history of this landmark.',
  'Local Traditional Lunch', 'Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings.',
  'Evening walk at Dubai Miracle Garden Panoramic Viewpoint', 'Stroll around Dubai Miracle Garden Panoramic Viewpoint for scenic sunset views. Capture great family photos as the evening lights turn on.',
  'Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM', 'Complimentary Breakfast & Traditional Lunch.', 'AC Private Sedan with professional local driver (includes first-aid kit and bottled water).',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Lakefront Guest House (Scenic balcony views, hot water, western-style bathrooms)', 'Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.',
  'Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.', 'Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 3 to 4 hours local tour'
FROM public.packages p WHERE p.slug = 'family-dubai-miracle-garden'
ON CONFLICT (package_id, day_number) DO UPDATE SET
  title = EXCLUDED.title,
  overview = EXCLUDED.overview,
  morning_description = EXCLUDED.morning_description;
INSERT INTO public.itinerary_days (
  package_id, day_number, title, location, overview,
  morning_title, morning_description, afternoon_title, afternoon_description, evening_title, evening_description,
  important_timings, meals, transport, walking_level, stay, weather, dress_code, packing_suggestions,
  accessibility_note, visitor_note, travel_duration
) SELECT
  p.id, 3, 'Excursion to Dubai Miracle Garden Local Culture Park', 'Dubai', 'Excursion to Dubai Miracle Garden Local Culture Park and surrounding craft villages to experience native arts, handlooms, and culture.',
  'Nature Walk at Dubai Miracle Garden Local Culture Park', 'Guided scenic walk near the lake or parks surrounding Dubai Miracle Garden Local Culture Park. Enjoy quiet reflection and fresh air.',
  'Local Handloom Visit', 'Visit local cottage industries to see artisans hand-weaving fabrics and crafting traditional wooden toys.',
  'Cultural Dance & Music Show', 'Attend a traditional cultural presentation depicting historical folk tales, followed by dinner.',
  'Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM', 'Breakfast & Special Dinner Buffet.', 'AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Premium Executive Hotel (AC rooms, elevator access, 24/7 front desk assistance)', 'Perfect travel weather with low humidity and comfortable evening temperature 20°C.',
  'Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.', 'Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 3 to 4 hours local tour'
FROM public.packages p WHERE p.slug = 'family-dubai-miracle-garden'
ON CONFLICT (package_id, day_number) DO UPDATE SET
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
FROM public.packages p WHERE p.slug = 'family-dubai-miracle-garden'
ON CONFLICT (package_id, day_number) DO UPDATE SET
  title = EXCLUDED.title,
  overview = EXCLUDED.overview,
  morning_description = EXCLUDED.morning_description;
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
END $$;