import { NextResponse } from "next/server";
import { getSupabaseServerClient } from "@/lib/supabase/server";
import { getSupabaseAdminClient } from "@/lib/supabase/admin";
import { normalizePhoneNumber } from "@/lib/services/enquiryService";

const UUID_REGEX = /^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$/i;

export async function POST(request: Request) {
  try {
    const body = await request.json();

    // 1. Dual-parameter parameter resolution & normalization
    const rawPkgId = (body.package_id || body.packageId || "").toString().trim();
    const rawPkgSlug = (body.packageSlug || body.slug || "").toString().trim();
    const rawPkgTitle = (body.package_title || body.packageTitle || body.packageName || "").toString().trim();
    const destination = (body.destination || "").toString().trim();

    const rawTiming = body.travel_timing || body.travelPreference || body.travelTiming || "flexible_month";
    const travelTiming = rawTiming === "flexible-month" ? "flexible_month" : rawTiming === "exact-dates" ? "exact_dates" : rawTiming;

    const preferredMonth = travelTiming === "flexible_month" ? (body.preferred_month || body.preferredMonth || "").toString().trim() : null;
    const startDate = travelTiming === "exact_dates" ? (body.start_date || body.departureDate || body.startDate || "").toString().trim() : null;
    const endDate = travelTiming === "exact_dates" ? (body.end_date || body.returnDate || body.endDate || "").toString().trim() : null;
    const departureCity = (body.departure_city || body.departureCity || "").toString().trim();
    const dateFlexibility = (body.date_flexibility || body.dateFlexibility || "").toString().trim() || null;

    const adults = Number(body.adults ?? body.adultsCount ?? 1);
    const seniors = Number(body.senior_citizens ?? body.seniors ?? body.seniorCitizens ?? 0);
    const children = Number(body.children ?? 0);
    const infants = Number(body.infants ?? 0);

    const specialAssistance = body.special_assistance || body.assistance || body.specialAssistance || [];
    const fullName = (body.full_name || body.fullName || "").toString().trim();
    const phoneCountryCode = (body.phone_country_code || body.phoneCountryCode || "+91").toString().trim();
    const rawPhone = (body.phone || "").toString().trim();
    const email = (body.email || "").toString().trim().toLowerCase();
    const preferredContactMethod = (body.preferred_contact_method || body.preferredContactMethod || "whatsapp").toString().trim();
    const preferredContactTime = (body.preferred_contact_time || body.preferredContactTime || "Any time").toString().trim();
    const message = (body.message || body.additionalRequests || "").toString().trim() || null;
    const consent = Boolean(body.consent ?? body.contactConsent);
    const whatsappUpdates = Boolean(body.whatsapp_updates ?? body.whatsappUpdates ?? false);
    const source = (body.source || "homepage").toString().trim();
    const submissionId = (body.submission_id || body.submissionId || crypto.randomUUID()).toString().trim();

    // 2. Validation Checks
    const errors: Record<string, string> = {};

    if (!fullName) {
      errors.fullName = "Full name is required.";
    }

    const { fullPhone, isValid: isPhoneValid } = normalizePhoneNumber(rawPhone, phoneCountryCode);
    if (!rawPhone) {
      errors.phone = "Phone number is required.";
    } else if (!isPhoneValid) {
      errors.phone = phoneCountryCode === "+91"
        ? "Please enter a valid 10-digit Indian mobile number."
        : "Please enter a valid phone number.";
    }

    if (email) {
      const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
      if (!emailRegex.test(email)) {
        errors.email = "Please enter a valid email address.";
      }
    }

    if (!departureCity) {
      errors.departureCity = "Departure city is required.";
    }

    if (travelTiming === "flexible_month") {
      if (!preferredMonth) {
        errors.preferredMonth = "Please select a preferred month.";
      }
    } else if (travelTiming === "exact_dates") {
      if (!startDate) {
        errors.startDate = "Departure date is required.";
      }
      if (!endDate) {
        errors.endDate = "Return date is required.";
      }
      if (startDate && endDate) {
        const dep = new Date(startDate);
        const ret = new Date(endDate);
        const today = new Date();
        today.setHours(0, 0, 0, 0);

        if (dep < today) {
          errors.startDate = "Departure date cannot be in the past.";
        }
        if (ret < dep) {
          errors.endDate = "Return date must be after departure date.";
        }
      }
    } else if (travelTiming !== "undecided") {
      errors.travelTiming = "Invalid travel preference selection.";
    }

    const totalTravellers = adults + seniors + children + infants;
    if (adults < 0 || children < 0 || seniors < 0 || infants < 0) {
      errors.travellers = "Traveller counts cannot be negative.";
    } else if (totalTravellers < 1) {
      errors.travellers = "At least one traveller is required.";
    }

    if (!consent) {
      errors.consent = "You must consent to be contacted to submit the form.";
    }

    if (Object.keys(errors).length > 0) {
      return NextResponse.json({ success: false, errors }, { status: 400 });
    }

    // 3. Resolve user session & Supabase client
    let supabase;
    let authUserId: string | null = null;

    try {
      supabase = await getSupabaseServerClient();
      const { data: { user } } = await supabase.auth.getUser();
      if (user?.id && UUID_REGEX.test(user.id)) {
        authUserId = user.id;
      }
    } catch {
      // Fallback to admin client if server cookies are unavailable
      supabase = getSupabaseAdminClient();
    }

    if (!supabase) {
      supabase = getSupabaseAdminClient();
    }

    // 4. Resolve package record
    const isGeneral = !rawPkgId || rawPkgId === "general" || rawPkgId === "null" || rawPkgId === "undefined";
    let finalPackageId: string | null = null;
    let finalPackageTitle: string | null = "General Pilgrimage Enquiry";
    let finalDestination: string | null = destination || "India";

    if (!isGeneral) {
      let pkgQuery = supabase
        .from("packages")
        .select("id, name, slug, location, destination_name, is_active");

      if (UUID_REGEX.test(rawPkgId)) {
        pkgQuery = pkgQuery.eq("id", rawPkgId);
      } else if (rawPkgSlug) {
        pkgQuery = pkgQuery.eq("slug", rawPkgSlug);
      } else {
        pkgQuery = pkgQuery.eq("slug", rawPkgId);
      }

      const { data: pkgData, error: pkgError } = await pkgQuery.eq("is_active", true).maybeSingle();

      if (pkgError) {
        console.error("Server API package verification error:", pkgError);
      }

      if (!pkgData) {
        return NextResponse.json(
          {
            success: false,
            message: "We couldn’t verify the selected package. Please refresh the page or choose the package again.",
          },
          { status: 400 }
        );
      }

      finalPackageId = pkgData.id;
      finalPackageTitle = pkgData.name;
      finalDestination = pkgData.destination_name || pkgData.location || destination || "India";
    }

    // 5. Check for existing submission by submission_id (Idempotency)
    const { data: existingEnquiry } = await supabase
      .from("enquiries")
      .select("id, reference_number, created_at, submission_id")
      .eq("submission_id", submissionId)
      .maybeSingle();

    if (existingEnquiry) {
      return NextResponse.json({
        success: true,
        reference: existingEnquiry.reference_number,
        id: existingEnquiry.id,
        submissionId: existingEnquiry.submission_id,
        createdAt: existingEnquiry.created_at,
        message: "Enquiry submitted successfully.",
      });
    }

    // 6. Insert row into public.enquiries
    const insertRow: any = {
      submission_id: submissionId,
      user_id: authUserId,
      package_id: finalPackageId,
      package_title: finalPackageTitle,
      destination: finalDestination,
      travel_timing: travelTiming,
      preferred_month: preferredMonth,
      start_date: startDate,
      end_date: endDate,
      departure_city: departureCity,
      date_flexibility: dateFlexibility,
      adults,
      children,
      senior_citizens: seniors,
      infants,
      special_assistance: Array.isArray(specialAssistance) && specialAssistance.length > 0 ? specialAssistance : null,
      full_name: fullName,
      email: email || null,
      phone: fullPhone,
      phone_country_code: phoneCountryCode,
      preferred_contact_method: preferredContactMethod,
      preferred_contact_time: preferredContactTime,
      message,
      source,
      consent,
      whatsapp_updates: whatsappUpdates,
      status: "submitted",
    };

    // 6. Execute insert via secure submit_enquiry RPC (works reliably with anon and authenticated client)
    const { data: rpcData, error: rpcError } = await (supabase.rpc as any)("submit_enquiry", {
      p_submission_id: submissionId,
      p_user_id: authUserId,
      p_package_id: finalPackageId,
      p_package_title: finalPackageTitle,
      p_destination: finalDestination,
      p_travel_timing: travelTiming,
      p_preferred_month: preferredMonth,
      p_start_date: startDate,
      p_end_date: endDate,
      p_departure_city: departureCity,
      p_date_flexibility: dateFlexibility,
      p_adults: adults,
      p_children: children,
      p_senior_citizens: seniors,
      p_infants: infants,
      p_special_assistance: Array.isArray(specialAssistance) && specialAssistance.length > 0 ? specialAssistance : null,
      p_full_name: fullName,
      p_email: email || null,
      p_phone: fullPhone,
      p_phone_country_code: phoneCountryCode,
      p_preferred_contact_method: preferredContactMethod,
      p_preferred_contact_time: preferredContactTime,
      p_message: message,
      p_source: source,
      p_consent: consent,
      p_whatsapp_updates: whatsappUpdates,
    });

    if (!rpcError && rpcData) {
      const inserted = Array.isArray(rpcData) ? rpcData[0] : rpcData;
      if (inserted) {
        return NextResponse.json({
          success: true,
          reference: inserted.reference_number,
          id: inserted.id,
          submissionId: inserted.submission_id,
          createdAt: inserted.created_at,
          message: "Enquiry submitted successfully.",
          data: inserted,
        });
      }
    }

    // Direct table insert fallback
    const { data: inserted, error: insertError } = await supabase
      .from("enquiries")
      .insert(insertRow)
      .select("id, reference_number, created_at, submission_id")
      .single();

    if (insertError) {
      console.error("Supabase insert error in /api/enquiries:", insertError || rpcError);
      return NextResponse.json(
        {
          success: false,
          message: "Could not save enquiry to the database. Please try again.",
          details: insertError?.message || rpcError?.message,
        },
        { status: 500 }
      );
    }

    return NextResponse.json({
      success: true,
      reference: inserted.reference_number,
      id: inserted.id,
      submissionId: inserted.submission_id,
      createdAt: inserted.created_at,
      message: "Enquiry submitted successfully.",
      data: inserted,
    });
  } catch (err: any) {
    console.error("Unexpected enquiry submission error:", err);
    return NextResponse.json(
      { success: false, message: "We could not submit your enquiry right now. Please try again." },
      { status: 500 }
    );
  }
}
