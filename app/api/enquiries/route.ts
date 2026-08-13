import { NextResponse } from "next/server";

export async function POST(request: Request) {
  try {
    const body = await request.json();

    // Extract values with support for dual parameter names
    const packageId = body.packageId || "general";
    const packageTitle = body.packageTitle || body.packageName || (packageId === "general" ? "General Pilgrimage Enquiry" : "");
    const destination = body.destination || "";
    const travelPreference = body.travelPreference || body.travelTiming || "flexible-month";
    const preferredMonth = body.preferredMonth || "";
    const departureDate = body.departureDate || body.startDate || "";
    const returnDate = body.returnDate || body.endDate || "";
    const departureCity = body.departureCity || "";
    const dateFlexibility = body.dateFlexibility || "";

    const adults = Number(body.adults ?? body.adultsCount ?? 0);
    const seniors = Number(body.seniors ?? body.seniorCitizens ?? 0);
    const children = Number(body.children ?? 0);
    const infants = Number(body.infants ?? 0);

    const assistance = body.assistance || body.specialAssistance || [];
    const fullName = body.fullName || "";
    const phoneCountryCode = body.phoneCountryCode || "+91";
    const phone = body.phone || "";
    const email = body.email || "";
    const preferredContactMethod = body.preferredContactMethod || "whatsapp";
    const preferredContactTime = body.preferredContactTime || "Any time";
    const additionalRequests = body.additionalRequests || body.message || "";
    const contactConsent = Boolean(body.contactConsent ?? body.consent);
    const whatsappUpdates = Boolean(body.whatsappUpdates);

    // Backend Validation checks
    const errors: Record<string, string> = {};

    if (!fullName || !fullName.trim()) {
      errors.fullName = "Full name is required.";
    }

    if (!phone || !phone.trim()) {
      errors.phone = "Phone number is required.";
    } else {
      const cleanPhone = phone.replace(/[\s\-()]/g, "");
      if (!/^\+?[0-9]{7,15}$/.test(cleanPhone)) {
        errors.phone = "Please enter a valid phone number (e.g. 9876543210).";
      }
    }

    if (email && email.trim() !== "") {
      const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
      if (!emailRegex.test(email.trim())) {
        errors.email = "Please enter a valid email address.";
      }
    }

    if (!departureCity || !departureCity.trim()) {
      errors.departureCity = "Departure city is required.";
    }

    if (travelPreference === "flexible-month") {
      if (!preferredMonth) {
        errors.preferredMonth = "Please select a preferred month.";
      }
    } else if (travelPreference === "exact-dates") {
      if (!departureDate) {
        errors.departureDate = "Departure date is required.";
      }
      if (!returnDate) {
        errors.returnDate = "Return date is required.";
      }
      if (departureDate && returnDate) {
        const dep = new Date(departureDate);
        const ret = new Date(returnDate);
        const today = new Date();
        today.setHours(0, 0, 0, 0);

        if (dep < today) {
          errors.departureDate = "Departure date cannot be in the past.";
        }
        if (ret < dep) {
          errors.returnDate = "Return date must be after departure date.";
        }
      }
    } else if (travelPreference !== "undecided") {
      errors.travelPreference = "Invalid travel preference selection.";
    }

    const totalTravellers = adults + seniors + children + infants;
    if (totalTravellers < 1) {
      errors.travellers = "At least one traveller is required.";
    }

    if (!contactConsent) {
      errors.contactConsent = "You must consent to be contacted to submit the form.";
    }

    if (Object.keys(errors).length > 0) {
      return NextResponse.json({ success: false, errors }, { status: 400 });
    }

    // Success response: Generate reference code
    const randNum = Math.floor(1000 + Math.random() * 9000);
    const reference = `OJ-2026-${randNum}`;

    // Persist enquiry into Supabase
    try {
      const url = process.env.NEXT_PUBLIC_SUPABASE_URL;
      const key = process.env.SUPABASE_SERVICE_ROLE_KEY || process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY;
      if (url && key) {
        const { createClient } = await import("@supabase/supabase-js");
        const supabase = createClient(url, key);

        const travelDatesText = travelPreference === "exact-dates"
          ? `${departureDate} to ${returnDate}`
          : preferredMonth || "Flexible";

        const travellersText = `${totalTravellers} traveller(s) (${adults} adults, ${seniors} seniors, ${children} children, ${infants} infants)`;

        const fullPhone = `${phoneCountryCode} ${phone}`;

        await (supabase.from("enquiries") as any).insert({
          package_id: packageId !== "general" ? packageId : null,
          package_title: packageTitle || null,
          destination: destination || null,
          full_name: fullName,
          email: email || "noemail@onejourney.app",
          phone: fullPhone,
          departure_city: departureCity || null,
          preferred_month: preferredMonth || null,
          start_date: departureDate || null,
          end_date: returnDate || null,
          adults: adults || 1,
          children: children || 0,
          senior_citizens: seniors || 0,
          infants: infants || 0,
          special_assistance: assistance || [],
          message: additionalRequests || null,
          reference_number: reference,
          status: "pending",
        });
      }
    } catch (dbErr) {
      console.warn("Supabase enquiry persistence notice:", dbErr);
    }

    return NextResponse.json({
      success: true,
      reference,
      message: "Enquiry submitted successfully.",
      data: {
        packageId,
        packageTitle,
        destination,
        travelPreference,
        preferredMonth,
        departureDate,
        returnDate,
        departureCity,
        dateFlexibility,
        adults,
        seniors,
        children,
        infants,
        totalTravellers,
        assistance,
        fullName,
        phoneCountryCode,
        phone,
        email,
        preferredContactMethod,
        preferredContactTime,
        additionalRequests,
        contactConsent,
        whatsappUpdates
      }
    });

  } catch (err) {
    console.error("Enquiry submission error:", err);
    return NextResponse.json(
      { success: false, message: "We could not submit your enquiry right now. Please try again." },
      { status: 500 }
    );
  }
}

