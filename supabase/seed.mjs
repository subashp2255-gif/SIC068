/**
 * Seed script: Imports local TypeScript data into Supabase.
 * 
 * Usage: node supabase/seed.mjs
 * 
 * Reads data/packages.ts, data/destinations.ts, data/faq.ts, data/testimonials.ts
 * and inserts into the Supabase database using the anon key (bypasses RLS via service role).
 */

import { createClient } from '@supabase/supabase-js';
import fs from 'fs';
import path from 'path';
import { fileURLToPath } from 'url';

const __dirname = path.dirname(fileURLToPath(import.meta.url));
const ROOT = path.resolve(__dirname, '..');

// Read Supabase credentials from .env.local
function loadEnv() {
  const envPath = path.join(ROOT, '.env.local');
  const envContent = fs.readFileSync(envPath, 'utf8');
  const vars = {};
  for (const line of envContent.split('\n')) {
    const trimmed = line.trim();
    if (!trimmed || trimmed.startsWith('#')) continue;
    const eqIdx = trimmed.indexOf('=');
    if (eqIdx > 0) {
      vars[trimmed.slice(0, eqIdx).trim()] = trimmed.slice(eqIdx + 1).trim();
    }
  }
  return vars;
}

const env = loadEnv();
const SUPABASE_URL = env.NEXT_PUBLIC_SUPABASE_URL;
const SUPABASE_KEY = env.NEXT_PUBLIC_SUPABASE_ANON_KEY;

if (!SUPABASE_URL || !SUPABASE_KEY) {
  console.error('Missing Supabase credentials in .env.local');
  process.exit(1);
}

const supabase = createClient(SUPABASE_URL, SUPABASE_KEY, {
  auth: { autoRefreshToken: false, persistSession: false }
});

// ============================================================
// Helpers
// ============================================================
function slugify(text) {
  return text
    .toLowerCase()
    .replace(/[&]/g, 'and')
    .replace(/[^a-z0-9]+/g, '-')
    .replace(/^-+|-+$/g, '');
}

function extractTSArray(fileContent, exportName) {
  // Remove the export and interface definitions, evaluate the array literal
  // We'll use a regex-based approach to extract the JSON-compatible array
  const startIdx = fileContent.indexOf('[');
  const endIdx = fileContent.lastIndexOf(']');
  if (startIdx === -1 || endIdx === -1) return [];
  
  let arrayStr = fileContent.slice(startIdx, endIdx + 1);
  
  // Fix TS-specific syntax for JSON parsing
  // Replace single-line trailing commas before ] or }
  arrayStr = arrayStr.replace(/,(\s*[}\]])/g, '$1');
  // Remove TS type annotations (shouldn't be inside array values)
  
  try {
    return JSON.parse(arrayStr);
  } catch (e) {
    console.error(`Failed to parse ${exportName}:`, e.message);
    return [];
  }
}

function parseLocation(location) {
  if (!location) return { city: null, state: null };
  const parts = location.split(',').map(s => s.trim());
  if (parts.length >= 2) {
    return { city: parts[0], state: parts.slice(1).join(', ') };
  }
  return { city: location, state: null };
}

// ============================================================
// Load local data files
// ============================================================
function loadLocalData() {
  const packagesRaw = fs.readFileSync(path.join(ROOT, 'data', 'packages.ts'), 'utf8');
  const destinationsRaw = fs.readFileSync(path.join(ROOT, 'data', 'destinations.ts'), 'utf8');
  const faqRaw = fs.readFileSync(path.join(ROOT, 'data', 'faq.ts'), 'utf8');
  const testimonialsRaw = fs.readFileSync(path.join(ROOT, 'data', 'testimonials.ts'), 'utf8');

  return {
    packages: extractTSArray(packagesRaw, 'mockPackages'),
    destinations: extractTSArray(destinationsRaw, 'destinationsData'),
    faqs: extractTSArray(faqRaw, 'mockFAQs'),
    testimonials: extractTSArray(testimonialsRaw, 'mockTestimonials'),
  };
}

// ============================================================
// Seed functions
// ============================================================

