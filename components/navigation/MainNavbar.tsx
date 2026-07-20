"use client";

import { useState, useEffect } from "react";
import Link from "next/link";
import { usePathname } from "next/navigation";
import { motion, AnimatePresence } from "framer-motion";
import { useApp } from "@/context/AppContext";
import { easeQuint } from "@/lib/animations";
import { Menu, X, Heart, RefreshCw, Phone, PhoneCall } from "lucide-react";

interface Props {
  showTransparent?: boolean;
}

export default function MainNavbar({ showTransparent = false }: Props) {
  const pathname = usePathname();
  const { savedIds, compareIds, setEnquireOpen, setEnquirePackageId } = useApp();
  const [mobileMenuOpen, setMobileMenuOpen] = useState(false);
  const [hoveredIndex, setHoveredIndex] = useState<number | null>(null);

  // Close mobile menu on page transition
  useEffect(() => {
    setMobileMenuOpen(false);
  }, [pathname]);

  const navLinks = [
    { label: "Tour Packages", href: "/packages" },
    { label: "Pilgrimage Tours", href: "/pilgrimage-tours" },
    { label: "Group Tours", href: "/group-tours" },
    { label: "AI Trip Planner", href: "/ai-trip-planner" },
    { label: "About Us", href: "/about" },
  ];

  const handleEnquireClick = () => {
    setEnquirePackageId(null);
    setEnquireOpen(true);
  };

  return (
    <>
      <header
        className={`w-full transition-all duration-300 z-40 bg-transparent ${
          showTransparent ? "py-5" : "py-3"
        }`}
      >
        <div className="max-w-container-max mx-auto px-margin-mobile md:px-12 flex justify-between items-center">
          {/* Logo */}
          <Link href="/">
            <motion.div 
              className={`font-headline-md font-bold flex items-center gap-2 cursor-pointer select-none transition-colors duration-300 ${
                showTransparent ? "text-white" : "text-[#062E4F]"
              }`}
              whileHover={{ scale: 1.02 }}
              transition={{ ease: easeQuint }}
            >
              <span className={`material-symbols-outlined text-[28px] icon-fill transition-colors duration-300 ${
                showTransparent ? "text-[#F7C873]" : "text-[#E9A227]"
              }`}>
                temple_hindu
              </span>
              <span>DharmaYatra</span>
            </motion.div>
          </Link>

          {/* Desktop Navigation Links */}
          <nav className="hidden md:flex items-center gap-1 lg:gap-2 relative h-full">
            {navLinks.map((link, index) => {
              const isActive = pathname === link.href;
              return (
                <Link
                  key={link.href}
                  href={link.href}
                  className={`relative px-3 lg:px-4 py-2 font-body-sm text-[15px] font-semibold transition-colors rounded-md focus-visible:ring-2 focus-visible:ring-[#E9A227] outline-none ${
                    showTransparent 
                      ? "text-white/90 hover:text-white" 
                      : "text-slate-700 hover:text-[#E9A227]"
                  }`}
                  onMouseEnter={() => setHoveredIndex(index)}
                  onMouseLeave={() => setHoveredIndex(null)}
                >
                  {/* Sliding Hover Underline Background */}
                  {hoveredIndex === index && (
                    <motion.div
                      layoutId="nav-hover-bg"
                      className={`absolute inset-0 rounded-md -z-10 ${
                        showTransparent ? "bg-white/10" : "bg-slate-100"
                      }`}
                      initial={{ opacity: 0 }}
                      animate={{ opacity: 1 }}
                      exit={{ opacity: 0 }}
                      transition={{ type: "spring", stiffness: 350, damping: 30 }}
                    />
                  )}

                  {/* Text label */}
                  <span>{link.label}</span>

                  {/* Active Link Highlight Line */}
                  {isActive && (
                    <motion.div
                      layoutId="active-nav-line"
                      className={`absolute bottom-0 left-3 lg:left-4 right-3 lg:right-4 h-0.5 rounded-full ${
                        showTransparent ? "bg-[#F7C873]" : "bg-[#E9A227]"
                      }`}
                      transition={{ type: "spring", stiffness: 380, damping: 30 }}
                    />
                  )}
                </Link>
              );
            })}
          </nav>

          {/* Action Tray */}
          <div className="flex items-center gap-3">
            {/* Compare Badge button */}
            <div className="relative group">
              <Link href="/compare">
                <button 
                  className={`w-11 h-11 flex items-center justify-center rounded-full relative transition-colors cursor-pointer focus-visible:ring-2 focus-visible:ring-[#E9A227] outline-none ${
                    showTransparent 
                      ? "text-white hover:text-[#F7C873] hover:bg-white/10" 
                      : "text-slate-700 hover:text-[#E9A227] hover:bg-slate-100"
                  }`}
                  aria-label="Compare Packages"
                >
                  <RefreshCw size={20} className={compareIds.length > 0 ? "animate-spin-slow" : ""} />
                  <AnimatePresence>
                    {compareIds.length > 0 && (
                      <motion.span
                        initial={{ scale: 0 }}
                        animate={{ scale: 1 }}
                        exit={{ scale: 0 }}
                        className="absolute top-1.5 right-1.5 text-white text-[10px] font-bold w-4 h-4 bg-[#E9A227] rounded-full flex items-center justify-center shadow-sm"
                      >
                        {compareIds.length}
                      </motion.span>
                    )}
                  </AnimatePresence>
                </button>
              </Link>
              <div className="absolute top-full right-0 mt-2 whitespace-nowrap bg-inverse-surface text-inverse-on-surface text-xs py-1 px-2 rounded opacity-0 group-hover:opacity-100 pointer-events-none transition-opacity">Compare Packages</div>
            </div>

            {/* Favorites / Saved badge button */}
            <div className="relative group">
              <Link href="/saved">
                <button 
                  className={`w-11 h-11 flex items-center justify-center rounded-full relative transition-colors cursor-pointer focus-visible:ring-2 focus-visible:ring-[#E9A227] outline-none ${
                    showTransparent 
                      ? "text-white hover:text-[#F7C873] hover:bg-white/10 hover:text-red-400" 
                      : "text-slate-700 hover:text-[#E9A227] hover:bg-slate-100 hover:text-red-600"
                  }`}
                  aria-label="Saved Packages"
                >
                  <Heart size={20} className={savedIds.length > 0 ? "fill-red-500 text-red-500" : ""} />
                  <AnimatePresence>
                    {savedIds.length > 0 && (
                      <motion.span
                        initial={{ scale: 0 }}
                        animate={{ scale: 1 }}
                        exit={{ scale: 0 }}
                        className="absolute top-1.5 right-1.5 bg-red-600 text-white text-[10px] font-bold w-4 h-4 rounded-full flex items-center justify-center shadow-sm"
                      >
                        {savedIds.length}
                      </motion.span>
                    )}
                  </AnimatePresence>
                </button>
              </Link>
              <div className="absolute top-full right-0 mt-2 whitespace-nowrap bg-inverse-surface text-inverse-on-surface text-xs py-1 px-2 rounded opacity-0 group-hover:opacity-100 pointer-events-none transition-opacity">Saved Packages</div>
            </div>

            {/* Enquire Now Action Button */}
            <button
              onClick={handleEnquireClick}
              className={`hidden md:flex items-center gap-2 font-label-bold px-5 py-2.5 rounded-xl transition-all duration-300 shadow-sm cursor-pointer relative overflow-hidden group active:scale-95 focus-visible:ring-2 focus-visible:ring-[#E9A227] outline-none ${
                showTransparent
                  ? "bg-white text-[#062E4F] hover:bg-[#FFF8E8]"
                  : "bg-[#062E4F] hover:bg-[#0B426D] text-white"
              }`}
            >
              {/* Subtle shine animation */}
              <span className="absolute inset-0 translate-x-[-100%] bg-gradient-to-r from-transparent via-white/20 to-transparent group-hover:animate-[shine_1.5s_ease-out]" />
              <PhoneCall size={15} />
              <span>Enquire Now</span>
            </button>

            {/* Mobile Menu Toggle Button */}
            <button
              onClick={() => setMobileMenuOpen(!mobileMenuOpen)}
              className={`w-11 h-11 flex items-center justify-center rounded-full focus-visible:ring-2 focus-visible:ring-[#E9A227] outline-none md:hidden ${
                showTransparent 
                  ? "text-white hover:bg-white/10" 
                  : "text-slate-700 hover:bg-slate-100"
              }`}
              aria-label="Toggle Mobile Menu"
            >
              {mobileMenuOpen ? <X size={24} /> : <Menu size={24} />}
            </button>
          </div>
        </div>

        {/* Mobile Navigation Drawer */}
        <AnimatePresence>
          {mobileMenuOpen && (
            <>
              {/* Overlay Backdrop */}
              <motion.div
                initial={{ opacity: 0 }}
                animate={{ opacity: 0.4 }}
                exit={{ opacity: 0 }}
                onClick={() => setMobileMenuOpen(false)}
                className="fixed inset-0 bg-black z-30 md:hidden"
              />

              {/* Drawer Menu */}
              <motion.div
                initial={{ x: "100%" }}
                animate={{ x: 0 }}
                exit={{ x: "100%" }}
                transition={{ type: "tween", duration: 0.35, ease: easeQuint }}
                className="fixed right-0 top-0 bottom-0 w-[280px] bg-white z-40 md:hidden shadow-level-2 p-6 flex flex-col gap-8 justify-between"
              >
                <div className="flex flex-col gap-8">
                  {/* Close Header */}
                  <div className="flex justify-between items-center">
                    <span className="font-bold text-[#062E4F] flex items-center gap-1">
                      <span className="material-symbols-outlined text-[#E9A227] icon-fill">temple_hindu</span>
                      DharmaYatra
                    </span>
                    <button 
                      onClick={() => setMobileMenuOpen(false)}
                      className="w-11 h-11 flex items-center justify-center hover:bg-slate-100 rounded-full outline-none focus-visible:ring-2 focus-visible:ring-[#E9A227]"
                      aria-label="Close menu"
                    >
                      <X size={20} className="text-slate-700" />
                    </button>
                  </div>

                  {/* Menu Items */}
                  <nav className="flex flex-col gap-4">
                    {navLinks.map((link, i) => {
                      const isActive = pathname === link.href;
                      return (
                        <motion.div
                          key={link.href}
                          initial={{ opacity: 0, x: 20 }}
                          animate={{ opacity: 1, x: 0 }}
                          transition={{ delay: i * 0.05, ease: easeQuint }}
                        >
                          <Link
                            href={link.href}
                            className={`block py-2.5 text-base font-semibold border-b border-slate-100 outline-none focus-visible:text-[#E9A227] ${
                              isActive ? "text-[#062E4F] border-[#E9A227]" : "text-slate-700"
                            }`}
                          >
                            {link.label}
                          </Link>
                        </motion.div>
                      );
                    })}
                  </nav>
                </div>

                {/* Mobile Drawer Footer Actions */}
                <div className="flex flex-col gap-4">
                  <a 
                    href="tel:+9118007454746" 
                    className="flex items-center gap-2 text-[#062E4F] font-bold justify-center py-3 bg-[#EAF2FF] hover:bg-[#D0E4FF] transition-colors rounded-xl min-h-[44px]"
                  >
                    <Phone size={16} />
                    +91 1800-745-4746
                  </a>
                  <button
                    onClick={handleEnquireClick}
                    className="w-full bg-[#062E4F] hover:bg-[#0B426D] text-white py-3 rounded-xl font-bold shadow-sm flex items-center justify-center gap-2 min-h-[44px]"
                  >
                    <PhoneCall size={16} />
                    Enquire Now
                  </button>
                </div>
              </motion.div>
            </>
          )}
        </AnimatePresence>
      </header>
    </>
  );
}
