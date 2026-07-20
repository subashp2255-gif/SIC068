"use client";

import { useState, useEffect } from "react";
import { usePathname } from "next/navigation";
import TrustBar from "./TrustBar";
import MainNavbar from "./MainNavbar";

export default function Navbar() {
  const pathname = usePathname();
  const [isScrolled, setIsScrolled] = useState(false);

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

  const isHomepage = pathname === "/";
  const showTransparent = isHomepage && !isScrolled;

  return (
    <div
      className={`w-full z-40 transition-all duration-300 ${
        showTransparent
          ? "absolute top-0 left-0 bg-transparent"
          : "sticky top-0 bg-white/95 backdrop-blur-md border-b border-slate-200 shadow-sm"
      }`}
    >
      <TrustBar showTransparent={showTransparent} />
      <MainNavbar showTransparent={showTransparent} />
    </div>
  );
}
