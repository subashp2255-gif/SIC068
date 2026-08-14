import { createClient } from "@supabase/supabase-js";
import * as fs from "fs";
import * as path from "path";

// Read .env.local
const envPath = path.resolve(process.cwd(), ".env.local");
let supabaseUrl = "";
let supabaseAnonKey = "";

if (fs.existsSync(envPath)) {
  const content = fs.readFileSync(envPath, "utf-8");
  for (const line of content.split("\n")) {
    const trimmed = line.trim();
    if (trimmed.startsWith("NEXT_PUBLIC_SUPABASE_URL=")) {
      supabaseUrl = trimmed.split("=")[1].trim();
    }
    if (trimmed.startsWith("NEXT_PUBLIC_SUPABASE_ANON_KEY=")) {
      supabaseAnonKey = trimmed.split("=")[1].trim();
    }
  }
}

if (!supabaseUrl || !supabaseAnonKey) {
  console.error("Missing supabase credentials");
  process.exit(1);
}

const supabase = createClient(supabaseUrl, supabaseAnonKey);

async function runTests() {
  console.log("=== Starting Pilgrimage Enquiries Integration Test Suite ===\n");

  // 1. Verify Packages in Database
  const { data: testPkg, error: pkgErr } = await supabase
    .from("packages")
    .select("id, name, slug")
    .eq("slug", "family-alleppey-backwaters")
    .single();

  if (pkgErr || !testPkg) {
    console.error("❌ Failed to query test package:", pkgErr);
    process.exit(1);
  }
  console.log("✓ Found test package in DB:", { id: testPkg.id, name: testPkg.name, slug: testPkg.slug });

  // 2. Test Package-Specific Enquiry Insertion
  const packageSubmissionId = `test-pkg-${Date.now()}`;
  const { data: pkgEnquiry, error: pkgEnquiryErr } = await supabase
    .from("enquiries")
    .insert({
      submission_id: packageSubmissionId,
      package_id: testPkg.id,
      package_title: testPkg.name,
      destination: "Alappuzha, Kerala",
      travel_timing: "exact_dates",
      start_date: "2026-10-15",
      end_date: "2026-10-20",
      departure_city: "Chennai",
      adults: 2,
      children: 1,
      senior_citizens: 1,
      infants: 0,
      special_assistance: ["wheelchair", "pure_veg"],
      full_name: "Ramesh Sharma",
      email: "ramesh.sharma@example.com",
      phone: "+91 9876543210",
      preferred_contact_method: "whatsapp",
      message: "Please ensure wheelchair assistance at Alleppey boat jetty.",
      source: "package_card",
      consent: true,
      whatsapp_updates: true,
      status: "submitted",
    })
    .select("id, reference_number, package_id, package_title, source, submission_id, created_at");

  console.log("\n--- Test 1: Package-Specific Enquiry ---");
  if (pkgEnquiryErr) {
    console.error("❌ Insert package enquiry failed:", pkgEnquiryErr);
  } else {
    console.log("✓ Insert package enquiry succeeded!");
    console.log("  Row data:", pkgEnquiry);
  }

  // 3. Test General Enquiry Insertion
  const generalSubmissionId = `test-gen-${Date.now()}`;
  const { data: genEnquiry, error: genEnquiryErr } = await supabase
    .from("enquiries")
    .insert({
      submission_id: generalSubmissionId,
      package_id: null,
      package_title: "General Pilgrimage Enquiry",
      destination: "India",
      travel_timing: "flexible_month",
      preferred_month: "November 2026",
      departure_city: "Bangalore",
      adults: 4,
      children: 0,
      senior_citizens: 2,
      infants: 0,
      special_assistance: ["ground_floor"],
      full_name: "Anand Kumar",
      email: "anand.kumar@example.com",
      phone: "+91 9845012345",
      preferred_contact_method: "phone",
      message: "Need family consultation for senior parents.",
      source: "homepage",
      consent: true,
      whatsapp_updates: true,
      status: "submitted",
    })
    .select("id, reference_number, package_id, package_title, source, submission_id, created_at");

  console.log("\n--- Test 2: General Enquiry ---");
  if (genEnquiryErr) {
    console.error("❌ Insert general enquiry failed:", genEnquiryErr);
  } else {
    console.log("✓ Insert general enquiry succeeded!");
    console.log("  Row data:", genEnquiry);
  }

  // 4. Test Duplicate Submission Prevention (Idempotency)
  console.log("\n--- Test 3: Duplicate Submission Prevention ---");
  const { error: dupErr } = await supabase
    .from("enquiries")
    .insert({
      submission_id: packageSubmissionId, // duplicate submission ID
      package_id: testPkg.id,
      package_title: testPkg.name,
      full_name: "Duplicate Ramesh",
      phone: "+91 9876543210",
      departure_city: "Chennai",
      adults: 2,
      consent: true,
    });

  if (dupErr && dupErr.code === "23505") {
    console.log("✓ Duplicate submission correctly blocked by unique index on submission_id! Error code:", dupErr.code);
  } else {
    console.error("❌ Expected duplicate submission error (23505), received:", dupErr);
  }

  // 5. Test Check Constraints: Invalid Date Range
  console.log("\n--- Test 4: Check Constraints (End Date < Start Date) ---");
  const { error: dateErr } = await supabase
    .from("enquiries")
    .insert({
      submission_id: `test-invalid-date-${Date.now()}`,
      full_name: "Invalid Date Tester",
      phone: "+91 9876543210",
      departure_city: "Mumbai",
      start_date: "2026-10-25",
      end_date: "2026-10-20", // end date precedes start date
      adults: 1,
      consent: true,
    });

  if (dateErr && dateErr.code === "23514") {
    console.log("✓ Invalid date range correctly rejected by constraint enquiries_date_order_check! Error code:", dateErr.code);
  } else {
    console.error("❌ Expected constraint violation (23514), received:", dateErr);
  }

  // 6. Test Check Constraints: Zero Travellers
  console.log("\n--- Test 5: Check Constraints (0 Travellers) ---");
  const { error: travellerErr } = await supabase
    .from("enquiries")
    .insert({
      submission_id: `test-zero-traveller-${Date.now()}`,
      full_name: "Zero Traveller Tester",
      phone: "+91 9876543210",
      departure_city: "Delhi",
      adults: 0,
      children: 0,
      senior_citizens: 0,
      infants: 0,
      consent: true,
    });

  if (travellerErr && travellerErr.code === "23514") {
    console.log("✓ Zero travellers correctly rejected by constraint enquiry_min_travellers! Error code:", travellerErr.code);
  } else {
    console.error("❌ Expected constraint violation (23514), received:", travellerErr);
  }

  console.log("\n=== Test Suite Completed Successfully ===");
}

runTests().catch(console.error);
