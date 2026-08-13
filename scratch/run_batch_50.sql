DO $$
BEGIN
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/pilgrimage/Christianity/Bethlehem, Palestine.jpg', 'Bethlehem christian pilgrimage destination in West Bank, Palestine', true, 0
FROM public.packages WHERE slug = 'christianity-bethlehem-palestine';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'christianity-camino-de-santiago-spain');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/pilgrimage/Christianity/Camino de Santiago, Spain.jpg', 'Camino de Santiago, Spain christian pilgrimage destination in Galicia, Spain', true, 0
FROM public.packages WHERE slug = 'christianity-camino-de-santiago-spain';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'christianity-canterbury-cathedral-england');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/pilgrimage/Christianity/Canterbury Cathedral, England.jpg', 'Canterbury Cathedral christian pilgrimage destination in Kent, England', true, 0
FROM public.packages WHERE slug = 'christianity-canterbury-cathedral-england';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'christianity-church-of-the-holy-sepulchre-jerusalem-israel');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/pilgrimage/Christianity/Church of the Holy Sepulchre, Jerusalem, Israel.jpg', 'Church of the Holy Sepulchre, Jerusalem christian pilgrimage destination in Jerusalem, Israel', true, 0
FROM public.packages WHERE slug = 'christianity-church-of-the-holy-sepulchre-jerusalem-israel';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'christianity-el-santuario-de-chimayo-new-mexico-usa');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/pilgrimage/Christianity/El Santuario de Chimayo, New Mexico, USA.jpg', 'El Santuario de Chimayo christian pilgrimage destination in New Mexico, USA', true, 0
FROM public.packages WHERE slug = 'christianity-el-santuario-de-chimayo-new-mexico-usa';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'christianity-f-tima-portugal');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/pilgrimage/Christianity/Fátima, Portugal.jpg', 'Fátima christian pilgrimage destination in Santarém, Portugal', true, 0
FROM public.packages WHERE slug = 'christianity-f-tima-portugal';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'christianity-lalibela-ethiopia');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/pilgrimage/Christianity/Lalibela, Ethiopia.webp', 'Lalibela christian pilgrimage destination in Amhara, Ethiopia', true, 0
FROM public.packages WHERE slug = 'christianity-lalibela-ethiopia';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'christianity-mount-athos-greece');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/pilgrimage/Christianity/Mount Athos, Greece.jpg', 'Mount Athos christian pilgrimage destination in Chalkidiki, Greece', true, 0
FROM public.packages WHERE slug = 'christianity-mount-athos-greece';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'christianity-old-city-jerusalem-israel');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/pilgrimage/Christianity/Old City Jerusalem, Israel.jpg', 'Old City Jerusalem christian pilgrimage destination in Jerusalem, Israel', true, 0
FROM public.packages WHERE slug = 'christianity-old-city-jerusalem-israel';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'christianity-sanctuary-of-our-lady-of-lourdes-france');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/pilgrimage/Christianity/Sanctuary of Our Lady of Lourdes, France.jpg', 'Sanctuary of Our Lady of Lourdes christian pilgrimage destination in Hautes-Pyrénées, France', true, 0
FROM public.packages WHERE slug = 'christianity-sanctuary-of-our-lady-of-lourdes-france';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'christianity-santiago-atitl-n-guatemala');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/pilgrimage/Christianity/Santiago Atitlán, Guatemala.jpg', 'Santiago Atitlán christian pilgrimage destination in Sololá, Guatemala', true, 0
FROM public.packages WHERE slug = 'christianity-santiago-atitl-n-guatemala';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'christianity-santu-rio-de-nossa-senhora-aparecida-brazil');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/pilgrimage/Christianity/Santuário de Nossa Senhora Aparecida, Brazil.jpg', 'Santuário de Nossa Senhora Aparecida christian pilgrimage destination in São Paulo, Brazil', true, 0
FROM public.packages WHERE slug = 'christianity-santu-rio-de-nossa-senhora-aparecida-brazil';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'christianity-vatican-city-italy');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/pilgrimage/Christianity/Vatican City, Italy.jpg', 'Vatican City christian pilgrimage destination in Vatican City, Italy', true, 0
FROM public.packages WHERE slug = 'christianity-vatican-city-italy';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'hinduism-adam-s-peak-sri-pada-sri-lanka');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/pilgrimage/Hinduism/Adam’s Peak (Sri Pada), Sri Lanka.jpg', 'Adam’s Peak (Sri Pada) hindu pilgrimage destination in Ratnapura, Sri Lanka', true, 0
FROM public.packages WHERE slug = 'hinduism-adam-s-peak-sri-pada-sri-lanka';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'hinduism-badrinath-india');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/pilgrimage/Hinduism/Badrinath, India.jpg', 'Badrinath hindu pilgrimage destination in Chamoli, Uttarakhand, India', true, 0
FROM public.packages WHERE slug = 'hinduism-badrinath-india';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'hinduism-dwarkadhish-temple-dwarka-india');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/pilgrimage/Hinduism/Dwarkadhish Temple (Dwarka), India.jpg', 'Dwarkadhish Temple hindu pilgrimage destination in Dwarka, Gujarat, India', true, 0
FROM public.packages WHERE slug = 'hinduism-dwarkadhish-temple-dwarka-india';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'hinduism-golden-temple-harmandir-sahib-amritsar-india');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/pilgrimage/Hinduism/Golden Temple (Harmandir Sahib), Amritsar, India.jpg', 'Golden Temple hindu pilgrimage destination in Amritsar, Punjab, India', true, 0
FROM public.packages WHERE slug = 'hinduism-golden-temple-harmandir-sahib-amritsar-india';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'hinduism-haridwar-rishikesh-india');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/pilgrimage/Hinduism/Haridwar & Rishikesh, India.jpg', 'Haridwar & Rishikesh hindu pilgrimage destination in Uttarakhand, India', true, 0
FROM public.packages WHERE slug = 'hinduism-haridwar-rishikesh-india';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'hinduism-jagannath-temple-puri-india');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/pilgrimage/Hinduism/Jagannath Temple (Puri), India.jpg', 'Jagannath Temple hindu pilgrimage destination in Puri, Odisha, India', true, 0
FROM public.packages WHERE slug = 'hinduism-jagannath-temple-puri-india';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'hinduism-kashi-vishwanath-varanasi-india');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/pilgrimage/Hinduism/Kashi Vishwanath (Varanasi), India.jpg', 'Kashi Vishwanath hindu pilgrimage destination in Varanasi, Uttar Pradesh, India', true, 0
FROM public.packages WHERE slug = 'hinduism-kashi-vishwanath-varanasi-india';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'hinduism-kedarnath-india');
END $$;