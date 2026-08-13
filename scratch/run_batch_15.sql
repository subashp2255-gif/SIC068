DO $$
BEGIN
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
END $$;