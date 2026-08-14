"use client";

import React from "react";
import Link from "next/link";
import { usePathname } from "next/navigation";
import { motion, AnimatePresence } from "framer-motion";
import {
  LayoutDashboard,
  Inbox,
  Receipt,
  Package,
  MapPin,
  Tag,
  FileText,
  MessageSquare,
  Users,
  ShieldCheck,
  Settings,
  ArrowLeft,
  ChevronLeft,
  ChevronRight,
  Compass,
  X,
} from "lucide-react";

interface AdminSidebarProps {
  isCollapsed: boolean;
  setIsCollapsed: (collapsed: boolean) => void;
  isMobileOpen: boolean;
  setIsMobileOpen: (open: boolean) => void;
}

const NAV_ITEMS = [
  { label: "Overview", href: "/admin", icon: LayoutDashboard },
  { label: "Enquiries", href: "/admin/enquiries", icon: Inbox, badgeKey: "enquiries" },
  { label: "Bookings", href: "/admin/bookings", icon: Receipt },
  { label: "Packages", href: "/admin/packages", icon: Package },
  { label: "Destinations", href: "/admin/destinations", icon: MapPin },
  { label: "Categories", href: "/admin/categories", icon: Tag },
  { label: "Content", href: "/admin/content", icon: FileText },
  { label: "Reviews", href: "/admin/reviews", icon: MessageSquare },
  { label: "Users", href: "/admin/users", icon: Users },
  { label: "Audit Log", href: "/admin/audit", icon: ShieldCheck },
  { label: "Settings", href: "/admin/settings", icon: Settings },
];


