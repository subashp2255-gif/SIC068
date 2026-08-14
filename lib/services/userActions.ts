import { getSupabaseBrowserClient } from "@/lib/supabase/client";
import { createEnquiry } from "./enquiryService";

export interface EnquiryPayload {
  packageId?: string;
  fullName: string;
  email: string;
  phone: string;
  travelDates?: string;
  travellersCount?: string;
  specialRequirements?: string;
}

/**
 * Submits a customer tour enquiry to Supabase using the centralized service.
 */
export async function submitEnquiryToSupabase(payload: EnquiryPayload): Promise<{ success: boolean; error?: string }> {
  try {
    const result = await createEnquiry({
      packageId: payload.packageId,
      fullName: payload.fullName,
      email: payload.email,
      phone: payload.phone,
      travelTiming: "flexible_month",
      preferredMonth: payload.travelDates || "Flexible",
      departureCity: "India",
      adults: 1,
      children: 0,
      seniorCitizens: 0,
      infants: 0,
      message: payload.specialRequirements,
      consent: true,
      source: "user_actions",
    });

    return {
      success: result.success,
      error: result.error,
    };
  } catch (err: any) {
    console.error("submitEnquiryToSupabase exception:", err);
    return { success: false, error: err?.message || "Failed to submit enquiry" };
  }
}

/**
 * Fetch favorite package IDs for the logged-in user from Supabase.
 */
export async function fetchUserFavoritesFromSupabase(userId: string): Promise<string[]> {
  try {
    if (!userId) return [];
    const supabase = getSupabaseBrowserClient();
    const { data, error } = await supabase
      .from("favorites")
      .select("package_id")
      .eq("user_id", userId);

    if (error || !data) {
      console.warn("Supabase fetchUserFavorites error:", error?.message);
      return [];
    }

    return data.map((item: any) => item.package_id);
  } catch (err) {
    console.error("fetchUserFavoritesFromSupabase exception:", err);
    return [];
  }
}

/**
 * Add or remove a package from user's favorites in Supabase.
 */
export async function toggleUserFavoriteInSupabase(userId: string, packageId: string): Promise<{ isFavorite: boolean }> {
  try {
    if (!userId || !packageId) return { isFavorite: false };
    const supabase = getSupabaseBrowserClient();

    // Check if favorite exists
    const { data: existing } = await supabase
      .from("favorites")
      .select("id")
      .eq("user_id", userId)
      .eq("package_id", packageId)
      .maybeSingle();

    if (existing) {
      // Remove favorite
      await supabase
        .from("favorites")
        .delete()
        .eq("user_id", userId)
        .eq("package_id", packageId);
      return { isFavorite: false };
    } else {
      // Add favorite
      await supabase
        .from("favorites")
        .insert({ user_id: userId, package_id: packageId });
      return { isFavorite: true };
    }
  } catch (err) {
    console.error("toggleUserFavoriteInSupabase exception:", err);
    return { isFavorite: false };
  }
}

/**
 * Submit a package review to Supabase.
 */
export async function submitReviewToSupabase(
  packageId: string,
  reviewerName: string,
  rating: number,
  comment: string
): Promise<{ success: boolean; error?: string }> {
  try {
    const supabase = getSupabaseBrowserClient();
    const { data: { session } } = await supabase.auth.getSession();
    if (!session?.user) {
      return { success: false, error: "Please log in to leave a review." };
    }

    const { error } = await supabase.from("reviews").insert({
      package_id: packageId,
      user_id: session.user.id,
      rating,
      comment,
    });

    if (error) {
      console.error("Supabase submitReview error:", error.message);
      return { success: false, error: error.message };
    }

    return { success: true };
  } catch (err: any) {
    console.error("submitReviewToSupabase exception:", err);
    return { success: false, error: err?.message || "Failed to submit review" };
  }
}
