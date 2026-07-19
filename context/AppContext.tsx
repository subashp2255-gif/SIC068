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
}

const AppContext = createContext<AppContextType | undefined>(undefined);

export function AppProvider({ children }: { children: React.ReactNode }) {
  const [savedIds, setSavedIds] = useState<string[]>([]);
  const [compareIds, setCompareIds] = useState<string[]>([]);
  const [isEnquireOpen, setEnquireOpen] = useState(false);
  const [enquirePackageId, setEnquirePackageId] = useState<string | null>(null);
  const [isCompareOpen, setCompareOpen] = useState(false);

  // Load from LocalStorage
  useEffect(() => {
    try {
      const saved = localStorage.getItem("dharmayatra_saved");
      if (saved) setSavedIds(JSON.parse(saved));

      const compare = localStorage.getItem("dharmayatra_compare");
      if (compare) setCompareIds(JSON.parse(compare));
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
    localStorage.setItem("dharmayatra_saved", JSON.stringify(updated));
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
    localStorage.setItem("dharmayatra_compare", JSON.stringify(updated));
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
