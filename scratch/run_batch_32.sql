DO $$
BEGIN
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Traditional decency wear is recommended inside temple corridors.', 1 FROM public.packages WHERE slug = 'buddhism-mount-kailash-tibet';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Avoid carrying electronics inside the inner sanctum.', 2 FROM public.packages WHERE slug = 'buddhism-mount-kailash-tibet';
DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'buddhism-nalanda-india');
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Hotel Stay', 0 FROM public.packages WHERE slug = 'buddhism-nalanda-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Meals Included', 1 FROM public.packages WHERE slug = 'buddhism-nalanda-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'AC Transit', 2 FROM public.packages WHERE slug = 'buddhism-nalanda-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Expert Guide', 3 FROM public.packages WHERE slug = 'buddhism-nalanda-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Entry Passes', 4 FROM public.packages WHERE slug = 'buddhism-nalanda-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Spiritual darshan and guided temple tour in Nalanda', 0 FROM public.packages WHERE slug = 'buddhism-nalanda-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Experience peaceful aarti assemblies and sacred rituals', 1 FROM public.packages WHERE slug = 'buddhism-nalanda-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Comfortable transfers to all holy sites', 2 FROM public.packages WHERE slug = 'buddhism-nalanda-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry valid government ID cards for verification.', 0 FROM public.packages WHERE slug = 'buddhism-nalanda-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Traditional decency wear is recommended inside temple corridors.', 1 FROM public.packages WHERE slug = 'buddhism-nalanda-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Avoid carrying electronics inside the inner sanctum.', 2 FROM public.packages WHERE slug = 'buddhism-nalanda-india';
DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'buddhism-rajgir-india');
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Hotel Stay', 0 FROM public.packages WHERE slug = 'buddhism-rajgir-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Meals Included', 1 FROM public.packages WHERE slug = 'buddhism-rajgir-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'AC Transit', 2 FROM public.packages WHERE slug = 'buddhism-rajgir-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Expert Guide', 3 FROM public.packages WHERE slug = 'buddhism-rajgir-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Entry Passes', 4 FROM public.packages WHERE slug = 'buddhism-rajgir-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Spiritual darshan and guided temple tour in Rajgir', 0 FROM public.packages WHERE slug = 'buddhism-rajgir-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Experience peaceful aarti assemblies and sacred rituals', 1 FROM public.packages WHERE slug = 'buddhism-rajgir-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Comfortable transfers to all holy sites', 2 FROM public.packages WHERE slug = 'buddhism-rajgir-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry valid government ID cards for verification.', 0 FROM public.packages WHERE slug = 'buddhism-rajgir-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Traditional decency wear is recommended inside temple corridors.', 1 FROM public.packages WHERE slug = 'buddhism-rajgir-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Avoid carrying electronics inside the inner sanctum.', 2 FROM public.packages WHERE slug = 'buddhism-rajgir-india';
DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'buddhism-sarnath-india');
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Hotel Stay', 0 FROM public.packages WHERE slug = 'buddhism-sarnath-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Meals Included', 1 FROM public.packages WHERE slug = 'buddhism-sarnath-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'AC Transit', 2 FROM public.packages WHERE slug = 'buddhism-sarnath-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Expert Guide', 3 FROM public.packages WHERE slug = 'buddhism-sarnath-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Entry Passes', 4 FROM public.packages WHERE slug = 'buddhism-sarnath-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Spiritual darshan and guided temple tour in Sarnath', 0 FROM public.packages WHERE slug = 'buddhism-sarnath-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Experience peaceful aarti assemblies and sacred rituals', 1 FROM public.packages WHERE slug = 'buddhism-sarnath-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Comfortable transfers to all holy sites', 2 FROM public.packages WHERE slug = 'buddhism-sarnath-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry valid government ID cards for verification.', 0 FROM public.packages WHERE slug = 'buddhism-sarnath-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Traditional decency wear is recommended inside temple corridors.', 1 FROM public.packages WHERE slug = 'buddhism-sarnath-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Avoid carrying electronics inside the inner sanctum.', 2 FROM public.packages WHERE slug = 'buddhism-sarnath-india';
DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'buddhism-shwedagon-pagoda-myanmar');
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Hotel Stay', 0 FROM public.packages WHERE slug = 'buddhism-shwedagon-pagoda-myanmar';
END $$;