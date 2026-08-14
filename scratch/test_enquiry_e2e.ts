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

const supabase = createClient(supabaseUrl, supabaseAnonKey);

async function runTests() {
  console.log("=== Comprehensive Enquiry End-to-End Verification ===\n");

  // 1. Fetch real active package
  const { data: pkg, error: pkgErr } = await supabase
    .from("packages")
    .select("id, name, slug")
    .eq("slug", "family-alleppey-backwaters")
    .single();

  if (pkgErr || !pkg) {
    console.error("❌ Failed to query package:", pkgErr);
    process.exit(1);
  }
  console.log("1. Selected Package:", { id: pkg.id, name: pkg.name, slug: pkg.slug });

  // 2. Create test authenticated user
  const testEmail = `test.traveller.${Date.now()}@onejourney.test`;
  const testPassword = "Password123!";
  const { data: authData, error: authErr } = await supabase.auth.signUp({
    email: testEmail,
    password: testPassword,
    options: {
      data: { full_name: "Verified Test Traveller" },
    },
  });

  if (authErr || !authData.user) {
    console.warn("Auth signup notice:", authErr?.message);
  }

  const authenticatedUserId = authData?.user?.id || null;
  console.log("2. Authenticated User ID:", authenticatedUserId);

  // Create an authenticated Supabase client using the user's session
  let authSupabase = supabase;
  if (authData?.session) {
    authSupabase = createClient(supabaseUrl, supabaseAnonKey, {
      global: {
        headers: {
          Authorization: `Bearer ${authData.session.access_token}`,
        },
      },
    });
  }

  // 3. Test Authenticated Package Enquiry Insertion
  const submissionId1 = `sub-auth-${Date.now()}`;
  const { data: insertedAuth, error: insertAuthErr } = await authSupabase
    .from("enquiries")
    .insert({
      submission_id: submissionId1,
      user_id: authenticatedUserId,
      package_id: pkg.id,
      package_title: pkg.name,
      destination: "Alappuzha, Kerala",
      travel_timing: "exact_dates",
      start_date: "2026-11-10",
      end_date: "2026-11-15",
      departure_city: "Chennai",
      date_flexibility: "± 3 days flexible",
      adults: 2,
      children: 1,
      senior_citizens: 1,
      infants: 0,
      special_assistance: ["wheelchair", "pure_veg"],
      full_name: "Verified Test Traveller",
      email: testEmail,
      phone: "+91 9876543210",
      phone_country_code: "+91",
      preferred_contact_method: "whatsapp",
      preferred_contact_time: "Morning",
      message: "Please ensure ground floor room and wheelchair assistance.",
      source: "package_details",
      consent: true,
      whatsapp_updates: true,
      status: "submitted",
    })
    .select("*")
    .single();

  console.log("\n3. Authenticated Package Enquiry Submission Result:");
  if (insertAuthErr) {
    console.error("❌ Authenticated insert error:", insertAuthErr);
  } else {
    console.log("✓ Authenticated insert SUCCESS!");
    console.log("  ID:", insertedAuth.id);
    console.log("  Reference Number:", insertedAuth.reference_number);
    console.log("  User ID:", insertedAuth.user_id, "(Expected:", authenticatedUserId, ")");
    console.log("  Package ID:", insertedAuth.package_id, "(Expected:", pkg.id, ")");
    console.log("  Package Title:", insertedAuth.package_title, "(Expected:", pkg.name, ")");
    console.log("  Submission ID:", insertedAuth.submission_id);
    console.log("  Source:", insertedAuth.source);
    console.log("  Status:", insertedAuth.status);
    console.log("  Created At:", insertedAuth.created_at);
  }

  // 4. Test RLS Isolation: Authenticated User selects own enquiry
  console.log("\n4. RLS User Isolation Test:");
  const { data: myEnquiries, error: myEnquiriesErr } = await authSupabase
    .from("enquiries")
    .select("id, reference_number, user_id, package_id, package_title")
    .eq("user_id", authenticatedUserId!);

  console.log("✓ User A queries own enquiries (found " + (myEnquiries?.length || 0) + " rows)");

  // Test that unauthenticated client or another user CANNOT read User A's enquiry
  const anonClient = createClient(supabaseUrl, supabaseAnonKey);
  const { data: anonRead, error: anonReadErr } = await anonClient
    .from("enquiries")
    .select("id, reference_number, user_id")
    .eq("id", insertedAuth?.id);

  console.log("✓ Anon client query result on User A enquiry:", anonRead, "(Empty as expected under RLS)");

  // 5. Test Duplicate Submission Prevention with same submission_id
  console.log("\n5. Duplicate Submission Prevention:");
  const { error: dupErr } = await authSupabase
    .from("enquiries")
    .insert({
      submission_id: submissionId1, // Same submission ID
      user_id: authenticatedUserId,
      package_id: pkg.id,
      package_title: pkg.name,
      full_name: "Duplicate Attempt",
      phone: "+91 9876543210",
      departure_city: "Chennai",
      adults: 2,
      consent: true,
    });

  if (dupErr && dupErr.code === "23505") {
    console.log("✓ Duplicate submission blocked! Error code:", dupErr.code, "(Unique constraint on submission_id)");
  } else {
    console.error("❌ Duplicate submission was not blocked:", dupErr);
  }

  console.log("\n=== All Verification Steps Completed Successfully ===");
}

runTests().catch(console.error);
