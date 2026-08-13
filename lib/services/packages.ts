import { getSupabaseBrowserClient } from "@/lib/supabase/client";
import type { Package, ItineraryItem, PackageInclusions } from "@/data/packages";
import type { Destination } from "@/data/destinations";
import type { FAQItem } from "@/data/faq";
import type { Testimonial } from "@/data/testimonials";

export interface PackageFilterOptions {
  category?: string;
  subCategory?: string;
  region?: string;
  searchQuery?: string;
  minPrice?: number;
  maxPrice?: number;
  duration?: number;
  pace?: string;
  seniorFriendly?: boolean;
  wheelchairAccess?: boolean;
  vegMeals?: boolean;
  sortBy?: "price_asc" | "price_desc" | "rating_desc" | "duration_asc";
}

/**
 * Transforms a raw Supabase package database row and joined relations into the frontend Package interface.
 */
export function mapDbPackageToFrontend(
  dbPkg: any,
  itineraryDays: any[] = [],
  features: any[] = [],
  media: any[] = [],
  accessibility: any = null
): Package {
  const inclusions: PackageInclusions = {
    hotel: false,
    meals: false,
    transit: false,
    guide: false,
    entryPasses: false,
    medicalSupport: false,
    localExperience: false,
  };

  const packageBenefits: string[] = [];
  const highlights: string[] = [];
  const tips: string[] = [];
  const itinerarySummary: string[] = [];

  features.forEach((f) => {
    if (f.feature_type === "inclusion") {
      const lower = f.title.toLowerCase();
      if (lower.includes("hotel")) inclusions.hotel = true;
      if (lower.includes("meal")) inclusions.meals = true;
      if (lower.includes("transit") || lower.includes("ac")) inclusions.transit = true;
      if (lower.includes("guide")) inclusions.guide = true;
      if (lower.includes("entry") || lower.includes("pass")) inclusions.entryPasses = true;
      if (lower.includes("medical")) inclusions.medicalSupport = true;
      if (lower.includes("local") || lower.includes("experience")) inclusions.localExperience = true;
    } else if (f.feature_type === "highlight") {
      highlights.push(f.title);
    } else if (f.feature_type === "tip") {
      tips.push(f.title);
    } else if (f.feature_type === "benefit") {
      packageBenefits.push(f.title);
    } else if (f.feature_type === "itinerary_summary") {
      itinerarySummary.push(f.title);
    }
  });

  const itinerary: ItineraryItem[] = itineraryDays
    .sort((a, b) => a.day_number - b.day_number)
    .map((day) => ({
      day: day.day_number,
      title: day.title || `Day ${day.day_number}`,
      location: day.location || "",
      overview: day.overview || "",
      schedule: {
        morning: {
          title: day.morning_title || "Morning Program",
          description: day.morning_description || "",
        },
        afternoon: {
          title: day.afternoon_title || "Afternoon Sightseeing",
          description: day.afternoon_description || "",
        },
        evening: {
          title: day.evening_title || "Evening Rest & Darshan",
          description: day.evening_description || "",
        },
      },
      details: {
        importantTimings: day.important_timings || "",
        meals: day.meals || "",
        transport: day.transport || "",
        walkingLevel: day.walking_level || "",
        stay: day.stay || "",
        weather: day.weather || "",
        dressCode: day.dress_code || "",
        packingSuggestions: day.packing_suggestions || "",
        accessibility: day.accessibility_note || undefined,
        visitorNote: day.visitor_note || undefined,
        travelDuration: day.travel_duration || undefined,
      },
    }));

  const coverMedia = media.find((m) => m.is_cover) || media[0];
  const image = coverMedia?.url || dbPkg.image || "/images/placeholder.jpg";

  return {
    id: dbPkg.slug || dbPkg.id,
    title: dbPkg.name || "Tour Package",
    destinationName: dbPkg.destination_name || dbPkg.location || "India",
    image,
    location: dbPkg.location || "",
    region: dbPkg.region || "Pan India",
    category: (dbPkg.category as "Family" | "Pilgrimage") || "Pilgrimage",
    subCategory: dbPkg.sub_category || undefined,
    durationDays: dbPkg.duration_days || 4,
    durationLabel: dbPkg.duration_label || `${dbPkg.duration_days || 4} Days / ${(dbPkg.duration_days || 4) - 1} Nights`,
    bestSeason: dbPkg.best_season || "October - March",
    pace: (dbPkg.pace as any) || "Relaxed",
    travellerTypes: dbPkg.traveller_types || ["Families", "Senior Pilgrims"],
    accessibilityStatus: (dbPkg.accessibility_status as any) || "Accessibility on Request",
    seniorFriendly: dbPkg.senior_friendly ?? true,
    childFriendly: dbPkg.child_friendly ?? true,
    inclusions,
    packageBenefits,
    highlights,
    tips,
    itinerarySummary,
    cancellationSummary: dbPkg.cancellation_summary || "Flexible 48h prior cancellation available.",
    price: dbPkg.base_price ? Number(dbPkg.base_price) : null,
    destinations: dbPkg.destinations_text || dbPkg.location || "",
    route: dbPkg.route || [],
    duration: dbPkg.duration_label || `${dbPkg.duration_days || 4} Days`,
    rating: dbPkg.rating ? Number(dbPkg.rating) : 4.8,
    reviewCount: dbPkg.review_count || 12,
    seatsLeft: dbPkg.seats_left || 6,
    recentBookings: dbPkg.recent_bookings || 8,
    verified: dbPkg.verified ?? true,
    altText: dbPkg.alt_text || dbPkg.name,
    tags: dbPkg.tags || [],
    itinerary,
    vegMeals: dbPkg.veg_meals ?? true,
    wheelchairAccess: dbPkg.wheelchair_access ?? false,
    mainCategory: dbPkg.category as any,
    categoryLabel: dbPkg.category_label || dbPkg.category,
    travellerType: dbPkg.traveller_type || "Senior Friendly",
    description: dbPkg.description || "",
  };
}

