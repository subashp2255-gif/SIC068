DO $$
BEGIN
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
FROM public.packages p WHERE p.slug = 'family-pangong-lake'
ON CONFLICT (package_id, day_number) DO UPDATE SET
  title = EXCLUDED.title,
  overview = EXCLUDED.overview,
  morning_description = EXCLUDED.morning_description;
INSERT INTO public.itinerary_days (
  package_id, day_number, title, location, overview,
  morning_title, morning_description, afternoon_title, afternoon_description, evening_title, evening_description,
  important_timings, meals, transport, walking_level, stay, weather, dress_code, packing_suggestions,
  accessibility_note, visitor_note, travel_duration
) SELECT
  p.id, 2, 'Explore Pangong Lake Heritage Centre', 'Ladakh', 'Spend your day visiting Pangong Lake Heritage Centre, the primary attraction in Pangong Lake, accompanied by our expert guide.',
  'Guided Tour of Pangong Lake Heritage Centre', 'Early morning visit to Pangong Lake Heritage Centre to avoid crowds. Learn about the heritage and unique history of this landmark.',
  'Local Traditional Lunch', 'Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings.',
  'Evening walk at Pangong Lake Panoramic Viewpoint', 'Stroll around Pangong Lake Panoramic Viewpoint for scenic sunset views. Capture great family photos as the evening lights turn on.',
  'Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM', 'Complimentary Breakfast & Traditional Lunch.', 'AC Private Sedan with professional local driver (includes first-aid kit and bottled water).',
  'Moderate Paced (Gentle staircases, guide assistance available)', 'Lakefront Guest House (Scenic balcony views, hot water, western-style bathrooms)', 'Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.',
  'Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.', 'Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.',
  'Not recommended for guests requiring wheelchair support due to steep stairs and terrain.', 'Expect moderate physical movement. Wear athletic shoes with excellent grip.', 'Approx. 3 to 4 hours local tour'
FROM public.packages p WHERE p.slug = 'family-pangong-lake'
ON CONFLICT (package_id, day_number) DO UPDATE SET
  title = EXCLUDED.title,
  overview = EXCLUDED.overview,
  morning_description = EXCLUDED.morning_description;
INSERT INTO public.itinerary_days (
  package_id, day_number, title, location, overview,
  morning_title, morning_description, afternoon_title, afternoon_description, evening_title, evening_description,
  important_timings, meals, transport, walking_level, stay, weather, dress_code, packing_suggestions,
  accessibility_note, visitor_note, travel_duration
) SELECT
  p.id, 3, 'Excursion to Pangong Lake Local Culture Park', 'Ladakh', 'Excursion to Pangong Lake Local Culture Park and surrounding craft villages to experience native arts, handlooms, and culture.',
  'Nature Walk at Pangong Lake Local Culture Park', 'Guided scenic walk near the lake or parks surrounding Pangong Lake Local Culture Park. Enjoy quiet reflection and fresh air.',
  'Local Handloom Visit', 'Visit local cottage industries to see artisans hand-weaving fabrics and crafting traditional wooden toys.',
  'Cultural Dance & Music Show', 'Attend a traditional cultural presentation depicting historical folk tales, followed by dinner.',
  'Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM', 'Breakfast & Special Dinner Buffet.', 'AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).',
  'Moderate Paced (Gentle staircases, guide assistance available)', 'Premium Executive Hotel (AC rooms, elevator access, 24/7 front desk assistance)', 'Perfect travel weather with low humidity and comfortable evening temperature 20°C.',
  'Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.', 'Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.',
  'Not recommended for guests requiring wheelchair support due to steep stairs and terrain.', 'Expect moderate physical movement. Wear athletic shoes with excellent grip.', 'Approx. 3 to 4 hours local tour'
FROM public.packages p WHERE p.slug = 'family-pangong-lake'
ON CONFLICT (package_id, day_number) DO UPDATE SET
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
FROM public.packages p WHERE p.slug = 'family-pangong-lake'
ON CONFLICT (package_id, day_number) DO UPDATE SET
  title = EXCLUDED.title,
  overview = EXCLUDED.overview,
  morning_description = EXCLUDED.morning_description;
