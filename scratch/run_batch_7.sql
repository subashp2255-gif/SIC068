DO $$
BEGIN
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
END $$;