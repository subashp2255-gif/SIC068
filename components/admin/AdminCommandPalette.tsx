"use client";

import React, { useState, useEffect } from "react";
import { useRouter } from "next/navigation";
import { motion, AnimatePresence } from "framer-motion";
import {
  Search,
  LayoutDashboard,
  Inbox,
  Receipt,
  Package,
  Plus,
  Compass,
  Tag,
  FileText,
  Star,
  Users,
  ShieldCheck,
  Settings,
  ExternalLink,
  X,
  ArrowRight,
} from "lucide-react";
import { adminMotion } from "@/lib/animations";

interface CommandItem {
  id: string;
  title: string;
  description: string;
  category: "Navigation" | "Actions" | "System";
  icon: React.ElementType;
  href?: string;
  action?: () => void;
}

interface AdminCommandPaletteProps {
  isOpen: boolean;
  onClose: () => void;
}

export const AdminCommandPalette: React.FC<AdminCommandPaletteProps> = ({
  isOpen,
  onClose,
}) => {
  const router = useRouter();
  const [query, setQuery] = useState("");
  const [selectedIndex, setSelectedIndex] = useState(0);

  const commandItems: CommandItem[] = [
    {
      id: "nav-overview",
      title: "Overview Dashboard",
      description: "KPI metrics, live analytics, and enquiry trends",
      category: "Navigation",
      icon: LayoutDashboard,
      href: "/admin",
    },
    {
      id: "nav-enquiries",
      title: "Enquiry Management",
      description: "View and process pilgrim booking inquiries",
      category: "Navigation",
      icon: Inbox,
      href: "/admin/enquiries",
    },
    {
      id: "nav-bookings",
      title: "Booking Management",
      description: "Confirmed pilgrim bookings, seats, and payment status",
      category: "Navigation",
      icon: Receipt,
      href: "/admin/bookings",
    },
    {
      id: "nav-packages",
      title: "Package Catalogue",
      description: "Manage tours, pricing, schedules, and itineraries",
      category: "Navigation",
      icon: Package,
      href: "/admin/packages",
    },
    {
      id: "act-new-package",
      title: "Create New Package",
      description: "Launch multi-step tour package editor",
      category: "Actions",
      icon: Plus,
      href: "/admin/packages/new",
    },
    {
      id: "nav-destinations",
      title: "Destinations",
      description: "Manage sacred pilgrimage locations & regions",
      category: "Navigation",
      icon: Compass,
      href: "/admin/destinations",
    },
    {
      id: "nav-categories",
      title: "Categories",
      description: "Manage tour styles and categories",
      category: "Navigation",
      icon: Tag,
      href: "/admin/categories",
    },
    {
      id: "nav-content",
      title: "Content & FAQs",
      description: "Manage FAQs and traveller testimonials",
      category: "Navigation",
      icon: FileText,
      href: "/admin/content",
    },
    {
      id: "nav-reviews",
      title: "Review Moderation",
      description: "Approve or moderate pilgrim feedback",
      category: "Navigation",
      icon: Star,
      href: "/admin/reviews",
    },
    {
      id: "nav-users",
      title: "User Directory",
      description: "View registered users and enquiry counts",
      category: "Navigation",
      icon: Users,
      href: "/admin/users",
    },
    {
      id: "nav-audit",
      title: "Audit Log Trail",
      description: "Inspect immutable admin action logs",
      category: "Navigation",
      icon: ShieldCheck,
      href: "/admin/audit",
    },
    {
      id: "nav-settings",
      title: "Admin Settings",
      description: "System preferences and account config",
      category: "Navigation",
      icon: Settings,
      href: "/admin/settings",
    },
    {
      id: "act-public-site",
      title: "View Public Website",
      description: "Open the live One Journey traveller website",
      category: "System",
      icon: ExternalLink,
      action: () => window.open("/", "_blank"),
    },
  ];

  const filteredItems = commandItems.filter(
    (item) =>
      item.title.toLowerCase().includes(query.toLowerCase()) ||
      item.description.toLowerCase().includes(query.toLowerCase()) ||
      item.category.toLowerCase().includes(query.toLowerCase())
  );

  useEffect(() => {
    setSelectedIndex(0);
  }, [query]);

  useEffect(() => {
    const handleKeyDown = (e: KeyboardEvent) => {
      if (!isOpen) return;

      if (e.key === "ArrowDown") {
        e.preventDefault();
        setSelectedIndex((prev) => (prev + 1) % (filteredItems.length || 1));
      } else if (e.key === "ArrowUp") {
        e.preventDefault();
        setSelectedIndex((prev) =>
          prev === 0 ? Math.max(0, filteredItems.length - 1) : prev - 1
        );
      } else if (e.key === "Enter" && filteredItems[selectedIndex]) {
        e.preventDefault();
        executeItem(filteredItems[selectedIndex]);
      } else if (e.key === "Escape") {
        e.preventDefault();
        onClose();
      }
    };

    window.addEventListener("keydown", handleKeyDown);
    return () => window.removeEventListener("keydown", handleKeyDown);
  }, [isOpen, filteredItems, selectedIndex]);

  const executeItem = (item: CommandItem) => {
    onClose();
    if (item.action) {
      item.action();
    } else if (item.href) {
      router.push(item.href);
    }
  };

  return (
    <AnimatePresence>
      {isOpen && (
        <div className="fixed inset-0 z-50 flex items-start justify-center pt-16 sm:pt-24 px-4">
          {/* Backdrop */}
          <motion.div
            initial={{ opacity: 0 }}
            animate={{ opacity: 1 }}
            exit={{ opacity: 0 }}
            onClick={onClose}
            className="fixed inset-0 bg-black/70 backdrop-blur-sm"
          />

          {/* Dialog Container */}
          <motion.div
            variants={adminMotion.commandPalette}
            initial="initial"
            animate="animate"
            exit="exit"
            className="relative w-full max-w-2xl rounded-3xl bg-[#0A1118] border border-[#D4AF37]/30 shadow-2xl shadow-black/80 overflow-hidden flex flex-col z-10"
          >
            {/* Search Input Box */}
            <div className="flex items-center px-5 py-4 border-b border-white/10 gap-3">
              <Search className="w-5 h-5 text-[#D4AF37]" />
              <input
                type="text"
                value={query}
                onChange={(e) => setQuery(e.target.value)}
                placeholder="Type a command or search admin modules... (Cmd + K)"
                autoFocus
                className="w-full bg-transparent text-base text-[#F9F6F0] placeholder-slate-500 outline-none font-sans"
              />
              <button
                onClick={onClose}
                className="p-1.5 rounded-lg text-slate-400 hover:text-white hover:bg-white/10 transition"
              >
                <X className="w-4 h-4" />
              </button>
            </div>

            {/* Command Results */}
            <div className="max-h-[380px] overflow-y-auto p-2 space-y-1 divide-y divide-white/5">
              {filteredItems.length === 0 ? (
                <div className="py-12 text-center text-slate-500 text-sm">
                  No matching command or module found for "{query}"
                </div>
              ) : (
                filteredItems.map((item, idx) => {
                  const Icon = item.icon;
                  const isSelected = idx === selectedIndex;

                  return (
                    <div
                      key={item.id}
                      onClick={() => executeItem(item)}
                      onMouseEnter={() => setSelectedIndex(idx)}
                      className={`flex items-center justify-between p-3 rounded-2xl cursor-pointer transition ${
                        isSelected
                          ? "bg-[#D4AF37]/15 border border-[#D4AF37]/30 text-white"
                          : "hover:bg-white/5 text-slate-300 border border-transparent"
                      }`}
                    >
                      <div className="flex items-center gap-3.5 min-w-0">
                        <div
                          className={`w-9 h-9 rounded-xl flex items-center justify-center ${
                            isSelected
                              ? "bg-[#D4AF37] text-[#0A1118]"
                              : "bg-white/5 text-[#D4AF37]"
                          }`}
                        >
                          <Icon className="w-4 h-4" />
                        </div>
                        <div className="flex flex-col min-w-0">
                          <div className="flex items-center gap-2">
                            <span className="text-sm font-semibold text-[#F9F6F0]">
                              {item.title}
                            </span>
                            <span className="text-[10px] uppercase font-mono px-2 py-0.5 rounded-md bg-white/5 text-slate-400">
                              {item.category}
                            </span>
                          </div>
                          <span className="text-xs text-slate-400 truncate">
                            {item.description}
                          </span>
                        </div>
                      </div>

                      <ArrowRight
                        className={`w-4 h-4 transition ${
                          isSelected ? "text-[#D4AF37] translate-x-0.5" : "text-transparent"
                        }`}
                      />
                    </div>
                  );
                })
              )}
            </div>

            {/* Command Footer */}
            <div className="px-5 py-3 border-t border-white/10 bg-[#070C12] flex items-center justify-between text-xs text-slate-400">
              <div className="flex items-center gap-3">
                <span className="flex items-center gap-1 font-mono text-[10px]">
                  <kbd className="px-1.5 py-0.5 bg-white/10 rounded">↑</kbd>
                  <kbd className="px-1.5 py-0.5 bg-white/10 rounded">↓</kbd>
                  <span>Navigate</span>
                </span>
                <span className="flex items-center gap-1 font-mono text-[10px]">
                  <kbd className="px-1.5 py-0.5 bg-white/10 rounded">↵</kbd>
                  <span>Select</span>
                </span>
              </div>
              <span className="text-[10px] text-slate-500 font-mono">One Journey Command Palette</span>
            </div>
          </motion.div>
        </div>
      )}
    </AnimatePresence>
  );
};
