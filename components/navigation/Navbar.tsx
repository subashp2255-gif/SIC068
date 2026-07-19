"use client";

import { useState, useEffect } from "react";
import Link from "next/link";
import { usePathname } from "next/navigation";
import { motion, AnimatePresence } from "framer-motion";
import { useApp } from "@/context/AppContext";
import { easeQuint } from "@/lib/animations";
import { Menu, X, Heart, RefreshCw, Phone, Globe } from "lucide-react";

export default function Navbar() {
  const pathname = usePathname();
  const { savedIds, compareIds, setEnquireOpen, setEnquirePackageId } = useApp();
  const [isScrolled, setIsScrolled] = useState(false);
  const [mobileMenuOpen, setMobileMenuOpen] = useState(false);
  const [hoveredIndex, setHoveredIndex] = useState<number | null>(null);

  // Monitor scroll to update navbar appearance
  useEffect(() => {
    const handleScroll = () => {
      if (window.scrollY > 40) {
        setIsScrolled(true);
      } else {
        setIsScrolled(false);
      }
    };
    window.addEventListener("scroll", handleScroll);
    return () => window.removeEventListener("scroll", handleScroll);
  }, []);

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
      {/* 1. Announcement / Utility Bar */}
      <div className="bg-surface-container-low text-on-surface-variant font-body-sm text-[12px] py-2 border-b border-outline-variant/10 select-none z-50 relative">
        <div className="max-w-container-max mx-auto px-margin-mobile md:px-12 flex justify-between items-center">
          <div className="flex items-center gap-4 text-xs">
            <span className="flex items-center gap-1">
              <span className="material-symbols-outlined text-[15px] text-tertiary icon-fill">check_circle</span> 
              No hidden charges
            </span>
            <span className="text-outline-variant/40">|</span>
            <span className="flex items-center gap-1">
              <span className="material-symbols-outlined text-[15px] text-tertiary icon-fill">hotel</span> 
              Verified hotels
            </span>
            <span className="text-outline-variant/40">|</span>
            <span className="flex items-center gap-1">
              <span className="material-symbols-outlined text-[15px] text-tertiary icon-fill">support_agent</span> 
              24/7 support
            </span>
          </div>
          <div className="hidden md:flex items-center gap-6">
            <div className="flex items-center gap-4 text-on-surface-variant">
              <button aria-label="Language" className="hover:text-primary transition-colors cursor-pointer flex items-center">
                <Globe size={14} className="mr-1" /> EN
              </button>
            </div>
            <a 
              href="tel:+911800PILGRIM" 
              className="flex items-center gap-1.5 font-label-bold text-[13px] text-primary hover:text-secondary transition-colors"
            >
              <Phone size={13} />
              +91 1800-PILGRIM
            </a>
          </div>
        </div>
      </div>

      {/* 2. Main Sticky Navigation Bar */}
      <header
        className={`sticky top-0 w-full transition-all duration-300 z-40 ${
          isScrolled
            ? "bg-surface/90 backdrop-blur-md shadow-level-1 py-3"
            : "bg-surface py-5"
        }`}
      >
        <div className="max-w-container-max mx-auto px-margin-mobile md:px-12 flex justify-between items-center">
          {/* Logo */}
          <Link href="/">
            <motion.div 
              className="font-headline-md font-bold text-primary flex items-center gap-2 cursor-pointer select-none"
              whileHover={{ scale: 1.02 }}
              transition={{ ease: easeQuint }}
            >
              <span className="material-symbols-outlined text-secondary text-[28px] icon-fill">
                temple_hindu
              </span>
              <span>DharmaYatra</span>
            </motion.div>
          </Link>

          {/* Desktop Navigation Links */}
          <nav className="hidden md:flex items-center gap-2 relative h-full">
            {navLinks.map((link, index) => {
              const isActive = pathname === link.href;
              return (
                <Link
                  key={link.href}
                  href={link.href}
                  className="relative px-4 py-2 font-body-sm text-[15px] font-semibold text-on-surface-variant hover:text-primary transition-colors rounded-md"
                  onMouseEnter={() => setHoveredIndex(index)}
                  onMouseLeave={() => setHoveredIndex(null)}
                >
                  {/* Sliding Hover Underline Background */}
                  {hoveredIndex === index && (
                    <motion.div
                      layoutId="nav-hover-bg"
                      className="absolute inset-0 bg-surface-container-low rounded-md -z-10"
                      initial={{ opacity: 0 }}
                      animate={{ opacity: 1 }}
                      exit={{ opacity: 0 }}
                      transition={{ type: "spring", stiffness: 350, damping: 30 }}
                    />
                  )}

                  {/* Text label */}
                  <span>{link.label}</span>

                  {/* Active Link Highlight Dot/Underline */}
                  {isActive && (
                    <motion.div
                      layoutId="active-nav-line"
                      className="absolute bottom-0 left-4 right-4 h-0.5 bg-secondary rounded-full"
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
            <Link href="/compare">
              <button 
                className="p-2 hover:bg-surface-container rounded-full relative transition-colors cursor-pointer text-on-surface-variant hover:text-primary"
                title="Compare Packages"
              >
                <RefreshCw size={20} className={compareIds.length > 0 ? "animate-spin-slow" : ""} />
                <AnimatePresence>
                  {compareIds.length > 0 && (
                    <motion.span
                      initial={{ scale: 0 }}
                      animate={{ scale: 1 }}
                      exit={{ scale: 0 }}
                      className="absolute -top-1 -right-1 bg-secondary text-on-secondary text-[10px] font-bold w-4 h-4 rounded-full flex items-center justify-center shadow-sm"
                    >
                      {compareIds.length}
                    </motion.span>
                  )}
                </AnimatePresence>
              </button>
            </Link>

            {/* Favorites / Saved badge button */}
            <Link href="/saved">
              <button 
                className="p-2 hover:bg-surface-container rounded-full relative transition-colors cursor-pointer text-on-surface-variant hover:text-error"
                title="Saved Packages"
              >
                <Heart size={20} className={savedIds.length > 0 ? "fill-error text-error" : ""} />
                <AnimatePresence>
                  {savedIds.length > 0 && (
                    <motion.span
                      initial={{ scale: 0 }}
                      animate={{ scale: 1 }}
                      exit={{ scale: 0 }}
                      className="absolute -top-1 -right-1 bg-error text-on-error text-[10px] font-bold w-4 h-4 rounded-full flex items-center justify-center shadow-sm"
                    >
                      {savedIds.length}
                    </motion.span>
                  )}
                </AnimatePresence>
              </button>
            </Link>

            {/* Enquire Now Action Button */}
            <button
              onClick={handleEnquireClick}
              className="hidden md:block bg-primary text-on-primary text-label-bold font-label-bold px-6 py-3 rounded-lg hover:bg-primary-container active:scale-95 transition-all duration-200 shadow-sm cursor-pointer"
            >
              Enquire Now
            </button>

            {/* Mobile Menu Toggle Button */}
            <button
              onClick={() => setMobileMenuOpen(!mobileMenuOpen)}
              className="md:hidden p-2 hover:bg-surface-container rounded-full text-primary"
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
                className="fixed right-0 top-0 bottom-0 w-[280px] bg-surface z-40 md:hidden shadow-level-2 p-6 flex flex-col gap-8 justify-between"
              >
                <div className="flex flex-col gap-8">
                  {/* Close Header */}
                  <div className="flex justify-between items-center">
                    <span className="font-bold text-primary flex items-center gap-1">
                      <span className="material-symbols-outlined text-secondary icon-fill">temple_hindu</span>
                      DharmaYatra
                    </span>
                    <button 
                      onClick={() => setMobileMenuOpen(false)}
                      className="p-2 hover:bg-surface-container rounded-full"
                    >
                      <X size={20} />
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
                            className={`block py-2 text-base font-semibold border-b border-outline-variant/10 ${
                              isActive ? "text-primary border-secondary" : "text-on-surface-variant"
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
                  <a href="tel:+911800PILGRIM" className="flex items-center gap-2 text-primary font-bold justify-center py-2 bg-surface-container rounded-lg">
                    <Phone size={16} />
                    +91 1800-PILGRIM
                  </a>
                  <button
                    onClick={handleEnquireClick}
                    className="w-full bg-primary text-on-primary py-3 rounded-lg font-bold shadow-sm"
                  >
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
