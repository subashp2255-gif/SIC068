DO $$
BEGIN
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Spiritual darshan and guided temple tour in Sanctuary of Our Lady of Lourdes', 0 FROM public.packages WHERE slug = 'christianity-sanctuary-of-our-lady-of-lourdes-france';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Experience peaceful aarti assemblies and sacred rituals', 1 FROM public.packages WHERE slug = 'christianity-sanctuary-of-our-lady-of-lourdes-france';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Comfortable transfers to all holy sites', 2 FROM public.packages WHERE slug = 'christianity-sanctuary-of-our-lady-of-lourdes-france';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry valid government ID cards for verification.', 0 FROM public.packages WHERE slug = 'christianity-sanctuary-of-our-lady-of-lourdes-france';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Traditional decency wear is recommended inside temple corridors.', 1 FROM public.packages WHERE slug = 'christianity-sanctuary-of-our-lady-of-lourdes-france';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Avoid carrying electronics inside the inner sanctum.', 2 FROM public.packages WHERE slug = 'christianity-sanctuary-of-our-lady-of-lourdes-france';
DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'christianity-santiago-atitl-n-guatemala');
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Hotel Stay', 0 FROM public.packages WHERE slug = 'christianity-santiago-atitl-n-guatemala';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Meals Included', 1 FROM public.packages WHERE slug = 'christianity-santiago-atitl-n-guatemala';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'AC Transit', 2 FROM public.packages WHERE slug = 'christianity-santiago-atitl-n-guatemala';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Expert Guide', 3 FROM public.packages WHERE slug = 'christianity-santiago-atitl-n-guatemala';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Entry Passes', 4 FROM public.packages WHERE slug = 'christianity-santiago-atitl-n-guatemala';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Spiritual darshan and guided temple tour in Santiago Atitlán', 0 FROM public.packages WHERE slug = 'christianity-santiago-atitl-n-guatemala';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Experience peaceful aarti assemblies and sacred rituals', 1 FROM public.packages WHERE slug = 'christianity-santiago-atitl-n-guatemala';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Comfortable transfers to all holy sites', 2 FROM public.packages WHERE slug = 'christianity-santiago-atitl-n-guatemala';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry valid government ID cards for verification.', 0 FROM public.packages WHERE slug = 'christianity-santiago-atitl-n-guatemala';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Traditional decency wear is recommended inside temple corridors.', 1 FROM public.packages WHERE slug = 'christianity-santiago-atitl-n-guatemala';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Avoid carrying electronics inside the inner sanctum.', 2 FROM public.packages WHERE slug = 'christianity-santiago-atitl-n-guatemala';
DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'christianity-santu-rio-de-nossa-senhora-aparecida-brazil');
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Hotel Stay', 0 FROM public.packages WHERE slug = 'christianity-santu-rio-de-nossa-senhora-aparecida-brazil';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Meals Included', 1 FROM public.packages WHERE slug = 'christianity-santu-rio-de-nossa-senhora-aparecida-brazil';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'AC Transit', 2 FROM public.packages WHERE slug = 'christianity-santu-rio-de-nossa-senhora-aparecida-brazil';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Expert Guide', 3 FROM public.packages WHERE slug = 'christianity-santu-rio-de-nossa-senhora-aparecida-brazil';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Entry Passes', 4 FROM public.packages WHERE slug = 'christianity-santu-rio-de-nossa-senhora-aparecida-brazil';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Spiritual darshan and guided temple tour in Santuário de Nossa Senhora Aparecida', 0 FROM public.packages WHERE slug = 'christianity-santu-rio-de-nossa-senhora-aparecida-brazil';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Experience peaceful aarti assemblies and sacred rituals', 1 FROM public.packages WHERE slug = 'christianity-santu-rio-de-nossa-senhora-aparecida-brazil';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Comfortable transfers to all holy sites', 2 FROM public.packages WHERE slug = 'christianity-santu-rio-de-nossa-senhora-aparecida-brazil';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry valid government ID cards for verification.', 0 FROM public.packages WHERE slug = 'christianity-santu-rio-de-nossa-senhora-aparecida-brazil';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Traditional decency wear is recommended inside temple corridors.', 1 FROM public.packages WHERE slug = 'christianity-santu-rio-de-nossa-senhora-aparecida-brazil';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Avoid carrying electronics inside the inner sanctum.', 2 FROM public.packages WHERE slug = 'christianity-santu-rio-de-nossa-senhora-aparecida-brazil';
DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'christianity-vatican-city-italy');
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Hotel Stay', 0 FROM public.packages WHERE slug = 'christianity-vatican-city-italy';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Meals Included', 1 FROM public.packages WHERE slug = 'christianity-vatican-city-italy';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'AC Transit', 2 FROM public.packages WHERE slug = 'christianity-vatican-city-italy';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Expert Guide', 3 FROM public.packages WHERE slug = 'christianity-vatican-city-italy';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Entry Passes', 4 FROM public.packages WHERE slug = 'christianity-vatican-city-italy';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Spiritual darshan and guided temple tour in Vatican City', 0 FROM public.packages WHERE slug = 'christianity-vatican-city-italy';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Experience peaceful aarti assemblies and sacred rituals', 1 FROM public.packages WHERE slug = 'christianity-vatican-city-italy';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Comfortable transfers to all holy sites', 2 FROM public.packages WHERE slug = 'christianity-vatican-city-italy';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry valid government ID cards for verification.', 0 FROM public.packages WHERE slug = 'christianity-vatican-city-italy';
END $$;