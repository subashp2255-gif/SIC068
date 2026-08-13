CREATE OR REPLACE FUNCTION public.seed_part3()
RETURNS void LANGUAGE plpgsql SECURITY DEFINER SET search_path = public AS $$
BEGIN
DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'family-alleppey-backwaters');
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Hotel Stay', 0 FROM public.packages WHERE slug = 'family-alleppey-backwaters';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Meals Included', 1 FROM public.packages WHERE slug = 'family-alleppey-backwaters';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'AC Transit', 2 FROM public.packages WHERE slug = 'family-alleppey-backwaters';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Local Experience', 3 FROM public.packages WHERE slug = 'family-alleppey-backwaters';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Relaxing stay and leisure exploration in Alleppey Backwaters', 0 FROM public.packages WHERE slug = 'family-alleppey-backwaters';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Scenic beauty and local dining experiences', 1 FROM public.packages WHERE slug = 'family-alleppey-backwaters';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Private luxury transfers for ultimate comfort', 2 FROM public.packages WHERE slug = 'family-alleppey-backwaters';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry sun protection (glasses/hat) for outdoor excursions.', 0 FROM public.packages WHERE slug = 'family-alleppey-backwaters';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Keep local currency handy for local markets.', 1 FROM public.packages WHERE slug = 'family-alleppey-backwaters';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Follow guidelines at heritage locations.', 2 FROM public.packages WHERE slug = 'family-alleppey-backwaters';
DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'family-amber-fort');
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Hotel Stay', 0 FROM public.packages WHERE slug = 'family-amber-fort';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Meals Included', 1 FROM public.packages WHERE slug = 'family-amber-fort';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'AC Transit', 2 FROM public.packages WHERE slug = 'family-amber-fort';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Expert Guide', 3 FROM public.packages WHERE slug = 'family-amber-fort';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Entry Passes', 4 FROM public.packages WHERE slug = 'family-amber-fort';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Guided heritage sightseeing of Amber Fort landmarks', 0 FROM public.packages WHERE slug = 'family-amber-fort';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Immersive cultural show and local market visits', 1 FROM public.packages WHERE slug = 'family-amber-fort';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Delight in authentic regional delicacies', 2 FROM public.packages WHERE slug = 'family-amber-fort';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry sun protection (glasses/hat) for outdoor excursions.', 0 FROM public.packages WHERE slug = 'family-amber-fort';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Keep local currency handy for local markets.', 1 FROM public.packages WHERE slug = 'family-amber-fort';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Follow guidelines at heritage locations.', 2 FROM public.packages WHERE slug = 'family-amber-fort';
DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'family-athirappilly-waterfalls');
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Hotel Stay', 0 FROM public.packages WHERE slug = 'family-athirappilly-waterfalls';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Meals Included', 1 FROM public.packages WHERE slug = 'family-athirappilly-waterfalls';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'AC Transit', 2 FROM public.packages WHERE slug = 'family-athirappilly-waterfalls';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Expert Guide', 3 FROM public.packages WHERE slug = 'family-athirappilly-waterfalls';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Medical Support', 4 FROM public.packages WHERE slug = 'family-athirappilly-waterfalls';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Local Experience', 5 FROM public.packages WHERE slug = 'family-athirappilly-waterfalls';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Explore the scenic nature trails and waterfall routes in Athirappilly Waterfalls', 0 FROM public.packages WHERE slug = 'family-athirappilly-waterfalls';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Breathtaking viewpoints and photo opportunities', 1 FROM public.packages WHERE slug = 'family-athirappilly-waterfalls';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Guided trekking and outdoor activities', 2 FROM public.packages WHERE slug = 'family-athirappilly-waterfalls';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Wear sturdy, non-slip walking shoes.', 0 FROM public.packages WHERE slug = 'family-athirappilly-waterfalls';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry a light raincoat or umbrella depending on the season.', 1 FROM public.packages WHERE slug = 'family-athirappilly-waterfalls';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Stay well-hydrated during the walk.', 2 FROM public.packages WHERE slug = 'family-athirappilly-waterfalls';
DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'family-big-ben');
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Hotel Stay', 0 FROM public.packages WHERE slug = 'family-big-ben';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Meals Included', 1 FROM public.packages WHERE slug = 'family-big-ben';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'AC Transit', 2 FROM public.packages WHERE slug = 'family-big-ben';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Guided heritage sightseeing of Big Ben landmarks', 0 FROM public.packages WHERE slug = 'family-big-ben';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Immersive cultural show and local market visits', 1 FROM public.packages WHERE slug = 'family-big-ben';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Delight in authentic regional delicacies', 2 FROM public.packages WHERE slug = 'family-big-ben';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry sun protection (glasses/hat) for outdoor excursions.', 0 FROM public.packages WHERE slug = 'family-big-ben';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Keep local currency handy for local markets.', 1 FROM public.packages WHERE slug = 'family-big-ben';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Follow guidelines at heritage locations.', 2 FROM public.packages WHERE slug = 'family-big-ben';
DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'family-burj-khalifa');
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Hotel Stay', 0 FROM public.packages WHERE slug = 'family-burj-khalifa';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Meals Included', 1 FROM public.packages WHERE slug = 'family-burj-khalifa';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'AC Transit', 2 FROM public.packages WHERE slug = 'family-burj-khalifa';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Guided heritage sightseeing of Burj Khalifa landmarks', 0 FROM public.packages WHERE slug = 'family-burj-khalifa';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Immersive cultural show and local market visits', 1 FROM public.packages WHERE slug = 'family-burj-khalifa';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Delight in authentic regional delicacies', 2 FROM public.packages WHERE slug = 'family-burj-khalifa';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry sun protection (glasses/hat) for outdoor excursions.', 0 FROM public.packages WHERE slug = 'family-burj-khalifa';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Keep local currency handy for local markets.', 1 FROM public.packages WHERE slug = 'family-burj-khalifa';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Follow guidelines at heritage locations.', 2 FROM public.packages WHERE slug = 'family-burj-khalifa';
DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'family-chitrakote-waterfalls');
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Hotel Stay', 0 FROM public.packages WHERE slug = 'family-chitrakote-waterfalls';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Meals Included', 1 FROM public.packages WHERE slug = 'family-chitrakote-waterfalls';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'AC Transit', 2 FROM public.packages WHERE slug = 'family-chitrakote-waterfalls';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Expert Guide', 3 FROM public.packages WHERE slug = 'family-chitrakote-waterfalls';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Medical Support', 4 FROM public.packages WHERE slug = 'family-chitrakote-waterfalls';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Local Experience', 5 FROM public.packages WHERE slug = 'family-chitrakote-waterfalls';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Explore the scenic nature trails and waterfall routes in Chitrakote Waterfalls', 0 FROM public.packages WHERE slug = 'family-chitrakote-waterfalls';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Breathtaking viewpoints and photo opportunities', 1 FROM public.packages WHERE slug = 'family-chitrakote-waterfalls';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Guided trekking and outdoor activities', 2 FROM public.packages WHERE slug = 'family-chitrakote-waterfalls';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Wear sturdy, non-slip walking shoes.', 0 FROM public.packages WHERE slug = 'family-chitrakote-waterfalls';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry a light raincoat or umbrella depending on the season.', 1 FROM public.packages WHERE slug = 'family-chitrakote-waterfalls';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Stay well-hydrated during the walk.', 2 FROM public.packages WHERE slug = 'family-chitrakote-waterfalls';
DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'family-city-palace-udaipur');
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Hotel Stay', 0 FROM public.packages WHERE slug = 'family-city-palace-udaipur';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Meals Included', 1 FROM public.packages WHERE slug = 'family-city-palace-udaipur';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'AC Transit', 2 FROM public.packages WHERE slug = 'family-city-palace-udaipur';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Expert Guide', 3 FROM public.packages WHERE slug = 'family-city-palace-udaipur';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Entry Passes', 4 FROM public.packages WHERE slug = 'family-city-palace-udaipur';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Guided heritage sightseeing of City Palace, Udaipur landmarks', 0 FROM public.packages WHERE slug = 'family-city-palace-udaipur';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Immersive cultural show and local market visits', 1 FROM public.packages WHERE slug = 'family-city-palace-udaipur';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Delight in authentic regional delicacies', 2 FROM public.packages WHERE slug = 'family-city-palace-udaipur';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry sun protection (glasses/hat) for outdoor excursions.', 0 FROM public.packages WHERE slug = 'family-city-palace-udaipur';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Keep local currency handy for local markets.', 1 FROM public.packages WHERE slug = 'family-city-palace-udaipur';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Follow guidelines at heritage locations.', 2 FROM public.packages WHERE slug = 'family-city-palace-udaipur';
DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'family-colosseum');
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Hotel Stay', 0 FROM public.packages WHERE slug = 'family-colosseum';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Meals Included', 1 FROM public.packages WHERE slug = 'family-colosseum';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'AC Transit', 2 FROM public.packages WHERE slug = 'family-colosseum';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Guided heritage sightseeing of Colosseum landmarks', 0 FROM public.packages WHERE slug = 'family-colosseum';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Immersive cultural show and local market visits', 1 FROM public.packages WHERE slug = 'family-colosseum';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Delight in authentic regional delicacies', 2 FROM public.packages WHERE slug = 'family-colosseum';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry sun protection (glasses/hat) for outdoor excursions.', 0 FROM public.packages WHERE slug = 'family-colosseum';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Keep local currency handy for local markets.', 1 FROM public.packages WHERE slug = 'family-colosseum';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Follow guidelines at heritage locations.', 2 FROM public.packages WHERE slug = 'family-colosseum';
DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'family-dawki-river-umngot-river');
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Hotel Stay', 0 FROM public.packages WHERE slug = 'family-dawki-river-umngot-river';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Meals Included', 1 FROM public.packages WHERE slug = 'family-dawki-river-umngot-river';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'AC Transit', 2 FROM public.packages WHERE slug = 'family-dawki-river-umngot-river';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Guided heritage sightseeing of Dawki River landmarks', 0 FROM public.packages WHERE slug = 'family-dawki-river-umngot-river';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Immersive cultural show and local market visits', 1 FROM public.packages WHERE slug = 'family-dawki-river-umngot-river';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Delight in authentic regional delicacies', 2 FROM public.packages WHERE slug = 'family-dawki-river-umngot-river';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry sun protection (glasses/hat) for outdoor excursions.', 0 FROM public.packages WHERE slug = 'family-dawki-river-umngot-river';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Keep local currency handy for local markets.', 1 FROM public.packages WHERE slug = 'family-dawki-river-umngot-river';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Follow guidelines at heritage locations.', 2 FROM public.packages WHERE slug = 'family-dawki-river-umngot-river';
DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'family-disneyland-paris');
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Hotel Stay', 0 FROM public.packages WHERE slug = 'family-disneyland-paris';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Meals Included', 1 FROM public.packages WHERE slug = 'family-disneyland-paris';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'AC Transit', 2 FROM public.packages WHERE slug = 'family-disneyland-paris';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Guided heritage sightseeing of Disneyland Paris landmarks', 0 FROM public.packages WHERE slug = 'family-disneyland-paris';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Immersive cultural show and local market visits', 1 FROM public.packages WHERE slug = 'family-disneyland-paris';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Delight in authentic regional delicacies', 2 FROM public.packages WHERE slug = 'family-disneyland-paris';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry sun protection (glasses/hat) for outdoor excursions.', 0 FROM public.packages WHERE slug = 'family-disneyland-paris';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Keep local currency handy for local markets.', 1 FROM public.packages WHERE slug = 'family-disneyland-paris';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Follow guidelines at heritage locations.', 2 FROM public.packages WHERE slug = 'family-disneyland-paris';
DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'family-dubai-miracle-garden');
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Hotel Stay', 0 FROM public.packages WHERE slug = 'family-dubai-miracle-garden';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Meals Included', 1 FROM public.packages WHERE slug = 'family-dubai-miracle-garden';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'AC Transit', 2 FROM public.packages WHERE slug = 'family-dubai-miracle-garden';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Guided heritage sightseeing of Dubai Miracle Garden landmarks', 0 FROM public.packages WHERE slug = 'family-dubai-miracle-garden';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Immersive cultural show and local market visits', 1 FROM public.packages WHERE slug = 'family-dubai-miracle-garden';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Delight in authentic regional delicacies', 2 FROM public.packages WHERE slug = 'family-dubai-miracle-garden';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry sun protection (glasses/hat) for outdoor excursions.', 0 FROM public.packages WHERE slug = 'family-dubai-miracle-garden';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Keep local currency handy for local markets.', 1 FROM public.packages WHERE slug = 'family-dubai-miracle-garden';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Follow guidelines at heritage locations.', 2 FROM public.packages WHERE slug = 'family-dubai-miracle-garden';
DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'family-dudhsagar-falls');
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Hotel Stay', 0 FROM public.packages WHERE slug = 'family-dudhsagar-falls';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Meals Included', 1 FROM public.packages WHERE slug = 'family-dudhsagar-falls';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'AC Transit', 2 FROM public.packages WHERE slug = 'family-dudhsagar-falls';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Local Experience', 3 FROM public.packages WHERE slug = 'family-dudhsagar-falls';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Relaxing stay and leisure exploration in Dudhsagar Falls', 0 FROM public.packages WHERE slug = 'family-dudhsagar-falls';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Scenic beauty and local dining experiences', 1 FROM public.packages WHERE slug = 'family-dudhsagar-falls';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Private luxury transfers for ultimate comfort', 2 FROM public.packages WHERE slug = 'family-dudhsagar-falls';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry sun protection (glasses/hat) for outdoor excursions.', 0 FROM public.packages WHERE slug = 'family-dudhsagar-falls';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Keep local currency handy for local markets.', 1 FROM public.packages WHERE slug = 'family-dudhsagar-falls';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Follow guidelines at heritage locations.', 2 FROM public.packages WHERE slug = 'family-dudhsagar-falls';
DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'family-eiffel-tower');
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Hotel Stay', 0 FROM public.packages WHERE slug = 'family-eiffel-tower';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Meals Included', 1 FROM public.packages WHERE slug = 'family-eiffel-tower';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'AC Transit', 2 FROM public.packages WHERE slug = 'family-eiffel-tower';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Guided heritage sightseeing of Eiffel Tower landmarks', 0 FROM public.packages WHERE slug = 'family-eiffel-tower';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Immersive cultural show and local market visits', 1 FROM public.packages WHERE slug = 'family-eiffel-tower';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Delight in authentic regional delicacies', 2 FROM public.packages WHERE slug = 'family-eiffel-tower';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry sun protection (glasses/hat) for outdoor excursions.', 0 FROM public.packages WHERE slug = 'family-eiffel-tower';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Keep local currency handy for local markets.', 1 FROM public.packages WHERE slug = 'family-eiffel-tower';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Follow guidelines at heritage locations.', 2 FROM public.packages WHERE slug = 'family-eiffel-tower';
DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'family-gardens-by-the-bay');
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Hotel Stay', 0 FROM public.packages WHERE slug = 'family-gardens-by-the-bay';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Meals Included', 1 FROM public.packages WHERE slug = 'family-gardens-by-the-bay';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'AC Transit', 2 FROM public.packages WHERE slug = 'family-gardens-by-the-bay';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Guided heritage sightseeing of Gardens by the Bay landmarks', 0 FROM public.packages WHERE slug = 'family-gardens-by-the-bay';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Immersive cultural show and local market visits', 1 FROM public.packages WHERE slug = 'family-gardens-by-the-bay';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Delight in authentic regional delicacies', 2 FROM public.packages WHERE slug = 'family-gardens-by-the-bay';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry sun protection (glasses/hat) for outdoor excursions.', 0 FROM public.packages WHERE slug = 'family-gardens-by-the-bay';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Keep local currency handy for local markets.', 1 FROM public.packages WHERE slug = 'family-gardens-by-the-bay';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Follow guidelines at heritage locations.', 2 FROM public.packages WHERE slug = 'family-gardens-by-the-bay';
DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'family-glacier-3000');
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Hotel Stay', 0 FROM public.packages WHERE slug = 'family-glacier-3000';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Meals Included', 1 FROM public.packages WHERE slug = 'family-glacier-3000';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'AC Transit', 2 FROM public.packages WHERE slug = 'family-glacier-3000';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Guided heritage sightseeing of Glacier 3000 landmarks', 0 FROM public.packages WHERE slug = 'family-glacier-3000';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Immersive cultural show and local market visits', 1 FROM public.packages WHERE slug = 'family-glacier-3000';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Delight in authentic regional delicacies', 2 FROM public.packages WHERE slug = 'family-glacier-3000';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry sun protection (glasses/hat) for outdoor excursions.', 0 FROM public.packages WHERE slug = 'family-glacier-3000';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Keep local currency handy for local markets.', 1 FROM public.packages WHERE slug = 'family-glacier-3000';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Follow guidelines at heritage locations.', 2 FROM public.packages WHERE slug = 'family-glacier-3000';
DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'family-gol-gumbaz');
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Hotel Stay', 0 FROM public.packages WHERE slug = 'family-gol-gumbaz';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Meals Included', 1 FROM public.packages WHERE slug = 'family-gol-gumbaz';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'AC Transit', 2 FROM public.packages WHERE slug = 'family-gol-gumbaz';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Guided heritage sightseeing of Gol Gumbaz landmarks', 0 FROM public.packages WHERE slug = 'family-gol-gumbaz';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Immersive cultural show and local market visits', 1 FROM public.packages WHERE slug = 'family-gol-gumbaz';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Delight in authentic regional delicacies', 2 FROM public.packages WHERE slug = 'family-gol-gumbaz';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry sun protection (glasses/hat) for outdoor excursions.', 0 FROM public.packages WHERE slug = 'family-gol-gumbaz';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Keep local currency handy for local markets.', 1 FROM public.packages WHERE slug = 'family-gol-gumbaz';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Follow guidelines at heritage locations.', 2 FROM public.packages WHERE slug = 'family-gol-gumbaz';
DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'family-hampi-monuments');
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Hotel Stay', 0 FROM public.packages WHERE slug = 'family-hampi-monuments';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Meals Included', 1 FROM public.packages WHERE slug = 'family-hampi-monuments';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'AC Transit', 2 FROM public.packages WHERE slug = 'family-hampi-monuments';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Expert Guide', 3 FROM public.packages WHERE slug = 'family-hampi-monuments';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Entry Passes', 4 FROM public.packages WHERE slug = 'family-hampi-monuments';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Guided heritage sightseeing of Hampi Monuments landmarks', 0 FROM public.packages WHERE slug = 'family-hampi-monuments';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Immersive cultural show and local market visits', 1 FROM public.packages WHERE slug = 'family-hampi-monuments';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Delight in authentic regional delicacies', 2 FROM public.packages WHERE slug = 'family-hampi-monuments';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry sun protection (glasses/hat) for outdoor excursions.', 0 FROM public.packages WHERE slug = 'family-hampi-monuments';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Keep local currency handy for local markets.', 1 FROM public.packages WHERE slug = 'family-hampi-monuments';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Follow guidelines at heritage locations.', 2 FROM public.packages WHERE slug = 'family-hampi-monuments';
DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'family-hawa-mahal');
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Hotel Stay', 0 FROM public.packages WHERE slug = 'family-hawa-mahal';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Meals Included', 1 FROM public.packages WHERE slug = 'family-hawa-mahal';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'AC Transit', 2 FROM public.packages WHERE slug = 'family-hawa-mahal';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Guided heritage sightseeing of Hawa Mahal landmarks', 0 FROM public.packages WHERE slug = 'family-hawa-mahal';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Immersive cultural show and local market visits', 1 FROM public.packages WHERE slug = 'family-hawa-mahal';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Delight in authentic regional delicacies', 2 FROM public.packages WHERE slug = 'family-hawa-mahal';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry sun protection (glasses/hat) for outdoor excursions.', 0 FROM public.packages WHERE slug = 'family-hawa-mahal';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Keep local currency handy for local markets.', 1 FROM public.packages WHERE slug = 'family-hawa-mahal';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Follow guidelines at heritage locations.', 2 FROM public.packages WHERE slug = 'family-hawa-mahal';
DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'family-leaning-tower-of-pisa');
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Hotel Stay', 0 FROM public.packages WHERE slug = 'family-leaning-tower-of-pisa';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Meals Included', 1 FROM public.packages WHERE slug = 'family-leaning-tower-of-pisa';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'AC Transit', 2 FROM public.packages WHERE slug = 'family-leaning-tower-of-pisa';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Guided heritage sightseeing of Leaning Tower of Pisa landmarks', 0 FROM public.packages WHERE slug = 'family-leaning-tower-of-pisa';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Immersive cultural show and local market visits', 1 FROM public.packages WHERE slug = 'family-leaning-tower-of-pisa';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Delight in authentic regional delicacies', 2 FROM public.packages WHERE slug = 'family-leaning-tower-of-pisa';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry sun protection (glasses/hat) for outdoor excursions.', 0 FROM public.packages WHERE slug = 'family-leaning-tower-of-pisa';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Keep local currency handy for local markets.', 1 FROM public.packages WHERE slug = 'family-leaning-tower-of-pisa';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Follow guidelines at heritage locations.', 2 FROM public.packages WHERE slug = 'family-leaning-tower-of-pisa';
DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'family-living-root-bridges');
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Hotel Stay', 0 FROM public.packages WHERE slug = 'family-living-root-bridges';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Meals Included', 1 FROM public.packages WHERE slug = 'family-living-root-bridges';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'AC Transit', 2 FROM public.packages WHERE slug = 'family-living-root-bridges';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Guided heritage sightseeing of Living Root Bridges landmarks', 0 FROM public.packages WHERE slug = 'family-living-root-bridges';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Immersive cultural show and local market visits', 1 FROM public.packages WHERE slug = 'family-living-root-bridges';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Delight in authentic regional delicacies', 2 FROM public.packages WHERE slug = 'family-living-root-bridges';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry sun protection (glasses/hat) for outdoor excursions.', 0 FROM public.packages WHERE slug = 'family-living-root-bridges';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Keep local currency handy for local markets.', 1 FROM public.packages WHERE slug = 'family-living-root-bridges';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Follow guidelines at heritage locations.', 2 FROM public.packages WHERE slug = 'family-living-root-bridges';
DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'family-london-eye');
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Hotel Stay', 0 FROM public.packages WHERE slug = 'family-london-eye';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Meals Included', 1 FROM public.packages WHERE slug = 'family-london-eye';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'AC Transit', 2 FROM public.packages WHERE slug = 'family-london-eye';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Guided heritage sightseeing of London Eye landmarks', 0 FROM public.packages WHERE slug = 'family-london-eye';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Immersive cultural show and local market visits', 1 FROM public.packages WHERE slug = 'family-london-eye';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Delight in authentic regional delicacies', 2 FROM public.packages WHERE slug = 'family-london-eye';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry sun protection (glasses/hat) for outdoor excursions.', 0 FROM public.packages WHERE slug = 'family-london-eye';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Keep local currency handy for local markets.', 1 FROM public.packages WHERE slug = 'family-london-eye';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Follow guidelines at heritage locations.', 2 FROM public.packages WHERE slug = 'family-london-eye';
DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'family-marina-bay-sands-skypark');
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Hotel Stay', 0 FROM public.packages WHERE slug = 'family-marina-bay-sands-skypark';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Meals Included', 1 FROM public.packages WHERE slug = 'family-marina-bay-sands-skypark';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'AC Transit', 2 FROM public.packages WHERE slug = 'family-marina-bay-sands-skypark';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Guided heritage sightseeing of Marina Bay Sands SkyPark landmarks', 0 FROM public.packages WHERE slug = 'family-marina-bay-sands-skypark';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Immersive cultural show and local market visits', 1 FROM public.packages WHERE slug = 'family-marina-bay-sands-skypark';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Delight in authentic regional delicacies', 2 FROM public.packages WHERE slug = 'family-marina-bay-sands-skypark';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry sun protection (glasses/hat) for outdoor excursions.', 0 FROM public.packages WHERE slug = 'family-marina-bay-sands-skypark';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Keep local currency handy for local markets.', 1 FROM public.packages WHERE slug = 'family-marina-bay-sands-skypark';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Follow guidelines at heritage locations.', 2 FROM public.packages WHERE slug = 'family-marina-bay-sands-skypark';
DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'family-mehrangarh-fort');
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Hotel Stay', 0 FROM public.packages WHERE slug = 'family-mehrangarh-fort';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Meals Included', 1 FROM public.packages WHERE slug = 'family-mehrangarh-fort';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'AC Transit', 2 FROM public.packages WHERE slug = 'family-mehrangarh-fort';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Expert Guide', 3 FROM public.packages WHERE slug = 'family-mehrangarh-fort';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Entry Passes', 4 FROM public.packages WHERE slug = 'family-mehrangarh-fort';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Guided heritage sightseeing of Mehrangarh Fort landmarks', 0 FROM public.packages WHERE slug = 'family-mehrangarh-fort';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Immersive cultural show and local market visits', 1 FROM public.packages WHERE slug = 'family-mehrangarh-fort';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Delight in authentic regional delicacies', 2 FROM public.packages WHERE slug = 'family-mehrangarh-fort';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry sun protection (glasses/hat) for outdoor excursions.', 0 FROM public.packages WHERE slug = 'family-mehrangarh-fort';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Keep local currency handy for local markets.', 1 FROM public.packages WHERE slug = 'family-mehrangarh-fort';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Follow guidelines at heritage locations.', 2 FROM public.packages WHERE slug = 'family-mehrangarh-fort';
DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'family-mount-fuji');
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Hotel Stay', 0 FROM public.packages WHERE slug = 'family-mount-fuji';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Meals Included', 1 FROM public.packages WHERE slug = 'family-mount-fuji';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'AC Transit', 2 FROM public.packages WHERE slug = 'family-mount-fuji';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Guided heritage sightseeing of Mount Fuji landmarks', 0 FROM public.packages WHERE slug = 'family-mount-fuji';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Immersive cultural show and local market visits', 1 FROM public.packages WHERE slug = 'family-mount-fuji';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Delight in authentic regional delicacies', 2 FROM public.packages WHERE slug = 'family-mount-fuji';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry sun protection (glasses/hat) for outdoor excursions.', 0 FROM public.packages WHERE slug = 'family-mount-fuji';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Keep local currency handy for local markets.', 1 FROM public.packages WHERE slug = 'family-mount-fuji';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Follow guidelines at heritage locations.', 2 FROM public.packages WHERE slug = 'family-mount-fuji';
DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'family-mount-titlis');
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Hotel Stay', 0 FROM public.packages WHERE slug = 'family-mount-titlis';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Meals Included', 1 FROM public.packages WHERE slug = 'family-mount-titlis';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'AC Transit', 2 FROM public.packages WHERE slug = 'family-mount-titlis';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Guided heritage sightseeing of Mount Titlis landmarks', 0 FROM public.packages WHERE slug = 'family-mount-titlis';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Immersive cultural show and local market visits', 1 FROM public.packages WHERE slug = 'family-mount-titlis';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Delight in authentic regional delicacies', 2 FROM public.packages WHERE slug = 'family-mount-titlis';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry sun protection (glasses/hat) for outdoor excursions.', 0 FROM public.packages WHERE slug = 'family-mount-titlis';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Keep local currency handy for local markets.', 1 FROM public.packages WHERE slug = 'family-mount-titlis';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Follow guidelines at heritage locations.', 2 FROM public.packages WHERE slug = 'family-mount-titlis';
DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'family-munnar-tea-gardens');
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Hotel Stay', 0 FROM public.packages WHERE slug = 'family-munnar-tea-gardens';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Meals Included', 1 FROM public.packages WHERE slug = 'family-munnar-tea-gardens';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'AC Transit', 2 FROM public.packages WHERE slug = 'family-munnar-tea-gardens';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Local Experience', 3 FROM public.packages WHERE slug = 'family-munnar-tea-gardens';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Guided heritage sightseeing of Munnar Tea Gardens landmarks', 0 FROM public.packages WHERE slug = 'family-munnar-tea-gardens';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Immersive cultural show and local market visits', 1 FROM public.packages WHERE slug = 'family-munnar-tea-gardens';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Delight in authentic regional delicacies', 2 FROM public.packages WHERE slug = 'family-munnar-tea-gardens';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry sun protection (glasses/hat) for outdoor excursions.', 0 FROM public.packages WHERE slug = 'family-munnar-tea-gardens';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Keep local currency handy for local markets.', 1 FROM public.packages WHERE slug = 'family-munnar-tea-gardens';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Follow guidelines at heritage locations.', 2 FROM public.packages WHERE slug = 'family-munnar-tea-gardens';
DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'family-museum-of-the-future');
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Hotel Stay', 0 FROM public.packages WHERE slug = 'family-museum-of-the-future';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Meals Included', 1 FROM public.packages WHERE slug = 'family-museum-of-the-future';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'AC Transit', 2 FROM public.packages WHERE slug = 'family-museum-of-the-future';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Guided heritage sightseeing of Museum of the Future landmarks', 0 FROM public.packages WHERE slug = 'family-museum-of-the-future';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Immersive cultural show and local market visits', 1 FROM public.packages WHERE slug = 'family-museum-of-the-future';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Delight in authentic regional delicacies', 2 FROM public.packages WHERE slug = 'family-museum-of-the-future';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry sun protection (glasses/hat) for outdoor excursions.', 0 FROM public.packages WHERE slug = 'family-museum-of-the-future';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Keep local currency handy for local markets.', 1 FROM public.packages WHERE slug = 'family-museum-of-the-future';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Follow guidelines at heritage locations.', 2 FROM public.packages WHERE slug = 'family-museum-of-the-future';
DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'family-mysore-palace');
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Hotel Stay', 0 FROM public.packages WHERE slug = 'family-mysore-palace';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Meals Included', 1 FROM public.packages WHERE slug = 'family-mysore-palace';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'AC Transit', 2 FROM public.packages WHERE slug = 'family-mysore-palace';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Expert Guide', 3 FROM public.packages WHERE slug = 'family-mysore-palace';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Entry Passes', 4 FROM public.packages WHERE slug = 'family-mysore-palace';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Guided heritage sightseeing of Mysore Palace landmarks', 0 FROM public.packages WHERE slug = 'family-mysore-palace';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Immersive cultural show and local market visits', 1 FROM public.packages WHERE slug = 'family-mysore-palace';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Delight in authentic regional delicacies', 2 FROM public.packages WHERE slug = 'family-mysore-palace';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry sun protection (glasses/hat) for outdoor excursions.', 0 FROM public.packages WHERE slug = 'family-mysore-palace';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Keep local currency handy for local markets.', 1 FROM public.packages WHERE slug = 'family-mysore-palace';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Follow guidelines at heritage locations.', 2 FROM public.packages WHERE slug = 'family-mysore-palace';
DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'family-niagara-falls');
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Hotel Stay', 0 FROM public.packages WHERE slug = 'family-niagara-falls';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Meals Included', 1 FROM public.packages WHERE slug = 'family-niagara-falls';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'AC Transit', 2 FROM public.packages WHERE slug = 'family-niagara-falls';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Expert Guide', 3 FROM public.packages WHERE slug = 'family-niagara-falls';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Medical Support', 4 FROM public.packages WHERE slug = 'family-niagara-falls';
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
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Keep local currency handy for local markets.', 1 FROM public.packages WHERE slug = 'family-swiss-alps-jungfraujoch';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Follow guidelines at heritage locations.', 2 FROM public.packages WHERE slug = 'family-swiss-alps-jungfraujoch';
DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'family-taj-mahal');
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Hotel Stay', 0 FROM public.packages WHERE slug = 'family-taj-mahal';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Meals Included', 1 FROM public.packages WHERE slug = 'family-taj-mahal';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'AC Transit', 2 FROM public.packages WHERE slug = 'family-taj-mahal';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Guided heritage sightseeing of Taj Mahal landmarks', 0 FROM public.packages WHERE slug = 'family-taj-mahal';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Immersive cultural show and local market visits', 1 FROM public.packages WHERE slug = 'family-taj-mahal';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Delight in authentic regional delicacies', 2 FROM public.packages WHERE slug = 'family-taj-mahal';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry sun protection (glasses/hat) for outdoor excursions.', 0 FROM public.packages WHERE slug = 'family-taj-mahal';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Keep local currency handy for local markets.', 1 FROM public.packages WHERE slug = 'family-taj-mahal';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Follow guidelines at heritage locations.', 2 FROM public.packages WHERE slug = 'family-taj-mahal';
DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'family-tokyo-disneyland');
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Hotel Stay', 0 FROM public.packages WHERE slug = 'family-tokyo-disneyland';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Meals Included', 1 FROM public.packages WHERE slug = 'family-tokyo-disneyland';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'AC Transit', 2 FROM public.packages WHERE slug = 'family-tokyo-disneyland';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Guided heritage sightseeing of Tokyo Disneyland landmarks', 0 FROM public.packages WHERE slug = 'family-tokyo-disneyland';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Immersive cultural show and local market visits', 1 FROM public.packages WHERE slug = 'family-tokyo-disneyland';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Delight in authentic regional delicacies', 2 FROM public.packages WHERE slug = 'family-tokyo-disneyland';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry sun protection (glasses/hat) for outdoor excursions.', 0 FROM public.packages WHERE slug = 'family-tokyo-disneyland';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Keep local currency handy for local markets.', 1 FROM public.packages WHERE slug = 'family-tokyo-disneyland';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Follow guidelines at heritage locations.', 2 FROM public.packages WHERE slug = 'family-tokyo-disneyland';
DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'family-universal-studios-japan');
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Hotel Stay', 0 FROM public.packages WHERE slug = 'family-universal-studios-japan';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Meals Included', 1 FROM public.packages WHERE slug = 'family-universal-studios-japan';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'AC Transit', 2 FROM public.packages WHERE slug = 'family-universal-studios-japan';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Guided heritage sightseeing of Universal Studios Japan landmarks', 0 FROM public.packages WHERE slug = 'family-universal-studios-japan';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Immersive cultural show and local market visits', 1 FROM public.packages WHERE slug = 'family-universal-studios-japan';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Delight in authentic regional delicacies', 2 FROM public.packages WHERE slug = 'family-universal-studios-japan';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry sun protection (glasses/hat) for outdoor excursions.', 0 FROM public.packages WHERE slug = 'family-universal-studios-japan';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Keep local currency handy for local markets.', 1 FROM public.packages WHERE slug = 'family-universal-studios-japan';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Follow guidelines at heritage locations.', 2 FROM public.packages WHERE slug = 'family-universal-studios-japan';
DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'family-venice-grand-canal');
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Hotel Stay', 0 FROM public.packages WHERE slug = 'family-venice-grand-canal';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Meals Included', 1 FROM public.packages WHERE slug = 'family-venice-grand-canal';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'AC Transit', 2 FROM public.packages WHERE slug = 'family-venice-grand-canal';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Guided heritage sightseeing of Venice Grand Canal landmarks', 0 FROM public.packages WHERE slug = 'family-venice-grand-canal';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Immersive cultural show and local market visits', 1 FROM public.packages WHERE slug = 'family-venice-grand-canal';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Delight in authentic regional delicacies', 2 FROM public.packages WHERE slug = 'family-venice-grand-canal';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry sun protection (glasses/hat) for outdoor excursions.', 0 FROM public.packages WHERE slug = 'family-venice-grand-canal';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Keep local currency handy for local markets.', 1 FROM public.packages WHERE slug = 'family-venice-grand-canal';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Follow guidelines at heritage locations.', 2 FROM public.packages WHERE slug = 'family-venice-grand-canal';
DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'buddhism-adam-s-peak-sri-pada-sri-lanka');
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Hotel Stay', 0 FROM public.packages WHERE slug = 'buddhism-adam-s-peak-sri-pada-sri-lanka';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Meals Included', 1 FROM public.packages WHERE slug = 'buddhism-adam-s-peak-sri-pada-sri-lanka';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'AC Transit', 2 FROM public.packages WHERE slug = 'buddhism-adam-s-peak-sri-pada-sri-lanka';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Expert Guide', 3 FROM public.packages WHERE slug = 'buddhism-adam-s-peak-sri-pada-sri-lanka';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Entry Passes', 4 FROM public.packages WHERE slug = 'buddhism-adam-s-peak-sri-pada-sri-lanka';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Spiritual darshan and guided temple tour in Adam’s Peak (Sri Pada)', 0 FROM public.packages WHERE slug = 'buddhism-adam-s-peak-sri-pada-sri-lanka';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Experience peaceful aarti assemblies and sacred rituals', 1 FROM public.packages WHERE slug = 'buddhism-adam-s-peak-sri-pada-sri-lanka';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Comfortable transfers to all holy sites', 2 FROM public.packages WHERE slug = 'buddhism-adam-s-peak-sri-pada-sri-lanka';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry valid government ID cards for verification.', 0 FROM public.packages WHERE slug = 'buddhism-adam-s-peak-sri-pada-sri-lanka';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Traditional decency wear is recommended inside temple corridors.', 1 FROM public.packages WHERE slug = 'buddhism-adam-s-peak-sri-pada-sri-lanka';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Avoid carrying electronics inside the inner sanctum.', 2 FROM public.packages WHERE slug = 'buddhism-adam-s-peak-sri-pada-sri-lanka';
DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'buddhism-bodh-gaya-india');
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Hotel Stay', 0 FROM public.packages WHERE slug = 'buddhism-bodh-gaya-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Meals Included', 1 FROM public.packages WHERE slug = 'buddhism-bodh-gaya-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'AC Transit', 2 FROM public.packages WHERE slug = 'buddhism-bodh-gaya-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Expert Guide', 3 FROM public.packages WHERE slug = 'buddhism-bodh-gaya-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Entry Passes', 4 FROM public.packages WHERE slug = 'buddhism-bodh-gaya-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Spiritual darshan and guided temple tour in Bodh Gaya', 0 FROM public.packages WHERE slug = 'buddhism-bodh-gaya-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Experience peaceful aarti assemblies and sacred rituals', 1 FROM public.packages WHERE slug = 'buddhism-bodh-gaya-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Comfortable transfers to all holy sites', 2 FROM public.packages WHERE slug = 'buddhism-bodh-gaya-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry valid government ID cards for verification.', 0 FROM public.packages WHERE slug = 'buddhism-bodh-gaya-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Traditional decency wear is recommended inside temple corridors.', 1 FROM public.packages WHERE slug = 'buddhism-bodh-gaya-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Avoid carrying electronics inside the inner sanctum.', 2 FROM public.packages WHERE slug = 'buddhism-bodh-gaya-india';
DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'buddhism-borobudur-temple-indonesia');
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Hotel Stay', 0 FROM public.packages WHERE slug = 'buddhism-borobudur-temple-indonesia';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Meals Included', 1 FROM public.packages WHERE slug = 'buddhism-borobudur-temple-indonesia';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'AC Transit', 2 FROM public.packages WHERE slug = 'buddhism-borobudur-temple-indonesia';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Expert Guide', 3 FROM public.packages WHERE slug = 'buddhism-borobudur-temple-indonesia';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Entry Passes', 4 FROM public.packages WHERE slug = 'buddhism-borobudur-temple-indonesia';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Spiritual darshan and guided temple tour in Borobudur Temple', 0 FROM public.packages WHERE slug = 'buddhism-borobudur-temple-indonesia';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Experience peaceful aarti assemblies and sacred rituals', 1 FROM public.packages WHERE slug = 'buddhism-borobudur-temple-indonesia';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Comfortable transfers to all holy sites', 2 FROM public.packages WHERE slug = 'buddhism-borobudur-temple-indonesia';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry valid government ID cards for verification.', 0 FROM public.packages WHERE slug = 'buddhism-borobudur-temple-indonesia';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Traditional decency wear is recommended inside temple corridors.', 1 FROM public.packages WHERE slug = 'buddhism-borobudur-temple-indonesia';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Avoid carrying electronics inside the inner sanctum.', 2 FROM public.packages WHERE slug = 'buddhism-borobudur-temple-indonesia';
DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'buddhism-dambulla-cave-temple-sri-lanka');
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Hotel Stay', 0 FROM public.packages WHERE slug = 'buddhism-dambulla-cave-temple-sri-lanka';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Meals Included', 1 FROM public.packages WHERE slug = 'buddhism-dambulla-cave-temple-sri-lanka';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'AC Transit', 2 FROM public.packages WHERE slug = 'buddhism-dambulla-cave-temple-sri-lanka';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Expert Guide', 3 FROM public.packages WHERE slug = 'buddhism-dambulla-cave-temple-sri-lanka';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Entry Passes', 4 FROM public.packages WHERE slug = 'buddhism-dambulla-cave-temple-sri-lanka';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Spiritual darshan and guided temple tour in Dambulla Cave Temple', 0 FROM public.packages WHERE slug = 'buddhism-dambulla-cave-temple-sri-lanka';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Experience peaceful aarti assemblies and sacred rituals', 1 FROM public.packages WHERE slug = 'buddhism-dambulla-cave-temple-sri-lanka';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Comfortable transfers to all holy sites', 2 FROM public.packages WHERE slug = 'buddhism-dambulla-cave-temple-sri-lanka';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry valid government ID cards for verification.', 0 FROM public.packages WHERE slug = 'buddhism-dambulla-cave-temple-sri-lanka';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Traditional decency wear is recommended inside temple corridors.', 1 FROM public.packages WHERE slug = 'buddhism-dambulla-cave-temple-sri-lanka';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Avoid carrying electronics inside the inner sanctum.', 2 FROM public.packages WHERE slug = 'buddhism-dambulla-cave-temple-sri-lanka';
DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'buddhism-jokhang-temple-lhasa-tibet');
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Hotel Stay', 0 FROM public.packages WHERE slug = 'buddhism-jokhang-temple-lhasa-tibet';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Meals Included', 1 FROM public.packages WHERE slug = 'buddhism-jokhang-temple-lhasa-tibet';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'AC Transit', 2 FROM public.packages WHERE slug = 'buddhism-jokhang-temple-lhasa-tibet';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Expert Guide', 3 FROM public.packages WHERE slug = 'buddhism-jokhang-temple-lhasa-tibet';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Entry Passes', 4 FROM public.packages WHERE slug = 'buddhism-jokhang-temple-lhasa-tibet';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Spiritual darshan and guided temple tour in Jokhang Temple, Lhasa', 0 FROM public.packages WHERE slug = 'buddhism-jokhang-temple-lhasa-tibet';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Experience peaceful aarti assemblies and sacred rituals', 1 FROM public.packages WHERE slug = 'buddhism-jokhang-temple-lhasa-tibet';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Comfortable transfers to all holy sites', 2 FROM public.packages WHERE slug = 'buddhism-jokhang-temple-lhasa-tibet';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry valid government ID cards for verification.', 0 FROM public.packages WHERE slug = 'buddhism-jokhang-temple-lhasa-tibet';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Traditional decency wear is recommended inside temple corridors.', 1 FROM public.packages WHERE slug = 'buddhism-jokhang-temple-lhasa-tibet';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Avoid carrying electronics inside the inner sanctum.', 2 FROM public.packages WHERE slug = 'buddhism-jokhang-temple-lhasa-tibet';
DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'buddhism-kumano-kodo-japan');
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Hotel Stay', 0 FROM public.packages WHERE slug = 'buddhism-kumano-kodo-japan';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Meals Included', 1 FROM public.packages WHERE slug = 'buddhism-kumano-kodo-japan';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'AC Transit', 2 FROM public.packages WHERE slug = 'buddhism-kumano-kodo-japan';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Expert Guide', 3 FROM public.packages WHERE slug = 'buddhism-kumano-kodo-japan';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Entry Passes', 4 FROM public.packages WHERE slug = 'buddhism-kumano-kodo-japan';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Spiritual darshan and guided temple tour in Kumano Kodo', 0 FROM public.packages WHERE slug = 'buddhism-kumano-kodo-japan';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Experience peaceful aarti assemblies and sacred rituals', 1 FROM public.packages WHERE slug = 'buddhism-kumano-kodo-japan';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Comfortable transfers to all holy sites', 2 FROM public.packages WHERE slug = 'buddhism-kumano-kodo-japan';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry valid government ID cards for verification.', 0 FROM public.packages WHERE slug = 'buddhism-kumano-kodo-japan';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Traditional decency wear is recommended inside temple corridors.', 1 FROM public.packages WHERE slug = 'buddhism-kumano-kodo-japan';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Avoid carrying electronics inside the inner sanctum.', 2 FROM public.packages WHERE slug = 'buddhism-kumano-kodo-japan';
DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'buddhism-kushinagar-india');
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Hotel Stay', 0 FROM public.packages WHERE slug = 'buddhism-kushinagar-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Meals Included', 1 FROM public.packages WHERE slug = 'buddhism-kushinagar-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'AC Transit', 2 FROM public.packages WHERE slug = 'buddhism-kushinagar-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Expert Guide', 3 FROM public.packages WHERE slug = 'buddhism-kushinagar-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Entry Passes', 4 FROM public.packages WHERE slug = 'buddhism-kushinagar-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Spiritual darshan and guided temple tour in Kushinagar', 0 FROM public.packages WHERE slug = 'buddhism-kushinagar-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Experience peaceful aarti assemblies and sacred rituals', 1 FROM public.packages WHERE slug = 'buddhism-kushinagar-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Comfortable transfers to all holy sites', 2 FROM public.packages WHERE slug = 'buddhism-kushinagar-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry valid government ID cards for verification.', 0 FROM public.packages WHERE slug = 'buddhism-kushinagar-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Traditional decency wear is recommended inside temple corridors.', 1 FROM public.packages WHERE slug = 'buddhism-kushinagar-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Avoid carrying electronics inside the inner sanctum.', 2 FROM public.packages WHERE slug = 'buddhism-kushinagar-india';
DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'buddhism-lumbini-nepal');
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Hotel Stay', 0 FROM public.packages WHERE slug = 'buddhism-lumbini-nepal';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Meals Included', 1 FROM public.packages WHERE slug = 'buddhism-lumbini-nepal';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'AC Transit', 2 FROM public.packages WHERE slug = 'buddhism-lumbini-nepal';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Expert Guide', 3 FROM public.packages WHERE slug = 'buddhism-lumbini-nepal';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Entry Passes', 4 FROM public.packages WHERE slug = 'buddhism-lumbini-nepal';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Spiritual darshan and guided temple tour in Lumbini', 0 FROM public.packages WHERE slug = 'buddhism-lumbini-nepal';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Experience peaceful aarti assemblies and sacred rituals', 1 FROM public.packages WHERE slug = 'buddhism-lumbini-nepal';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Comfortable transfers to all holy sites', 2 FROM public.packages WHERE slug = 'buddhism-lumbini-nepal';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry valid government ID cards for verification.', 0 FROM public.packages WHERE slug = 'buddhism-lumbini-nepal';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Traditional decency wear is recommended inside temple corridors.', 1 FROM public.packages WHERE slug = 'buddhism-lumbini-nepal';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Avoid carrying electronics inside the inner sanctum.', 2 FROM public.packages WHERE slug = 'buddhism-lumbini-nepal';
DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'buddhism-mahabodhi-temple-bagan-myanmar');
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Hotel Stay', 0 FROM public.packages WHERE slug = 'buddhism-mahabodhi-temple-bagan-myanmar';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Meals Included', 1 FROM public.packages WHERE slug = 'buddhism-mahabodhi-temple-bagan-myanmar';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'AC Transit', 2 FROM public.packages WHERE slug = 'buddhism-mahabodhi-temple-bagan-myanmar';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Expert Guide', 3 FROM public.packages WHERE slug = 'buddhism-mahabodhi-temple-bagan-myanmar';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Entry Passes', 4 FROM public.packages WHERE slug = 'buddhism-mahabodhi-temple-bagan-myanmar';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Spiritual darshan and guided temple tour in Mahabodhi Temple, Bagan', 0 FROM public.packages WHERE slug = 'buddhism-mahabodhi-temple-bagan-myanmar';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Experience peaceful aarti assemblies and sacred rituals', 1 FROM public.packages WHERE slug = 'buddhism-mahabodhi-temple-bagan-myanmar';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Comfortable transfers to all holy sites', 2 FROM public.packages WHERE slug = 'buddhism-mahabodhi-temple-bagan-myanmar';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry valid government ID cards for verification.', 0 FROM public.packages WHERE slug = 'buddhism-mahabodhi-temple-bagan-myanmar';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Traditional decency wear is recommended inside temple corridors.', 1 FROM public.packages WHERE slug = 'buddhism-mahabodhi-temple-bagan-myanmar';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Avoid carrying electronics inside the inner sanctum.', 2 FROM public.packages WHERE slug = 'buddhism-mahabodhi-temple-bagan-myanmar';
DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'buddhism-mount-kailash-tibet');
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Hotel Stay', 0 FROM public.packages WHERE slug = 'buddhism-mount-kailash-tibet';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Meals Included', 1 FROM public.packages WHERE slug = 'buddhism-mount-kailash-tibet';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'AC Transit', 2 FROM public.packages WHERE slug = 'buddhism-mount-kailash-tibet';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Expert Guide', 3 FROM public.packages WHERE slug = 'buddhism-mount-kailash-tibet';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Entry Passes', 4 FROM public.packages WHERE slug = 'buddhism-mount-kailash-tibet';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Spiritual darshan and guided temple tour in Mount Kailash', 0 FROM public.packages WHERE slug = 'buddhism-mount-kailash-tibet';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Experience peaceful aarti assemblies and sacred rituals', 1 FROM public.packages WHERE slug = 'buddhism-mount-kailash-tibet';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Comfortable transfers to all holy sites', 2 FROM public.packages WHERE slug = 'buddhism-mount-kailash-tibet';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry valid government ID cards for verification.', 0 FROM public.packages WHERE slug = 'buddhism-mount-kailash-tibet';
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
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Spiritual darshan and guided temple tour in Basilica of Saint Peter, Vatican City', 0 FROM public.packages WHERE slug = 'christianity-basilica-of-saint-peter-vatican-city';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Experience peaceful aarti assemblies and sacred rituals', 1 FROM public.packages WHERE slug = 'christianity-basilica-of-saint-peter-vatican-city';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Comfortable transfers to all holy sites', 2 FROM public.packages WHERE slug = 'christianity-basilica-of-saint-peter-vatican-city';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry valid government ID cards for verification.', 0 FROM public.packages WHERE slug = 'christianity-basilica-of-saint-peter-vatican-city';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Traditional decency wear is recommended inside temple corridors.', 1 FROM public.packages WHERE slug = 'christianity-basilica-of-saint-peter-vatican-city';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Avoid carrying electronics inside the inner sanctum.', 2 FROM public.packages WHERE slug = 'christianity-basilica-of-saint-peter-vatican-city';
DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'christianity-bethlehem-palestine');
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Hotel Stay', 0 FROM public.packages WHERE slug = 'christianity-bethlehem-palestine';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Meals Included', 1 FROM public.packages WHERE slug = 'christianity-bethlehem-palestine';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'AC Transit', 2 FROM public.packages WHERE slug = 'christianity-bethlehem-palestine';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Expert Guide', 3 FROM public.packages WHERE slug = 'christianity-bethlehem-palestine';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Entry Passes', 4 FROM public.packages WHERE slug = 'christianity-bethlehem-palestine';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Spiritual darshan and guided temple tour in Bethlehem', 0 FROM public.packages WHERE slug = 'christianity-bethlehem-palestine';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Experience peaceful aarti assemblies and sacred rituals', 1 FROM public.packages WHERE slug = 'christianity-bethlehem-palestine';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Comfortable transfers to all holy sites', 2 FROM public.packages WHERE slug = 'christianity-bethlehem-palestine';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry valid government ID cards for verification.', 0 FROM public.packages WHERE slug = 'christianity-bethlehem-palestine';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Traditional decency wear is recommended inside temple corridors.', 1 FROM public.packages WHERE slug = 'christianity-bethlehem-palestine';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Avoid carrying electronics inside the inner sanctum.', 2 FROM public.packages WHERE slug = 'christianity-bethlehem-palestine';
DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'christianity-camino-de-santiago-spain');
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Hotel Stay', 0 FROM public.packages WHERE slug = 'christianity-camino-de-santiago-spain';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Meals Included', 1 FROM public.packages WHERE slug = 'christianity-camino-de-santiago-spain';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'AC Transit', 2 FROM public.packages WHERE slug = 'christianity-camino-de-santiago-spain';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Expert Guide', 3 FROM public.packages WHERE slug = 'christianity-camino-de-santiago-spain';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Entry Passes', 4 FROM public.packages WHERE slug = 'christianity-camino-de-santiago-spain';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Spiritual darshan and guided temple tour in Camino de Santiago, Spain', 0 FROM public.packages WHERE slug = 'christianity-camino-de-santiago-spain';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Experience peaceful aarti assemblies and sacred rituals', 1 FROM public.packages WHERE slug = 'christianity-camino-de-santiago-spain';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Comfortable transfers to all holy sites', 2 FROM public.packages WHERE slug = 'christianity-camino-de-santiago-spain';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry valid government ID cards for verification.', 0 FROM public.packages WHERE slug = 'christianity-camino-de-santiago-spain';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Traditional decency wear is recommended inside temple corridors.', 1 FROM public.packages WHERE slug = 'christianity-camino-de-santiago-spain';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Avoid carrying electronics inside the inner sanctum.', 2 FROM public.packages WHERE slug = 'christianity-camino-de-santiago-spain';
DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'christianity-canterbury-cathedral-england');
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Hotel Stay', 0 FROM public.packages WHERE slug = 'christianity-canterbury-cathedral-england';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Meals Included', 1 FROM public.packages WHERE slug = 'christianity-canterbury-cathedral-england';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'AC Transit', 2 FROM public.packages WHERE slug = 'christianity-canterbury-cathedral-england';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Expert Guide', 3 FROM public.packages WHERE slug = 'christianity-canterbury-cathedral-england';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Entry Passes', 4 FROM public.packages WHERE slug = 'christianity-canterbury-cathedral-england';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Spiritual darshan and guided temple tour in Canterbury Cathedral', 0 FROM public.packages WHERE slug = 'christianity-canterbury-cathedral-england';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Experience peaceful aarti assemblies and sacred rituals', 1 FROM public.packages WHERE slug = 'christianity-canterbury-cathedral-england';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Comfortable transfers to all holy sites', 2 FROM public.packages WHERE slug = 'christianity-canterbury-cathedral-england';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry valid government ID cards for verification.', 0 FROM public.packages WHERE slug = 'christianity-canterbury-cathedral-england';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Traditional decency wear is recommended inside temple corridors.', 1 FROM public.packages WHERE slug = 'christianity-canterbury-cathedral-england';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Avoid carrying electronics inside the inner sanctum.', 2 FROM public.packages WHERE slug = 'christianity-canterbury-cathedral-england';
DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'christianity-church-of-the-holy-sepulchre-jerusalem-israel');
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Hotel Stay', 0 FROM public.packages WHERE slug = 'christianity-church-of-the-holy-sepulchre-jerusalem-israel';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Meals Included', 1 FROM public.packages WHERE slug = 'christianity-church-of-the-holy-sepulchre-jerusalem-israel';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'AC Transit', 2 FROM public.packages WHERE slug = 'christianity-church-of-the-holy-sepulchre-jerusalem-israel';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Expert Guide', 3 FROM public.packages WHERE slug = 'christianity-church-of-the-holy-sepulchre-jerusalem-israel';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Entry Passes', 4 FROM public.packages WHERE slug = 'christianity-church-of-the-holy-sepulchre-jerusalem-israel';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Spiritual darshan and guided temple tour in Church of the Holy Sepulchre, Jerusalem', 0 FROM public.packages WHERE slug = 'christianity-church-of-the-holy-sepulchre-jerusalem-israel';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Experience peaceful aarti assemblies and sacred rituals', 1 FROM public.packages WHERE slug = 'christianity-church-of-the-holy-sepulchre-jerusalem-israel';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Comfortable transfers to all holy sites', 2 FROM public.packages WHERE slug = 'christianity-church-of-the-holy-sepulchre-jerusalem-israel';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry valid government ID cards for verification.', 0 FROM public.packages WHERE slug = 'christianity-church-of-the-holy-sepulchre-jerusalem-israel';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Traditional decency wear is recommended inside temple corridors.', 1 FROM public.packages WHERE slug = 'christianity-church-of-the-holy-sepulchre-jerusalem-israel';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Avoid carrying electronics inside the inner sanctum.', 2 FROM public.packages WHERE slug = 'christianity-church-of-the-holy-sepulchre-jerusalem-israel';
DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'christianity-el-santuario-de-chimayo-new-mexico-usa');
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Hotel Stay', 0 FROM public.packages WHERE slug = 'christianity-el-santuario-de-chimayo-new-mexico-usa';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Meals Included', 1 FROM public.packages WHERE slug = 'christianity-el-santuario-de-chimayo-new-mexico-usa';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'AC Transit', 2 FROM public.packages WHERE slug = 'christianity-el-santuario-de-chimayo-new-mexico-usa';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Expert Guide', 3 FROM public.packages WHERE slug = 'christianity-el-santuario-de-chimayo-new-mexico-usa';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Entry Passes', 4 FROM public.packages WHERE slug = 'christianity-el-santuario-de-chimayo-new-mexico-usa';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Spiritual darshan and guided temple tour in El Santuario de Chimayo', 0 FROM public.packages WHERE slug = 'christianity-el-santuario-de-chimayo-new-mexico-usa';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Experience peaceful aarti assemblies and sacred rituals', 1 FROM public.packages WHERE slug = 'christianity-el-santuario-de-chimayo-new-mexico-usa';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Comfortable transfers to all holy sites', 2 FROM public.packages WHERE slug = 'christianity-el-santuario-de-chimayo-new-mexico-usa';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry valid government ID cards for verification.', 0 FROM public.packages WHERE slug = 'christianity-el-santuario-de-chimayo-new-mexico-usa';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Traditional decency wear is recommended inside temple corridors.', 1 FROM public.packages WHERE slug = 'christianity-el-santuario-de-chimayo-new-mexico-usa';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Avoid carrying electronics inside the inner sanctum.', 2 FROM public.packages WHERE slug = 'christianity-el-santuario-de-chimayo-new-mexico-usa';
DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'christianity-f-tima-portugal');
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Hotel Stay', 0 FROM public.packages WHERE slug = 'christianity-f-tima-portugal';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Meals Included', 1 FROM public.packages WHERE slug = 'christianity-f-tima-portugal';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'AC Transit', 2 FROM public.packages WHERE slug = 'christianity-f-tima-portugal';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Expert Guide', 3 FROM public.packages WHERE slug = 'christianity-f-tima-portugal';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Entry Passes', 4 FROM public.packages WHERE slug = 'christianity-f-tima-portugal';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Spiritual darshan and guided temple tour in Fátima', 0 FROM public.packages WHERE slug = 'christianity-f-tima-portugal';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Experience peaceful aarti assemblies and sacred rituals', 1 FROM public.packages WHERE slug = 'christianity-f-tima-portugal';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Comfortable transfers to all holy sites', 2 FROM public.packages WHERE slug = 'christianity-f-tima-portugal';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry valid government ID cards for verification.', 0 FROM public.packages WHERE slug = 'christianity-f-tima-portugal';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Traditional decency wear is recommended inside temple corridors.', 1 FROM public.packages WHERE slug = 'christianity-f-tima-portugal';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Avoid carrying electronics inside the inner sanctum.', 2 FROM public.packages WHERE slug = 'christianity-f-tima-portugal';
DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'christianity-lalibela-ethiopia');
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Hotel Stay', 0 FROM public.packages WHERE slug = 'christianity-lalibela-ethiopia';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Meals Included', 1 FROM public.packages WHERE slug = 'christianity-lalibela-ethiopia';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'AC Transit', 2 FROM public.packages WHERE slug = 'christianity-lalibela-ethiopia';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Expert Guide', 3 FROM public.packages WHERE slug = 'christianity-lalibela-ethiopia';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Entry Passes', 4 FROM public.packages WHERE slug = 'christianity-lalibela-ethiopia';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Spiritual darshan and guided temple tour in Lalibela', 0 FROM public.packages WHERE slug = 'christianity-lalibela-ethiopia';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Experience peaceful aarti assemblies and sacred rituals', 1 FROM public.packages WHERE slug = 'christianity-lalibela-ethiopia';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Comfortable transfers to all holy sites', 2 FROM public.packages WHERE slug = 'christianity-lalibela-ethiopia';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry valid government ID cards for verification.', 0 FROM public.packages WHERE slug = 'christianity-lalibela-ethiopia';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Traditional decency wear is recommended inside temple corridors.', 1 FROM public.packages WHERE slug = 'christianity-lalibela-ethiopia';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Avoid carrying electronics inside the inner sanctum.', 2 FROM public.packages WHERE slug = 'christianity-lalibela-ethiopia';
DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'christianity-mount-athos-greece');
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Hotel Stay', 0 FROM public.packages WHERE slug = 'christianity-mount-athos-greece';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Meals Included', 1 FROM public.packages WHERE slug = 'christianity-mount-athos-greece';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'AC Transit', 2 FROM public.packages WHERE slug = 'christianity-mount-athos-greece';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Expert Guide', 3 FROM public.packages WHERE slug = 'christianity-mount-athos-greece';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Entry Passes', 4 FROM public.packages WHERE slug = 'christianity-mount-athos-greece';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Spiritual darshan and guided temple tour in Mount Athos', 0 FROM public.packages WHERE slug = 'christianity-mount-athos-greece';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Experience peaceful aarti assemblies and sacred rituals', 1 FROM public.packages WHERE slug = 'christianity-mount-athos-greece';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Comfortable transfers to all holy sites', 2 FROM public.packages WHERE slug = 'christianity-mount-athos-greece';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry valid government ID cards for verification.', 0 FROM public.packages WHERE slug = 'christianity-mount-athos-greece';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Traditional decency wear is recommended inside temple corridors.', 1 FROM public.packages WHERE slug = 'christianity-mount-athos-greece';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Avoid carrying electronics inside the inner sanctum.', 2 FROM public.packages WHERE slug = 'christianity-mount-athos-greece';
DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'christianity-old-city-jerusalem-israel');
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Hotel Stay', 0 FROM public.packages WHERE slug = 'christianity-old-city-jerusalem-israel';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Meals Included', 1 FROM public.packages WHERE slug = 'christianity-old-city-jerusalem-israel';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'AC Transit', 2 FROM public.packages WHERE slug = 'christianity-old-city-jerusalem-israel';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Expert Guide', 3 FROM public.packages WHERE slug = 'christianity-old-city-jerusalem-israel';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Entry Passes', 4 FROM public.packages WHERE slug = 'christianity-old-city-jerusalem-israel';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Spiritual darshan and guided temple tour in Old City Jerusalem', 0 FROM public.packages WHERE slug = 'christianity-old-city-jerusalem-israel';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Experience peaceful aarti assemblies and sacred rituals', 1 FROM public.packages WHERE slug = 'christianity-old-city-jerusalem-israel';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Comfortable transfers to all holy sites', 2 FROM public.packages WHERE slug = 'christianity-old-city-jerusalem-israel';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry valid government ID cards for verification.', 0 FROM public.packages WHERE slug = 'christianity-old-city-jerusalem-israel';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Traditional decency wear is recommended inside temple corridors.', 1 FROM public.packages WHERE slug = 'christianity-old-city-jerusalem-israel';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Avoid carrying electronics inside the inner sanctum.', 2 FROM public.packages WHERE slug = 'christianity-old-city-jerusalem-israel';
DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'christianity-sanctuary-of-our-lady-of-lourdes-france');
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Hotel Stay', 0 FROM public.packages WHERE slug = 'christianity-sanctuary-of-our-lady-of-lourdes-france';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Meals Included', 1 FROM public.packages WHERE slug = 'christianity-sanctuary-of-our-lady-of-lourdes-france';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'AC Transit', 2 FROM public.packages WHERE slug = 'christianity-sanctuary-of-our-lady-of-lourdes-france';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Expert Guide', 3 FROM public.packages WHERE slug = 'christianity-sanctuary-of-our-lady-of-lourdes-france';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Entry Passes', 4 FROM public.packages WHERE slug = 'christianity-sanctuary-of-our-lady-of-lourdes-france';
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
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Traditional decency wear is recommended inside temple corridors.', 1 FROM public.packages WHERE slug = 'christianity-vatican-city-italy';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Avoid carrying electronics inside the inner sanctum.', 2 FROM public.packages WHERE slug = 'christianity-vatican-city-italy';
DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'hinduism-adam-s-peak-sri-pada-sri-lanka');
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Hotel Stay', 0 FROM public.packages WHERE slug = 'hinduism-adam-s-peak-sri-pada-sri-lanka';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Meals Included', 1 FROM public.packages WHERE slug = 'hinduism-adam-s-peak-sri-pada-sri-lanka';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'AC Transit', 2 FROM public.packages WHERE slug = 'hinduism-adam-s-peak-sri-pada-sri-lanka';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Expert Guide', 3 FROM public.packages WHERE slug = 'hinduism-adam-s-peak-sri-pada-sri-lanka';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Entry Passes', 4 FROM public.packages WHERE slug = 'hinduism-adam-s-peak-sri-pada-sri-lanka';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Spiritual darshan and guided temple tour in Adam’s Peak (Sri Pada)', 0 FROM public.packages WHERE slug = 'hinduism-adam-s-peak-sri-pada-sri-lanka';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Experience peaceful aarti assemblies and sacred rituals', 1 FROM public.packages WHERE slug = 'hinduism-adam-s-peak-sri-pada-sri-lanka';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Comfortable transfers to all holy sites', 2 FROM public.packages WHERE slug = 'hinduism-adam-s-peak-sri-pada-sri-lanka';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry valid government ID cards for verification.', 0 FROM public.packages WHERE slug = 'hinduism-adam-s-peak-sri-pada-sri-lanka';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Traditional decency wear is recommended inside temple corridors.', 1 FROM public.packages WHERE slug = 'hinduism-adam-s-peak-sri-pada-sri-lanka';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Avoid carrying electronics inside the inner sanctum.', 2 FROM public.packages WHERE slug = 'hinduism-adam-s-peak-sri-pada-sri-lanka';
DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'hinduism-badrinath-india');
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Hotel Stay', 0 FROM public.packages WHERE slug = 'hinduism-badrinath-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Meals Included', 1 FROM public.packages WHERE slug = 'hinduism-badrinath-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'AC Transit', 2 FROM public.packages WHERE slug = 'hinduism-badrinath-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Expert Guide', 3 FROM public.packages WHERE slug = 'hinduism-badrinath-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Entry Passes', 4 FROM public.packages WHERE slug = 'hinduism-badrinath-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Medical Support', 5 FROM public.packages WHERE slug = 'hinduism-badrinath-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Spiritual darshan and guided temple tour in Badrinath', 0 FROM public.packages WHERE slug = 'hinduism-badrinath-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Experience peaceful aarti assemblies and sacred rituals', 1 FROM public.packages WHERE slug = 'hinduism-badrinath-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Comfortable transfers to all holy sites', 2 FROM public.packages WHERE slug = 'hinduism-badrinath-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry valid government ID cards for verification.', 0 FROM public.packages WHERE slug = 'hinduism-badrinath-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Traditional decency wear is recommended inside temple corridors.', 1 FROM public.packages WHERE slug = 'hinduism-badrinath-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Avoid carrying electronics inside the inner sanctum.', 2 FROM public.packages WHERE slug = 'hinduism-badrinath-india';
DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'hinduism-dwarkadhish-temple-dwarka-india');
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Hotel Stay', 0 FROM public.packages WHERE slug = 'hinduism-dwarkadhish-temple-dwarka-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Meals Included', 1 FROM public.packages WHERE slug = 'hinduism-dwarkadhish-temple-dwarka-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'AC Transit', 2 FROM public.packages WHERE slug = 'hinduism-dwarkadhish-temple-dwarka-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Expert Guide', 3 FROM public.packages WHERE slug = 'hinduism-dwarkadhish-temple-dwarka-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Entry Passes', 4 FROM public.packages WHERE slug = 'hinduism-dwarkadhish-temple-dwarka-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Spiritual darshan and guided temple tour in Dwarkadhish Temple', 0 FROM public.packages WHERE slug = 'hinduism-dwarkadhish-temple-dwarka-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Experience peaceful aarti assemblies and sacred rituals', 1 FROM public.packages WHERE slug = 'hinduism-dwarkadhish-temple-dwarka-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Comfortable transfers to all holy sites', 2 FROM public.packages WHERE slug = 'hinduism-dwarkadhish-temple-dwarka-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry valid government ID cards for verification.', 0 FROM public.packages WHERE slug = 'hinduism-dwarkadhish-temple-dwarka-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Traditional decency wear is recommended inside temple corridors.', 1 FROM public.packages WHERE slug = 'hinduism-dwarkadhish-temple-dwarka-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Avoid carrying electronics inside the inner sanctum.', 2 FROM public.packages WHERE slug = 'hinduism-dwarkadhish-temple-dwarka-india';
DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'hinduism-golden-temple-harmandir-sahib-amritsar-india');
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Hotel Stay', 0 FROM public.packages WHERE slug = 'hinduism-golden-temple-harmandir-sahib-amritsar-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Meals Included', 1 FROM public.packages WHERE slug = 'hinduism-golden-temple-harmandir-sahib-amritsar-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'AC Transit', 2 FROM public.packages WHERE slug = 'hinduism-golden-temple-harmandir-sahib-amritsar-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Expert Guide', 3 FROM public.packages WHERE slug = 'hinduism-golden-temple-harmandir-sahib-amritsar-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Entry Passes', 4 FROM public.packages WHERE slug = 'hinduism-golden-temple-harmandir-sahib-amritsar-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Spiritual darshan and guided temple tour in Golden Temple', 0 FROM public.packages WHERE slug = 'hinduism-golden-temple-harmandir-sahib-amritsar-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Experience peaceful aarti assemblies and sacred rituals', 1 FROM public.packages WHERE slug = 'hinduism-golden-temple-harmandir-sahib-amritsar-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Comfortable transfers to all holy sites', 2 FROM public.packages WHERE slug = 'hinduism-golden-temple-harmandir-sahib-amritsar-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry valid government ID cards for verification.', 0 FROM public.packages WHERE slug = 'hinduism-golden-temple-harmandir-sahib-amritsar-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Traditional decency wear is recommended inside temple corridors.', 1 FROM public.packages WHERE slug = 'hinduism-golden-temple-harmandir-sahib-amritsar-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Avoid carrying electronics inside the inner sanctum.', 2 FROM public.packages WHERE slug = 'hinduism-golden-temple-harmandir-sahib-amritsar-india';
DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'hinduism-haridwar-rishikesh-india');
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Hotel Stay', 0 FROM public.packages WHERE slug = 'hinduism-haridwar-rishikesh-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Meals Included', 1 FROM public.packages WHERE slug = 'hinduism-haridwar-rishikesh-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'AC Transit', 2 FROM public.packages WHERE slug = 'hinduism-haridwar-rishikesh-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Expert Guide', 3 FROM public.packages WHERE slug = 'hinduism-haridwar-rishikesh-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Entry Passes', 4 FROM public.packages WHERE slug = 'hinduism-haridwar-rishikesh-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Medical Support', 5 FROM public.packages WHERE slug = 'hinduism-haridwar-rishikesh-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Spiritual darshan and guided temple tour in Haridwar & Rishikesh', 0 FROM public.packages WHERE slug = 'hinduism-haridwar-rishikesh-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Experience peaceful aarti assemblies and sacred rituals', 1 FROM public.packages WHERE slug = 'hinduism-haridwar-rishikesh-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Comfortable transfers to all holy sites', 2 FROM public.packages WHERE slug = 'hinduism-haridwar-rishikesh-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry valid government ID cards for verification.', 0 FROM public.packages WHERE slug = 'hinduism-haridwar-rishikesh-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Traditional decency wear is recommended inside temple corridors.', 1 FROM public.packages WHERE slug = 'hinduism-haridwar-rishikesh-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Avoid carrying electronics inside the inner sanctum.', 2 FROM public.packages WHERE slug = 'hinduism-haridwar-rishikesh-india';
DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'hinduism-jagannath-temple-puri-india');
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Hotel Stay', 0 FROM public.packages WHERE slug = 'hinduism-jagannath-temple-puri-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Meals Included', 1 FROM public.packages WHERE slug = 'hinduism-jagannath-temple-puri-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'AC Transit', 2 FROM public.packages WHERE slug = 'hinduism-jagannath-temple-puri-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Expert Guide', 3 FROM public.packages WHERE slug = 'hinduism-jagannath-temple-puri-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Entry Passes', 4 FROM public.packages WHERE slug = 'hinduism-jagannath-temple-puri-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Spiritual darshan and guided temple tour in Jagannath Temple', 0 FROM public.packages WHERE slug = 'hinduism-jagannath-temple-puri-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Experience peaceful aarti assemblies and sacred rituals', 1 FROM public.packages WHERE slug = 'hinduism-jagannath-temple-puri-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Comfortable transfers to all holy sites', 2 FROM public.packages WHERE slug = 'hinduism-jagannath-temple-puri-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry valid government ID cards for verification.', 0 FROM public.packages WHERE slug = 'hinduism-jagannath-temple-puri-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Traditional decency wear is recommended inside temple corridors.', 1 FROM public.packages WHERE slug = 'hinduism-jagannath-temple-puri-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Avoid carrying electronics inside the inner sanctum.', 2 FROM public.packages WHERE slug = 'hinduism-jagannath-temple-puri-india';
DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'hinduism-kashi-vishwanath-varanasi-india');
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Hotel Stay', 0 FROM public.packages WHERE slug = 'hinduism-kashi-vishwanath-varanasi-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Meals Included', 1 FROM public.packages WHERE slug = 'hinduism-kashi-vishwanath-varanasi-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'AC Transit', 2 FROM public.packages WHERE slug = 'hinduism-kashi-vishwanath-varanasi-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Expert Guide', 3 FROM public.packages WHERE slug = 'hinduism-kashi-vishwanath-varanasi-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Entry Passes', 4 FROM public.packages WHERE slug = 'hinduism-kashi-vishwanath-varanasi-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Spiritual darshan and guided temple tour in Kashi Vishwanath', 0 FROM public.packages WHERE slug = 'hinduism-kashi-vishwanath-varanasi-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Experience peaceful aarti assemblies and sacred rituals', 1 FROM public.packages WHERE slug = 'hinduism-kashi-vishwanath-varanasi-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Comfortable transfers to all holy sites', 2 FROM public.packages WHERE slug = 'hinduism-kashi-vishwanath-varanasi-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry valid government ID cards for verification.', 0 FROM public.packages WHERE slug = 'hinduism-kashi-vishwanath-varanasi-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Traditional decency wear is recommended inside temple corridors.', 1 FROM public.packages WHERE slug = 'hinduism-kashi-vishwanath-varanasi-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Avoid carrying electronics inside the inner sanctum.', 2 FROM public.packages WHERE slug = 'hinduism-kashi-vishwanath-varanasi-india';
DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'hinduism-kedarnath-india');
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Hotel Stay', 0 FROM public.packages WHERE slug = 'hinduism-kedarnath-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Meals Included', 1 FROM public.packages WHERE slug = 'hinduism-kedarnath-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'AC Transit', 2 FROM public.packages WHERE slug = 'hinduism-kedarnath-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Expert Guide', 3 FROM public.packages WHERE slug = 'hinduism-kedarnath-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Entry Passes', 4 FROM public.packages WHERE slug = 'hinduism-kedarnath-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Medical Support', 5 FROM public.packages WHERE slug = 'hinduism-kedarnath-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Spiritual darshan and guided temple tour in Kedarnath', 0 FROM public.packages WHERE slug = 'hinduism-kedarnath-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Experience peaceful aarti assemblies and sacred rituals', 1 FROM public.packages WHERE slug = 'hinduism-kedarnath-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Comfortable transfers to all holy sites', 2 FROM public.packages WHERE slug = 'hinduism-kedarnath-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry valid government ID cards for verification.', 0 FROM public.packages WHERE slug = 'hinduism-kedarnath-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Traditional decency wear is recommended inside temple corridors.', 1 FROM public.packages WHERE slug = 'hinduism-kedarnath-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Avoid carrying electronics inside the inner sanctum.', 2 FROM public.packages WHERE slug = 'hinduism-kedarnath-india';
DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'hinduism-mahakaleshwar-temple-ujjain-india');
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Hotel Stay', 0 FROM public.packages WHERE slug = 'hinduism-mahakaleshwar-temple-ujjain-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Meals Included', 1 FROM public.packages WHERE slug = 'hinduism-mahakaleshwar-temple-ujjain-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'AC Transit', 2 FROM public.packages WHERE slug = 'hinduism-mahakaleshwar-temple-ujjain-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Expert Guide', 3 FROM public.packages WHERE slug = 'hinduism-mahakaleshwar-temple-ujjain-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Entry Passes', 4 FROM public.packages WHERE slug = 'hinduism-mahakaleshwar-temple-ujjain-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Spiritual darshan and guided temple tour in Mahakaleshwar Temple', 0 FROM public.packages WHERE slug = 'hinduism-mahakaleshwar-temple-ujjain-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Experience peaceful aarti assemblies and sacred rituals', 1 FROM public.packages WHERE slug = 'hinduism-mahakaleshwar-temple-ujjain-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Comfortable transfers to all holy sites', 2 FROM public.packages WHERE slug = 'hinduism-mahakaleshwar-temple-ujjain-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry valid government ID cards for verification.', 0 FROM public.packages WHERE slug = 'hinduism-mahakaleshwar-temple-ujjain-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Traditional decency wear is recommended inside temple corridors.', 1 FROM public.packages WHERE slug = 'hinduism-mahakaleshwar-temple-ujjain-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Avoid carrying electronics inside the inner sanctum.', 2 FROM public.packages WHERE slug = 'hinduism-mahakaleshwar-temple-ujjain-india';
DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'hinduism-mount-kailash-tibet');
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Hotel Stay', 0 FROM public.packages WHERE slug = 'hinduism-mount-kailash-tibet';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Meals Included', 1 FROM public.packages WHERE slug = 'hinduism-mount-kailash-tibet';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'AC Transit', 2 FROM public.packages WHERE slug = 'hinduism-mount-kailash-tibet';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Expert Guide', 3 FROM public.packages WHERE slug = 'hinduism-mount-kailash-tibet';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Entry Passes', 4 FROM public.packages WHERE slug = 'hinduism-mount-kailash-tibet';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Spiritual darshan and guided temple tour in Mount Kailash', 0 FROM public.packages WHERE slug = 'hinduism-mount-kailash-tibet';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Experience peaceful aarti assemblies and sacred rituals', 1 FROM public.packages WHERE slug = 'hinduism-mount-kailash-tibet';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Comfortable transfers to all holy sites', 2 FROM public.packages WHERE slug = 'hinduism-mount-kailash-tibet';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry valid government ID cards for verification.', 0 FROM public.packages WHERE slug = 'hinduism-mount-kailash-tibet';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Traditional decency wear is recommended inside temple corridors.', 1 FROM public.packages WHERE slug = 'hinduism-mount-kailash-tibet';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Avoid carrying electronics inside the inner sanctum.', 2 FROM public.packages WHERE slug = 'hinduism-mount-kailash-tibet';
DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'hinduism-rameswaram-india');
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Hotel Stay', 0 FROM public.packages WHERE slug = 'hinduism-rameswaram-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Meals Included', 1 FROM public.packages WHERE slug = 'hinduism-rameswaram-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'AC Transit', 2 FROM public.packages WHERE slug = 'hinduism-rameswaram-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Expert Guide', 3 FROM public.packages WHERE slug = 'hinduism-rameswaram-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Entry Passes', 4 FROM public.packages WHERE slug = 'hinduism-rameswaram-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Spiritual darshan and guided temple tour in Rameswaram', 0 FROM public.packages WHERE slug = 'hinduism-rameswaram-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Experience peaceful aarti assemblies and sacred rituals', 1 FROM public.packages WHERE slug = 'hinduism-rameswaram-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Comfortable transfers to all holy sites', 2 FROM public.packages WHERE slug = 'hinduism-rameswaram-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry valid government ID cards for verification.', 0 FROM public.packages WHERE slug = 'hinduism-rameswaram-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Traditional decency wear is recommended inside temple corridors.', 1 FROM public.packages WHERE slug = 'hinduism-rameswaram-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Avoid carrying electronics inside the inner sanctum.', 2 FROM public.packages WHERE slug = 'hinduism-rameswaram-india';
DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'hinduism-somnath-temple-india');
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Hotel Stay', 0 FROM public.packages WHERE slug = 'hinduism-somnath-temple-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Meals Included', 1 FROM public.packages WHERE slug = 'hinduism-somnath-temple-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'AC Transit', 2 FROM public.packages WHERE slug = 'hinduism-somnath-temple-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Expert Guide', 3 FROM public.packages WHERE slug = 'hinduism-somnath-temple-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Entry Passes', 4 FROM public.packages WHERE slug = 'hinduism-somnath-temple-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Spiritual darshan and guided temple tour in Somnath Temple', 0 FROM public.packages WHERE slug = 'hinduism-somnath-temple-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Experience peaceful aarti assemblies and sacred rituals', 1 FROM public.packages WHERE slug = 'hinduism-somnath-temple-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Comfortable transfers to all holy sites', 2 FROM public.packages WHERE slug = 'hinduism-somnath-temple-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry valid government ID cards for verification.', 0 FROM public.packages WHERE slug = 'hinduism-somnath-temple-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Traditional decency wear is recommended inside temple corridors.', 1 FROM public.packages WHERE slug = 'hinduism-somnath-temple-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Avoid carrying electronics inside the inner sanctum.', 2 FROM public.packages WHERE slug = 'hinduism-somnath-temple-india';
DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'hinduism-tirupati-balaji-temple-india');
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Hotel Stay', 0 FROM public.packages WHERE slug = 'hinduism-tirupati-balaji-temple-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Meals Included', 1 FROM public.packages WHERE slug = 'hinduism-tirupati-balaji-temple-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'AC Transit', 2 FROM public.packages WHERE slug = 'hinduism-tirupati-balaji-temple-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Expert Guide', 3 FROM public.packages WHERE slug = 'hinduism-tirupati-balaji-temple-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Entry Passes', 4 FROM public.packages WHERE slug = 'hinduism-tirupati-balaji-temple-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Spiritual darshan and guided temple tour in Tirupati Balaji Temple', 0 FROM public.packages WHERE slug = 'hinduism-tirupati-balaji-temple-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Experience peaceful aarti assemblies and sacred rituals', 1 FROM public.packages WHERE slug = 'hinduism-tirupati-balaji-temple-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Comfortable transfers to all holy sites', 2 FROM public.packages WHERE slug = 'hinduism-tirupati-balaji-temple-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry valid government ID cards for verification.', 0 FROM public.packages WHERE slug = 'hinduism-tirupati-balaji-temple-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Traditional decency wear is recommended inside temple corridors.', 1 FROM public.packages WHERE slug = 'hinduism-tirupati-balaji-temple-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Avoid carrying electronics inside the inner sanctum.', 2 FROM public.packages WHERE slug = 'hinduism-tirupati-balaji-temple-india';
DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'hinduism-trimbakeshwar-temple-nashik-india');
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Hotel Stay', 0 FROM public.packages WHERE slug = 'hinduism-trimbakeshwar-temple-nashik-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Meals Included', 1 FROM public.packages WHERE slug = 'hinduism-trimbakeshwar-temple-nashik-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'AC Transit', 2 FROM public.packages WHERE slug = 'hinduism-trimbakeshwar-temple-nashik-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Expert Guide', 3 FROM public.packages WHERE slug = 'hinduism-trimbakeshwar-temple-nashik-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Entry Passes', 4 FROM public.packages WHERE slug = 'hinduism-trimbakeshwar-temple-nashik-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Spiritual darshan and guided temple tour in Trimbakeshwar Temple', 0 FROM public.packages WHERE slug = 'hinduism-trimbakeshwar-temple-nashik-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Experience peaceful aarti assemblies and sacred rituals', 1 FROM public.packages WHERE slug = 'hinduism-trimbakeshwar-temple-nashik-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Comfortable transfers to all holy sites', 2 FROM public.packages WHERE slug = 'hinduism-trimbakeshwar-temple-nashik-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry valid government ID cards for verification.', 0 FROM public.packages WHERE slug = 'hinduism-trimbakeshwar-temple-nashik-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Traditional decency wear is recommended inside temple corridors.', 1 FROM public.packages WHERE slug = 'hinduism-trimbakeshwar-temple-nashik-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Avoid carrying electronics inside the inner sanctum.', 2 FROM public.packages WHERE slug = 'hinduism-trimbakeshwar-temple-nashik-india';
DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'hinduism-vaishno-devi-india');
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Hotel Stay', 0 FROM public.packages WHERE slug = 'hinduism-vaishno-devi-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Meals Included', 1 FROM public.packages WHERE slug = 'hinduism-vaishno-devi-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'AC Transit', 2 FROM public.packages WHERE slug = 'hinduism-vaishno-devi-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Expert Guide', 3 FROM public.packages WHERE slug = 'hinduism-vaishno-devi-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Entry Passes', 4 FROM public.packages WHERE slug = 'hinduism-vaishno-devi-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Medical Support', 5 FROM public.packages WHERE slug = 'hinduism-vaishno-devi-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Spiritual darshan and guided temple tour in Vaishno Devi', 0 FROM public.packages WHERE slug = 'hinduism-vaishno-devi-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Experience peaceful aarti assemblies and sacred rituals', 1 FROM public.packages WHERE slug = 'hinduism-vaishno-devi-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Comfortable transfers to all holy sites', 2 FROM public.packages WHERE slug = 'hinduism-vaishno-devi-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry valid government ID cards for verification.', 0 FROM public.packages WHERE slug = 'hinduism-vaishno-devi-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Traditional decency wear is recommended inside temple corridors.', 1 FROM public.packages WHERE slug = 'hinduism-vaishno-devi-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Avoid carrying electronics inside the inner sanctum.', 2 FROM public.packages WHERE slug = 'hinduism-vaishno-devi-india';
DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'islam-ajmer-sharif-dargah-india');
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Hotel Stay', 0 FROM public.packages WHERE slug = 'islam-ajmer-sharif-dargah-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Meals Included', 1 FROM public.packages WHERE slug = 'islam-ajmer-sharif-dargah-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'AC Transit', 2 FROM public.packages WHERE slug = 'islam-ajmer-sharif-dargah-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Expert Guide', 3 FROM public.packages WHERE slug = 'islam-ajmer-sharif-dargah-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Entry Passes', 4 FROM public.packages WHERE slug = 'islam-ajmer-sharif-dargah-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Spiritual darshan and guided temple tour in Ajmer Sharif Dargah', 0 FROM public.packages WHERE slug = 'islam-ajmer-sharif-dargah-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Experience peaceful aarti assemblies and sacred rituals', 1 FROM public.packages WHERE slug = 'islam-ajmer-sharif-dargah-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Comfortable transfers to all holy sites', 2 FROM public.packages WHERE slug = 'islam-ajmer-sharif-dargah-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry valid government ID cards for verification.', 0 FROM public.packages WHERE slug = 'islam-ajmer-sharif-dargah-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Traditional decency wear is recommended inside temple corridors.', 1 FROM public.packages WHERE slug = 'islam-ajmer-sharif-dargah-india';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Avoid carrying electronics inside the inner sanctum.', 2 FROM public.packages WHERE slug = 'islam-ajmer-sharif-dargah-india';
DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'islam-al-aqsa-mosque-jerusalem-israel');
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Hotel Stay', 0 FROM public.packages WHERE slug = 'islam-al-aqsa-mosque-jerusalem-israel';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Meals Included', 1 FROM public.packages WHERE slug = 'islam-al-aqsa-mosque-jerusalem-israel';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'AC Transit', 2 FROM public.packages WHERE slug = 'islam-al-aqsa-mosque-jerusalem-israel';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Expert Guide', 3 FROM public.packages WHERE slug = 'islam-al-aqsa-mosque-jerusalem-israel';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Entry Passes', 4 FROM public.packages WHERE slug = 'islam-al-aqsa-mosque-jerusalem-israel';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Spiritual darshan and guided temple tour in Al Aqsa Mosque, Jerusalem', 0 FROM public.packages WHERE slug = 'islam-al-aqsa-mosque-jerusalem-israel';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Experience peaceful aarti assemblies and sacred rituals', 1 FROM public.packages WHERE slug = 'islam-al-aqsa-mosque-jerusalem-israel';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Comfortable transfers to all holy sites', 2 FROM public.packages WHERE slug = 'islam-al-aqsa-mosque-jerusalem-israel';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry valid government ID cards for verification.', 0 FROM public.packages WHERE slug = 'islam-al-aqsa-mosque-jerusalem-israel';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Traditional decency wear is recommended inside temple corridors.', 1 FROM public.packages WHERE slug = 'islam-al-aqsa-mosque-jerusalem-israel';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Avoid carrying electronics inside the inner sanctum.', 2 FROM public.packages WHERE slug = 'islam-al-aqsa-mosque-jerusalem-israel';
DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'islam-al-azhar-mosque-cairo-egypt');
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Hotel Stay', 0 FROM public.packages WHERE slug = 'islam-al-azhar-mosque-cairo-egypt';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Meals Included', 1 FROM public.packages WHERE slug = 'islam-al-azhar-mosque-cairo-egypt';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'AC Transit', 2 FROM public.packages WHERE slug = 'islam-al-azhar-mosque-cairo-egypt';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Expert Guide', 3 FROM public.packages WHERE slug = 'islam-al-azhar-mosque-cairo-egypt';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Entry Passes', 4 FROM public.packages WHERE slug = 'islam-al-azhar-mosque-cairo-egypt';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Spiritual darshan and guided temple tour in Al Azhar Mosque, Cairo', 0 FROM public.packages WHERE slug = 'islam-al-azhar-mosque-cairo-egypt';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Experience peaceful aarti assemblies and sacred rituals', 1 FROM public.packages WHERE slug = 'islam-al-azhar-mosque-cairo-egypt';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Comfortable transfers to all holy sites', 2 FROM public.packages WHERE slug = 'islam-al-azhar-mosque-cairo-egypt';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry valid government ID cards for verification.', 0 FROM public.packages WHERE slug = 'islam-al-azhar-mosque-cairo-egypt';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Traditional decency wear is recommended inside temple corridors.', 1 FROM public.packages WHERE slug = 'islam-al-azhar-mosque-cairo-egypt';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Avoid carrying electronics inside the inner sanctum.', 2 FROM public.packages WHERE slug = 'islam-al-azhar-mosque-cairo-egypt';
DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'islam-al-masjid-al-qiblatayn-medina-saudi-arabia');
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Hotel Stay', 0 FROM public.packages WHERE slug = 'islam-al-masjid-al-qiblatayn-medina-saudi-arabia';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Meals Included', 1 FROM public.packages WHERE slug = 'islam-al-masjid-al-qiblatayn-medina-saudi-arabia';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'AC Transit', 2 FROM public.packages WHERE slug = 'islam-al-masjid-al-qiblatayn-medina-saudi-arabia';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Expert Guide', 3 FROM public.packages WHERE slug = 'islam-al-masjid-al-qiblatayn-medina-saudi-arabia';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Entry Passes', 4 FROM public.packages WHERE slug = 'islam-al-masjid-al-qiblatayn-medina-saudi-arabia';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Spiritual darshan and guided temple tour in Al Masjid al Qiblatayn, Medina', 0 FROM public.packages WHERE slug = 'islam-al-masjid-al-qiblatayn-medina-saudi-arabia';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Experience peaceful aarti assemblies and sacred rituals', 1 FROM public.packages WHERE slug = 'islam-al-masjid-al-qiblatayn-medina-saudi-arabia';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Comfortable transfers to all holy sites', 2 FROM public.packages WHERE slug = 'islam-al-masjid-al-qiblatayn-medina-saudi-arabia';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry valid government ID cards for verification.', 0 FROM public.packages WHERE slug = 'islam-al-masjid-al-qiblatayn-medina-saudi-arabia';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Traditional decency wear is recommended inside temple corridors.', 1 FROM public.packages WHERE slug = 'islam-al-masjid-al-qiblatayn-medina-saudi-arabia';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Avoid carrying electronics inside the inner sanctum.', 2 FROM public.packages WHERE slug = 'islam-al-masjid-al-qiblatayn-medina-saudi-arabia';
DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'islam-data-darbar-lahore-pakistan');
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Hotel Stay', 0 FROM public.packages WHERE slug = 'islam-data-darbar-lahore-pakistan';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Meals Included', 1 FROM public.packages WHERE slug = 'islam-data-darbar-lahore-pakistan';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'AC Transit', 2 FROM public.packages WHERE slug = 'islam-data-darbar-lahore-pakistan';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Expert Guide', 3 FROM public.packages WHERE slug = 'islam-data-darbar-lahore-pakistan';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Entry Passes', 4 FROM public.packages WHERE slug = 'islam-data-darbar-lahore-pakistan';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Spiritual darshan and guided temple tour in Data Darbar, Lahore', 0 FROM public.packages WHERE slug = 'islam-data-darbar-lahore-pakistan';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Experience peaceful aarti assemblies and sacred rituals', 1 FROM public.packages WHERE slug = 'islam-data-darbar-lahore-pakistan';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Comfortable transfers to all holy sites', 2 FROM public.packages WHERE slug = 'islam-data-darbar-lahore-pakistan';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry valid government ID cards for verification.', 0 FROM public.packages WHERE slug = 'islam-data-darbar-lahore-pakistan';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Traditional decency wear is recommended inside temple corridors.', 1 FROM public.packages WHERE slug = 'islam-data-darbar-lahore-pakistan';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Avoid carrying electronics inside the inner sanctum.', 2 FROM public.packages WHERE slug = 'islam-data-darbar-lahore-pakistan';
DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'islam-dome-of-the-rock-jerusalem-israel');
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Hotel Stay', 0 FROM public.packages WHERE slug = 'islam-dome-of-the-rock-jerusalem-israel';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Meals Included', 1 FROM public.packages WHERE slug = 'islam-dome-of-the-rock-jerusalem-israel';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'AC Transit', 2 FROM public.packages WHERE slug = 'islam-dome-of-the-rock-jerusalem-israel';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Expert Guide', 3 FROM public.packages WHERE slug = 'islam-dome-of-the-rock-jerusalem-israel';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Entry Passes', 4 FROM public.packages WHERE slug = 'islam-dome-of-the-rock-jerusalem-israel';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Spiritual darshan and guided temple tour in Dome of the Rock, Jerusalem', 0 FROM public.packages WHERE slug = 'islam-dome-of-the-rock-jerusalem-israel';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Experience peaceful aarti assemblies and sacred rituals', 1 FROM public.packages WHERE slug = 'islam-dome-of-the-rock-jerusalem-israel';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Comfortable transfers to all holy sites', 2 FROM public.packages WHERE slug = 'islam-dome-of-the-rock-jerusalem-israel';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry valid government ID cards for verification.', 0 FROM public.packages WHERE slug = 'islam-dome-of-the-rock-jerusalem-israel';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Traditional decency wear is recommended inside temple corridors.', 1 FROM public.packages WHERE slug = 'islam-dome-of-the-rock-jerusalem-israel';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Avoid carrying electronics inside the inner sanctum.', 2 FROM public.packages WHERE slug = 'islam-dome-of-the-rock-jerusalem-israel';
DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'islam-imam-ali-shrine-najaf-iraq');
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Hotel Stay', 0 FROM public.packages WHERE slug = 'islam-imam-ali-shrine-najaf-iraq';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Meals Included', 1 FROM public.packages WHERE slug = 'islam-imam-ali-shrine-najaf-iraq';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'AC Transit', 2 FROM public.packages WHERE slug = 'islam-imam-ali-shrine-najaf-iraq';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Expert Guide', 3 FROM public.packages WHERE slug = 'islam-imam-ali-shrine-najaf-iraq';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Entry Passes', 4 FROM public.packages WHERE slug = 'islam-imam-ali-shrine-najaf-iraq';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Spiritual darshan and guided temple tour in Imam Ali Shrine, Najaf', 0 FROM public.packages WHERE slug = 'islam-imam-ali-shrine-najaf-iraq';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Experience peaceful aarti assemblies and sacred rituals', 1 FROM public.packages WHERE slug = 'islam-imam-ali-shrine-najaf-iraq';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Comfortable transfers to all holy sites', 2 FROM public.packages WHERE slug = 'islam-imam-ali-shrine-najaf-iraq';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry valid government ID cards for verification.', 0 FROM public.packages WHERE slug = 'islam-imam-ali-shrine-najaf-iraq';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Traditional decency wear is recommended inside temple corridors.', 1 FROM public.packages WHERE slug = 'islam-imam-ali-shrine-najaf-iraq';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Avoid carrying electronics inside the inner sanctum.', 2 FROM public.packages WHERE slug = 'islam-imam-ali-shrine-najaf-iraq';
DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'islam-imam-husayn-shrine-karbala-iraq');
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Hotel Stay', 0 FROM public.packages WHERE slug = 'islam-imam-husayn-shrine-karbala-iraq';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Meals Included', 1 FROM public.packages WHERE slug = 'islam-imam-husayn-shrine-karbala-iraq';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'AC Transit', 2 FROM public.packages WHERE slug = 'islam-imam-husayn-shrine-karbala-iraq';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Expert Guide', 3 FROM public.packages WHERE slug = 'islam-imam-husayn-shrine-karbala-iraq';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Entry Passes', 4 FROM public.packages WHERE slug = 'islam-imam-husayn-shrine-karbala-iraq';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Spiritual darshan and guided temple tour in Imam Husayn Shrine, Karbala', 0 FROM public.packages WHERE slug = 'islam-imam-husayn-shrine-karbala-iraq';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Experience peaceful aarti assemblies and sacred rituals', 1 FROM public.packages WHERE slug = 'islam-imam-husayn-shrine-karbala-iraq';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Comfortable transfers to all holy sites', 2 FROM public.packages WHERE slug = 'islam-imam-husayn-shrine-karbala-iraq';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry valid government ID cards for verification.', 0 FROM public.packages WHERE slug = 'islam-imam-husayn-shrine-karbala-iraq';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Traditional decency wear is recommended inside temple corridors.', 1 FROM public.packages WHERE slug = 'islam-imam-husayn-shrine-karbala-iraq';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Avoid carrying electronics inside the inner sanctum.', 2 FROM public.packages WHERE slug = 'islam-imam-husayn-shrine-karbala-iraq';
DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'islam-imam-reza-shrine-mashhad-iran');
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Hotel Stay', 0 FROM public.packages WHERE slug = 'islam-imam-reza-shrine-mashhad-iran';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Meals Included', 1 FROM public.packages WHERE slug = 'islam-imam-reza-shrine-mashhad-iran';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'AC Transit', 2 FROM public.packages WHERE slug = 'islam-imam-reza-shrine-mashhad-iran';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Expert Guide', 3 FROM public.packages WHERE slug = 'islam-imam-reza-shrine-mashhad-iran';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Entry Passes', 4 FROM public.packages WHERE slug = 'islam-imam-reza-shrine-mashhad-iran';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Spiritual darshan and guided temple tour in Imam Reza Shrine, Mashhad', 0 FROM public.packages WHERE slug = 'islam-imam-reza-shrine-mashhad-iran';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Experience peaceful aarti assemblies and sacred rituals', 1 FROM public.packages WHERE slug = 'islam-imam-reza-shrine-mashhad-iran';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Comfortable transfers to all holy sites', 2 FROM public.packages WHERE slug = 'islam-imam-reza-shrine-mashhad-iran';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry valid government ID cards for verification.', 0 FROM public.packages WHERE slug = 'islam-imam-reza-shrine-mashhad-iran';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Traditional decency wear is recommended inside temple corridors.', 1 FROM public.packages WHERE slug = 'islam-imam-reza-shrine-mashhad-iran';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Avoid carrying electronics inside the inner sanctum.', 2 FROM public.packages WHERE slug = 'islam-imam-reza-shrine-mashhad-iran';
DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'islam-mecca-saudi-arabia');
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Hotel Stay', 0 FROM public.packages WHERE slug = 'islam-mecca-saudi-arabia';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Meals Included', 1 FROM public.packages WHERE slug = 'islam-mecca-saudi-arabia';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'AC Transit', 2 FROM public.packages WHERE slug = 'islam-mecca-saudi-arabia';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Expert Guide', 3 FROM public.packages WHERE slug = 'islam-mecca-saudi-arabia';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Entry Passes', 4 FROM public.packages WHERE slug = 'islam-mecca-saudi-arabia';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Spiritual darshan and guided temple tour in Mecca', 0 FROM public.packages WHERE slug = 'islam-mecca-saudi-arabia';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Experience peaceful aarti assemblies and sacred rituals', 1 FROM public.packages WHERE slug = 'islam-mecca-saudi-arabia';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Comfortable transfers to all holy sites', 2 FROM public.packages WHERE slug = 'islam-mecca-saudi-arabia';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry valid government ID cards for verification.', 0 FROM public.packages WHERE slug = 'islam-mecca-saudi-arabia';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Traditional decency wear is recommended inside temple corridors.', 1 FROM public.packages WHERE slug = 'islam-mecca-saudi-arabia';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Avoid carrying electronics inside the inner sanctum.', 2 FROM public.packages WHERE slug = 'islam-mecca-saudi-arabia';
DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'islam-medina-saudi-arabia');
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Hotel Stay', 0 FROM public.packages WHERE slug = 'islam-medina-saudi-arabia';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Meals Included', 1 FROM public.packages WHERE slug = 'islam-medina-saudi-arabia';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'AC Transit', 2 FROM public.packages WHERE slug = 'islam-medina-saudi-arabia';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Expert Guide', 3 FROM public.packages WHERE slug = 'islam-medina-saudi-arabia';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Entry Passes', 4 FROM public.packages WHERE slug = 'islam-medina-saudi-arabia';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Spiritual darshan and guided temple tour in Medina', 0 FROM public.packages WHERE slug = 'islam-medina-saudi-arabia';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Experience peaceful aarti assemblies and sacred rituals', 1 FROM public.packages WHERE slug = 'islam-medina-saudi-arabia';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Comfortable transfers to all holy sites', 2 FROM public.packages WHERE slug = 'islam-medina-saudi-arabia';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry valid government ID cards for verification.', 0 FROM public.packages WHERE slug = 'islam-medina-saudi-arabia';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Traditional decency wear is recommended inside temple corridors.', 1 FROM public.packages WHERE slug = 'islam-medina-saudi-arabia';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Avoid carrying electronics inside the inner sanctum.', 2 FROM public.packages WHERE slug = 'islam-medina-saudi-arabia';
DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'islam-old-city-jerusalem-israel');
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Hotel Stay', 0 FROM public.packages WHERE slug = 'islam-old-city-jerusalem-israel';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Meals Included', 1 FROM public.packages WHERE slug = 'islam-old-city-jerusalem-israel';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'AC Transit', 2 FROM public.packages WHERE slug = 'islam-old-city-jerusalem-israel';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Expert Guide', 3 FROM public.packages WHERE slug = 'islam-old-city-jerusalem-israel';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Entry Passes', 4 FROM public.packages WHERE slug = 'islam-old-city-jerusalem-israel';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Spiritual darshan and guided temple tour in Old City Jerusalem', 0 FROM public.packages WHERE slug = 'islam-old-city-jerusalem-israel';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Experience peaceful aarti assemblies and sacred rituals', 1 FROM public.packages WHERE slug = 'islam-old-city-jerusalem-israel';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Comfortable transfers to all holy sites', 2 FROM public.packages WHERE slug = 'islam-old-city-jerusalem-israel';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry valid government ID cards for verification.', 0 FROM public.packages WHERE slug = 'islam-old-city-jerusalem-israel';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Traditional decency wear is recommended inside temple corridors.', 1 FROM public.packages WHERE slug = 'islam-old-city-jerusalem-israel';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Avoid carrying electronics inside the inner sanctum.', 2 FROM public.packages WHERE slug = 'islam-old-city-jerusalem-israel';
DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'islam-quba-mosque-medina-saudi-arabia');
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Hotel Stay', 0 FROM public.packages WHERE slug = 'islam-quba-mosque-medina-saudi-arabia';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Meals Included', 1 FROM public.packages WHERE slug = 'islam-quba-mosque-medina-saudi-arabia';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'AC Transit', 2 FROM public.packages WHERE slug = 'islam-quba-mosque-medina-saudi-arabia';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Expert Guide', 3 FROM public.packages WHERE slug = 'islam-quba-mosque-medina-saudi-arabia';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Entry Passes', 4 FROM public.packages WHERE slug = 'islam-quba-mosque-medina-saudi-arabia';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Spiritual darshan and guided temple tour in Quba Mosque, Medina', 0 FROM public.packages WHERE slug = 'islam-quba-mosque-medina-saudi-arabia';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Experience peaceful aarti assemblies and sacred rituals', 1 FROM public.packages WHERE slug = 'islam-quba-mosque-medina-saudi-arabia';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Comfortable transfers to all holy sites', 2 FROM public.packages WHERE slug = 'islam-quba-mosque-medina-saudi-arabia';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry valid government ID cards for verification.', 0 FROM public.packages WHERE slug = 'islam-quba-mosque-medina-saudi-arabia';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Traditional decency wear is recommended inside temple corridors.', 1 FROM public.packages WHERE slug = 'islam-quba-mosque-medina-saudi-arabia';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Avoid carrying electronics inside the inner sanctum.', 2 FROM public.packages WHERE slug = 'islam-quba-mosque-medina-saudi-arabia';
DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'islam-touba-senegal');
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Hotel Stay', 0 FROM public.packages WHERE slug = 'islam-touba-senegal';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Meals Included', 1 FROM public.packages WHERE slug = 'islam-touba-senegal';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'AC Transit', 2 FROM public.packages WHERE slug = 'islam-touba-senegal';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Expert Guide', 3 FROM public.packages WHERE slug = 'islam-touba-senegal';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Entry Passes', 4 FROM public.packages WHERE slug = 'islam-touba-senegal';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Spiritual darshan and guided temple tour in Touba', 0 FROM public.packages WHERE slug = 'islam-touba-senegal';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Experience peaceful aarti assemblies and sacred rituals', 1 FROM public.packages WHERE slug = 'islam-touba-senegal';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Comfortable transfers to all holy sites', 2 FROM public.packages WHERE slug = 'islam-touba-senegal';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry valid government ID cards for verification.', 0 FROM public.packages WHERE slug = 'islam-touba-senegal';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Traditional decency wear is recommended inside temple corridors.', 1 FROM public.packages WHERE slug = 'islam-touba-senegal';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Avoid carrying electronics inside the inner sanctum.', 2 FROM public.packages WHERE slug = 'islam-touba-senegal';
DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'islam-umayyad-mosque-damascus-syria');
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Hotel Stay', 0 FROM public.packages WHERE slug = 'islam-umayyad-mosque-damascus-syria';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Meals Included', 1 FROM public.packages WHERE slug = 'islam-umayyad-mosque-damascus-syria';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'AC Transit', 2 FROM public.packages WHERE slug = 'islam-umayyad-mosque-damascus-syria';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Expert Guide', 3 FROM public.packages WHERE slug = 'islam-umayyad-mosque-damascus-syria';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', 'Entry Passes', 4 FROM public.packages WHERE slug = 'islam-umayyad-mosque-damascus-syria';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Spiritual darshan and guided temple tour in Umayyad Mosque, Damascus', 0 FROM public.packages WHERE slug = 'islam-umayyad-mosque-damascus-syria';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Experience peaceful aarti assemblies and sacred rituals', 1 FROM public.packages WHERE slug = 'islam-umayyad-mosque-damascus-syria';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', 'Comfortable transfers to all holy sites', 2 FROM public.packages WHERE slug = 'islam-umayyad-mosque-damascus-syria';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Carry valid government ID cards for verification.', 0 FROM public.packages WHERE slug = 'islam-umayyad-mosque-damascus-syria';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Traditional decency wear is recommended inside temple corridors.', 1 FROM public.packages WHERE slug = 'islam-umayyad-mosque-damascus-syria';
INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', 'Avoid carrying electronics inside the inner sanctum.', 2 FROM public.packages WHERE slug = 'islam-umayyad-mosque-damascus-syria';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'family-alleppey-backwaters');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/family/Alleppey Backwaters.jpg', 'Alleppey Backwaters family tour destination in Alappuzha, Kerala', true, 0
FROM public.packages WHERE slug = 'family-alleppey-backwaters';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'family-amber-fort');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/family/Amber Fort.jpg', 'Amber Fort family tour destination in Jaipur, Rajasthan', true, 0
FROM public.packages WHERE slug = 'family-amber-fort';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'family-athirappilly-waterfalls');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/family/Athirappilly Waterfalls.jpg', 'Athirappilly Waterfalls family tour destination in Thrissur, Kerala', true, 0
FROM public.packages WHERE slug = 'family-athirappilly-waterfalls';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'family-big-ben');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/family/Big Ben.jpg', 'Big Ben family tour destination in London, United Kingdom', true, 0
FROM public.packages WHERE slug = 'family-big-ben';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'family-burj-khalifa');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/family/Burj Khalifa.jpg', 'Burj Khalifa family tour destination in Dubai, United Arab Emirates', true, 0
FROM public.packages WHERE slug = 'family-burj-khalifa';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'family-chitrakote-waterfalls');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/family/Chitrakote Waterfalls.jpg', 'Chitrakote Waterfalls family tour destination in Bastar, Chhattisgarh', true, 0
FROM public.packages WHERE slug = 'family-chitrakote-waterfalls';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'family-city-palace-udaipur');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/family/City Palace, Udaipur.jpg', 'City Palace, Udaipur family tour destination in Udaipur, Rajasthan', true, 0
FROM public.packages WHERE slug = 'family-city-palace-udaipur';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'family-colosseum');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/family/Colosseum.jpg', 'Colosseum family tour destination in Rome, Italy', true, 0
FROM public.packages WHERE slug = 'family-colosseum';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'family-dawki-river-umngot-river');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/family/Dawki River (Umngot River).webp', 'Dawki River family tour destination in West Jaintia Hills, Meghalaya', true, 0
FROM public.packages WHERE slug = 'family-dawki-river-umngot-river';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'family-disneyland-paris');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/family/Disneyland Paris.webp', 'Disneyland Paris family tour destination in Marne-la-Vallée, France', true, 0
FROM public.packages WHERE slug = 'family-disneyland-paris';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'family-dubai-miracle-garden');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/family/Dubai Miracle Garden.jpg', 'Dubai Miracle Garden family tour destination in Dubai, United Arab Emirates', true, 0
FROM public.packages WHERE slug = 'family-dubai-miracle-garden';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'family-dudhsagar-falls');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/family/Dudhsagar Falls.jpg', 'Dudhsagar Falls family tour destination in Goa / Karnataka', true, 0
FROM public.packages WHERE slug = 'family-dudhsagar-falls';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'family-eiffel-tower');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/family/Eiffel Tower.jpg', 'Eiffel Tower family tour destination in Paris, France', true, 0
FROM public.packages WHERE slug = 'family-eiffel-tower';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'family-gardens-by-the-bay');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/family/Gardens by the Bay.jpg', 'Gardens by the Bay family tour destination in Singapore', true, 0
FROM public.packages WHERE slug = 'family-gardens-by-the-bay';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'family-glacier-3000');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/family/Glacier 3000.jpg', 'Glacier 3000 family tour destination in Les Diablerets, Switzerland', true, 0
FROM public.packages WHERE slug = 'family-glacier-3000';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'family-gol-gumbaz');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/family/Gol Gumbaz.jpg', 'Gol Gumbaz family tour destination in Vijayapura, Karnataka', true, 0
FROM public.packages WHERE slug = 'family-gol-gumbaz';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'family-hampi-monuments');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/family/Hampi Monuments.jpg', 'Hampi Monuments family tour destination in Vijayanagara, Karnataka', true, 0
FROM public.packages WHERE slug = 'family-hampi-monuments';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'family-hawa-mahal');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/family/Hawa Mahal.jpg', 'Hawa Mahal family tour destination in Jaipur, Rajasthan', true, 0
FROM public.packages WHERE slug = 'family-hawa-mahal';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'family-leaning-tower-of-pisa');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/family/Leaning Tower of Pisa.webp', 'Leaning Tower of Pisa family tour destination in Pisa, Italy', true, 0
FROM public.packages WHERE slug = 'family-leaning-tower-of-pisa';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'family-living-root-bridges');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/family/Living Root Bridges.jpg', 'Living Root Bridges family tour destination in Cherrapunji, Meghalaya', true, 0
FROM public.packages WHERE slug = 'family-living-root-bridges';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'family-london-eye');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/family/London Eye.jpg', 'London Eye family tour destination in London, United Kingdom', true, 0
FROM public.packages WHERE slug = 'family-london-eye';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'family-marina-bay-sands-skypark');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/family/Marina Bay Sands SkyPark.jpg', 'Marina Bay Sands SkyPark family tour destination in Singapore', true, 0
FROM public.packages WHERE slug = 'family-marina-bay-sands-skypark';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'family-mehrangarh-fort');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/family/Mehrangarh Fort.jpg', 'Mehrangarh Fort family tour destination in Jodhpur, Rajasthan', true, 0
FROM public.packages WHERE slug = 'family-mehrangarh-fort';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'family-mount-fuji');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/family/Mount Fuji.jpg', 'Mount Fuji family tour destination in Honshu, Japan', true, 0
FROM public.packages WHERE slug = 'family-mount-fuji';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'family-mount-titlis');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/family/Mount Titlis.jpg', 'Mount Titlis family tour destination in Engelberg, Switzerland', true, 0
FROM public.packages WHERE slug = 'family-mount-titlis';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'family-munnar-tea-gardens');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/family/Munnar Tea Gardens.jpg', 'Munnar Tea Gardens family tour destination in Munnar, Kerala', true, 0
FROM public.packages WHERE slug = 'family-munnar-tea-gardens';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'family-museum-of-the-future');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/family/Museum of the Future.jpeg', 'Museum of the Future family tour destination in Dubai, United Arab Emirates', true, 0
FROM public.packages WHERE slug = 'family-museum-of-the-future';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'family-mysore-palace');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/family/Mysore Palace.jpg', 'Mysore Palace family tour destination in Mysore, Karnataka', true, 0
FROM public.packages WHERE slug = 'family-mysore-palace';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'family-niagara-falls');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/family/Niagara Falls.jpg', 'Niagara Falls family tour destination in Ontario, Canada / New York, USA', true, 0
FROM public.packages WHERE slug = 'family-niagara-falls';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'family-nubra-valley');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/family/Nubra Valley.jpg', 'Nubra Valley family tour destination in Ladakh', true, 0
FROM public.packages WHERE slug = 'family-nubra-valley';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'family-palm-jumeirah');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/family/Palm Jumeirah.jpg', 'Palm Jumeirah family tour destination in Dubai, United Arab Emirates', true, 0
FROM public.packages WHERE slug = 'family-palm-jumeirah';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'family-pangong-lake');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/family/Pangong Lake.jpg', 'Pangong Lake family tour destination in Ladakh', true, 0
FROM public.packages WHERE slug = 'family-pangong-lake';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'family-radhanagar-beach');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/family/Radhanagar Beach.jpg', 'Radhanagar Beach family tour destination in Andaman & Nicobar Islands', true, 0
FROM public.packages WHERE slug = 'family-radhanagar-beach';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'family-rohtang-pass');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/family/Rohtang-Pass.jpg', 'Rohtang Pass family tour destination in Manali, Himachal Pradesh', true, 0
FROM public.packages WHERE slug = 'family-rohtang-pass';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'family-sentosa-island');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/family/Sentosa Island.jpg', 'Sentosa Island family tour destination in Singapore', true, 0
FROM public.packages WHERE slug = 'family-sentosa-island';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'family-swiss-alps-jungfraujoch');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/family/Swiss Alps (Jungfraujoch).webp', 'Swiss Alps family tour destination in Bernese Oberland, Switzerland', true, 0
FROM public.packages WHERE slug = 'family-swiss-alps-jungfraujoch';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'family-taj-mahal');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/family/Taj Mahal.webp', 'Taj Mahal family tour destination in Agra, Uttar Pradesh', true, 0
FROM public.packages WHERE slug = 'family-taj-mahal';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'family-tokyo-disneyland');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/family/Tokyo Disneyland.jpg', 'Tokyo Disneyland family tour destination in Tokyo, Japan', true, 0
FROM public.packages WHERE slug = 'family-tokyo-disneyland';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'family-universal-studios-japan');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/family/Universal Studios Japan.jpg', 'Universal Studios Japan family tour destination in Osaka, Japan', true, 0
FROM public.packages WHERE slug = 'family-universal-studios-japan';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'family-venice-grand-canal');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/family/Venice Grand Canal.jpg', 'Venice Grand Canal family tour destination in Venice, Italy', true, 0
FROM public.packages WHERE slug = 'family-venice-grand-canal';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'buddhism-adam-s-peak-sri-pada-sri-lanka');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/pilgrimage/Buddhism/Adam’s Peak (Sri Pada), Sri Lanka.jpg', 'Adam’s Peak (Sri Pada) buddhist pilgrimage destination in Ratnapura, Sri Lanka', true, 0
FROM public.packages WHERE slug = 'buddhism-adam-s-peak-sri-pada-sri-lanka';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'buddhism-bodh-gaya-india');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/pilgrimage/Buddhism/Bodh Gaya, India.jpg', 'Bodh Gaya buddhist pilgrimage destination in Gaya, Bihar, India', true, 0
FROM public.packages WHERE slug = 'buddhism-bodh-gaya-india';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'buddhism-borobudur-temple-indonesia');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/pilgrimage/Buddhism/Borobudur Temple, Indonesia.jpg', 'Borobudur Temple buddhist pilgrimage destination in Magelang, Indonesia', true, 0
FROM public.packages WHERE slug = 'buddhism-borobudur-temple-indonesia';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'buddhism-dambulla-cave-temple-sri-lanka');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/pilgrimage/Buddhism/Dambulla Cave Temple, Sri Lanka.jpg', 'Dambulla Cave Temple buddhist pilgrimage destination in Matale, Sri Lanka', true, 0
FROM public.packages WHERE slug = 'buddhism-dambulla-cave-temple-sri-lanka';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'buddhism-jokhang-temple-lhasa-tibet');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/pilgrimage/Buddhism/Jokhang Temple, Lhasa, Tibet.jpg', 'Jokhang Temple, Lhasa buddhist pilgrimage destination in Lhasa, Tibet', true, 0
FROM public.packages WHERE slug = 'buddhism-jokhang-temple-lhasa-tibet';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'buddhism-kumano-kodo-japan');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/pilgrimage/Buddhism/Kumano Kodo, Japan.jpg', 'Kumano Kodo buddhist pilgrimage destination in Wakayama, Japan', true, 0
FROM public.packages WHERE slug = 'buddhism-kumano-kodo-japan';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'buddhism-kushinagar-india');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/pilgrimage/Buddhism/Kushinagar, India.webp', 'Kushinagar buddhist pilgrimage destination in Kushinagar, Uttar Pradesh, India', true, 0
FROM public.packages WHERE slug = 'buddhism-kushinagar-india';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'buddhism-lumbini-nepal');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/pilgrimage/Buddhism/Lumbini, Nepal.jpg', 'Lumbini buddhist pilgrimage destination in Rupandehi, Nepal', true, 0
FROM public.packages WHERE slug = 'buddhism-lumbini-nepal';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'buddhism-mahabodhi-temple-bagan-myanmar');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/pilgrimage/Buddhism/Mahabodhi Temple, Bagan, Myanmar.jpg', 'Mahabodhi Temple, Bagan buddhist pilgrimage destination in Bagan, Myanmar', true, 0
FROM public.packages WHERE slug = 'buddhism-mahabodhi-temple-bagan-myanmar';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'buddhism-mount-kailash-tibet');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/pilgrimage/Buddhism/Mount Kailash, Tibet.webp', 'Mount Kailash buddhist pilgrimage destination in Ngari, Tibet', true, 0
FROM public.packages WHERE slug = 'buddhism-mount-kailash-tibet';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'buddhism-nalanda-india');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/pilgrimage/Buddhism/Nalanda, India.jpg', 'Nalanda buddhist pilgrimage destination in Nalanda, Bihar, India', true, 0
FROM public.packages WHERE slug = 'buddhism-nalanda-india';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'buddhism-rajgir-india');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/pilgrimage/Buddhism/Rajgir, India.jpg', 'Rajgir buddhist pilgrimage destination in Nalanda, Bihar, India', true, 0
FROM public.packages WHERE slug = 'buddhism-rajgir-india';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'buddhism-sarnath-india');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/pilgrimage/Buddhism/Sarnath, India.jpg', 'Sarnath buddhist pilgrimage destination in Varanasi, Uttar Pradesh, India', true, 0
FROM public.packages WHERE slug = 'buddhism-sarnath-india';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'buddhism-shwedagon-pagoda-myanmar');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/pilgrimage/Buddhism/Shwedagon Pagoda, Myanmar.jpg', 'Shwedagon Pagoda buddhist pilgrimage destination in Yangon, Myanmar', true, 0
FROM public.packages WHERE slug = 'buddhism-shwedagon-pagoda-myanmar';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'buddhism-tiger-s-nest-monastery-paro-taktsang-bhutan');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/pilgrimage/Buddhism/Tiger’s Nest Monastery (Paro Taktsang), Bhutan.jpg', 'Tiger’s Nest Monastery buddhist pilgrimage destination in Paro, Bhutan', true, 0
FROM public.packages WHERE slug = 'buddhism-tiger-s-nest-monastery-paro-taktsang-bhutan';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'christianity-basilica-of-our-lady-of-guadalupe-mexico');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/pilgrimage/Christianity/Basilica of Our Lady of Guadalupe, Mexico.jpg', 'Basilica of Our Lady of Guadalupe christian pilgrimage destination in Mexico City, Mexico', true, 0
FROM public.packages WHERE slug = 'christianity-basilica-of-our-lady-of-guadalupe-mexico';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'christianity-basilica-of-saint-peter-vatican-city');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/pilgrimage/Christianity/Basilica of Saint Peter, Vatican City.jpg', 'Basilica of Saint Peter, Vatican City christian pilgrimage destination in Vatican City', true, 0
FROM public.packages WHERE slug = 'christianity-basilica-of-saint-peter-vatican-city';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'christianity-bethlehem-palestine');
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
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/pilgrimage/Hinduism/Kedarnath, India.jpg', 'Kedarnath hindu pilgrimage destination in Rudraprayag, Uttarakhand, India', true, 0
FROM public.packages WHERE slug = 'hinduism-kedarnath-india';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'hinduism-mahakaleshwar-temple-ujjain-india');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/pilgrimage/Hinduism/Mahakaleshwar Temple (Ujjain), India.jpg', 'Mahakaleshwar Temple hindu pilgrimage destination in Ujjain, Madhya Pradesh, India', true, 0
FROM public.packages WHERE slug = 'hinduism-mahakaleshwar-temple-ujjain-india';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'hinduism-mount-kailash-tibet');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/pilgrimage/Hinduism/Mount Kailash, Tibet.webp', 'Mount Kailash hindu pilgrimage destination in Ngari, Tibet', true, 0
FROM public.packages WHERE slug = 'hinduism-mount-kailash-tibet';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'hinduism-rameswaram-india');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/pilgrimage/Hinduism/Rameswaram, India.jpg', 'Rameswaram hindu pilgrimage destination in Ramanathapuram, Tamil Nadu, India', true, 0
FROM public.packages WHERE slug = 'hinduism-rameswaram-india';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'hinduism-somnath-temple-india');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/pilgrimage/Hinduism/Somnath Temple, India.jpg', 'Somnath Temple hindu pilgrimage destination in Prabhas Patan, Gujarat, India', true, 0
FROM public.packages WHERE slug = 'hinduism-somnath-temple-india';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'hinduism-tirupati-balaji-temple-india');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/pilgrimage/Hinduism/Tirupati Balaji Temple, India.webp', 'Tirupati Balaji Temple hindu pilgrimage destination in Tirupati, Andhra Pradesh, India', true, 0
FROM public.packages WHERE slug = 'hinduism-tirupati-balaji-temple-india';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'hinduism-trimbakeshwar-temple-nashik-india');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/pilgrimage/Hinduism/Trimbakeshwar Temple (Nashik), India.jpg', 'Trimbakeshwar Temple hindu pilgrimage destination in Nashik, Maharashtra, India', true, 0
FROM public.packages WHERE slug = 'hinduism-trimbakeshwar-temple-nashik-india';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'hinduism-vaishno-devi-india');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/pilgrimage/Hinduism/Vaishno Devi, India.jpg', 'Vaishno Devi hindu pilgrimage destination in Katra, Jammu & Kashmir, India', true, 0
FROM public.packages WHERE slug = 'hinduism-vaishno-devi-india';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'islam-ajmer-sharif-dargah-india');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/pilgrimage/Islam/Ajmer Sharif Dargah, India.jpg', 'Ajmer Sharif Dargah islamic pilgrimage destination in Ajmer, Rajasthan, India', true, 0
FROM public.packages WHERE slug = 'islam-ajmer-sharif-dargah-india';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'islam-al-aqsa-mosque-jerusalem-israel');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/pilgrimage/Islam/Al-Aqsa Mosque, Jerusalem, Israel.jpg', 'Al Aqsa Mosque, Jerusalem islamic pilgrimage destination in Jerusalem, Israel', true, 0
FROM public.packages WHERE slug = 'islam-al-aqsa-mosque-jerusalem-israel';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'islam-al-azhar-mosque-cairo-egypt');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/pilgrimage/Islam/Al-Azhar Mosque, Cairo, Egypt.jpg', 'Al Azhar Mosque, Cairo islamic pilgrimage destination in Cairo, Egypt', true, 0
FROM public.packages WHERE slug = 'islam-al-azhar-mosque-cairo-egypt';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'islam-al-masjid-al-qiblatayn-medina-saudi-arabia');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/pilgrimage/Islam/Al-Masjid al-Qiblatayn, Medina, Saudi Arabia.jpg', 'Al Masjid al Qiblatayn, Medina islamic pilgrimage destination in Medina, Saudi Arabia', true, 0
FROM public.packages WHERE slug = 'islam-al-masjid-al-qiblatayn-medina-saudi-arabia';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'islam-data-darbar-lahore-pakistan');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/pilgrimage/Islam/Data Darbar, Lahore, Pakistan.jpg', 'Data Darbar, Lahore islamic pilgrimage destination in Lahore, Pakistan', true, 0
FROM public.packages WHERE slug = 'islam-data-darbar-lahore-pakistan';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'islam-dome-of-the-rock-jerusalem-israel');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/pilgrimage/Islam/Dome of the Rock, Jerusalem, Israel.jpg', 'Dome of the Rock, Jerusalem islamic pilgrimage destination in Jerusalem, Israel', true, 0
FROM public.packages WHERE slug = 'islam-dome-of-the-rock-jerusalem-israel';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'islam-imam-ali-shrine-najaf-iraq');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/pilgrimage/Islam/Imam Ali Shrine, Najaf, Iraq.jpg', 'Imam Ali Shrine, Najaf islamic pilgrimage destination in Najaf, Iraq', true, 0
FROM public.packages WHERE slug = 'islam-imam-ali-shrine-najaf-iraq';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'islam-imam-husayn-shrine-karbala-iraq');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/pilgrimage/Islam/Imam Husayn Shrine, Karbala, Iraq.jpg', 'Imam Husayn Shrine, Karbala islamic pilgrimage destination in Karbala, Iraq', true, 0
FROM public.packages WHERE slug = 'islam-imam-husayn-shrine-karbala-iraq';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'islam-imam-reza-shrine-mashhad-iran');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/pilgrimage/Islam/Imam Reza Shrine, Mashhad, Iran.jpg', 'Imam Reza Shrine, Mashhad islamic pilgrimage destination in Mashhad, Iran', true, 0
FROM public.packages WHERE slug = 'islam-imam-reza-shrine-mashhad-iran';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'islam-mecca-saudi-arabia');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/pilgrimage/Islam/Mecca, Saudi Arabia.jpg', 'Mecca islamic pilgrimage destination in Makkah, Saudi Arabia', true, 0
FROM public.packages WHERE slug = 'islam-mecca-saudi-arabia';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'islam-medina-saudi-arabia');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/pilgrimage/Islam/Medina, Saudi Arabia.jpg', 'Medina islamic pilgrimage destination in Saudi Arabia', true, 0
FROM public.packages WHERE slug = 'islam-medina-saudi-arabia';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'islam-old-city-jerusalem-israel');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/pilgrimage/Islam/Old City Jerusalem, Israel.jpg', 'Old City Jerusalem islamic pilgrimage destination in Jerusalem, Israel', true, 0
FROM public.packages WHERE slug = 'islam-old-city-jerusalem-israel';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'islam-quba-mosque-medina-saudi-arabia');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/pilgrimage/Islam/Quba Mosque, Medina, Saudi Arabia.jpg', 'Quba Mosque, Medina islamic pilgrimage destination in Medina, Saudi Arabia', true, 0
FROM public.packages WHERE slug = 'islam-quba-mosque-medina-saudi-arabia';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'islam-touba-senegal');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/pilgrimage/Islam/Touba, Senegal.webp', 'Touba islamic pilgrimage destination in Diourbel, Senegal', true, 0
FROM public.packages WHERE slug = 'islam-touba-senegal';
DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = 'islam-umayyad-mosque-damascus-syria');
INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', '/images/tourist-places/pilgrimage/Islam/Umayyad Mosque, Damascus, Syria.jpg', 'Umayyad Mosque, Damascus islamic pilgrimage destination in Damascus, Syria', true, 0
FROM public.packages WHERE slug = 'islam-umayyad-mosque-damascus-syria';
INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, true, false,
  true, false, false,
  false, true, false,
  'Accessibility features available on request.', true
