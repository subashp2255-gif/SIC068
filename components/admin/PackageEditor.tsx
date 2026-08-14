"use client";

import React, { useState, useEffect } from "react";
import { useRouter } from "next/navigation";
import {
  savePackageAtomic,
  uploadPackageImage,
  fetchAdminDestinations,
  fetchAdminCategories,
  type AdminPackageInput,
} from "@/lib/services/adminService";
import {
  Save,
  ArrowLeft,
  Plus,
  Trash2,
  Upload,
  Image as ImageIcon,
  CheckCircle,
  AlertCircle,
  Calendar,
  MapPin,
  Clock,
  Compass,
  Sparkles,
  Shield,
  Layers,
  FileText,
  DollarSign,
  HeartHandshake,
} from "lucide-react";
import Link from "next/link";

interface PackageEditorProps {
  initialData?: any;
  isEditMode?: boolean;
}

export const PackageEditor: React.FC<PackageEditorProps> = ({
  initialData,
  isEditMode = false,
}) => {
  const router = useRouter();
  const [activeTab, setActiveTab] = useState<
    "basic" | "pricing" | "departures" | "itinerary" | "features" | "accessibility" | "media"
  >("basic");

  // Form State
  const [formData, setFormData] = useState<AdminPackageInput>({
    id: initialData?.id,
    name: initialData?.name || "",
    slug: initialData?.slug || "",
    destination_name: initialData?.destination_name || "",
    summary: initialData?.summary || "",
    description: initialData?.description || "",
    location: initialData?.location || "",
    region: initialData?.region || "North India",
    category: initialData?.category || "Pilgrimage",
    sub_category: initialData?.sub_category || "",
    duration_days: initialData?.duration_days || 4,
    duration_nights: initialData?.duration_nights || 3,
    duration_label: initialData?.duration_label || "4 Days / 3 Nights",
    base_price: initialData?.base_price || 15000,
    price_basis: initialData?.price_basis || "Per Person",
    currency: initialData?.currency || "INR",
    default_departure_city: initialData?.default_departure_city || "Chennai",
    best_season: initialData?.best_season || "October - March",
    difficulty_level: initialData?.difficulty_level || "Easy",
    walking_level: initialData?.walking_level || "Moderate",
    pace: initialData?.pace || "Relaxed",
    food_types: initialData?.food_types || ["Pure Veg", "South Indian", "Sattvic"],
    transport_types: initialData?.transport_types || ["AC Deluxe Coach"],
    tags: initialData?.tags || ["Temple Darshan", "Senior Friendly"],
    traveller_types: initialData?.traveller_types || ["Seniors", "Families"],
    image: initialData?.image || "/images/placeholder.jpg",
    alt_text: initialData?.alt_text || "",
    senior_friendly: initialData?.senior_friendly ?? true,
    child_friendly: initialData?.child_friendly ?? true,
    wheelchair_access: initialData?.wheelchair_access ?? false,
    veg_meals: initialData?.veg_meals ?? true,
    accessibility_status: initialData?.accessibility_status || "Verified Accessible",
    featured: initialData?.featured ?? false,
    is_active: initialData?.is_active ?? true,
    cancellation_summary: initialData?.cancellation_summary || "Free cancellation up to 14 days before departure.",

    // Nested relations
    itinerary: initialData?.itinerary || [
      {
        day_number: 1,
        title: "Arrival & Sacred Welcome",
        overview: "Arrival at destination with temple briefing and evening darshan.",
        morning_title: "Arrival & Hotel Check-in",
        morning_description: "Private transfer from railway station/airport to hotel.",
        afternoon_title: "Rest & Orientation",
        afternoon_description: "Relaxation with sattvic welcome lunch.",
        evening_title: "Evening Aarti & Darshan",
        evening_description: "Special assisted darshan and temple aarti ceremony.",
        meals: "Lunch, Dinner",
        transport: "AC Coach",
        stay: "Heritage Pilgrimage Stay",
      },
    ],
    features: initialData?.features || [
      { feature_type: "inclusion", title: "Accommodation in 3/4-Star Pure Veg Hotel", description: "Clean, hygienic rooms with lift access" },
      { feature_type: "inclusion", title: "Special Assisted VIP Darshan Passes", description: "Minimal wait time for seniors" },
      { feature_type: "exclusion", title: "Personal offerings & pooja items", description: "Individual donations not included" },
      { feature_type: "highlight", title: "Expert Vedic Tour Guide", description: "Spiritual discourse in Tamil/English/Hindi" },
    ],
    departures: initialData?.departures || [
      {
        departure_city: "Chennai",
        start_date: "2026-10-15",
        end_date: "2026-10-18",
        capacity: 30,
        available_seats: 22,
        price_per_person: 15000,
        status: "open",
      },
    ],
    accessibility: initialData?.accessibility || {
      wheelchair_available: true,
      battery_cart_available: true,
      reduced_walking_option: true,
      lift_accessible_stay: true,
      ground_floor_room: true,
      accessible_bathroom: true,
      darshan_assistance: true,
      medical_facility_nearby: true,
      care_notes: "Wheelchair assistance available at main temple entry and parikrama.",
      requires_confirmation: false,
    },
    media: initialData?.media || [
      {
        media_type: "image",
        url: initialData?.image || "/images/placeholder.jpg",
        alt_text: "Temple Cover",
        caption: "Main Sanctum View",
        is_cover: true,
        display_order: 1,
      },
    ],
  });

  const [saving, setSaving] = useState(false);
  const [error, setError] = useState<string | null>(null);
  const [success, setSuccess] = useState<string | null>(null);
  const [uploadingImage, setUploadingImage] = useState(false);

  // Auto-generate slug from name if slug is empty
  const handleNameChange = (name: string) => {
    setFormData((prev) => ({
      ...prev,
      name,
      slug: prev.slug ? prev.slug : name.toLowerCase().replace(/[^a-z0-9]+/g, "-").replace(/^-|-$/g, ""),
    }));
  };

  // Image Upload to Supabase Storage
  const handleImageUpload = async (e: React.ChangeEvent<HTMLInputElement>) => {
    const file = e.target.files?.[0];
    if (!file) return;

    setUploadingImage(true);
    setError(null);
    const res = await uploadPackageImage(file, formData.slug || "package");
    setUploadingImage(false);

    if (res.success && res.url) {
      setFormData((prev) => ({
        ...prev,
        image: res.url!,
        media: [
          {
            media_type: "image",
            url: res.url!,
            storage_path: res.storagePath,
            alt_text: prev.name,
            caption: "Tour photo",
            is_cover: true,
            display_order: 1,
          },
          ...(prev.media || []).filter((m) => m.url !== res.url),
        ],
      }));
    } else {
      setError(res.error || "Failed to upload image.");
    }
  };

  // Submit Package Form
  const handleSubmit = async (publishState?: boolean) => {
    setError(null);
    setSuccess(null);

    if (!formData.name.trim() || !formData.slug.trim()) {
      setError("Please provide a package title and unique URL slug.");
      setActiveTab("basic");
      return;
    }

    const payload = {
      ...formData,
      is_active: publishState !== undefined ? publishState : formData.is_active,
    };

    setSaving(true);
    const res = await savePackageAtomic(payload);
    setSaving(false);

    if (res.success) {
      setSuccess(`Package "${payload.name}" saved successfully in Supabase!`);
      setTimeout(() => {
        router.push("/admin/packages");
      }, 1200);
    } else {
      setError(res.error || "Could not save package. Please check inputs.");
    }
  };

  // Helper methods for Array items
  const addItineraryDay = () => {
    const nextDay = (formData.itinerary?.length || 0) + 1;
    setFormData((prev) => ({
      ...prev,
      duration_days: Math.max(prev.duration_days, nextDay),
      duration_nights: Math.max(prev.duration_nights || 0, nextDay - 1),
      itinerary: [
        ...(prev.itinerary || []),
        {
          day_number: nextDay,
          title: `Day ${nextDay} Spiritual Schedule`,
          overview: "Temple darshan, sacred bath, and local spiritual sights.",
          morning_title: "Morning Pooja",
          morning_description: "Early morning temple darshan and prayers.",
          meals: "Breakfast, Lunch, Dinner",
          transport: "AC Coach",
          stay: "Pilgrimage Stay",
        },
      ],
    }));
  };

  const removeItineraryDay = (index: number) => {
    setFormData((prev) => {
      const updated = (prev.itinerary || []).filter((_, i) => i !== index);
      // Re-index days
      const reindexed = updated.map((d, i) => ({ ...d, day_number: i + 1 }));
      return {
        ...prev,
        itinerary: reindexed,
      };
    });
  };

  const addFeature = (type: "inclusion" | "exclusion" | "highlight" | "facility") => {
    setFormData((prev) => ({
      ...prev,
      features: [
        ...(prev.features || []),
        { feature_type: type, title: `New ${type}`, description: "" },
      ],
    }));
  };

  const removeFeature = (index: number) => {
    setFormData((prev) => ({
      ...prev,
      features: (prev.features || []).filter((_, i) => i !== index),
    }));
  };

  const addDeparture = () => {
    setFormData((prev) => ({
      ...prev,
      departures: [
        ...(prev.departures || []),
        {
          departure_city: prev.default_departure_city || "Chennai",
          start_date: new Date(Date.now() + 30 * 86400000).toISOString().split("T")[0],
          end_date: new Date(Date.now() + 34 * 86400000).toISOString().split("T")[0],
          capacity: 30,
          available_seats: 30,
          price_per_person: prev.base_price || 15000,
          status: "open",
        },
      ],
    }));
  };

  const removeDeparture = (index: number) => {
    setFormData((prev) => ({
      ...prev,
      departures: (prev.departures || []).filter((_, i) => i !== index),
    }));
  };

  return (
    <div className="space-y-6 max-w-5xl mx-auto pb-16">
      {/* Top Header */}
      <div className="flex flex-col sm:flex-row items-start sm:items-center justify-between gap-4 border-b border-white/10 pb-4">
        <div className="flex items-center gap-3">
          <Link
            href="/admin/packages"
            className="p-2 rounded-xl bg-white/5 hover:bg-white/10 text-slate-300 transition"
          >
            <ArrowLeft className="w-5 h-5" />
          </Link>
          <div>
            <span className="text-[10px] uppercase font-bold tracking-widest text-[#D4AF37]">
              {isEditMode ? "Catalogue Editor" : "New Journey Creator"}
            </span>
            <h2 className="font-serif text-2xl font-bold text-white truncate max-w-md">
              {formData.name || "Untitled Package"}
            </h2>
          </div>
        </div>

        <div className="flex items-center gap-2.5">
          <button
            onClick={() => handleSubmit(false)}
            disabled={saving}
            className="px-4 py-2 rounded-xl bg-white/5 hover:bg-white/10 text-xs font-semibold text-slate-300 border border-white/10 transition"
          >
            Save Draft
          </button>
          <button
            onClick={() => handleSubmit(true)}
            disabled={saving}
            className="flex items-center gap-2 px-4 py-2 rounded-xl bg-gradient-to-r from-[#D4AF37] to-[#B38728] text-[#0A1118] text-xs font-bold shadow-md shadow-[#D4AF37]/20 hover:brightness-110 active:scale-95 transition"
          >
            <Save className="w-4 h-4" />
            <span>{saving ? "Saving Package..." : isEditMode ? "Update & Publish" : "Create & Publish"}</span>
          </button>
        </div>
      </div>

      {/* Notifications */}
      {error && (
        <div className="p-4 rounded-2xl bg-rose-500/10 border border-rose-500/30 text-xs text-rose-300 flex items-center gap-3">
          <AlertCircle className="w-5 h-5 flex-shrink-0 text-rose-400" />
          <span>{error}</span>
        </div>
      )}
      {success && (
        <div className="p-4 rounded-2xl bg-emerald-500/10 border border-emerald-500/30 text-xs text-emerald-300 flex items-center gap-3">
          <CheckCircle className="w-5 h-5 flex-shrink-0 text-emerald-400" />
          <span>{success}</span>
        </div>
      )}

      {/* Editor Tabs Navigation */}
      <div className="flex items-center gap-1.5 overflow-x-auto pb-2 border-b border-white/10 text-xs font-semibold">
        {[
          { id: "basic", label: "1. Basic Details", icon: Compass },
          { id: "pricing", label: "2. Pricing & Pace", icon: DollarSign },
          { id: "departures", label: "3. Departures", icon: Calendar },
          { id: "itinerary", label: "4. Day-by-Day Itinerary", icon: Layers },
          { id: "features", label: "5. Inclusions & Features", icon: Sparkles },
          { id: "accessibility", label: "6. Senior Accessibility", icon: HeartHandshake },
          { id: "media", label: "7. Media Gallery", icon: ImageIcon },
        ].map((tab) => {
          const Icon = tab.icon;
          const isActive = activeTab === tab.id;
          return (
            <button
              key={tab.id}
              onClick={() => setActiveTab(tab.id as any)}
              className={`flex items-center gap-2 px-3.5 py-2 rounded-xl transition whitespace-nowrap ${
                isActive
                  ? "bg-[#D4AF37] text-[#0A1118] font-bold shadow"
                  : "text-slate-400 hover:text-white hover:bg-white/5"
              }`}
            >
              <Icon className="w-4 h-4" />
              <span>{tab.label}</span>
            </button>
          );
        })}
      </div>

      {/* TAB 1: BASIC DETAILS */}
      {activeTab === "basic" && (
        <div className="rounded-3xl bg-[#0A1118] border border-[#D4AF37]/20 p-6 shadow-xl space-y-5">
          <h3 className="font-serif text-lg font-bold text-white">General Information</h3>

          <div className="grid grid-cols-1 md:grid-cols-2 gap-4">
            <div className="space-y-1.5">
              <label className="text-xs font-semibold text-slate-300">Package Title *</label>
              <input
                type="text"
                placeholder="e.g. Rameshwaram & Madurai Sacred Yatra"
                value={formData.name}
                onChange={(e) => handleNameChange(e.target.value)}
                className="w-full px-3.5 py-2.5 rounded-xl bg-white/5 border border-white/10 text-xs sm:text-sm text-white focus:outline-none focus:border-[#D4AF37]/50"
              />
            </div>

            <div className="space-y-1.5">
              <label className="text-xs font-semibold text-slate-300">URL Slug * (Unique Identifier)</label>
              <input
                type="text"
                placeholder="e.g. rameshwaram-madurai-sacred-yatra"
                value={formData.slug}
                onChange={(e) => setFormData({ ...formData, slug: e.target.value.toLowerCase().replace(/[^a-z0-9-]+/g, "-") })}
                className="w-full px-3.5 py-2.5 rounded-xl bg-white/5 border border-white/10 text-xs sm:text-sm text-white font-mono focus:outline-none focus:border-[#D4AF37]/50"
              />
            </div>

            <div className="space-y-1.5">
              <label className="text-xs font-semibold text-slate-300">Destination Name / City</label>
              <input
                type="text"
                placeholder="e.g. Rameshwaram, Tamil Nadu"
                value={formData.destination_name || ""}
                onChange={(e) => setFormData({ ...formData, destination_name: e.target.value })}
                className="w-full px-3.5 py-2.5 rounded-xl bg-white/5 border border-white/10 text-xs sm:text-sm text-white focus:outline-none focus:border-[#D4AF37]/50"
              />
            </div>

            <div className="space-y-1.5">
              <label className="text-xs font-semibold text-slate-300">Region</label>
              <select
                value={formData.region || "South India"}
                onChange={(e) => setFormData({ ...formData, region: e.target.value })}
                className="w-full px-3.5 py-2.5 rounded-xl bg-[#0F172A] border border-white/10 text-xs sm:text-sm text-white focus:outline-none focus:border-[#D4AF37]/50"
              >
                <option value="South India">South India</option>
                <option value="North India">North India</option>
                <option value="Himalayas / Char Dham">Himalayas / Char Dham</option>
                <option value="West India">West India</option>
                <option value="East India">East India</option>
                <option value="International">International</option>
              </select>
            </div>

            <div className="space-y-1.5">
              <label className="text-xs font-semibold text-slate-300">Main Category</label>
              <select
                value={formData.category || "Pilgrimage"}
                onChange={(e) => setFormData({ ...formData, category: e.target.value })}
                className="w-full px-3.5 py-2.5 rounded-xl bg-[#0F172A] border border-white/10 text-xs sm:text-sm text-white focus:outline-none focus:border-[#D4AF37]/50"
              >
                <option value="Pilgrimage">Pilgrimage (Temple Yatra)</option>
                <option value="Spiritual Heritage">Spiritual Heritage</option>
                <option value="Char Dham">Char Dham</option>
                <option value="Jyotirlinga">12 Jyotirlinga</option>
                <option value="Divya Desam">Divya Desam</option>
                <option value="Senior Escorted">Senior Escorted</option>
                <option value="Family Yatra">Family Yatra</option>
              </select>
            </div>

            <div className="space-y-1.5">
              <label className="text-xs font-semibold text-slate-300">Default Departure City</label>
              <input
                type="text"
                placeholder="e.g. Chennai, Bangalore, Delhi, Mumbai"
                value={formData.default_departure_city || ""}
                onChange={(e) => setFormData({ ...formData, default_departure_city: e.target.value })}
                className="w-full px-3.5 py-2.5 rounded-xl bg-white/5 border border-white/10 text-xs sm:text-sm text-white focus:outline-none focus:border-[#D4AF37]/50"
              />
            </div>
          </div>

          <div className="space-y-1.5">
            <label className="text-xs font-semibold text-slate-300">Short Summary (Preview Card Snippet)</label>
            <textarea
              rows={2}
              placeholder="A brief spiritual overview displayed on cards and search results..."
              value={formData.summary || ""}
              onChange={(e) => setFormData({ ...formData, summary: e.target.value })}
              className="w-full p-3 rounded-xl bg-white/5 border border-white/10 text-xs sm:text-sm text-white focus:outline-none focus:border-[#D4AF37]/50"
            />
          </div>

          <div className="space-y-1.5">
            <label className="text-xs font-semibold text-slate-300">Full Spiritual Description</label>
            <textarea
              rows={4}
              placeholder="Detailed description of the temples, legends, and divine experience..."
              value={formData.description || ""}
              onChange={(e) => setFormData({ ...formData, description: e.target.value })}
              className="w-full p-3 rounded-xl bg-white/5 border border-white/10 text-xs sm:text-sm text-white focus:outline-none focus:border-[#D4AF37]/50"
            />
          </div>

          <div className="flex flex-wrap gap-6 pt-3 border-t border-white/10">
            <label className="flex items-center gap-2 text-xs font-semibold text-slate-300 cursor-pointer">
              <input
                type="checkbox"
                checked={formData.featured}
                onChange={(e) => setFormData({ ...formData, featured: e.target.checked })}
                className="w-4 h-4 rounded text-[#D4AF37] focus:ring-0 cursor-pointer"
              />
              <span>Featured Tour (Display on Homepage Showcase)</span>
            </label>

            <label className="flex items-center gap-2 text-xs font-semibold text-slate-300 cursor-pointer">
              <input
                type="checkbox"
                checked={formData.is_active}
                onChange={(e) => setFormData({ ...formData, is_active: e.target.checked })}
                className="w-4 h-4 rounded text-[#D4AF37] focus:ring-0 cursor-pointer"
              />
              <span>Live & Published to Public Website</span>
            </label>
          </div>
        </div>
      )}

      {/* TAB 2: PRICING & PACE */}
      {activeTab === "pricing" && (
        <div className="rounded-3xl bg-[#0A1118] border border-[#D4AF37]/20 p-6 shadow-xl space-y-5">
          <h3 className="font-serif text-lg font-bold text-white">Pricing & Travel Pace</h3>

          <div className="grid grid-cols-1 sm:grid-cols-3 gap-4">
            <div className="space-y-1.5">
              <label className="text-xs font-semibold text-slate-300">Base Price (INR) *</label>
              <input
                type="number"
                value={formData.base_price || 0}
                onChange={(e) => setFormData({ ...formData, base_price: Number(e.target.value) })}
                className="w-full px-3.5 py-2.5 rounded-xl bg-white/5 border border-white/10 text-xs sm:text-sm text-white font-mono focus:outline-none focus:border-[#D4AF37]/50"
              />
            </div>

            <div className="space-y-1.5">
              <label className="text-xs font-semibold text-slate-300">Price Basis</label>
              <input
                type="text"
                placeholder="e.g. Per Person / Twin Sharing"
                value={formData.price_basis || "Per Person"}
                onChange={(e) => setFormData({ ...formData, price_basis: e.target.value })}
                className="w-full px-3.5 py-2.5 rounded-xl bg-white/5 border border-white/10 text-xs sm:text-sm text-white focus:outline-none focus:border-[#D4AF37]/50"
              />
            </div>

            <div className="space-y-1.5">
              <label className="text-xs font-semibold text-slate-300">Best Season / Timing</label>
              <input
                type="text"
                placeholder="e.g. October to March"
                value={formData.best_season || ""}
                onChange={(e) => setFormData({ ...formData, best_season: e.target.value })}
                className="w-full px-3.5 py-2.5 rounded-xl bg-white/5 border border-white/10 text-xs sm:text-sm text-white focus:outline-none focus:border-[#D4AF37]/50"
              />
            </div>
          </div>

          <div className="grid grid-cols-1 sm:grid-cols-3 gap-4">
            <div className="space-y-1.5">
              <label className="text-xs font-semibold text-slate-300">Duration (Days)</label>
              <input
                type="number"
                value={formData.duration_days}
                onChange={(e) => setFormData({ ...formData, duration_days: Number(e.target.value) })}
                className="w-full px-3.5 py-2.5 rounded-xl bg-white/5 border border-white/10 text-xs sm:text-sm text-white focus:outline-none focus:border-[#D4AF37]/50"
              />
            </div>

            <div className="space-y-1.5">
              <label className="text-xs font-semibold text-slate-300">Duration (Nights)</label>
              <input
                type="number"
                value={formData.duration_nights || 0}
                onChange={(e) => setFormData({ ...formData, duration_nights: Number(e.target.value) })}
                className="w-full px-3.5 py-2.5 rounded-xl bg-white/5 border border-white/10 text-xs sm:text-sm text-white focus:outline-none focus:border-[#D4AF37]/50"
              />
            </div>

            <div className="space-y-1.5">
              <label className="text-xs font-semibold text-slate-300">Journey Pace</label>
              <select
                value={formData.pace || "Relaxed"}
                onChange={(e) => setFormData({ ...formData, pace: e.target.value })}
                className="w-full px-3.5 py-2.5 rounded-xl bg-[#0F172A] border border-white/10 text-xs sm:text-sm text-white focus:outline-none focus:border-[#D4AF37]/50"
              >
                <option value="Relaxed">Relaxed (Gentle schedule for seniors)</option>
                <option value="Moderate">Moderate</option>
                <option value="Fast">Fast Paced</option>
              </select>
            </div>
          </div>
        </div>
      )}

      {/* TAB 3: DEPARTURES */}
      {activeTab === "departures" && (
        <div className="rounded-3xl bg-[#0A1118] border border-[#D4AF37]/20 p-6 shadow-xl space-y-5">
          <div className="flex items-center justify-between">
            <div>
              <h3 className="font-serif text-lg font-bold text-white">Upcoming Departures & Batches</h3>
              <p className="text-xs text-slate-400">Scheduled group batches with capacity limits</p>
            </div>
            <button
              onClick={addDeparture}
              className="flex items-center gap-1.5 px-3 py-1.5 rounded-xl bg-[#D4AF37] text-[#0A1118] text-xs font-bold shadow hover:brightness-110"
            >
              <Plus className="w-3.5 h-3.5" />
              <span>Add Batch</span>
            </button>
          </div>

          <div className="space-y-3">
            {(formData.departures || []).map((dep, idx) => (
              <div
                key={idx}
                className="p-4 rounded-2xl bg-white/5 border border-white/10 grid grid-cols-1 sm:grid-cols-6 gap-3 items-center"
              >
                <div>
                  <label className="text-[10px] uppercase text-slate-400">City</label>
                  <input
                    type="text"
                    value={dep.departure_city || ""}
                    onChange={(e) => {
                      const deps = [...(formData.departures || [])];
                      deps[idx].departure_city = e.target.value;
                      setFormData({ ...formData, departures: deps });
                    }}
                    className="w-full px-2.5 py-1.5 rounded-lg bg-white/5 border border-white/10 text-xs text-white"
                  />
                </div>

                <div>
                  <label className="text-[10px] uppercase text-slate-400">Start Date</label>
                  <input
                    type="date"
                    value={dep.start_date || ""}
                    onChange={(e) => {
                      const deps = [...(formData.departures || [])];
                      deps[idx].start_date = e.target.value;
                      setFormData({ ...formData, departures: deps });
                    }}
                    className="w-full px-2.5 py-1.5 rounded-lg bg-white/5 border border-white/10 text-xs text-white"
                  />
                </div>

                <div>
                  <label className="text-[10px] uppercase text-slate-400">End Date</label>
                  <input
                    type="date"
                    value={dep.end_date || ""}
                    onChange={(e) => {
                      const deps = [...(formData.departures || [])];
                      deps[idx].end_date = e.target.value;
                      setFormData({ ...formData, departures: deps });
                    }}
                    className="w-full px-2.5 py-1.5 rounded-lg bg-white/5 border border-white/10 text-xs text-white"
                  />
                </div>

                <div>
                  <label className="text-[10px] uppercase text-slate-400">Capacity / Left</label>
                  <div className="flex gap-1">
                    <input
                      type="number"
                      placeholder="Cap"
                      value={dep.capacity || 30}
                      onChange={(e) => {
                        const deps = [...(formData.departures || [])];
                        deps[idx].capacity = Number(e.target.value);
                        setFormData({ ...formData, departures: deps });
                      }}
                      className="w-1/2 px-2 py-1.5 rounded-lg bg-white/5 border border-white/10 text-xs text-white"
                    />
                    <input
                      type="number"
                      placeholder="Left"
                      value={dep.available_seats || 30}
                      onChange={(e) => {
                        const deps = [...(formData.departures || [])];
                        deps[idx].available_seats = Number(e.target.value);
                        setFormData({ ...formData, departures: deps });
                      }}
                      className="w-1/2 px-2 py-1.5 rounded-lg bg-white/5 border border-white/10 text-xs text-white"
                    />
                  </div>
                </div>

                <div>
                  <label className="text-[10px] uppercase text-slate-400">Status</label>
                  <select
                    value={dep.status || "open"}
                    onChange={(e) => {
                      const deps = [...(formData.departures || [])];
                      deps[idx].status = e.target.value;
                      setFormData({ ...formData, departures: deps });
                    }}
                    className="w-full px-2 py-1.5 rounded-lg bg-[#0F172A] border border-white/10 text-xs text-white"
                  >
                    <option value="open">Open</option>
                    <option value="guaranteed">Guaranteed</option>
                    <option value="almost_full">Almost Full</option>
                    <option value="completed">Completed</option>
                  </select>
                </div>

                <div className="flex justify-end pt-3">
                  <button
                    onClick={() => removeDeparture(idx)}
                    className="p-1.5 rounded-lg text-slate-500 hover:text-rose-400 hover:bg-rose-500/10 transition"
                  >
                    <Trash2 className="w-4 h-4" />
                  </button>
                </div>
              </div>
            ))}
          </div>
        </div>
      )}

      {/* TAB 4: ITINERARY BUILDER */}
      {activeTab === "itinerary" && (
        <div className="rounded-3xl bg-[#0A1118] border border-[#D4AF37]/20 p-6 shadow-xl space-y-6">
          <div className="flex items-center justify-between">
            <div>
              <h3 className="font-serif text-lg font-bold text-white">Day-by-Day Sacred Itinerary</h3>
              <p className="text-xs text-slate-400">Detailed darshan timings, morning/evening rituals, and accommodation</p>
            </div>
            <button
              onClick={addItineraryDay}
              className="flex items-center gap-1.5 px-3.5 py-2 rounded-xl bg-[#D4AF37] text-[#0A1118] text-xs font-bold shadow hover:brightness-110"
            >
              <Plus className="w-3.5 h-3.5" />
              <span>Add Day {(formData.itinerary?.length || 0) + 1}</span>
            </button>
          </div>

          <div className="space-y-6">
            {(formData.itinerary || []).map((day, idx) => (
              <div
                key={idx}
                className="p-5 rounded-2xl bg-white/5 border border-white/10 space-y-4 relative group"
              >
                <div className="flex items-center justify-between border-b border-white/10 pb-3">
                  <div className="flex items-center gap-2">
                    <span className="w-7 h-7 rounded-lg bg-[#D4AF37] text-[#0A1118] font-bold text-xs flex items-center justify-center">
                      D{day.day_number || idx + 1}
                    </span>
                    <input
                      type="text"
                      placeholder="Day Title (e.g. Rameshwaram 22 Sacred Theertham Snanam)"
                      value={day.title || ""}
                      onChange={(e) => {
                        const days = [...(formData.itinerary || [])];
                        days[idx].title = e.target.value;
                        setFormData({ ...formData, itinerary: days });
                      }}
                      className="px-3 py-1 rounded-lg bg-white/5 border border-white/10 text-sm font-bold text-white focus:outline-none focus:border-[#D4AF37]/50 flex-1 min-w-[250px]"
                    />
                  </div>

                  <button
                    onClick={() => removeItineraryDay(idx)}
                    className="p-1.5 rounded-lg text-slate-500 hover:text-rose-400 hover:bg-rose-500/10 transition"
                    title="Remove Day"
                  >
                    <Trash2 className="w-4 h-4" />
                  </button>
                </div>

                <div className="space-y-1.5">
                  <label className="text-[11px] font-semibold text-slate-400">Day Overview</label>
                  <textarea
                    rows={2}
                    placeholder="Summary of today's spiritual ceremonies and travel..."
                    value={day.overview || ""}
                    onChange={(e) => {
                      const days = [...(formData.itinerary || [])];
                      days[idx].overview = e.target.value;
                      setFormData({ ...formData, itinerary: days });
                    }}
                    className="w-full p-2.5 rounded-xl bg-white/5 border border-white/10 text-xs text-white"
                  />
                </div>

                <div className="grid grid-cols-1 md:grid-cols-3 gap-3">
                  <div className="space-y-1">
                    <label className="text-[11px] font-semibold text-[#D4AF37]">Morning Schedule</label>
                    <input
                      type="text"
                      placeholder="Morning Header"
                      value={day.morning_title || ""}
                      onChange={(e) => {
                        const days = [...(formData.itinerary || [])];
                        days[idx].morning_title = e.target.value;
                        setFormData({ ...formData, itinerary: days });
                      }}
                      className="w-full px-2.5 py-1.5 rounded-lg bg-white/5 border border-white/10 text-xs text-white mb-1"
                    />
                    <textarea
                      rows={2}
                      placeholder="Morning activities..."
                      value={day.morning_description || ""}
                      onChange={(e) => {
                        const days = [...(formData.itinerary || [])];
                        days[idx].morning_description = e.target.value;
                        setFormData({ ...formData, itinerary: days });
                      }}
                      className="w-full p-2 rounded-lg bg-white/5 border border-white/10 text-xs text-slate-300"
                    />
                  </div>

                  <div className="space-y-1">
                    <label className="text-[11px] font-semibold text-amber-400">Afternoon Schedule</label>
                    <input
                      type="text"
                      placeholder="Afternoon Header"
                      value={day.afternoon_title || ""}
                      onChange={(e) => {
                        const days = [...(formData.itinerary || [])];
                        days[idx].afternoon_title = e.target.value;
                        setFormData({ ...formData, itinerary: days });
                      }}
                      className="w-full px-2.5 py-1.5 rounded-lg bg-white/5 border border-white/10 text-xs text-white mb-1"
                    />
                    <textarea
                      rows={2}
                      placeholder="Afternoon activities..."
                      value={day.afternoon_description || ""}
                      onChange={(e) => {
                        const days = [...(formData.itinerary || [])];
                        days[idx].afternoon_description = e.target.value;
                        setFormData({ ...formData, itinerary: days });
                      }}
                      className="w-full p-2 rounded-lg bg-white/5 border border-white/10 text-xs text-slate-300"
                    />
                  </div>

                  <div className="space-y-1">
                    <label className="text-[11px] font-semibold text-indigo-400">Evening Schedule</label>
                    <input
                      type="text"
                      placeholder="Evening Header"
                      value={day.evening_title || ""}
                      onChange={(e) => {
                        const days = [...(formData.itinerary || [])];
                        days[idx].evening_title = e.target.value;
                        setFormData({ ...formData, itinerary: days });
                      }}
                      className="w-full px-2.5 py-1.5 rounded-lg bg-white/5 border border-white/10 text-xs text-white mb-1"
                    />
                    <textarea
                      rows={2}
                      placeholder="Evening aarti / darshan..."
                      value={day.evening_description || ""}
                      onChange={(e) => {
                        const days = [...(formData.itinerary || [])];
                        days[idx].evening_description = e.target.value;
                        setFormData({ ...formData, itinerary: days });
                      }}
                      className="w-full p-2 rounded-lg bg-white/5 border border-white/10 text-xs text-slate-300"
                    />
                  </div>
                </div>

                <div className="grid grid-cols-1 sm:grid-cols-3 gap-3 pt-2 text-xs">
                  <div>
                    <label className="text-[10px] text-slate-400 uppercase">Meals Included</label>
                    <input
                      type="text"
                      placeholder="Breakfast, Lunch, Dinner"
                      value={day.meals || ""}
                      onChange={(e) => {
                        const days = [...(formData.itinerary || [])];
                        days[idx].meals = e.target.value;
                        setFormData({ ...formData, itinerary: days });
                      }}
                      className="w-full px-2.5 py-1.5 rounded-lg bg-white/5 border border-white/10 text-xs text-white"
                    />
                  </div>
                  <div>
                    <label className="text-[10px] text-slate-400 uppercase">Transport</label>
                    <input
                      type="text"
                      placeholder="AC Deluxe Coach"
                      value={day.transport || ""}
                      onChange={(e) => {
                        const days = [...(formData.itinerary || [])];
                        days[idx].transport = e.target.value;
                        setFormData({ ...formData, itinerary: days });
                      }}
                      className="w-full px-2.5 py-1.5 rounded-lg bg-white/5 border border-white/10 text-xs text-white"
                    />
                  </div>
                  <div>
                    <label className="text-[10px] text-slate-400 uppercase">Stay / Hotel</label>
                    <input
                      type="text"
                      placeholder="Hotel Heritage"
                      value={day.stay || ""}
                      onChange={(e) => {
                        const days = [...(formData.itinerary || [])];
                        days[idx].stay = e.target.value;
                        setFormData({ ...formData, itinerary: days });
                      }}
                      className="w-full px-2.5 py-1.5 rounded-lg bg-white/5 border border-white/10 text-xs text-white"
                    />
                  </div>
                </div>
              </div>
            ))}
          </div>
        </div>
      )}

      {/* TAB 5: FEATURES & INCLUSIONS */}
      {activeTab === "features" && (
        <div className="rounded-3xl bg-[#0A1118] border border-[#D4AF37]/20 p-6 shadow-xl space-y-6">
          <div className="flex items-center justify-between">
            <div>
              <h3 className="font-serif text-lg font-bold text-white">Inclusions, Highlights & Features</h3>
              <p className="text-xs text-slate-400">Everything provided for comfortable elder travel</p>
            </div>
            <div className="flex items-center gap-2">
              <button
                onClick={() => addFeature("inclusion")}
                className="px-3 py-1.5 rounded-xl bg-emerald-500/20 text-emerald-300 border border-emerald-500/30 text-xs font-semibold hover:bg-emerald-500/30"
              >
                + Inclusion
              </button>
              <button
                onClick={() => addFeature("exclusion")}
                className="px-3 py-1.5 rounded-xl bg-rose-500/20 text-rose-300 border border-rose-500/30 text-xs font-semibold hover:bg-rose-500/30"
              >
                + Exclusion
              </button>
              <button
                onClick={() => addFeature("highlight")}
                className="px-3 py-1.5 rounded-xl bg-[#D4AF37]/20 text-[#D4AF37] border border-[#D4AF37]/30 text-xs font-semibold hover:bg-[#D4AF37]/30"
              >
                + Highlight
              </button>
            </div>
          </div>

          <div className="space-y-3">
            {(formData.features || []).map((feat, idx) => (
              <div
                key={idx}
                className="p-3.5 rounded-2xl bg-white/5 border border-white/10 flex items-center gap-3"
              >
                <select
                  value={feat.feature_type}
                  onChange={(e) => {
                    const feats = [...(formData.features || [])];
                    feats[idx].feature_type = e.target.value;
                    setFormData({ ...formData, features: feats });
                  }}
                  className="px-2.5 py-1.5 rounded-lg bg-[#0F172A] border border-white/10 text-xs font-semibold text-slate-200 capitalize"
                >
                  <option value="inclusion">Inclusion</option>
                  <option value="exclusion">Exclusion</option>
                  <option value="highlight">Highlight</option>
                  <option value="facility">Facility</option>
                </select>

                <input
                  type="text"
                  placeholder="Feature Title (e.g. Pure Vegetarian Meals)"
                  value={feat.title}
                  onChange={(e) => {
                    const feats = [...(formData.features || [])];
                    feats[idx].title = e.target.value;
                    setFormData({ ...formData, features: feats });
                  }}
                  className="flex-1 px-3 py-1.5 rounded-lg bg-white/5 border border-white/10 text-xs text-white"
                />

                <input
                  type="text"
                  placeholder="Optional brief description"
                  value={feat.description || ""}
                  onChange={(e) => {
                    const feats = [...(formData.features || [])];
                    feats[idx].description = e.target.value;
                    setFormData({ ...formData, features: feats });
                  }}
                  className="flex-1 px-3 py-1.5 rounded-lg bg-white/5 border border-white/10 text-xs text-slate-300 hidden md:block"
                />

                <button
                  onClick={() => removeFeature(idx)}
                  className="p-1.5 rounded-lg text-slate-500 hover:text-rose-400 transition"
                >
                  <Trash2 className="w-4 h-4" />
                </button>
              </div>
            ))}
          </div>
        </div>
      )}

      {/* TAB 6: ACCESSIBILITY & SENIOR CARE */}
      {activeTab === "accessibility" && (
        <div className="rounded-3xl bg-[#0A1118] border border-[#D4AF37]/20 p-6 shadow-xl space-y-6">
          <div className="flex items-center gap-3">
            <div className="p-2.5 rounded-2xl bg-teal-500/10 text-teal-400 border border-teal-500/20">
              <HeartHandshake className="w-6 h-6" />
            </div>
            <div>
              <h3 className="font-serif text-lg font-bold text-white">Senior Care & Accessibility Protocols</h3>
              <p className="text-xs text-slate-400">Strictly verified physical accommodation information</p>
            </div>
          </div>

          <div className="grid grid-cols-1 sm:grid-cols-2 md:grid-cols-3 gap-4">
            {[
              { key: "wheelchair_available", label: "Wheelchair Assistance Available" },
              { key: "battery_cart_available", label: "Battery Cart Available at Temple" },
              { key: "reduced_walking_option", label: "Reduced Walking Route Option" },
              { key: "lift_accessible_stay", label: "Lift-Accessible Hotel Stay" },
              { key: "ground_floor_room", label: "Ground Floor Room Option" },
              { key: "accessible_bathroom", label: "Accessible Western Bathroom" },
              { key: "darshan_assistance", label: "Special Guided Darshan Escort" },
              { key: "medical_facility_nearby", label: "Hospital / Clinic Nearby" },
            ].map((item) => (
              <label
                key={item.key}
                className="flex items-center gap-3 p-3.5 rounded-2xl bg-white/5 border border-white/5 hover:border-teal-500/30 transition cursor-pointer"
              >
                <input
                  type="checkbox"
                  checked={Boolean(formData.accessibility?.[item.key])}
                  onChange={(e) => {
                    setFormData({
                      ...formData,
                      accessibility: {
                        ...formData.accessibility,
                        [item.key]: e.target.checked,
                      },
                    });
                  }}
                  className="w-4 h-4 rounded text-teal-500 focus:ring-0 cursor-pointer"
                />
                <span className="text-xs font-semibold text-slate-200">{item.label}</span>
              </label>
            ))}
          </div>

          <div className="space-y-1.5">
            <label className="text-xs font-semibold text-slate-300">Detailed Senior Care Notes</label>
            <textarea
              rows={3}
              placeholder="Important physical notes for seniors (e.g. 15 steps at temple gate, elevator in hotel, medical oxygen on coach)..."
              value={formData.accessibility?.care_notes || ""}
              onChange={(e) => {
                setFormData({
                  ...formData,
                  accessibility: {
                    ...formData.accessibility,
                    care_notes: e.target.value,
                  },
                });
              }}
              className="w-full p-3 rounded-xl bg-white/5 border border-white/10 text-xs text-white"
            />
          </div>
        </div>
      )}

      {/* TAB 7: MEDIA GALLERY & SUPABASE STORAGE */}
      {activeTab === "media" && (
        <div className="rounded-3xl bg-[#0A1118] border border-[#D4AF37]/20 p-6 shadow-xl space-y-6">
          <div className="flex items-center justify-between">
            <div>
              <h3 className="font-serif text-lg font-bold text-white">Media Gallery & Storage</h3>
              <p className="text-xs text-slate-400">High-resolution temple imagery stored in Supabase Storage</p>
            </div>

            {/* Storage Image Upload Button */}
            <label className="flex items-center gap-2 px-4 py-2 rounded-xl bg-[#D4AF37] text-[#0A1118] text-xs font-bold shadow hover:brightness-110 cursor-pointer transition">
              <Upload className="w-4 h-4" />
              <span>{uploadingImage ? "Uploading to Storage..." : "Upload New Image"}</span>
              <input
                type="file"
                accept="image/*"
                onChange={handleImageUpload}
                disabled={uploadingImage}
                className="hidden"
              />
            </label>
          </div>

          {/* Primary Cover Image Preview */}
          <div className="p-4 rounded-2xl bg-white/5 border border-white/10 space-y-3">
            <label className="text-xs font-bold uppercase tracking-wider text-[#D4AF37]">
              Main Cover Photo (URL or Uploaded)
            </label>
            <div className="flex flex-col sm:flex-row gap-4 items-start sm:items-center">
              <div className="w-32 h-20 rounded-xl bg-slate-900 overflow-hidden border border-white/10 flex-shrink-0">
                <img
                  src={formData.image || "/images/placeholder.jpg"}
                  alt="Cover Preview"
                  className="w-full h-full object-cover"
                />
              </div>
              <input
                type="text"
                placeholder="https://... or uploaded image URL"
                value={formData.image || ""}
                onChange={(e) => setFormData({ ...formData, image: e.target.value })}
                className="flex-1 px-3.5 py-2 rounded-xl bg-white/5 border border-white/10 text-xs text-white font-mono"
              />
            </div>
          </div>
        </div>
      )}
    </div>
  );
};
