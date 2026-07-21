"use client";

import { useState } from "react";
import Link from "next/link";
import { motion, AnimatePresence } from "framer-motion";
import { useApp } from "@/context/AppContext";
import { Package } from "@/data/packages";
import { easeQuint, getAssetPath } from "@/lib/animations";
import { 
  Heart, 
  Star, 
  MapPin, 
  Eye, 
  ArrowRight, 
  Share2, 
  ShieldCheck, 
  Activity, 
  Check, 
  BadgeInfo, 
  Info,
  CalendarDays,
  ActivityIcon,
  Users,
  RefreshCw
} from "lucide-react";
import { toast } from "sonner";

interface PackageCardProps {
  pkg: Package;
  index: number;
}

export default function PackageCard({ pkg, index }: PackageCardProps) {
  const { savedIds, toggleSave, compareIds, toggleCompare, setEnquireOpen, setEnquirePackageId } = useApp();
  const [activeTab, setActiveTab] = useState<string | null>(null);

  const isSaved = savedIds.includes(pkg.id);
  const isCompared = compareIds.includes(pkg.id);

  const handleEnquireClick = (e: React.MouseEvent) => {
    e.preventDefault();
    e.stopPropagation();
    setEnquirePackageId(pkg.id);
    setEnquireOpen(true);
  };

  const handleShareClick = (e: React.MouseEvent) => {
    e.preventDefault();
    e.stopPropagation();
    if (typeof window !== "undefined") {
      const shareUrl = `${window.location.origin}/packages/${pkg.id}`;
      navigator.clipboard.writeText(shareUrl);
      toast.success("Yatra link copied to clipboard!");
    }
  };



  const toggleTab = (tab: string, e: React.MouseEvent) => {
    e.preventDefault();
    e.stopPropagation();
    setActiveTab(activeTab === tab ? null : tab);
  };

  return (
    <motion.article
      initial={{ opacity: 0, y: 30 }}
      whileInView={{ opacity: 1, y: 0 }}
      viewport={{ once: true, margin: "-10% 0px" }}
      transition={{ duration: 0.5, ease: easeQuint, delay: index * 0.05 }}
      whileHover={{ y: -6 }}
      className={`bg-white rounded-2xl overflow-hidden shadow-sm border border-slate-200/80 flex flex-col justify-between group relative transition-all duration-300 select-none hover:scale-[1.02] hover:border-[#E8A63B] hover:shadow-md cursor-pointer h-full`}
      style={{ fontFamily: "'Inter', sans-serif" }}
    >
      {/* 1. Image Section (Height 230px) */}
      <div className="relative h-[230px] w-full overflow-hidden bg-slate-100 shrink-0">
        <img
          src={getAssetPath(pkg.image)}
          alt={pkg.title}
          className="w-full h-full object-cover group-hover:scale-106 transition-transform duration-500"
          loading="lazy"
        />
        
        {/* Gradient overlays */}
        <div className="absolute inset-0 bg-gradient-to-t from-black/60 via-transparent to-black/35 opacity-90 pointer-events-none" />

        {/* Top Left Badges */}
        <div className="absolute top-4 left-4 flex flex-col gap-1.5 z-10">
          <span className="px-2.5 py-1 rounded-lg font-bold text-[10px] shadow-sm uppercase tracking-wider bg-[#E8A63B] text-white">
            {pkg.mainCategory === "Pilgrimage" || pkg.category === "Pilgrimage"
              ? "Pilgrimage"
              : (pkg.tags?.[0]?.replace(/buddhist|hindu|christian|islamic/gi, "").trim() || "Family Tour")}
          </span>
          {pkg.seatsLeft != null && (
            <span className="px-2.5 py-1 rounded-lg font-bold text-[10px] shadow-sm uppercase tracking-wider bg-red-600 text-white flex items-center gap-1">
              <span className="w-1.5 h-1.5 bg-white rounded-full animate-ping" />
              Only {pkg.seatsLeft} Seats Left
            </span>
          )}
        </div>

        {/* Top Right Controls */}
        <div className="absolute top-4 right-4 flex items-center gap-2 z-10">
          {/* Compare Toggle */}
          <button
            onClick={(e) => {
              e.preventDefault();
              e.stopPropagation();
              toggleCompare(pkg.id);
            }}
            className={`p-2 rounded-full backdrop-blur-md transition-all shadow-sm active:scale-90 cursor-pointer ${
              isCompared 
                ? "bg-[#0B3A63] text-white border border-[#E8A63B]" 
                : "bg-white/90 hover:bg-white text-slate-700"
            }`}
            title="Compare Package"
          >
            <RefreshCw size={14} className={isCompared ? "animate-spin-slow" : ""} />
          </button>

          {/* Share Button */}
          <button
            onClick={handleShareClick}
            className="p-2 bg-white/90 hover:bg-white backdrop-blur-md rounded-full text-slate-700 transition-all shadow-sm active:scale-90 cursor-pointer"
            title="Share Package"
          >
            <Share2 size={14} />
          </button>

          {/* Wishlist Heart */}
          <button
            onClick={(e) => {
              e.preventDefault();
              e.stopPropagation();
              toggleSave(pkg.id);
            }}
            className="p-2 bg-white/90 hover:bg-white backdrop-blur-md rounded-full text-slate-700 hover:text-red-600 transition-all shadow-sm active:scale-90 cursor-pointer"
            title="Save to Wishlist"
          >
            <Heart
              size={14}
              className={isSaved ? "fill-red-600 text-red-600" : "text-slate-600"}
            />
          </button>
        </div>

        {/* Bottom Left Rating Overlays */}
        {(pkg.rating != null || pkg.verified === true) && (
          <div className="absolute bottom-3 left-4 text-white z-10 flex items-center gap-2 text-xs">
            {pkg.rating != null && (
              <div className="flex items-center gap-0.5 bg-black/40 backdrop-blur-sm px-2 py-0.5 rounded-lg">
                <Star size={11} className="fill-[#E8A63B] text-[#E8A63B]" />
                <span className="font-bold">{pkg.rating}</span>
                {pkg.reviewCount != null && <span className="opacity-75">({pkg.reviewCount})</span>}
              </div>
            )}
            {pkg.verified === true && (
              <span className="bg-emerald-600/80 backdrop-blur-sm px-2 py-0.5 rounded-lg font-bold text-[10px] uppercase tracking-wider flex items-center gap-0.5">
                <ShieldCheck size={10} /> Verified
              </span>
            )}
          </div>
        )}

        {/* Bottom Right Duration Overlays */}
        <div className="absolute bottom-3 right-4 text-white z-10 text-xs bg-black/40 backdrop-blur-sm px-2 py-0.5 rounded-lg font-bold">
          {pkg.duration.split(" / ")[0]}
        </div>
      </div>

      {/* 2. Package Content details */}
      <div className="p-5 flex flex-col flex-grow justify-between gap-4">
        
        {/* Title & connected routes */}
        <div>
          <h3 
            className="text-[18px] text-[#0B3A63] font-bold leading-snug tracking-tight group-hover:text-[#E8A63B] transition-colors line-clamp-2 h-[48px] text-left"
            style={{ fontFamily: "'Poppins', sans-serif" }}
          >
            {pkg.title.replace(/\s+Experience$/i, "")}
          </h3>

          <div className="flex items-center gap-1.5 text-xs text-slate-500 mt-2 truncate text-left h-[20px]">
            <MapPin size={13} className="text-[#E8A63B] shrink-0" />
            <span className="truncate font-medium">{pkg.destinations.split(" - ").join(" → ")}</span>
          </div>
        </div>

        {/* Destination-Specific Benefits (Max 2) */}
        {pkg.packageBenefits && pkg.packageBenefits.length > 0 ? (
          <div className="grid grid-cols-2 gap-2 border-t border-slate-100 pt-3 text-left min-h-[36px]">
            {pkg.packageBenefits.slice(0, 2).map((benefit) => (
              <div key={benefit} className="flex items-center gap-1 text-[11px] font-bold text-slate-700 line-clamp-1">
                <Check size={12} className="text-emerald-600 shrink-0 stroke-[2.5]" /> {benefit}
              </div>
            ))}
          </div>
        ) : (
          <div className="min-h-[36px]" />
        )}

        {/* Quick Info Pills */}
        <div className="flex flex-wrap gap-1.5 select-none font-sans font-bold min-h-[44px] items-center">
          <span className="inline-flex items-center gap-1 bg-[#FFF8E8] text-[#E8A63B] border border-[#E8A63B]/20 px-2.5 py-1 rounded-full text-[11px]">
            <CalendarDays size={11} /> {pkg.bestSeason}
          </span>
          <span className="inline-flex items-center gap-1 bg-slate-50 text-slate-600 border border-slate-200 px-2.5 py-1 rounded-full text-[11px]">
            <ActivityIcon size={11} /> {pkg.pace}
          </span>
          {pkg.travellerTypes && pkg.travellerTypes.slice(0, 2).map((type) => (
            <span key={type} className="inline-flex items-center gap-1 bg-blue-50 text-blue-700 border border-blue-100 px-2.5 py-1 rounded-full text-[11px]">
              <Users size={11} /> {type}
            </span>
          ))}
        </div>

        {/* Dynamic Inclusions Tray (Max 5) */}
        <div className="flex justify-start items-center bg-slate-50 p-2.5 rounded-xl border border-slate-100 select-none divide-x divide-slate-200/50 h-[52px]">
          {[
            { key: "hotel" as const, icon: "hotel", label: "Hotel", tooltip: "Comfortable hotel stay" },
            { key: "meals" as const, icon: "restaurant", label: "Meals", tooltip: "Hygienic meals included" },
            { key: "transit" as const, icon: "directions_bus", label: "Transit", tooltip: "AC transit included" },
            { key: "guide" as const, icon: "person_pin_circle", label: "Guide", tooltip: "Tour guide assistance" },
            { key: "entryPasses" as const, icon: "confirmation_number", label: "Passes", tooltip: "Entry passes / VIP tickets" },
            { key: "medicalSupport" as const, icon: "medical_services", label: "Medical", tooltip: "Medical & safety support" },
            { key: "localExperience" as const, icon: "explore", label: "Activity", tooltip: "Local guided experiences" },
          ]
            .filter((item) => pkg.inclusions[item.key])
            .slice(0, 5)
            .map((item) => (
              <div 
                key={item.key} 
                className="relative group/tooltip flex flex-col items-center gap-0.5 flex-grow flex-1 px-1"
              >
                <span className="material-symbols-outlined text-[18px] text-[#0B3A63] icon-fill">{item.icon}</span>
                <span className="text-[9px] font-bold text-slate-500 uppercase tracking-tight">{item.label}</span>
                <span className="absolute bottom-full left-1/2 -translate-x-1/2 mb-2 px-2.5 py-1 text-[10px] bg-slate-900 text-white rounded opacity-0 group-hover/tooltip:opacity-100 transition-opacity whitespace-nowrap z-50 pointer-events-none shadow">
                  {item.tooltip}
                </span>
              </div>
            ))}
        </div>

        {/* Social Proof */}
        {pkg.recentBookings != null && (
          <div className="text-left text-xs font-bold text-emerald-600 flex items-center gap-1.5">
            <Activity size={12} className="animate-pulse" />
            <span>Trending this week • Booked {pkg.recentBookings}+ times recently</span>
          </div>
        )}

        {/* Pricing Rows */}
        <div className="flex justify-between items-end border-t border-slate-100 pt-3 text-left">
          {pkg.price != null ? (
            <>
              <div>
                <span className="text-[10px] text-slate-500 font-bold uppercase tracking-wider block">Starting From</span>
                <div className="flex items-baseline gap-1.5 mt-0.5">
                  <span className="text-[20px] font-extrabold text-[#0B3A63]">
                    ₹{pkg.price.toLocaleString()}
                  </span>
                  <span className="text-xs text-slate-400 line-through">
                    ₹{(pkg.price * 1.25).toLocaleString()}
                  </span>
                </div>
              </div>
              <div className="text-right">
                <span className="text-[10px] text-slate-500 font-bold uppercase tracking-wider block">EMI Options</span>
                <span className="text-[11px] font-bold text-[#0B3A63] block mt-1">
                  From ₹{Math.floor(pkg.price / 12).toLocaleString()}/mo
                </span>
              </div>
            </>
          ) : (
            <div className="w-full flex justify-between items-center py-1">
              <div>
                <span className="text-[10px] text-slate-500 font-bold uppercase tracking-wider block">Package Type</span>
                <span className="text-sm font-bold text-[#0B3A63] flex items-center gap-1">
                  <ShieldCheck size={14} className="text-[#E8A63B]" /> Customizable Package
                </span>
              </div>
              <span className="text-xs font-bold text-emerald-600 bg-emerald-50 px-2.5 py-1 rounded-full border border-emerald-200">
                Enquire for Pricing
              </span>
            </div>
          )}
        </div>

        {/* Expandable Accordion Tabs inside the card */}
        <div className="border border-slate-200/80 rounded-xl overflow-hidden mt-1">
          <div className="flex bg-slate-50 border-b border-slate-200 divide-x divide-slate-200 text-[10px] font-bold text-slate-600 select-none">
            <button onClick={(e) => toggleTab("highlights", e)} className={`flex-1 py-2 text-center hover:bg-white hover:text-[#0B3A63] transition-colors cursor-pointer ${activeTab === "highlights" ? "bg-white text-[#0B3A63]" : ""}`}>
              Highlights
            </button>
            <button onClick={(e) => toggleTab("timings", e)} className={`flex-1 py-2 text-center hover:bg-white hover:text-[#0B3A63] transition-colors cursor-pointer ${activeTab === "timings" ? "bg-white text-[#0B3A63]" : ""}`}>
              Timings
            </button>
            <button onClick={(e) => toggleTab("tips", e)} className={`flex-1 py-2 text-center hover:bg-white hover:text-[#0B3A63] transition-colors cursor-pointer ${activeTab === "tips" ? "bg-white text-[#0B3A63]" : ""}`}>
              Tips
            </button>
            <button onClick={(e) => toggleTab("policy", e)} className={`flex-1 py-2 text-center hover:bg-white hover:text-[#0B3A63] transition-colors cursor-pointer ${activeTab === "policy" ? "bg-white text-[#0B3A63]" : ""}`}>
              Cancellation
            </button>
          </div>

          <AnimatePresence initial={false}>
            {activeTab && (
              <motion.div
                initial={{ height: 0, opacity: 0 }}
                animate={{ height: "auto", opacity: 1 }}
                exit={{ height: 0, opacity: 0 }}
                transition={{ duration: 0.2, ease: "easeOut" }}
                className="bg-white p-3.5 text-xs text-slate-600 border-t border-slate-100 text-left font-medium leading-relaxed leading-normal"
              >
                {activeTab === "highlights" && (
                  <ul className="list-disc pl-4 space-y-1">
                    {pkg.highlights && pkg.highlights.length > 0 ? (
                      pkg.highlights.map((h, i) => <li key={i}>{h}</li>)
                    ) : (
                      <li>Explore the best spots at {pkg.destinationName}.</li>
                    )}
                  </ul>
                )}
                {activeTab === "timings" && (
                  <ul className="list-disc pl-4 space-y-1">
                    {pkg.itinerarySummary && pkg.itinerarySummary.length > 0 ? (
                      pkg.itinerarySummary.map((h, i) => <li key={i}>{h}</li>)
                    ) : (
                      <li>Sightseeing itinerary planned beautifully.</li>
                    )}
                  </ul>
                )}
                {activeTab === "tips" && (
                  <ul className="list-disc pl-4 space-y-1">
                    {pkg.tips && pkg.tips.length > 0 ? (
                      pkg.tips.map((h, i) => <li key={i}>{h}</li>)
                    ) : (
                      <li>Follow all local destination guidelines.</li>
                    )}
                  </ul>
                )}
                {activeTab === "policy" && (
                  <p>{pkg.cancellationSummary || "Standard 15 days cancellation policy applies."}</p>
                )}
              </motion.div>
            )}
          </AnimatePresence>
        </div>

        {/* Primary and Secondary CTA Buttons */}
        <div className="grid grid-cols-2 gap-3 mt-1 select-none">
          <Link href={`/packages/${pkg.id}`} className="w-full">
            <button className="w-full border border-slate-300 text-slate-700 hover:bg-slate-50 font-bold py-2.5 rounded-xl text-xs transition-colors cursor-pointer flex items-center justify-center gap-1.5 h-11 bg-white">
              View Itinerary
            </button>
          </Link>
          <button
            onClick={handleEnquireClick}
            className="w-full bg-[#0B3A63] hover:bg-[#124d80] text-white font-bold py-2.5 rounded-xl text-xs transition-all cursor-pointer flex items-center justify-center gap-1.5 h-11 shadow-sm hover:shadow-md active:scale-97 border border-transparent"
          >
             Enquire Now <ArrowRight size={13} className="text-[#E8A63B] group-hover:translate-x-0.5 transition-transform" />
          </button>
        </div>

      </div>
    </motion.article>
  );
}
