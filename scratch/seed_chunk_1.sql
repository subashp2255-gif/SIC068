 Destinations (95)
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

