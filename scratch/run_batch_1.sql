DO $$
BEGIN
INSERT INTO public.destinations (name, slug, city, state, country, description, image_url, alt_text, main_category, faith_category, category_badge, is_active)
VALUES ('Amber Fort', 'amber-fort', 'Jaipur', 'Rajasthan', 'India', 'A historic hilltop fort showcasing grand Rajput architecture.', '/images/tourist-places/family/Amber Fort.jpg', 'Amber Fort in Jaipur, Rajasthan', 'Family', NULL, 'Family Tour', true)
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
VALUES ('City Palace', 'city-palace-udaipur', 'Udaipur', 'Rajasthan', 'India', 'A royal palace complex overlooking Lake Pichola.', '/images/tourist-places/family/City Palace, Udaipur.jpg', 'City Palace in Udaipur, Rajasthan', 'Family', NULL, 'Family Tour', true)
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
VALUES ('Hawa Mahal', 'hawa-mahal', 'Jaipur', 'Rajasthan', 'India', 'The famous Palace of Winds featuring a unique honeycomb facade.', '/images/tourist-places/family/Hawa Mahal.jpg', 'Hawa Mahal in Jaipur, Rajasthan', 'Family', NULL, 'Family Tour', true)
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
VALUES ('Mehrangarh Fort', 'mehrangarh-fort', 'Jodhpur', 'Rajasthan', 'India', 'A majestic fortress standing high above the blue city of Jodhpur.', '/images/tourist-places/family/Mehrangarh Fort.jpg', 'Mehrangarh Fort in Jodhpur, Rajasthan', 'Family', NULL, 'Family Tour', true)
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
VALUES ('Mysore Palace', 'mysore-palace', 'Mysore', 'Karnataka', 'India', 'An opulent royal residence illuminated with breathtaking grandeur.', '/images/tourist-places/family/Mysore Palace.jpg', 'Mysore Palace in Mysore, Karnataka', 'Family', NULL, 'Family Tour', true)
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
VALUES ('Gol Gumbaz', 'gol-gumbaz', 'Vijayapura', 'Karnataka', 'India', 'A historic mausoleum famous for its acoustic whispering gallery.', '/images/tourist-places/family/Gol Gumbaz.jpg', 'Gol Gumbaz in Vijayapura, Karnataka', 'Family', NULL, 'Family Tour', true)
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
VALUES ('Radhanagar Beach', 'radhanagar-beach', 'Andaman & Nicobar Islands', NULL, 'India', 'Pristine white sand beach surrounded by turquoise ocean waters.', '/images/tourist-places/family/Radhanagar Beach.jpg', 'Radhanagar Beach in Andaman Islands', 'Family', NULL, 'Family Tour', true)
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
VALUES ('Athirappilly Waterfalls', 'athirappilly-waterfalls', 'Thrissur', 'Kerala', 'India', 'Cascading waterfall known as the Niagara of South India.', '/images/tourist-places/family/Athirappilly Waterfalls.jpg', 'Athirappilly Waterfalls in Kerala', 'Family', NULL, 'Family Tour', true)
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
VALUES ('Munnar Tea Gardens', 'munnar-tea-gardens', 'Munnar', 'Kerala', 'India', 'Lush green tea plantations blanketed in serene hill station mist.', '/images/tourist-places/family/Munnar Tea Gardens.jpg', 'Munnar Tea Gardens hill station in Kerala', 'Family', NULL, 'Family Tour', true)
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
VALUES ('Alleppey Backwaters', 'alleppey-backwaters', 'Alappuzha', 'Kerala', 'India', 'Tranquil backwater canals experienced through traditional houseboats.', '/images/tourist-places/family/Alleppey Backwaters.jpg', 'Alleppey Backwaters houseboat experience in Kerala', 'Family', NULL, 'Family Tour', true)
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
VALUES ('Dudhsagar Falls', 'dudhsagar-falls', 'Goa / Karnataka', NULL, 'India', 'A four-tiered waterfall roaring through lush Western Ghats forest.', '/images/tourist-places/family/Dudhsagar Falls.jpg', 'Dudhsagar Waterfalls in Western Ghats', 'Family', NULL, 'Family Tour', true)
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
VALUES ('Hampi Monuments', 'hampi-monuments', 'Vijayanagara', 'Karnataka', 'India', 'UNESCO World Heritage ancient ruins of the Vijayanagara Empire.', '/images/tourist-places/family/Hampi Monuments.jpg', 'Hampi ancient temple monuments in Karnataka', 'Family', NULL, 'Family Tour', true)
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
VALUES ('Chitrakote Waterfalls', 'chitrakote-waterfalls', 'Bastar', 'Chhattisgarh', 'India', 'The widest waterfall in India, scenic and powerful year-round.', '/images/tourist-places/family/Chitrakote Waterfalls.jpg', 'Chitrakote Waterfalls in Chhattisgarh', 'Family', NULL, 'Family Tour', true)
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
VALUES ('Living Root Bridges', 'living-root-bridges', 'Cherrapunji', 'Meghalaya', 'India', 'Bio-engineered natural bridges woven from living rubber tree roots.', '/images/tourist-places/family/Living Root Bridges.jpg', 'Living Root Bridges in Meghalaya', 'Family', NULL, 'Family Tour', true)
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
VALUES ('Dawki River', 'dawki-river', 'West Jaintia Hills', 'Meghalaya', 'India', 'Crystal clear river waters where boats appear to float in air.', '/images/tourist-places/family/Dawki River (Umngot River).webp', 'Dawki Umngot River in Meghalaya', 'Family', NULL, 'Family Tour', true)
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
VALUES ('Rohtang Pass', 'rohtang-pass', 'Manali', 'Himachal Pradesh', 'India', 'High mountain pass offering snow-covered vistas and alpine adventure.', '/images/tourist-places/family/Rohtang-Pass.jpg', 'Rohtang Pass in Himachal Pradesh', 'Family', NULL, 'Family Tour', true)
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
VALUES ('Pangong Lake', 'pangong-lake', 'Ladakh', NULL, 'India', 'High-altitude lake renowned for changing shades of blue.', '/images/tourist-places/family/Pangong Lake.jpg', 'Pangong Tso Lake in Ladakh', 'Family', NULL, 'Family Tour', true)
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
VALUES ('Nubra Valley', 'nubra-valley', 'Ladakh', NULL, 'India', 'Cold desert mountain valley famous for double-humped Bactrian camels.', '/images/tourist-places/family/Nubra Valley.jpg', 'Nubra Valley mountain landscape in Ladakh', 'Family', NULL, 'Family Tour', true)
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
VALUES ('Eiffel Tower', 'eiffel-tower', 'Paris', 'France', 'India', 'World-famous wrought-iron lattice tower overlooking Paris.', '/images/tourist-places/family/Eiffel Tower.jpg', 'Eiffel Tower in Paris, France', 'Family', NULL, 'Family Tour', true)
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
VALUES ('Disneyland Paris', 'disneyland-paris', 'Marne-la-Vallée', 'France', 'India', 'Enchanting family theme park filled with magic and entertainment.', '/images/tourist-places/family/Disneyland Paris.webp', 'Disneyland Paris castle theme park', 'Family', NULL, 'Family Tour', true)
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
VALUES ('Swiss Alps (Jungfraujoch)', 'swiss-alps', 'Bernese Oberland', 'Switzerland', 'India', 'Top of Europe mountain peak surrounded by eternal snow and glaciers.', '/images/tourist-places/family/Swiss Alps (Jungfraujoch).webp', 'Jungfraujoch Swiss Alps peak in Switzerland', 'Family', NULL, 'Family Tour', true)
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
VALUES ('Mount Titlis', 'mount-titlis', 'Engelberg', 'Switzerland', 'India', 'Panoramic mountain resort featuring revolving cable cars and snow activities.', '/images/tourist-places/family/Mount Titlis.jpg', 'Mount Titlis cable car in Switzerland', 'Family', NULL, 'Family Tour', true)
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
VALUES ('Glacier 3000', 'glacier-3000', 'Les Diablerets', 'Switzerland', 'India', 'High-altitude glacier destination featuring Peak Walk suspension bridge.', '/images/tourist-places/family/Glacier 3000.jpg', 'Glacier 3000 suspension bridge in Switzerland', 'Family', NULL, 'Family Tour', true)
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
VALUES ('Colosseum', 'colosseum', 'Rome', 'Italy', 'Italy', 'Ancient Roman amphitheater showcasing millennia of historic legacy.', '/images/tourist-places/family/Colosseum.jpg', 'Colosseum amphitheater in Rome, Italy', 'Family', NULL, 'Family Tour', true)
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
VALUES ('Leaning Tower of Pisa', 'leaning-tower-pisa', 'Pisa', 'Italy', 'Italy', 'Iconic tilted bell tower landmark in the Piazza dei Miracoli.', '/images/tourist-places/family/Leaning Tower of Pisa.webp', 'Leaning Tower of Pisa in Italy', 'Family', NULL, 'Family Tour', true)
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
VALUES ('Venice Grand Canal', 'venice-grand-canal', 'Venice', 'Italy', 'Italy', 'Romantic waterway lined with Renaissance palaces and gondolas.', '/images/tourist-places/family/Venice Grand Canal.jpg', 'Venice Grand Canal in Italy', 'Family', NULL, 'Family Tour', true)
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
VALUES ('London Eye', 'london-eye', 'London', 'United Kingdom', 'United Kingdom', 'Giant observation wheel on the South Bank of the River Thames.', '/images/tourist-places/family/London Eye.jpg', 'London Eye observation wheel in London, UK', 'Family', NULL, 'Family Tour', true)
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
VALUES ('Big Ben', 'big-ben', 'London', 'United Kingdom', 'United Kingdom', 'Iconic clock tower and parliament landmark at Westminster.', '/images/tourist-places/family/Big Ben.jpg', 'Big Ben clock tower in London, UK', 'Family', NULL, 'Family Tour', true)
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
VALUES ('Gardens by the Bay', 'gardens-by-the-bay', 'Singapore', NULL, 'India', 'Futuristic botanical garden featuring illuminated Supertree structures.', '/images/tourist-places/family/Gardens by the Bay.jpg', 'Gardens by the Bay Supertrees in Singapore', 'Family', NULL, 'Family Tour', true)
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
VALUES ('Marina Bay Sands SkyPark', 'marina-bay-sands', 'Singapore', NULL, 'India', 'Skyline observation deck offering 360-degree city views.', '/images/tourist-places/family/Marina Bay Sands SkyPark.jpg', 'Marina Bay Sands SkyPark in Singapore', 'Family', NULL, 'Family Tour', true)
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
VALUES ('Sentosa Island', 'sentosa-island', 'Singapore', NULL, 'India', 'Island resort with tropical beaches, theme parks, and family attractions.', '/images/tourist-places/family/Sentosa Island.jpg', 'Sentosa Island resort in Singapore', 'Family', NULL, 'Family Tour', true)
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
VALUES ('Burj Khalifa', 'burj-khalifa', 'Dubai', 'United Arab Emirates', 'India', 'The world''s tallest skyscraper rising high above downtown Dubai.', '/images/tourist-places/family/Burj Khalifa.jpg', 'Burj Khalifa skyscraper in Dubai, UAE', 'Family', NULL, 'Family Tour', true)
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
VALUES ('Dubai Miracle Garden', 'dubai-miracle-garden', 'Dubai', 'United Arab Emirates', 'India', 'Extravagant floral garden featuring millions of blooming flowers.', '/images/tourist-places/family/Dubai Miracle Garden.jpg', 'Dubai Miracle Garden floral park in UAE', 'Family', NULL, 'Family Tour', true)
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
VALUES ('Museum of the Future', 'museum-of-the-future', 'Dubai', 'United Arab Emirates', 'India', 'Architectural marvel showcasing futuristic innovation and technology.', '/images/tourist-places/family/Museum of the Future.jpeg', 'Museum of the Future in Dubai, UAE', 'Family', NULL, 'Family Tour', true)
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
VALUES ('Palm Jumeirah', 'palm-jumeirah', 'Dubai', 'United Arab Emirates', 'India', 'Man-made palm-shaped island with luxury resorts and beaches.', '/images/tourist-places/family/Palm Jumeirah.jpg', 'Palm Jumeirah island in Dubai, UAE', 'Family', NULL, 'Family Tour', true)
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
VALUES ('Universal Studios Japan', 'universal-studios-japan', 'Osaka', 'Japan', 'Japan', 'Thrilling theme park featuring immersive movie worlds and rides.', '/images/tourist-places/family/Universal Studios Japan.jpg', 'Universal Studios theme park in Osaka, Japan', 'Family', NULL, 'Family Tour', true)
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
VALUES ('Tokyo Disneyland', 'tokyo-disneyland', 'Tokyo', 'Japan', 'Japan', 'Classic Disney kingdom filled with magical parades and attractions.', '/images/tourist-places/family/Tokyo Disneyland.jpg', 'Tokyo Disneyland resort in Japan', 'Family', NULL, 'Family Tour', true)
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
VALUES ('Mount Fuji', 'mount-fuji', 'Honshu', 'Japan', 'Japan', 'Sacred snow-capped volcano and national symbol of Japan.', '/images/tourist-places/family/Mount Fuji.jpg', 'Mount Fuji landmark in Japan', 'Family', NULL, 'Family Tour', true)
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
VALUES ('Niagara Falls', 'niagara-falls', 'Ontario', 'Canada / New York, USA', 'India', 'Massive waterfalls straddling the international border with spectacular views.', '/images/tourist-places/family/Niagara Falls.jpg', 'Niagara Falls waterfall landscape', 'Family', NULL, 'Family Tour', true)
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
VALUES ('Kedarnath', 'kedarnath', 'Rudraprayag', 'Uttarakhand, India', 'India', 'Sacred Jyotirlinga shrine set against high Himalayan peaks.', '/images/tourist-places/pilgrimage/Hinduism/Kedarnath, India.jpg', 'Kedarnath temple pilgrimage in Uttarakhand, India', 'Pilgrimage', 'Hinduism', 'Hindu Pilgrimage', true)
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
END $$;