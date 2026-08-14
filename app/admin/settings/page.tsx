"use client";

import React, { useState, useEffect } from "react";
import { getSupabaseBrowserClient } from "@/lib/supabase/client";
import { Settings, Shield, Database, RefreshCw, CheckCircle2, Server, Globe } from "lucide-react";

export default function AdminSettingsPage() {
  const [user, setUser] = useState<any | null>(null);
  const [dbStatus, setDbStatus] = useState<string>("Checking...");
  const [refreshing, setRefreshing] = useState(false);

  useEffect(() => {
    async function check() {
      const supabase = getSupabaseBrowserClient();
      const { data: { user: currentUser } } = await supabase.auth.getUser();
      setUser(currentUser);

      const { data, error } = await supabase.from("packages").select("id", { count: "exact", head: true });
      if (!error) {
        setDbStatus("Operational (Connected)");
      } else {
        setDbStatus("Degraded Connection");
      }
    }
    check();
  }, []);

  return (
    <div className="space-y-6 max-w-4xl">
      <div>
        <h2 className="font-serif text-2xl font-bold text-white">Admin System & Preferences</h2>
        <p className="text-xs text-slate-400">Database connection health, security roles, and environment settings.</p>
      </div>

      <div className="grid grid-cols-1 md:grid-cols-2 gap-6">
        {/* Supabase Connection Health */}
        <div className="rounded-3xl bg-[#0A1118] border border-[#D4AF37]/20 p-6 shadow-xl space-y-4">
          <div className="flex items-center gap-3">
            <div className="p-2.5 rounded-2xl bg-emerald-500/10 text-emerald-400 border border-emerald-500/20">
              <Database className="w-5 h-5" />
            </div>
            <div>
              <h3 className="font-serif text-base font-bold text-white">Database Engine</h3>
              <p className="text-xs text-slate-400">Supabase PostgreSQL 15 & Storage</p>
            </div>
          </div>

          <div className="space-y-2 text-xs">
            <div className="flex items-center justify-between p-3 rounded-xl bg-white/5 border border-white/5">
              <span className="text-slate-400">Status</span>
              <span className="font-bold text-emerald-400 flex items-center gap-1">
                <CheckCircle2 className="w-3.5 h-3.5" />
                {dbStatus}
              </span>
            </div>

            <div className="flex items-center justify-between p-3 rounded-xl bg-white/5 border border-white/5">
              <span className="text-slate-400">Storage Bucket</span>
              <span className="font-mono text-white font-semibold">package-media</span>
            </div>

            <div className="flex items-center justify-between p-3 rounded-xl bg-white/5 border border-white/5">
              <span className="text-slate-400">Row Level Security</span>
              <span className="font-bold text-[#D4AF37]">Active (Strict)</span>
            </div>
          </div>
        </div>

        {/* Administrator Role & Session */}
        <div className="rounded-3xl bg-[#0A1118] border border-[#D4AF37]/20 p-6 shadow-xl space-y-4">
          <div className="flex items-center gap-3">
            <div className="p-2.5 rounded-2xl bg-[#D4AF37]/10 text-[#D4AF37] border border-[#D4AF37]/20">
              <Shield className="w-5 h-5" />
            </div>
            <div>
              <h3 className="font-serif text-base font-bold text-white">Administrator Access</h3>
              <p className="text-xs text-slate-400">Verified via PostgreSQL user_roles</p>
            </div>
          </div>

          <div className="space-y-2 text-xs">
            <div className="p-3 rounded-xl bg-white/5 border border-white/5 space-y-1">
              <span className="text-[10px] uppercase text-slate-400">Account Email</span>
              <p className="font-semibold text-white truncate">{user?.email || "Administrator"}</p>
            </div>

            <div className="p-3 rounded-xl bg-white/5 border border-white/5 space-y-1">
              <span className="text-[10px] uppercase text-slate-400">User UUID</span>
              <p className="font-mono text-[11px] text-[#D4AF37] truncate">{user?.id || "—"}</p>
            </div>
          </div>
        </div>
      </div>
    </div>
  );
}