FROM public.packages WHERE slug = 'family-alleppey-backwaters'
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;
INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, true, true,
  true, true, false,
  false, true, false,
  NULL, true
FROM public.packages WHERE slug = 'family-amber-fort'
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;
INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, false, false,
  false, false, false,
  false, false, true,
  NULL, false
FROM public.packages WHERE slug = 'family-athirappilly-waterfalls'
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;
INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, true, true,
  true, true, true,
  true, true, false,
  NULL, false
FROM public.packages WHERE slug = 'family-big-ben'
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;
INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, true, true,
  true, true, true,
  true, true, false,
  NULL, false
FROM public.packages WHERE slug = 'family-burj-khalifa'
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;
INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, false, false,
  false, false, false,
  false, false, true,
  NULL, false
FROM public.packages WHERE slug = 'family-chitrakote-waterfalls'
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;
INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, true, true,
  true, true, false,
  false, true, false,
  NULL, true
FROM public.packages WHERE slug = 'family-city-palace-udaipur'
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;
INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, true, true,
  true, true, true,
  true, true, false,
  NULL, false
FROM public.packages WHERE slug = 'family-colosseum'
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;
INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, true, false,
  true, false, false,
  false, true, false,
  'Accessibility features available on request.', true
FROM public.packages WHERE slug = 'family-dawki-river-umngot-river'
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;
INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, true, true,
  true, true, true,
  true, true, false,
  NULL, false
