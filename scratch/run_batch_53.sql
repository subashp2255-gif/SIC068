DO $$
BEGIN
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
END $$;