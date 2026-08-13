import fs from 'fs';
import path from 'path';

function loadEnv() {
  const envPath = path.resolve('.env.local');
  if (fs.existsSync(envPath)) {
    const envContent = fs.readFileSync(envPath, 'utf8');
    for (const line of envContent.split('\n')) {
      const trimmed = line.trim();
      if (!trimmed || trimmed.startsWith('#')) continue;
      const eqIdx = trimmed.indexOf('=');
      if (eqIdx > 0) {
        const k = trimmed.slice(0, eqIdx).trim();
        const v = trimmed.slice(eqIdx + 1).trim();
        process.env[k] = v;
      }
    }
  }
}

loadEnv();

import { fetchPackagesFromSupabase, fetchPackageByIdFromSupabase, fetchDestinationsFromSupabase, fetchFAQsFromSupabase, fetchTestimonialsFromSupabase } from '../lib/services/packages';
import { submitEnquiryToSupabase } from '../lib/services/userActions';

async function runSmokeTest() {
  console.log('--- STARTING CONTROLLED SMOKE TEST ---');

  // 1. Fetch packages
  const packages = await fetchPackagesFromSupabase();
  console.log(`✓ fetchPackagesFromSupabase: ${packages.length} packages retrieved`);

  // 2. Fetch single package by slug
  if (packages.length > 0) {
    const singlePkg = await fetchPackageByIdFromSupabase(packages[0].id);
    console.log(`✓ fetchPackageByIdFromSupabase ("${packages[0].id}"): ${singlePkg ? singlePkg.title : 'FAILED'}`);
  }

  // 3. Fetch single package by non-UUID slug string
  const nonUuid = await fetchPackageByIdFromSupabase("char-dham-yatra");
  console.log(`✓ fetchPackageByIdFromSupabase (slug "char-dham-yatra"): ${nonUuid ? nonUuid.title : 'Clean handle / not found'}`);

  // 4. Fetch destinations
  const destinations = await fetchDestinationsFromSupabase();
  console.log(`✓ fetchDestinationsFromSupabase: ${destinations.length} destinations retrieved`);

  // 5. Fetch FAQs
  const faqs = await fetchFAQsFromSupabase();
  console.log(`✓ fetchFAQsFromSupabase: ${faqs.length} FAQs retrieved`);

  // 6. Fetch Testimonials
  const testimonials = await fetchTestimonialsFromSupabase();
  console.log(`✓ fetchTestimonialsFromSupabase: ${testimonials.length} testimonials retrieved`);

  // 7. Test Enquiry submission
  const enquiryRes = await submitEnquiryToSupabase({
    packageId: packages[0]?.id || "char-dham-yatra",
    fullName: "Smoke Test Traveller",
    email: "smoketest@example.com",
    phone: "+919876543210",
    travelDates: "October 2026",
    specialRequirements: "Wheelchair assistance on arrival",
  });
  console.log(`✓ submitEnquiryToSupabase: ${enquiryRes.success ? 'SUCCESS' : 'FAILED - ' + enquiryRes.error}`);

  console.log('--- SMOKE TEST COMPLETED CLEANLY ---');
}

runSmokeTest().catch(err => {
  console.error('Smoke test error:', err);
  process.exit(1);
});