INSERT INTO public.itinerary_days (
  package_id, day_number, title, location, overview,
  morning_title, morning_description, afternoon_title, afternoon_description, evening_title, evening_description,
  important_timings, meals, transport, walking_level, stay, weather, dress_code, packing_suggestions,
  accessibility_note, visitor_note, travel_duration
) SELECT
  p.id, 1, 'Arrival & Settle in at Andaman & Nicobar Islands', 'Andaman & Nicobar Islands', 'Welcome to your yatra. Arrive in Andaman & Nicobar Islands, transfer to your stay, and rest before your sightseeing tour.',
  'Arrival & Check-in', 'Arrive at the nearest transit hub. Meet our coordinator and transfer to your pre-booked stay in Andaman & Nicobar Islands.',
  'Leisure & Rest', 'Check into your hotel room, unpack your luggage, and rest to recover from your flight or train journey.',
  'Orientation Walk', 'Meet your local guide for a small walk around the neighborhood. Receive a detailed brief on local customs.',
  'Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM', 'Welcome Drink & Buffet Dinner included.', 'AC Shuttle Transit for close proximity site transfers and passenger drops.',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Heritage Boutique Resort (Comfortable rooms, garden paths, active room services)', 'Warm and sunny afternoon, ideal for outdoor sightseeing, average temp 24°C.',
  'Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.', 'Comfortable travel footwear, photo ID, essential personal medication, daypack.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 1 to 2 hours transfer'
FROM public.packages p WHERE p.slug = 'family-radhanagar-beach'
ON CONFLICT (package_id, day_number) DO UPDATE SET
  title = EXCLUDED.title,
  overview = EXCLUDED.overview,
  morning_description = EXCLUDED.morning_description;
INSERT INTO public.itinerary_days (
  package_id, day_number, title, location, overview,
  morning_title, morning_description, afternoon_title, afternoon_description, evening_title, evening_description,
  important_timings, meals, transport, walking_level, stay, weather, dress_code, packing_suggestions,
  accessibility_note, visitor_note, travel_duration
) SELECT
  p.id, 2, 'Explore Radhanagar Beach Heritage Centre', 'Andaman & Nicobar Islands', 'Spend your day visiting Radhanagar Beach Heritage Centre, the primary attraction in Radhanagar Beach, accompanied by our expert guide.',
  'Guided Tour of Radhanagar Beach Heritage Centre', 'Early morning visit to Radhanagar Beach Heritage Centre to avoid crowds. Learn about the heritage and unique history of this landmark.',
  'Local Traditional Lunch', 'Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings.',
  'Evening walk at Radhanagar Beach Panoramic Viewpoint', 'Stroll around Radhanagar Beach Panoramic Viewpoint for scenic sunset views. Capture great family photos as the evening lights turn on.',
  'Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM', 'Complimentary Breakfast & Traditional Lunch.', 'AC Private Sedan with professional local driver (includes first-aid kit and bottled water).',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Lakefront Guest House (Scenic balcony views, hot water, western-style bathrooms)', 'Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.',
  'Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.', 'Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 3 to 4 hours local tour'
FROM public.packages p WHERE p.slug = 'family-radhanagar-beach'
ON CONFLICT (package_id, day_number) DO UPDATE SET
  title = EXCLUDED.title,
  overview = EXCLUDED.overview,
  morning_description = EXCLUDED.morning_description;
INSERT INTO public.itinerary_days (
  package_id, day_number, title, location, overview,
  morning_title, morning_description, afternoon_title, afternoon_description, evening_title, evening_description,
  important_timings, meals, transport, walking_level, stay, weather, dress_code, packing_suggestions,
  accessibility_note, visitor_note, travel_duration
) SELECT
  p.id, 3, 'Excursion to Radhanagar Beach Local Culture Park', 'Andaman & Nicobar Islands', 'Excursion to Radhanagar Beach Local Culture Park and surrounding craft villages to experience native arts, handlooms, and culture.',
  'Nature Walk at Radhanagar Beach Local Culture Park', 'Guided scenic walk near the lake or parks surrounding Radhanagar Beach Local Culture Park. Enjoy quiet reflection and fresh air.',
  'Local Handloom Visit', 'Visit local cottage industries to see artisans hand-weaving fabrics and crafting traditional wooden toys.',
  'Cultural Dance & Music Show', 'Attend a traditional cultural presentation depicting historical folk tales, followed by dinner.',
  'Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM', 'Breakfast & Special Dinner Buffet.', 'AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Premium Executive Hotel (AC rooms, elevator access, 24/7 front desk assistance)', 'Perfect travel weather with low humidity and comfortable evening temperature 20°C.',
  'Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.', 'Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 3 to 4 hours local tour'
