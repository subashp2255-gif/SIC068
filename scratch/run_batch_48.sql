DO $$
BEGIN
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
END $$;