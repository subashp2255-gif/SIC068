DO $$
BEGIN
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/pilgrimage/Hinduism/Kedarnath, India.jpg', 'Kedarnath hindu pilgrimage destination in Rudraprayag, Uttarakhand, India', true, 0
FROM public.packages WHERE slug = 'hinduism-kedarnath-india';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'hinduism-mahakaleshwar-temple-ujjain-india');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/pilgrimage/Hinduism/Mahakaleshwar Temple (Ujjain), India.jpg', 'Mahakaleshwar Temple hindu pilgrimage destination in Ujjain, Madhya Pradesh, India', true, 0
FROM public.packages WHERE slug = 'hinduism-mahakaleshwar-temple-ujjain-india';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'hinduism-mount-kailash-tibet');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/pilgrimage/Hinduism/Mount Kailash, Tibet.webp', 'Mount Kailash hindu pilgrimage destination in Ngari, Tibet', true, 0
FROM public.packages WHERE slug = 'hinduism-mount-kailash-tibet';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'hinduism-rameswaram-india');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/pilgrimage/Hinduism/Rameswaram, India.jpg', 'Rameswaram hindu pilgrimage destination in Ramanathapuram, Tamil Nadu, India', true, 0
FROM public.packages WHERE slug = 'hinduism-rameswaram-india';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'hinduism-somnath-temple-india');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/pilgrimage/Hinduism/Somnath Temple, India.jpg', 'Somnath Temple hindu pilgrimage destination in Prabhas Patan, Gujarat, India', true, 0
FROM public.packages WHERE slug = 'hinduism-somnath-temple-india';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'hinduism-tirupati-balaji-temple-india');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/pilgrimage/Hinduism/Tirupati Balaji Temple, India.webp', 'Tirupati Balaji Temple hindu pilgrimage destination in Tirupati, Andhra Pradesh, India', true, 0
FROM public.packages WHERE slug = 'hinduism-tirupati-balaji-temple-india';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'hinduism-trimbakeshwar-temple-nashik-india');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/pilgrimage/Hinduism/Trimbakeshwar Temple (Nashik), India.jpg', 'Trimbakeshwar Temple hindu pilgrimage destination in Nashik, Maharashtra, India', true, 0
FROM public.packages WHERE slug = 'hinduism-trimbakeshwar-temple-nashik-india';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'hinduism-vaishno-devi-india');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/pilgrimage/Hinduism/Vaishno Devi, India.jpg', 'Vaishno Devi hindu pilgrimage destination in Katra, Jammu & Kashmir, India', true, 0
FROM public.packages WHERE slug = 'hinduism-vaishno-devi-india';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'islam-ajmer-sharif-dargah-india');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/pilgrimage/Islam/Ajmer Sharif Dargah, India.jpg', 'Ajmer Sharif Dargah islamic pilgrimage destination in Ajmer, Rajasthan, India', true, 0
FROM public.packages WHERE slug = 'islam-ajmer-sharif-dargah-india';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'islam-al-aqsa-mosque-jerusalem-israel');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/pilgrimage/Islam/Al-Aqsa Mosque, Jerusalem, Israel.jpg', 'Al Aqsa Mosque, Jerusalem islamic pilgrimage destination in Jerusalem, Israel', true, 0
FROM public.packages WHERE slug = 'islam-al-aqsa-mosque-jerusalem-israel';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'islam-al-azhar-mosque-cairo-egypt');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/pilgrimage/Islam/Al-Azhar Mosque, Cairo, Egypt.jpg', 'Al Azhar Mosque, Cairo islamic pilgrimage destination in Cairo, Egypt', true, 0
FROM public.packages WHERE slug = 'islam-al-azhar-mosque-cairo-egypt';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'islam-al-masjid-al-qiblatayn-medina-saudi-arabia');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/pilgrimage/Islam/Al-Masjid al-Qiblatayn, Medina, Saudi Arabia.jpg', 'Al Masjid al Qiblatayn, Medina islamic pilgrimage destination in Medina, Saudi Arabia', true, 0
FROM public.packages WHERE slug = 'islam-al-masjid-al-qiblatayn-medina-saudi-arabia';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'islam-data-darbar-lahore-pakistan');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/pilgrimage/Islam/Data Darbar, Lahore, Pakistan.jpg', 'Data Darbar, Lahore islamic pilgrimage destination in Lahore, Pakistan', true, 0
FROM public.packages WHERE slug = 'islam-data-darbar-lahore-pakistan';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'islam-dome-of-the-rock-jerusalem-israel');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/pilgrimage/Islam/Dome of the Rock, Jerusalem, Israel.jpg', 'Dome of the Rock, Jerusalem islamic pilgrimage destination in Jerusalem, Israel', true, 0
FROM public.packages WHERE slug = 'islam-dome-of-the-rock-jerusalem-israel';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'islam-imam-ali-shrine-najaf-iraq');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/pilgrimage/Islam/Imam Ali Shrine, Najaf, Iraq.jpg', 'Imam Ali Shrine, Najaf islamic pilgrimage destination in Najaf, Iraq', true, 0
FROM public.packages WHERE slug = 'islam-imam-ali-shrine-najaf-iraq';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'islam-imam-husayn-shrine-karbala-iraq');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/pilgrimage/Islam/Imam Husayn Shrine, Karbala, Iraq.jpg', 'Imam Husayn Shrine, Karbala islamic pilgrimage destination in Karbala, Iraq', true, 0
FROM public.packages WHERE slug = 'islam-imam-husayn-shrine-karbala-iraq';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'islam-imam-reza-shrine-mashhad-iran');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/pilgrimage/Islam/Imam Reza Shrine, Mashhad, Iran.jpg', 'Imam Reza Shrine, Mashhad islamic pilgrimage destination in Mashhad, Iran', true, 0
FROM public.packages WHERE slug = 'islam-imam-reza-shrine-mashhad-iran';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'islam-mecca-saudi-arabia');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/pilgrimage/Islam/Mecca, Saudi Arabia.jpg', 'Mecca islamic pilgrimage destination in Makkah, Saudi Arabia', true, 0
FROM public.packages WHERE slug = 'islam-mecca-saudi-arabia';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'islam-medina-saudi-arabia');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/pilgrimage/Islam/Medina, Saudi Arabia.jpg', 'Medina islamic pilgrimage destination in Saudi Arabia', true, 0
FROM public.packages WHERE slug = 'islam-medina-saudi-arabia';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'islam-old-city-jerusalem-israel');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/pilgrimage/Islam/Old City Jerusalem, Israel.jpg', 'Old City Jerusalem islamic pilgrimage destination in Jerusalem, Israel', true, 0
FROM public.packages WHERE slug = 'islam-old-city-jerusalem-israel';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'islam-quba-mosque-medina-saudi-arabia');
END $$;