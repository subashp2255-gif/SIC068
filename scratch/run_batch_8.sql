DO $$
BEGIN
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
END $$;