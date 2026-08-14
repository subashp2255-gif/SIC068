import { getSupabaseBrowserClient } from "@/lib/supabase/client";
import { getUserFriendlyError, SupabaseError } from "@/lib/supabase/errors";
import type { Database } from "@/lib/supabase/types";

export interface AdminAnalyticsKPIs {
  total_packages: number;
  active_packages: number;
  draft_packages: number;
  total_enquiries: number;
  new_enquiries: number;
  contacted_enquiries: number;
  converted_enquiries: number;
  this_month_enquiries: number;
  total_destinations: number;
  total_users: number;
  average_rating: number;
}

export interface AdminAnalytics {
  kpis: AdminAnalyticsKPIs;
  monthly_enquiries: { month: string; count: number }[];
  source_breakdown: { source: string; count: number }[];
  status_breakdown: { status: string; count: number }[];
  category_breakdown: { category: string; count: number }[];
  top_packages: { title: string; enquiries_count: number }[];
}

export interface EnquiryFilterOptions {
  status?: string;
  source?: string;
  searchQuery?: string;
  page?: number;
  limit?: number;
}

export interface PackageFilterOptions {
  status?: "all" | "active" | "draft";
  category?: string;
  region?: string;
  searchQuery?: string;
  page?: number;
  limit?: number;
}

export interface AdminPackageInput {
  id?: string;
  name: string;
  slug: string;
  destination_name?: string;
  summary?: string;
  description?: string;
  location?: string;
  region?: string;
  category?: string;
  sub_category?: string;
  duration_days: number;
  duration_nights?: number;
  duration_label?: string;
  base_price?: number;
  price_basis?: string;
  currency?: string;
  default_departure_city?: string;
  best_season?: string;
  difficulty_level?: string;
  walking_level?: string;
  pace?: string;
  food_types?: string[];
  transport_types?: string[];
  tags?: string[];
  traveller_types?: string[];
  route?: string[];
  destinations_text?: string;
  image?: string;
  alt_text?: string;
  category_label?: string;
  traveller_type?: string;
  senior_friendly?: boolean;
  child_friendly?: boolean;
  wheelchair_access?: boolean;
  veg_meals?: boolean;
  accessibility_status?: string;
  featured?: boolean;
  is_active?: boolean;
  cancellation_summary?: string;

  itinerary?: any[];
  features?: { feature_type: string; title: string; description?: string }[];
  departures?: any[];
  accessibility?: any;
  media?: any[];
  category_ids?: string[];
  destination_ids?: string[];
}

export interface AuditLogItem {
  id: string;
  admin_user_id: string | null;
  admin_email: string | null;
  action: string;
  entity_type: string;
  entity_id: string | null;
  entity_name: string | null;
  old_values: any;
  new_values: any;
  metadata: any;
  created_at: string;
}

/**
 * Checks if the current authenticated user has an active 'admin' role.
 */
export async function checkIsAdmin(): Promise<{ isAdmin: boolean; user: any | null }> {
  try {
    const supabase = getSupabaseBrowserClient();
    const { data: { user } } = await supabase.auth.getUser();
    if (!user) return { isAdmin: false, user: null };

    const { data: hasAdminRole } = await (supabase.rpc as any)("is_admin");
    return { isAdmin: Boolean(hasAdminRole), user };
  } catch (err) {
    console.error("checkIsAdmin error:", err);
    return { isAdmin: false, user: null };
  }
}

/**
 * Fetches real aggregated analytics for the admin dashboard.
 */
export async function fetchAdminAnalytics(): Promise<AdminAnalytics | null> {
  try {
    const supabase = getSupabaseBrowserClient();
    const { data, error } = await (supabase.rpc as any)("get_admin_dashboard_analytics");
    if (error) {
      console.error("fetchAdminAnalytics RPC error:", error);
      return null;
    }
    return data as AdminAnalytics;
  } catch (err) {
    console.error("fetchAdminAnalytics exception:", err);
    return null;
  }
}

/**
 * Fetches filtered enquiries list for admin enquiry manager.
 */
