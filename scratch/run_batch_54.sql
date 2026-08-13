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
INSERT INTO public.testimonials (traveller_name, traveller_age, traveller_location, quote, rating, avatar_url, trip_name, is_featured, is_active)
VALUES ('Ramesh & Savitri Iyer', 68, 'Chennai', 'We were very anxious about traveling to Rameswaram because of my arthritis. OneJourney took care of everything—pre-arranged wheelchairs, zero walking in queues, and hotel just steps from the temple. A blessed experience!', 5, '/images/avatar_female_senior.png', 'Divine South Yatra', true, true);
INSERT INTO public.testimonials (traveller_name, traveller_age, traveller_location, quote, rating, avatar_url, trip_name, is_featured, is_active)
VALUES ('Prof. Alok Sharma', 72, 'New Delhi', 'The VIP Darshan in Kashi Vishwanath was organized seamlessly. As senior citizens, avoiding the chaotic queues made our pilgrimage peaceful and fully spiritual. The coordinator was exceptionally respectful and caring.', 5, '/images/avatar_male_senior.png', 'Kashi Serenity Tour', true, true);
INSERT INTO public.testimonials (traveller_name, traveller_age, traveller_location, quote, rating, avatar_url, trip_name, is_featured, is_active)
VALUES ('Meenakshi Kulkarni', 62, 'Mumbai', 'Our family group package to Somnath and Dwarka was excellently managed. Pure vegetarian food at all stops, comfortable AC transport with medical kits on-board. Recommended for anyone travelling with elders.', 5, '/images/avatar_female_young.png', 'Gujarat Jyotirlinga Yatra', true, true);
END $$;