FROM public.packages WHERE slug = 'family-disneyland-paris'
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;
INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, true, true,
  true, true, true,
  true, true, false,
  NULL, false
FROM public.packages WHERE slug = 'family-dubai-miracle-garden'
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;
INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, true, true,
  true, true, true,
  true, true, false,
  NULL, false
FROM public.packages WHERE slug = 'family-dudhsagar-falls'
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;
INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, true, true,
  true, true, true,
  true, true, false,
  NULL, false
FROM public.packages WHERE slug = 'family-eiffel-tower'
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;
INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, true, true,
  true, true, true,
  true, true, false,
  NULL, false
FROM public.packages WHERE slug = 'family-gardens-by-the-bay'
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;
INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, true, true,
  true, true, true,
  true, true, false,
  NULL, false
FROM public.packages WHERE slug = 'family-glacier-3000'
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;
INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, true, true,
  true, true, true,
  true, true, false,
  NULL, false
FROM public.packages WHERE slug = 'family-gol-gumbaz'
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;
INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, true, true,
  true, true, false,
  false, true, false,
  NULL, true
FROM public.packages WHERE slug = 'family-hampi-monuments'
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;
INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, true, true,
  true, true, true,
  true, true, false,
  NULL, false
FROM public.packages WHERE slug = 'family-hawa-mahal'
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;
INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, true, true,
  true, true, true,
  true, true, false,
  NULL, false