export async function fetchAdminEnquiries(options: EnquiryFilterOptions = {}) {
  try {
    const supabase = getSupabaseBrowserClient();
    const page = options.page || 1;
    const limit = options.limit || 15;
    const from = (page - 1) * limit;
    const to = from + limit - 1;

    let query = supabase
      .from("enquiries")
      .select("*", { count: "exact" })
      .order("created_at", { ascending: false })
      .range(from, to);

    if (options.status && options.status !== "all") {
      query = query.eq("status", options.status);
    }
    if (options.source && options.source !== "all") {
      query = query.eq("source", options.source);
    }
    if (options.searchQuery?.trim()) {
      const q = `%${options.searchQuery.trim()}%`;
      query = query.or(`full_name.ilike.${q},email.ilike.${q},phone.ilike.${q},reference_number.ilike.${q},package_title.ilike.${q}`);
    }

    const { data, error, count } = await query;
    if (error) {
      console.error("fetchAdminEnquiries error:", error);
      return { enquiries: [], total: 0 };
    }

    return { enquiries: data || [], total: count || 0 };
  } catch (err) {
    console.error("fetchAdminEnquiries exception:", err);
    return { enquiries: [], total: 0 };
  }
}

/**
 * Updates an enquiry's status and logs the administrative change in audit_logs.
 */
export async function updateEnquiryStatus(enquiryId: string, newStatus: string, internalNotes?: string) {
  try {
    const supabase = getSupabaseBrowserClient();

    // 1. Fetch old record for audit
    const { data: oldEnquiry } = await supabase
      .from("enquiries")
      .select("*")
      .eq("id", enquiryId)
      .single();

    // 2. Update enquiry status
    const updateData: any = {
      status: newStatus,
      updated_at: new Date().toISOString(),
    };
    if (internalNotes !== undefined) {
      updateData.message = oldEnquiry?.message ? `${oldEnquiry.message}\n[Note]: ${internalNotes}` : internalNotes;
    }

    const { data: updated, error } = await supabase
      .from("enquiries")
      .update(updateData)
      .eq("id", enquiryId)
      .select()
      .single();

    if (error) throw error;

    // 3. Log audit action
    try {
      await (supabase.rpc as any)("log_audit_action", {
        p_action: "enquiry.status_updated",
        p_entity_type: "enquiry",
        p_entity_id: enquiryId,
        p_entity_name: oldEnquiry?.reference_number || "Enquiry",
        p_old_values: { status: oldEnquiry?.status },
        p_new_values: { status: newStatus },
        p_metadata: { notes: internalNotes },
      });
    } catch (auditErr) {
      console.warn("Audit log notice:", auditErr);
    }

    return { success: true, data: updated };
  } catch (err: any) {
    console.error("updateEnquiryStatus exception:", err);
    return { success: false, error: err.message || "Failed to update enquiry status" };
  }
}

/**
 * Marks an enquiry as Verified & Clarified with structured checklist items
 */
export async function markEnquiryVerified(
  enquiryId: string,
  checklist: string[],
  verificationNotes: string,
  targetStatus: "verified" | "ready_to_book" = "verified"
) {
  try {
    const supabase = getSupabaseBrowserClient();
    const { data: { user } } = await supabase.auth.getUser();

    const { data: oldEnquiry } = await supabase
      .from("enquiries")
      .select("*")
      .eq("id", enquiryId)
      .single();

    const { data: updated, error } = await supabase
      .from("enquiries")
      .update({
        status: targetStatus,
        verified_at: new Date().toISOString(),
        verified_by: user?.id || null,
        verification_checklist: checklist,
        verification_notes: verificationNotes,
        updated_at: new Date().toISOString(),
      } as any)
      .eq("id", enquiryId)
      .select()
      .single();

    if (error) throw error;

    try {
      await (supabase.rpc as any)("log_audit_action", {
        p_action: "enquiry.verified",
        p_entity_type: "enquiry",
        p_entity_id: enquiryId,
        p_entity_name: oldEnquiry?.reference_number || "Enquiry",
        p_old_values: { status: oldEnquiry?.status },
        p_new_values: { status: targetStatus, checklist, notes: verificationNotes },
        p_metadata: { verified_by_email: user?.email },
      });
    } catch (auditErr) {
      console.warn("Audit log notice:", auditErr);
    }

    return { success: true, data: updated };
  } catch (err: any) {
    console.error("markEnquiryVerified exception:", err);
    return { success: false, error: err.message || "Failed to mark enquiry as verified" };
  }
}

