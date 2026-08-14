import { getSupabaseBrowserClient } from "@/lib/supabase/client";
import { getUserFriendlyError, SupabaseError } from "@/lib/supabase/errors";
import type { Database } from "@/lib/supabase/types";

export type EnquiryRow = Database["public"]["Tables"]["enquiries"]["Row"];

export interface CreateEnquiryInput {
  submissionId?: string;
  packageId?: string | null;
  packageSlug?: string | null;
  packageTitle?: string | null;
  destination?: string | null;

  travelTiming?: "flexible-month" | "flexible_month" | "exact-dates" | "exact_dates" | "undecided";
  travelPreference?: "flexible-month" | "flexible_month" | "exact-dates" | "exact_dates" | "undecided";
  preferredMonth?: string | null;
  startDate?: string | null;
  departureDate?: string | null;
  endDate?: string | null;
  returnDate?: string | null;
  departureCity: string;
  dateFlexibility?: string | null;

  adults?: number;
  children?: number;
  seniorCitizens?: number;
  seniors?: number;
  infants?: number;

  specialAssistance?: string[] | null;
  assistance?: string[] | null;

  fullName: string;
  email?: string | null;
  phone: string;
  phoneCountryCode?: string | null;
  preferredContactMethod?: "phone" | "whatsapp" | "email";
  preferredContactTime?: string | null;
  message?: string | null;
  additionalRequests?: string | null;

  consent: boolean;
  contactConsent?: boolean;
  whatsappUpdates?: boolean;
  source?: string | null;
  status?: string;
}

export interface EnquiryResult {
  success: boolean;
  reference?: string;
  id?: string;
  submissionId?: string;
  createdAt?: string;
  error?: string;
  errors?: Record<string, string>;
  data?: any;
}

const UUID_REGEX = /^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$/i;

/**
 * Normalizes phone numbers by stripping whitespace, hyphens, and brackets.
 */
export function normalizePhoneNumber(phone: string, countryCode = "+91"): { fullPhone: string; cleanPhone: string; isValid: boolean } {
  if (!phone) return { fullPhone: "", cleanPhone: "", isValid: false };
  const clean = phone.trim().replace(/[\s\-()]/g, "");

  if (countryCode === "+91" || clean.startsWith("+91") || (clean.length === 10 && /^[6-9]/.test(clean))) {
    const rawDigits = clean.replace(/^\+91/, "").replace(/^0/, "");
    const isValid = /^[6-9]\d{9}$/.test(rawDigits);
    return {
      fullPhone: `+91 ${rawDigits}`,
      cleanPhone: rawDigits,
      isValid,
    };
  }

  const isValid = /^\+?[0-9]{7,15}$/.test(clean);
  return {
    fullPhone: clean.startsWith("+") ? clean : `${countryCode} ${clean}`,
    cleanPhone: clean,
    isValid,
  };
}

/**
 * Validates enquiry input fields on frontend/client before submission.
 */
