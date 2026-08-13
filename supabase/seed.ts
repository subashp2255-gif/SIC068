import { createClient } from '@supabase/supabase-js';
import fs from 'fs';
import path from 'path';

// Import static local data directly via TypeScript imports
import { mockPackages } from '../data/packages';
import { destinationsData } from '../data/destinations';
import { mockFAQs } from '../data/faq';
import { mockTestimonials } from '../data/testimonials';

function loadEnv() {
  const envPath = path.resolve('.env.local');
  const envContent = fs.readFileSync(envPath, 'utf8');
  const vars: Record<string, string> = {};
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
const SUPABASE_KEY = env.SUPABASE_SERVICE_ROLE_KEY || env.NEXT_PUBLIC_SUPABASE_ANON_KEY;

if (!SUPABASE_URL || !SUPABASE_KEY) {
  console.error('Missing Supabase credentials in .env.local');
  process.exit(1);
}

const supabase = createClient(SUPABASE_URL, SUPABASE_KEY, {
  auth: { autoRefreshToken: false, persistSession: false }
});

function slugify(text: string) {
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

async function seedDestinations() {
  console.log(`\nSeeding ${destinationsData.length} destinations...`);
  let inserted = 0;
  let skipped = 0;

  for (const dest of destinationsData) {
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

async function seedPackages() {
  console.log(`\nSeeding ${mockPackages.length} packages...`);
  let inserted = 0;
  let skipped = 0;

  for (const pkg of mockPackages) {
    const slug = pkg.id;

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

async function seedPackageCategories() {
  console.log('\nLinking packages to categories...');
  
  const { data: dbCats } = await supabase.from('categories').select('id, slug');
  const { data: dbPkgs } = await supabase.from('packages').select('id, slug, category, sub_category');
  
  if (!dbCats || !dbPkgs) {
    console.error('  ✗ Could not fetch categories or packages');
    return;
  }

  const catMap = Object.fromEntries(dbCats.map(c => [c.slug, c.id]));
  let linked = 0;

  for (const pkg of dbPkgs) {
    const catSlugs: string[] = [];
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

async function seedItineraryDays() {
  console.log('\nSeeding itinerary days...');
  
  const { data: dbPkgs } = await supabase.from('packages').select('id, slug');
  if (!dbPkgs) { console.error('  ✗ Could not fetch packages'); return; }
  const pkgMap = Object.fromEntries(dbPkgs.map(p => [p.slug, p.id]));

  let total = 0;

  for (const pkg of mockPackages) {
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

async function seedPackageFeatures() {
  console.log('\nSeeding package features...');
  
  const { data: dbPkgs } = await supabase.from('packages').select('id, slug');
  if (!dbPkgs) { console.error('  ✗ Could not fetch packages'); return; }
  const pkgMap = Object.fromEntries(dbPkgs.map(p => [p.slug, p.id]));

  let total = 0;

  for (const pkg of mockPackages) {
    const pkgId = pkgMap[pkg.id];
    if (!pkgId) continue;

    await supabase.from('package_features').delete().eq('package_id', pkgId);

    const features: any[] = [];

    if (pkg.inclusions) {
      const inclusionLabels: Record<string, string> = {
        hotel: 'Hotel Stay', meals: 'Meals Included', transit: 'AC Transit',
        guide: 'Expert Guide', entryPasses: 'Entry Passes', medicalSupport: 'Medical Support',
        localExperience: 'Local Experience'
      };
      let order = 0;
      for (const [key, label] of Object.entries(inclusionLabels)) {
        if ((pkg.inclusions as any)[key]) {
          features.push({ package_id: pkgId, feature_type: 'inclusion', title: label, display_order: order++ });
        }
      }
    }

    if (pkg.highlights) {
      pkg.highlights.forEach((h, i) => {
        features.push({ package_id: pkgId, feature_type: 'highlight', title: h, display_order: i });
      });
    }

    if (pkg.tips) {
      pkg.tips.forEach((t, i) => {
        features.push({ package_id: pkgId, feature_type: 'tip', title: t, display_order: i });
      });
    }

    if (pkg.packageBenefits) {
      pkg.packageBenefits.forEach((b, i) => {
        features.push({ package_id: pkgId, feature_type: 'benefit', title: b, display_order: i });
      });
    }

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

async function seedPackageMedia() {
  console.log('\nSeeding package media...');
  
  const { data: dbPkgs } = await supabase.from('packages').select('id, slug');
  if (!dbPkgs) { console.error('  ✗ Could not fetch packages'); return; }
  const pkgMap = Object.fromEntries(dbPkgs.map(p => [p.slug, p.id]));

  let total = 0;

  for (const pkg of mockPackages) {
    const pkgId = pkgMap[pkg.id];
    if (!pkgId || !pkg.image) continue;

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

async function seedPackageAccessibility() {
  console.log('\nSeeding package accessibility...');
  
  const { data: dbPkgs } = await supabase.from('packages').select('id, slug');
  if (!dbPkgs) { console.error('  ✗ Could not fetch packages'); return; }
  const pkgMap = Object.fromEntries(dbPkgs.map(p => [p.slug, p.id]));

  let total = 0;

  for (const pkg of mockPackages) {
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

async function seedFAQs() {
  console.log(`\nSeeding ${mockFAQs.length} FAQs...`);

  await supabase.from('faqs').delete().is('package_id', null);

  const rows = mockFAQs.map((faq, i) => ({
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

async function seedTestimonials() {
  console.log(`\nSeeding ${mockTestimonials.length} testimonials...`);

  await supabase.from('testimonials').delete().neq('id', '00000000-0000-0000-0000-000000000000');

  const rows = mockTestimonials.map(t => ({
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

async function main() {
  console.log('============================================================');
  console.log('OneJourney Supabase Seed Script (TypeScript)');
  console.log('============================================================');
  console.log(`Supabase URL: ${SUPABASE_URL}`);
  console.log(`Packages count in local file: ${mockPackages.length}`);
  console.log(`Destinations count in local file: ${destinationsData.length}`);
  console.log(`FAQs count: ${mockFAQs.length}`);
  console.log(`Testimonials count: ${mockTestimonials.length}`);

  await seedDestinations();
  await seedCategories();
  await seedPackages();
  await seedPackageCategories();
  await seedItineraryDays();
  await seedPackageFeatures();
  await seedPackageMedia();
  await seedPackageAccessibility();
  await seedFAQs();
  await seedTestimonials();

  await verifyCounts();
}

main().catch(err => {
  console.error('Seed failed:', err);
  process.exit(1);
});
