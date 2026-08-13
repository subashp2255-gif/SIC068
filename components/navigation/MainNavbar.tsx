"use client";

import { useState, useEffect } from "react";
import Link from "next/link";
import { usePathname } from "next/navigation";
import { motion, AnimatePresence } from "framer-motion";
import { useApp } from "@/context/AppContext";
import { useAuth } from "@/context/AuthContext";
import { easeQuint } from "@/lib/animations";
import OneJourneyTempleIcon from "@/components/ui/OneJourneyTempleIcon";
import { Menu, X, Heart, RefreshCw, PhoneCall, Sparkles, Eye, Type, Contrast, User as UserIcon, LogIn, LogOut } from "lucide-react";

interface Props {
  showTransparent?: boolean;
  isCompact?: boolean;
}

export default function MainNavbar({ showTransparent = false, isCompact = false }: Props) {
  const pathname = usePathname();
  const { 
    savedIds, 
    compareIds, 
    setEnquireOpen, 
    setEnquirePackageId,
    fontSizeClass,
    setFontSizeClass,
    highContrast,
    setHighContrast
  } = useApp();

  const { user, signOut } = useAuth();

  const [mobileMenuOpen, setMobileMenuOpen] = useState(false);
  const [hoveredIndex, setHoveredIndex] = useState<number | null>(null);
  const [isRefreshing, setIsRefreshing] = useState(false);
  const [justHearted, setJustHearted] = useState(false);

  // Close mobile menu on route transition
  useEffect(() => {
    setMobileMenuOpen(false);
  }, [pathname]);

  // Lock body scroll when mobile menu drawer is open
  useEffect(() => {
    if (mobileMenuOpen) {
      document.body.style.overflow = "hidden";
    } else {
      document.body.style.overflow = "";
    }
    return () => {
      document.body.style.overflow = "";
    };
  }, [mobileMenuOpen]);

  const navLinks = [
    { label: "Home", href: "/" },
    { label: "Tour Packages", href: "/packages" },
    { label: "Pilgrimage Tours", href: "/pilgrimage-tours" },
    { label: "Group Tours", href: "/group-tours" },
    { label: "AI Trip Planner", href: "/ai-trip-planner" },
    { label: "About", href: "/about" },
  ];

  const handleEnquireClick = () => {
    setEnquirePackageId(null);
    setEnquireOpen(true);
  };

  const handleRefreshClick = () => {
    setIsRefreshing(true);
    setTimeout(() => setIsRefreshing(false), 600);
  };

  const handleHeartClick = () => {
    setJustHearted(true);
    setTimeout(() => setJustHearted(false), 400);
  };

  return (
    <header
      className={`w-full transition-all duration-300 ease-[cubic-bezier(0.4,0,0.2,1)] z-40 ${
        showTransparent
          ? isCompact
            ? "bg-[#102F4A]/30 backdrop-blur-[14px] border-b border-white/10 shadow-none py-2.5"
            : "bg-[#102F4A]/20 backdrop-blur-[12px] border-b border-white/10 shadow-none py-3.5"
          : isCompact
          ? "bg-white/95 border-b border-[#DDE4E8] shadow-level-1 backdrop-blur-md py-2 text-[#17212B]"
          : "bg-white border-b border-[#DDE4E8] shadow-level-1 backdrop-blur-none py-3 text-[#17212B]"
      }`}
    >
      <div className="max-w-container-max mx-auto px-margin-mobile md:px-12 flex justify-between items-center">
        {/* Brand Logo */}
        <Link href="/">
          <motion.div
            className={`font-headline-md font-bold flex items-center gap-2 cursor-pointer select-none group ${
              showTransparent ? "text-white" : "text-[#102F4A]"
            }`}
            whileHover={{ y: -1, scale: 1.02 }}
            whileTap={{ scale: 0.98 }}
          >
            <OneJourneyTempleIcon
              size={28}
              className={`transition-all duration-300 group-hover:drop-shadow-[0_0_8px_rgba(216,154,50,0.7)] ${
                showTransparent ? "text-[#E6B85C]" : "text-[#D89A32]"
              }`}
            />
            <span className="font-display tracking-tight text-xl font-extrabold">OneJourney</span>
          </motion.div>
        </Link>

        {/* Desktop Navigation Links */}
        <nav className="hidden md:flex items-center gap-1 lg:gap-2 relative h-full">
          {navLinks.map((link, index) => {
            const isActive = pathname === link.href;
            const isHovered = hoveredIndex === index;
            return (
              <div
                key={link.href}
                className="relative"
                onMouseEnter={() => setHoveredIndex(index)}
                onMouseLeave={() => setHoveredIndex(null)}
              >
                <Link
                  href={link.href}
                  className={`relative px-3 lg:px-4 py-2 font-body-sm text-[15px] transition-all duration-200 rounded-md focus-visible:ring-2 focus-visible:ring-[#D89A32] outline-none block ${
                    isActive ? "font-bold text-[#D89A32]" : "font-semibold"
                  } ${
                    showTransparent
                      ? isHovered || isActive
                        ? "text-white"
                        : "text-white/90"
                      : isHovered || isActive
                      ? "text-[#D89A32]"
                      : "text-[#17212B]"
                  }`}
                >
                  {/* Hover Pill Background */}
                  {isHovered && (
                    <motion.div
                      layoutId="nav-hover-pill"
                      className={`absolute inset-0 rounded-md -z-10 ${
                        showTransparent ? "bg-white/10" : "bg-[#FFF9F0]"
                      }`}
                      initial={{ opacity: 0 }}
                      animate={{ opacity: 1 }}
                      exit={{ opacity: 0 }}
                      transition={{ duration: 0.18, ease: "easeOut" }}
                    />
                  )}

                  <span className={`inline-block transition-transform duration-200 ${isHovered ? "-translate-y-[1px]" : ""}`}>
                    {link.label}
                  </span>

                  {/* Active Indicator Underline */}
                  {(isHovered || isActive) && (
                    <motion.div
                      layoutId="nav-center-underline"
                      className={`absolute bottom-0 left-3 lg:left-4 right-3 lg:right-4 h-0.5 rounded-full ${
                        showTransparent ? "bg-[#E6B85C]" : "bg-[#D89A32]"
                      }`}
                      initial={{ scaleX: 0 }}
                      animate={{ scaleX: 1 }}
                      exit={{ scaleX: 0 }}
                      transition={{ duration: 0.2, ease: [0.22, 1, 0.36, 1] }}
                      style={{ originX: 0.5 }}
                    />
                  )}
                </Link>
              </div>
            );
          })}
        </nav>

        {/* Action Tray */}
        <div className="flex items-center gap-2 lg:gap-3">
          {/* Accessibility Toggles */}
          <div className="hidden lg:flex items-center gap-1 border-r border-[#DDE4E8] pr-2 mr-1">
            <button
              onClick={() => setFontSizeClass(fontSizeClass === "text-normal" ? "text-large" : "text-normal")}
              className={`p-2 rounded-full text-xs font-bold transition-all cursor-pointer ${
                fontSizeClass === "text-large" ? "bg-[#D89A32] text-white" : "text-[#5E6B76] hover:bg-slate-100"
              }`}
              title="Toggle Large Text"
              aria-label="Toggle Large Text Size"
            >
              <Type size={16} />
            </button>
            <button
              onClick={() => setHighContrast(!highContrast)}
              className={`p-2 rounded-full text-xs font-bold transition-all cursor-pointer ${
                highContrast ? "bg-[#102F4A] text-white" : "text-[#5E6B76] hover:bg-slate-100"
              }`}
              title="Toggle High Contrast"
              aria-label="Toggle High Contrast Mode"
            >
              <Contrast size={16} />
            </button>
          </div>

          {/* Compare Badge button */}
          <div className="relative group">
            <Link href="/compare">
              <motion.button
                onClick={handleRefreshClick}
                whileHover={{ scale: 1.08 }}
                whileTap={{ scale: 0.92 }}
                className={`w-10 h-10 flex items-center justify-center rounded-full relative transition-all duration-200 cursor-pointer focus-visible:ring-2 focus-visible:ring-[#D89A32] outline-none ${
                  showTransparent
                    ? "text-white hover:text-[#E6B85C] hover:bg-white/10"
                    : "text-[#17212B] hover:text-[#D89A32] hover:bg-slate-100"
                }`}
                aria-label="Compare Packages"
              >
                <motion.div
                  animate={{ rotate: isRefreshing ? 360 : 0 }}
                  transition={{ duration: 0.5, ease: "easeInOut" }}
                >
                  <RefreshCw size={19} className={compareIds.length > 0 ? "animate-spin-slow" : ""} />
                </motion.div>

                <AnimatePresence>
                  {compareIds.length > 0 && (
                    <motion.span
                      initial={{ scale: 0 }}
                      animate={{ scale: 1 }}
                      exit={{ scale: 0 }}
                      className="absolute top-1 right-1 text-white text-[10px] font-bold w-4 h-4 bg-[#D89A32] rounded-full flex items-center justify-center shadow-sm"
                    >
                      {compareIds.length}
                    </motion.span>
                  )}
                </AnimatePresence>
              </motion.button>
            </Link>
          </div>

          {/* Favorites / Saved badge button */}
          <div className="relative group">
            <Link href="/saved">
              <motion.button
                onClick={handleHeartClick}
                whileHover={{ scale: 1.1 }}
                whileTap={{ scale: 0.9 }}
                className={`w-10 h-10 flex items-center justify-center rounded-full relative transition-all duration-200 cursor-pointer focus-visible:ring-2 focus-visible:ring-[#D89A32] outline-none ${
                  showTransparent
                    ? "text-white hover:text-[#E6B85C] hover:bg-white/10"
                    : "text-[#17212B] hover:text-[#D89A32] hover:bg-slate-100"
                }`}
                aria-label="Saved Packages"
              >
                <motion.div
                  animate={justHearted ? { scale: [1, 1.25, 1] } : { scale: 1 }}
                  transition={{ duration: 0.3 }}
                >
                  <Heart
                    size={19}
                    className={
                      savedIds.length > 0
                        ? "fill-red-500 text-red-500"
                        : "group-hover:text-red-500 transition-colors"
                    }
                  />
                </motion.div>
                <AnimatePresence>
                  {savedIds.length > 0 && (
                    <motion.span
                      initial={{ scale: 0 }}
                      animate={{ scale: 1 }}
                      exit={{ scale: 0 }}
                      className="absolute top-1 right-1 bg-red-600 text-white text-[10px] font-bold w-4 h-4 rounded-full flex items-center justify-center shadow-sm"
                    >
                      {savedIds.length}
                    </motion.span>
                  )}
                </AnimatePresence>
              </motion.button>
            </Link>
          </div>

          {/* User Auth Profile / Sign In button */}
          {user ? (
            <div className="relative group">
              <button
                onClick={() => signOut()}
                className={`flex items-center gap-1.5 px-3 py-1.5 rounded-xl font-label-bold text-xs transition-all cursor-pointer ${
                  showTransparent
                    ? "text-white hover:bg-white/10"
                    : "text-[#102F4A] hover:bg-slate-100"
                }`}
                title={`Signed in as ${user.name || user.email}. Click to Sign Out.`}
              >
                <div className="w-6 h-6 rounded-full bg-[#D89A32] text-white flex items-center justify-center font-bold text-[10px]">
                  {(user.name || user.email).slice(0, 1).toUpperCase()}
                </div>
                <span className="hidden xl:inline max-w-[90px] truncate">{user.name || "User"}</span>
                <LogOut size={14} className="opacity-70" />
              </button>
            </div>
          ) : (
            <Link href="/login">
              <button
                className={`hidden sm:flex items-center gap-1.5 px-3 py-2 rounded-xl font-label-bold text-xs border transition-all cursor-pointer ${
                  showTransparent
                    ? "border-white/30 text-white hover:bg-white/10"
                    : "border-[#DDE4E8] text-[#102F4A] hover:bg-[#FFF9F0] hover:border-[#D89A32]"
                }`}
              >
                <LogIn size={15} className="text-[#D89A32]" />
                <span>Sign In</span>
              </button>
            </Link>
          )}

          {/* Enquire Now Primary CTA */}
          <motion.button
            onClick={handleEnquireClick}
            whileHover={{ y: -1.5, scale: 1.02 }}
            whileTap={{ scale: 0.98 }}
            className={`hidden md:flex items-center gap-2 font-label-bold px-4 lg:px-5 py-2.5 rounded-xl transition-all duration-200 shadow-sm hover:shadow-md cursor-pointer relative overflow-hidden group focus-visible:ring-2 focus-visible:ring-[#D89A32] outline-none ${
              showTransparent
                ? "bg-white text-[#102F4A] hover:bg-[#FFF9F0]"
                : "bg-[#102F4A] hover:bg-[#1D5E85] text-white"
            }`}
          >
            <span className="absolute inset-0 translate-x-[-100%] bg-gradient-to-r from-transparent via-white/30 to-transparent group-hover:animate-[shine_1.5s_ease-out]" />
            <PhoneCall size={15} className="transition-transform duration-200 group-hover:translate-x-0.5" />
            <span>Enquire Now</span>
          </motion.button>

          {/* Mobile Navigation Drawer Toggle */}
          <button
            onClick={() => setMobileMenuOpen(!mobileMenuOpen)}
            className={`w-10 h-10 flex items-center justify-center rounded-full focus-visible:ring-2 focus-visible:ring-[#D89A32] outline-none md:hidden active:scale-95 transition-all ${
              showTransparent
                ? "text-white hover:bg-white/10"
                : "text-[#17212B] hover:bg-slate-100"
            }`}
            aria-label="Toggle Mobile Menu"
          >
            <AnimatePresence mode="wait">
              {mobileMenuOpen ? (
                <motion.div
                  key="close"
                  initial={{ rotate: -90, opacity: 0 }}
                  animate={{ rotate: 0, opacity: 1 }}
                  exit={{ rotate: 90, opacity: 0 }}
                  transition={{ duration: 0.2 }}
                >
                  <X size={22} />
                </motion.div>
              ) : (
                <motion.div
                  key="menu"
                  initial={{ rotate: 90, opacity: 0 }}
                  animate={{ rotate: 0, opacity: 1 }}
                  exit={{ rotate: -90, opacity: 0 }}
                  transition={{ duration: 0.2 }}
                >
                  <Menu size={22} />
                </motion.div>
              )}
            </AnimatePresence>
          </button>
        </div>
      </div>

      {/* Mobile Drawer Menu */}
      <AnimatePresence>
        {mobileMenuOpen && (
          <>
            <motion.div
              initial={{ opacity: 0 }}
              animate={{ opacity: 0.5 }}
              exit={{ opacity: 0 }}
              transition={{ duration: 0.2 }}
              onClick={() => setMobileMenuOpen(false)}
              className="fixed inset-0 bg-black/60 backdrop-blur-sm z-30 md:hidden"
            />

            <motion.div
              initial={{ x: "100%" }}
              animate={{ x: 0 }}
              exit={{ x: "100%" }}
              transition={{ type: "tween", duration: 0.3, ease: easeQuint }}
              className="fixed right-0 top-0 bottom-0 w-[280px] bg-white z-40 md:hidden shadow-level-3 p-6 flex flex-col justify-between"
            >
              <div className="flex flex-col gap-6">
                <div className="flex justify-between items-center pb-4 border-b border-slate-100">
                  <span className="font-bold text-[#102F4A] flex items-center gap-2 text-lg font-display">
                    <OneJourneyTempleIcon size={24} className="text-[#D89A32]" />
                    OneJourney
                  </span>
                  <button
                    onClick={() => setMobileMenuOpen(false)}
                    className="w-9 h-9 flex items-center justify-center hover:bg-slate-100 rounded-full outline-none"
                    aria-label="Close menu"
                  >
                    <X size={20} className="text-[#17212B]" />
                  </button>
                </div>

                <nav className="flex flex-col gap-3">
                  {navLinks.map((link, i) => {
                    const isActive = pathname === link.href;
                    return (
                      <motion.div
                        key={link.href}
                        initial={{ opacity: 0, x: 15 }}
                        animate={{ opacity: 1, x: 0 }}
                        transition={{ delay: i * 0.05, ease: easeQuint }}
                      >
                        <Link
                          href={link.href}
                          className={`block py-2.5 text-base font-semibold border-b border-slate-100 transition-colors ${
                            isActive
                              ? "text-[#D89A32] border-[#D89A32] font-bold"
                              : "text-[#17212B] hover:text-[#D89A32]"
                          }`}
                        >
                          {link.label}
                        </Link>
                      </motion.div>
                    );
                  })}
                </nav>
              </div>

              <div className="flex flex-col gap-3 pt-4 border-t border-slate-100">
                <button
                  onClick={handleEnquireClick}
                  className="w-full bg-[#102F4A] hover:bg-[#1D5E85] text-white py-3 rounded-xl font-bold shadow-sm flex items-center justify-center gap-2 active:scale-98 transition-all"
                >
                  <PhoneCall size={16} />
                  <span>Enquire Now</span>
                </button>
              </div>
            </motion.div>
          </>
        )}
      </AnimatePresence>
    </header>
  );
}