FROM public.packages p WHERE p.slug = 'family-radhanagar-beach'
ON CONFLICT (package_id, day_number) DO UPDATE SET
  title = EXCLUDED.title,
  overview = EXCLUDED.overview,
  morning_description = EXCLUDED.morning_description;
INSERT INTO public.itinerary_days (
  package_id, day_number, title, location, overview,
  morning_title, morning_description, afternoon_title, afternoon_description, evening_title, evening_description,
  important_timings, meals, transport, walking_level, stay, weather, dress_code, packing_suggestions,
  accessibility_note, visitor_note, travel_duration
) SELECT
  p.id, 4, 'Souvenir Shopping & Onward Departure', 'Andaman & Nicobar Islands', 'Conclude your memorable stay in Andaman & Nicobar Islands with local craft shopping, checkout, and outbound transfers.',
  'Handicrafts Shopping', 'Visit local co-operative markets to buy traditional souvenirs, regional sweets, or native organic spices.',
  'Check-out & Packing', 'Return to your hotel, pack your bags, clear any local incidentals, and check out from your rooms.',
  'Outbound Transfer', 'Board your private vehicle transfer to the airport or railway station for your onward return journey home.',
  'Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM', 'Complimentary Healthy Breakfast included.', 'AC Private SUV for comfortable road transfers with regular rest stops.',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Standard Comfort Hotel (Fully sanitized rooms, private bathroom, free Wi-Fi, desk space)', 'Clear sky, comfortable morning temperature 21°C, warming up to 26°C by noon.',
  'Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.', 'Walking socks, small daypack for personal belongings, sanitizers, light jacket.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 1 to 2 hours transfer'
FROM public.packages p WHERE p.slug = 'family-radhanagar-beach'
ON CONFLICT (package_id, day_number) DO UPDATE SET
  title = EXCLUDED.title,
  overview = EXCLUDED.overview,
  morning_description = EXCLUDED.morning_description;
INSERT INTO public.itinerary_days (
  package_id, day_number, title, location, overview,
  morning_title, morning_description, afternoon_title, afternoon_description, evening_title, evening_description,
  important_timings, meals, transport, walking_level, stay, weather, dress_code, packing_suggestions,
  accessibility_note, visitor_note, travel_duration
) SELECT
  p.id, 1, 'Arrival & Settle in at Manali', 'Manali', 'Welcome to your yatra. Arrive in Manali, transfer to your stay, and rest before your sightseeing tour.',
  'Arrival & Check-in', 'Arrive at the nearest transit hub. Meet our coordinator and transfer to your pre-booked stay in Manali.',
  'Leisure & Rest', 'Check into your hotel room, unpack your luggage, and rest to recover from your flight or train journey.',
  'Orientation Walk', 'Meet your local guide for a small walk around the neighborhood. Receive a detailed brief on local customs.',
  'Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM', 'Welcome Drink & Buffet Dinner included.', 'AC Shuttle Transit for close proximity site transfers and passenger drops.',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Heritage Boutique Resort (Comfortable rooms, garden paths, active room services)', 'Warm and sunny afternoon, ideal for outdoor sightseeing, average temp 24°C.',
  'Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.', 'Comfortable travel footwear, photo ID, essential personal medication, daypack.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 1 to 2 hours transfer'
FROM public.packages p WHERE p.slug = 'family-rohtang-pass'
ON CONFLICT (package_id, day_number) DO UPDATE SET
  title = EXCLUDED.title,
  overview = EXCLUDED.overview,
  morning_description = EXCLUDED.morning_description;
