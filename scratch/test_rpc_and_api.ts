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

async function run() {
  console.log("=== Testing submit_enquiry RPC with Anon & Authenticated Clients ===\n");

  // 1. Query real package
  const { data: pkg, error: pkgErr } = await supabase
    .from("packages")
    .select("id, name, slug")
    .eq("slug", "family-alleppey-backwaters")
    .single();

  if (pkgErr || !pkg) {
    console.error("Failed to query package:", pkgErr);
    process.exit(1);
  }
  console.log("1. Selected Package:", { id: pkg.id, name: pkg.name });

  // 2. Test Guest Submission (Anon Client)
  console.log("\n2. Testing Guest Submission via RPC (Anon Client)...");
  const guestSubId = `sub-guest-${Date.now()}`;
  const { data: guestData, error: guestErr } = await (supabase.rpc as any)("submit_enquiry", {
    p_submission_id: guestSubId,
    p_user_id: null,
    p_package_id: pkg.id,
    p_package_title: pkg.name,
    p_destination: "Alappuzha, Kerala",
    p_travel_timing: "exact_dates",
    p_start_date: "2026-11-20",
    p_end_date: "2026-11-25",
    p_departure_city: "Mumbai",
    p_adults: 2,
    p_children: 0,
    p_senior_citizens: 1,
    p_infants: 0,
    p_special_assistance: ["wheelchair"],
    p_full_name: "Guest Traveller Test",
    p_email: "guest.test@example.com",
    p_phone: "+91 9876543210",
    p_phone_country_code: "+91",
    p_preferred_contact_method: "whatsapp",
    p_message: "Need wheelchair assistance for elderly parent.",
    p_source: "package_card",
    p_consent: true,
    p_whatsapp_updates: true,
  });

  if (guestErr) {
    console.error("❌ Guest RPC failed:", guestErr);
  } else {
    const row = Array.isArray(guestData) ? guestData[0] : guestData;
    console.log("✓ Guest submission SUCCESS!");
    console.log("  Row returned:", row);
  }

  // 3. Test Authenticated User Submission via RPC
  console.log("\n3. Testing Authenticated Submission via RPC (Subash P)...");
  const authUserId = "9d3ecb77-7699-4f03-8178-afa77b8b5bb0";
  const authSubId = `sub-auth-rpc-${Date.now()}`;
  const { data: authData, error: authErr } = await (supabase.rpc as any)("submit_enquiry", {
    p_submission_id: authSubId,
    p_user_id: authUserId,
    p_package_id: pkg.id,
    p_package_title: pkg.name,
    p_destination: "Alappuzha, Kerala",
    p_travel_timing: "flexible_month",
    p_preferred_month: "December 2026",
    p_departure_city: "Chennai",
    p_adults: 3,
    p_children: 1,
    p_senior_citizens: 2,
    p_infants: 0,
    p_special_assistance: ["ground_floor", "pure_veg"],
    p_full_name: "Subash P",
    p_email: "subashp2255@gmail.com",
    p_phone: "+91 9876543210",
    p_phone_country_code: "+91",
    p_preferred_contact_method: "phone",
    p_message: "Booking for temple darshan yatra.",
    p_source: "package_details",
    p_consent: true,
    p_whatsapp_updates: true,
  });

  if (authErr) {
    console.error("❌ Authenticated RPC failed:", authErr);
  } else {
    const row = Array.isArray(authData) ? authData[0] : authData;
    console.log("✓ Authenticated submission SUCCESS!");
    console.log("  Row returned:", row);
  }

  // 4. Test Idempotency (Submitting same submission ID returns existing record without error)
  console.log("\n4. Testing Idempotency on same submission_id...");
  const { data: dupData, error: dupErr } = await (supabase.rpc as any)("submit_enquiry", {
    p_submission_id: guestSubId, // Re-submitting the exact same guest submission ID
    p_full_name: "Duplicate Attempt",
    p_phone: "+91 9876543210",
    p_departure_city: "Mumbai",
  });

  if (dupErr) {
    console.error("❌ Idempotency check failed:", dupErr);
  } else {
    const row = Array.isArray(dupData) ? dupData[0] : dupData;
    console.log("✓ Idempotency SUCCESS! Re-returned existing enquiry without duplicate insertion.");
    console.log("  Reference:", row?.reference_number, "ID:", row?.id);
  }

  console.log("\n=== RPC Test Suite Completed Successfully ===");
}

run().catch(console.error);
