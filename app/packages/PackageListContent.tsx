"use client";

import { useState, useEffect, useTransition } from "react";
import { useSearchParams, useRouter } from "next/navigation";
import Navbar from "@/components/navigation/Navbar";
import Footer from "@/components/layout/Footer";
import PageTransition from "@/components/animations/PageTransition";
import { FadeIn, FadeUp, ScaleIn, StaggerContainer, StaggerItem } from "@/components/animations/Reveals";
import PackageCard from "@/components/cards/PackageCard";
import { mockPackages, Package } from "@/data/packages";
import { useApp } from "@/context/AppContext";
import { Search, MapPin, SlidersHorizontal, Check, RefreshCw, X, AlertTriangle, Eye, ArrowRight, ShieldCheck } from "lucide-react";
import Link from "next/link";
import { motion, AnimatePresence } from "framer-motion";
import { easeQuint, getAssetPath } from "@/lib/animations";

export interface PackageFilters {
  searchText: string;
  regions: string[];
  mainCategory: "All" | "Family" | "Pilgrimage";
  selectedCategories: string[];
  faith: string;
  durations: string[];
  seniorFriendlyOnly: boolean;
  wheelchairOnly: boolean;
  maxBudget: number;
  sortBy: string;
  meals: string[];
  transports: string[];
  seasons: string[];
  travellerTypes: string[];
}

const validPackagePrices = mockPackages
  .map((p) => p.price)
  .filter((p): p is number => typeof p === "number" && !isNaN(p) && p > 0);

export const lowestPackagePrice = validPackagePrices.length > 0 ? Math.min(...validPackagePrices) : 10000;
export const highestPackagePrice = validPackagePrices.length > 0 ? Math.max(...validPackagePrices) : 60000;

const defaultFilters: PackageFilters = {
  searchText: "",
  regions: [],
  mainCategory: "All",
  selectedCategories: ["Family", "Pilgrimage"],
  faith: "",
  durations: [],
  seniorFriendlyOnly: false,
  wheelchairOnly: false,
  maxBudget: highestPackagePrice,
  sortBy: "Recommended",
  meals: [],
  transports: [],
  seasons: [],
  travellerTypes: [],
};

const filterPackages = (packages: Package[], filters: PackageFilters): Package[] => {
  return packages.filter((pkg) => {
    // Text search
    if (filters.searchText) {
      const query = filters.searchText.toLowerCase().trim();
      const matchTitle = pkg.title.toLowerCase().includes(query);
      const matchDest = (pkg.destinations || "").toLowerCase().includes(query);
      const matchLoc = (pkg.location || "").toLowerCase().includes(query);
      const matchName = (pkg.destinationName || "").toLowerCase().includes(query);
      const matchTags = pkg.tags ? pkg.tags.some(t => t.toLowerCase().includes(query)) : false;
      const matchSub = (pkg.subCategory || "").toLowerCase().includes(query);
      if (!matchTitle && !matchDest && !matchLoc && !matchName && !matchTags && !matchSub) return false;
    }

    // Regions
    if (filters.regions.length > 0) {
      const matchRegion = filters.regions.some(r => {
        if (r === "Pan India") {
          return pkg.region === "Pan India" || pkg.region !== "International";
        }
        if (r === "Across the World") {
          return pkg.region === "International";
        }
        if (r === pkg.region) return true;
        if (r === "Char Dham" && (pkg.tags?.includes("Char Dham") || pkg.title.toLowerCase().includes("char dham") || pkg.destinations?.toLowerCase().includes("char dham"))) return true;
        if (r === "Maharashtra" && (pkg.location?.includes("Maharashtra") || pkg.destinations?.includes("Maharashtra"))) return true;
        return pkg.region?.toLowerCase().includes(r.toLowerCase()) || pkg.destinations?.toLowerCase().includes(r.toLowerCase());
      });
      if (!matchRegion) return false;
    }

    // Main Category
    const activeCats = filters.selectedCategories || (filters.mainCategory === "All" ? ["Family", "Pilgrimage"] : [filters.mainCategory]);
    if (activeCats.length > 0 && activeCats.length < 2) {
      const matchMain = activeCats.some(cat => pkg.mainCategory === cat || pkg.category === cat);
      if (!matchMain) return false;
    }

    // Faith
    if (filters.faith) {
      const matchFaith = pkg.subCategory?.toLowerCase() === filters.faith.toLowerCase();
      if (!matchFaith) return false;
    }

    // Durations
    if (filters.durations.length > 0) {
      const days = parseInt(pkg.duration.split(" ")[0]) || 0;
      let durationMatch = false;
      if (filters.durations.includes("1-3") && days >= 1 && days <= 3) durationMatch = true;
      if (filters.durations.includes("4-7") && days >= 4 && days <= 7) durationMatch = true;
      if (filters.durations.includes("8+") && days >= 8) durationMatch = true;
      if (!durationMatch) return false;
    }

    // Senior Friendly
    if (filters.seniorFriendlyOnly && !pkg.seniorFriendly) return false;

    // Wheelchair Access
    if (filters.wheelchairOnly) {
      const isAccessible = pkg.wheelchairAccess === true || pkg.accessibilityStatus === "Wheelchair Accessible" || (pkg.accessibilityStatus as string) === "Full Accessibility";
      if (!isAccessible) return false;
    }

    // Budget
    if (pkg.price != null && pkg.price > filters.maxBudget) return false;

    // Meals
    if (filters.meals.length > 0) {
      const match = filters.meals.some(m => {
        if (m === "Veg") return pkg.vegMeals;
        if (m === "Meals") return pkg.inclusions?.meals;
        return false;
      });
      if (!match) return false;
    }

    // Transport Mode
    if (filters.transports.length > 0) {
      const matchTransport = filters.transports.some(t => {
        if (!pkg.inclusions?.transit) return false;
        const itinStr = (pkg.itinerary || []).map(day => day.details?.transport || "").join(" ").toLowerCase();
        const descStr = (pkg.description || "").toLowerCase();
        const titleStr = pkg.title.toLowerCase();
        const fullStr = `${itinStr} ${descStr} ${titleStr}`;

        if (t === "AC SUV") {
          return fullStr.includes("suv") || fullStr.includes("innova") || fullStr.includes("ertiga") || fullStr.includes("scorpio") || fullStr.includes("jeep");
        }
        if (t === "Coach") {
          return fullStr.includes("coach") || fullStr.includes("bus") || fullStr.includes("tempo") || fullStr.includes("traveller");
        }
        if (t === "AC Transport") {
          return fullStr.includes("sedan") || fullStr.includes("ac private") || fullStr.includes("chauffeur") || fullStr.includes("vehicle") || fullStr.includes("ac transport") || pkg.inclusions?.transit === true;
        }
        return true;
      });
      if (!matchTransport) return false;
    }

    // Season
    if (filters.seasons.length > 0) {
      const pkgSeason = pkg.bestSeason || "";
      const match = filters.seasons.some(s => pkgSeason.toLowerCase().includes(s.toLowerCase()));
      if (!match) return false;
    }

    // Traveller Type
    if (filters.travellerTypes.length > 0) {
      const match = filters.travellerTypes.some(t => {
        const search = t.toLowerCase();
        return (pkg.travellerTypes || []).some(type => {
          const typeLower = type.toLowerCase();
          if (search.includes("family") && typeLower.includes("famil")) return true;
          if (search.includes("couple") && typeLower.includes("coupl")) return true;
          if (search.includes("solo") && typeLower.includes("solo")) return true;
          if (search.includes("group") && typeLower.includes("group")) return true;
          return typeLower.includes(search);
        });
      });
      if (!match) return false;
    }

    return true;
  });
};

