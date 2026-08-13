DO $$
BEGIN
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
END $$;