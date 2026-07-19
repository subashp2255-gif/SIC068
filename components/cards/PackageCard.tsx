"use client";

import Link from "next/link";
import { motion } from "framer-motion";
import { useApp } from "@/context/AppContext";
import { Package } from "@/data/packages";
import { easeQuint } from "@/lib/animations";
import { Heart, RefreshCw, Star, MapPin, Eye, ArrowRight } from "lucide-react";

interface PackageCardProps {
  pkg: Package;
  index: number;
}

export default function PackageCard({ pkg, index }: PackageCardProps) {
  const { savedIds, toggleSave, compareIds, toggleCompare, setEnquireOpen, setEnquirePackageId } = useApp();

  const isSaved = savedIds.includes(pkg.id);
  const isCompared = compareIds.includes(pkg.id);

  const handleEnquireClick = (e: React.MouseEvent) => {
    e.preventDefault();
    e.stopPropagation();
    setEnquirePackageId(pkg.id);
    setEnquireOpen(true);
  };

  return (
    <motion.article
      initial={{ opacity: 0, y: 30 }}
      whileInView={{ opacity: 1, y: 0 }}
      viewport={{ once: true, margin: "-10% 0px" }}
      transition={{ duration: 0.5, ease: easeQuint, delay: index * 0.05 }}
      whileHover={{ y: -6 }}
      className={`bg-surface-container-lowest rounded-card overflow-hidden shadow-level-1 border border-outline-variant/15 flex flex-col group relative transition-all duration-300 select-none ${
        isCompared ? "border-secondary/60 ring-1 ring-secondary/20" : ""
      }`}
    >
      {/* 1. Image Area with tags and overlay controls */}
      <div className="relative h-56 w-full overflow-hidden bg-surface-container">
        <img
          src={pkg.image}
          alt={pkg.title}
          className="w-full h-full object-cover group-hover:scale-106 transition-transform duration-500"
          loading="lazy"
        />
        
        {/* Dark subtle overlay on image bottom */}
        <div className="absolute inset-0 bg-gradient-to-t from-black/30 via-transparent to-transparent opacity-80 pointer-events-none" />

        {/* Tags top left */}
        <div className="absolute top-4 left-4 flex flex-col gap-1.5 z-10">
          {pkg.tags.map((tag) => (
            <span
              key={tag}
              className={`px-3 py-1 rounded-full font-label-bold text-[11px] shadow-sm uppercase tracking-wider ${
                tag === "Senior Friendly" || tag === "Best for Senior Comfort"
                  ? "bg-secondary-fixed text-on-secondary-fixed"
                  : tag === "Fast Filling"
                  ? "bg-error-container text-on-error-container"
                  : "bg-primary text-on-primary"
              }`}
            >
              {tag}
            </span>
          ))}
        </div>

        {/* Favorite Icon (Heart) top right */}
        <button
          onClick={(e) => {
            e.preventDefault();
            toggleSave(pkg.id);
          }}
          className="absolute top-4 right-4 p-2 bg-surface-container-lowest/90 backdrop-blur-sm rounded-full text-on-surface hover:text-error transition-all shadow-sm z-10 cursor-pointer active:scale-90"
          aria-label="Favorite package"
        >
          <motion.div
            animate={isSaved ? { scale: [1, 1.25, 0.95, 1.1, 1] } : {}}
            transition={{ duration: 0.35 }}
          >
            <Heart
              size={18}
              className={isSaved ? "fill-error text-error" : "text-on-surface-variant"}
            />
          </motion.div>
        </button>
      </div>

      {/* 2. Card Content details */}
      <div className="p-5 flex flex-col flex-grow gap-4">
        
        {/* Title, rating and duration */}
        <div>
          <div className="flex justify-between items-start gap-4 mb-2">
            <h3 className="font-headline-md text-[19px] text-primary leading-tight font-bold group-hover:text-primary transition-colors line-clamp-2">
              {pkg.title}
            </h3>
            <span className="bg-surface-container-high px-2 py-1 rounded text-xs font-bold text-on-surface-variant whitespace-nowrap">
              {pkg.duration.split(" / ")[0]}
            </span>
          </div>

          <div className="flex items-center gap-3">
            <div className="flex items-center gap-1 text-[13px] text-on-surface-variant">
              <Star size={13} className="text-secondary-fixed-dim fill-secondary-fixed-dim" />
              <span className="font-bold text-on-surface">{pkg.rating}</span>
              <span className="opacity-70">({pkg.reviewCount} reviews)</span>
            </div>
            <span className="text-outline-variant/30 text-sm">|</span>
            <div className="flex items-center gap-1 text-[13px] text-on-surface-variant line-clamp-1">
              <MapPin size={13} className="text-outline" />
              <span className="line-clamp-1">{pkg.destinations.split(" - ")[0]}</span>
            </div>
          </div>
        </div>

        {/* Short description */}
        <p className="text-body-sm text-[14px] text-on-surface-variant line-clamp-2 leading-relaxed">
          {pkg.itinerary[1]?.description || pkg.destinations}
        </p>

        {/* 3. Inclusions Icon Tray */}
        <div className="flex justify-between items-center border-y border-outline-variant/15 py-3 mt-auto select-none">
          <div 
            className={`flex flex-col items-center gap-1 flex-1 text-center border-r border-outline-variant/10 ${
              pkg.inclusions.hotel ? "text-secondary" : "text-outline-variant opacity-40"
            }`}
            title={pkg.inclusions.hotel ? String(pkg.inclusions.hotel) : "Hotel not included"}
          >
            <span className="material-symbols-outlined text-[20px] icon-fill">hotel</span>
            <span className="text-[10px] uppercase font-bold text-on-surface-variant">Stay</span>
          </div>
          <div 
            className={`flex flex-col items-center gap-1 flex-1 text-center border-r border-outline-variant/10 ${
              pkg.inclusions.meals ? "text-secondary" : "text-outline-variant opacity-40"
            }`}
            title={pkg.inclusions.meals ? String(pkg.inclusions.meals) : "Meals not included"}
          >
            <span className="material-symbols-outlined text-[20px] icon-fill">restaurant</span>
            <span className="text-[10px] uppercase font-bold text-on-surface-variant">Meals</span>
          </div>
          <div 
            className={`flex flex-col items-center gap-1 flex-1 text-center border-r border-outline-variant/10 ${
              pkg.inclusions.transit ? "text-secondary" : "text-outline-variant opacity-40"
            }`}
            title={pkg.inclusions.transit ? String(pkg.inclusions.transit) : "Transport not included"}
          >
            <span className="material-symbols-outlined text-[20px] icon-fill">directions_bus</span>
            <span className="text-[10px] uppercase font-bold text-on-surface-variant">Transit</span>
          </div>
          <div 
            className={`flex flex-col items-center gap-1 flex-1 text-center ${
              pkg.inclusions.guide ? "text-secondary" : "text-outline-variant opacity-40"
            }`}
            title={pkg.inclusions.guide ? String(pkg.inclusions.guide) : "Guide not included"}
          >
            <span className="material-symbols-outlined text-[20px] icon-fill">person_pin_circle</span>
            <span className="text-[10px] uppercase font-bold text-on-surface-variant">Guide</span>
          </div>
        </div>

        {/* 4. Footer Compare checkbox & Pricing */}
        <div className="flex justify-between items-center pt-1">
          {/* Compare hook */}
          <label className="flex items-center gap-1.5 cursor-pointer text-sm font-semibold text-on-surface-variant hover:text-primary transition-colors select-none">
            <input
              type="checkbox"
              checked={isCompared}
              onChange={() => toggleCompare(pkg.id)}
              className="w-4 h-4 rounded text-primary focus:ring-primary border-outline-variant"
            />
            <span>Compare</span>
          </label>

          {/* Pricing */}
          <div className="text-right">
            <div className="text-[11px] text-on-surface-variant font-medium">Starting from</div>
            <div className="font-headline-md text-primary text-[20px] leading-tight font-extrabold font-display">
              ₹{pkg.price.toLocaleString()}{" "}
              <span className="text-[12px] font-normal text-outline-variant">/pp</span>
            </div>
          </div>
        </div>

        {/* Action Button Tray */}
        <div className="grid grid-cols-2 gap-2 mt-1 select-none">
          <Link href={`/packages/${pkg.id}`} className="w-full">
            <button className="w-full border border-primary text-primary hover:bg-surface-container font-bold py-2.5 rounded-lg text-sm transition-colors cursor-pointer flex items-center justify-center gap-1">
              <Eye size={14} /> Details
            </button>
          </Link>
          <button
            onClick={handleEnquireClick}
            className="w-full bg-primary text-on-primary hover:bg-primary-container font-bold py-2.5 rounded-lg text-sm transition-colors cursor-pointer flex items-center justify-center gap-1"
          >
             Enquire <ArrowRight size={14} />
          </button>
        </div>

      </div>
    </motion.article>
  );
}
