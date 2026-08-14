"use client";

import React, { useState, useEffect } from "react";
import { fetchAdminUsers } from "@/lib/services/adminService";
import { Users, Search, Shield, Calendar, Phone, Mail, Inbox } from "lucide-react";

export default function AdminUsersPage() {
  const [users, setUsers] = useState<any[]>([]);
  const [loading, setLoading] = useState(true);
  const [searchQuery, setSearchQuery] = useState("");

  useEffect(() => {
    async function load() {
      setLoading(true);
      const data = await fetchAdminUsers();
      setUsers(data);
      setLoading(false);
    }
    load();
  }, []);

  const filtered = users.filter(
    (u) =>
      (u.full_name && u.full_name.toLowerCase().includes(searchQuery.toLowerCase())) ||
      (u.phone && u.phone.includes(searchQuery))
  );

  return (
    <div className="space-y-6">
      <div>
        <h2 className="font-serif text-2xl font-bold text-white">Registered Pilgrim Profiles</h2>
        <p className="text-xs text-slate-400">
          User accounts and booking inquiry activity. (Sensitive auth tokens and passwords are excluded)
        </p>
      </div>

      <div className="relative max-w-md">
        <Search className="absolute left-3 top-1/2 -translate-y-1/2 w-4 h-4 text-slate-400" />
        <input
          type="text"
          placeholder="Search pilgrims by name or phone..."
          value={searchQuery}
          onChange={(e) => setSearchQuery(e.target.value)}
          className="w-full pl-9 pr-4 py-2 rounded-xl bg-[#0A1118] border border-[#D4AF37]/20 text-xs text-white focus:outline-none"
        />
      </div>

      <div className="rounded-3xl bg-[#0A1118] border border-[#D4AF37]/20 overflow-hidden shadow-xl">
        <table className="w-full text-left text-xs text-slate-300">
          <thead className="bg-white/[0.02] border-b border-white/10 text-slate-400 uppercase tracking-wider text-[10px]">
            <tr>
              <th className="py-3.5 px-4">Pilgrim Name</th>
              <th className="py-3.5 px-4">Phone Number</th>
              <th className="py-3.5 px-4">Inquiries Made</th>
              <th className="py-3.5 px-4">Language</th>
              <th className="py-3.5 px-4">Member Since</th>
            </tr>
          </thead>
          <tbody className="divide-y divide-white/5">
            {loading ? (
              <tr>
                <td colSpan={5} className="py-12 text-center text-slate-500">
                  Loading user profiles...
                </td>
              </tr>
            ) : filtered.length === 0 ? (
              <tr>
                <td colSpan={5} className="py-12 text-center text-slate-500">
                  No registered user profiles found.
                </td>
              </tr>
            ) : (
              filtered.map((user) => (
                <tr key={user.id} className="hover:bg-white/[0.02] transition">
                  <td className="py-3.5 px-4">
                    <div className="font-semibold text-white flex items-center gap-2">
                      <div className="w-7 h-7 rounded-lg bg-[#D4AF37]/15 text-[#D4AF37] flex items-center justify-center font-bold text-xs">
                        {user.full_name ? user.full_name[0].toUpperCase() : "P"}
                      </div>
                      <span>{user.full_name || "Anonymous Traveller"}</span>
                    </div>
                  </td>
                  <td className="py-3.5 px-4">{user.phone || "—"}</td>
                  <td className="py-3.5 px-4">
                    <span className="font-bold text-[#D4AF37] px-2 py-0.5 rounded-full bg-[#D4AF37]/10">
                      {user.enquiry_count || 0} Inquiries
                    </span>
                  </td>
                  <td className="py-3.5 px-4 uppercase text-slate-400">
                    {user.preferred_language || "EN"}
                  </td>
                  <td className="py-3.5 px-4 text-slate-400">
                    {new Date(user.created_at).toLocaleDateString()}
                  </td>
                </tr>
              ))
            )}
          </tbody>
        </table>
      </div>
    </div>
  );
}
