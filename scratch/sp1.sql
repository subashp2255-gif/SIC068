CREATE OR REPLACE FUNCTION public.seed_part1()
RETURNS void LANGUAGE plpgsql SECURITY DEFINER SET search_path = public AS $$
BEGIN
INSERT INTO public.destinations (name, slug, city, state, country, description, image_url, alt_text, main_category, faith_category, category_badge, is_active)
VALUES ('Taj Mahal', 'taj-mahal', 'Agra', 'Uttar Pradesh', 'India', 'A world-renowned architectural masterpiece and iconic family landmark.', '/images/tourist-places/family/Taj Mahal.webp', 'Taj Mahal landmark in Agra, Uttar Pradesh', 'Family', NULL, 'Family Tour', true)
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
INSERT INTO public.destinations (name, slug, city, state, country, description, image_url, alt_text, main_category, faith_category, category_badge, is_active)
VALUES ('Badrinath', 'badrinath', 'Chamoli', 'Uttarakhand, India', 'India', 'Revered Vishnu temple part of the sacred Char Dham circuit.', '/images/tourist-places/pilgrimage/Hinduism/Badrinath, India.jpg', 'Badrinath temple pilgrimage in Uttarakhand, India', 'Pilgrimage', 'Hinduism', 'Hindu Pilgrimage', true)
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
VALUES ('Rameswaram', 'rameswaram', 'Ramanathapuram', 'Tamil Nadu, India', 'India', 'Holy island pilgrimage site famous for its grand corridor pillars.', '/images/tourist-places/pilgrimage/Hinduism/Rameswaram, India.jpg', 'Rameswaram temple pilgrimage in Tamil Nadu, India', 'Pilgrimage', 'Hinduism', 'Hindu Pilgrimage', true)
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
VALUES ('Jagannath Temple', 'jagannath-temple', 'Puri', 'Odisha, India', 'India', 'Ancient seaside temple famous for the annual Ratha Yatra festival.', '/images/tourist-places/pilgrimage/Hinduism/Jagannath Temple (Puri), India.jpg', 'Jagannath Temple pilgrimage in Puri, Odisha, India', 'Pilgrimage', 'Hinduism', 'Hindu Pilgrimage', true)
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
VALUES ('Dwarkadhish Temple', 'dwarkadhish-temple', 'Dwarka', 'Gujarat, India', 'India', 'Sacred temple dedicated to Lord Krishna on the Arabian Sea coast.', '/images/tourist-places/pilgrimage/Hinduism/Dwarkadhish Temple (Dwarka), India.jpg', 'Dwarkadhish Temple pilgrimage in Dwarka, Gujarat, India', 'Pilgrimage', 'Hinduism', 'Hindu Pilgrimage', true)
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
VALUES ('Vaishno Devi', 'vaishno-devi', 'Katra', 'Jammu & Kashmir, India', 'India', 'Revered cave shrine nestled in the Trikuta Mountains.', '/images/tourist-places/pilgrimage/Hinduism/Vaishno Devi, India.jpg', 'Vaishno Devi temple pilgrimage in Katra, India', 'Pilgrimage', 'Hinduism', 'Hindu Pilgrimage', true)
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
VALUES ('Somnath Temple', 'somnath-temple', 'Prabhas Patan', 'Gujarat, India', 'India', 'The first among the twelve holy Jyotirlinga shrines by the sea.', '/images/tourist-places/pilgrimage/Hinduism/Somnath Temple, India.jpg', 'Somnath Temple pilgrimage in Gujarat, India', 'Pilgrimage', 'Hinduism', 'Hindu Pilgrimage', true)
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
VALUES ('Mahakaleshwar Temple', 'mahakaleshwar-temple', 'Ujjain', 'Madhya Pradesh, India', 'India', 'Sacred Swayambhu Jyotirlinga shrine on the banks of Kshipra River.', '/images/tourist-places/pilgrimage/Hinduism/Mahakaleshwar Temple (Ujjain), India.jpg', 'Mahakaleshwar Temple pilgrimage in Ujjain, India', 'Pilgrimage', 'Hinduism', 'Hindu Pilgrimage', true)
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
VALUES ('Trimbakeshwar Temple', 'trimbakeshwar-temple', 'Nashik', 'Maharashtra, India', 'India', 'Holy Jyotirlinga temple at the source of the Godavari River.', '/images/tourist-places/pilgrimage/Hinduism/Trimbakeshwar Temple (Nashik), India.jpg', 'Trimbakeshwar Temple pilgrimage in Nashik, India', 'Pilgrimage', 'Hinduism', 'Hindu Pilgrimage', true)
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
VALUES ('Haridwar & Rishikesh', 'haridwar-rishikesh', 'Uttarakhand', 'India', 'India', 'Gateway cities along the Ganges renowned for Ganga Aarti and ashrams.', '/images/tourist-places/pilgrimage/Hinduism/Haridwar & Rishikesh, India.jpg', 'Haridwar & Rishikesh pilgrimage in Uttarakhand, India', 'Pilgrimage', 'Hinduism', 'Hindu Pilgrimage', true)
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
VALUES ('Tirupati Balaji Temple', 'tirupati-balaji', 'Tirupati', 'Andhra Pradesh, India', 'India', 'World-famous Sri Venkateswara temple on the Seven Hills of Tirumala.', '/images/tourist-places/pilgrimage/Hinduism/Tirupati Balaji Temple, India.webp', 'Tirupati Balaji Temple pilgrimage in Andhra Pradesh, India', 'Pilgrimage', 'Hinduism', 'Hindu Pilgrimage', true)
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
VALUES ('Golden Temple', 'golden-temple-amritsar', 'Amritsar', 'Punjab, India', 'India', 'Sacred spiritual sanctuary known for its golden architecture and peaceful sarovar.', '/images/tourist-places/pilgrimage/Hinduism/Golden Temple (Harmandir Sahib), Amritsar, India.jpg', 'Golden Temple pilgrimage destination in Amritsar, India', 'Pilgrimage', 'Hinduism', 'Pilgrimage', true)
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
VALUES ('Mount Kailash', 'mount-kailash-hinduism', 'Ngari', 'Tibet', 'India', 'Revered holy mountain centerpiece of sacred parikrama.', '/images/tourist-places/pilgrimage/Hinduism/Mount Kailash, Tibet.webp', 'Mount Kailash sacred mountain pilgrimage in Tibet', 'Pilgrimage', 'Hinduism', 'Hindu Pilgrimage', true)
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
VALUES ('Kashi Vishwanath', 'kashi-vishwanath', 'Varanasi', 'Uttar Pradesh, India', 'India', 'Historic Lord Shiva Jyotirlinga shrine in the ancient city of Kashi.', '/images/tourist-places/pilgrimage/Hinduism/Kashi Vishwanath (Varanasi), India.jpg', 'Kashi Vishwanath Temple pilgrimage in Varanasi, India', 'Pilgrimage', 'Hinduism', 'Hindu Pilgrimage', true)
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
VALUES ('Bodh Gaya', 'bodh-gaya', 'Gaya', 'Bihar, India', 'India', 'Sacred place of Lord Buddha''s enlightenment under the Mahabodhi Tree.', '/images/tourist-places/pilgrimage/Buddhism/Bodh Gaya, India.jpg', 'Bodh Gaya Buddhist pilgrimage in Bihar, India', 'Pilgrimage', 'Buddhism', 'Buddhist Pilgrimage', true)
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
VALUES ('Sarnath', 'sarnath', 'Varanasi', 'Uttar Pradesh, India', 'India', 'Holy site where Lord Buddha delivered his first sermon.', '/images/tourist-places/pilgrimage/Buddhism/Sarnath, India.jpg', 'Sarnath Buddhist pilgrimage in Uttar Pradesh, India', 'Pilgrimage', 'Buddhism', 'Buddhist Pilgrimage', true)
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
VALUES ('Kushinagar', 'kushinagar', 'Kushinagar', 'Uttar Pradesh, India', 'India', 'Revered pilgrimage site of Lord Buddha''s Parinirvana.', '/images/tourist-places/pilgrimage/Buddhism/Kushinagar, India.webp', 'Kushinagar Buddhist pilgrimage in India', 'Pilgrimage', 'Buddhism', 'Buddhist Pilgrimage', true)
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
VALUES ('Lumbini', 'lumbini', 'Rupandehi', 'Nepal', 'India', 'UNESCO World Heritage site and birthplace of Siddhartha Gautama.', '/images/tourist-places/pilgrimage/Buddhism/Lumbini, Nepal.jpg', 'Lumbini Buddhist birthplace pilgrimage in Nepal', 'Pilgrimage', 'Buddhism', 'Buddhist Pilgrimage', true)
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
VALUES ('Rajgir', 'rajgir', 'Nalanda', 'Bihar, India', 'India', 'Ancient capital where Buddha taught at Vulture Peak.', '/images/tourist-places/pilgrimage/Buddhism/Rajgir, India.jpg', 'Rajgir Buddhist pilgrimage in Bihar, India', 'Pilgrimage', 'Buddhism', 'Buddhist Pilgrimage', true)
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
VALUES ('Nalanda', 'nalanda', 'Nalanda', 'Bihar, India', 'India', 'Ancient monastic university center of Buddhist learning.', '/images/tourist-places/pilgrimage/Buddhism/Nalanda, India.jpg', 'Nalanda Buddhist monastic university ruins in India', 'Pilgrimage', 'Buddhism', 'Buddhist Pilgrimage', true)
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
VALUES ('Dambulla Cave Temple', 'dambulla-cave-temple', 'Matale', 'Sri Lanka', 'India', 'Vast cave temple complex featuring historic Buddha statues and murals.', '/images/tourist-places/pilgrimage/Buddhism/Dambulla Cave Temple, Sri Lanka.jpg', 'Dambulla Cave Temple in Sri Lanka', 'Pilgrimage', 'Buddhism', 'Buddhist Pilgrimage', true)
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
VALUES ('Mahabodhi Temple', 'mahabodhi-temple-bagan', 'Bagan', 'Myanmar', 'India', 'Historic temple modelled after the original Mahabodhi shrine.', '/images/tourist-places/pilgrimage/Buddhism/Mahabodhi Temple, Bagan, Myanmar.jpg', 'Mahabodhi Temple in Bagan, Myanmar', 'Pilgrimage', 'Buddhism', 'Buddhist Pilgrimage', true)
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
VALUES ('Borobudur Temple', 'borobudur-temple', 'Magelang', 'Indonesia', 'India', 'The world''s largest Buddhist temple adorned with carved relief panels.', '/images/tourist-places/pilgrimage/Buddhism/Borobudur Temple, Indonesia.jpg', 'Borobudur Temple monument in Indonesia', 'Pilgrimage', 'Buddhism', 'Buddhist Pilgrimage', true)
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
VALUES ('Jokhang Temple', 'jokhang-temple', 'Lhasa', 'Tibet', 'India', 'Spiritual heart of Tibetan Buddhism housing the Jowo Rinpoche statue.', '/images/tourist-places/pilgrimage/Buddhism/Jokhang Temple, Lhasa, Tibet.jpg', 'Jokhang Temple in Lhasa, Tibet', 'Pilgrimage', 'Buddhism', 'Buddhist Pilgrimage', true)
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
VALUES ('Kumano Kodo', 'kumano-kodo', 'Wakayama', 'Japan', 'Japan', 'Ancient pilgrimage trails winding through sacred Japanese mountains.', '/images/tourist-places/pilgrimage/Buddhism/Kumano Kodo, Japan.jpg', 'Kumano Kodo sacred pilgrimage trail in Japan', 'Pilgrimage', 'Buddhism', 'Buddhist Pilgrimage', true)
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
VALUES ('Tiger''s Nest Monastery', 'tigers-nest-monastery', 'Paro', 'Bhutan', 'India', 'Cliffside monastery perched high above the Paro Valley.', '/images/tourist-places/pilgrimage/Buddhism/Tiger''s Nest Monastery (Paro Taktsang), Bhutan.jpg', 'Tiger''s Nest Monastery in Paro, Bhutan', 'Pilgrimage', 'Buddhism', 'Buddhist Pilgrimage', true)
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
VALUES ('Shwedagon Pagoda', 'shwedagon-pagoda', 'Yangon', 'Myanmar', 'India', 'Glowing golden stupa enshrining sacred Buddha relics.', '/images/tourist-places/pilgrimage/Buddhism/Shwedagon Pagoda, Myanmar.jpg', 'Shwedagon Pagoda in Yangon, Myanmar', 'Pilgrimage', 'Buddhism', 'Buddhist Pilgrimage', true)
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
VALUES ('Bethlehem', 'bethlehem', 'West Bank', 'Palestine', 'India', 'Historic holy city revered as the birthplace of Jesus Christ.', '/images/tourist-places/pilgrimage/Christianity/Bethlehem, Palestine.jpg', 'Bethlehem Christian pilgrimage in Palestine', 'Pilgrimage', 'Christianity', 'Christian Pilgrimage', true)
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
VALUES ('Church of the Holy Sepulchre', 'church-holy-sepulchre', 'Jerusalem', 'Israel', 'India', 'Sacred sanctuary encompassing Golgotha and the Empty Tomb.', '/images/tourist-places/pilgrimage/Christianity/Church of the Holy Sepulchre, Jerusalem, Israel.jpg', 'Church of the Holy Sepulchre in Jerusalem, Israel', 'Pilgrimage', 'Christianity', 'Christian Pilgrimage', true)
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
VALUES ('Basilica of Saint Peter', 'basilica-saint-peter', 'Vatican City', NULL, 'India', 'Grand papal basilica and spiritual center of the Catholic world.', '/images/tourist-places/pilgrimage/Christianity/Basilica of Saint Peter, Vatican City.jpg', 'Basilica of Saint Peter in Vatican City', 'Pilgrimage', 'Christianity', 'Christian Pilgrimage', true)
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
VALUES ('Basilica of Our Lady of Guadalupe', 'our-lady-guadalupe', 'Mexico City', 'Mexico', 'India', 'Major Marian shrine housing the sacred tilma of St. Juan Diego.', '/images/tourist-places/pilgrimage/Christianity/Basilica of Our Lady of Guadalupe, Mexico.jpg', 'Basilica of Our Lady of Guadalupe in Mexico City', 'Pilgrimage', 'Christianity', 'Christian Pilgrimage', true)
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
VALUES ('Canterbury Cathedral', 'canterbury-cathedral', 'Kent', 'England', 'India', 'Mother church of the worldwide Anglican Communion.', '/images/tourist-places/pilgrimage/Christianity/Canterbury Cathedral, England.jpg', 'Canterbury Cathedral in England', 'Pilgrimage', 'Christianity', 'Christian Pilgrimage', true)
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
VALUES ('Fátima', 'fatima', 'Santarém', 'Portugal', 'India', 'World-famous sanctuary dedicated to Our Lady of Fátima.', '/images/tourist-places/pilgrimage/Christianity/FÁtima, Portugal.jpg', 'Sanctuary of Fátima pilgrimage in Portugal', 'Pilgrimage', 'Christianity', 'Christian Pilgrimage', true)
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
VALUES ('Lalibela', 'lalibela', 'Amhara', 'Ethiopia', 'India', 'Monolithic rock-hewn churches carved directly into the earth.', '/images/tourist-places/pilgrimage/Christianity/Lalibela, Ethiopia.webp', 'Rock-hewn churches of Lalibela in Ethiopia', 'Pilgrimage', 'Christianity', 'Christian Pilgrimage', true)
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
VALUES ('Santiago Atitlán', 'santiago-atitlan', 'Sololá', 'Guatemala', 'India', 'Historic lakeside parish blend of faith and Maya tradition.', '/images/tourist-places/pilgrimage/Christianity/Santiago AtitlÁn, Guatemala.jpg', 'Santiago Atitlán church pilgrimage in Guatemala', 'Pilgrimage', 'Christianity', 'Christian Pilgrimage', true)
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
VALUES ('Santuário de Nossa Senhora Aparecida', 'nossa-senhora-aparecida', 'São Paulo', 'Brazil', 'India', 'The largest Marian shrine in the world dedicated to Brazil''s patron saint.', '/images/tourist-places/pilgrimage/Christianity/SantuÁrio de Nossa Senhora Aparecida, Brazil.jpg', 'Santuário de Nossa Senhora Aparecida in Brazil', 'Pilgrimage', 'Christianity', 'Christian Pilgrimage', true)
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
VALUES ('Mount Athos', 'mount-athos', 'Chalkidiki', 'Greece', 'India', 'Autonomous monastic state housing twenty Eastern Orthodox monasteries.', '/images/tourist-places/pilgrimage/Christianity/Mount Athos, Greece.jpg', 'Mount Athos Orthodox monasteries in Greece', 'Pilgrimage', 'Christianity', 'Christian Pilgrimage', true)
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
VALUES ('Old City Jerusalem', 'old-city-jerusalem-christianity', 'Jerusalem', 'Israel', 'India', 'Ancient walled city containing sacred sites of profound heritage.', '/images/tourist-places/pilgrimage/Christianity/Old City Jerusalem, Israel.jpg', 'Old City Jerusalem Christian pilgrimage in Israel', 'Pilgrimage', 'Christianity', 'Christian Pilgrimage', true)
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
VALUES ('Sanctuary of Our Lady of Lourdes', 'our-lady-lourdes', 'Hautes-Pyrénées', 'France', 'India', 'Revered pilgrimage shrine famous for its healing Grotto water.', '/images/tourist-places/pilgrimage/Christianity/Sanctuary of Our Lady of Lourdes, France.jpg', 'Sanctuary of Our Lady of Lourdes in France', 'Pilgrimage', 'Christianity', 'Christian Pilgrimage', true)
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
VALUES ('El Santuario de Chimayo', 'el-santuario-chimayo', 'New Mexico', 'USA', 'India', 'Historic adobe chapel renowned for its sacred holy dirt.', '/images/tourist-places/pilgrimage/Christianity/El Santuario de Chimayo, New Mexico, USA.jpg', 'El Santuario de Chimayo in New Mexico, USA', 'Pilgrimage', 'Christianity', 'Christian Pilgrimage', true)
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
VALUES ('Camino de Santiago', 'camino-de-santiago', 'Galicia', 'Spain', 'India', 'Famous network of pilgrim routes leading to Santiago de Compostela.', '/images/tourist-places/pilgrimage/Christianity/Camino de Santiago, Spain.jpg', 'Camino de Santiago pilgrimage trail in Spain', 'Pilgrimage', 'Christianity', 'Christian Pilgrimage', true)
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
VALUES ('Family', 'family', 'Family-friendly tours and experiences', 1, true)
ON CONFLICT (slug) DO UPDATE SET name = EXCLUDED.name, description = EXCLUDED.description;
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
END;
$$;
SELECT public.seed_part1();