/**
 * Fetch packages from Supabase with filters and sorting.
 */
export async function fetchPackagesFromSupabase(options: PackageFilterOptions = {}): Promise<Package[]> {
  try {
    const supabase = getSupabaseBrowserClient();
    let query = supabase.from("packages").select(`
      *,
      itinerary_days(*),
      package_features(*),
      package_media(*),
      package_accessibility(*)
    `).eq("is_active", true);

    if (options.category && options.category !== "All") {
      query = query.eq("category", options.category);
    }
    if (options.subCategory && options.subCategory !== "All") {
      query = query.eq("sub_category", options.subCategory);
    }
    if (options.region && options.region !== "All") {
      query = query.eq("region", options.region);
    }
    if (options.pace && options.pace !== "All") {
      query = query.eq("pace", options.pace);
    }
    if (options.seniorFriendly) {
      query = query.eq("senior_friendly", true);
    }
    if (options.wheelchairAccess) {
      query = query.eq("wheelchair_access", true);
    }
    if (options.vegMeals) {
      query = query.eq("veg_meals", true);
    }
    if (options.minPrice !== undefined) {
      query = query.gte("base_price", options.minPrice);
    }
    if (options.maxPrice !== undefined) {
      query = query.lte("base_price", options.maxPrice);
    }
    if (options.duration) {
      query = query.lte("duration_days", options.duration);
    }

    if (options.searchQuery && options.searchQuery.trim()) {
      const q = options.searchQuery.trim();
      query = query.or(`name.ilike.%${q}%,location.ilike.%${q}%,destination_name.ilike.%${q}%`);
    }

    if (options.sortBy === "price_asc") {
      query = query.order("base_price", { ascending: true, nullsFirst: false });
    } else if (options.sortBy === "price_desc") {
      query = query.order("base_price", { ascending: false, nullsFirst: false });
    } else if (options.sortBy === "rating_desc") {
      query = query.order("rating", { ascending: false, nullsFirst: false });
    } else if (options.sortBy === "duration_asc") {
      query = query.order("duration_days", { ascending: true });
    } else {
      query = query.order("created_at", { ascending: false });
    }

    const { data, error } = await query;
    if (error || !data) {
      console.warn("Supabase fetchPackages error:", error?.message);
      return [];
    }

    return data.map((pkg: any) =>
      mapDbPackageToFrontend(
        pkg,
        pkg.itinerary_days || [],
        pkg.package_features || [],
        pkg.package_media || [],
        pkg.package_accessibility
      )
    );
  } catch (err) {
    console.error("fetchPackagesFromSupabase exception:", err);
    return [];
  }
}

