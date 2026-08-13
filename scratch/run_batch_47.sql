DO $$
BEGIN
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Spiritual darshan and guided temple tour in Umayyad Mosque, Damascus', 0 FROM public.packages WHERE slug = 'islam-umayyad-mosque-damascus-syria';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Experience peaceful aarti assemblies and sacred rituals', 1 FROM public.packages WHERE slug = 'islam-umayyad-mosque-damascus-syria';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Comfortable transfers to all holy sites', 2 FROM public.packages WHERE slug = 'islam-umayyad-mosque-damascus-syria';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry valid government ID cards for verification.', 0 FROM public.packages WHERE slug = 'islam-umayyad-mosque-damascus-syria';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Traditional decency wear is recommended inside temple corridors.', 1 FROM public.packages WHERE slug = 'islam-umayyad-mosque-damascus-syria';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Avoid carrying electronics inside the inner sanctum.', 2 FROM public.packages WHERE slug = 'islam-umayyad-mosque-damascus-syria';
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/family/Alleppey Backwaters.jpg', 'Alleppey Backwaters family tour destination in Alappuzha, Kerala', true, 0
FROM public.packages WHERE slug = 'family-alleppey-backwaters';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'family-amber-fort');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/family/Amber Fort.jpg', 'Amber Fort family tour destination in Jaipur, Rajasthan', true, 0
FROM public.packages WHERE slug = 'family-amber-fort';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'family-athirappilly-waterfalls');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/family/Athirappilly Waterfalls.jpg', 'Athirappilly Waterfalls family tour destination in Thrissur, Kerala', true, 0
FROM public.packages WHERE slug = 'family-athirappilly-waterfalls';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'family-big-ben');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/family/Big Ben.jpg', 'Big Ben family tour destination in London, United Kingdom', true, 0
FROM public.packages WHERE slug = 'family-big-ben';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'family-burj-khalifa');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/family/Burj Khalifa.jpg', 'Burj Khalifa family tour destination in Dubai, United Arab Emirates', true, 0
FROM public.packages WHERE slug = 'family-burj-khalifa';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'family-chitrakote-waterfalls');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/family/Chitrakote Waterfalls.jpg', 'Chitrakote Waterfalls family tour destination in Bastar, Chhattisgarh', true, 0
FROM public.packages WHERE slug = 'family-chitrakote-waterfalls';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'family-city-palace-udaipur');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/family/City Palace, Udaipur.jpg', 'City Palace, Udaipur family tour destination in Udaipur, Rajasthan', true, 0
FROM public.packages WHERE slug = 'family-city-palace-udaipur';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'family-colosseum');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/family/Colosseum.jpg', 'Colosseum family tour destination in Rome, Italy', true, 0
FROM public.packages WHERE slug = 'family-colosseum';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'family-dawki-river-umngot-river');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/family/Dawki River (Umngot River).webp', 'Dawki River family tour destination in West Jaintia Hills, Meghalaya', true, 0
FROM public.packages WHERE slug = 'family-dawki-river-umngot-river';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'family-disneyland-paris');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/family/Disneyland Paris.webp', 'Disneyland Paris family tour destination in Marne-la-Vallée, France', true, 0
FROM public.packages WHERE slug = 'family-disneyland-paris';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'family-dubai-miracle-garden');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/family/Dubai Miracle Garden.jpg', 'Dubai Miracle Garden family tour destination in Dubai, United Arab Emirates', true, 0
FROM public.packages WHERE slug = 'family-dubai-miracle-garden';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'family-dudhsagar-falls');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/family/Dudhsagar Falls.jpg', 'Dudhsagar Falls family tour destination in Goa / Karnataka', true, 0
FROM public.packages WHERE slug = 'family-dudhsagar-falls';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'family-eiffel-tower');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/family/Eiffel Tower.jpg', 'Eiffel Tower family tour destination in Paris, France', true, 0
FROM public.packages WHERE slug = 'family-eiffel-tower';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'family-gardens-by-the-bay');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/family/Gardens by the Bay.jpg', 'Gardens by the Bay family tour destination in Singapore', true, 0
FROM public.packages WHERE slug = 'family-gardens-by-the-bay';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'family-glacier-3000');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/family/Glacier 3000.jpg', 'Glacier 3000 family tour destination in Les Diablerets, Switzerland', true, 0
FROM public.packages WHERE slug = 'family-glacier-3000';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'family-gol-gumbaz');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/family/Gol Gumbaz.jpg', 'Gol Gumbaz family tour destination in Vijayapura, Karnataka', true, 0
FROM public.packages WHERE slug = 'family-gol-gumbaz';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'family-hampi-monuments');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/family/Hampi Monuments.jpg', 'Hampi Monuments family tour destination in Vijayanagara, Karnataka', true, 0
FROM public.packages WHERE slug = 'family-hampi-monuments';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'family-hawa-mahal');
END $$;