INSERT INTO public.itinerary_days (
  package_id, day_number, title, location, overview,
  morning_title, morning_description, afternoon_title, afternoon_description, evening_title, evening_description,
  important_timings, meals, transport, walking_level, stay, weather, dress_code, packing_suggestions,
  accessibility_note, visitor_note, travel_duration
) SELECT
  p.id, 2, 'Explore Rohtang Pass Heritage Centre', 'Manali', 'Spend your day visiting Rohtang Pass Heritage Centre, the primary attraction in Rohtang Pass, accompanied by our expert guide.',
  'Guided Tour of Rohtang Pass Heritage Centre', 'Early morning visit to Rohtang Pass Heritage Centre to avoid crowds. Learn about the heritage and unique history of this landmark.',
  'Local Traditional Lunch', 'Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings.',
  'Evening walk at Rohtang Pass Panoramic Viewpoint', 'Stroll around Rohtang Pass Panoramic Viewpoint for scenic sunset views. Capture great family photos as the evening lights turn on.',
  'Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM', 'Complimentary Breakfast & Traditional Lunch.', 'AC Private Sedan with professional local driver (includes first-aid kit and bottled water).',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Lakefront Guest House (Scenic balcony views, hot water, western-style bathrooms)', 'Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.',
  'Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.', 'Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 3 to 4 hours local tour'
FROM public.packages p WHERE p.slug = 'family-rohtang-pass'
ON CONFLICT (package_id, day_number) DO UPDATE SET
  title = EXCLUDED.title,
  overview = EXCLUDED.overview,
  morning_description = EXCLUDED.morning_description;
INSERT INTO public.itinerary_days (
  package_id, day_number, title, location, overview,
  morning_title, morning_description, afternoon_title, afternoon_description, evening_title, evening_description,
  important_timings, meals, transport, walking_level, stay, weather, dress_code, packing_suggestions,
  accessibility_note, visitor_note, travel_duration
) SELECT
  p.id, 3, 'Excursion to Rohtang Pass Local Culture Park', 'Manali', 'Excursion to Rohtang Pass Local Culture Park and surrounding craft villages to experience native arts, handlooms, and culture.',
  'Nature Walk at Rohtang Pass Local Culture Park', 'Guided scenic walk near the lake or parks surrounding Rohtang Pass Local Culture Park. Enjoy quiet reflection and fresh air.',
  'Local Handloom Visit', 'Visit local cottage industries to see artisans hand-weaving fabrics and crafting traditional wooden toys.',
  'Cultural Dance & Music Show', 'Attend a traditional cultural presentation depicting historical folk tales, followed by dinner.',
  'Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM', 'Breakfast & Special Dinner Buffet.', 'AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Premium Executive Hotel (AC rooms, elevator access, 24/7 front desk assistance)', 'Perfect travel weather with low humidity and comfortable evening temperature 20°C.',
  'Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.', 'Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 3 to 4 hours local tour'
FROM public.packages p WHERE p.slug = 'family-rohtang-pass'
ON CONFLICT (package_id, day_number) DO UPDATE SET
  title = EXCLUDED.title,
  overview = EXCLUDED.overview,
  morning_description = EXCLUDED.morning_description;
INSERT INTO public.itinerary_days (
  package_id, day_number, title, location, overview,
  morning_title, morning_description, afternoon_title, afternoon_description, evening_title, evening_description,
  important_timings, meals, transport, walking_level, stay, weather, dress_code, packing_suggestions,
  accessibility_note, visitor_note, travel_duration
) SELECT
  p.id, 4, 'Souvenir Shopping & Onward Departure', 'Manali', 'Conclude your memorable stay in Manali with local craft shopping, checkout, and outbound transfers.',
  'Handicrafts Shopping', 'Visit local co-operative markets to buy traditional souvenirs, regional sweets, or native organic spices.',
  'Check-out & Packing', 'Return to your hotel, pack your bags, clear any local incidentals, and check out from your rooms.',
  'Outbound Transfer', 'Board your private vehicle transfer to the airport or railway station for your onward return journey home.',
  'Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM', 'Complimentary Healthy Breakfast included.', 'AC Private SUV for comfortable road transfers with regular rest stops.',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Standard Comfort Hotel (Fully sanitized rooms, private bathroom, free Wi-Fi, desk space)', 'Clear sky, comfortable morning temperature 21°C, warming up to 26°C by noon.',
  'Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.', 'Walking socks, small daypack for personal belongings, sanitizers, light jacket.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 1 to 2 hours transfer'