FROM public.packages WHERE slug = 'family-leaning-tower-of-pisa'
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;
INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, true, true,
  true, true, true,
  true, true, false,
  NULL, false
FROM public.packages WHERE slug = 'family-living-root-bridges'
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;
INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, true, true,
  true, true, true,
  true, true, false,
  NULL, false
FROM public.packages WHERE slug = 'family-london-eye'
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;
INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, true, true,
  true, true, true,
  true, true, false,
  NULL, false
FROM public.packages WHERE slug = 'family-marina-bay-sands-skypark'
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;
INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, true, true,
  true, true, false,
  false, true, false,
  NULL, true
FROM public.packages WHERE slug = 'family-mehrangarh-fort'
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;
INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, true, true,
  true, true, true,
  true, true, false,
  NULL, false
FROM public.packages WHERE slug = 'family-mount-fuji'
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;
INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, true, true,
  true, true, true,
  true, true, false,
  NULL, false
FROM public.packages WHERE slug = 'family-mount-titlis'
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;
INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, true, true,
  true, true, true,
  true, true, false,
  NULL, false
FROM public.packages WHERE slug = 'family-munnar-tea-gardens'
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;
INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, true, true,
  true, true, true,
  true, true, false,
  NULL, false
FROM public.packages WHERE slug = 'family-museum-of-the-future'
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;
INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, true, true,
  true, true, false,
  false, true, false,
  NULL, true