export function validateEnquiryInput(input: CreateEnquiryInput): { isValid: boolean; errors: Record<string, string> } {
  const errors: Record<string, string> = {};

  // Full Name
  if (!input.fullName || !input.fullName.trim()) {
    errors.fullName = "Full name is required.";
  }

  // Phone
  const countryCode = input.phoneCountryCode || "+91";
  const { isValid: isPhoneValid } = normalizePhoneNumber(input.phone || "", countryCode);
  if (!input.phone || !input.phone.trim()) {
    errors.phone = "Phone number is required.";
  } else if (!isPhoneValid) {
    errors.phone = countryCode === "+91"
      ? "Please enter a valid 10-digit Indian mobile number (e.g. 9876543210)."
      : "Please enter a valid phone number (7-15 digits).";
  }

  // Email
  const cleanEmail = input.email ? input.email.trim().toLowerCase() : "";
  if (cleanEmail) {
    const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
    if (!emailRegex.test(cleanEmail)) {
      errors.email = "Please enter a valid email address.";
    }
  }

  // Departure City
  if (!input.departureCity || !input.departureCity.trim()) {
    errors.departureCity = "Please enter your departure city.";
  }

  // Travel Timing
  const rawTiming = input.travelTiming || input.travelPreference || "flexible_month";
  const timing = rawTiming === "flexible-month" ? "flexible_month" : rawTiming === "exact-dates" ? "exact_dates" : rawTiming;

  if (timing === "flexible_month") {
    if (!input.preferredMonth || !input.preferredMonth.trim()) {
      errors.preferredMonth = "Please select a preferred travel month.";
    }
  } else if (timing === "exact_dates") {
    const start = input.startDate || input.departureDate;
    const end = input.endDate || input.returnDate;

    if (!start) {
      errors.startDate = "Departure date is required.";
    }
    if (!end) {
      errors.endDate = "Return date is required.";
    }

    if (start && end) {
      const depDate = new Date(start);
      const retDate = new Date(end);
      const today = new Date();
      today.setHours(0, 0, 0, 0);

      if (depDate < today) {
        errors.startDate = "Departure date cannot be in the past.";
      }
      if (retDate < depDate) {
        errors.endDate = "Return date cannot be earlier than departure date.";
      }
    }
  }

  // Travellers
  const adults = Number(input.adults ?? 0);
  const children = Number(input.children ?? 0);
  const seniors = Number(input.seniorCitizens ?? input.seniors ?? 0);
  const infants = Number(input.infants ?? 0);

  if (adults < 0 || children < 0 || seniors < 0 || infants < 0) {
    errors.travellers = "Traveller counts cannot be negative.";
  } else if (adults + children + seniors + infants < 1) {
    errors.travellers = "At least 1 traveller is required.";
  }

  // Consent
  const consentVal = Boolean(input.consent ?? input.contactConsent);
  if (!consentVal) {
    errors.consent = "You must agree to be contacted to submit this enquiry.";
  }

  return {
    isValid: Object.keys(errors).length === 0,
    errors,
  };
}

/**
 * Centralized function to submit an enquiry.
 * Handles authenticated user resolution, package UUID resolution,
 * deduplication via submission_id, payload creation, and Supabase insertion.
 */
