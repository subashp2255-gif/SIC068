"use client";

import { useRef } from "react";
import { motion, useScroll, useTransform, useSpring } from "framer-motion";
import { Sparkles, ArrowRight, Compass, ShieldCheck } from "lucide-react";
import Link from "next/link";
import PackageSearch from "./PackageSearch";
import HeroTrustRow from "./HeroTrustRow";
import { getAssetPath } from "@/lib/animations";
import { useApp } from "@/context/AppContext";

export default function HeroSection() {
  const containerRef = useRef<HTMLElement>(null);
  const { scrollY } = useScroll();
  const { setEnquireOpen } = useApp();

  // Parallax background (slow and smooth using spring)
  const yTransform = useTransform(scrollY, [0, 1000], [0, 100]);
  const y = useSpring(yTransform, { stiffness: 400, damping: 90, mass: 0.1 });

  return (
    <section 
      ref={containerRef}
      className="relative w-full min-h-screen md:min-h-[740px] lg:min-h-[700px] flex flex-col items-center justify-center pt-32 md:pt-36 pb-20 px-6 md:px-10 select-none overflow-hidden"
    >
      {/* Parallax Background Image & Dark Navy Overlays */}
      <div className="absolute inset-0 z-0 overflow-hidden pointer-events-none">
        <motion.div
          initial={{ scale: 1.05 }}
          animate={{ scale: 1 }}
          transition={{ duration: 1.2, ease: "easeOut" }}
          style={{ 
            y, 
            willChange: "transform",
            backgroundImage: `url("${getAssetPath('/images/hero_dawn_temple.png')}")`,
          }}
          className="absolute inset-0 bg-cover bg-center w-full h-[120%]"
        />
        
        {/* Dark Navy tint overlay for high contrast legibility */}
        <div className="absolute inset-0 bg-[#102F4A]/50 mix-blend-multiply" />
        
        {/* Navy top gradient */}
        <div className="absolute inset-x-0 top-0 h-48 bg-gradient-to-b from-[#102F4A]/85 via-[#102F4A]/40 to-transparent" />
        
        {/* Soft edge vignette */}
        <div className="absolute inset-0 shadow-[inset_0_0_120px_rgba(0,0,0,0.5)]" />

        {/* Soft bottom cream transition */}
        <div className="absolute bottom-0 left-0 right-0 h-20 bg-gradient-to-t from-[#F5F7F8] to-transparent" />
      </div>

      {/* Hero Content Box */}
      <div className="relative z-10 w-full max-w-[1180px] mx-auto flex flex-col items-center text-center gap-6 md:gap-7">
        
        {/* Trust Eyebrow Badge */}
        <motion.div
          initial={{ opacity: 0, y: 12 }}
          animate={{ opacity: 1, y: 0 }}
          transition={{ duration: 0.5, delay: 0.1, ease: [0.22, 1, 0.36, 1] }}
          className="flex items-center gap-2 px-4 py-1.5 bg-[#FFF9F0] border border-[#D89A32]/40 text-[#102F4A] rounded-full shadow-sm"
        >
          <Sparkles size={14} className="text-[#D89A32]" />
          <span className="font-label-bold text-[13px] tracking-wide">Trusted Pilgrimage & Family Tour Platform</span>
        </motion.div>

        {/* Main Headline */}
        <div className="flex flex-col items-center max-w-[960px]">
          <h1 className="text-[34px] sm:text-[44px] md:text-[54px] lg:text-[64px] font-display font-extrabold leading-[1.1] drop-shadow-md text-center">
            {/* Signature animated "One Journey" */}
            <span className="relative inline-block text-[#E6B85C] me-2 sm:me-3">
              <motion.span
                initial={{ clipPath: "polygon(0 0, 0 0, 0 100%, 0 100%)", opacity: 0 }}
                animate={{ clipPath: "polygon(0 0, 100% 0, 100% 100%, 0 100%)", opacity: 1 }}
                transition={{ duration: 0.85, delay: 0.2, ease: [0.22, 1, 0.36, 1] }}
                className="inline-block"
              >
                One Journey
              </motion.span>
            </span>

            {/* "That Brings Us Together." */}
            <motion.span
              initial={{ opacity: 0, y: 14 }}
              animate={{ opacity: 1, y: 0 }}
              transition={{ duration: 0.6, delay: 0.65, ease: [0.22, 1, 0.36, 1] }}
              className="text-white inline-block"
            >
              That Brings Us Together.
            </motion.span>
          </h1>
        </div>

        {/* Supporting Tagline */}
        <div className="flex flex-wrap justify-center items-center gap-x-2.5 text-[#FFF9F0] font-body-lg text-[18px] md:text-[21px] max-w-[720px] leading-relaxed drop-shadow-md font-medium text-center">
          <motion.span
            initial={{ opacity: 0, y: 8 }}
            animate={{ opacity: 1, y: 0 }}
            transition={{ duration: 0.5, delay: 1.0, ease: [0.22, 1, 0.36, 1] }}
          >
            Many faiths.
          </motion.span>
          <motion.span
            initial={{ opacity: 0, y: 8 }}
            animate={{ opacity: 1, y: 0 }}
            transition={{ duration: 0.5, delay: 1.12, ease: [0.22, 1, 0.36, 1] }}
          >
            Many paths.
          </motion.span>
          <motion.span
            initial={{ opacity: 0, y: 8 }}
            animate={{ opacity: 1, y: 0 }}
            transition={{ duration: 0.5, delay: 1.24, ease: [0.22, 1, 0.36, 1] }}
            className="text-[#E6B85C] font-semibold"
          >
            One journey.
          </motion.span>
        </div>

        {/* Supporting Paragraph */}
        <motion.p
          initial={{ opacity: 0, y: 10 }}
          animate={{ opacity: 1, y: 0 }}
          transition={{ duration: 0.6, delay: 0.8, ease: [0.22, 1, 0.36, 1] }}
          className="text-slate-200 text-sm md:text-base max-w-2xl leading-relaxed"
        >
          Explore transparent pilgrimage, family, and group tour packages with verified stays, senior citizen guidance, and AI-powered trip planning.
        </motion.p>

        {/* CTAs Row */}
        <motion.div
          initial={{ opacity: 0, y: 15 }}
          animate={{ opacity: 1, y: 0 }}
          transition={{ duration: 0.6, delay: 0.9, ease: [0.22, 1, 0.36, 1] }}
          className="flex flex-wrap justify-center items-center gap-3 md:gap-4 mt-1"
        >
          <Link href="/packages">
            <button className="bg-[#D89A32] hover:bg-[#E6B85C] text-[#102F4A] font-label-bold px-6 py-3 rounded-xl shadow-level-1 hover:shadow-level-2 transition-all flex items-center gap-2 cursor-pointer">
              <span>Explore Packages</span>
              <Compass size={17} />
            </button>
          </Link>
          <Link href="/ai-trip-planner">
            <button className="bg-white/15 hover:bg-white/25 text-white border border-white/30 font-label-bold px-6 py-3 rounded-xl backdrop-blur-md transition-all flex items-center gap-2 cursor-pointer">
              <Sparkles size={16} className="text-[#E6B85C]" />
              <span>Plan with AI</span>
            </button>
          </Link>
          <button
            onClick={() => setEnquireOpen(true)}
            className="text-[#E6B85C] hover:text-white text-sm font-semibold underline underline-offset-4 decoration-[#E6B85C]/40 transition-colors cursor-pointer px-2 py-1"
          >
            Talk to a Travel Expert
          </button>
        </motion.div>

        {/* Search Component Container */}
        <motion.div
          initial={{ opacity: 0, y: 25, scale: 0.98 }}
          animate={{ opacity: 1, y: 0, scale: 1 }}
          transition={{ duration: 0.6, delay: 0.75, ease: [0.22, 1, 0.36, 1] }}
          className="w-full relative z-30 flex flex-col items-center mt-3"
        >
          <PackageSearch />
        </motion.div>

        {/* Hero Trust Indicators Row */}
        <HeroTrustRow />

      </div>
    </section>
  );
}