export interface ConfirmBookingParams {
  enquiryId: string;
  packageAmount: number;
  additionalServicesAmount: number;
  totalAmount: number;
  verificationNotes?: string;
  adminNotes?: string;
}

/**
 * Executes atomic booking creation and enquiry confirmation via Supabase RPC
 */
export async function confirmPilgrimBooking(params: ConfirmBookingParams) {
  try {
    const supabase = getSupabaseBrowserClient();

    const { data, error } = await (supabase.rpc as any)("confirm_pilgrim_booking", {
      p_enquiry_id: params.enquiryId,
      p_package_amount: params.packageAmount,
      p_additional_services: params.additionalServicesAmount,
      p_total_amount: params.totalAmount,
      p_verification_notes: params.verificationNotes || null,
      p_admin_notes: params.adminNotes || null,
    });

    if (error) throw error;

    return { success: true, data };
  } catch (err: any) {
    console.error("confirmPilgrimBooking exception:", err);
    return { success: false, error: err.message || "Failed to confirm booking" };
  }
}

/**
 * Fetches booking details for an enquiry or booking reference
 */
export async function fetchBookingDetails(bookingIdOrEnquiryId: string) {
  try {
    const supabase = getSupabaseBrowserClient();
    const isUuid = /^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$/i.test(bookingIdOrEnquiryId);

    let query = (supabase as any).from("bookings").select("*");
    if (isUuid) {
      query = query.or(`id.eq.${bookingIdOrEnquiryId},enquiry_id.eq.${bookingIdOrEnquiryId}`);
    } else {
      query = query.eq("booking_id", bookingIdOrEnquiryId);
    }

    const { data, error } = await query.single();
    if (error) throw error;

    return { success: true, booking: data };
  } catch (err: any) {
    return { success: false, error: err.message || "Booking not found" };
  }
}


/**
 * Fetches filtered packages list for the admin catalogue manager.
 */
export async function fetchAdminPackages(options: PackageFilterOptions = {}) {
  try {
    const supabase = getSupabaseBrowserClient();
    const page = options.page || 1;
    const limit = options.limit || 15;
    const from = (page - 1) * limit;
    const to = from + limit - 1;

    let query = supabase
      .from("packages")
      .select(`
        id, slug, name, destination_name, summary, location, region,
        category, sub_category, duration_days, duration_nights, duration_label,
        base_price, currency, image, rating, review_count, seats_left,
        featured, is_active, updated_at, created_at
      `, { count: "exact" })
      .order("updated_at", { ascending: false })
      .range(from, to);

    if (options.status === "active") {
      query = query.eq("is_active", true);
    } else if (options.status === "draft") {
      query = query.eq("is_active", false);
    }

    if (options.category && options.category !== "all") {
      query = query.eq("category", options.category);
    }

    if (options.region && options.region !== "all") {
      query = query.eq("region", options.region);
    }

    if (options.searchQuery?.trim()) {
      const q = `%${options.searchQuery.trim()}%`;
      query = query.or(`name.ilike.${q},slug.ilike.${q},destination_name.ilike.${q},location.ilike.${q}`);
    }

    const { data, error, count } = await query;
    if (error) {
      console.error("fetchAdminPackages error:", error);
      return { packages: [], total: 0 };
    }

    return { packages: data || [], total: count || 0 };
  } catch (err) {
    console.error("fetchAdminPackages exception:", err);
    return { packages: [], total: 0 };
  }
}

