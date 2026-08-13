"use client";

import { useState, useEffect } from "react";
import Link from "next/link";
import { motion, AnimatePresence } from "framer-motion";
import { RefreshCw, X, ArrowRight } from "lucide-react";
import { useApp } from "@/context/AppContext";
import { mockPackages, Package } from "@/data/packages";
import { getAssetPath, easeQuint } from "@/lib/animations";

export default function CompareTray() {
  const [isMounted, setIsMounted] = useState(false);
  const { compareIds, toggleCompare } = useApp();

  const [packagesList, setPackagesList] = useState<Package[]>(mockPackages);

  useEffect(() => {
    setIsMounted(true);
    async function loadPackages() {
      try {
        const { fetchPackagesFromSupabase } = await import("@/lib/services/packages");
        const data = await fetchPackagesFromSupabase();
        if (data && data.length > 0) {
          setPackagesList(data);
        }
      } catch (err) {
        console.warn("Supabase compare tray fetch fallback to local:", err);
      }
    }
    loadPackages();
  }, []);

  // Ensure component only renders client-side after hydration to prevent SSR mismatch
  if (!isMounted) return null;

  // Find valid matched packages
  const comparedPackages = compareIds
    .map((id) => packagesList.find((p) => p.id === id))
    .filter((pkg): pkg is Package => Boolean(pkg));

  // If no valid tours are selected, do not render compare box at all
  if (comparedPackages.length === 0) return null;

  const handleClearAll = () => {
    comparedPackages.forEach((pkg) => toggleCompare(pkg.id));
  };

  return (
    <AnimatePresence>
      <motion.div
        initial={{ y: 80, opacity: 0 }}
        animate={{ y: 0, opacity: 1 }}
        exit={{ y: 80, opacity: 0 }}
        transition={{ duration: 0.35, ease: easeQuint }}
        className="fixed bottom-6 left-1/2 -translate-x-1/2 z-40 bg-[#102F4A] text-white px-4 py-3 rounded-2xl shadow-level-3 border border-[#E6B85C]/40 flex items-center gap-4 max-w-[92vw] sm:max-w-xl font-sans select-none"
      >
        {/* Compare Icon Badge */}
        <div className="flex items-center gap-2 border-r border-white/20 pr-3">
          <div className="w-8 h-8 rounded-full bg-[#E6B85C]/20 text-[#E6B85C] flex items-center justify-center">
            <RefreshCw size={16} className="animate-spin-slow" />
          </div>
          <div>
            <span className="font-bold text-xs block leading-tight font-display">
              Compare Packages
            </span>
            <span className="text-[10px] text-slate-300">
              {comparedPackages.length} of 3 selected
            </span>
          </div>
        </div>

        {/* Selected Package Thumbnails */}
        <div className="flex items-center gap-2 overflow-x-auto py-1">
          {comparedPackages.map((pkg) => (
            <div
              key={pkg.id}
              className="relative group flex items-center gap-1.5 bg-white/10 px-2 py-1 rounded-lg border border-white/15 shrink-0"
            >
              <img
                src={getAssetPath(pkg.image)}
                alt={pkg.title}
                className="w-7 h-7 rounded object-cover"
              />
              <span className="text-[11px] font-semibold max-w-[90px] truncate text-slate-200">
                {pkg.title}
              </span>
              <button
                onClick={() => toggleCompare(pkg.id)}
                className="text-slate-400 hover:text-white transition-colors cursor-pointer"
                title="Remove from comparison"
              >
                <X size={12} />
              </button>
            </div>
          ))}
        </div>

        {/* Action Buttons */}
        <div className="flex items-center gap-2 pl-2 border-l border-white/20 shrink-0">
          <Link href="/compare">
            <motion.button
              whileHover={{ scale: 1.04 }}
              whileTap={{ scale: 0.96 }}
              className="bg-[#D89A32] hover:bg-[#E6B85C] text-[#102F4A] text-xs font-label-bold px-3.5 py-2 rounded-xl flex items-center gap-1.5 transition-all shadow-sm cursor-pointer"
            >
              <span>Compare</span>
              <ArrowRight size={13} />
            </motion.button>
          </Link>
          <button
            onClick={handleClearAll}
            className="text-slate-400 hover:text-white transition-colors p-1 ml-1 cursor-pointer"
            title="Clear comparison list"
          >
            <X size={14} />
          </button>
        </div>
      </motion.div>
    </AnimatePresence>
  );
}
