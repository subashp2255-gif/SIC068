DO $$
BEGIN
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
END $$;