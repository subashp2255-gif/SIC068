"use client";

import React, { useState } from "react";
import Link from "next/link";
import { usePathname, useRouter } from "next/navigation";
import { Menu, Plus, Bell, Search, LogOut, User as UserIcon, Shield, ExternalLink } from "lucide-react";
import { getSupabaseBrowserClient } from "@/lib/supabase/client";

interface AdminHeaderProps {
  onOpenMobileMenu: () => void;
  userEmail?: string | null;
  onOpenCommandPalette?: () => void;
}

export const AdminHeader: React.FC<AdminHeaderProps> = ({
  onOpenMobileMenu,
  userEmail,
  onOpenCommandPalette,
}) => {
  const pathname = usePathname();
  const router = useRouter();
  const [showUserMenu, setShowUserMenu] = useState(false);

  const getPageTitle = () => {
    if (pathname === "/admin") return "Overview Dashboard";
    if (pathname.startsWith("/admin/enquiries")) return "Enquiry Management";
    if (pathname.startsWith("/admin/bookings")) return "Booking Management";
    if (pathname.startsWith("/admin/packages/new")) return "Create New Package";
    if (pathname.includes("/edit")) return "Edit Package";
    if (pathname.startsWith("/admin/packages")) return "Package Catalogue";
    if (pathname.startsWith("/admin/destinations")) return "Destinations";
    if (pathname.startsWith("/admin/categories")) return "Categories";
    if (pathname.startsWith("/admin/content")) return "Content Management";
    if (pathname.startsWith("/admin/reviews")) return "Review Moderation";
    if (pathname.startsWith("/admin/users")) return "User Profiles";
    if (pathname.startsWith("/admin/audit")) return "Audit Logs";
    if (pathname.startsWith("/admin/settings")) return "Settings";
    return "Admin";
  };

  const handleSignOut = async () => {
    try {
      const supabase = getSupabaseBrowserClient();
      await supabase.auth.signOut();
      router.push("/login");
    } catch (err) {
      console.error("Sign out error:", err);
    }
  };

  return (
    <header className="sticky top-0 z-30 flex items-center justify-between px-4 sm:px-6 lg:px-8 py-3.5 bg-[#0A1118]/80 backdrop-blur-md border-b border-[#D4AF37]/15 text-[#F9F6F0]">
      {/* Left: Mobile menu toggle + Page title */}
      <div className="flex items-center gap-3.5 min-w-0">
        <button
          onClick={onOpenMobileMenu}
          className="md:hidden p-2 rounded-xl text-slate-400 hover:text-white hover:bg-white/5 transition"
          aria-label="Open navigation menu"
        >
          <Menu className="w-5 h-5" />
        </button>

        <div className="flex flex-col min-w-0">
          <div className="flex items-center gap-2 text-xs text-slate-400">
            <span>Admin</span>
            <span>/</span>
            <span className="text-[#D4AF37] font-medium truncate">{getPageTitle()}</span>
          </div>
          <h1 className="font-serif text-lg sm:text-xl font-bold tracking-tight text-[#F9F6F0] truncate">
            {getPageTitle()}
          </h1>
        </div>
      </div>

      {/* Center: Command Palette Quick Search Trigger */}
      <button
        onClick={onOpenCommandPalette}
        className="hidden md:flex items-center gap-3 px-3.5 py-1.5 rounded-xl bg-white/5 border border-white/10 hover:border-[#D4AF37]/30 text-slate-400 hover:text-slate-200 text-xs transition"
      >
        <Search className="w-3.5 h-3.5 text-[#D4AF37]" />
        <span>Search modules or commands...</span>
        <kbd className="px-1.5 py-0.5 rounded bg-white/10 text-[10px] font-mono text-slate-300">
          ⌘K
        </kbd>
      </button>

      {/* Right: Actions, Notifications, User Menu */}
      <div className="flex items-center gap-2.5 sm:gap-4">
        {/* Realtime Status Indicator */}
        <div className="hidden xl:flex items-center gap-1.5 px-2.5 py-1 rounded-full bg-emerald-500/10 border border-emerald-500/20 text-emerald-400 text-[10px] font-semibold">
          <span className="w-1.5 h-1.5 rounded-full bg-emerald-400 animate-pulse" />
          <span>Realtime Supabase</span>
        </div>

        {/* Quick New Package CTA */}
        <Link
          href="/admin/packages/new"
          className="hidden sm:inline-flex items-center gap-2 px-3.5 py-2 rounded-xl bg-gradient-to-r from-[#D4AF37] via-[#C5A028] to-[#B38728] text-[#0A1118] text-xs sm:text-sm font-semibold shadow-md shadow-[#D4AF37]/20 hover:brightness-110 active:scale-95 transition-all"
        >
          <Plus className="w-4 h-4" />
          <span>New Package</span>
        </Link>

        {/* View Live Public Site */}
        <Link
          href="/"
          target="_blank"
          className="p-2 rounded-xl text-slate-400 hover:text-[#D4AF37] hover:bg-white/5 transition"
          title="Open Public Website"
        >
          <ExternalLink className="w-5 h-5" />
        </Link>


        {/* User Account Dropdown */}
        <div className="relative">
          <button
            onClick={() => setShowUserMenu(!showUserMenu)}
            className="flex items-center gap-2.5 p-1.5 rounded-xl hover:bg-white/5 transition border border-transparent hover:border-[#D4AF37]/30"
          >
            <div className="w-8 h-8 rounded-lg bg-gradient-to-br from-[#D4AF37] to-[#8C6B1B] text-[#0A1118] font-bold text-xs flex items-center justify-center shadow-inner">
              {userEmail ? userEmail.substring(0, 2).toUpperCase() : "AD"}
            </div>
            <div className="hidden lg:flex flex-col text-left">
              <span className="text-xs font-medium text-[#F9F6F0] max-w-[130px] truncate">
                {userEmail || "Administrator"}
              </span>
              <span className="text-[10px] text-[#D4AF37] flex items-center gap-1 font-semibold">
                <Shield className="w-3 h-3" /> Admin
              </span>
            </div>
          </button>

          {showUserMenu && (
            <>
              <div
                onClick={() => setShowUserMenu(false)}
                className="fixed inset-0 z-40"
              />
              <div className="absolute right-0 top-full mt-2 w-56 rounded-2xl bg-[#0F172A] border border-[#D4AF37]/20 shadow-2xl p-2 z-50 text-sm animate-in fade-in zoom-in-95 duration-150">
                <div className="px-3 py-2 border-b border-white/10 mb-1">
                  <p className="text-xs text-slate-400">Signed in as</p>
                  <p className="text-xs font-semibold text-white truncate">{userEmail || "Admin"}</p>
                </div>

                <Link
                  href="/admin/settings"
                  onClick={() => setShowUserMenu(false)}
                  className="flex items-center gap-2.5 px-3 py-2 rounded-xl text-slate-300 hover:text-white hover:bg-white/5 transition"
                >
                  <UserIcon className="w-4 h-4 text-[#D4AF37]" />
                  <span>Admin Settings</span>
                </Link>

                <button
                  onClick={handleSignOut}
                  className="w-full flex items-center gap-2.5 px-3 py-2 rounded-xl text-rose-400 hover:text-rose-300 hover:bg-rose-500/10 transition mt-1"
                >
                  <LogOut className="w-4 h-4" />
                  <span>Sign Out</span>
                </button>
              </div>
            </>
          )}
        </div>
      </div>
    </header>
  );
};