async function seedDestinations(destinations) {
  console.log(`\nSeeding ${destinations.length} destinations...`);
  let inserted = 0;
  let skipped = 0;

  for (const dest of destinations) {
    const { city, state } = parseLocation(dest.location);
    const slug = dest.id || slugify(dest.name);
    
    const row = {
      name: dest.name,
      slug,
      city,
      state,
      region: null,
      country: dest.location?.includes('United Kingdom') || dest.location?.includes('Italy') || dest.location?.includes('Japan') 
        ? dest.location.split(',').pop()?.trim() || 'India' 
        : 'India',
      description: dest.description || null,
      image_url: dest.image || null,
      alt_text: dest.altText || null,
      main_category: dest.mainCategory || null,
      faith_category: dest.faithCategory || null,
      category_badge: dest.categoryBadge || null,
      is_active: true,
    };

    const { error } = await supabase
      .from('destinations')
      .upsert(row, { onConflict: 'slug' });
    
    if (error) {
      console.error(`  ✗ Destination "${dest.name}": ${error.message}`);
      skipped++;
    } else {
      inserted++;
    }
  }

  console.log(`  ✓ Destinations: ${inserted} upserted, ${skipped} skipped`);
}

async function seedCategories() {
  console.log('\nSeeding categories...');
  const categories = [
    { name: 'Family', slug: 'family', description: 'Family-friendly tours and experiences', display_order: 1 },
    { name: 'Pilgrimage', slug: 'pilgrimage', description: 'Sacred pilgrimage tours', display_order: 2 },
    { name: 'Hinduism', slug: 'hinduism', description: 'Hindu pilgrimage destinations', display_order: 3 },
    { name: 'Buddhism', slug: 'buddhism', description: 'Buddhist heritage trails', display_order: 4 },
    { name: 'Christianity', slug: 'christianity', description: 'Christian pilgrimage sites', display_order: 5 },
    { name: 'Islam', slug: 'islam', description: 'Islamic heritage and pilgrimage', display_order: 6 },
  ];

  const { error } = await supabase
    .from('categories')
    .upsert(categories, { onConflict: 'slug' });

  if (error) {
    console.error('  ✗ Categories:', error.message);
  } else {
    console.log(`  ✓ Categories: ${categories.length} upserted`);
  }
}

async function seedPackages(packages) {
  console.log(`\nSeeding ${packages.length} packages...`);
  let inserted = 0;
  let skipped = 0;

  for (const pkg of packages) {
    const slug = pkg.id;
    
    // Build inclusions from the inclusions object
    const inclusions = [];
    if (pkg.inclusions) {
      if (pkg.inclusions.hotel) inclusions.push('Hotel Stay');
      if (pkg.inclusions.meals) inclusions.push('Meals');
      if (pkg.inclusions.transit) inclusions.push('Transit');
      if (pkg.inclusions.guide) inclusions.push('Guide');
      if (pkg.inclusions.entryPasses) inclusions.push('Entry Passes');
      if (pkg.inclusions.medicalSupport) inclusions.push('Medical Support');
      if (pkg.inclusions.localExperience) inclusions.push('Local Experience');
    }

    const row = {
      slug,
      name: pkg.title,
      destination_name: pkg.destinationName || null,
      description: pkg.description || null,
      location: pkg.location || null,
      region: pkg.region || null,
      category: pkg.category || 'Family',
      sub_category: pkg.subCategory || null,
      duration_days: pkg.durationDays || 4,
      duration_nights: pkg.durationDays ? pkg.durationDays - 1 : null,
      duration_label: pkg.durationLabel || pkg.duration || null,
      base_price: pkg.price || null,
      best_season: pkg.bestSeason || null,
      pace: pkg.pace || 'Relaxed',
      tags: pkg.tags || [],
      traveller_types: pkg.travellerTypes || [],
      route: pkg.route || [],
      destinations_text: pkg.destinations || null,
      image: pkg.image || null,
      alt_text: pkg.altText || null,
      category_label: pkg.categoryLabel || null,
      traveller_type: pkg.travellerType || null,
      senior_friendly: pkg.seniorFriendly || false,
      child_friendly: pkg.childFriendly || false,
      wheelchair_access: pkg.wheelchairAccess || false,
      veg_meals: pkg.vegMeals || false,
      accessibility_status: pkg.accessibilityStatus || 'Accessibility on Request',
      rating: pkg.rating || null,
      review_count: pkg.reviewCount || null,
      seats_left: pkg.seatsLeft || null,
      recent_bookings: pkg.recentBookings || null,
      verified: pkg.verified || null,
      cancellation_summary: pkg.cancellationSummary || null,
      is_active: true,
    };

    const { error } = await supabase
      .from('packages')
      .upsert(row, { onConflict: 'slug' });

    if (error) {
      console.error(`  ✗ Package "${pkg.title}": ${error.message}`);
      skipped++;
    } else {
      inserted++;
    }
  }

  console.log(`  ✓ Packages: ${inserted} upserted, ${skipped} skipped`);
}

