import { getSupabaseBrowserClient } from "@/lib/supabase/client";

export interface AdminBookingFilterOptions {
  status?: string;
  paymentStatus?: string;
  packageId?: string;
  searchQuery?: string;
  page?: number;
  limit?: number;
}

export interface CreateBookingInput {
  userId: string;
  packageId: string;
  departureId?: string;
  enquiryId?: string;
  adults: number;
  children?: number;
  seniorCitizens?: number;
  pricePerPerson?: number;
  subtotal?: number;
  discountAmount?: number;
  taxAmount?: number;
  totalAmount: number;
  advanceAmount?: number;
  amountPaid?: number;
  paymentStatus?: "unpaid" | "partial" | "paid" | "refunded";
  specialRequirements?: string;
  customerVisibleNotes?: string;
  internalAdminNotes?: string;
  travellers?: Array<{
    full_name: string;
    traveller_type: "adult" | "child" | "senior";
    date_of_birth?: string;
    gender?: string;
    phone?: string;
    emergency_contact_name?: string;
    emergency_contact_phone?: string;
    mobility_requirements?: string;
    dietary_requirements?: string;
  }>;
  idempotencyKey?: string;
}

/**
 * Fetches filtered bookings list for the Admin Booking Management Dashboard
 */
export async function getAdminBookings(options: AdminBookingFilterOptions = {}) {
  try {
    const supabase = getSupabaseBrowserClient();
    const page = options.page || 1;
    const limit = options.limit || 15;
    const from = (page - 1) * limit;
    const to = from + limit - 1;

    let query = (supabase as any)
      .from("bookings")
      .select("*, booking_travellers(*)", { count: "exact" })
      .order("created_at", { ascending: false })
      .range(from, to);

    if (options.status && options.status !== "all") {
      query = query.or(`booking_status.eq.${options.status},status.eq.${options.status}`);
    }

    if (options.paymentStatus && options.paymentStatus !== "all") {
      query = query.eq("payment_status", options.paymentStatus);
    }

    if (options.packageId && options.packageId !== "all") {
      query = query.eq("package_id", options.packageId);
    }

    if (options.searchQuery && options.searchQuery.trim()) {
      const q = options.searchQuery.trim();
      query = query.or(
        `booking_reference.ilike.%${q}%,booking_id.ilike.%${q}%,pilgrim_name.ilike.%${q}%,pilgrim_phone.ilike.%${q}%,pilgrim_email.ilike.%${q}%,package_title.ilike.%${q}%`
      );
    }

    const { data, error, count } = await query;
    if (error) throw error;

    return { bookings: data || [], total: count || 0 };
  } catch (err: any) {
    console.error("getAdminBookings exception:", err);
    return { bookings: [], total: 0 };
  }
}

/**
 * Fetches full details of a booking including travellers, status timeline, and notes
 */
export async function getAdminBookingDetails(referenceOrId: string) {
  try {
    const supabase = getSupabaseBrowserClient();
    const isUuid = /^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$/i.test(referenceOrId);

    let query = (supabase as any)
      .from("bookings")
      .select("*, booking_travellers(*), booking_status_history(*)")
      .order("created_at", { referencedTable: "booking_status_history", ascending: true });

    if (isUuid) {
      query = query.or(`id.eq.${referenceOrId},enquiry_id.eq.${referenceOrId}`);
    } else {
      query = query.or(`booking_reference.eq.${referenceOrId},booking_id.eq.${referenceOrId}`);
    }

    const { data, error } = await query.single();
    if (error) throw error;

    return { success: true, booking: data };
  } catch (err: any) {
    console.error("getAdminBookingDetails error:", err);
    return { success: false, error: err.message || "Booking not found" };
  }
}

/**
 * Executes atomic booking creation using the create_or_confirm_booking RPC
 */