FROM public.packages WHERE slug = 'family-mysore-palace'
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;
INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, false, false,
  false, false, false,
  false, false, true,
  NULL, false
FROM public.packages WHERE slug = 'family-niagara-falls'
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;
INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, false, false,
  false, false, false,
  false, false, true,
  NULL, false
FROM public.packages WHERE slug = 'family-nubra-valley'
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;
INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, true, true,
  true, true, true,
  true, true, false,
  NULL, false
FROM public.packages WHERE slug = 'family-palm-jumeirah'
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;
INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, false, false,
  false, false, false,
  false, false, true,
  NULL, false
FROM public.packages WHERE slug = 'family-pangong-lake'
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;
INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, true, true,
  true, true, true,
  true, true, false,
  NULL, false
FROM public.packages WHERE slug = 'family-radhanagar-beach'
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;
INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, true, true,
  true, true, true,
  true, true, false,
  NULL, false
FROM public.packages WHERE slug = 'family-rohtang-pass'
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;
INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, true, true,
  true, true, true,
  true, true, false,
  NULL, false
FROM public.packages WHERE slug = 'family-sentosa-island'
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;
INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, true, true,
  true, true, true,
  true, true, false,
  NULL, false
FROM public.packages WHERE slug = 'family-swiss-alps-jungfraujoch'
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;
INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, true, true,
  true, true, true,
  true, true, false,
  NULL, false