async function seedPackageCategories(packages) {
  console.log('\nLinking packages to categories...');
  
  // Get all categories and packages from DB
  const { data: dbCats } = await supabase.from('categories').select('id, slug');
  const { data: dbPkgs } = await supabase.from('packages').select('id, slug, category, sub_category');
  
  if (!dbCats || !dbPkgs) {
    console.error('  ✗ Could not fetch categories or packages');
    return;
  }

  const catMap = Object.fromEntries(dbCats.map(c => [c.slug, c.id]));
  let linked = 0;

  for (const pkg of dbPkgs) {
    const catSlugs = [];
    if (pkg.category) catSlugs.push(slugify(pkg.category));
    if (pkg.sub_category) catSlugs.push(slugify(pkg.sub_category));

    for (let i = 0; i < catSlugs.length; i++) {
      const catId = catMap[catSlugs[i]];
      if (!catId) continue;

      const { error } = await supabase
        .from('package_categories')
        .upsert({
          package_id: pkg.id,
          category_id: catId,
          display_order: i,
        }, { onConflict: 'package_id,category_id' });

      if (!error) linked++;
    }
  }

  console.log(`  ✓ Package-Category links: ${linked}`);
}

async function seedItineraryDays(packages) {
  console.log('\nSeeding itinerary days...');
  
  const { data: dbPkgs } = await supabase.from('packages').select('id, slug');
  if (!dbPkgs) { console.error('  ✗ Could not fetch packages'); return; }
  const pkgMap = Object.fromEntries(dbPkgs.map(p => [p.slug, p.id]));

  let total = 0;

  for (const pkg of packages) {
    const pkgId = pkgMap[pkg.id];
    if (!pkgId || !pkg.itinerary) continue;

    for (const day of pkg.itinerary) {
      const row = {
        package_id: pkgId,
        day_number: day.day,
        title: day.title,
        location: day.location || null,
        overview: day.overview || null,
        morning_title: day.schedule?.morning?.title || null,
        morning_description: day.schedule?.morning?.description || null,
        afternoon_title: day.schedule?.afternoon?.title || null,
        afternoon_description: day.schedule?.afternoon?.description || null,
        evening_title: day.schedule?.evening?.title || null,
        evening_description: day.schedule?.evening?.description || null,
        important_timings: day.details?.importantTimings || null,
        meals: day.details?.meals || null,
        transport: day.details?.transport || null,
        walking_level: day.details?.walkingLevel || null,
        stay: day.details?.stay || null,
        weather: day.details?.weather || null,
        dress_code: day.details?.dressCode || null,
        packing_suggestions: day.details?.packingSuggestions || null,
        accessibility_note: day.details?.accessibility || null,
        visitor_note: day.details?.visitorNote || null,
        travel_duration: day.details?.travelDuration || null,
      };

      const { error } = await supabase
        .from('itinerary_days')
        .upsert(row, { onConflict: 'package_id,day_number' });

      if (error) {
        console.error(`  ✗ Itinerary ${pkg.id} day ${day.day}: ${error.message}`);
      } else {
        total++;
      }
    }
  }

  console.log(`  ✓ Itinerary days: ${total}`);
}

