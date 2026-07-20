"use client";

import { useState, useEffect, useTransition } from "react";
import { useSearchParams } from "next/navigation";
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

export default function PackageListContent() {
  const searchParams = useSearchParams();
  const { compareIds, toggleCompare, setCompareOpen, setEnquireOpen, setEnquirePackageId, recentlyViewed } = useApp();
  
  // Simulated Loading State for filters
  const [isLoading, setIsLoading] = useState(false);
  const [isPending, startTransition] = useTransition();

  // Search & Filter State
  const [searchText, setSearchText] = useState("");
  const [selectedRegions, setSelectedRegions] = useState<string[]>([]);
  const [selectedCategories, setSelectedCategories] = useState<string[]>([]);
  const [selectedDurations, setSelectedDurations] = useState<string[]>([]);
  const [isSeniorFriendlyOnly, setIsSeniorFriendlyOnly] = useState(false);
  const [isWheelchairOnly, setIsWheelchairOnly] = useState(false);
  const [maxBudget, setMaxBudget] = useState(60000);
  const [sortBy, setSortBy] = useState("Recommended");
  const [selectedMeals, setSelectedMeals] = useState<string[]>([]);
  const [selectedTransports, setSelectedTransports] = useState<string[]>([]);
  const [showMobileFilters, setShowMobileFilters] = useState(false);

  // Read URL params on mount
  useEffect(() => {
    const dest = searchParams.get("dest");
    const month = searchParams.get("month");
    const dur = searchParams.get("duration");

    if (dest) setSearchText(dest);
    
    if (dur) {
      if (dur === "1-3") setSelectedDurations(["1-3"]);
      else if (dur === "4-7") setSelectedDurations(["4-7"]);
      else if (dur === "8+") setSelectedDurations(["8+"]);
    }
  }, [searchParams]);

  // Filter & Sort Logic
  const filteredPackages = mockPackages.filter((pkg) => {
    // Text search
    if (searchText) {
      const query = searchText.toLowerCase();
      const matchTitle = pkg.title.toLowerCase().includes(query);
      const matchDest = pkg.destinations.toLowerCase().includes(query);
      if (!matchTitle && !matchDest) return false;
    }

    // Regions
    if (selectedRegions.length > 0) {
      if (!selectedRegions.includes(pkg.region)) return false;
    }

    // Categories
    if (selectedCategories.length > 0) {
      if (!selectedCategories.includes(pkg.category)) return false;
    }

    // Durations
    if (selectedDurations.length > 0) {
      const days = parseInt(pkg.duration.split(" ")[0]);
      let durationMatch = false;
      if (selectedDurations.includes("1-3") && days >= 1 && days <= 3) durationMatch = true;
      if (selectedDurations.includes("4-7") && days >= 4 && days <= 7) durationMatch = true;
      if (selectedDurations.includes("8+") && days >= 8) durationMatch = true;
      if (!durationMatch) return false;
    }

    // Senior Friendly
    if (isSeniorFriendlyOnly && !pkg.seniorFriendly) return false;

    // Wheelchair Access
    if (isWheelchairOnly && !pkg.wheelchairAccess) return false;

    // Budget
    if (pkg.price > maxBudget) return false;

    // Meals
    if (selectedMeals.length > 0) {
      const match = selectedMeals.some(m => String(pkg.inclusions.meals).toLowerCase().includes(m.toLowerCase()));
      if (!match) return false;
    }

    // Transport
    if (selectedTransports.length > 0) {
      const match = selectedTransports.some(t => String(pkg.inclusions.transit).toLowerCase().includes(t.toLowerCase()));
      if (!match) return false;
    }

    return true;
  });

  // Sort
  const sortedPackages = [...filteredPackages].sort((a, b) => {
    if (sortBy === "Price: Low to High") return a.price - b.price;
    if (sortBy === "Price: High to Low") return b.price - a.price;
    if (sortBy === "Highest Rated") return b.rating - a.rating;
    return b.reviewCount - a.reviewCount; // Recommended fallback
  });

  // Toggle Filters
  const handleRegionToggle = (region: string) => {
    setSelectedRegions((prev) =>
      prev.includes(region) ? prev.filter((r) => r !== region) : [...prev, region]
    );
    triggerFilterShimmer();
  };

  const handleCategoryToggle = (cat: string) => {
    setSelectedCategories((prev) =>
      prev.includes(cat) ? prev.filter((c) => c !== cat) : [...prev, cat]
    );
    triggerFilterShimmer();
  };

  const handleDurationToggle = (dur: string) => {
    setSelectedDurations((prev) =>
      prev.includes(dur) ? prev.filter((d) => d !== dur) : [...prev, dur]
    );
    triggerFilterShimmer();
  };

  const handleMealToggle = (meal: string) => {
    setSelectedMeals((prev) =>
      prev.includes(meal) ? prev.filter((m) => m !== meal) : [...prev, meal]
    );
    triggerFilterShimmer();
  };

  const handleTransportToggle = (t: string) => {
    setSelectedTransports((prev) =>
      prev.includes(t) ? prev.filter((item) => item !== t) : [...prev, t]
    );
    triggerFilterShimmer();
  };

  const triggerFilterShimmer = () => {
    setIsLoading(true);
    setTimeout(() => {
      setIsLoading(false);
    }, 400);
  };

  const handleClearAll = () => {
    setSearchText("");
    setSelectedRegions([]);
    setSelectedCategories([]);
    setSelectedDurations([]);
    setIsSeniorFriendlyOnly(false);
    setIsWheelchairOnly(false);
    setMaxBudget(60000);
    setSortBy("Recommended");
    setSelectedMeals([]);
    setSelectedTransports([]);
    triggerFilterShimmer();
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
                  Explore Sacred Tour Packages
                </h1>
                <p className="text-on-surface-variant font-medium text-sm mt-1.5">
                  Showing {sortedPackages.length} of {mockPackages.length} Pilgrimage and Heritage Tours
                </p>
              </div>

              {/* Sorting and Text Search */}
              <div className="flex items-center gap-3 w-full md:w-auto">
                <span className="text-xs font-bold text-outline uppercase tracking-wider whitespace-nowrap">Sort by</span>
                <select
                  value={sortBy}
                  onChange={(e) => {
                    setSortBy(e.target.value);
                    triggerFilterShimmer();
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

            {/* Active Filter Chips */}
            {(selectedRegions.length > 0 || selectedCategories.length > 0 || selectedDurations.length > 0 || isSeniorFriendlyOnly || isWheelchairOnly || searchText) && (
              <div className="flex flex-wrap gap-2 pt-2 items-center">
                <span className="text-xs font-bold uppercase tracking-wider text-outline mr-2">Active filters:</span>
                
                {searchText && (
                  <span className="inline-flex items-center gap-1 bg-surface-variant text-on-surface-variant px-3 py-1 rounded-full text-xs font-semibold">
                    Search: &quot;{searchText}&quot;
                    <button onClick={() => { setSearchText(""); triggerFilterShimmer(); }} className="hover:text-error transition-colors"><X size={12} /></button>
                  </span>
                )}
                {isSeniorFriendlyOnly && (
                  <span className="inline-flex items-center gap-1 bg-surface-variant text-on-surface-variant px-3 py-1 rounded-full text-xs font-semibold">
                    Senior-Friendly
                    <button onClick={() => { setIsSeniorFriendlyOnly(false); triggerFilterShimmer(); }} className="hover:text-error transition-colors"><X size={12} /></button>
                  </span>
                )}
                {isWheelchairOnly && (
                  <span className="inline-flex items-center gap-1 bg-surface-variant text-on-surface-variant px-3 py-1 rounded-full text-xs font-semibold">
                    Wheelchair Accessible
                    <button onClick={() => { setIsWheelchairOnly(false); triggerFilterShimmer(); }} className="hover:text-error transition-colors"><X size={12} /></button>
                  </span>
                )}
                {selectedRegions.map((r) => (
                  <span key={r} className="inline-flex items-center gap-1 bg-surface-variant text-on-surface-variant px-3 py-1 rounded-full text-xs font-semibold">
                    {r}
                    <button onClick={() => handleRegionToggle(r)} className="hover:text-error transition-colors"><X size={12} /></button>
                  </span>
                ))}
                {selectedCategories.map((c) => (
                  <span key={c} className="inline-flex items-center gap-1 bg-surface-variant text-on-surface-variant px-3 py-1 rounded-full text-xs font-semibold">
                    {c}
                    <button onClick={() => handleCategoryToggle(c)} className="hover:text-error transition-colors"><X size={12} /></button>
                  </span>
                ))}
                {selectedDurations.map((d) => (
                  <span key={d} className="inline-flex items-center gap-1 bg-surface-variant text-on-surface-variant px-3 py-1 rounded-full text-xs font-semibold">
                    {d} Days
                    <button onClick={() => handleDurationToggle(d)} className="hover:text-error transition-colors"><X size={12} /></button>
                  </span>
                ))}
                {selectedMeals.map((m) => (
                  <span key={m} className="inline-flex items-center gap-1 bg-surface-variant text-on-surface-variant px-3 py-1 rounded-full text-xs font-semibold">
                    Food: {m}
                    <button onClick={() => handleMealToggle(m)} className="hover:text-error transition-colors"><X size={12} /></button>
                  </span>
                ))}
                {selectedTransports.map((t) => (
                  <span key={t} className="inline-flex items-center gap-1 bg-surface-variant text-on-surface-variant px-3 py-1 rounded-full text-xs font-semibold">
                    Transit: {t}
                    <button onClick={() => handleTransportToggle(t)} className="hover:text-error transition-colors"><X size={12} /></button>
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
            <aside className={`lg:col-span-3 bg-surface-container-lowest rounded-xl p-6 shadow-level-1 border border-outline-variant/15 flex flex-col gap-6 sticky top-28 select-none ${showMobileFilters ? "block" : "hidden lg:flex"}`}>
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
                    value={searchText}
                    onChange={(e) => {
                      setSearchText(e.target.value);
                      triggerFilterShimmer();
                    }}
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
                    checked={isSeniorFriendlyOnly}
                    onChange={(e) => {
                      setIsSeniorFriendlyOnly(e.target.checked);
                      triggerFilterShimmer();
                    }}
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
                    checked={isWheelchairOnly}
                    onChange={(e) => {
                      setIsWheelchairOnly(e.target.checked);
                      triggerFilterShimmer();
                    }}
                    className="sr-only peer"
                  />
                  <div className="w-10 h-5.5 bg-outline-variant peer-focus:outline-none rounded-full peer peer-checked:after:translate-x-full peer-checked:after:border-white after:content-[''] after:absolute after:top-[2px] after:left-[2px] after:bg-white after:border-gray-300 after:border after:rounded-full after:h-4.5 after:w-4.5 after:transition-all peer-checked:bg-primary" />
                </label>
              </div>

              {/* Region Filter */}
              <div className="flex flex-col gap-2 border-t border-outline-variant/10 pt-4 text-left">
                <h3 className="font-label-bold text-xs uppercase tracking-wider text-outline mb-1">Destination Region</h3>
                <div className="space-y-2.5">
                  {["North India", "South India", "Char Dham", "Maharashtra", "Pan India"].map((region) => (
                    <label key={region} className="flex items-center gap-3 cursor-pointer group select-none">
                      <input
                        type="checkbox"
                        checked={selectedRegions.includes(region)}
                        onChange={() => handleRegionToggle(region)}
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
                  <span className="text-sm font-bold text-primary">₹{maxBudget.toLocaleString()}</span>
                </div>
                <input
                  type="range"
                  min="9000"
                  max="60000"
                  step="2000"
                  value={maxBudget}
                  onChange={(e) => {
                    setMaxBudget(parseInt(e.target.value));
                    triggerFilterShimmer();
                  }}
                  className="w-full h-1.5 bg-surface-variant rounded-lg appearance-none cursor-pointer accent-primary"
                />
                <div className="flex justify-between text-[11px] text-outline font-bold">
                  <span>₹9,000</span>
                  <span>₹60,000+</span>
                </div>
              </div>

              {/* Category check boxes */}
              <div className="flex flex-col gap-2 border-t border-outline-variant/10 pt-4 text-left">
                <h3 className="font-label-bold text-xs uppercase tracking-wider text-outline mb-1">Travel Category</h3>
                <div className="space-y-2.5">
                  {["Pilgrimage", "Family Leisure", "Heritage"].map((cat) => (
                    <label key={cat} className="flex items-center gap-3 cursor-pointer group select-none">
                      <input
                        type="checkbox"
                        checked={selectedCategories.includes(cat)}
                        onChange={() => handleCategoryToggle(cat)}
                        className="w-5 h-5 rounded text-primary focus:ring-primary border-outline-variant"
                      />
                      <span className="text-sm font-medium text-on-surface-variant group-hover:text-primary transition-colors">
                        {cat}
                      </span>
                    </label>
                  ))}
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
                        checked={selectedDurations.includes(dur.value)}
                        onChange={() => handleDurationToggle(dur.value)}
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
                        checked={selectedMeals.includes(meal)}
                        onChange={() => handleMealToggle(meal)}
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
                        checked={selectedTransports.includes(t)}
                        onChange={() => handleTransportToggle(t)}
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
                              ₹{pkg.price.toLocaleString()}
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
                            <span className="text-[9px] font-bold text-secondary">₹{pkg.price.toLocaleString()}</span>
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
