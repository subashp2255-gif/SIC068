 Categories
INSERT INTO public.categories (name, slug, description, display_order, is_active)
VALUES ('Family', 'family', 'Family-friendly tours and experiences', 1, true)
ON CONFLICT (slug) DO UPDATE SET name = EXCLUDED.name, description = EXCLUDED.description;
INSERT INTO public.categories (name, slug, description, display_order, is_active)
VALUES ('Pilgrimage', 'pilgrimage', 'Sacred pilgrimage tours', 2, true)
ON CONFLICT (slug) DO UPDATE SET name = EXCLUDED.name, description = EXCLUDED.description;
INSERT INTO public.categories (name, slug, description, display_order, is_active)
VALUES ('Hinduism', 'hinduism', 'Hindu pilgrimage destinations', 3, true)
ON CONFLICT (slug) DO UPDATE SET name = EXCLUDED.name, description = EXCLUDED.description;
INSERT INTO public.categories (name, slug, description, display_order, is_active)
VALUES ('Buddhism', 'buddhism', 'Buddhist heritage trails', 4, true)
ON CONFLICT (slug) DO UPDATE SET name = EXCLUDED.name, description = EXCLUDED.description;
INSERT INTO public.categories (name, slug, description, display_order, is_active)
VALUES ('Christianity', 'christianity', 'Christian pilgrimage sites', 5, true)
ON CONFLICT (slug) DO UPDATE SET name = EXCLUDED.name, description = EXCLUDED.description;
INSERT INTO public.categories (name, slug, description, display_order, is_active)
VALUES ('Islam', 'islam', 'Islamic heritage and pilgrimage', 6, true)
ON CONFLICT (slug) DO UPDATE SET name = EXCLUDED.name, description = EXCLUDED.description;