/**
 * Fetch a single package by ID or slug from Supabase.
 */
export async function fetchPackageByIdFromSupabase(idOrSlug: string): Promise<Package | null> {
  try {
    const supabase = getSupabaseBrowserClient();
    const isUuid = /^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$/i.test(idOrSlug);

    // Query by slug or ID depending on string format
    let query = supabase
      .from("packages")
      .select(`
        *,
        itinerary_days(*),
        package_features(*),
        package_media(*),
        package_accessibility(*)
      `);

    if (isUuid) {
      query = query.or(`slug.eq.${idOrSlug},id.eq.${idOrSlug}`);
    } else {
      query = query.eq("slug", idOrSlug);
    }

    const { data: dbPkg, error } = await query.maybeSingle();

    if (error || !dbPkg) {
      if (error) console.warn(`Supabase fetchPackageById error for ${idOrSlug}:`, error.message);
      return null;
    }

    return mapDbPackageToFrontend(
      dbPkg,
      dbPkg.itinerary_days || [],
      dbPkg.package_features || [],
      dbPkg.package_media || [],
      dbPkg.package_accessibility
    );
  } catch (err) {
    console.error("fetchPackageByIdFromSupabase exception:", err);
    return null;
  }
}

/**
 * Fetch destinations from Supabase.
 */
export async function fetchDestinationsFromSupabase(): Promise<Destination[]> {
  try {
    const supabase = getSupabaseBrowserClient();
    const { data, error } = await supabase
      .from("destinations")
      .select("*")
      .eq("is_active", true)
      .order("name", { ascending: true });

    if (error || !data) {
      console.warn("Supabase fetchDestinations error:", error?.message);
      return [];
    }

    return data.map((d: any) => ({
      id: d.slug || d.id,
      name: d.name,
      location: d.city && d.state ? `${d.city}, ${d.state}` : d.country || d.name,
      description: d.description || "",
      image: d.image_url || "/images/placeholder.jpg",
      altText: d.alt_text || d.name,
      mainCategory: d.main_category || "Pilgrimage",
      faithCategory: d.faith_category || undefined,
      categoryBadge: d.category_badge || d.main_category || "Top Destination",
    }));
  } catch (err) {
    console.error("fetchDestinationsFromSupabase exception:", err);
    return [];
  }
}

/**
 * Fetch FAQs from Supabase.
 */
export async function fetchFAQsFromSupabase(packageId?: string): Promise<FAQItem[]> {
  try {
    const supabase = getSupabaseBrowserClient();
    let query = supabase.from("faqs").select("*").eq("is_active", true).order("display_order", { ascending: true });

    if (packageId) {
      query = query.eq("package_id", packageId);
    } else {
      query = query.is("package_id", null);
    }

    const { data, error } = await query;
    if (error || !data) {
      console.warn("Supabase fetchFAQs error:", error?.message);
      return [];
    }

    return data.map((f: any) => ({
      id: f.id,
      question: f.question,
      answer: f.answer,
    }));
  } catch (err) {
    console.error("fetchFAQsFromSupabase exception:", err);
    return [];
  }
}

/**
 * Fetch Testimonials from Supabase.
 */
export async function fetchTestimonialsFromSupabase(): Promise<Testimonial[]> {
  try {
    const supabase = getSupabaseBrowserClient();
    const { data, error } = await supabase
      .from("testimonials")
      .select("*")
      .eq("is_active", true)
      .order("created_at", { ascending: false });

    if (error || !data) {
      console.warn("Supabase fetchTestimonials error:", error?.message);
      return [];
    }

    return data.map((t: any) => ({
      id: t.id,
      name: t.traveller_name,
      age: t.traveller_age || undefined,
      location: t.traveller_location || undefined,
      quote: t.quote,
      rating: Number(t.rating) || 5,
      avatarUrl: t.avatar_url || undefined,
      tripName: t.trip_name || undefined,
    }));
  } catch (err) {
    console.error("fetchTestimonialsFromSupabase exception:", err);
    return [];
  }
}
