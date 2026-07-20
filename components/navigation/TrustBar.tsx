"use client";

import { motion } from "framer-motion";
import { Globe, Phone, CheckCircle2, Hotel, Headphones, Type, Eye } from "lucide-react";
import { useApp } from "@/context/AppContext";

interface Props {
  showTransparent?: boolean;
}

export default function TrustBar({ showTransparent = false }: Props) {
  const { fontSizeClass, setFontSizeClass, highContrast, setHighContrast } = useApp();

  return (
    <motion.div 
      initial={{ opacity: 0, y: -10 }}
      animate={{ opacity: 1, y: 0 }}
      transition={{ duration: 0.5, ease: [0.22, 1, 0.36, 1] }}
      className={`font-body-sm text-[13px] py-2 border-b select-none z-50 relative transition-all duration-300 ${
        showTransparent
          ? "bg-black/15 text-white/90 border-white/10 backdrop-blur-sm"
          : "bg-[#EAF2FF] text-[#1F2937] border-blue-100"
      }`}
    >
      <div className="max-w-container-max mx-auto px-margin-mobile md:px-12 flex justify-center md:justify-between items-center">
        <div className="hidden md:flex items-center gap-6 text-xs font-semibold">
          <span className={`flex items-center gap-1.5 transition-colors cursor-default ${showTransparent ? "text-white/90 hover:text-white" : "text-[#1F2937] hover:text-[#062E4F]"}`}>
            <CheckCircle2 size={14} className={showTransparent ? "text-emerald-400" : "text-emerald-600"} />
            No hidden charges
          </span>
          <span className={`flex items-center gap-1.5 transition-colors cursor-default ${showTransparent ? "text-white/90 hover:text-white" : "text-[#1F2937] hover:text-[#062E4F]"}`}>
            <Hotel size={14} className={showTransparent ? "text-emerald-400" : "text-emerald-600"} />
            Verified hotels
          </span>
          <span className={`hidden sm:flex items-center gap-1.5 transition-colors cursor-default ${showTransparent ? "text-white/90 hover:text-white" : "text-[#1F2937] hover:text-[#062E4F]"}`}>
            <Headphones size={14} className={showTransparent ? "text-emerald-400" : "text-emerald-600"} />
            24/7 support
          </span>
        </div>
        
        <div className="flex items-center gap-4 sm:gap-6">
          {/* Accessibility Settings */}
          <div className="flex items-center gap-3 border-r pr-4 border-slate-200">
            <button
              onClick={() => setFontSizeClass(fontSizeClass === "text-normal" ? "text-large" : "text-normal")}
              className={`focus-visible:ring-2 focus-visible:ring-[#E9A227] rounded px-1.5 py-0.5 outline-none transition-colors cursor-pointer flex items-center font-bold text-[11.5px] gap-1 ${
                showTransparent ? "text-white/90 hover:text-white" : "text-[#1F2937] hover:text-[#E9A227]"
              }`}
              title="Scale Font Size (Elder Friendly)"
            >
              <Type size={12} /> {fontSizeClass === "text-large" ? "Normal A" : "Large A"}
            </button>

            <button
              onClick={() => setHighContrast(!highContrast)}
              className={`focus-visible:ring-2 focus-visible:ring-[#E9A227] rounded px-1.5 py-0.5 outline-none transition-colors cursor-pointer flex items-center font-bold text-[11.5px] gap-1 ${
                showTransparent ? "text-white/90 hover:text-white" : "text-[#1F2937] hover:text-[#E9A227]"
              }`}
              title="Toggle High Contrast"
            >
              <Eye size={12} /> {highContrast ? "Normal Contrast" : "High Contrast"}
            </button>
          </div>

          <div className="flex items-center gap-4">
            <button 
              aria-label="Language Selector" 
              className={`focus-visible:ring-2 focus-visible:ring-[#E9A227] rounded px-1.5 py-0.5 outline-none transition-colors cursor-pointer flex items-center font-semibold ${
                showTransparent ? "text-white/90 hover:text-white" : "text-[#1F2937] hover:text-[#E9A227]"
              }`}
            >
              <Globe size={14} className={`mr-1.5 ${showTransparent ? "text-white/60" : "text-slate-500"}`} /> EN
            </button>
          </div>
          <a 
            href="tel:+9118007454746" 
            className={`flex items-center gap-1.5 font-label-bold text-[13px] focus-visible:ring-2 focus-visible:ring-[#E9A227] rounded px-1.5 py-0.5 outline-none transition-colors group ${
              showTransparent ? "text-white hover:text-[#F7C873]" : "text-[#062E4F] hover:text-[#E9A227]"
            }`}
          >
            <Phone size={13} className={`group-hover:scale-110 transition-transform ${showTransparent ? "text-white/60" : "text-slate-500"}`} />
            +91 1800-745-4746
          </a>
        </div>
      </div>
    </motion.div>
  );
}