FROM public.packages WHERE slug = 'family-taj-mahal'
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;
INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, true, true,
  true, true, true,
  true, true, false,
  NULL, false
FROM public.packages WHERE slug = 'family-tokyo-disneyland'
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;
INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, true, true,
  true, true, true,
  true, true, false,
  NULL, false
FROM public.packages WHERE slug = 'family-universal-studios-japan'
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;
INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, true, true,
  true, true, true,
  true, true, false,
  NULL, false
FROM public.packages WHERE slug = 'family-venice-grand-canal'
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;
INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, true, true,
  true, true, true,
  true, true, false,
  NULL, false
FROM public.packages WHERE slug = 'buddhism-adam-s-peak-sri-pada-sri-lanka'
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;
INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, true, true,
  true, true, true,
  true, true, false,
  NULL, false
FROM public.packages WHERE slug = 'buddhism-bodh-gaya-india'
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;
INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, true, true,
  true, true, true,
  true, true, false,
  NULL, false
FROM public.packages WHERE slug = 'buddhism-borobudur-temple-indonesia'
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;
INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, true, true,
  true, true, true,
  true, true, false,
  NULL, false
FROM public.packages WHERE slug = 'buddhism-dambulla-cave-temple-sri-lanka'
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;
INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, true, true,
  true, true, true,
  true, true, false,
  NULL, false
