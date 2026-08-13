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
  ArrowRight, 
  Share2, 
  ShieldCheck, 
  Activity, 
  Check, 
  CalendarDays,
  ActivityIcon,
  Users,
  RefreshCw,
  Clock,
  Sparkles
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
      initial={{ opacity: 0, y: 25 }}
      whileInView={{ opacity: 1, y: 0 }}
      viewport={{ once: true, margin: "-10% 0px" }}
      transition={{ duration: 0.45, ease: easeQuint, delay: (index % 6) * 0.05 }}
      whileHover={{ y: -5 }}
      className="bg-white rounded-2xl overflow-hidden shadow-level-1 border border-[#DDE4E8] flex flex-col group relative transition-all duration-300 select-none hover:border-[#D89A32] hover:shadow-level-2"
    >
      {/* 1. Image Container (Height 230px) */}
      <div className="relative h-[220px] w-full overflow-hidden bg-slate-100">
        <img
          src={getAssetPath(pkg.image)}
          alt={pkg.title}
          className="w-full h-full object-cover group-hover:scale-106 transition-transform duration-500"
          loading="lazy"
        />
        
        {/* Dark Vignette Overlay */}
        <div className="absolute inset-0 bg-gradient-to-t from-black/60 via-transparent to-black/30 pointer-events-none" />

        {/* Top Left Badges */}
        <div className="absolute top-3 left-3 flex flex-col gap-1.5 z-10">
          {pkg.tags && pkg.tags.length > 0 && (
            <span className="px-2.5 py-1 rounded-lg font-bold text-[10px] uppercase tracking-wider bg-[#D89A32] text-white shadow-sm">
              {pkg.tags[0]}
            </span>
          )}
          {pkg.seatsLeft != null && pkg.seatsLeft > 0 && (
            <span className="px-2.5 py-1 rounded-lg font-bold text-[10px] uppercase tracking-wider bg-red-600 text-white flex items-center gap-1 shadow-sm">
              <span className="w-1.5 h-1.5 bg-white rounded-full animate-ping" />
              Only {pkg.seatsLeft} Seats Left
            </span>
          )}
        </div>

        {/* Top Right Controls */}
        <div className="absolute top-3 right-3 flex items-center gap-1.5 z-10">
          {/* Compare Toggle */}
          <button
            onClick={(e) => {
              e.preventDefault();
              e.stopPropagation();
              toggleCompare(pkg.id);
            }}
            className={`p-2 rounded-full backdrop-blur-md transition-all shadow-sm active:scale-90 cursor-pointer ${
              isCompared 
                ? "bg-[#102F4A] text-white border border-[#E6B85C]" 
                : "bg-white/90 hover:bg-white text-[#17212B]"
            }`}
            title="Compare Package"
          >
            <RefreshCw size={14} className={isCompared ? "animate-spin-slow text-[#E6B85C]" : ""} />
          </button>

          {/* Share Button */}
          <button
            onClick={handleShareClick}
            className="p-2 bg-white/90 hover:bg-white backdrop-blur-md rounded-full text-[#17212B] transition-all shadow-sm active:scale-90 cursor-pointer"
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
            className="p-2 bg-white/90 hover:bg-white backdrop-blur-md rounded-full text-[#17212B] hover:text-red-600 transition-all shadow-sm active:scale-90 cursor-pointer"
            title="Save to Favorites"
          >
            <Heart
              size={14}
              className={isSaved ? "fill-red-600 text-red-600" : "text-[#5E6B76]"}
            />
          </button>
        </div>

        {/* Bottom Left Rating / Verified Badges */}
        <div className="absolute bottom-3 left-3 text-white z-10 flex items-center gap-2 text-xs">
          {pkg.rating != null && pkg.rating > 0 && (
            <div className="flex items-center gap-1 bg-black/50 backdrop-blur-md px-2.5 py-0.5 rounded-lg font-bold">
              <Star size={12} className="fill-[#E6B85C] text-[#E6B85C]" />
              <span>{pkg.rating}</span>
              {pkg.reviewCount != null && <span className="opacity-75">({pkg.reviewCount})</span>}
            </div>
          )}
          {pkg.verified === true && (
            <span className="bg-emerald-700/80 backdrop-blur-md px-2 py-0.5 rounded-lg font-bold text-[10px] uppercase tracking-wider flex items-center gap-0.5">
              <ShieldCheck size={10} /> Verified
            </span>
          )}
        </div>

        {/* Bottom Right Duration Label */}
        <div className="absolute bottom-3 right-3 text-white z-10 text-xs bg-black/50 backdrop-blur-md px-2.5 py-0.5 rounded-lg font-bold">
          {pkg.duration.split(" / ")[0]}
        </div>
      </div>

      {/* 2. Body Details */}
      <div className="p-5 flex flex-col flex-grow gap-3.5 text-left">
        
        {/* Title & Location */}
        <div>
          <Link href={`/packages/${pkg.id}`}>
            <h3 className="text-lg text-[#102F4A] font-bold font-display leading-snug group-hover:text-[#D89A32] transition-colors line-clamp-2 h-[48px]">
              {pkg.title}
            </h3>
          </Link>

          <div className="flex items-center gap-1.5 text-xs text-[#5E6B76] mt-1.5 truncate">
            <MapPin size={13} className="text-[#D89A32] shrink-0" />
            <span className="truncate font-medium">{pkg.destinations.split(" - ").join(" → ")}</span>
          </div>
        </div>

        {/* Benefits List (Max 2) */}
        {pkg.packageBenefits && pkg.packageBenefits.length > 0 && (
          <div className="grid grid-cols-2 gap-2 border-t border-[#DDE4E8]/60 pt-3">
            {pkg.packageBenefits.slice(0, 2).map((benefit) => (
              <div key={benefit} className="flex items-center gap-1.5 text-[11px] font-semibold text-[#17212B] line-clamp-1">
                <Check size={12} className="text-[#287A5D] shrink-0 stroke-[2.5]" /> {benefit}
              </div>
            ))}
          </div>
        )}

        {/* Quick Info Pills */}
        <div className="flex flex-wrap gap-1.5 font-sans font-semibold text-[11px]">
          <span className="inline-flex items-center gap-1 bg-[#FFF9F0] text-[#D89A32] border border-[#D89A32]/30 px-2.5 py-0.5 rounded-full">
            <CalendarDays size={11} /> {pkg.bestSeason}
          </span>
          <span className="inline-flex items-center gap-1 bg-[#F5F7F8] text-[#5E6B76] border border-[#DDE4E8] px-2.5 py-0.5 rounded-full">
            <ActivityIcon size={11} /> {pkg.pace}
          </span>
          {pkg.seniorFriendly && (
            <span className="inline-flex items-center gap-1 bg-emerald-50 text-emerald-800 border border-emerald-200 px-2.5 py-0.5 rounded-full font-bold">
              <ShieldCheck size={11} /> Senior Friendly
            </span>
          )}
        </div>

        {/* Dynamic Inclusions Icons */}
        <div className="flex justify-start items-center bg-[#F5F7F8] p-2 rounded-xl border border-[#DDE4E8]/70 divide-x divide-[#DDE4E8]/60">
          {[
            { key: "hotel" as const, icon: "hotel", label: "Hotel", tooltip: "Comfortable Stay" },
            { key: "meals" as const, icon: "restaurant", label: "Meals", tooltip: "Hygienic Meals" },
            { key: "transit" as const, icon: "directions_bus", label: "Transit", tooltip: "AC Transport" },
            { key: "guide" as const, icon: "person_pin_circle", label: "Guide", tooltip: "Tour Guide" },
            { key: "entryPasses" as const, icon: "confirmation_number", label: "Passes", tooltip: "Temple VIP Passes" },
          ]
            .filter((item) => pkg.inclusions[item.key])
            .map((item) => (
              <div 
                key={item.key} 
                className="relative group/tooltip flex flex-col items-center gap-0.5 flex-grow flex-1 px-1"
              >
                <span className="material-symbols-outlined text-[17px] text-[#102F4A] icon-fill">{item.icon}</span>
                <span className="text-[9px] font-bold text-[#5E6B76] uppercase tracking-tight">{item.label}</span>
                <span className="absolute bottom-full left-1/2 -translate-x-1/2 mb-2 px-2 py-0.5 text-[10px] bg-[#17212B] text-white rounded opacity-0 group-hover/tooltip:opacity-100 transition-opacity whitespace-nowrap pointer-events-none shadow z-30">
                  {item.tooltip}
                </span>
              </div>
            ))}
        </div>

        {/* Social Proof */}
        {pkg.recentBookings != null && pkg.recentBookings > 0 && (
          <div className="text-xs font-bold text-[#18794E] flex items-center gap-1.5">
            <Activity size={12} className="animate-pulse" />
            <span>Booked {pkg.recentBookings}+ times recently</span>
          </div>
        )}

        {/* Price Summary */}
        <div className="flex justify-between items-end border-t border-[#DDE4E8] pt-3">
          {pkg.price != null ? (
            <>
              <div>
                <span className="text-[10px] text-[#5E6B76] font-bold uppercase tracking-wider block">Starting From</span>
                <div className="flex items-baseline gap-1.5">
                  <span className="text-[20px] font-extrabold text-[#102F4A] font-display">
                    ₹{pkg.price.toLocaleString()}
                  </span>
                  <span className="text-xs text-slate-400 line-through">
                    ₹{Math.floor(pkg.price * 1.2).toLocaleString()}
                  </span>
                </div>
              </div>
              <div className="text-right">
                <span className="text-[10px] text-[#5E6B76] font-bold uppercase tracking-wider block">EMI Available</span>
                <span className="text-[11px] font-bold text-[#1D5E85] block">
                  From ₹{Math.floor(pkg.price / 12).toLocaleString()}/mo
                </span>
              </div>
            </>
          ) : (
            <div className="w-full flex justify-between items-center py-1">
              <div>
                <span className="text-[10px] text-[#5E6B76] font-bold uppercase tracking-wider block">Package Type</span>
                <span className="text-sm font-bold text-[#102F4A]">Customizable Package</span>
              </div>
              <span className="text-xs font-bold text-[#18794E] bg-emerald-50 px-2.5 py-1 rounded-full border border-emerald-200">
                Enquire for Price
              </span>
            </div>
          )}
        </div>

        {/* Card Expandable Tabs */}
        <div className="border border-[#DDE4E8] rounded-xl overflow-hidden mt-0.5">
          <div className="flex bg-[#F5F7F8] border-b border-[#DDE4E8] divide-x divide-[#DDE4E8] text-[10px] font-bold text-[#5E6B76]">
            <button onClick={(e) => toggleTab("highlights", e)} className={`flex-1 py-1.5 text-center hover:bg-white hover:text-[#102F4A] transition-colors cursor-pointer ${activeTab === "highlights" ? "bg-white text-[#102F4A]" : ""}`}>
              Highlights
            </button>
            <button onClick={(e) => toggleTab("timings", e)} className={`flex-1 py-1.5 text-center hover:bg-white hover:text-[#102F4A] transition-colors cursor-pointer ${activeTab === "timings" ? "bg-white text-[#102F4A]" : ""}`}>
              Itinerary
            </button>
            <button onClick={(e) => toggleTab("tips", e)} className={`flex-1 py-1.5 text-center hover:bg-white hover:text-[#102F4A] transition-colors cursor-pointer ${activeTab === "tips" ? "bg-white text-[#102F4A]" : ""}`}>
              Tips
            </button>
            <button onClick={(e) => toggleTab("policy", e)} className={`flex-1 py-1.5 text-center hover:bg-white hover:text-[#102F4A] transition-colors cursor-pointer ${activeTab === "policy" ? "bg-white text-[#102F4A]" : ""}`}>
              Policy
            </button>
          </div>

          <AnimatePresence initial={false}>
            {activeTab && (
              <motion.div
                initial={{ height: 0, opacity: 0 }}
                animate={{ height: "auto", opacity: 1 }}
                exit={{ height: 0, opacity: 0 }}
                transition={{ duration: 0.2, ease: "easeOut" }}
                className="bg-white p-3 text-xs text-[#5E6B76] border-t border-[#DDE4E8] font-medium leading-relaxed"
              >
                {activeTab === "highlights" && (
                  <ul className="list-disc pl-4 space-y-1">
                    {pkg.highlights && pkg.highlights.length > 0 ? (
                      pkg.highlights.map((h, i) => <li key={i}>{h}</li>)
                    ) : (
                      <li>Explore key attractions in {pkg.destinationName}.</li>
                    )}
                  </ul>
                )}
                {activeTab === "timings" && (
                  <ul className="list-disc pl-4 space-y-1">
                    {pkg.itinerarySummary && pkg.itinerarySummary.length > 0 ? (
                      pkg.itinerarySummary.map((h, i) => <li key={i}>{h}</li>)
                    ) : (
                      <li>Day-by-day sightseeing tour itinerary included.</li>
                    )}
                  </ul>
                )}
                {activeTab === "tips" && (
                  <ul className="list-disc pl-4 space-y-1">
                    {pkg.tips && pkg.tips.length > 0 ? (
                      pkg.tips.map((h, i) => <li key={i}>{h}</li>)
                    ) : (
                      <li>Respect local pilgrimage and cultural guidelines.</li>
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

        {/* Action Buttons */}
        <div className="grid grid-cols-2 gap-2.5 mt-1 select-none">
          <Link href={`/packages/${pkg.id}`} className="w-full">
            <button className="w-full border border-[#DDE4E8] text-[#102F4A] hover:bg-[#F5F7F8] font-bold py-2.5 rounded-xl text-xs transition-colors cursor-pointer flex items-center justify-center gap-1 h-10 bg-white">
              View Details
            </button>
          </Link>
          <button
            onClick={handleEnquireClick}
            className="w-full bg-[#102F4A] hover:bg-[#1D5E85] text-white font-bold py-2.5 rounded-xl text-xs transition-all cursor-pointer flex items-center justify-center gap-1.5 h-10 shadow-sm hover:shadow-md active:scale-98"
          >
            <span>Enquire Now</span>
            <ArrowRight size={13} className="text-[#E6B85C]" />
          </button>
        </div>

      </div>
    </motion.article>
  );
}