const sortPackages = (packages: Package[], sortBy: string, activeTransports: string[] = []): Package[] => {
  return [...packages].sort((a, b) => {
    // If transport mode filters are selected, prioritize and sort matching vehicles to the top
    if (activeTransports.length > 0) {
      const getTransportScore = (pkg: Package) => {
        const fullStr = `${(pkg.itinerary || []).map(d => d.details?.transport || "").join(" ")} ${pkg.description || ""} ${pkg.title}`.toLowerCase();
        let score = 0;
        activeTransports.forEach(t => {
          if (t === "AC SUV" && (fullStr.includes("suv") || fullStr.includes("innova") || fullStr.includes("ertiga"))) score += 20;
          if (t === "Coach" && (fullStr.includes("coach") || fullStr.includes("bus") || fullStr.includes("tempo"))) score += 20;
          if (t === "AC Transport" && (fullStr.includes("sedan") || fullStr.includes("chauffeur") || fullStr.includes("ac private"))) score += 10;
        });
        return score;
      };
      const scoreDiff = getTransportScore(b) - getTransportScore(a);
      if (scoreDiff !== 0) return scoreDiff;
    }

    if (sortBy === "Price: Low to High") return (a.price || 0) - (b.price || 0);
    if (sortBy === "Price: High to Low") return (b.price || 0) - (a.price || 0);
    if (sortBy === "Highest Rated") return (b.rating || 0) - (a.rating || 0);
    return 0; // Recommended fallback
  });
};

