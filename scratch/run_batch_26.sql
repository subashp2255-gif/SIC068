DO $$
BEGIN
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Local Experience', 5 FROM public.packages WHERE slug = 'family-niagara-falls';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Explore the scenic nature trails and waterfall routes in Niagara Falls', 0 FROM public.packages WHERE slug = 'family-niagara-falls';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Breathtaking viewpoints and photo opportunities', 1 FROM public.packages WHERE slug = 'family-niagara-falls';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Guided trekking and outdoor activities', 2 FROM public.packages WHERE slug = 'family-niagara-falls';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Wear sturdy, non-slip walking shoes.', 0 FROM public.packages WHERE slug = 'family-niagara-falls';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry a light raincoat or umbrella depending on the season.', 1 FROM public.packages WHERE slug = 'family-niagara-falls';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Stay well-hydrated during the walk.', 2 FROM public.packages WHERE slug = 'family-niagara-falls';
DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'family-nubra-valley');
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Hotel Stay', 0 FROM public.packages WHERE slug = 'family-nubra-valley';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Meals Included', 1 FROM public.packages WHERE slug = 'family-nubra-valley';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'AC Transit', 2 FROM public.packages WHERE slug = 'family-nubra-valley';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Expert Guide', 3 FROM public.packages WHERE slug = 'family-nubra-valley';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Medical Support', 4 FROM public.packages WHERE slug = 'family-nubra-valley';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Explore the scenic nature trails and waterfall routes in Nubra Valley', 0 FROM public.packages WHERE slug = 'family-nubra-valley';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Breathtaking viewpoints and photo opportunities', 1 FROM public.packages WHERE slug = 'family-nubra-valley';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Guided trekking and outdoor activities', 2 FROM public.packages WHERE slug = 'family-nubra-valley';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Wear sturdy, non-slip walking shoes.', 0 FROM public.packages WHERE slug = 'family-nubra-valley';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry a light raincoat or umbrella depending on the season.', 1 FROM public.packages WHERE slug = 'family-nubra-valley';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Stay well-hydrated during the walk.', 2 FROM public.packages WHERE slug = 'family-nubra-valley';
DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'family-palm-jumeirah');
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Hotel Stay', 0 FROM public.packages WHERE slug = 'family-palm-jumeirah';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Meals Included', 1 FROM public.packages WHERE slug = 'family-palm-jumeirah';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'AC Transit', 2 FROM public.packages WHERE slug = 'family-palm-jumeirah';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Guided heritage sightseeing of Palm Jumeirah landmarks', 0 FROM public.packages WHERE slug = 'family-palm-jumeirah';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Immersive cultural show and local market visits', 1 FROM public.packages WHERE slug = 'family-palm-jumeirah';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Delight in authentic regional delicacies', 2 FROM public.packages WHERE slug = 'family-palm-jumeirah';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry sun protection (glasses/hat) for outdoor excursions.', 0 FROM public.packages WHERE slug = 'family-palm-jumeirah';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Keep local currency handy for local markets.', 1 FROM public.packages WHERE slug = 'family-palm-jumeirah';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Follow guidelines at heritage locations.', 2 FROM public.packages WHERE slug = 'family-palm-jumeirah';
DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'family-pangong-lake');
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Hotel Stay', 0 FROM public.packages WHERE slug = 'family-pangong-lake';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Meals Included', 1 FROM public.packages WHERE slug = 'family-pangong-lake';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'AC Transit', 2 FROM public.packages WHERE slug = 'family-pangong-lake';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Expert Guide', 3 FROM public.packages WHERE slug = 'family-pangong-lake';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Medical Support', 4 FROM public.packages WHERE slug = 'family-pangong-lake';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Explore the scenic nature trails and waterfall routes in Pangong Lake', 0 FROM public.packages WHERE slug = 'family-pangong-lake';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Breathtaking viewpoints and photo opportunities', 1 FROM public.packages WHERE slug = 'family-pangong-lake';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Guided trekking and outdoor activities', 2 FROM public.packages WHERE slug = 'family-pangong-lake';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Wear sturdy, non-slip walking shoes.', 0 FROM public.packages WHERE slug = 'family-pangong-lake';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry a light raincoat or umbrella depending on the season.', 1 FROM public.packages WHERE slug = 'family-pangong-lake';
END $$;