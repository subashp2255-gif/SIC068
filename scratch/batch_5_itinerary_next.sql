DO $$
BEGIN
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
END $$;