FROM public.packages p WHERE p.slug = 'family-rohtang-pass'
ON CONFLICT (package_id, day_number) DO UPDATE SET
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
FROM public.packages p WHERE p.slug = 'family-sentosa-island'
ON CONFLICT (package_id, day_number) DO UPDATE SET
  title = EXCLUDED.title,
  overview = EXCLUDED.overview,
  morning_description = EXCLUDED.morning_description;
INSERT INTO public.itinerary_days (
  package_id, day_number, title, location, overview,
  morning_title, morning_description, afternoon_title, afternoon_description, evening_title, evening_description,
  important_timings, meals, transport, walking_level, stay, weather, dress_code, packing_suggestions,
  accessibility_note, visitor_note, travel_duration
) SELECT
  p.id, 2, 'Explore Sentosa Island Heritage Centre', 'Singapore', 'Spend your day visiting Sentosa Island Heritage Centre, the primary attraction in Sentosa Island, accompanied by our expert guide.',
  'Guided Tour of Sentosa Island Heritage Centre', 'Early morning visit to Sentosa Island Heritage Centre to avoid crowds. Learn about the heritage and unique history of this landmark.',
  'Local Traditional Lunch', 'Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings.',
  'Evening walk at Sentosa Island Panoramic Viewpoint', 'Stroll around Sentosa Island Panoramic Viewpoint for scenic sunset views. Capture great family photos as the evening lights turn on.',
  'Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM', 'Complimentary Breakfast & Traditional Lunch.', 'AC Private Sedan with professional local driver (includes first-aid kit and bottled water).',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Lakefront Guest House (Scenic balcony views, hot water, western-style bathrooms)', 'Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.',
  'Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.', 'Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 3 to 4 hours local tour'
FROM public.packages p WHERE p.slug = 'family-sentosa-island'
ON CONFLICT (package_id, day_number) DO UPDATE SET
  title = EXCLUDED.title,
  overview = EXCLUDED.overview,
  morning_description = EXCLUDED.morning_description;
INSERT INTO public.itinerary_days (
  package_id, day_number, title, location, overview,
  morning_title, morning_description, afternoon_title, afternoon_description, evening_title, evening_description,
  important_timings, meals, transport, walking_level, stay, weather, dress_code, packing_suggestions,
  accessibility_note, visitor_note, travel_duration
) SELECT
  p.id, 3, 'Excursion to Sentosa Island Local Culture Park', 'Singapore', 'Excursion to Sentosa Island Local Culture Park and surrounding craft villages to experience native arts, handlooms, and culture.',
  'Nature Walk at Sentosa Island Local Culture Park', 'Guided scenic walk near the lake or parks surrounding Sentosa Island Local Culture Park. Enjoy quiet reflection and fresh air.',
  'Local Handloom Visit', 'Visit local cottage industries to see artisans hand-weaving fabrics and crafting traditional wooden toys.',
  'Cultural Dance & Music Show', 'Attend a traditional cultural presentation depicting historical folk tales, followed by dinner.',
  'Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM', 'Breakfast & Special Dinner Buffet.', 'AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Premium Executive Hotel (AC rooms, elevator access, 24/7 front desk assistance)', 'Perfect travel weather with low humidity and comfortable evening temperature 20°C.',
  'Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.', 'Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 3 to 4 hours local tour'
FROM public.packages p WHERE p.slug = 'family-sentosa-island'
ON CONFLICT (package_id, day_number) DO UPDATE SET
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
FROM public.packages p WHERE p.slug = 'family-sentosa-island'
ON CONFLICT (package_id, day_number) DO UPDATE SET
  title = EXCLUDED.title,
  overview = EXCLUDED.overview,
  morning_description = EXCLUDED.morning_description;
