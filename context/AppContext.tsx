"use client";

import React, { createContext, useContext, useState, useEffect } from "react";
import { toast } from "sonner";
import { mockPackages, Package } from "@/data/packages";

interface AppContextType {
  savedIds: string[];
  toggleSave: (id: string) => void;
  compareIds: string[];
  toggleCompare: (id: string) => void;
  isEnquireOpen: boolean;
  setEnquireOpen: (open: boolean) => void;
  enquirePackageId: string | null;
  setEnquirePackageId: (id: string | null) => void;
  isCompareOpen: boolean;
  setCompareOpen: (open: boolean) => void;
  // Accessibility States
  fontSizeClass: "text-normal" | "text-large";
  setFontSizeClass: (size: "text-normal" | "text-large") => void;
  highContrast: boolean;
  setHighContrast: (active: boolean) => void;
  // Recently Viewed States
  recentlyViewed: string[];
  addToRecentlyViewed: (id: string) => void;
}

const AppContext = createContext<AppContextType | undefined>(undefined);

export function AppProvider({ children }: { children: React.ReactNode }) {
  const [savedIds, setSavedIds] = useState<string[]>([]);
  const [compareIds, setCompareIds] = useState<string[]>([]);
  const [isEnquireOpen, setEnquireOpen] = useState(false);
  const [enquirePackageId, setEnquirePackageId] = useState<string | null>(null);
  const [isCompareOpen, setCompareOpen] = useState(false);

  // Accessibility
  const [fontSizeClass, setFontSizeClass] = useState<"text-normal" | "text-large">("text-normal");
  const [highContrast, setHighContrast] = useState(false);

  // Recently Viewed
  const [recentlyViewed, setRecentlyViewed] = useState<string[]>([]);

  // Load from LocalStorage & validate matching IDs
  useEffect(() => {
    try {
      const saved = localStorage.getItem("onejourney_saved") || localStorage.getItem("dharmayatra_saved");
      if (saved) {
        const parsed = JSON.parse(saved);
        if (Array.isArray(parsed)) {
          setSavedIds(parsed.filter((id) => mockPackages.some((p) => p.id === id)));
        }
      }

      const compare = localStorage.getItem("onejourney_compare") || localStorage.getItem("dharmayatra_compare");
      if (compare) {
        const parsed = JSON.parse(compare);
        if (Array.isArray(parsed)) {
          setCompareIds(parsed.filter((id) => mockPackages.some((p) => p.id === id)));
        }
      }

      const rv = localStorage.getItem("onejourney_recently_viewed") || localStorage.getItem("dharmayatra_recently_viewed");
      if (rv) {
        const parsed = JSON.parse(rv);
        if (Array.isArray(parsed)) {
          setRecentlyViewed(parsed.filter((id) => mockPackages.some((p) => p.id === id)));
        }
      }

      const fs = localStorage.getItem("onejourney_fontsize") || localStorage.getItem("dharmayatra_fontsize");
      if (fs) setFontSizeClass(fs as "text-normal" | "text-large");

      const hc = localStorage.getItem("onejourney_highcontrast") || localStorage.getItem("dharmayatra_highcontrast");
      if (hc) setHighContrast(JSON.parse(hc));
    } catch (e) {
      console.error("Failed to load localstorage data", e);
    }
  }, []);

  // Save/favorite package
  const toggleSave = (id: string) => {
    const pkg = mockPackages.find((p) => p.id === id);
    if (!pkg) return;

    let updated: string[];
    if (savedIds.includes(id)) {
      updated = savedIds.filter((item) => item !== id);
      toast.info(`"${pkg.title}" removed from favorites.`);
    } else {
      updated = [...savedIds, id];
      toast.success(`"${pkg.title}" added to favorites!`, {
        icon: "❤️",
      });
    }
    setSavedIds(updated);
    localStorage.setItem("onejourney_saved", JSON.stringify(updated));
  };

  // Compare package
  const toggleCompare = (id: string) => {
    const pkg = mockPackages.find((p) => p.id === id);
    if (!pkg) return;

    let updated: string[];
    if (compareIds.includes(id)) {
      updated = compareIds.filter((item) => item !== id);
      toast.info(`"${pkg.title}" removed from comparison list.`);
    } else {
      if (compareIds.length >= 3) {
        toast.warning("You can compare up to 3 packages at a time.");
        return;
      }
      updated = [...compareIds, id];
      toast.success(`"${pkg.title}" added to comparison list!`, {
        icon: "🔄",
      });
    }
    setCompareIds(updated);
    localStorage.setItem("onejourney_compare", JSON.stringify(updated));
  };

  // Add to Recently Viewed
  const addToRecentlyViewed = (id: string) => {
    if (recentlyViewed.includes(id)) return;
    const updated = [id, ...recentlyViewed.filter((x) => x !== id)].slice(0, 4);
    setRecentlyViewed(updated);
    localStorage.setItem("onejourney_recently_viewed", JSON.stringify(updated));
  };

  // Accessibility handlers
  const handleSetFontSize = (size: "text-normal" | "text-large") => {
    setFontSizeClass(size);
    localStorage.setItem("onejourney_fontsize", size);
  };

  const handleSetHighContrast = (active: boolean) => {
    setHighContrast(active);
    localStorage.setItem("onejourney_highcontrast", JSON.stringify(active));
  };

  return (
    <AppContext.Provider
      value={{
        savedIds,
        toggleSave,
        compareIds,
        toggleCompare,
        isEnquireOpen,
        setEnquireOpen,
        enquirePackageId,
        setEnquirePackageId,
        isCompareOpen,
        setCompareOpen,
        fontSizeClass,
        setFontSizeClass: handleSetFontSize,
        highContrast,
        setHighContrast: handleSetHighContrast,
        recentlyViewed,
        addToRecentlyViewed,
      }}
    >
      {children}
    </AppContext.Provider>
  );
}

export function useApp() {
  const context = useContext(AppContext);
  if (!context) {
    throw new Error("useApp must be used within an AppProvider");
  }
  return context;
}
