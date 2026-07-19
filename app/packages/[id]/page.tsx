"use client";

import { use, useState, useEffect } from "react";
import Link from "next/link";
import { useRouter } from "next/navigation";
import Navbar from "@/components/navigation/Navbar";
import Footer from "@/components/layout/Footer";
import PageTransition from "@/components/animations/PageTransition";
import ScrollProgress from "@/components/animations/ScrollProgress";
import { FadeIn, FadeUp, ScaleIn, StaggerContainer, StaggerItem } from "@/components/animations/Reveals";
import { mockPackages } from "@/data/packages";
import { useApp } from "@/context/AppContext";
import { easeQuint } from "@/lib/animations";
import { ArrowLeft, Star, MapPin, Check, X, ShieldAlert, Heart, Calendar, Users, Eye, HelpCircle, PhoneCall, ChevronDown } from "lucide-react";
import { motion, AnimatePresence } from "framer-motion";
import { toast } from "sonner";

export default function PackageDetails({ params }: { params: Promise<{ id: string }> }) {
  const resolvedParams = use(params);
  const router = useRouter();
  const { savedIds, toggleSave, setEnquireOpen, setEnquirePackageId } = useApp();

  const pkg = mockPackages.find((p) => p.id === resolvedParams.id);
  const isSaved = savedIds.includes(pkg?.id || "");

  // Itinerary Accordion State (open state for each day, index 0 is open by default)
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
    }
  }, [pkg]);

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
    "https://lh3.googleusercontent.com/aida-public/AB6AXuCCvQz0KgXnd9p2ZRnu9bToyvDdSSyRq6cxtSoft4vQkhj0-h4-LA-daSLe6_W0N_T4DtPdoSAm4xcRWy66BX_PT_BAPD8k5D9GgE97Wq-3kWiGrxw-C6fYKYRyn1I53XGIbhDAL4gr9er-hBTsyvdncuycW5h0Yt56XRVZ1gZnm5bYEukn4zrLrfJdJwprq8M9ZuUHEtSrtS8a3DgpSTSQwpxyhWwmqoi0f2IFFDp4RVO06FLjUV1tJGJjQNj5T3Rf4X0dSAfi7nU",
    "https://lh3.googleusercontent.com/aida-public/AB6AXuAUhI77FKiyEkUbw6PUZGPNa9d1J88oq5TYLMxhGeKIZEbwMSJW9HllWQssytAOBrXLn9A0wiNwnYZbIYRIqkt4ieOxWAgQgGwnfhNo1jaVMZb7IIDFfhCjwSC2DkYJGwbJPRZHP3zyivz6QaeM6teapasQtPI3lwSJz2Que9KU_68QX5gbc4-TQEX9IHOv8piz92qOqsa54Ts7aUs3jyKwfiFR0MFD2XMjW2f2ZU2hZm8WMz_7jqfIikT2hnHcMPYlgummkeOwcyo"
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
                  <img src={activeImage} alt={pkg.title} className="w-full h-full object-cover transition-all duration-300" />
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
                      <img src={img} alt="temple thumb" className="w-full h-full object-cover" />
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

              {/* Itinerary Vertical Timeline Accordion */}
              <div className="space-y-6">
                <h3 className="font-headline-md text-[18px] text-primary font-bold select-none">
                  Detailed Day-by-Day Itinerary
                </h3>

                {/* Vertical timeline start */}
                <div className="relative border-l-2 border-outline-variant/30 ml-4 space-y-4">
                  {pkg.itinerary.map((day) => {
                    const isOpen = !!openDays[day.day];
                    return (
                      <div key={day.day} className="relative pl-8">
                        {/* Timeline dot */}
                        <div 
                          className={`absolute -left-[9px] top-4 w-4 h-4 rounded-full border-4 border-surface-container-lowest transition-all duration-300 ${
                            isOpen ? "bg-secondary scale-110 shadow-sm" : "bg-outline-variant"
                          }`}
                        />
                        
                        {/* Accordion container card */}
                        <div className="bg-surface-container-lowest rounded-xl border border-outline-variant/10 shadow-sm overflow-hidden">
                          {/* Toggle Header */}
                          <button
                            onClick={() => toggleDay(day.day)}
                            className="w-full p-4 flex justify-between items-center text-left hover:bg-surface-container-low/20 transition-all duration-200 cursor-pointer select-none"
                          >
                            <span className="font-label-bold text-primary font-bold text-[15px] flex items-center gap-2">
                              <span>Day {day.day}:</span>
                              <span>{day.title}</span>
                            </span>
                            <ChevronDown 
                              size={18} 
                              className={`text-on-surface-variant transition-transform duration-300 ${
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
                                <div className="p-4 border-t border-outline-variant/5 space-y-3 bg-surface-container-lowest text-sm">
                                  <p className="text-on-surface-variant leading-relaxed">
                                    {day.description}
                                  </p>
                                  <div className="flex flex-wrap gap-3 pt-1 text-[11px] font-bold text-outline select-none">
                                    {day.stay && <span className="bg-surface-container px-2 py-1 rounded">🏠 Stay: {day.stay}</span>}
                                    {day.meals && <span className="bg-surface-container px-2 py-1 rounded">🍴 meals: {day.meals}</span>}
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

            {/* Right Column: Sticky Booking Card (Desktop sidebar) */}
            <div className="lg:col-span-4 sticky top-28 select-none">
              <FadeIn>
                <div className="bg-surface-container-lowest rounded-2xl shadow-level-2 border border-outline-variant/15 p-6 flex flex-col gap-6 text-left">
                  <div>
                    <span className="text-[11px] font-bold text-outline uppercase tracking-wider">Package Pricing</span>
                    <div className="flex items-baseline gap-1 mt-1">
                      <span className="font-headline-lg text-primary text-3xl font-extrabold font-display">
                        ₹{pricePerPerson.toLocaleString()}
                      </span>
                      <span className="text-sm font-medium text-outline-variant">/ person starting price</span>
                    </div>
                  </div>

                  <div className="border-t border-outline-variant/10 pt-4 space-y-4">
                    {/* Date Selector input */}
                    <div className="relative">
                      <label className="block text-[11px] font-bold text-outline uppercase tracking-wider mb-1">
                        Preferred travel date
                      </label>
                      <input
                        type="date"
                        value={travelDate}
                        onChange={(e) => setTravelDate(e.target.value)}
                        className="w-full bg-surface-container-low text-on-surface p-3 rounded-lg border border-outline-variant focus:border-primary outline-none text-sm"
                      />
                    </div>

                    {/* Passenger selections */}
                    <div className="grid grid-cols-2 gap-3">
                      <div>
                        <label className="block text-[11px] font-bold text-outline uppercase tracking-wider mb-1">
                          Adults
                        </label>
                        <select
                          value={adults}
                          onChange={(e) => setAdults(parseInt(e.target.value))}
                          className="w-full bg-surface-container-low p-2.5 rounded-lg border border-outline-variant outline-none text-xs font-semibold text-primary"
                        >
                          {[...Array(10)].map((_, i) => (
                            <option key={i} value={i}>
                              {i} Adults
                            </option>
                          ))}
                        </select>
                      </div>
                      <div>
                        <label className="block text-[11px] font-bold text-outline uppercase tracking-wider mb-1">
                          Seniors (60+)
                        </label>
                        <select
                          value={seniors}
                          onChange={(e) => setSeniors(parseInt(e.target.value))}
                          className="w-full bg-surface-container-low p-2.5 rounded-lg border border-outline-variant outline-none text-xs font-semibold text-primary"
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

                  {/* Calculator Summary */}
                  <div className="bg-surface-container p-4 rounded-xl space-y-2 border border-primary-fixed-dim/30">
                    <div className="flex justify-between text-xs text-on-surface-variant font-medium">
                      <span>Rate base x {adults + seniors} guests</span>
                      <span>₹{(pricePerPerson * (adults + seniors)).toLocaleString()}</span>
                    </div>
                    <div className="flex justify-between text-xs text-on-surface-variant font-medium">
                      <span>Local taxes & GST</span>
                      <span className="text-tertiary font-bold">Inclusive</span>
                    </div>
                    <div className="border-t border-outline-variant/15 pt-2 flex justify-between text-sm font-bold text-primary">
                      <span>Estimated Total</span>
                      <span>₹{totalPrice.toLocaleString()}</span>
                    </div>
                  </div>

                  {/* Booking CTA Button */}
                  <button
                    onClick={handleBookNow}
                    className="w-full bg-primary text-on-primary py-3.5 rounded-lg font-bold text-sm hover:bg-primary-container transition-all active:scale-97 cursor-pointer text-center shadow-sm flex items-center justify-center gap-1.5"
                  >
                    <PhoneCall size={16} /> Send Yatra Enquiry
                  </button>

                  <p className="text-[10px] text-outline text-center leading-normal">
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
