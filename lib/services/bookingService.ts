import { getSupabaseBrowserClient } from "@/lib/supabase/client";

export interface UserBookingItem {
  id: string;
  booking_reference: string;
  package_id: string;
  package_title: string;
  package_title_snapshot: string;
  package_slug_snapshot?: string;
  destination: string;
  departure_city: string;
  start_date: string;
  end_date: string;
  travel_date?: string;
  adults: number;
  children: number;
  senior_citizens: number;
  total_travellers: number;
  currency: string;
  total_amount: number;
  amount_paid: number;
  balance_amount: number;
  payment_status: "unpaid" | "partial" | "paid" | "refunded";
  booking_status: "draft" | "pending_confirmation" | "confirmed" | "cancelled" | "completed";
  customer_visible_notes?: string;
  special_requirements?: string[];
  confirmed_at?: string;
  cancelled_at?: string;
  cancellation_reason?: string;
  created_at: string;
  booking_travellers?: Array<{
    id: string;
    full_name: string;
    traveller_type: "adult" | "child" | "senior";
    mobility_requirements?: string;
    dietary_requirements?: string;
  }>;
}

export interface UserNotificationItem {
  id: string;
  notification_type: string;
  title: string;
  message: string;
  entity_type?: string;
  entity_id?: string;
  read_at?: string | null;
  created_at: string;
}

/**
 * Fetches the authenticated user's confirmed pilgrimages and sacred journeys
 */
export async function getMyBookings(filterTab: "all" | "upcoming" | "completed" | "cancelled" = "all") {
  try {
    const supabase = getSupabaseBrowserClient();
    const { data: { user } } = await supabase.auth.getUser();

    if (!user) {
      return { bookings: [], error: "Unauthenticated" };
    }

    let query = (supabase as any)
      .from("bookings")
      .select(
        `id, booking_reference, package_id, package_title, package_title_snapshot,
         package_slug_snapshot, destination, departure_city, start_date, end_date,
         travel_date, adults, children, senior_citizens, total_travellers, currency,
         total_amount, amount_paid, balance_amount, payment_status, booking_status,
         customer_visible_notes, special_requirements, confirmed_at, cancelled_at,
         cancellation_reason, created_at,
         booking_travellers(id, full_name, traveller_type, mobility_requirements, dietary_requirements)`
      )
      .eq("user_id", user.id)
      .order("created_at", { ascending: false });

    if (filterTab === "upcoming") {
      query = query.eq("booking_status", "confirmed").gte("start_date", new Date().toISOString().split("T")[0]);
    } else if (filterTab === "completed") {
      query = query.or("booking_status.eq.completed,and(booking_status.eq.confirmed,start_date.lt." + new Date().toISOString().split("T")[0] + ")");
    } else if (filterTab === "cancelled") {
      query = query.eq("booking_status", "cancelled");
    }

    const { data, error } = await query;
    if (error) throw error;

    return { bookings: (data || []) as UserBookingItem[], error: null };
  } catch (err: any) {
    console.error("getMyBookings error:", err);
    return { bookings: [], error: err.message || "Failed to load bookings" };
  }
}

/**
 * Fetches single booking details for the authenticated user by reference
 */
export async function getMyBookingByReference(reference: string) {
  try {
    const supabase = getSupabaseBrowserClient();
    const { data: { user } } = await supabase.auth.getUser();

    if (!user) {
      return { booking: null, error: "Unauthenticated" };
    }

    const { data, error } = await (supabase as any)
      .from("bookings")
      .select(
        `id, booking_reference, package_id, package_title, package_title_snapshot,
         package_slug_snapshot, destination, departure_city, start_date, end_date,
         travel_date, adults, children, senior_citizens, total_travellers, currency,
         total_amount, amount_paid, balance_amount, payment_status, booking_status,
         customer_visible_notes, special_requirements, confirmed_at, cancelled_at,
         cancellation_reason, created_at,
         booking_travellers(id, full_name, traveller_type, mobility_requirements, dietary_requirements)`
      )
      .eq("user_id", user.id)
      .or(`booking_reference.eq.${reference},booking_id.eq.${reference}`)
      .single();

    if (error) throw error;
    return { booking: data as UserBookingItem, error: null };
  } catch (err: any) {
    console.error("getMyBookingByReference error:", err);
    return { booking: null, error: err.message || "Booking not found" };
  }
}

/**
 * Fetches user notifications
 */
export async function getUserNotifications() {
  try {
    const supabase = getSupabaseBrowserClient();
    const { data: { user } } = await supabase.auth.getUser();

    if (!user) return [];

    const { data, error } = await (supabase as any)
      .from("notifications")
      .select("*")
      .eq("user_id", user.id)
      .order("created_at", { ascending: false })
      .limit(20);

    if (error) throw error;
    return (data || []) as UserNotificationItem[];
  } catch (err) {
    console.error("getUserNotifications error:", err);
    return [];
  }
}

/**
 * Marks a notification as read
 */
export async function markNotificationAsRead(notificationId: string) {
  try {
    const supabase = getSupabaseBrowserClient();
    await (supabase as any)
      .from("notifications")
      .update({ read_at: new Date().toISOString() })
      .eq("id", notificationId);
    return true;
  } catch (err) {
    console.error("markNotificationAsRead error:", err);
    return false;
  }
}