/**
 * Fetches complete nested package record (itinerary, features, accessibility, media, departures) for editing.
 */
export async function fetchAdminPackageById(idOrSlug: string) {
  try {
    const supabase = getSupabaseBrowserClient();
    const isUuid = /^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$/i.test(idOrSlug);

    let pkgQuery = supabase.from("packages").select("*");
    if (isUuid) {
      pkgQuery = pkgQuery.eq("id", idOrSlug);
    } else {
      pkgQuery = pkgQuery.eq("slug", idOrSlug);
    }

    const { data: pkg, error: pkgError } = await pkgQuery.maybeSingle();
    if (pkgError || !pkg) return null;

    // Fetch related child tables in parallel
    const [
      { data: itinerary },
      { data: features },
      { data: departures },
      { data: accessibility },
      { data: media },
      { data: categories },
      { data: destinations },
    ] = await Promise.all([
      supabase.from("itinerary_days").select("*").eq("package_id", pkg.id).order("day_number", { ascending: true }),
      supabase.from("package_features").select("*").eq("package_id", pkg.id).order("display_order", { ascending: true }),
      supabase.from("package_departures").select("*").eq("package_id", pkg.id).order("start_date", { ascending: true }),
      supabase.from("package_accessibility").select("*").eq("package_id", pkg.id).maybeSingle(),
      supabase.from("package_media").select("*").eq("package_id", pkg.id).order("display_order", { ascending: true }),
      supabase.from("package_categories").select("category_id").eq("package_id", pkg.id),
      supabase.from("package_destinations").select("destination_id").eq("package_id", pkg.id),
    ]);

    return {
      ...pkg,
      itinerary: itinerary || [],
      features: features || [],
      departures: departures || [],
      accessibility: accessibility || {},
      media: media || [],
      category_ids: categories?.map((c) => c.category_id) || [],
      destination_ids: destinations?.map((d) => d.destination_id) || [],
    };
  } catch (err) {
    console.error("fetchAdminPackageById exception:", err);
    return null;
  }
}

/**
 * Saves or updates a package atomically with all child relations via PostgreSQL RPC transaction.
 */
export async function savePackageAtomic(input: AdminPackageInput) {
  try {
    const supabase = getSupabaseBrowserClient();

    const {
      itinerary = [],
      features = [],
      departures = [],
      accessibility = {},
      media = [],
      category_ids = [],
      destination_ids = [],
      ...pkgFields
    } = input;

    const { data, error } = await (supabase.rpc as any)("save_complete_package", {
      p_package: pkgFields,
      p_itinerary: itinerary,
      p_features: features,
      p_departures: departures,
      p_accessibility: accessibility,
      p_media: media,
      p_category_ids: category_ids,
      p_destination_ids: destination_ids,
    });

    if (error) {
      console.error("savePackageAtomic RPC error:", error);
      return { success: false, error: error.message || "Failed to save package" };
    }

    return { success: true, data };
  } catch (err: any) {
    console.error("savePackageAtomic exception:", err);
    return { success: false, error: err.message || "Failed to save package" };
  }
}

/**
 * Toggles active/draft or archive status for a package.
 */
export async function togglePackageStatus(id: string, isActive: boolean) {
  try {
    const supabase = getSupabaseBrowserClient();
    const { data, error } = await supabase
      .from("packages")
      .update({ is_active: isActive, updated_at: new Date().toISOString() })
      .eq("id", id)
      .select("id, name, slug, is_active")
      .single();

    if (error) throw error;

    await (supabase.rpc as any)("log_audit_action", {
      p_action: isActive ? "package.published" : "package.archived",
      p_entity_type: "package",
      p_entity_id: id,
      p_entity_name: data?.name || "Package",
      p_new_values: { is_active: isActive },
    });

    return { success: true, data };
  } catch (err: any) {
    console.error("togglePackageStatus error:", err);
    return { success: false, error: err.message };
  }
}

/**
 * Permanently deletes a disposable package record and records audit log.
 */