FROM public.packages WHERE slug = 'buddhism-jokhang-temple-lhasa-tibet'
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;
INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, true, true,
  true, true, true,
  true, true, false,
  NULL, false
FROM public.packages WHERE slug = 'buddhism-kumano-kodo-japan'
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;
INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, true, true,
  true, true, true,
  true, true, false,
  NULL, false
FROM public.packages WHERE slug = 'buddhism-kushinagar-india'
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;
INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, true, true,
  true, true, true,
  true, true, false,
  NULL, false
FROM public.packages WHERE slug = 'buddhism-lumbini-nepal'
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;
INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, true, true,
  true, true, true,
  true, true, false,
  NULL, false
FROM public.packages WHERE slug = 'buddhism-mahabodhi-temple-bagan-myanmar'
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;
INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, true, true,
  true, true, false,
  false, true, false,
  NULL, true
FROM public.packages WHERE slug = 'buddhism-mount-kailash-tibet'
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;
INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, true, true,
  true, true, true,
  true, true, false,
  NULL, false
FROM public.packages WHERE slug = 'buddhism-nalanda-india'
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;
INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, true, true,
  true, true, true,
  true, true, false,
  NULL, false
FROM public.packages WHERE slug = 'buddhism-rajgir-india'
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;
INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, true, true,
  true, true, true,
  true, true, false,
  NULL, false