INSERT INTO public.itinerary_days (
  package_id, day_number, title, location, overview,
  morning_title, morning_description, afternoon_title, afternoon_description, evening_title, evening_description,
  important_timings, meals, transport, walking_level, stay, weather, dress_code, packing_suggestions,
  accessibility_note, visitor_note, travel_duration
) SELECT
  p.id, 1, 'Arrival & Settle in at Bernese Oberland', 'Bernese Oberland', 'Welcome to your yatra. Arrive in Bernese Oberland, transfer to your stay, and rest before your sightseeing tour.',
  'Arrival & Check-in', 'Arrive at the nearest transit hub. Meet our coordinator and transfer to your pre-booked stay in Bernese Oberland.',
  'Leisure & Rest', 'Check into your hotel room, unpack your luggage, and rest to recover from your flight or train journey.',
  'Orientation Walk', 'Meet your local guide for a small walk around the neighborhood. Receive a detailed brief on local customs.',
  'Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM', 'Welcome Drink & Buffet Dinner included.', 'AC Shuttle Transit for close proximity site transfers and passenger drops.',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Heritage Boutique Resort (Comfortable rooms, garden paths, active room services)', 'Warm and sunny afternoon, ideal for outdoor sightseeing, average temp 24°C.',
  'Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.', 'Comfortable travel footwear, photo ID, essential personal medication, daypack.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 1 to 2 hours transfer'
FROM public.packages p WHERE p.slug = 'family-swiss-alps-jungfraujoch'
ON CONFLICT (package_id, day_number) DO UPDATE SET
  title = EXCLUDED.title,
  overview = EXCLUDED.overview,
  morning_description = EXCLUDED.morning_description;
INSERT INTO public.itinerary_days (
  package_id, day_number, title, location, overview,
  morning_title, morning_description, afternoon_title, afternoon_description, evening_title, evening_description,
  important_timings, meals, transport, walking_level, stay, weather, dress_code, packing_suggestions,
  accessibility_note, visitor_note, travel_duration
) SELECT
  p.id, 2, 'Explore Swiss Alps Heritage Centre', 'Bernese Oberland', 'Spend your day visiting Swiss Alps Heritage Centre, the primary attraction in Swiss Alps, accompanied by our expert guide.',
  'Guided Tour of Swiss Alps Heritage Centre', 'Early morning visit to Swiss Alps Heritage Centre to avoid crowds. Learn about the heritage and unique history of this landmark.',
  'Local Traditional Lunch', 'Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings.',
  'Evening walk at Swiss Alps Panoramic Viewpoint', 'Stroll around Swiss Alps Panoramic Viewpoint for scenic sunset views. Capture great family photos as the evening lights turn on.',
  'Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM', 'Complimentary Breakfast & Traditional Lunch.', 'AC Private Sedan with professional local driver (includes first-aid kit and bottled water).',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Lakefront Guest House (Scenic balcony views, hot water, western-style bathrooms)', 'Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.',
  'Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.', 'Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 3 to 4 hours local tour'
FROM public.packages p WHERE p.slug = 'family-swiss-alps-jungfraujoch'
ON CONFLICT (package_id, day_number) DO UPDATE SET
  title = EXCLUDED.title,
  overview = EXCLUDED.overview,
  morning_description = EXCLUDED.morning_description;
INSERT INTO public.itinerary_days (
  package_id, day_number, title, location, overview,
  morning_title, morning_description, afternoon_title, afternoon_description, evening_title, evening_description,
  important_timings, meals, transport, walking_level, stay, weather, dress_code, packing_suggestions,
  accessibility_note, visitor_note, travel_duration
) SELECT
  p.id, 3, 'Excursion to Swiss Alps Local Culture Park', 'Bernese Oberland', 'Excursion to Swiss Alps Local Culture Park and surrounding craft villages to experience native arts, handlooms, and culture.',
  'Nature Walk at Swiss Alps Local Culture Park', 'Guided scenic walk near the lake or parks surrounding Swiss Alps Local Culture Park. Enjoy quiet reflection and fresh air.',
  'Local Handloom Visit', 'Visit local cottage industries to see artisans hand-weaving fabrics and crafting traditional wooden toys.',
  'Cultural Dance & Music Show', 'Attend a traditional cultural presentation depicting historical folk tales, followed by dinner.',
  'Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM', 'Breakfast & Special Dinner Buffet.', 'AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Premium Executive Hotel (AC rooms, elevator access, 24/7 front desk assistance)', 'Perfect travel weather with low humidity and comfortable evening temperature 20°C.',
  'Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.', 'Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 3 to 4 hours local tour'
