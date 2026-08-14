"use client";

import React, { useState, useEffect } from "react";
import Link from "next/link";
import { useRouter } from "next/navigation";
import { AdminSidebar } from "@/components/admin/AdminSidebar";
import { AdminHeader } from "@/components/admin/AdminHeader";
import { AdminCommandPalette } from "@/components/admin/AdminCommandPalette";
import { checkIsAdmin } from "@/lib/services/adminService";
import { ShieldAlert, Compass, Lock, ArrowRight, RefreshCw } from "lucide-react";
import { getSupabaseBrowserClient } from "@/lib/supabase/client";

export default function AdminLayout({ children }: { children: React.ReactNode }) {
  const [isAdmin, setIsAdmin] = useState<boolean | null>(null);
  const [userEmail, setUserEmail] = useState<string | null>(null);
  const [isCollapsed, setIsCollapsed] = useState(false);
  const [isMobileOpen, setIsMobileOpen] = useState(false);
  const [isCommandPaletteOpen, setIsCommandPaletteOpen] = useState(false);
  const router = useRouter();

  const verifyAdminStatus = async () => {
    const { isAdmin: adminAuthorized, user } = await checkIsAdmin();
    setIsAdmin(adminAuthorized);
    setUserEmail(user?.email || null);
  };

  useEffect(() => {
    verifyAdminStatus();

    const supabase = getSupabaseBrowserClient();
    const { data: { subscription } } = supabase.auth.onAuthStateChange(() => {
      verifyAdminStatus();
    });

    return () => {
      subscription.unsubscribe();
    };
  }, []);

  // Keyboard shortcut listener for Cmd + K / Ctrl + K
  useEffect(() => {
    const handleKeyDown = (e: KeyboardEvent) => {
      if ((e.metaKey || e.ctrlKey) && e.key === "k") {
        e.preventDefault();
        setIsCommandPaletteOpen((prev) => !prev);
      }
    };
    window.addEventListener("keydown", handleKeyDown);
    return () => window.removeEventListener("keydown", handleKeyDown);
  }, []);

  // 1. Loading state
  if (isAdmin === null) {
    return (
      <div className="min-h-screen bg-[#070C12] flex flex-col items-center justify-center text-[#F9F6F0] p-4">
        <div className="relative flex items-center justify-center mb-6">
          <div className="w-16 h-16 rounded-2xl bg-gradient-to-tr from-[#D4AF37] to-[#8C6B1B] animate-spin p-0.5" />
          <div className="absolute inset-1 rounded-2xl bg-[#070C12] flex items-center justify-center">
            <Compass className="w-7 h-7 text-[#D4AF37] animate-pulse" />
          </div>
        </div>
        <p className="font-serif text-lg font-medium text-[#F9F6F0] tracking-wide">
          Verifying Administrator Privileges...
        </p>
        <p className="text-xs text-slate-400 mt-1">One Journey Security Guard</p>
      </div>
    );
  }

  // 2. Access Denied State (Not logged in or regular user without admin role)
  if (!isAdmin) {
    return (
      <div className="min-h-screen bg-[#070C12] flex flex-col items-center justify-center text-[#F9F6F0] p-6">
        <div className="max-w-md w-full rounded-3xl bg-[#0A1118] border border-[#D4AF37]/20 p-8 text-center shadow-2xl shadow-black/50 space-y-6">
          <div className="w-16 h-16 rounded-2xl bg-rose-500/10 border border-rose-500/30 text-rose-400 flex items-center justify-center mx-auto">
            <ShieldAlert className="w-8 h-8" />
          </div>

          <div className="space-y-2">
            <h2 className="font-serif text-2xl font-bold text-white">Access Restricted</h2>
            <p className="text-sm text-slate-400">
              This portal is restricted to authorized administrators of Pilgrimage — One Journey.
            </p>
          </div>

          {userEmail ? (
            <div className="p-3.5 rounded-xl bg-white/5 border border-white/10 text-xs text-slate-300">
              Signed in as: <span className="font-semibold text-white">{userEmail}</span> (Role: Normal User)
            </div>
          ) : (
            <div className="p-3.5 rounded-xl bg-white/5 border border-white/10 text-xs text-slate-300">
              You are currently unauthenticated.
            </div>
          )}

          <div className="flex flex-col gap-3 pt-2">
            <Link
              href="/login?redirect=/admin"
              className="w-full flex items-center justify-center gap-2 py-3 px-4 rounded-xl bg-gradient-to-r from-[#D4AF37] to-[#B38728] text-[#0A1118] font-bold text-sm shadow-lg hover:brightness-110 active:scale-98 transition"
            >
              <Lock className="w-4 h-4" />
              <span>Sign In with Admin Account</span>
            </Link>


            <Link
              href="/"
              className="w-full flex items-center justify-center gap-2 py-3 px-4 rounded-xl text-slate-400 hover:text-white hover:bg-white/5 text-sm transition"
            >
              <span>Return to Public Website</span>
              <ArrowRight className="w-4 h-4" />
            </Link>
          </div>
        </div>
      </div>
    );
  }

  // 3. Authorized Admin Layout
  return (
    <div className="min-h-screen bg-[#070C12] text-[#F9F6F0] flex">
      {/* Sidebar navigation */}
      <AdminSidebar
        isCollapsed={isCollapsed}
        setIsCollapsed={setIsCollapsed}
        isMobileOpen={isMobileOpen}
        setIsMobileOpen={setIsMobileOpen}
      />

      {/* Main Content Area */}
      <div
        className={`flex-1 flex flex-col min-w-0 transition-all duration-250 ${
          isCollapsed ? "md:pl-20" : "md:pl-64"
        }`}
      >
        <AdminHeader
          onOpenMobileMenu={() => setIsMobileOpen(true)}
          onOpenCommandPalette={() => setIsCommandPaletteOpen(true)}
          userEmail={userEmail}
        />

        <main className="flex-1 p-4 sm:p-6 lg:p-8 max-w-7xl w-full mx-auto">
          {children}
        </main>
      </div>

      {/* Operational Command Palette Modal */}
      <AdminCommandPalette
        isOpen={isCommandPaletteOpen}
        onClose={() => setIsCommandPaletteOpen(false)}
      />
    </div>
  );
}