FROM public.packages WHERE slug = 'buddhism-sarnath-india'
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;
INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, true, true,
  true, true, true,
  true, true, false,
  NULL, false
FROM public.packages WHERE slug = 'buddhism-shwedagon-pagoda-myanmar'
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;
INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, true, true,
  true, true, true,
  true, true, false,
  NULL, false
FROM public.packages WHERE slug = 'buddhism-tiger-s-nest-monastery-paro-taktsang-bhutan'
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;
INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, true, true,
  true, true, true,
  true, true, false,
  NULL, false
FROM public.packages WHERE slug = 'christianity-basilica-of-our-lady-of-guadalupe-mexico'
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;
INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, true, true,
  true, true, true,
  true, true, false,
  NULL, false
FROM public.packages WHERE slug = 'christianity-basilica-of-saint-peter-vatican-city'
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;
INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, true, true,
  true, true, true,
  true, true, false,
  NULL, false
FROM public.packages WHERE slug = 'christianity-bethlehem-palestine'
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;
INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, true, true,
  true, true, true,
  true, true, false,
  NULL, false
FROM public.packages WHERE slug = 'christianity-camino-de-santiago-spain'
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;
INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, true, true,
  true, true, true,
  true, true, false,
  NULL, false
FROM public.packages WHERE slug = 'christianity-canterbury-cathedral-england'
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;
INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, true, true,
  true, true, true,
  true, true, false,
  NULL, false
FROM public.packages WHERE slug = 'christianity-church-of-the-holy-sepulchre-jerusalem-israel'
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;
INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, true, true,
  true, true, true,
  true, true, false,
  NULL, false
FROM public.packages WHERE slug = 'christianity-el-santuario-de-chimayo-new-mexico-usa'
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;
INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, true, true,
  true, true, true,
  true, true, false,
  NULL, false
FROM public.packages WHERE slug = 'christianity-f-tima-portugal'
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;
INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, true, true,
  true, true, true,
  true, true, false,
  NULL, false
FROM public.packages WHERE slug = 'christianity-lalibela-ethiopia'
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;
INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, true, true,
  true, true, true,
  true, true, false,
  NULL, false
FROM public.packages WHERE slug = 'christianity-mount-athos-greece'
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;
INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, true, true,
  true, true, true,
  true, true, false,
  NULL, false
FROM public.packages WHERE slug = 'christianity-old-city-jerusalem-israel'
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;
INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, true, true,
  true, true, true,
  true, true, false,
  NULL, false
FROM public.packages WHERE slug = 'christianity-sanctuary-of-our-lady-of-lourdes-france'
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;
INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, true, true,
  true, true, true,
  true, true, false,
  NULL, false
FROM public.packages WHERE slug = 'christianity-santiago-atitl-n-guatemala'
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;
INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, true, true,
  true, true, true,
  true, true, false,
  NULL, false
FROM public.packages WHERE slug = 'christianity-santu-rio-de-nossa-senhora-aparecida-brazil'
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;
INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, true, true,
  true, true, true,
  true, true, false,
  NULL, false
FROM public.packages WHERE slug = 'christianity-vatican-city-italy'
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;
INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, true, true,
  true, true, true,
  true, true, false,
  NULL, false
FROM public.packages WHERE slug = 'hinduism-adam-s-peak-sri-pada-sri-lanka'
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;
INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, true, true,
  true, true, false,
  false, true, true,
  NULL, true
FROM public.packages WHERE slug = 'hinduism-badrinath-india'
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;
INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, true, true,
  true, true, true,
  true, true, false,
  NULL, false
FROM public.packages WHERE slug = 'hinduism-dwarkadhish-temple-dwarka-india'
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;
INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, true, true,
  true, true, true,
  true, true, false,
  NULL, false
FROM public.packages WHERE slug = 'hinduism-golden-temple-harmandir-sahib-amritsar-india'
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;
INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, false, false,
  false, false, false,
  false, false, true,
  NULL, false
FROM public.packages WHERE slug = 'hinduism-haridwar-rishikesh-india'
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;
INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, true, true,
  true, true, true,
  true, true, false,
  NULL, false
FROM public.packages WHERE slug = 'hinduism-jagannath-temple-puri-india'
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;
INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, true, true,
  true, true, true,
  true, true, false,
  NULL, false
FROM public.packages WHERE slug = 'hinduism-kashi-vishwanath-varanasi-india'
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;
INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, false, false,
  false, false, false,
  false, false, true,
  NULL, false
FROM public.packages WHERE slug = 'hinduism-kedarnath-india'
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;
INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, true, true,
  true, true, true,
  true, true, false,
  NULL, false
FROM public.packages WHERE slug = 'hinduism-mahakaleshwar-temple-ujjain-india'
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;
INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, true, true,
  true, true, false,
  false, true, false,
  NULL, true
FROM public.packages WHERE slug = 'hinduism-mount-kailash-tibet'
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;
INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, true, true,
  true, true, true,
  true, true, false,
  NULL, false
FROM public.packages WHERE slug = 'hinduism-rameswaram-india'
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;
INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, true, true,
  true, true, true,
  true, true, false,
  NULL, false
FROM public.packages WHERE slug = 'hinduism-somnath-temple-india'
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;
INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, true, true,
  true, true, true,
  true, true, false,
  NULL, false
FROM public.packages WHERE slug = 'hinduism-tirupati-balaji-temple-india'
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;
INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, true, true,
  true, true, true,
  true, true, false,
  NULL, false
FROM public.packages WHERE slug = 'hinduism-trimbakeshwar-temple-nashik-india'
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;
INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, false, false,
  false, false, false,
  false, false, true,
  NULL, false
FROM public.packages WHERE slug = 'hinduism-vaishno-devi-india'
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;
INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, true, true,
  true, true, true,
  true, true, false,
  NULL, false
FROM public.packages WHERE slug = 'islam-ajmer-sharif-dargah-india'
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;
INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, true, true,
  true, true, true,
  true, true, false,
  NULL, false
FROM public.packages WHERE slug = 'islam-al-aqsa-mosque-jerusalem-israel'
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;
INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, true, true,
  true, true, true,
  true, true, false,
  NULL, false
FROM public.packages WHERE slug = 'islam-al-azhar-mosque-cairo-egypt'
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;
INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, true, true,
  true, true, true,
  true, true, false,
  NULL, false
FROM public.packages WHERE slug = 'islam-al-masjid-al-qiblatayn-medina-saudi-arabia'
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;
INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, true, true,
  true, true, true,
  true, true, false,
  NULL, false
FROM public.packages WHERE slug = 'islam-data-darbar-lahore-pakistan'
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;
INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, true, true,
  true, true, true,
  true, true, false,
  NULL, false
FROM public.packages WHERE slug = 'islam-dome-of-the-rock-jerusalem-israel'
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;
INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, true, true,
  true, true, true,
  true, true, false,
  NULL, false
FROM public.packages WHERE slug = 'islam-imam-ali-shrine-najaf-iraq'
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;
INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, true, true,
  true, true, true,
  true, true, false,
  NULL, false
FROM public.packages WHERE slug = 'islam-imam-husayn-shrine-karbala-iraq'
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;
INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, true, true,
  true, true, true,
  true, true, false,
  NULL, false
FROM public.packages WHERE slug = 'islam-imam-reza-shrine-mashhad-iran'
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;
INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, true, true,
  true, true, true,
  true, true, false,
  NULL, false
FROM public.packages WHERE slug = 'islam-mecca-saudi-arabia'
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;
INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, true, true,
  true, true, true,
  true, true, false,
  NULL, false
FROM public.packages WHERE slug = 'islam-medina-saudi-arabia'
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;
INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, true, true,
  true, true, true,
  true, true, false,
  NULL, false
FROM public.packages WHERE slug = 'islam-old-city-jerusalem-israel'
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;
INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, true, true,
  true, true, true,
  true, true, false,
  NULL, false
FROM public.packages WHERE slug = 'islam-quba-mosque-medina-saudi-arabia'
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;
INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, true, true,
  true, true, true,
  true, true, false,
  NULL, false
FROM public.packages WHERE slug = 'islam-touba-senegal'
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;
INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, true, true,
  true, true, true,
  true, true, false,
  NULL, false
FROM public.packages WHERE slug = 'islam-umayyad-mosque-damascus-syria'
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;
DELETE FROM public.faqs WHERE package_id IS NULL;
INSERT INTO public.faqs (package_id, category, question, answer, display_order, is_active)
VALUES (NULL, 'general', 'How do you ensure safety and comfort for senior citizens?', 'Our senior citizen packages feature hotels located close to the temples, low walking distances, battery-operated carts/e-rickshaws where allowed, pre-booked VIP Darshan access to avoid long queues, and an experienced coordinator on-ground. Additionally, all transport vehicles are equipped with first-aid kits and we have emergency contacts with local doctors at every destination.', 0, true);
INSERT INTO public.faqs (package_id, category, question, answer, display_order, is_active)
VALUES (NULL, 'general', 'Are the meals provided pure vegetarian?', 'Yes, all meals provided during our tours are strictly pure vegetarian (Satvik) prepared without onion and garlic on request. We carefully select hygienically run, verified restaurants and ashrams to cater to our yatris.', 1, true);
INSERT INTO public.faqs (package_id, category, question, answer, display_order, is_active)
VALUES (NULL, 'general', 'Do you arrange wheelchair assistance at the temples?', 'Absolutely. Wheelchair assistance can be pre-arranged at the time of booking. Our dedicated coordinators will ensure that a helper and a wheelchair are ready at the temple entry drop-off points.', 2, true);
INSERT INTO public.faqs (package_id, category, question, answer, display_order, is_active)
VALUES (NULL, 'general', 'Can we customize a package for a private family group?', 'Yes, you can request a custom plan. Simply use our AI Trip Planner or click ''Request Custom Plan'' to provide details about your group size, budget, specific mobility needs, and destination preferences, and our travel experts will curate a customized itinerary for you.', 3, true);
INSERT INTO public.faqs (package_id, category, question, answer, display_order, is_active)
VALUES (NULL, 'general', 'Is there any medical support available during the trip?', 'Our guides are first-aid certified, and we maintain an active database of local doctors and hospitals near our routing points. In case of any medical emergencies, we quickly facilitate clinical consultations.', 4, true);
DELETE FROM public.testimonials;
INSERT INTO public.testimonials (traveller_name, traveller_age, traveller_location, quote, rating, avatar_url, trip_name, is_featured, is_active)
VALUES ('Ramesh & Savitri Iyer', 68, 'Chennai', 'We were very anxious about traveling to Rameswaram because of my arthritis. OneJourney took care of everything—pre-arranged wheelchairs, zero walking in queues, and hotel just steps from the temple. A blessed experience!', 5, '/images/avatar_female_senior.png', 'Divine South Yatra', true, true);
INSERT INTO public.testimonials (traveller_name, traveller_age, traveller_location, quote, rating, avatar_url, trip_name, is_featured, is_active)
VALUES ('Prof. Alok Sharma', 72, 'New Delhi', 'The VIP Darshan in Kashi Vishwanath was organized seamlessly. As senior citizens, avoiding the chaotic queues made our pilgrimage peaceful and fully spiritual. The coordinator was exceptionally respectful and caring.', 5, '/images/avatar_male_senior.png', 'Kashi Serenity Tour', true, true);
INSERT INTO public.testimonials (traveller_name, traveller_age, traveller_location, quote, rating, avatar_url, trip_name, is_featured, is_active)
VALUES ('Meenakshi Kulkarni', 62, 'Mumbai', 'Our family group package to Somnath and Dwarka was excellently managed. Pure vegetarian food at all stops, comfortable AC transport with medical kits on-board. Recommended for anyone travelling with elders.', 5, '/images/avatar_female_young.png', 'Gujarat Jyotirlinga Yatra', true, true);
END;
$$;
SELECT public.seed_part3();