export async function createEnquiry(input: CreateEnquiryInput): Promise<EnquiryResult> {
  const validation = validateEnquiryInput(input);
  if (!validation.isValid) {
    return {
      success: false,
      error: "Please correct the highlighted fields.",
      errors: validation.errors,
    };
  }

  const supabase = getSupabaseBrowserClient();

  // 1. Resolve Authenticated User ID (if session exists)
  let authUserId: string | null = null;
  try {
    const { data: { user } } = await supabase.auth.getUser();
    if (user?.id && UUID_REGEX.test(user.id)) {
      authUserId = user.id;
    }
  } catch (authErr) {
    console.warn("Could not retrieve Supabase auth user:", authErr);
  }

  // 2. Resolve Package Record (Authoritative UUID & Name)
  const rawPkgId = input.packageId?.trim() || "";
  const rawPkgSlug = input.packageSlug?.trim() || "";
  const isGeneral = !rawPkgId || rawPkgId === "general" || rawPkgId === "null" || rawPkgId === "undefined";

  let resolvedPackageId: string | null = null;
  let resolvedPackageTitle: string | null = "General Pilgrimage Enquiry";
  let resolvedDestination: string | null = input.destination || "India";

  if (!isGeneral) {
    try {
      let packageQuery = supabase
        .from("packages")
        .select("id, name, slug, location, destination_name, is_active");

      if (UUID_REGEX.test(rawPkgId)) {
        packageQuery = packageQuery.eq("id", rawPkgId);
      } else if (rawPkgSlug) {
        packageQuery = packageQuery.eq("slug", rawPkgSlug);
      } else {
        packageQuery = packageQuery.eq("slug", rawPkgId);
      }

      const { data: pkgData, error: pkgError } = await packageQuery.eq("is_active", true).maybeSingle();

      if (pkgError) {
        console.error("Error verifying package in database:", pkgError);
      }

      if (!pkgData) {
        return {
          success: false,
          error: "We couldn’t verify the selected package. Please refresh the page or choose the package again.",
        };
      }

      resolvedPackageId = pkgData.id;
      resolvedPackageTitle = pkgData.name;
      resolvedDestination = pkgData.destination_name || pkgData.location || input.destination || "India";
    } catch (err) {
      console.error("Failed to query package from Supabase:", err);
      return {
        success: false,
        error: "We couldn’t verify the selected package. Please refresh the page or choose the package again.",
      };
    }
  }

  // 3. Prepare stable submission_id for idempotency & deduplication
  const submissionId = input.submissionId || crypto.randomUUID();

  // 4. Normalize fields
  const countryCode = input.phoneCountryCode || "+91";
  const { fullPhone } = normalizePhoneNumber(input.phone, countryCode);

  const rawTiming = input.travelTiming || input.travelPreference || "flexible_month";
  const timing = rawTiming === "flexible-month" ? "flexible_month" : rawTiming === "exact-dates" ? "exact_dates" : rawTiming;

  const preferredMonth = timing === "flexible_month" ? (input.preferredMonth || null) : null;
  const startDate = timing === "exact_dates" ? (input.startDate || input.departureDate || null) : null;
  const endDate = timing === "exact_dates" ? (input.endDate || input.returnDate || null) : null;

  const adults = Number(input.adults ?? 1);
  const children = Number(input.children ?? 0);
  const seniors = Number(input.seniorCitizens ?? input.seniors ?? 0);
  const infants = Number(input.infants ?? 0);

  const specialAssistance = input.specialAssistance || input.assistance || [];
  const message = (input.message || input.additionalRequests || "").trim() || null;
  const source = input.source || "homepage";
  const consent = Boolean(input.consent ?? input.contactConsent);
  const whatsappUpdates = Boolean(input.whatsappUpdates ?? false);

  const payload: Database["public"]["Tables"]["enquiries"]["Insert"] = {
    submission_id: submissionId,
    user_id: authUserId,
    package_id: resolvedPackageId,
    package_title: resolvedPackageTitle,
    destination: resolvedDestination,
    travel_timing: timing,
    preferred_month: preferredMonth,
    start_date: startDate,
    end_date: endDate,
    departure_city: input.departureCity.trim(),
    date_flexibility: input.dateFlexibility || null,
    adults,
    children,
    senior_citizens: seniors,
    infants,
    special_assistance: specialAssistance.length > 0 ? specialAssistance : null,
    full_name: input.fullName.trim(),
    email: input.email ? input.email.trim().toLowerCase() : null,
    phone: fullPhone,
    phone_country_code: countryCode,
    preferred_contact_method: input.preferredContactMethod || "whatsapp",
    preferred_contact_time: input.preferredContactTime || "Any time",
    message,
    source,
    consent,
    whatsapp_updates: whatsappUpdates,
    status: "submitted",
  };

  try {
    // 1. Try secure RPC function (Works seamlessly for both authenticated & guest users)
    const { data: rpcData, error: rpcError } = await (supabase.rpc as any)("submit_enquiry", {
      p_submission_id: submissionId,
      p_user_id: authUserId,
      p_package_id: resolvedPackageId,
      p_package_title: resolvedPackageTitle,
      p_destination: resolvedDestination,
      p_travel_timing: timing,
      p_preferred_month: preferredMonth,
      p_start_date: startDate,
      p_end_date: endDate,
      p_departure_city: input.departureCity.trim(),
      p_date_flexibility: input.dateFlexibility || null,
      p_adults: adults,
      p_children: children,
      p_senior_citizens: seniors,
      p_infants: infants,
      p_special_assistance: specialAssistance.length > 0 ? specialAssistance : null,
      p_full_name: input.fullName.trim(),
      p_email: input.email ? input.email.trim().toLowerCase() : null,
      p_phone: fullPhone,
      p_phone_country_code: countryCode,
      p_preferred_contact_method: input.preferredContactMethod || "whatsapp",
      p_preferred_contact_time: input.preferredContactTime || "Any time",
      p_message: message,
      p_source: source,
      p_consent: consent,
      p_whatsapp_updates: whatsappUpdates,
    });

    if (!rpcError && rpcData) {
      const row = Array.isArray(rpcData) ? rpcData[0] : rpcData;
      if (row) {
        return {
          success: true,
          reference: row.reference_number || undefined,
          id: row.id,
          submissionId: row.submission_id || submissionId,
          createdAt: row.created_at,
          data: row,
        };
      }
    }

    // 2. Direct table insert fallback
    const { data, error } = await supabase
      .from("enquiries")
      .insert(payload)
      .select("id, reference_number, created_at, submission_id")
      .maybeSingle();

    if (error) {
      const errObj = error as { message: string; code?: string };
      // If error is unique constraint violation on submission_id, fetch existing record
      if (errObj.code === "23505" && errObj.message.includes("submission_id")) {
        const { data: existing } = await supabase
          .from("enquiries")
          .select("id, reference_number, created_at, submission_id")
          .eq("submission_id", submissionId)
          .maybeSingle();

        if (existing) {
          return {
            success: true,
            reference: existing.reference_number || undefined,
            id: existing.id,
            submissionId: existing.submission_id || submissionId,
            createdAt: existing.created_at,
            data: existing,
          };
        }
      }

      // If RLS blocked returning clause for guest, submit through API endpoint
      if (errObj.code === "42501" || errObj.code === "PGRST116") {
        return await submitViaApiRoute(payload);
      }

      console.error("Supabase insert enquiry error:", error);
      const friendlyMessage = getUserFriendlyError(new SupabaseError(errObj.message, errObj.code));
      return {
        success: false,
        error: friendlyMessage,
      };
    }

    if (!data) {
      return await submitViaApiRoute(payload);
    }

    return {
      success: true,
      reference: data?.reference_number || undefined,
      id: data?.id,
      submissionId: data?.submission_id || submissionId,
      createdAt: data?.created_at,
      data,
    };
  } catch (err: any) {
    console.warn("Client Supabase insert encountered exception, trying server route fallback:", err);
    return await submitViaApiRoute(payload);
  }
}