export async function deletePackagePermanent(id: string, name: string) {
  try {
    const supabase = getSupabaseBrowserClient();

    // Check if historical enquiries exist
    const { count: enquiryCount } = await supabase
      .from("enquiries")
      .select("id", { count: "exact", head: true })
      .eq("package_id", id);

    if (enquiryCount && enquiryCount > 0) {
      return {
        success: false,
        error: `This package has ${enquiryCount} associated enquiry records. To preserve historical records, please archive the package instead of deleting it.`,
      };
    }

    const { error } = await supabase.from("packages").delete().eq("id", id);
    if (error) throw error;

    await (supabase.rpc as any)("log_audit_action", {
      p_action: "package.deleted",
      p_entity_type: "package",
      p_entity_id: id,
      p_entity_name: name,
    });

    return { success: true };
  } catch (err: any) {
    console.error("deletePackagePermanent error:", err);
    return { success: false, error: err.message };
  }
}

/**
 * Uploads an image to the 'package-media' storage bucket.
 */
export async function uploadPackageImage(file: File, prefix = "package"): Promise<{ success: boolean; url?: string; storagePath?: string; error?: string }> {
  try {
    const supabase = getSupabaseBrowserClient();

    // File validation
    const allowedTypes = ["image/jpeg", "image/png", "image/webp", "image/avif"];
    if (!allowedTypes.includes(file.type)) {
      return { success: false, error: "Only JPG, PNG, WEBP, and AVIF images are supported." };
    }
    if (file.size > 10 * 1024 * 1024) {
      return { success: false, error: "File size exceeds 10MB limit." };
    }

    const ext = file.name.split(".").pop()?.toLowerCase() || "jpg";
    const sanitizedPrefix = prefix.replace(/[^a-z0-9]/gi, "-").toLowerCase();
    const filename = `${sanitizedPrefix}-${Date.now()}-${Math.random().toString(36).substring(2, 8)}.${ext}`;
    const storagePath = `uploads/${filename}`;

    const { error: uploadError } = await supabase.storage
      .from("package-media")
      .upload(storagePath, file, {
        cacheControl: "3600",
        upsert: false,
      });

    if (uploadError) throw uploadError;

    const { data: publicUrlData } = supabase.storage
      .from("package-media")
      .getPublicUrl(storagePath);

    return {
      success: true,
      url: publicUrlData.publicUrl,
      storagePath,
    };
  } catch (err: any) {
    console.error("uploadPackageImage error:", err);
    return { success: false, error: err.message || "Failed to upload image." };
  }
}

/**
 * Destinations CRUD
 */
export async function fetchAdminDestinations() {
  try {
    const supabase = getSupabaseBrowserClient();
    const { data, error } = await supabase
      .from("destinations")
      .select("*")
      .order("name", { ascending: true });

    if (error) throw error;
    return data || [];
  } catch (err) {
    console.error("fetchAdminDestinations error:", err);
    return [];
  }
}

export async function saveDestination(destination: any) {
  try {
    const supabase = getSupabaseBrowserClient();
    const isNew = !destination.id;

    const payload = {
      name: destination.name.trim(),
      slug: destination.slug.trim(),
      city: destination.city || null,
      state: destination.state || null,
      region: destination.region || "North India",
      country: destination.country || "India",
      description: destination.description || null,
      spiritual_significance: destination.spiritual_significance || null,
      best_months: destination.best_months || null,
      image_url: destination.image_url || "/images/placeholder.jpg",
      is_active: destination.is_active ?? true,
      updated_at: new Date().toISOString(),
    };

    let result;
    if (isNew) {
      result = await supabase.from("destinations").insert(payload).select().single();
    } else {
      result = await supabase.from("destinations").update(payload).eq("id", destination.id).select().single();
    }

    if (result.error) throw result.error;

    await (supabase.rpc as any)("log_audit_action", {
      p_action: isNew ? "destination.created" : "destination.updated",
      p_entity_type: "destination",
      p_entity_id: result.data.id,
      p_entity_name: result.data.name,
      p_new_values: payload,
    });

    return { success: true, data: result.data };
  } catch (err: any) {
    return { success: false, error: err.message };
  }
}