FROM public.packages p WHERE p.slug = 'family-swiss-alps-jungfraujoch'
ON CONFLICT (package_id, day_number) DO UPDATE SET
  title = EXCLUDED.title,
  overview = EXCLUDED.overview,
  morning_description = EXCLUDED.morning_description;
INSERT INTO public.itinerary_days (
  package_id, day_number, title, location, overview,
  morning_title, morning_description, afternoon_title, afternoon_description, evening_title, evening_description,
  important_timings, meals, transport, walking_level, stay, weather, dress_code, packing_suggestions,
  accessibility_note, visitor_note, travel_duration
) SELECT
  p.id, 4, 'Souvenir Shopping & Onward Departure', 'Bernese Oberland', 'Conclude your memorable stay in Bernese Oberland with local craft shopping, checkout, and outbound transfers.',
  'Handicrafts Shopping', 'Visit local co-operative markets to buy traditional souvenirs, regional sweets, or native organic spices.',
  'Check-out & Packing', 'Return to your hotel, pack your bags, clear any local incidentals, and check out from your rooms.',
  'Outbound Transfer', 'Board your private vehicle transfer to the airport or railway station for your onward return journey home.',
  'Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM', 'Complimentary Healthy Breakfast included.', 'AC Private SUV for comfortable road transfers with regular rest stops.',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Standard Comfort Hotel (Fully sanitized rooms, private bathroom, free Wi-Fi, desk space)', 'Clear sky, comfortable morning temperature 21°C, warming up to 26°C by noon.',
  'Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.', 'Walking socks, small daypack for personal belongings, sanitizers, light jacket.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 1 to 2 hours transfer'
FROM public.packages p WHERE p.slug = 'family-swiss-alps-jungfraujoch'
ON CONFLICT (package_id, day_number) DO UPDATE SET
  title = EXCLUDED.title,
  overview = EXCLUDED.overview,
  morning_description = EXCLUDED.morning_description;
INSERT INTO public.itinerary_days (
  package_id, day_number, title, location, overview,
  morning_title, morning_description, afternoon_title, afternoon_description, evening_title, evening_description,
  important_timings, meals, transport, walking_level, stay, weather, dress_code, packing_suggestions,
  accessibility_note, visitor_note, travel_duration
) SELECT
  p.id, 1, 'Arrival & Settle in at Agra', 'Agra', 'Welcome to your yatra. Arrive in Agra, transfer to your stay, and rest before your sightseeing tour.',
  'Arrival & Check-in', 'Arrive at the nearest transit hub. Meet our coordinator and transfer to your pre-booked stay in Agra.',
  'Leisure & Rest', 'Check into your hotel room, unpack your luggage, and rest to recover from your flight or train journey.',
  'Orientation Walk', 'Meet your local guide for a small walk around the neighborhood. Receive a detailed brief on local customs.',
  'Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM', 'Welcome Drink & Buffet Dinner included.', 'AC Shuttle Transit for close proximity site transfers and passenger drops.',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Heritage Boutique Resort (Comfortable rooms, garden paths, active room services)', 'Warm and sunny afternoon, ideal for outdoor sightseeing, average temp 24°C.',
  'Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.', 'Comfortable travel footwear, photo ID, essential personal medication, daypack.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 1 to 2 hours transfer'
FROM public.packages p WHERE p.slug = 'family-taj-mahal'
ON CONFLICT (package_id, day_number) DO UPDATE SET
  title = EXCLUDED.title,
  overview = EXCLUDED.overview,
  morning_description = EXCLUDED.morning_description;
INSERT INTO public.itinerary_days (
  package_id, day_number, title, location, overview,
  morning_title, morning_description, afternoon_title, afternoon_description, evening_title, evening_description,
  important_timings, meals, transport, walking_level, stay, weather, dress_code, packing_suggestions,
  accessibility_note, visitor_note, travel_duration
) SELECT
  p.id, 2, 'Explore Taj Mahal Heritage Centre', 'Agra', 'Spend your day visiting Taj Mahal Heritage Centre, the primary attraction in Taj Mahal, accompanied by our expert guide.',
  'Guided Tour of Taj Mahal Heritage Centre', 'Early morning visit to Taj Mahal Heritage Centre to avoid crowds. Learn about the heritage and unique history of this landmark.',
  'Local Traditional Lunch', 'Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings.',
  'Evening walk at Taj Mahal Panoramic Viewpoint', 'Stroll around Taj Mahal Panoramic Viewpoint for scenic sunset views. Capture great family photos as the evening lights turn on.',
  'Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM', 'Complimentary Breakfast & Traditional Lunch.', 'AC Private Sedan with professional local driver (includes first-aid kit and bottled water).',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Lakefront Guest House (Scenic balcony views, hot water, western-style bathrooms)', 'Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.',
  'Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.', 'Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 3 to 4 hours local tour'
