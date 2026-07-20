"use client";

import { useState, useEffect } from "react";
import Link from "next/link";
import { useRouter } from "next/navigation";
import Navbar from "@/components/navigation/Navbar";
import Footer from "@/components/layout/Footer";
import PageTransition from "@/components/animations/PageTransition";
import ScrollProgress from "@/components/animations/ScrollProgress";
import { FadeIn } from "@/components/animations/Reveals";
import { Package } from "@/data/packages";
import { useApp } from "@/context/AppContext";
import { easeQuint, getAssetPath } from "@/lib/animations";
import { ArrowLeft, MapPin, Check, ShieldAlert, Heart, PhoneCall, ChevronDown, ShieldCheck } from "lucide-react";
import { motion, AnimatePresence } from "framer-motion";

interface PackageDetailsClientProps {
  pkg: Package | undefined;
}

export default function PackageDetailsClient({ pkg }: PackageDetailsClientProps) {
  const router = useRouter();
  const { savedIds, toggleSave, setEnquireOpen, setEnquirePackageId, addToRecentlyViewed } = useApp();

  const isSaved = savedIds.includes(pkg?.id || "");

  // Itinerary Accordion State
  const [openDays, setOpenDays] = useState<Record<number, boolean>>({ 1: true });

  // Guest counters for booking sticky card
  const [adults, setAdults] = useState(2);
  const [seniors, setSeniors] = useState(0);
  const [travelDate, setTravelDate] = useState("");

  // Gallery Active Image
  const [activeImage, setActiveImage] = useState(pkg?.image || "");

  useEffect(() => {
    if (pkg) {
      setActiveImage(pkg.image);
      addToRecentlyViewed(pkg.id);
    }
  }, [pkg, addToRecentlyViewed]);

  if (!pkg) {
    return (
      <>
        <Navbar />
        <div className="min-h-[60vh] flex flex-col items-center justify-center gap-4 text-center select-none">
          <ShieldAlert size={48} className="text-error" />
          <h2 className="font-headline-lg text-primary font-bold">Package Not Found</h2>
          <p className="text-on-surface-variant font-body-sm max-w-sm">
            The pilgrimage tour package you are looking for does not exist or has been removed.
          </p>
          <Link href="/packages">
            <button className="bg-primary text-on-primary px-6 py-2.5 rounded-lg font-bold hover:bg-primary-container transition-all">
              Browse All Packages
            </button>
          </Link>
        </div>
        <Footer />
      </>
    );
  }

  const toggleDay = (day: number) => {
    setOpenDays((prev) => ({ ...prev, [day]: !prev[day] }));
  };

  const handleBookNow = () => {
    setEnquirePackageId(pkg.id);
    setEnquireOpen(true);
  };

  // Mock secondary images for gallery
  const galleryImages = [
    pkg.image,
    "/images/hero_dawn_temple.png",
    "/images/family_temple_prayer.png"
  ];

  // Price calculations
  const pricePerPerson = pkg.price;
  const totalPrice = (adults + seniors) * pricePerPerson;

  return (
    <>
      <ScrollProgress />
      <Navbar />
      <PageTransition>
        <main className="w-full flex-grow pb-16">
          
          {/* 1. Page Header / Breadcrumbs banner */}
          <div className="bg-surface-container-low py-6 border-b border-outline-variant/15 select-none text-left">
            <div className="max-w-container-max mx-auto px-margin-mobile md:px-12 flex flex-col gap-3">
              <nav className="text-xs font-semibold text-outline flex items-center gap-1.5 font-body-sm">
                <Link href="/" className="hover:text-primary transition-colors">Home</Link>
                <span className="material-symbols-outlined text-[14px]">chevron_right</span>
                <Link href="/packages" className="hover:text-primary transition-colors">Packages</Link>
                <span className="material-symbols-outlined text-[14px]">chevron_right</span>
                <span className="text-on-surface font-bold">{pkg.title}</span>
              </nav>
              
              <div className="flex flex-col sm:flex-row justify-between items-start sm:items-center gap-4">
                <button 
                  onClick={() => router.back()}
                  className="flex items-center gap-1 text-sm font-bold text-primary hover:text-secondary transition-colors cursor-pointer"
                >
                  <ArrowLeft size={16} /> Back to packages
                </button>

                <button
                  onClick={() => toggleSave(pkg.id)}
                  className="flex items-center gap-1.5 text-xs font-bold border border-outline-variant px-3 py-1.5 rounded-lg bg-surface hover:bg-surface-container transition-all cursor-pointer"
                >
                  <Heart size={14} className={isSaved ? "fill-error text-error" : "text-on-surface-variant"} />
                  {isSaved ? "Saved in Favorites" : "Save to Favorites"}
                </button>
              </div>
            </div>
          </div>

          {/* 2. Main Details Layout Grid */}
          <div className="max-w-container-max mx-auto px-margin-mobile md:px-12 py-10 grid grid-cols-1 lg:grid-cols-12 gap-gutter items-start">
            
            {/* Left Column: Details, Accordion, Gallery, Reviews */}
            <div className="lg:col-span-8 flex flex-col gap-10 text-left">
              
              {/* Core Information Section */}
              <div className="space-y-4">
                <div className="flex flex-wrap gap-2 select-none">
                  {pkg.tags.map((tag) => (
                    <span 
                      key={tag}
                      className="px-3 py-0.5 bg-secondary-container text-on-secondary-container rounded-full text-xs font-bold shadow-sm"
                    >
                      {tag}
                    </span>
                  ))}
                  <span className="px-3 py-0.5 bg-primary text-on-primary rounded-full text-xs font-bold shadow-sm">
                    {pkg.category}
                  </span>
                </div>

                <h1 className="font-display-lg text-primary font-bold leading-tight">
                  {pkg.title}
                </h1>

                <div className="flex flex-wrap items-center gap-6 text-on-surface-variant text-sm font-medium">
                  <span className="flex items-center gap-1"><MapPin size={16} className="text-secondary" /> {pkg.destinations}</span>
                  <span className="text-outline-variant/30">|</span>
                  <span className="flex items-center gap-1">★ {pkg.rating} ({pkg.reviewCount} verified reviews)</span>
                  <span className="text-outline-variant/30">|</span>
                  <span className="flex items-center gap-1">⏱ {pkg.duration}</span>
                </div>
              </div>

              {/* Dynamic Image Gallery */}
              <div className="space-y-3">
                <div className="h-96 md:h-[450px] w-full rounded-2xl overflow-hidden bg-surface-container shadow-level-1 relative select-none">
                  <img src={getAssetPath(activeImage)} alt={pkg.title} className="w-full h-full object-cover transition-all duration-300" />
                </div>
                
                {/* Thumbnails selector */}
                <div className="flex gap-3 select-none">
                  {galleryImages.map((img, idx) => (
                    <button
                      key={idx}
                      onClick={() => setActiveImage(img)}
                      className={`w-24 h-16 rounded-lg overflow-hidden border-2 bg-surface-container cursor-pointer transition-all shadow-sm ${
                        activeImage === img ? "border-secondary scale-102" : "border-transparent opacity-75 hover:opacity-100"
                      }`}
                    >
                      <img src={getAssetPath(img)} alt="temple thumb" className="w-full h-full object-cover" />
                    </button>
                  ))}
                </div>
              </div>

              {/* Package Inclusions Detailed Checklist Grid */}
              <div className="bg-surface-container-lowest rounded-xl p-6 shadow-level-1 border border-outline-variant/10">
                <h3 className="font-headline-md text-[18px] text-primary font-bold mb-5 select-none">
                  What is included in this journey
                </h3>
                <div className="grid grid-cols-1 sm:grid-cols-2 gap-4">
                  
                  <div className="flex items-start gap-3">
                    <div className="w-7 h-7 bg-tertiary-container/30 text-tertiary rounded-full flex items-center justify-center shrink-0">
                      <Check size={14} className="stroke-[3]" />
                    </div>
                    <div>
                      <h4 className="font-label-bold text-sm text-primary font-bold">Accommodations Stay</h4>
                      <p className="text-xs text-on-surface-variant mt-0.5">
                        {pkg.inclusions.hotel ? String(pkg.inclusions.hotel) : "Ashram stay pre-booked"} Stays closer to temples.
                      </p>
                    </div>
                  </div>

                  <div className="flex items-start gap-3">
                    <div className="w-7 h-7 bg-tertiary-container/30 text-tertiary rounded-full flex items-center justify-center shrink-0">
                      <Check size={14} className="stroke-[3]" />
                    </div>
                    <div>
                      <h4 className="font-label-bold text-sm text-primary font-bold">Vegetarian Meals</h4>
                      <p className="text-xs text-on-surface-variant mt-0.5">
                        {pkg.inclusions.meals ? String(pkg.inclusions.meals) : "Pure Vegetarian food"} served at hygienically run kitchens.
                      </p>
                    </div>
                  </div>

                  <div className="flex items-start gap-3">
                    <div className="w-7 h-7 bg-tertiary-container/30 text-tertiary rounded-full flex items-center justify-center shrink-0">
                      <Check size={14} className="stroke-[3]" />
                    </div>
                    <div>
                      <h4 className="font-label-bold text-sm text-primary font-bold">AC Travel Transit</h4>
                      <p className="text-xs text-on-surface-variant mt-0.5">
                        {pkg.inclusions.transit ? String(pkg.inclusions.transit) : "AC SUV/Bus transport"} with regular rest breaks.
                      </p>
                    </div>
                  </div>

                  <div className="flex items-start gap-3">
                    <div className="w-7 h-7 bg-tertiary-container/30 text-tertiary rounded-full flex items-center justify-center shrink-0">
                      <Check size={14} className="stroke-[3]" />
                    </div>
                    <div>
                      <h4 className="font-label-bold text-sm text-primary font-bold">Dedicated Local Guide</h4>
                      <p className="text-xs text-on-surface-variant mt-0.5">
                        {pkg.inclusions.guide ? String(pkg.inclusions.guide) : "Devoted travel coordinator"} trained in first-aid and elder care.
                      </p>
                    </div>
                  </div>

                </div>
              </div>

              {/* Detailed Itinerary Experience */}
              <div className="space-y-6">
                <div className="flex justify-between items-center select-none">
                  <h3 className="font-headline-md text-[18px] text-primary font-bold">
                    Detailed Day-by-Day Itinerary
                  </h3>
                  <span className="text-xs font-semibold text-slate-500 bg-slate-100 px-2.5 py-1 rounded-full">
                    Assisted Walking Pace
                  </span>
                </div>

                {/* Vertical timeline start */}
                <div className="relative border-l-2 border-slate-200 ml-4 space-y-6">
                  {pkg.itinerary.map((day) => {
                    const isOpen = !!openDays[day.day];
                    
                    // Detailed mock itinerary helper details
                    const details = {
                      morning: "VIP Temple Darshan assembly. Assisted fast-track queue entry coordinated by our care guides.",
                      afternoon: "Travel via air-conditioned group transit. Regular rest stops at certified hygienic Satvik restaurants.",
                      evening: "Attend sunset Aarti prayers / Hotel check-in. Evening spiritual discourse or group relaxation session.",
                      timings: "Darshan Pooja: 6:00 AM - 11:30 AM | Aarti prayers: 6:30 PM",
                      food: "100% Satvik vegetarian meals prepared with minimal spices (Breakfast, Lunch, Dinner included)",
                      accommodation: `${pkg.inclusions.hotel ? String(pkg.inclusions.hotel) : "Premium Hotel"} (Fully wheelchair accessible, elevators, western-style bathrooms, hot water)`,
                      travelMode: `${pkg.inclusions.transit ? String(pkg.inclusions.transit) : "Luxury Coach"} with dedicated first-aid assistance`,
                      distance: "Approx. 45 km to 120 km (depending on daily religious schedule)",
                      weather: "Comfortable yatra weather: 22°C - 26°C with low humidity",
                      dressCode: "Traditional / decent dress (Modest clothing, sari or dhoti/kurta). Slip-on shoes recommended.",
                      thingsToCarry: "Yatra registration card, sun protection, personal regular medication, light shawl",
                      walkingLevel: pkg.seniorFriendly ? "Elder-Friendly (Slow pace, ramps, flat surfaces, zero steep stairs)" : "Moderate Paced (Gentle walks, help guides on stand-by)"
                    };

                    return (
                      <div key={day.day} className="relative pl-8">
                        {/* Timeline dot */}
                        <div 
                          className={`absolute -left-[9px] top-4 w-4 h-4 rounded-full border-4 border-white transition-all duration-300 ${
                            isOpen ? "bg-[#E9A227] scale-110 shadow-sm" : "bg-slate-300"
                          }`}
                        />
                        
                        {/* Accordion container card */}
                        <div className="bg-white rounded-2xl border border-slate-200 shadow-sm overflow-hidden">
                          {/* Toggle Header */}
                          <button
                            onClick={() => toggleDay(day.day)}
                            className="w-full p-5 flex justify-between items-center text-left hover:bg-slate-50/50 transition-all duration-200 cursor-pointer select-none"
                          >
                            <span className="font-label-bold text-primary font-bold text-[15px] flex items-center gap-2">
                              <span className="text-[#E9A227]">Day {day.day}:</span>
                              <span>{day.title}</span>
                            </span>
                            <ChevronDown 
                              size={18} 
                              className={`text-slate-500 transition-transform duration-300 ${
                                isOpen ? "rotate-180" : ""
                              }`} 
                            />
                          </button>

                          {/* Expanded Content Panel */}
                          <AnimatePresence initial={false}>
                            {isOpen && (
                              <motion.div
                                initial={{ height: 0, opacity: 0 }}
                                animate={{ height: "auto", opacity: 1 }}
                                exit={{ height: 0, opacity: 0 }}
                                transition={{ duration: 0.25, ease: easeQuint }}
                              >
                                <div className="p-5 border-t border-slate-100 space-y-4 bg-white text-sm">
                                  <p className="text-slate-700 leading-relaxed text-[14.5px]">
                                    {day.description}
                                  </p>

                                  {/* Multi-Period Timeline Segments */}
                                  <div className="grid grid-cols-1 md:grid-cols-3 gap-3 bg-slate-50 p-4 rounded-xl">
                                    <div>
                                      <span className="text-[10px] font-bold uppercase tracking-wider text-slate-500">Morning</span>
                                      <p className="text-xs text-slate-700 mt-1">{details.morning}</p>
                                    </div>
                                    <div className="border-t md:border-t-0 md:border-l border-slate-200 pt-3 md:pt-0 md:pl-4">
                                      <span className="text-[10px] font-bold uppercase tracking-wider text-slate-500">Afternoon</span>
                                      <p className="text-xs text-slate-700 mt-1">{details.afternoon}</p>
                                    </div>
                                    <div className="border-t md:border-t-0 md:border-l border-slate-200 pt-3 md:pt-0 md:pl-4">
                                      <span className="text-[10px] font-bold uppercase tracking-wider text-slate-500">Evening</span>
                                      <p className="text-xs text-slate-700 mt-1">{details.evening}</p>
                                    </div>
                                  </div>

                                  {/* Detailed Logistics Grid */}
                                  <div className="grid grid-cols-1 sm:grid-cols-2 gap-4 text-xs pt-2">
                                    <div className="space-y-2">
                                      <div className="flex justify-between py-1 border-b border-slate-100">
                                        <span className="text-slate-500 font-semibold">Temple Timings:</span>
                                        <span className="text-slate-800 font-bold">{details.timings}</span>
                                      </div>
                                      <div className="flex justify-between py-1 border-b border-slate-100">
                                        <span className="text-slate-500 font-semibold">Satvik Meals:</span>
                                        <span className="text-slate-800 font-bold">{details.food}</span>
                                      </div>
                                      <div className="flex justify-between py-1 border-b border-slate-100">
                                        <span className="text-slate-500 font-semibold">Travel Transit:</span>
                                        <span className="text-slate-800 font-bold">{details.travelMode}</span>
                                      </div>
                                      <div className="flex justify-between py-1 border-b border-slate-100">
                                        <span className="text-slate-500 font-semibold">Walking Level:</span>
                                        <span className="text-[#E9A227] font-bold">{details.walkingLevel}</span>
                                      </div>
                                    </div>
                                    <div className="space-y-2">
                                      <div className="flex justify-between py-1 border-b border-slate-100">
                                        <span className="text-slate-500 font-semibold">Stay Hotel:</span>
                                        <span className="text-slate-800 font-bold">{details.accommodation}</span>
                                      </div>
                                      <div className="flex justify-between py-1 border-b border-slate-100">
                                        <span className="text-slate-500 font-semibold">Daily Weather:</span>
                                        <span className="text-slate-800 font-bold">{details.weather}</span>
                                      </div>
                                      <div className="flex justify-between py-1 border-b border-slate-100">
                                        <span className="text-slate-500 font-semibold">Dress Code:</span>
                                        <span className="text-slate-800 font-bold">{details.dressCode}</span>
                                      </div>
                                      <div className="flex justify-between py-1 border-b border-slate-100">
                                        <span className="text-slate-500 font-semibold">Suggested Packing:</span>
                                        <span className="text-slate-800 font-bold">{details.thingsToCarry}</span>
                                      </div>
                                    </div>
                                  </div>
                                </div>
                              </motion.div>
                            )}
                          </AnimatePresence>
                        </div>
                      </div>
                    );
                  })}
                </div>
              </div>

            </div>

            {/* Right Column: Sticky Booking Card & Pricing Breakdown */}
            <div className="lg:col-span-4 sticky top-28 select-none">
              <FadeIn>
                <div className="bg-white rounded-2xl shadow-level-2 border border-slate-200/80 p-6 flex flex-col gap-6 text-left">
                  <div className="flex justify-between items-start">
                    <div>
                      <span className="text-[11px] font-bold text-slate-500 uppercase tracking-wider">Starting Price</span>
                      <div className="flex items-baseline gap-1 mt-1">
                        <span className="font-headline-lg text-[#062E4F] text-3xl font-extrabold font-display">
                          ₹{pricePerPerson.toLocaleString()}
                        </span>
                        <span className="text-xs font-semibold text-slate-500">/ person</span>
                      </div>
                    </div>
                    {/* Trust guarantee badge */}
                    <span className="bg-emerald-50 text-emerald-700 border border-emerald-200 text-[10px] font-bold px-2 py-1 rounded-lg flex items-center gap-1 shadow-sm">
                      <ShieldCheck size={12} /> No Hidden Charges
                    </span>
                  </div>

                  <div className="border-t border-slate-100 pt-4 space-y-4">
                    {/* Date Selector input */}
                    <div className="relative">
                      <label className="block text-[11px] font-bold text-slate-500 uppercase tracking-wider mb-1">
                        Preferred travel date
                      </label>
                      <input
                        type="date"
                        value={travelDate}
                        onChange={(e) => setTravelDate(e.target.value)}
                        className="w-full bg-slate-50 text-slate-800 p-3 rounded-lg border border-slate-200 focus:border-[#062E4F] outline-none text-sm font-semibold"
                      />
                    </div>

                    {/* Passenger selections */}
                    <div className="grid grid-cols-2 gap-3">
                      <div>
                        <label className="block text-[11px] font-bold text-slate-500 uppercase tracking-wider mb-1">
                          Adults
                        </label>
                        <select
                          value={adults}
                          onChange={(e) => setAdults(parseInt(e.target.value))}
                          className="w-full bg-slate-50 p-2.5 rounded-lg border border-slate-200 outline-none text-xs font-semibold text-slate-800"
                        >
                          {[...Array(10)].map((_, i) => (
                            <option key={i} value={i}>
                              {i} Adults
                            </option>
                          ))}
                        </select>
                      </div>
                      <div>
                        <label className="block text-[11px] font-bold text-slate-500 uppercase tracking-wider mb-1">
                          Seniors (60+)
                        </label>
                        <select
                          value={seniors}
                          onChange={(e) => setSeniors(parseInt(e.target.value))}
                          className="w-full bg-slate-50 p-2.5 rounded-lg border border-slate-200 outline-none text-xs font-semibold text-slate-800"
                        >
                          {[...Array(10)].map((_, i) => (
                            <option key={i} value={i}>
                              {i} Seniors
                            </option>
                          ))}
                        </select>
                      </div>
                    </div>
                  </div>

                  {/* Pricing Breakdown Cards */}
                  <div className="bg-slate-50 p-5 rounded-2xl space-y-3 border border-slate-100">
                    <span className="text-[10px] font-bold uppercase tracking-wider text-slate-500 block border-b border-slate-200 pb-1.5">Cost breakdown</span>
                    
                    <div className="space-y-1.5 text-xs text-slate-600 font-medium">
                      <div className="flex justify-between">
                        <span>Base Package cost:</span>
                        <span>₹{(pricePerPerson * 0.5 * (adults + seniors)).toLocaleString()}</span>
                      </div>
                      <div className="flex justify-between">
                        <span>Hotel Stay share:</span>
                        <span>₹{(pricePerPerson * 0.2 * (adults + seniors)).toLocaleString()}</span>
                      </div>
                      <div className="flex justify-between">
                        <span>Transport & Guides:</span>
                        <span>₹{(pricePerPerson * 0.25 * (adults + seniors)).toLocaleString()}</span>
                      </div>
                      <div className="flex justify-between">
                        <span>VIP entry passes & GST:</span>
                        <span>₹{(pricePerPerson * 0.05 * (adults + seniors)).toLocaleString()}</span>
                      </div>
                    </div>

                    {/* Discounts section */}
                    {(seniors > 0 || (adults + seniors >= 4)) && (
                      <div className="space-y-1.5 text-xs font-semibold border-t border-slate-200 pt-2 text-emerald-700">
                        <div className="flex justify-between">
                          <span>Early Booking Discount:</span>
                          <span>- ₹1,500</span>
                        </div>
                        {seniors > 0 && (
                          <div className="flex justify-between">
                            <span>Senior citizen concession:</span>
                            <span>- ₹{(seniors * 1000).toLocaleString()}</span>
                          </div>
                        )}
                        {adults + seniors >= 4 && (
                          <div className="flex justify-between">
                            <span>Group booking rebate:</span>
                            <span>- ₹2,000</span>
                          </div>
                        )}
                      </div>
                    )}

                    <div className="border-t border-slate-200 pt-3 flex justify-between text-[15px] font-bold text-[#062E4F]">
                      <span>Final Net Price</span>
                      <span>
                        ₹{Math.max(
                          0,
                          totalPrice - 1500 - (seniors * 1000) - (adults + seniors >= 4 ? 2000 : 0)
                        ).toLocaleString()}
                      </span>
                    </div>
                  </div>

                  {/* Booking CTA Button */}
                  <button
                    onClick={handleBookNow}
                    className="w-full bg-[#E9A227] hover:bg-[#d58e1c] text-white py-3.5 rounded-xl font-bold text-sm hover:shadow-md transition-all active:scale-97 cursor-pointer text-center flex items-center justify-center gap-1.5"
                  >
                    Send Yatra Enquiry
                  </button>

                  <p className="text-[10px] text-slate-500 text-center leading-normal">
                    This booking form acts as a prefilled enquiry checklist. No payment is required client-side. A travel expert will coordinate reservations.
                  </p>
                </div>
              </FadeIn>
            </div>

          </div>

        </main>
      </PageTransition>
      <Footer />
    </>
  );
}