async function seedPackageFeatures(packages) {
  console.log('\nSeeding package features (inclusions, highlights, tips, benefits, summaries)...');
  
  const { data: dbPkgs } = await supabase.from('packages').select('id, slug');
  if (!dbPkgs) { console.error('  ✗ Could not fetch packages'); return; }
  const pkgMap = Object.fromEntries(dbPkgs.map(p => [p.slug, p.id]));

  let total = 0;

  // First, clear existing features to avoid duplicates on re-run
  for (const pkg of packages) {
    const pkgId = pkgMap[pkg.id];
    if (!pkgId) continue;
    await supabase.from('package_features').delete().eq('package_id', pkgId);
  }

  for (const pkg of packages) {
    const pkgId = pkgMap[pkg.id];
    if (!pkgId) continue;

    const features = [];

    // Inclusions from the inclusions object
    if (pkg.inclusions) {
      const inclusionLabels = {
        hotel: 'Hotel Stay', meals: 'Meals Included', transit: 'AC Transit',
        guide: 'Expert Guide', entryPasses: 'Entry Passes', medicalSupport: 'Medical Support',
        localExperience: 'Local Experience'
      };
      let order = 0;
      for (const [key, label] of Object.entries(inclusionLabels)) {
        if (pkg.inclusions[key]) {
          features.push({ package_id: pkgId, feature_type: 'inclusion', title: label, display_order: order++ });
        }
      }
    }

    // Highlights
    if (pkg.highlights) {
      pkg.highlights.forEach((h, i) => {
        features.push({ package_id: pkgId, feature_type: 'highlight', title: h, display_order: i });
      });
    }

    // Tips
    if (pkg.tips) {
      pkg.tips.forEach((t, i) => {
        features.push({ package_id: pkgId, feature_type: 'tip', title: t, display_order: i });
      });
    }

    // Package Benefits
    if (pkg.packageBenefits) {
      pkg.packageBenefits.forEach((b, i) => {
        features.push({ package_id: pkgId, feature_type: 'benefit', title: b, display_order: i });
      });
    }

    // Itinerary Summary
    if (pkg.itinerarySummary) {
      pkg.itinerarySummary.forEach((s, i) => {
        features.push({ package_id: pkgId, feature_type: 'itinerary_summary', title: s, display_order: i });
      });
    }

    if (features.length > 0) {
      const { error } = await supabase.from('package_features').insert(features);
      if (error) {
        console.error(`  ✗ Features for ${pkg.id}: ${error.message}`);
      } else {
        total += features.length;
      }
    }
  }

  console.log(`  ✓ Package features: ${total}`);
}

async function seedPackageMedia(packages) {
  console.log('\nSeeding package media...');
  
  const { data: dbPkgs } = await supabase.from('packages').select('id, slug');
  if (!dbPkgs) { console.error('  ✗ Could not fetch packages'); return; }
  const pkgMap = Object.fromEntries(dbPkgs.map(p => [p.slug, p.id]));

  let total = 0;

  for (const pkg of packages) {
    const pkgId = pkgMap[pkg.id];
    if (!pkgId || !pkg.image) continue;

    // Delete existing media first for idempotency
    await supabase.from('package_media').delete().eq('package_id', pkgId);

    const { error } = await supabase
      .from('package_media')
      .insert({
        package_id: pkgId,
        media_type: 'image',
        url: pkg.image,
        alt_text: pkg.altText || `${pkg.title} tour image`,
        is_cover: true,
        display_order: 0,
      });

    if (error) {
      console.error(`  ✗ Media for ${pkg.id}: ${error.message}`);
    } else {
      total++;
    }
  }

  console.log(`  ✓ Package media: ${total}`);
}

async function seedPackageAccessibility(packages) {
  console.log('\nSeeding package accessibility...');
  
  const { data: dbPkgs } = await supabase.from('packages').select('id, slug');
  if (!dbPkgs) { console.error('  ✗ Could not fetch packages'); return; }
  const pkgMap = Object.fromEntries(dbPkgs.map(p => [p.slug, p.id]));

  let total = 0;

  for (const pkg of packages) {
    const pkgId = pkgMap[pkg.id];
    if (!pkgId) continue;

    const isWheelchairAccessible = pkg.accessibilityStatus === 'Wheelchair Accessible';
    const isPartial = pkg.accessibilityStatus === 'Partial Accessibility';
    const isOnRequest = pkg.accessibilityStatus === 'Accessibility on Request';

    const row = {
      package_id: pkgId,
      wheelchair_available: pkg.wheelchairAccess || isWheelchairAccessible,
      battery_cart_available: isWheelchairAccessible || isPartial,
      reduced_walking_option: pkg.seniorFriendly,
      lift_accessible_stay: isWheelchairAccessible || isPartial,
      ground_floor_room: isWheelchairAccessible,
      accessible_bathroom: isWheelchairAccessible,
      darshan_assistance: pkg.seniorFriendly,
      medical_facility_nearby: pkg.inclusions?.medicalSupport || false,
      care_notes: isOnRequest ? 'Accessibility features available on request. Contact us for details.' : null,
      requires_confirmation: isOnRequest || isPartial,
    };

    const { error } = await supabase
      .from('package_accessibility')
      .upsert(row, { onConflict: 'package_id' });

    if (error) {
      console.error(`  ✗ Accessibility for ${pkg.id}: ${error.message}`);
    } else {
      total++;
    }
  }

  console.log(`  ✓ Package accessibility: ${total}`);
}