export default function PackageListContent() {
  const searchParams = useSearchParams();
  const router = useRouter();
  const { compareIds, toggleCompare, setCompareOpen, setEnquireOpen, setEnquirePackageId, recentlyViewed } = useApp();

  // Simulated Loading State for filters
  const [isLoading, setIsLoading] = useState(false);
  const [isPending, startTransition] = useTransition();

  // Search & Filter State
  const [filters, setFilters] = useState<PackageFilters>(() => {
    const categoryParam = searchParams.get("category");
    const faithParam = searchParams.get("faith");
    const dest = searchParams.get("dest");
    const dur = searchParams.get("duration");

    const initial: PackageFilters = { ...defaultFilters };

    if (categoryParam?.toLowerCase() === "pilgrimage") {
      initial.mainCategory = "Pilgrimage";
      initial.selectedCategories = ["Pilgrimage"];
    } else if (categoryParam?.toLowerCase() === "family") {
      initial.mainCategory = "Family";
      initial.selectedCategories = ["Family"];
    } else {
      initial.mainCategory = "All";
      initial.selectedCategories = ["Family", "Pilgrimage"];
    }

    if (initial.mainCategory === "Pilgrimage" && faithParam) {
      const normalized = faithParam.toLowerCase();
      if (normalized === "hinduism") initial.faith = "Hinduism";
      else if (normalized === "buddhism") initial.faith = "Buddhism";
      else if (normalized === "christianity") initial.faith = "Christianity";
      else if (normalized === "islam") initial.faith = "Islam";
    }

    if (dest) initial.searchText = dest;
    if (dur) {
      if (dur === "1-3") initial.durations = ["1-3"];
      else if (dur === "4-7") initial.durations = ["4-7"];
      else if (dur === "8+") initial.durations = ["8+"];
    }

    return initial;
  });
  const [showMobileFilters, setShowMobileFilters] = useState(false);

  // Read URL params on mount & updates
  useEffect(() => {
    const categoryParam = searchParams.get("category");
    const faithParam = searchParams.get("faith");
    const dest = searchParams.get("dest");
    const dur = searchParams.get("duration");

    setFilters(prev => {
      const newFilters = { ...prev };

      // Parse main category
      if (categoryParam?.toLowerCase() === "pilgrimage") {
        newFilters.mainCategory = "Pilgrimage";
        newFilters.selectedCategories = ["Pilgrimage"];
      } else if (categoryParam?.toLowerCase() === "family") {
        newFilters.mainCategory = "Family";
        newFilters.selectedCategories = ["Family"];
      } else {
        newFilters.mainCategory = "All";
        newFilters.selectedCategories = ["Family", "Pilgrimage"];
      }

      // Parse faith subcategory
      if ((newFilters.mainCategory === "Pilgrimage" || newFilters.selectedCategories.includes("Pilgrimage")) && faithParam) {
        const normalized = faithParam.toLowerCase();
        if (normalized === "hinduism") newFilters.faith = "Hinduism";
        else if (normalized === "buddhism") newFilters.faith = "Buddhism";
        else if (normalized === "christianity") newFilters.faith = "Christianity";
        else if (normalized === "islam") newFilters.faith = "Islam";
        else newFilters.faith = "";
      } else {
        newFilters.faith = "";
      }

      if (dest) newFilters.searchText = dest;
      if (dur) {
        if (dur === "1-3") newFilters.durations = ["1-3"];
        else if (dur === "4-7") newFilters.durations = ["4-7"];
        else if (dur === "8+") newFilters.durations = ["8+"];
      }

      return newFilters;
    });
  }, [searchParams]);

  // Counts for Category refinement
  const familyCount = mockPackages.filter(p => p.mainCategory === "Family" || p.category === "Family").length;
  const pilgrimageCount = mockPackages.filter(p => p.mainCategory === "Pilgrimage" || p.category === "Pilgrimage").length;
  
  const getFaithCount = (faithVal: string) => {
    return mockPackages.filter(p => 
      (p.mainCategory === "Pilgrimage" || p.category === "Pilgrimage") && 
      p.subCategory?.toLowerCase() === faithVal.toLowerCase()
    ).length;
  };

  const toggleMainCategory = (cat: "Family" | "Pilgrimage") => {
    setFilters(prev => {
      const currentArr = prev.selectedCategories || (prev.mainCategory === "All" ? ["Family", "Pilgrimage"] : [prev.mainCategory]);
      let nextArr: string[] = [];
      if (currentArr.includes(cat)) {
        nextArr = currentArr.filter(c => c !== cat);
      } else {
        nextArr = [...currentArr, cat];
      }
      
      // If user unselected both, fallback to all (both active)
      if (nextArr.length === 0) {
        nextArr = ["Family", "Pilgrimage"];
      }

      let nextCat: "All" | "Family" | "Pilgrimage" = "All";
      if (nextArr.length === 1) {
        nextCat = nextArr[0] as "Family" | "Pilgrimage";
      }

      const nextFaith = nextArr.includes("Pilgrimage") ? prev.faith : "";
      return {
        ...prev,
        mainCategory: nextCat,
        selectedCategories: nextArr,
        faith: nextFaith
      };
    });
  };

  // Filter & Sort Logic
  const filteredPackages = filterPackages(mockPackages, filters);
  const sortedPackages = sortPackages(filteredPackages, filters.sortBy, filters.transports);

  // Toggle Filters
  const updateFilter = <K extends keyof PackageFilters>(key: K, value: PackageFilters[K]) => {
    setFilters(prev => ({ ...prev, [key]: value }));
  };

  const toggleArrayFilter = <K extends keyof PackageFilters>(key: K, item: string) => {
    setFilters(prev => {
      const arr = prev[key] as string[];
      return {
        ...prev,
        [key]: arr.includes(item) ? arr.filter(i => i !== item) : [...arr, item]
      };
    });
  };

  const handleClearAll = () => {
    setFilters(defaultFilters);
  };

  // Compare packages drawer helper
  const comparedPackages = mockPackages.filter((p) => compareIds.includes(p.id));

  return (
    <>
      <Navbar />
      <PageTransition>
        <main className="w-full flex-grow max-w-container-max mx-auto px-margin-mobile md:px-12 py-10 flex flex-col gap-10">

          {/* Header section with breadcrumbs */}
          <div className="flex flex-col gap-4 text-left select-none">
            <nav className="text-xs font-semibold text-outline flex items-center gap-1.5 font-body-sm">
              <Link href="/" className="hover:text-primary transition-colors">Home</Link>
              <span className="material-symbols-outlined text-[14px]">chevron_right</span>
              <span className="text-on-surface font-bold">Packages</span>
            </nav>

            <div className="flex flex-col md:flex-row justify-between items-start md:items-end gap-4">
              <div>
                <h1 className="font-display-lg-mobile md:font-display-lg text-primary font-bold">
                  {filters.mainCategory === "Pilgrimage" ? "Pilgrimage Tour Packages" : "Explore Sacred Tour Packages"}
                </h1>
                <p className="text-on-surface-variant font-medium text-sm mt-1.5">
                  {filters.mainCategory === "Pilgrimage" ? (
                    "Explore thoughtfully planned pilgrimage journeys across sacred destinations."
                  ) : (
                    `Showing ${sortedPackages.length} of ${mockPackages.length} Pilgrimage and Heritage Tours`
                  )}
                </p>
              </div>

              {/* Sorting and Text Search */}
              <div className="flex items-center gap-3 w-full md:w-auto">
                <span className="text-xs font-bold text-outline uppercase tracking-wider whitespace-nowrap">Sort by</span>
                <select
                  value={filters.sortBy}
                  onChange={(e) => {
                    updateFilter("sortBy", e.target.value);
                  }}
                  className="bg-surface-container-lowest text-on-surface p-2.5 rounded-lg border border-outline-variant focus:border-primary outline-none text-sm cursor-pointer"
                >
                  <option>Recommended</option>
                  <option>Price: Low to High</option>
                  <option>Price: High to Low</option>
                  <option>Highest Rated</option>
                </select>
              </div>
            </div>

            {/* Global Trust Banner */}
            <div className="bg-surface-container-lowest border border-outline-variant/15 rounded-xl p-4 mt-6 flex flex-wrap justify-between items-center gap-4 text-left select-none shadow-level-1">
              <div className="flex items-center gap-2.5">
                <div className="w-8 h-8 rounded-full bg-emerald-50 text-emerald-600 flex items-center justify-center shrink-0">
                  <Check size={16} className="stroke-[3]" />
                </div>
                <div>
                  <h4 className="text-xs font-bold text-primary font-sans uppercase tracking-wide">Verified Stays</h4>
                  <p className="text-[10.5px] text-slate-500 font-medium">Clean, pre-screened rooms</p>
                </div>
              </div>
              
              <div className="h-8 w-px bg-outline-variant/15 hidden md:block" />

              <div className="flex items-center gap-2.5">
                <div className="w-8 h-8 rounded-full bg-emerald-50 text-emerald-600 flex items-center justify-center shrink-0">
                  <Check size={16} className="stroke-[3]" />
                </div>
                <div>
                  <h4 className="text-xs font-bold text-primary font-sans uppercase tracking-wide">Expert Guides</h4>
                  <p className="text-[10.5px] text-slate-500 font-medium">Local support & guidance</p>
                </div>
              </div>

              <div className="h-8 w-px bg-outline-variant/15 hidden md:block" />

              <div className="flex items-center gap-2.5">
                <div className="w-8 h-8 rounded-full bg-emerald-50 text-emerald-600 flex items-center justify-center shrink-0">
                  <Check size={16} className="stroke-[3]" />
                </div>
                <div>
                  <h4 className="text-xs font-bold text-primary font-sans uppercase tracking-wide">No Hidden Fees</h4>
                  <p className="text-[10.5px] text-slate-500 font-medium">100% transparent pricing</p>
                </div>
              </div>

              <div className="h-8 w-px bg-outline-variant/15 hidden md:block" />

              <div className="flex items-center gap-2.5">
                <div className="w-8 h-8 rounded-full bg-emerald-50 text-emerald-600 flex items-center justify-center shrink-0">
                  <Check size={16} className="stroke-[3]" />
                </div>
                <div>
                  <h4 className="text-xs font-bold text-primary font-sans uppercase tracking-wide">GST Compliant</h4>
                  <p className="text-[10.5px] text-slate-500 font-medium">Tax-registered packages</p>
                </div>
              </div>
            </div>

            {/* Active Filter Chips */}
            {(filters.regions.length > 0 || filters.mainCategory !== "All" || filters.faith !== "" || filters.durations.length > 0 || filters.seniorFriendlyOnly || filters.wheelchairOnly || filters.searchText || filters.meals.length > 0 || filters.transports.length > 0 || filters.seasons.length > 0 || filters.travellerTypes.length > 0) && (
              <div className="flex flex-wrap gap-2 pt-2 items-center">
                <span className="text-xs font-bold uppercase tracking-wider text-outline mr-2">Active filters:</span>

                {filters.searchText && (
                  <span className="inline-flex items-center gap-1 bg-surface-variant text-on-surface-variant px-3 py-1 rounded-full text-xs font-semibold">
                    Search: &quot;{filters.searchText}&quot;
                    <button onClick={() => updateFilter("searchText", "")} className="hover:text-error transition-colors"><X size={12} /></button>
                  </span>
                )}
                {filters.seniorFriendlyOnly && (
                  <span className="inline-flex items-center gap-1 bg-surface-variant text-on-surface-variant px-3 py-1 rounded-full text-xs font-semibold">
                    Senior-Friendly
                    <button onClick={() => updateFilter("seniorFriendlyOnly", false)} className="hover:text-error transition-colors"><X size={12} /></button>
                  </span>
                )}
                {filters.wheelchairOnly && (
                  <span className="inline-flex items-center gap-1 bg-surface-variant text-on-surface-variant px-3 py-1 rounded-full text-xs font-semibold">
                    Wheelchair Accessible
                    <button onClick={() => updateFilter("wheelchairOnly", false)} className="hover:text-error transition-colors"><X size={12} /></button>
                  </span>
                )}
                {filters.regions.map((r) => (
                  <span key={r} className="inline-flex items-center gap-1 bg-surface-variant text-on-surface-variant px-3 py-1 rounded-full text-xs font-semibold">
                    {r}
                    <button onClick={() => toggleArrayFilter("regions", r)} className="hover:text-error transition-colors"><X size={12} /></button>
                  </span>
                ))}
                {filters.mainCategory !== "All" && (
                  <span className="inline-flex items-center gap-1 bg-surface-variant text-on-surface-variant px-3 py-1 rounded-full text-xs font-semibold">
                    Category: {filters.mainCategory === "Pilgrimage" ? "Pilgrimage Tours" : "Family Tours"}
                    <button onClick={() => toggleMainCategory(filters.mainCategory === "Pilgrimage" ? "Pilgrimage" : "Family")} className="hover:text-error transition-colors"><X size={12} /></button>
                  </span>
                )}
                {filters.mainCategory === "Pilgrimage" && filters.faith && (
                  <span className="inline-flex items-center gap-1 bg-surface-variant text-on-surface-variant px-3 py-1 rounded-full text-xs font-semibold">
                    Faith: {filters.faith}
                    <button onClick={() => updateFilter("faith", "")} className="hover:text-error transition-colors"><X size={12} /></button>
                  </span>
                )}
                {filters.durations.map((d) => (
                  <span key={d} className="inline-flex items-center gap-1 bg-surface-variant text-on-surface-variant px-3 py-1 rounded-full text-xs font-semibold">
                    {d} Days
                    <button onClick={() => toggleArrayFilter("durations", d)} className="hover:text-error transition-colors"><X size={12} /></button>
                  </span>
                ))}
                {filters.meals.map((m) => (
                  <span key={m} className="inline-flex items-center gap-1 bg-surface-variant text-on-surface-variant px-3 py-1 rounded-full text-xs font-semibold">
                    Food: {m}
                    <button onClick={() => toggleArrayFilter("meals", m)} className="hover:text-error transition-colors"><X size={12} /></button>
                  </span>
                ))}
                {filters.transports.map((t) => (
                  <span key={t} className="inline-flex items-center gap-1 bg-surface-variant text-on-surface-variant px-3 py-1 rounded-full text-xs font-semibold">
                    Transit: {t}
                    <button onClick={() => toggleArrayFilter("transports", t)} className="hover:text-error transition-colors"><X size={12} /></button>
                  </span>
                ))}
                {filters.seasons.map((s) => (
                  <span key={s} className="inline-flex items-center gap-1 bg-surface-variant text-on-surface-variant px-3 py-1 rounded-full text-xs font-semibold">
                    Season: {s}
                    <button onClick={() => toggleArrayFilter("seasons", s)} className="hover:text-error transition-colors"><X size={12} /></button>
                  </span>
                ))}
                {filters.travellerTypes.map((t) => (
                  <span key={t} className="inline-flex items-center gap-1 bg-surface-variant text-on-surface-variant px-3 py-1 rounded-full text-xs font-semibold">
                    {t}
                    <button onClick={() => toggleArrayFilter("travellerTypes", t)} className="hover:text-error transition-colors"><X size={12} /></button>
                  </span>
                ))}

                <button
                  onClick={handleClearAll}
                  className="text-secondary font-label-bold text-xs hover:underline ml-2"
                >
                  Clear All
                </button>
              </div>
            )}
          </div>

          {/* Mobile Filter Toggle Button */}
          <div className="lg:hidden select-none">
            <button
              onClick={() => setShowMobileFilters(!showMobileFilters)}
              className="w-full bg-[#062E4F] text-white py-3.5 px-4 rounded-xl font-bold flex items-center justify-center gap-2 hover:bg-[#0B426D] transition-colors cursor-pointer text-sm"
            >
              <SlidersHorizontal size={16} className="text-[#E9A227]" />
              {showMobileFilters ? "Hide Sidebar Filters" : "Show Sidebar Filters & Keyword Search"}
            </button>
          </div>

          {/* Main Grid: Sidebar + Results List */}
          <div className="grid grid-cols-1 lg:grid-cols-12 gap-gutter items-start">

            {/* Sidebar Filters */}
            <aside 
              className={`lg:col-span-3 bg-surface-container-lowest rounded-xl p-6 shadow-level-1 border border-outline-variant/15 flex flex-col gap-6 sticky top-28 select-none max-h-[calc(100vh-130px)] overflow-y-auto overscroll-contain ${showMobileFilters ? "block" : "hidden lg:flex"}`}
            >
              <div className="flex justify-between items-center border-b border-outline-variant/10 pb-4">
                <h2 className="font-headline-md text-[18px] text-primary font-bold flex items-center gap-2">
                  <SlidersHorizontal size={18} className="text-secondary" />
                  Filter Tours
                </h2>
                <button
                  onClick={handleClearAll}
                  className="text-secondary font-body-sm text-xs hover:underline"
                >
                  Reset All
                </button>
              </div>

              {/* Text Search input in sidebar */}
              <div className="flex flex-col gap-2">
                <label className="font-label-bold text-xs uppercase tracking-wider text-outline">Search Keyword</label>
                <div className="relative flex items-center">
                  <Search size={16} className="absolute left-3 text-outline" />
                  <input
                    type="text"
                    placeholder="Search temple or town..."
                    value={filters.searchText}
                    onChange={(e) => updateFilter("searchText", e.target.value)}
                    className="w-full bg-surface-container-low pl-9 pr-3 py-2.5 rounded-lg border border-outline-variant focus:border-primary text-sm outline-none"
                  />
                </div>
              </div>

              {/* Senior-Friendly Quick Toggle Switch */}
              <div className="flex items-center justify-between p-3.5 bg-surface-container rounded-lg border border-primary-fixed-dim/40">
                <div className="flex items-center gap-2 text-primary font-bold text-sm">
                  <span className="material-symbols-outlined text-secondary icon-fill text-[22px]">elderly</span>
                  <span>Senior-Friendly</span>
                </div>
                <label className="relative inline-flex items-center cursor-pointer">
                  <input
                    type="checkbox"
                    checked={filters.seniorFriendlyOnly}
                    onChange={(e) => updateFilter("seniorFriendlyOnly", e.target.checked)}
                    className="sr-only peer"
                  />
                  <div className="w-10 h-5.5 bg-outline-variant peer-focus:outline-none rounded-full peer peer-checked:after:translate-x-full peer-checked:after:border-white after:content-[''] after:absolute after:top-[2px] after:left-[2px] after:bg-white after:border-gray-300 after:border after:rounded-full after:h-4.5 after:w-4.5 after:transition-all peer-checked:bg-primary" />
                </label>
              </div>

              {/* Wheelchair Accessible Toggle */}
              <div className="flex items-center justify-between p-3.5 bg-surface-container rounded-lg border border-primary-fixed-dim/40">
                <div className="flex items-center gap-2 text-primary font-bold text-sm">
                  <span className="material-symbols-outlined text-secondary icon-fill text-[22px]">accessible</span>
                  <span>Wheelchair access</span>
                </div>
                <label className="relative inline-flex items-center cursor-pointer">
                  <input
                    type="checkbox"
                    checked={filters.wheelchairOnly}
                    onChange={(e) => updateFilter("wheelchairOnly", e.target.checked)}
                    className="sr-only peer"
                  />
                  <div className="w-10 h-5.5 bg-outline-variant peer-focus:outline-none rounded-full peer peer-checked:after:translate-x-full peer-checked:after:border-white after:content-[''] after:absolute after:top-[2px] after:left-[2px] after:bg-white after:border-gray-300 after:border after:rounded-full after:h-4.5 after:w-4.5 after:transition-all peer-checked:bg-primary" />
                </label>
              </div>

              {/* Region Filter */}
              <div className="flex flex-col gap-2 border-t border-outline-variant/10 pt-4 text-left">
                <h3 className="font-label-bold text-xs uppercase tracking-wider text-outline mb-1">Destination Region</h3>
                <div className="space-y-2.5">
                  {["North India", "South India", "Char Dham", "Maharashtra", "Pan India", "Across the World"].map((region) => (
                    <label key={region} className="flex items-center gap-3 cursor-pointer group select-none">
                      <input
                        type="checkbox"
                        checked={filters.regions.includes(region)}
                        onChange={() => toggleArrayFilter("regions", region)}
                        className="w-5 h-5 rounded text-primary focus:ring-primary border-outline-variant"
                      />
                      <span className="text-sm font-medium text-on-surface-variant group-hover:text-primary transition-colors">
                        {region}
                      </span>
                    </label>
                  ))}
                </div>
              </div>

              {/* Budget slider filter */}
              <div className="flex flex-col gap-2 border-t border-outline-variant/10 pt-4 text-left">
                <div className="flex justify-between items-center mb-1">
                  <h3 className="font-label-bold text-xs uppercase tracking-wider text-outline">Max Budget</h3>
                  <span className="text-sm font-bold text-primary">₹{filters.maxBudget.toLocaleString()}</span>
                </div>
                <input
                  type="range"
                  min={lowestPackagePrice}
                  max={highestPackagePrice}
                  step={1000}
                  value={filters.maxBudget}
                  onChange={(e) => {
                    updateFilter("maxBudget", parseInt(e.target.value));
                  }}
                  className="w-full h-1.5 bg-surface-variant rounded-lg appearance-none cursor-pointer accent-primary"
                />
                <div className="flex justify-between text-[11px] text-outline font-bold">
                  <span>₹{lowestPackagePrice.toLocaleString()}</span>
                  <span>₹{highestPackagePrice.toLocaleString()}</span>
                </div>
              </div>

              {/* Travel Category section */}
              <div className="flex flex-col gap-2 border-t border-outline-variant/10 pt-4 text-left">
                <h3 className="font-label-bold text-xs uppercase tracking-wider text-outline mb-1">Travel Category</h3>
                <div className="space-y-3">
                  {/* Family Tours */}
                  <label className="flex items-center justify-between cursor-pointer group select-none">
                    <div className="flex items-center gap-3">
                      <input
                        type="checkbox"
                        checked={(filters.selectedCategories || (filters.mainCategory === "All" ? ["Family", "Pilgrimage"] : [filters.mainCategory])).includes("Family")}
                        onChange={() => toggleMainCategory("Family")}
                        className="w-5 h-5 rounded text-primary focus:ring-primary border-outline-variant"
                      />
                      <span className="text-sm font-medium text-on-surface-variant group-hover:text-primary transition-colors">
                        Family Tours
                      </span>
                    </div>
                    <span className="text-xs text-outline font-semibold bg-surface-container px-2 py-0.5 rounded-full">
                      {familyCount}
                    </span>
                  </label>

                  {/* Pilgrimage Tours */}
                  <div className="flex flex-col gap-2.5">
                    <label className="flex items-center justify-between cursor-pointer group select-none">
                      <div className="flex items-center gap-3">
                        <input
                          type="checkbox"
                          checked={(filters.selectedCategories || (filters.mainCategory === "All" ? ["Family", "Pilgrimage"] : [filters.mainCategory])).includes("Pilgrimage")}
                          onChange={() => toggleMainCategory("Pilgrimage")}
                          className="w-5 h-5 rounded text-primary focus:ring-primary border-outline-variant"
                        />
                        <span className="text-sm font-medium text-on-surface-variant group-hover:text-primary transition-colors">
                          Pilgrimage Tours
                        </span>
                      </div>
                      <span className="text-xs text-outline font-semibold bg-surface-container px-2 py-0.5 rounded-full">
                        {pilgrimageCount}
                      </span>
                    </label>

                    {/* Faith Subcategories (visible only if Pilgrimage Tours is active) */}
                    {(filters.mainCategory === "Pilgrimage" || filters.mainCategory === "All") && (
                      <div className="ml-8 pl-2 border-l border-outline-variant/40 flex flex-col gap-2 mt-1">
                        {/* All Pilgrimages */}
                        <label className="flex items-center justify-between cursor-pointer group select-none text-xs">
                          <div className="flex items-center gap-2">
                            <input
                              type="radio"
                              name="faith-filter"
                              checked={!filters.faith}
                              onChange={() => updateFilter("faith", "")}
                              className="w-4 h-4 text-primary focus:ring-primary border-outline-variant"
                            />
                            <span className={`font-medium transition-colors ${!filters.faith ? "text-primary font-bold" : "text-on-surface-variant group-hover:text-primary"}`}>
                              All Pilgrimages
                            </span>
                          </div>
                          <span className="text-[10px] text-outline font-medium">
                            {pilgrimageCount}
                          </span>
                        </label>

                        {/* Faiths */}
                        {[
                          { label: "Hinduism", value: "Hinduism" },
                          { label: "Buddhism", value: "Buddhism" },
                          { label: "Christianity", value: "Christianity" },
                          { label: "Islam", value: "Islam" },
                        ].map((faith) => {
                          const isSelected = filters.faith === faith.value;
                          return (
                            <label key={faith.value} className="flex items-center justify-between cursor-pointer group select-none text-xs">
                              <div className="flex items-center gap-2">
                                <input
                                  type="radio"
                                  name="faith-filter"
                                  checked={isSelected}
                                  onChange={() => updateFilter("faith", faith.value)}
                                  className="w-4 h-4 text-primary focus:ring-primary border-outline-variant"
                                />
                                <span className={`font-medium transition-colors ${isSelected ? "text-primary font-bold" : "text-on-surface-variant group-hover:text-primary"}`}>
                                  {faith.label}
                                </span>
                              </div>
                              <span className="text-[10px] text-outline font-medium">
                                {getFaithCount(faith.value)}
                              </span>
                            </label>
                          );
                        })}
                      </div>
                    )}
                  </div>
                </div>
              </div>

              {/* Duration filters */}
              <div className="flex flex-col gap-2 border-t border-outline-variant/10 pt-4 text-left">
                <h3 className="font-label-bold text-xs uppercase tracking-wider text-outline mb-1">Duration</h3>
                <div className="space-y-2.5">
                  {[
                    { label: "1 - 3 Days", value: "1-3" },
                    { label: "4 - 7 Days", value: "4-7" },
                    { label: "8+ Days", value: "8+" },
                  ].map((dur) => (
                    <label key={dur.value} className="flex items-center gap-3 cursor-pointer group select-none">
                      <input
                        type="checkbox"
                        checked={filters.durations.includes(dur.value)}
                        onChange={() => toggleArrayFilter("durations", dur.value)}
                        className="w-5 h-5 rounded text-primary focus:ring-primary border-outline-variant"
                      />
                      <span className="text-sm font-medium text-on-surface-variant group-hover:text-primary transition-colors">
                        {dur.label}
                      </span>
                    </label>
                  ))}
                </div>
              </div>

              {/* Meals Inclusions Filter */}
              <div className="flex flex-col gap-2 border-t border-outline-variant/10 pt-4 text-left">
                <h3 className="font-label-bold text-xs uppercase tracking-wider text-outline mb-1">Meal Preference</h3>
                <div className="space-y-2.5">
                  {["Veg", "Meals"].map((meal) => (
                    <label key={meal} className="flex items-center gap-3 cursor-pointer group select-none">
                      <input
                        type="checkbox"
                        checked={filters.meals.includes(meal)}
                        onChange={() => toggleArrayFilter("meals", meal)}
                        className="w-5 h-5 rounded text-primary focus:ring-primary border-outline-variant"
                      />
                      <span className="text-sm font-medium text-on-surface-variant group-hover:text-primary transition-colors">
                        {meal === "Veg" ? "Pure Vegetarian Satvik" : "All Inclusive Meals"}
                      </span>
                    </label>
                  ))}
                </div>
              </div>

              {/* Transit vehicle filter */}
              <div className="flex flex-col gap-2 border-t border-outline-variant/10 pt-4 text-left">
                <h3 className="font-label-bold text-xs uppercase tracking-wider text-outline mb-1">Transport Mode</h3>
                <div className="space-y-2.5">
                  {["AC Transport", "AC SUV", "Coach"].map((t) => (
                    <label key={t} className="flex items-center gap-3 cursor-pointer group select-none">
                      <input
                        type="checkbox"
                        checked={filters.transports.includes(t)}
                        onChange={() => toggleArrayFilter("transports", t)}
                        className="w-5 h-5 rounded text-primary focus:ring-primary border-outline-variant"
                      />
                      <span className="text-sm font-medium text-on-surface-variant group-hover:text-primary transition-colors">
                        {t}
                      </span>
                    </label>
                  ))}
                </div>
              </div>

              {/* Season Filter */}
              <div className="flex flex-col gap-2 border-t border-outline-variant/10 pt-4 text-left">
                <h3 className="font-label-bold text-xs uppercase tracking-wider text-outline mb-1">Best Season</h3>
                <div className="space-y-2.5">
                  {["Oct", "Mar", "Jul", "Aug", "May"].map((s) => (
                    <label key={s} className="flex items-center gap-3 cursor-pointer group select-none">
                      <input
                        type="checkbox"
                        checked={filters.seasons.includes(s)}
                        onChange={() => toggleArrayFilter("seasons", s)}
                        className="w-5 h-5 rounded text-primary focus:ring-primary border-outline-variant"
                      />
                      <span className="text-sm font-medium text-on-surface-variant group-hover:text-primary transition-colors">
                        {s}
                      </span>
                    </label>
                  ))}
                </div>
              </div>

              {/* Traveller Type Filter */}
              <div className="flex flex-col gap-2 border-t border-outline-variant/10 pt-4 text-left">
                <h3 className="font-label-bold text-xs uppercase tracking-wider text-outline mb-1">Traveller Type</h3>
                <div className="space-y-2.5">
                  {["Family Friendly", "Couple", "Solo", "Group"].map((t) => (
                    <label key={t} className="flex items-center gap-3 cursor-pointer group select-none">
                      <input
                        type="checkbox"
                        checked={filters.travellerTypes.includes(t)}
                        onChange={() => toggleArrayFilter("travellerTypes", t)}
                        className="w-5 h-5 rounded text-primary focus:ring-primary border-outline-variant"
                      />
                      <span className="text-sm font-medium text-on-surface-variant group-hover:text-primary transition-colors">
                        {t}
                      </span>
                    </label>
                  ))}
                </div>
              </div>

              {/* Recently Viewed Block */}
              {recentlyViewed && recentlyViewed.length > 0 && (
                <div className="flex flex-col gap-3 border-t border-outline-variant/10 pt-4 text-left">
                  <h3 className="font-label-bold text-xs uppercase tracking-wider text-outline mb-1">Recently Viewed</h3>
                  <div className="space-y-3">
                    {mockPackages
                      .filter((p) => recentlyViewed.includes(p.id))
                      .map((pkg) => (
                        <Link
                          key={pkg.id}
                          href={`/packages/${pkg.id}`}
                          className="flex items-center gap-3 group/rv hover:bg-slate-50 p-1.5 rounded-lg transition-colors"
                        >
                          <div className="w-12 h-12 rounded-lg overflow-hidden shrink-0 border border-slate-200">
                            <img src={getAssetPath(pkg.image)} alt={pkg.title} className="w-full h-full object-cover" />
                          </div>
                          <div className="min-w-0">
                            <h4 className="text-xs font-bold text-[#062E4F] group-hover/rv:text-[#E9A227] transition-colors truncate">
                              {pkg.title}
                            </h4>
                            <span className="text-[10px] font-extrabold text-[#062E4F] mt-0.5 block">
                              {pkg.price != null ? `₹${pkg.price.toLocaleString()}` : "Price on Request"}
                            </span>
                          </div>
                        </Link>
                      ))}
                  </div>
                </div>
              )}

            </aside>

            {/* Results Grid List */}
            <section className="lg:col-span-9 flex flex-col gap-6">
              <AnimatePresence mode="wait">
                {isLoading ? (
                  /* Loading Shimmer state */
                  <motion.div
                    key="loading"
                    initial={{ opacity: 0 }}
                    animate={{ opacity: 1 }}
                    exit={{ opacity: 0 }}
                    className="grid grid-cols-1 md:grid-cols-2 xl:grid-cols-3 gap-6"
                  >
                    {[...Array(6)].map((_, i) => (
                      <div key={i} className="bg-surface-container-lowest rounded-card overflow-hidden shadow-level-1 border border-outline-variant/10 flex flex-col h-[520px] animate-pulse">
                        <div className="h-56 bg-surface-container-high" />
                        <div className="p-5 flex-grow space-y-4 flex flex-col justify-between">
                          <div className="space-y-2">
                            <div className="h-6 bg-surface-container-high rounded w-3/4" />
                            <div className="h-4 bg-surface-container-high rounded w-1/2" />
                          </div>
                          <div className="h-16 bg-surface-container-low rounded" />
                          <div className="h-10 bg-surface-container-high rounded" />
                        </div>
                      </div>
                    ))}
                  </motion.div>
                ) : sortedPackages.length === 0 ? (
                  /* Empty State Screen */
                  <motion.div
                    key="empty"
                    initial={{ opacity: 0, scale: 0.95 }}
                    animate={{ opacity: 1, scale: 1 }}
                    exit={{ opacity: 0 }}
                    className="flex flex-col items-center justify-center text-center py-20 bg-surface-container-lowest rounded-xl shadow-level-1 border border-outline-variant/10 px-6 gap-4"
                  >
                    <div className="w-16 h-16 bg-error-container/30 text-error rounded-full flex items-center justify-center mb-2">
                      <AlertTriangle size={32} />
                    </div>
                    <h3 className="font-headline-lg text-primary text-xl font-bold font-display">No Packages Found</h3>
                    <p className="text-on-surface-variant font-body-sm text-sm max-w-sm">
                      We couldn&apos;t find any pilgrimage matches with your selected filters. Try widening your budget or clearing active chips.
                    </p>
                    <button
                      onClick={handleClearAll}
                      className="mt-4 bg-primary text-on-primary font-bold px-6 py-2.5 rounded-lg hover:bg-primary-container transition-colors"
                    >
                      Clear All Filters
                    </button>
                  </motion.div>
                ) : (
                  /* Package List Grid */
                  <motion.div
                    key="list"
                    initial={{ opacity: 0 }}
                    animate={{ opacity: 1 }}
                    exit={{ opacity: 0 }}
                    className="grid grid-cols-1 md:grid-cols-2 xl:grid-cols-3 gap-6"
                  >
                    {sortedPackages.map((pkg, index) => (
                      <PackageCard key={pkg.id} pkg={pkg} index={index} />
                    ))}
                  </motion.div>
                )}
              </AnimatePresence>
            </section>

          </div>

          {/* 4. Sticky Floating Compare Packages Drawer */}
          <AnimatePresence>
            {comparedPackages.length > 0 && (
              <motion.div
                initial={{ y: "100%", opacity: 0 }}
                animate={{ y: 0, opacity: 1 }}
                exit={{ y: "100%", opacity: 0 }}
                transition={{ type: "spring", stiffness: 260, damping: 25 }}
                className="fixed bottom-0 left-0 right-0 bg-surface-container-lowest border-t border-outline-variant shadow-[0px_-10px_32px_rgba(18,59,93,0.15)] py-4 px-6 z-40 select-none"
              >
                <div className="max-w-container-max mx-auto flex flex-col sm:flex-row justify-between items-center gap-4">

                  {/* Left: Packages Thumbnails */}
                  <div className="flex flex-wrap items-center gap-3">
                    <span className="text-xs font-bold text-outline uppercase tracking-wider mr-2 flex items-center gap-1.5">
                      <RefreshCw size={14} className="animate-spin-slow text-secondary" />
                      Comparison List:
                    </span>

                    <div className="flex gap-2.5">
                      {comparedPackages.map((pkg) => (
                        <div
                          key={pkg.id}
                          className="flex items-center gap-2 bg-surface-container-low border border-outline-variant/15 pr-3 pl-1 py-1 rounded-lg shadow-sm"
                        >
                          <img
                            src={getAssetPath(pkg.image)}
                            alt={pkg.title}
                            className="w-8 h-8 rounded object-cover"
                          />
                          <div className="text-left">
                            <h4 className="text-[11px] font-bold text-primary line-clamp-1 max-w-[120px]">{pkg.title}</h4>
                            <span className="text-[9px] font-bold text-secondary">
                              {pkg.price != null ? `₹${pkg.price.toLocaleString()}` : "Price on Request"}
                            </span>
                          </div>
                          <button
                            onClick={() => toggleCompare(pkg.id)}
                            className="hover:text-error transition-colors ml-1 p-0.5"
                          >
                            <X size={10} />
                          </button>
                        </div>
                      ))}
                    </div>
                  </div>

                  {/* Right: Drawer Actions */}
                  <div className="flex items-center gap-3 flex-shrink-0 w-full sm:w-auto justify-end">
                    <Link href="/compare">
                      <button
                        className="bg-primary text-on-primary px-6 py-2.5 rounded-lg text-xs font-bold hover:bg-primary-container transition-all flex items-center gap-1.5 shadow-sm cursor-pointer"
                      >
                        Compare Now ({comparedPackages.length}) <ArrowRight size={14} />
                      </button>
                    </Link>
                    <button
                      onClick={() => {
                        comparedPackages.forEach(p => toggleCompare(p.id));
                      }}
                      className="border border-outline text-on-surface-variant hover:text-error hover:border-error px-4 py-2.5 rounded-lg text-xs font-bold transition-all cursor-pointer"
                    >
                      Clear List
                    </button>
                  </div>

                </div>
              </motion.div>
            )}
          </AnimatePresence>

        </main>
      </PageTransition>
      <Footer />
    </>
  );
}
