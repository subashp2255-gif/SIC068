import fs from 'fs';
import path from 'path';
import { mockPackages } from '../data/packages';
import { destinationsData } from '../data/destinations';
import { mockFAQs } from '../data/faq';
import { mockTestimonials } from '../data/testimonials';

function sqlEscape(val: any): string {
  if (val === null || val === undefined) return 'NULL';
  if (typeof val === 'number') return val.toString();
  if (typeof val === 'boolean') return val ? 'true' : 'false';
  if (Array.isArray(val)) {
    if (val.length === 0) return "'{}'";
    const escapedElems = val.map(e => `"${String(e).replace(/"/g, '\\"')}"`);
    return `'${escapedElems.join(',')}'`;
  }
  const str = String(val).replace(/'/g, "''");
  return `'${str}'`;
}

function slugify(text: string): string {
  return text
    .toLowerCase()
    .replace(/[&]/g, 'and')
    .replace(/[^a-z0-9]+/g, '-')
    .replace(/^-+|-+$/g, '');
}

function parseLocation(location?: string) {
  if (!location) return { city: null, state: null };
  const parts = location.split(',').map(s => s.trim());
  if (parts.length >= 2) {
    return { city: parts[0], state: parts.slice(1).join(', ') };
  }
  return { city: location, state: null };
}

let sql = `-- Full Seed Data Generated for OneJourney Supabase DB\n\n`;

// 1. Destinations
sql += `-- 1. Destinations (${destinationsData.length})\n`;
for (const dest of destinationsData) {
  const { city, state } = parseLocation(dest.location);
  const slug = dest.id || slugify(dest.name);
  const country = dest.location?.includes('United Kingdom') || dest.location?.includes('Italy') || dest.location?.includes('Japan') 
    ? dest.location.split(',').pop()?.trim() || 'India' 
    : 'India';

  sql += `INSERT INTO public.destinations (name, slug, city, state, country, description, image_url, alt_text, main_category, faith_category, category_badge, is_active)
VALUES (${sqlEscape(dest.name)}, ${sqlEscape(slug)}, ${sqlEscape(city)}, ${sqlEscape(state)}, ${sqlEscape(country)}, ${sqlEscape(dest.description)}, ${sqlEscape(dest.image)}, ${sqlEscape(dest.altText)}, ${sqlEscape(dest.mainCategory)}, ${sqlEscape(dest.faithCategory)}, ${sqlEscape(dest.categoryBadge)}, true)
ON CONFLICT (slug) DO UPDATE SET
  name = EXCLUDED.name,
  city = EXCLUDED.city,
  state = EXCLUDED.state,
  country = EXCLUDED.country,
  description = EXCLUDED.description,
  image_url = EXCLUDED.image_url,
  alt_text = EXCLUDED.alt_text,
  main_category = EXCLUDED.main_category,
  faith_category = EXCLUDED.faith_category,
  category_badge = EXCLUDED.category_badge;\n`;
}

// 2. Categories
sql += `\n-- 2. Categories\n`;
const categories = [
  { name: 'Family', slug: 'family', description: 'Family-friendly tours and experiences', display_order: 1 },
  { name: 'Pilgrimage', slug: 'pilgrimage', description: 'Sacred pilgrimage tours', display_order: 2 },
  { name: 'Hinduism', slug: 'hinduism', description: 'Hindu pilgrimage destinations', display_order: 3 },
  { name: 'Buddhism', slug: 'buddhism', description: 'Buddhist heritage trails', display_order: 4 },
  { name: 'Christianity', slug: 'christianity', description: 'Christian pilgrimage sites', display_order: 5 },
  { name: 'Islam', slug: 'islam', description: 'Islamic heritage and pilgrimage', display_order: 6 },
];
for (const cat of categories) {
  sql += `INSERT INTO public.categories (name, slug, description, display_order, is_active)
VALUES (${sqlEscape(cat.name)}, ${sqlEscape(cat.slug)}, ${sqlEscape(cat.description)}, ${cat.display_order}, true)
ON CONFLICT (slug) DO UPDATE SET name = EXCLUDED.name, description = EXCLUDED.description;\n`;
}

// 3. Packages
sql += `\n-- 3. Packages (${mockPackages.length})\n`;
for (const pkg of mockPackages) {
  const slug = pkg.id;
  sql += `INSERT INTO public.packages (
  slug, name, destination_name, description, location, region, category, sub_category,
  duration_days, duration_nights, duration_label, base_price, best_season, pace,
  tags, traveller_types, route, destinations_text, image, alt_text, category_label,
  traveller_type, senior_friendly, child_friendly, wheelchair_access, veg_meals,
  accessibility_status, rating, review_count, seats_left, recent_bookings, verified, cancellation_summary, is_active
) VALUES (
  ${sqlEscape(slug)}, ${sqlEscape(pkg.title)}, ${sqlEscape(pkg.destinationName)}, ${sqlEscape(pkg.description)},
  ${sqlEscape(pkg.location)}, ${sqlEscape(pkg.region)}, ${sqlEscape(pkg.category || 'Family')}, ${sqlEscape(pkg.subCategory)},
  ${pkg.durationDays || 4}, ${pkg.durationDays ? pkg.durationDays - 1 : 3}, ${sqlEscape(pkg.durationLabel || pkg.duration)},
  ${pkg.price || 'NULL'}, ${sqlEscape(pkg.bestSeason)}, ${sqlEscape(pkg.pace || 'Relaxed')},
  ARRAY[${(pkg.tags || []).map(t => sqlEscape(t)).join(',')}],
  ARRAY[${(pkg.travellerTypes || []).map(t => sqlEscape(t)).join(',')}],
  ARRAY[${(pkg.route || []).map(r => sqlEscape(r)).join(',')}],
  ${sqlEscape(pkg.destinations)}, ${sqlEscape(pkg.image)}, ${sqlEscape(pkg.altText)}, ${sqlEscape(pkg.categoryLabel)},
  ${sqlEscape(pkg.travellerType)}, ${pkg.seniorFriendly ?? true}, ${pkg.childFriendly ?? true}, ${pkg.wheelchairAccess ?? false},
  ${pkg.vegMeals ?? true}, ${sqlEscape(pkg.accessibilityStatus || 'Accessibility on Request')}, ${pkg.rating || 4.8},
  ${pkg.reviewCount || 12}, ${pkg.seatsLeft || 6}, ${pkg.recentBookings || 8}, ${pkg.verified ?? true},
  ${sqlEscape(pkg.cancellationSummary || 'Flexible 48h prior cancellation available.')}, true
) ON CONFLICT (slug) DO UPDATE SET
  name = EXCLUDED.name,
  description = EXCLUDED.description,
  location = EXCLUDED.location,
  base_price = EXCLUDED.base_price,
  rating = EXCLUDED.rating,
  is_active = true;\n`;
}

// 4. Package Categories Junction
sql += `\n-- 4. Package Categories Junction\n`;
for (const pkg of mockPackages) {
  const catSlugs: string[] = [];
  if (pkg.category) catSlugs.push(slugify(pkg.category));
  if (pkg.subCategory) catSlugs.push(slugify(pkg.subCategory));

  for (let i = 0; i < catSlugs.length; i++) {
    const catSlug = catSlugs[i];
    sql += `INSERT INTO public.package_categories (package_id, category_id, display_order)
SELECT p.id, c.id, ${i}
FROM public.packages p, public.categories c
WHERE p.slug = ${sqlEscape(pkg.id)} AND c.slug = ${sqlEscape(catSlug)}
ON CONFLICT (package_id, category_id) DO NOTHING;\n`;
  }
}

// 5. Itinerary Days
sql += `\n-- 5. Itinerary Days\n`;
for (const pkg of mockPackages) {
  if (!pkg.itinerary) continue;
  for (const day of pkg.itinerary) {
    sql += `INSERT INTO public.itinerary_days (
  package_id, day_number, title, location, overview,
  morning_title, morning_description, afternoon_title, afternoon_description, evening_title, evening_description,
  important_timings, meals, transport, walking_level, stay, weather, dress_code, packing_suggestions,
  accessibility_note, visitor_note, travel_duration
) SELECT
  p.id, ${day.day}, ${sqlEscape(day.title)}, ${sqlEscape(day.location)}, ${sqlEscape(day.overview)},
  ${sqlEscape(day.schedule?.morning?.title)}, ${sqlEscape(day.schedule?.morning?.description)},
  ${sqlEscape(day.schedule?.afternoon?.title)}, ${sqlEscape(day.schedule?.afternoon?.description)},
  ${sqlEscape(day.schedule?.evening?.title)}, ${sqlEscape(day.schedule?.evening?.description)},
  ${sqlEscape(day.details?.importantTimings)}, ${sqlEscape(day.details?.meals)}, ${sqlEscape(day.details?.transport)},
  ${sqlEscape(day.details?.walkingLevel)}, ${sqlEscape(day.details?.stay)}, ${sqlEscape(day.details?.weather)},
  ${sqlEscape(day.details?.dressCode)}, ${sqlEscape(day.details?.packingSuggestions)},
  ${sqlEscape(day.details?.accessibility)}, ${sqlEscape(day.details?.visitorNote)}, ${sqlEscape(day.details?.travelDuration)}
FROM public.packages p WHERE p.slug = ${sqlEscape(pkg.id)}
ON CONFLICT (package_id, day_number) DO UPDATE SET
  title = EXCLUDED.title,
  overview = EXCLUDED.overview,
  morning_description = EXCLUDED.morning_description;\n`;
  }
}

// 6. Package Features
sql += `\n-- 6. Package Features\n`;
for (const pkg of mockPackages) {
  sql += `DELETE FROM public.package_features WHERE package_id = (SELECT id FROM public.packages WHERE slug = ${sqlEscape(pkg.id)});\n`;

  if (pkg.inclusions) {
    const inclusionLabels: Record<string, string> = {
      hotel: 'Hotel Stay', meals: 'Meals Included', transit: 'AC Transit',
      guide: 'Expert Guide', entryPasses: 'Entry Passes', medicalSupport: 'Medical Support',
      localExperience: 'Local Experience'
    };
    let order = 0;
    for (const [key, label] of Object.entries(inclusionLabels)) {
      if ((pkg.inclusions as any)[key]) {
        sql += `INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'inclusion', ${sqlEscape(label)}, ${order++} FROM public.packages WHERE slug = ${sqlEscape(pkg.id)};\n`;
      }
    }
  }

  if (pkg.highlights) {
    pkg.highlights.forEach((h, i) => {
      sql += `INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'highlight', ${sqlEscape(h)}, ${i} FROM public.packages WHERE slug = ${sqlEscape(pkg.id)};\n`;
    });
  }

  if (pkg.tips) {
    pkg.tips.forEach((t, i) => {
      sql += `INSERT INTO public.package_features (package_id, feature_type, title, display_order)
SELECT id, 'tip', ${sqlEscape(t)}, ${i} FROM public.packages WHERE slug = ${sqlEscape(pkg.id)};\n`;
    });
  }
}

// 7. Package Media
sql += `\n-- 7. Package Media\n`;
for (const pkg of mockPackages) {
  if (!pkg.image) continue;
  sql += `DELETE FROM public.package_media WHERE package_id = (SELECT id FROM public.packages WHERE slug = ${sqlEscape(pkg.id)});\n`;
  sql += `INSERT INTO public.package_media (package_id, media_type, url, alt_text, is_cover, display_order)
SELECT id, 'image', ${sqlEscape(pkg.image)}, ${sqlEscape(pkg.altText || `${pkg.title} image`)}, true, 0
FROM public.packages WHERE slug = ${sqlEscape(pkg.id)};\n`;
}

// 8. Package Accessibility
sql += `\n-- 8. Package Accessibility\n`;
for (const pkg of mockPackages) {
  const isWheelchairAccessible = pkg.accessibilityStatus === 'Wheelchair Accessible';
  const isPartial = pkg.accessibilityStatus === 'Partial Accessibility';
  const isOnRequest = pkg.accessibilityStatus === 'Accessibility on Request';

  sql += `INSERT INTO public.package_accessibility (
  package_id, wheelchair_available, battery_cart_available, reduced_walking_option,
  lift_accessible_stay, ground_floor_room, accessible_bathroom, darshan_assistance,
  medical_facility_nearby, care_notes, requires_confirmation
) SELECT
  id, ${pkg.wheelchairAccess || isWheelchairAccessible}, ${isWheelchairAccessible || isPartial},
  ${pkg.seniorFriendly ?? true}, ${isWheelchairAccessible || isPartial}, ${isWheelchairAccessible},
  ${isWheelchairAccessible}, ${pkg.seniorFriendly ?? true}, ${pkg.inclusions?.medicalSupport ?? false},
  ${isOnRequest ? "'Accessibility features available on request.'" : 'NULL'}, ${isOnRequest || isPartial}
FROM public.packages WHERE slug = ${sqlEscape(pkg.id)}
ON CONFLICT (package_id) DO UPDATE SET wheelchair_available = EXCLUDED.wheelchair_available;\n`;
}

// 9. FAQs
sql += `\n-- 9. FAQs (${mockFAQs.length})\n`;
sql += `DELETE FROM public.faqs WHERE package_id IS NULL;\n`;
mockFAQs.forEach((faq, i) => {
  sql += `INSERT INTO public.faqs (package_id, category, question, answer, display_order, is_active)
VALUES (NULL, 'general', ${sqlEscape(faq.question)}, ${sqlEscape(faq.answer)}, ${i}, true);\n`;
});

// 10. Testimonials
sql += `\n-- 10. Testimonials (${mockTestimonials.length})\n`;
sql += `DELETE FROM public.testimonials;\n`;
mockTestimonials.forEach((t) => {
  sql += `INSERT INTO public.testimonials (traveller_name, traveller_age, traveller_location, quote, rating, avatar_url, trip_name, is_featured, is_active)
VALUES (${sqlEscape(t.name)}, ${t.age || 'NULL'}, ${sqlEscape(t.location)}, ${sqlEscape(t.quote)}, ${t.rating || 5}, ${sqlEscape(t.avatarUrl)}, ${sqlEscape(t.tripName)}, true, true);\n`;
});

fs.writeFileSync(path.resolve('scratch/seed_data.sql'), sql, 'utf8');
console.log('Successfully generated full scratch/seed_data.sql');