export const AdminSidebar: React.FC<AdminSidebarProps> = ({
  isCollapsed,
  setIsCollapsed,
  isMobileOpen,
  setIsMobileOpen,
}) => {
  const pathname = usePathname();

  const sidebarContent = (
    <div className="flex flex-col h-full bg-[#0A1118] border-r border-[#D4AF37]/20 text-[#F9F6F0]">
      {/* Brand Header */}
      <div className="flex items-center justify-between px-4 py-5 border-b border-[#D4AF37]/15">
        <Link href="/admin" className="flex items-center gap-3 overflow-hidden group">
          <div className="w-10 h-10 rounded-xl bg-gradient-to-br from-[#D4AF37] via-[#B38728] to-[#8C6B1B] p-0.5 shadow-lg shadow-[#D4AF37]/10 flex-shrink-0 flex items-center justify-center">
            <div className="w-full h-full bg-[#0A1118] rounded-[10px] flex items-center justify-center">
              <Compass className="w-5 h-5 text-[#D4AF37] group-hover:rotate-45 transition-transform duration-500" />
            </div>
          </div>
          {!isCollapsed && (
            <motion.div
              initial={{ opacity: 0, x: -10 }}
              animate={{ opacity: 1, x: 0 }}
              exit={{ opacity: 0, x: -10 }}
              className="flex flex-col min-w-0"
            >
              <span className="font-serif text-lg font-bold tracking-wide text-transparent bg-clip-text bg-gradient-to-r from-[#F9F6F0] via-[#D4AF37] to-[#F9F6F0] truncate">
                One Journey
              </span>
              <span className="text-[10px] uppercase tracking-widest text-[#D4AF37]/80 font-semibold">
                Admin Console
              </span>
            </motion.div>
          )}
        </Link>

        {/* Mobile close button */}
        <button
          onClick={() => setIsMobileOpen(false)}
          className="md:hidden p-1.5 rounded-lg text-slate-400 hover:text-white hover:bg-white/5 transition"
        >
          <X className="w-5 h-5" />
        </button>
      </div>

      {/* Navigation List */}
      <div className="flex-1 px-3 py-4 space-y-1.5 overflow-y-auto custom-scrollbar">
        <div className="px-3 pb-2">
          {!isCollapsed && (
            <span className="text-[11px] font-medium tracking-wider uppercase text-slate-400/80">
              Management
            </span>
          )}
        </div>

        {NAV_ITEMS.map((item) => {
          const Icon = item.icon;
          const isActive = pathname === item.href || (item.href !== "/admin" && pathname.startsWith(item.href));

          return (
            <Link
              key={item.href}
              href={item.href}
              onClick={() => setIsMobileOpen(false)}
              className={`relative flex items-center gap-3 px-3 py-2.5 rounded-xl transition-all duration-200 group ${
                isActive
                  ? "bg-[#D4AF37]/15 text-[#D4AF37] font-medium shadow-sm shadow-[#D4AF37]/5 border border-[#D4AF37]/30"
                  : "text-slate-400 hover:text-[#F9F6F0] hover:bg-white/5"
              }`}
            >
              {isActive && (
                <motion.div
                  layoutId="activeNavIndicator"
                  className="absolute left-0 top-1/2 -translate-y-1/2 w-1.5 h-6 rounded-r-full bg-[#D4AF37]"
                  transition={{ type: "spring", stiffness: 350, damping: 30 }}
                />
              )}

              <Icon className={`w-5 h-5 flex-shrink-0 transition-transform duration-200 group-hover:scale-110 ${isActive ? "text-[#D4AF37]" : "text-slate-400 group-hover:text-[#D4AF37]"}`} />

              {!isCollapsed && (
                <span className="truncate text-sm tracking-wide">{item.label}</span>
              )}
            </Link>
          );
        })}
      </div>

      {/* Footer Navigation */}
      <div className="p-3 border-t border-[#D4AF37]/15 space-y-2">
        <Link
          href="/"
          className="flex items-center gap-3 px-3 py-2.5 rounded-xl text-slate-400 hover:text-[#D4AF37] hover:bg-white/5 transition group"
        >
          <ArrowLeft className="w-5 h-5 flex-shrink-0 group-hover:-translate-x-1 transition-transform" />
          {!isCollapsed && <span className="text-sm font-medium">Back to Website</span>}
        </Link>

        {/* Desktop Collapse Toggle */}
        <div className="hidden md:block">
          <button
            onClick={() => setIsCollapsed(!isCollapsed)}
            className="w-full flex items-center justify-center p-2 rounded-xl text-slate-500 hover:text-white hover:bg-white/5 transition"
            title={isCollapsed ? "Expand Sidebar" : "Collapse Sidebar"}
          >
            {isCollapsed ? <ChevronRight className="w-5 h-5" /> : <ChevronLeft className="w-5 h-5" />}
          </button>
        </div>
      </div>
    </div>
  );

  return (
    <>
      {/* Desktop Persistent Sidebar */}
      <motion.aside
        animate={{ width: isCollapsed ? 80 : 260 }}
        transition={{ duration: 0.25, ease: "easeInOut" }}
        className="hidden md:block fixed left-0 top-0 bottom-0 z-40"
      >
        {sidebarContent}
      </motion.aside>

      {/* Mobile Drawer Backdrop & Sidebar */}
      <AnimatePresence>
        {isMobileOpen && (
          <>
            <motion.div
              initial={{ opacity: 0 }}
              animate={{ opacity: 1 }}
              exit={{ opacity: 0 }}
              onClick={() => setIsMobileOpen(false)}
              className="md:hidden fixed inset-0 z-50 bg-black/70 backdrop-blur-sm"
            />
            <motion.aside
              initial={{ x: "-100%" }}
              animate={{ x: 0 }}
              exit={{ x: "-100%" }}
              transition={{ type: "spring", damping: 25, stiffness: 280 }}
              className="md:hidden fixed left-0 top-0 bottom-0 z-50 w-72 max-w-[85vw]"
            >
              {sidebarContent}
            </motion.aside>
          </>
        )}
      </AnimatePresence>
    </>
  );
};
