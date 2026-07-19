"use client";

import { useState } from "react";
import { useRouter } from "next/navigation";
import Navbar from "@/components/navigation/Navbar";
import Footer from "@/components/layout/Footer";
import PageTransition from "@/components/animations/PageTransition";
import ScrollProgress from "@/components/animations/ScrollProgress";
import { FadeIn, FadeUp, ScaleIn, StaggerContainer, StaggerItem, AnimatedCounter } from "@/components/animations/Reveals";
import PackageCard from "@/components/cards/PackageCard";
import { mockPackages } from "@/data/packages";
import { useApp } from "@/context/AppContext";
import { ArrowRight, Search, Calendar, Clock, Users, Heart, AlertCircle, MessageSquare } from "lucide-react";
import Link from "next/link";
import { motion } from "framer-motion";
import { getAssetPath } from "@/lib/animations";

export default function Home() {
  const router = useRouter();
  const { setEnquireOpen, setEnquirePackageId } = useApp();

  // Search Fields
  const [destination, setDestination] = useState("");
  const [travelMonth, setTravelMonth] = useState("");
  const [duration, setDuration] = useState("");
  const [travellers, setTravellers] = useState("2");

  const handleSearchSubmit = (e: React.FormEvent) => {
    e.preventDefault();
    // Build query params
    const params = new URLSearchParams();
    if (destination) params.append("dest", destination);
    if (travelMonth) params.append("month", travelMonth);
    if (duration) params.append("duration", duration);
    if (travellers) params.append("travellers", travellers);
    
    router.push(`/packages?${params.toString()}`);
  };

  // Get first 3 featured packages
  const featuredPackages = mockPackages.slice(0, 3);

  const handleEnquireClick = () => {
    setEnquirePackageId(null);
    setEnquireOpen(true);
  };

  return (
    <>
      <ScrollProgress />
      <Navbar />
      <PageTransition>
        <main className="w-full flex-grow">
          {/* 1. Hero Section with Search Panel */}
          <section className="relative w-full min-h-[640px] flex items-center justify-center pt-8 pb-16 px-margin-mobile md:px-12 select-none">
            {/* Background Image & Overlay */}
            <div className="absolute inset-0 z-0">
              <div 
                className="bg-cover bg-center w-full h-full transform scale-102"
                style={{
                  backgroundImage: `url("${getAssetPath("/images/hero_dawn_temple.png")}")`
                }}
              />
              <div className="absolute inset-0 bg-gradient-to-b from-background/50 via-background/20 to-background" />
            </div>

            <div className="relative z-10 w-full max-w-container-max mx-auto flex flex-col items-center text-center gap-12 pt-6">
              <div className="max-w-3xl space-y-5">
                <motion.span 
                  initial={{ opacity: 0, scale: 0.9 }}
                  animate={{ opacity: 1, scale: 1 }}
                  transition={{ duration: 0.5, ease: [0.22, 1, 0.36, 1] }}
                  className="inline-block px-4 py-1.5 bg-secondary-fixed text-on-secondary-fixed rounded-full font-label-bold text-sm tracking-wide shadow-sm"
                >
                  Curated Spiritual Experiences
                </motion.span>
                
                <motion.h1 
                  initial={{ opacity: 0, y: 30 }}
                  animate={{ opacity: 1, y: 0 }}
                  transition={{ duration: 0.6, delay: 0.1, ease: [0.22, 1, 0.36, 1] }}
                  className="font-display-lg-mobile text-display-lg-mobile md:font-display-lg md:text-display-lg text-primary text-balance"
                >
                  Plan Your Sacred Journey with Confidence
                </motion.h1>
                
                <motion.p 
                  initial={{ opacity: 0, y: 20 }}
                  animate={{ opacity: 1, y: 0 }}
                  transition={{ duration: 0.6, delay: 0.2, ease: [0.22, 1, 0.36, 1] }}
                  className="font-body-lg text-body-lg text-primary-container text-balance mx-auto max-w-2xl font-medium"
                >
                  Accessible stays, Satvik meals, and medical support arranged for elder comfort.
                </motion.p>
              </div>

              {/* Search Panel Box */}
              <FadeUp delay={0.3}>
                <form 
                  onSubmit={handleSearchSubmit}
                  className="w-full max-w-5xl bg-surface-container-lowest/95 backdrop-blur-md p-4 md:p-2.5 rounded-2xl shadow-level-2 border border-outline-variant/20 flex flex-col md:flex-row items-stretch md:items-center gap-2"
                >
                  <div className="grid grid-cols-1 md:grid-cols-4 grow divide-y md:divide-y-0 md:divide-x divide-outline-variant/20">
                    
                    {/* Destination input */}
                    <div className="flex flex-col gap-1 p-4 hover:bg-surface-container-low transition-colors rounded-t-xl md:rounded-l-xl md:rounded-tr-none text-left">
                      <label className="font-label-bold text-[12px] uppercase tracking-wider text-outline">Destination</label>
                      <div className="relative flex items-center gap-2 mt-1">
                        <Search size={18} className="text-primary flex-shrink-0" />
                        <input
                          type="text"
                          placeholder="Where to?"
                          value={destination}
                          onChange={(e) => setDestination(e.target.value)}
                          className="w-full bg-transparent border-none p-0 focus:ring-0 font-body-md text-on-surface placeholder:text-outline-variant text-[15px] outline-none"
                        />
                      </div>
                    </div>

                    {/* Month select */}
                    <div className="flex flex-col gap-1 p-4 hover:bg-surface-container-low transition-colors text-left">
                      <label className="font-label-bold text-[12px] uppercase tracking-wider text-outline">Travel Month</label>
                      <div className="relative flex items-center gap-2 mt-1">
                        <Calendar size={18} className="text-primary flex-shrink-0" />
                        <select
                          value={travelMonth}
                          onChange={(e) => setTravelMonth(e.target.value)}
                          className="w-full bg-transparent border-none p-0 focus:ring-0 font-body-md text-on-surface appearance-none cursor-pointer text-[15px] outline-none"
                        >
                          <option value="">Select Month</option>
                          <option value="october">October 2026</option>
                          <option value="november">November 2026</option>
                          <option value="december">December 2026</option>
                        </select>
                      </div>
                    </div>

                    {/* Duration select */}
                    <div className="flex flex-col gap-1 p-4 hover:bg-surface-container-low transition-colors text-left">
                      <label className="font-label-bold text-[12px] uppercase tracking-wider text-outline">Duration</label>
                      <div className="relative flex items-center gap-2 mt-1">
                        <Clock size={18} className="text-primary flex-shrink-0" />
                        <select
                          value={duration}
                          onChange={(e) => setDuration(e.target.value)}
                          className="w-full bg-transparent border-none p-0 focus:ring-0 font-body-md text-on-surface appearance-none cursor-pointer text-[15px] outline-none"
                        >
                          <option value="">Any Duration</option>
                          <option value="1-3">1-3 Days</option>
                          <option value="4-7">4-7 Days</option>
                          <option value="8+">8+ Days</option>
                        </select>
                      </div>
                    </div>

                    {/* Travellers count */}
                    <div className="flex flex-col gap-1 p-4 hover:bg-surface-container-low transition-colors text-left">
                      <label className="font-label-bold text-[12px] uppercase tracking-wider text-outline">Travellers</label>
                      <div className="relative flex items-center gap-2 mt-1">
                        <Users size={18} className="text-primary flex-shrink-0" />
                        <select
                          value={travellers}
                          onChange={(e) => setTravellers(e.target.value)}
                          className="w-full bg-transparent border-none p-0 focus:ring-0 font-body-md text-on-surface appearance-none cursor-pointer text-[15px] outline-none"
                        >
                          <option value="1">1 Adult</option>
                          <option value="2">2 Adults, 0 Children</option>
                          <option value="4">4 Adults</option>
                          <option value="6">6+ Group</option>
                        </select>
                      </div>
                    </div>

                  </div>

                  {/* Search CTA button */}
                  <button
                    type="submit"
                    className="bg-primary text-on-primary h-14 md:h-auto md:aspect-square lg:aspect-auto lg:px-8 rounded-xl font-label-bold text-label-bold hover:bg-surface-tint active:scale-95 transition-all flex items-center justify-center gap-2 shadow-sm m-2 cursor-pointer"
                  >
                    <Search size={18} />
                    <span className="lg:inline">Find Packages</span>
                  </button>
                </form>
              </FadeUp>
            </div>
          </section>

          {/* 2. Trust Metrics Section */}
          <section className="w-full max-w-container-max mx-auto px-margin-mobile md:px-12 py-12">
            <FadeIn>
              <div className="grid grid-cols-2 md:grid-cols-4 gap-8 md:gap-gutter divide-x divide-outline-variant/30 bg-surface-container rounded-xl p-8 shadow-level-1 border border-outline-variant/20">
                <div className="flex flex-col items-center text-center px-4">
                  <span className="font-headline-lg text-headline-lg text-primary">
                    <AnimatedCounter value={15} />+
                  </span>
                  <span className="font-body-sm text-body-sm text-on-surface-variant font-medium mt-1">Years of Trust</span>
                </div>
                <div className="flex flex-col items-center text-center px-4">
                  <span className="font-headline-lg text-headline-lg text-primary">
                    <AnimatedCounter value={10} />k+
                  </span>
                  <span className="font-body-sm text-body-sm text-on-surface-variant font-medium mt-1">Happy Yatris</span>
                </div>
                <div className="flex flex-col items-center text-center px-4">
                  <span className="font-headline-lg text-headline-lg text-primary flex items-center gap-1">
                    4.8 <span className="material-symbols-outlined icon-fill text-secondary-fixed-dim text-[24px]">star</span>
                  </span>
                  <span className="font-body-sm text-body-sm text-on-surface-variant font-medium mt-1">Average Rating</span>
                </div>
                <div className="flex flex-col items-center text-center px-4">
                  <span className="font-headline-lg text-headline-lg text-primary">
                    <AnimatedCounter value={50} />+
                  </span>
                  <span className="font-body-sm text-body-sm text-on-surface-variant font-medium mt-1">Sacred Destinations</span>
                </div>
              </div>
            </FadeIn>
          </section>

          {/* 3. Featured Packages Section */}
          <section className="w-full max-w-container-max mx-auto px-margin-mobile md:px-12 py-16 flex flex-col gap-12">
            <div className="flex flex-col md:flex-row justify-between items-end gap-4 border-b border-outline-variant/30 pb-6">
              <div className="space-y-2 text-left">
                <h2 className="font-headline-lg text-headline-lg text-primary font-bold">Featured Pilgrimages</h2>
                <p className="font-body-md text-body-md text-on-surface-variant leading-relaxed">
                  Carefully crafted itineraries for a deeply fulfilling spiritual journey.
                </p>
              </div>
              <Link href="/packages">
                <button className="font-label-bold text-label-bold text-secondary flex items-center gap-1.5 hover:text-primary transition-colors cursor-pointer group">
                  View All Packages 
                  <ArrowRight size={18} className="group-hover:translate-x-1 transition-transform" />
                </button>
              </Link>
            </div>

            <StaggerContainer>
              <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-gutter">
                {featuredPackages.map((pkg, index) => (
                  <StaggerItem key={pkg.id}>
                    <PackageCard pkg={pkg} index={index} />
                  </StaggerItem>
                ))}
              </div>
            </StaggerContainer>
          </section>

          {/* 4. Specialized Elder Care Section */}
          <section className="w-full bg-surface-container py-20 my-8 border-y border-outline-variant/10">
            <div className="max-w-container-max mx-auto px-margin-mobile md:px-12 flex flex-col md:flex-row items-center gap-12">
              {/* Image box */}
              <div className="w-full md:w-1/2 rounded-2xl overflow-hidden shadow-level-2 border-4 border-surface-container-lowest">
                <ScaleIn>
                  <img 
                    src={getAssetPath("/images/elderly_pilgrims.png")} 
                    alt="Elderly couple assisted by travel guide"
                    className="w-full h-auto object-cover aspect-[4/3] hover:scale-103 transition-transform duration-500"
                  />
                </ScaleIn>
              </div>

              {/* Text details */}
              <div className="w-full md:w-1/2 space-y-6 text-left">
                <FadeUp>
                  <span className="inline-flex items-center gap-2 bg-secondary-fixed/50 text-on-secondary-fixed px-4 py-2 rounded-full font-label-bold text-sm">
                    <Heart size={16} className="fill-secondary text-secondary" />
                    Specialized Elder Care
                  </span>
                </FadeUp>

                <FadeUp delay={0.1}>
                  <h2 className="font-headline-lg text-headline-lg text-primary font-bold">
                    Journeys Designed for Comfort and Pace
                  </h2>
                </FadeUp>

                <FadeUp delay={0.2}>
                  <p className="font-body-lg text-body-lg text-on-surface-variant leading-relaxed">
                    We understand that physical comfort is essential for a peaceful spiritual experience. Our specialized itineraries for senior citizens prioritize ease of access and constant support.
                  </p>
                </FadeUp>

                {/* Key features lists */}
                <StaggerContainer delay={0.3}>
                  <div className="space-y-5 pt-4">
                    
                    <StaggerItem>
                      <div className="flex gap-4">
                        <div className="w-12 h-12 rounded-full bg-surface-container-lowest flex items-center justify-center shrink-0 text-secondary shadow-sm">
                          <span className="material-symbols-outlined icon-fill">accessible</span>
                        </div>
                        <div>
                          <h4 className="font-label-bold text-label-bold text-primary font-bold">Reduced Walking & Easy Access</h4>
                          <p className="text-body-sm text-sm text-on-surface-variant mt-1 max-w-md">
                            Hotels located close to temples and arranged transport right to the closest permitted drop-off points.
                          </p>
                        </div>
                      </div>
                    </StaggerItem>

                    <StaggerItem>
                      <div className="flex gap-4">
                        <div className="w-12 h-12 rounded-full bg-surface-container-lowest flex items-center justify-center shrink-0 text-secondary shadow-sm">
                          <span className="material-symbols-outlined icon-fill">medical_services</span>
                        </div>
                        <div>
                          <h4 className="font-label-bold text-label-bold text-primary font-bold">On-Call Medical Support</h4>
                          <p className="text-body-sm text-sm text-on-surface-variant mt-1 max-w-md">
                            24/7 access to local doctors and basic first-aid kits available in all our transport vehicles.
                          </p>
                        </div>
                      </div>
                    </StaggerItem>

                    <StaggerItem>
                      <div className="flex gap-4">
                        <div className="w-12 h-12 rounded-full bg-surface-container-lowest flex items-center justify-center shrink-0 text-secondary shadow-sm">
                          <span className="material-symbols-outlined icon-fill">diversity_3</span>
                        </div>
                        <div>
                          <h4 className="font-label-bold text-label-bold text-primary font-bold">Dedicated Coordinators</h4>
                          <p className="text-body-sm text-sm text-on-surface-variant mt-1 max-w-md">
                            Compassionate guides trained to assist elders, handle luggage, and manage queue arrangements.
                          </p>
                        </div>
                      </div>
                    </StaggerItem>

                  </div>
                </StaggerContainer>

              </div>
            </div>
          </section>

          {/* 5. Final CTA Banner */}
          <section className="w-full max-w-container-max mx-auto px-margin-mobile md:px-12 py-16 my-8">
            <ScaleIn>
              <div className="bg-primary rounded-2xl p-8 md:p-16 text-center flex flex-col items-center gap-6 shadow-level-2 relative overflow-hidden">
                {/* Subtle pattern overlay */}
                <div className="absolute inset-0 opacity-[0.03] pointer-events-none" style={{ backgroundImage: "radial-gradient(circle at 2px 2px, white 1px, transparent 0)", backgroundSize: "24px 24px" }} />
                
                <h2 className="font-display-lg-mobile md:font-display-lg text-on-primary relative z-10 max-w-2xl font-bold font-display leading-tight">
                  Ready to Plan Your Sacred Journey?
                </h2>
                
                <p className="font-body-lg text-body-lg text-primary-fixed relative z-10 max-w-xl leading-relaxed">
                  Our travel experts are ready to curate a customized itinerary for your family, ensuring a seamless and divine experience.
                </p>

                <div className="flex flex-col sm:flex-row gap-4 mt-6 relative z-10 w-full sm:w-auto justify-center select-none">
                  <button 
                    onClick={handleEnquireClick}
                    className="bg-surface-container-lowest text-primary h-14 px-8 rounded-lg font-label-bold text-label-bold hover:bg-surface-variant transition-colors flex items-center justify-center gap-2 whitespace-nowrap shadow-sm cursor-pointer active:scale-97 font-bold"
                  >
                    Enquire Now
                  </button>
                  <a 
                    href="https://wa.me/9118007454746"
                    target="_blank"
                    rel="noopener noreferrer"
                    className="bg-transparent border-2 border-surface-container-lowest text-on-primary h-14 px-8 rounded-lg font-label-bold text-label-bold hover:bg-surface-container-lowest/10 transition-colors flex items-center justify-center gap-2 whitespace-nowrap cursor-pointer active:scale-97 font-bold"
                  >
                    <MessageSquare size={18} />
                    Chat on WhatsApp
                  </a>
                </div>
              </div>
            </ScaleIn>
          </section>
        </main>
      </PageTransition>
      <Footer />
    </>
  );
}
