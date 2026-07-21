import { NextResponse } from "next/server";

export async function POST(request: Request) {
  try {
    const body = await request.json();

    const {
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
    } = body;

    // Backend Validation checks
    const errors: Record<string, string> = {};

    if (!packageId || !packageTitle) {
      errors.package = "Package selection is required.";
    }

    if (!fullName || !fullName.trim()) {
      errors.fullName = "Full name is required.";
    }

    if (!phone || !phone.trim()) {
      errors.phone = "Phone number is required.";
    } else {
      // Basic check for numeric content, length, or formats
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
        if (ret < dep) {
          errors.returnDate = "Return date must be after departure date.";
        }
      }
    } else if (travelPreference !== "undecided") {
      errors.travelPreference = "Invalid travel preference selection.";
    }

    const totalTravellers = (adults || 0) + (seniors || 0) + (children || 0) + (infants || 0);
    if (totalTravellers < 1) {
      errors.travellers = "At least one traveller is required.";
    }

    if (!contactConsent) {
      errors.contactConsent = "You must consent to be contacted to submit the form.";
    }

    if (Object.keys(errors).length > 0) {
      return NextResponse.json({ success: false, errors }, { status: 400 });
    }

    // Success response: Generate mock reference code
    const randNum = Math.floor(1000 + Math.random() * 9000);
    const reference = `OJ-2026-${randNum}`;

    return NextResponse.json({
      success: true,
      reference,
      message: "Enquiry submitted successfully.",
      data: {
        packageId,
        packageTitle,
        fullName,
        preferredContactMethod,
        preferredContactTime
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
