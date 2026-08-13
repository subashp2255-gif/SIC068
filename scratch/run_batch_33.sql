DO $$
BEGIN
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Meals Included', 1 FROM public.packages WHERE slug = 'buddhism-shwedagon-pagoda-myanmar';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'AC Transit', 2 FROM public.packages WHERE slug = 'buddhism-shwedagon-pagoda-myanmar';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Expert Guide', 3 FROM public.packages WHERE slug = 'buddhism-shwedagon-pagoda-myanmar';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Entry Passes', 4 FROM public.packages WHERE slug = 'buddhism-shwedagon-pagoda-myanmar';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Spiritual darshan and guided temple tour in Shwedagon Pagoda', 0 FROM public.packages WHERE slug = 'buddhism-shwedagon-pagoda-myanmar';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Experience peaceful aarti assemblies and sacred rituals', 1 FROM public.packages WHERE slug = 'buddhism-shwedagon-pagoda-myanmar';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Comfortable transfers to all holy sites', 2 FROM public.packages WHERE slug = 'buddhism-shwedagon-pagoda-myanmar';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry valid government ID cards for verification.', 0 FROM public.packages WHERE slug = 'buddhism-shwedagon-pagoda-myanmar';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Traditional decency wear is recommended inside temple corridors.', 1 FROM public.packages WHERE slug = 'buddhism-shwedagon-pagoda-myanmar';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Avoid carrying electronics inside the inner sanctum.', 2 FROM public.packages WHERE slug = 'buddhism-shwedagon-pagoda-myanmar';
DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'buddhism-tiger-s-nest-monastery-paro-taktsang-bhutan');
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Hotel Stay', 0 FROM public.packages WHERE slug = 'buddhism-tiger-s-nest-monastery-paro-taktsang-bhutan';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Meals Included', 1 FROM public.packages WHERE slug = 'buddhism-tiger-s-nest-monastery-paro-taktsang-bhutan';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'AC Transit', 2 FROM public.packages WHERE slug = 'buddhism-tiger-s-nest-monastery-paro-taktsang-bhutan';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Expert Guide', 3 FROM public.packages WHERE slug = 'buddhism-tiger-s-nest-monastery-paro-taktsang-bhutan';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Entry Passes', 4 FROM public.packages WHERE slug = 'buddhism-tiger-s-nest-monastery-paro-taktsang-bhutan';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Spiritual darshan and guided temple tour in Tiger’s Nest Monastery', 0 FROM public.packages WHERE slug = 'buddhism-tiger-s-nest-monastery-paro-taktsang-bhutan';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Experience peaceful aarti assemblies and sacred rituals', 1 FROM public.packages WHERE slug = 'buddhism-tiger-s-nest-monastery-paro-taktsang-bhutan';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Comfortable transfers to all holy sites', 2 FROM public.packages WHERE slug = 'buddhism-tiger-s-nest-monastery-paro-taktsang-bhutan';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry valid government ID cards for verification.', 0 FROM public.packages WHERE slug = 'buddhism-tiger-s-nest-monastery-paro-taktsang-bhutan';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Traditional decency wear is recommended inside temple corridors.', 1 FROM public.packages WHERE slug = 'buddhism-tiger-s-nest-monastery-paro-taktsang-bhutan';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Avoid carrying electronics inside the inner sanctum.', 2 FROM public.packages WHERE slug = 'buddhism-tiger-s-nest-monastery-paro-taktsang-bhutan';
DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'christianity-basilica-of-our-lady-of-guadalupe-mexico');
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Hotel Stay', 0 FROM public.packages WHERE slug = 'christianity-basilica-of-our-lady-of-guadalupe-mexico';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Meals Included', 1 FROM public.packages WHERE slug = 'christianity-basilica-of-our-lady-of-guadalupe-mexico';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'AC Transit', 2 FROM public.packages WHERE slug = 'christianity-basilica-of-our-lady-of-guadalupe-mexico';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Expert Guide', 3 FROM public.packages WHERE slug = 'christianity-basilica-of-our-lady-of-guadalupe-mexico';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Entry Passes', 4 FROM public.packages WHERE slug = 'christianity-basilica-of-our-lady-of-guadalupe-mexico';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Spiritual darshan and guided temple tour in Basilica of Our Lady of Guadalupe', 0 FROM public.packages WHERE slug = 'christianity-basilica-of-our-lady-of-guadalupe-mexico';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Experience peaceful aarti assemblies and sacred rituals', 1 FROM public.packages WHERE slug = 'christianity-basilica-of-our-lady-of-guadalupe-mexico';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Comfortable transfers to all holy sites', 2 FROM public.packages WHERE slug = 'christianity-basilica-of-our-lady-of-guadalupe-mexico';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry valid government ID cards for verification.', 0 FROM public.packages WHERE slug = 'christianity-basilica-of-our-lady-of-guadalupe-mexico';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Traditional decency wear is recommended inside temple corridors.', 1 FROM public.packages WHERE slug = 'christianity-basilica-of-our-lady-of-guadalupe-mexico';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Avoid carrying electronics inside the inner sanctum.', 2 FROM public.packages WHERE slug = 'christianity-basilica-of-our-lady-of-guadalupe-mexico';
DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'christianity-basilica-of-saint-peter-vatican-city');
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Hotel Stay', 0 FROM public.packages WHERE slug = 'christianity-basilica-of-saint-peter-vatican-city';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Meals Included', 1 FROM public.packages WHERE slug = 'christianity-basilica-of-saint-peter-vatican-city';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'AC Transit', 2 FROM public.packages WHERE slug = 'christianity-basilica-of-saint-peter-vatican-city';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Expert Guide', 3 FROM public.packages WHERE slug = 'christianity-basilica-of-saint-peter-vatican-city';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Entry Passes', 4 FROM public.packages WHERE slug = 'christianity-basilica-of-saint-peter-vatican-city';
END $$;