export async function deleteDestination(id: string, name: string) {
  try {
    const supabase = getSupabaseBrowserClient();
    const { error } = await supabase.from("destinations").delete().eq("id", id);
    if (error) throw error;

    await (supabase.rpc as any)("log_audit_action", {
      p_action: "destination.deleted",
      p_entity_type: "destination",
      p_entity_id: id,
      p_entity_name: name,
    });

    return { success: true };
  } catch (err: any) {
    return { success: false, error: err.message };
  }
}

/**
 * Categories CRUD
 */
export async function fetchAdminCategories() {
  try {
    const supabase = getSupabaseBrowserClient();
    const { data, error } = await supabase
      .from("categories")
      .select("*")
      .order("display_order", { ascending: true });

    if (error) throw error;
    return data || [];
  } catch (err) {
    console.error("fetchAdminCategories error:", err);
    return [];
  }
}

export async function saveCategory(category: any) {
  try {
    const supabase = getSupabaseBrowserClient();
    const isNew = !category.id;

    const payload = {
      name: category.name.trim(),
      slug: category.slug.trim(),
      description: category.description || null,
      icon_name: category.icon_name || "Compass",
      image_url: category.image_url || null,
      display_order: Number(category.display_order) || 0,
      is_active: category.is_active ?? true,
      updated_at: new Date().toISOString(),
    };

    let result;
    if (isNew) {
      result = await supabase.from("categories").insert(payload).select().single();
    } else {
      result = await supabase.from("categories").update(payload).eq("id", category.id).select().single();
    }

    if (result.error) throw result.error;

    await (supabase.rpc as any)("log_audit_action", {
      p_action: isNew ? "category.created" : "category.updated",
      p_entity_type: "category",
      p_entity_id: result.data.id,
      p_entity_name: result.data.name,
      p_new_values: payload,
    });

    return { success: true, data: result.data };
  } catch (err: any) {
    return { success: false, error: err.message };
  }
}

export async function deleteCategory(id: string, name: string) {
  try {
    const supabase = getSupabaseBrowserClient();
    const { error } = await supabase.from("categories").delete().eq("id", id);
    if (error) throw error;

    await (supabase.rpc as any)("log_audit_action", {
      p_action: "category.deleted",
      p_entity_type: "category",
      p_entity_id: id,
      p_entity_name: name,
    });

    return { success: true };
  } catch (err: any) {
    return { success: false, error: err.message };
  }
}

/**
 * FAQs CRUD
 */
export async function fetchAdminFAQs() {
  try {
    const supabase = getSupabaseBrowserClient();
    const { data, error } = await supabase
      .from("faqs")
      .select("*")
      .order("display_order", { ascending: true });

    if (error) throw error;
    return data || [];
  } catch (err) {
    console.error("fetchAdminFAQs error:", err);
    return [];
  }
}

export async function saveFAQ(faq: any) {
  try {
    const supabase = getSupabaseBrowserClient();
    const isNew = !faq.id;

    const payload = {
      package_id: faq.package_id || null,
      category: faq.category || "General",
      question: faq.question.trim(),
      answer: faq.answer.trim(),
      display_order: Number(faq.display_order) || 0,
      is_active: faq.is_active ?? true,
      updated_at: new Date().toISOString(),
    };

    let result;
    if (isNew) {
      result = await supabase.from("faqs").insert(payload).select().single();
    } else {
      result = await supabase.from("faqs").update(payload).eq("id", faq.id).select().single();
    }

    if (result.error) throw result.error;
    return { success: true, data: result.data };
  } catch (err: any) {
    return { success: false, error: err.message };
  }
}

export async function deleteFAQ(id: string) {
  try {
    const supabase = getSupabaseBrowserClient();
    const { error } = await supabase.from("faqs").delete().eq("id", id);
    if (error) throw error;
    return { success: true };
  } catch (err: any) {
    return { success: false, error: err.message };
  }
}