async function seedFAQs(faqs) {
  console.log(`\nSeeding ${faqs.length} FAQs...`);

  // Delete existing general FAQs first
  await supabase.from('faqs').delete().is('package_id', null);

  const rows = faqs.map((faq, i) => ({
    package_id: null,
    category: 'general',
    question: faq.question,
    answer: faq.answer,
    display_order: i,
    is_active: true,
  }));

  const { error } = await supabase.from('faqs').insert(rows);
  if (error) {
    console.error('  ✗ FAQs:', error.message);
  } else {
    console.log(`  ✓ FAQs: ${rows.length} inserted`);
  }
}

async function seedTestimonials(testimonials) {
  console.log(`\nSeeding ${testimonials.length} testimonials...`);

  // Delete existing testimonials first
  await supabase.from('testimonials').delete().neq('id', '00000000-0000-0000-0000-000000000000');

  const rows = testimonials.map(t => ({
    traveller_name: t.name,
    traveller_age: t.age || null,
    traveller_location: t.location || null,
    quote: t.quote,
    rating: t.rating || 5,
    avatar_url: t.avatarUrl || null,
    trip_name: t.tripName || null,
    is_featured: true,
    is_active: true,
  }));

  const { error } = await supabase.from('testimonials').insert(rows);
  if (error) {
    console.error('  ✗ Testimonials:', error.message);
  } else {
    console.log(`  ✓ Testimonials: ${rows.length} inserted`);
  }
}

// ============================================================
// Verification
// ============================================================
async function verifyCounts() {
  console.log('\n============================================================');
  console.log('VERIFICATION: Record Counts');
  console.log('============================================================');

  const tables = [
    'destinations', 'categories', 'packages', 'package_categories',
    'itinerary_days', 'package_features', 'package_media',
    'package_accessibility', 'faqs', 'testimonials'
  ];

  for (const table of tables) {
    const { count, error } = await supabase
      .from(table)
      .select('*', { count: 'exact', head: true });
    
    if (error) {
      console.log(`  ${table}: ERROR - ${error.message}`);
    } else {
      console.log(`  ${table}: ${count} records`);
    }
  }
}

// ============================================================
// Main
// ============================================================
async function main() {
  console.log('============================================================');
  console.log('OneJourney Supabase Seed Script');
  console.log('============================================================');
  console.log(`Supabase URL: ${SUPABASE_URL}`);
  console.log('');

  const data = loadLocalData();
  console.log(`Local data loaded:`);
  console.log(`  Packages: ${data.packages.length}`);
  console.log(`  Destinations: ${data.destinations.length}`);
  console.log(`  FAQs: ${data.faqs.length}`);
  console.log(`  Testimonials: ${data.testimonials.length}`);

  // Seed in dependency order
  await seedDestinations(data.destinations);
  await seedCategories();
  await seedPackages(data.packages);
  await seedPackageCategories(data.packages);
  await seedItineraryDays(data.packages);
  await seedPackageFeatures(data.packages);
  await seedPackageMedia(data.packages);
  await seedPackageAccessibility(data.packages);
  await seedFAQs(data.faqs);
  await seedTestimonials(data.testimonials);

  await verifyCounts();

  console.log('\n✅ Seed complete!');
}

main().catch(err => {
  console.error('Seed failed:', err);
  process.exit(1);
});