export async function createBooking(input: CreateBookingInput) {
  try {
    const supabase = getSupabaseBrowserClient();

    const { data, error } = await (supabase.rpc as any)("create_or_confirm_booking", {
      p_user_id: input.userId,
      p_package_id: input.packageId,
      p_departure_id: input.departureId || null,
      p_enquiry_id: input.enquiryId || null,
      p_adults: input.adults || 1,
      p_children: input.children || 0,
      p_senior_citizens: input.seniorCitizens || 0,
      p_price_per_person: input.pricePerPerson || 0,
      p_subtotal: input.subtotal || 0,
      p_discount_amount: input.discountAmount || 0,
      p_tax_amount: input.taxAmount || 0,
      p_total_amount: input.totalAmount,
      p_advance_amount: input.advanceAmount || 0,
      p_amount_paid: input.amountPaid || 0,
      p_payment_status: input.paymentStatus || "unpaid",
      p_special_requirements: input.specialRequirements || null,
      p_customer_visible_notes: input.customerVisibleNotes || null,
      p_internal_admin_notes: input.internalAdminNotes || null,
      p_travellers: input.travellers || [],
      p_idempotency_key: input.idempotencyKey || null,
    });

    if (error) throw error;
    return { success: true, data };
  } catch (err: any) {
    console.error("createBooking error:", err);
    return { success: false, error: err.message || "Failed to create booking" };
  }
}

/**
 * Updates payment status and amount paid for a booking
 */
export async function updatePaymentStatus(
  bookingId: string,
  paymentStatus: "unpaid" | "partial" | "paid" | "refunded",
  amountPaid: number
) {
  try {
    const supabase = getSupabaseBrowserClient();

    const { data: oldBooking } = await (supabase as any)
      .from("bookings")
      .select("total_amount, amount_paid, payment_status, booking_reference")
      .eq("id", bookingId)
      .single();

    const total = oldBooking?.total_amount || 0;
    const balance = Math.max(0, total - amountPaid);

    const { data, error } = await (supabase as any)
      .from("bookings")
      .update({
        payment_status: paymentStatus,
        amount_paid: amountPaid,
        balance_amount: balance,
        updated_at: new Date().toISOString(),
      })
      .eq("id", bookingId)
      .select()
      .single();

    if (error) throw error;

    try {
      await (supabase.rpc as any)("log_audit_action", {
        p_action: "booking.payment_updated",
        p_entity_type: "booking",
        p_entity_id: bookingId,
        p_entity_name: oldBooking?.booking_reference || "Booking",
        p_old_values: { payment_status: oldBooking?.payment_status, amount_paid: oldBooking?.amount_paid },
        p_new_values: { payment_status: paymentStatus, amount_paid: amountPaid, balance_amount: balance },
      });
    } catch (auditErr) {
      console.warn("Audit log notice:", auditErr);
    }

    return { success: true, data };
  } catch (err: any) {
    console.error("updatePaymentStatus error:", err);
    return { success: false, error: err.message || "Failed to update payment status" };
  }
}

/**
 * Cancels a booking atomically and releases departure seats
 */
export async function cancelBooking(bookingId: string, reason: string) {
  try {
    const supabase = getSupabaseBrowserClient();
    const { data, error } = await (supabase.rpc as any)("cancel_booking", {
      p_booking_id: bookingId,
      p_reason: reason || "Cancelled by administrator",
    });

    if (error) throw error;
    return { success: true, data };
  } catch (err: any) {
    console.error("cancelBooking error:", err);
    return { success: false, error: err.message || "Failed to cancel booking" };
  }
}

/**
 * Searches registered users safely for the Direct Booking / Convert Enquiry wizard
 */
export async function searchUsersForBooking(searchQuery: string) {
  try {
    const supabase = getSupabaseBrowserClient();
    const q = searchQuery.trim();

    let query = supabase
      .from("profiles")
      .select("id, full_name, email, phone")
      .limit(10);

    if (q) {
      query = query.or(`full_name.ilike.%${q}%,email.ilike.%${q}%,phone.ilike.%${q}%`);
    }

    const { data, error } = await query;
    if (error) throw error;

    return data || [];
  } catch (err) {
    console.error("searchUsersForBooking error:", err);
    return [];
  }
}

/**
 * Fetches available departures for a package
 */
export async function fetchPackageDepartures(packageId: string) {
  try {
    const supabase = getSupabaseBrowserClient();
    const { data, error } = await (supabase as any)
      .from("package_departures")
      .select("*")
      .eq("package_id", packageId)
      .order("start_date", { ascending: true });

    if (error) throw error;
    return data || [];
  } catch (err) {
    console.error("fetchPackageDepartures error:", err);
    return [];
  }
}