/**
 * Testimonials CRUD
 */
export async function fetchAdminTestimonials() {
  try {
    const supabase = getSupabaseBrowserClient();
    const { data, error } = await supabase
      .from("testimonials")
      .select("*")
      .order("created_at", { ascending: false });

    if (error) throw error;
    return data || [];
  } catch (err) {
    console.error("fetchAdminTestimonials error:", err);
    return [];
  }
}

export async function saveTestimonial(testimonial: any) {
  try {
    const supabase = getSupabaseBrowserClient();
    const isNew = !testimonial.id;

    const payload = {
      traveller_name: testimonial.traveller_name.trim(),
      traveller_location: testimonial.traveller_location || null,
      traveller_age: testimonial.traveller_age ? Number(testimonial.traveller_age) : null,
      quote: testimonial.quote.trim(),
      rating: Number(testimonial.rating) || 5,
      avatar_url: testimonial.avatar_url || null,
      trip_name: testimonial.trip_name || null,
      package_id: testimonial.package_id || null,
      is_featured: testimonial.is_featured ?? false,
      is_active: testimonial.is_active ?? true,
      updated_at: new Date().toISOString(),
    };

    let result;
    if (isNew) {
      result = await supabase.from("testimonials").insert(payload).select().single();
    } else {
      result = await supabase.from("testimonials").update(payload).eq("id", testimonial.id).select().single();
    }

    if (result.error) throw result.error;
    return { success: true, data: result.data };
  } catch (err: any) {
    return { success: false, error: err.message };
  }
}

export async function deleteTestimonial(id: string) {
  try {
    const supabase = getSupabaseBrowserClient();
    const { error } = await supabase.from("testimonials").delete().eq("id", id);
    if (error) throw error;
    return { success: true };
  } catch (err: any) {
    return { success: false, error: err.message };
  }
}

/**
 * Reviews Moderation
 */
export async function fetchAdminReviews() {
  try {
    const supabase = getSupabaseBrowserClient();
    const { data, error } = await supabase
      .from("reviews")
      .select(`
        *,
        packages:package_id (name, slug)
      `)
      .order("created_at", { ascending: false });

    if (error) throw error;
    return data || [];
  } catch (err) {
    console.error("fetchAdminReviews error:", err);
    return [];
  }
}

export async function deleteReview(id: string) {
  try {
    const supabase = getSupabaseBrowserClient();
    const { error } = await supabase.from("reviews").delete().eq("id", id);
    if (error) throw error;
    return { success: true };
  } catch (err: any) {
    return { success: false, error: err.message };
  }
}

/**
 * Users Directory View (Safe profile data without passwords or tokens)
 */
export async function fetchAdminUsers() {
  try {
    const supabase = getSupabaseBrowserClient();
    const { data: profiles, error } = await supabase
      .from("profiles")
      .select("*")
      .order("created_at", { ascending: false });

    if (error) throw error;

    // Fetch user enquiry counts
    const { data: enquiries } = await supabase.from("enquiries").select("user_id");
    const enquiryCountMap: Record<string, number> = {};
    enquiries?.forEach((e) => {
      if (e.user_id) {
        enquiryCountMap[e.user_id] = (enquiryCountMap[e.user_id] || 0) + 1;
      }
    });

    return (profiles || []).map((p) => ({
      ...p,
      enquiry_count: enquiryCountMap[p.id] || 0,
    }));
  } catch (err) {
    console.error("fetchAdminUsers error:", err);
    return [];
  }
}

/**
 * Audit Logs View
 */
export async function fetchAuditLogs(limit = 50): Promise<AuditLogItem[]> {
  try {
    const supabase = getSupabaseBrowserClient();
    const { data, error } = await (supabase as any)
      .from("audit_logs")
      .select("*")
      .order("created_at", { ascending: false })
      .limit(limit);

    if (error) throw error;
    return (data || []) as AuditLogItem[];
  } catch (err) {
    console.error("fetchAuditLogs error:", err);
    return [];
  }
}