FROM public.packages p WHERE p.slug = 'family-taj-mahal'
ON CONFLICT (package_id, day_number) DO UPDATE SET
  title = EXCLUDED.title,
  overview = EXCLUDED.overview,
  morning_description = EXCLUDED.morning_description;
INSERT INTO public.itinerary_days (
  package_id, day_number, title, location, overview,
  morning_title, morning_description, afternoon_title, afternoon_description, evening_title, evening_description,
  important_timings, meals, transport, walking_level, stay, weather, dress_code, packing_suggestions,
  accessibility_note, visitor_note, travel_duration
) SELECT
  p.id, 3, 'Excursion to Taj Mahal Local Culture Park', 'Agra', 'Excursion to Taj Mahal Local Culture Park and surrounding craft villages to experience native arts, handlooms, and culture.',
  'Nature Walk at Taj Mahal Local Culture Park', 'Guided scenic walk near the lake or parks surrounding Taj Mahal Local Culture Park. Enjoy quiet reflection and fresh air.',
  'Local Handloom Visit', 'Visit local cottage industries to see artisans hand-weaving fabrics and crafting traditional wooden toys.',
  'Cultural Dance & Music Show', 'Attend a traditional cultural presentation depicting historical folk tales, followed by dinner.',
  'Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM', 'Breakfast & Special Dinner Buffet.', 'AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Premium Executive Hotel (AC rooms, elevator access, 24/7 front desk assistance)', 'Perfect travel weather with low humidity and comfortable evening temperature 20°C.',
  'Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.', 'Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 3 to 4 hours local tour'
FROM public.packages p WHERE p.slug = 'family-taj-mahal'
ON CONFLICT (package_id, day_number) DO UPDATE SET
  title = EXCLUDED.title,
  overview = EXCLUDED.overview,
  morning_description = EXCLUDED.morning_description;
INSERT INTO public.itinerary_days (
  package_id, day_number, title, location, overview,
  morning_title, morning_description, afternoon_title, afternoon_description, evening_title, evening_description,
  important_timings, meals, transport, walking_level, stay, weather, dress_code, packing_suggestions,
  accessibility_note, visitor_note, travel_duration
) SELECT
  p.id, 4, 'Souvenir Shopping & Onward Departure', 'Agra', 'Conclude your memorable stay in Agra with local craft shopping, checkout, and outbound transfers.',
  'Handicrafts Shopping', 'Visit local co-operative markets to buy traditional souvenirs, regional sweets, or native organic spices.',
  'Check-out & Packing', 'Return to your hotel, pack your bags, clear any local incidentals, and check out from your rooms.',
  'Outbound Transfer', 'Board your private vehicle transfer to the airport or railway station for your onward return journey home.',
  'Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM', 'Complimentary Healthy Breakfast included.', 'AC Private SUV for comfortable road transfers with regular rest stops.',
  'Easy Paced (Flat walking paths, battery cars, no steep climbs)', 'Standard Comfort Hotel (Fully sanitized rooms, private bathroom, free Wi-Fi, desk space)', 'Clear sky, comfortable morning temperature 21°C, warming up to 26°C by noon.',
  'Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.', 'Walking socks, small daypack for personal belongings, sanitizers, light jacket.',
  'Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.', 'Elder pilgrims can request battery-operated cars or manual assistance at entry portals.', 'Approx. 1 to 2 hours transfer'
FROM public.packages p WHERE p.slug = 'family-taj-mahal'
ON CONFLICT (package_id, day_number) DO UPDATE SET
  title = EXCLUDED.title,
  overview = EXCLUDED.overview,
  morning_description = EXCLUDED.morning_description;
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
END $$;