/**
 * Fallback to trusted server API route for guest submissions or network retries.
 */
async function submitViaApiRoute(payload: any): Promise<EnquiryResult> {
  try {
    const res = await fetch("/api/enquiries", {
      method: "POST",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify(payload),
    });

    const resData = await res.json();
    if (!res.ok || !resData.success) {
      return {
        success: false,
        error: resData.message || resData.error || "Failed to submit enquiry. Please try again.",
        errors: resData.errors,
      };
    }

    return {
      success: true,
      reference: resData.reference,
      id: resData.id,
      submissionId: resData.submissionId || payload.submission_id,
      createdAt: resData.createdAt,
      data: resData.data,
    };
  } catch (fetchErr: any) {
    console.error("API route enquiry submission error:", fetchErr);
    return {
      success: false,
      error: "Network error occurred while submitting enquiry. Your information has been preserved. Please try again.",
    };
  }
}

/**
 * Retrieve enquiries submitted by the current authenticated user.
 */
export async function getMyEnquiries(): Promise<EnquiryRow[]> {
  try {
    const supabase = getSupabaseBrowserClient();
    const { data: { user } } = await supabase.auth.getUser();
    if (!user) return [];

    const { data, error } = await supabase
      .from("enquiries")
      .select("*")
      .eq("user_id", user.id)
      .order("created_at", { ascending: false });

    if (error) {
      console.error("getMyEnquiries error:", error);
      return [];
    }

    return data || [];
  } catch (err) {
    console.error("getMyEnquiries exception:", err);
    return [];
  }
}

/**
 * Retrieve a specific enquiry by reference number.
 */
export async function getEnquiryByReference(reference: string): Promise<EnquiryRow | null> {
  try {
    const supabase = getSupabaseBrowserClient();
    const { data, error } = await supabase
      .from("enquiries")
      .select("*")
      .eq("reference_number", reference.trim())
      .maybeSingle();

    if (error) {
      console.error("getEnquiryByReference error:", error);
      return null;
    }

    return data;
  } catch (err) {
    console.error("getEnquiryByReference exception:", err);
    return null;
  }
}
