DO $$
BEGIN
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
END $$;