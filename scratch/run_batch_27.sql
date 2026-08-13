DO $$
BEGIN
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Stay well-hydrated during the walk.', 2 FROM public.packages WHERE slug = 'family-pangong-lake';
DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'family-radhanagar-beach');
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Hotel Stay', 0 FROM public.packages WHERE slug = 'family-radhanagar-beach';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Meals Included', 1 FROM public.packages WHERE slug = 'family-radhanagar-beach';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'AC Transit', 2 FROM public.packages WHERE slug = 'family-radhanagar-beach';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Local Experience', 3 FROM public.packages WHERE slug = 'family-radhanagar-beach';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Relaxing stay and leisure exploration in Radhanagar Beach', 0 FROM public.packages WHERE slug = 'family-radhanagar-beach';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Scenic beauty and local dining experiences', 1 FROM public.packages WHERE slug = 'family-radhanagar-beach';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Private luxury transfers for ultimate comfort', 2 FROM public.packages WHERE slug = 'family-radhanagar-beach';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry sun protection (glasses/hat) for outdoor excursions.', 0 FROM public.packages WHERE slug = 'family-radhanagar-beach';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Keep local currency handy for local markets.', 1 FROM public.packages WHERE slug = 'family-radhanagar-beach';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Follow guidelines at heritage locations.', 2 FROM public.packages WHERE slug = 'family-radhanagar-beach';
DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'family-rohtang-pass');
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Hotel Stay', 0 FROM public.packages WHERE slug = 'family-rohtang-pass';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Meals Included', 1 FROM public.packages WHERE slug = 'family-rohtang-pass';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'AC Transit', 2 FROM public.packages WHERE slug = 'family-rohtang-pass';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Guided heritage sightseeing of Rohtang Pass landmarks', 0 FROM public.packages WHERE slug = 'family-rohtang-pass';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Immersive cultural show and local market visits', 1 FROM public.packages WHERE slug = 'family-rohtang-pass';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Delight in authentic regional delicacies', 2 FROM public.packages WHERE slug = 'family-rohtang-pass';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry sun protection (glasses/hat) for outdoor excursions.', 0 FROM public.packages WHERE slug = 'family-rohtang-pass';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Keep local currency handy for local markets.', 1 FROM public.packages WHERE slug = 'family-rohtang-pass';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Follow guidelines at heritage locations.', 2 FROM public.packages WHERE slug = 'family-rohtang-pass';
DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'family-sentosa-island');
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Hotel Stay', 0 FROM public.packages WHERE slug = 'family-sentosa-island';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Meals Included', 1 FROM public.packages WHERE slug = 'family-sentosa-island';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'AC Transit', 2 FROM public.packages WHERE slug = 'family-sentosa-island';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Guided heritage sightseeing of Sentosa Island landmarks', 0 FROM public.packages WHERE slug = 'family-sentosa-island';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Immersive cultural show and local market visits', 1 FROM public.packages WHERE slug = 'family-sentosa-island';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Delight in authentic regional delicacies', 2 FROM public.packages WHERE slug = 'family-sentosa-island';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry sun protection (glasses/hat) for outdoor excursions.', 0 FROM public.packages WHERE slug = 'family-sentosa-island';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Keep local currency handy for local markets.', 1 FROM public.packages WHERE slug = 'family-sentosa-island';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Follow guidelines at heritage locations.', 2 FROM public.packages WHERE slug = 'family-sentosa-island';
DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'family-swiss-alps-jungfraujoch');
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Hotel Stay', 0 FROM public.packages WHERE slug = 'family-swiss-alps-jungfraujoch';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Meals Included', 1 FROM public.packages WHERE slug = 'family-swiss-alps-jungfraujoch';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'AC Transit', 2 FROM public.packages WHERE slug = 'family-swiss-alps-jungfraujoch';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Guided heritage sightseeing of Swiss Alps landmarks', 0 FROM public.packages WHERE slug = 'family-swiss-alps-jungfraujoch';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Immersive cultural show and local market visits', 1 FROM public.packages WHERE slug = 'family-swiss-alps-jungfraujoch';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Delight in authentic regional delicacies', 2 FROM public.packages WHERE slug = 'family-swiss-alps-jungfraujoch';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry sun protection (glasses/hat) for outdoor excursions.', 0 FROM public.packages WHERE slug = 'family-swiss-alps-jungfraujoch';
END $$;