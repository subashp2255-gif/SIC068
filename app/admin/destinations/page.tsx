"use client";

import React, { useState, useEffect } from "react";
import {
  fetchAdminDestinations,
  saveDestination,
  deleteDestination,
} from "@/lib/services/adminService";
import { Plus, Search, MapPin, Edit, Trash2, CheckCircle2, RefreshCw, X } from "lucide-react";

export default function AdminDestinationsPage() {
  const [destinations, setDestinations] = useState<any[]>([]);
  const [loading, setLoading] = useState(true);
  const [searchQuery, setSearchQuery] = useState("");
  const [editingDest, setEditingDest] = useState<any | null>(null);
  const [saving, setSaving] = useState(false);

  const loadDestinations = async () => {
    setLoading(true);
    const data = await fetchAdminDestinations();
    setDestinations(data);
    setLoading(false);
  };

  useEffect(() => {
    loadDestinations();
  }, []);

  const handleSave = async (e: React.FormEvent) => {
    e.preventDefault();
    if (!editingDest) return;
    setSaving(true);
    const res = await saveDestination(editingDest);
    setSaving(false);
    if (res.success) {
      setEditingDest(null);
      loadDestinations();
    }
  };

  const handleDelete = async (id: string, name: string) => {
    if (confirm(`Are you sure you want to delete destination "${name}"?`)) {
      await deleteDestination(id, name);
      loadDestinations();
    }
  };

  const filtered = destinations.filter(
    (d) =>
      d.name.toLowerCase().includes(searchQuery.toLowerCase()) ||
      (d.state && d.state.toLowerCase().includes(searchQuery.toLowerCase())) ||
      (d.region && d.region.toLowerCase().includes(searchQuery.toLowerCase()))
  );

  return (
    <div className="space-y-6">
      <div className="flex flex-col sm:flex-row items-start sm:items-center justify-between gap-4">
        <div>
          <h2 className="font-serif text-2xl sm:text-3xl font-bold text-[#F9F6F0]">
            Sacred Destinations Directory
          </h2>
          <p className="text-xs sm:text-sm text-slate-400">
            Manage pilgrimage holy sites, shrines, and geographical regions.
          </p>
        </div>

        <button
          onClick={() =>
            setEditingDest({
              name: "",
              slug: "",
              city: "",
              state: "",
              region: "South India",
              country: "India",
              description: "",
              spiritual_significance: "",
              best_months: "October - March",
              image_url: "/images/placeholder.jpg",
              is_active: true,
            })
          }
          className="flex items-center gap-2 px-4 py-2 rounded-xl bg-gradient-to-r from-[#D4AF37] to-[#B38728] text-[#0A1118] font-bold text-xs shadow-md hover:brightness-110 active:scale-95 transition"
        >
          <Plus className="w-4 h-4" />
          <span>Add Destination</span>
        </button>
      </div>

      {/* Search */}
      <div className="relative max-w-md">
        <Search className="absolute left-3 top-1/2 -translate-y-1/2 w-4 h-4 text-slate-400" />
        <input
          type="text"
          placeholder="Search destinations by name or state..."
          value={searchQuery}
          onChange={(e) => setSearchQuery(e.target.value)}
          className="w-full pl-9 pr-4 py-2 rounded-xl bg-[#0A1118] border border-[#D4AF37]/20 text-xs sm:text-sm text-white focus:outline-none focus:border-[#D4AF37]/50"
        />
      </div>

      {/* Destinations Grid */}
      <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6">
        {filtered.map((dest) => (
          <div
            key={dest.id}
            className="rounded-3xl bg-[#0A1118] border border-[#D4AF37]/20 p-5 shadow-xl space-y-4 flex flex-col justify-between hover:border-[#D4AF37]/40 transition group"
          >
            <div className="flex items-start gap-3.5">
              <div className="w-14 h-14 rounded-2xl bg-slate-800 overflow-hidden flex-shrink-0 border border-white/10">
                <img
                  src={dest.image_url || "/images/placeholder.jpg"}
                  alt={dest.name}
                  className="w-full h-full object-cover"
                />
              </div>
              <div className="min-w-0 flex-1">
                <span className="text-[10px] uppercase font-bold tracking-wider text-[#D4AF37]">
                  {dest.region || "India"}
                </span>
                <h3 className="font-serif text-base font-bold text-white truncate">
                  {dest.name}
                </h3>
                <p className="text-xs text-slate-400">
                  {[dest.city, dest.state].filter(Boolean).join(", ")}
                </p>
              </div>
            </div>

            {dest.spiritual_significance && (
              <p className="text-xs text-slate-300 line-clamp-2 italic">
                "{dest.spiritual_significance}"
              </p>
            )}

            <div className="pt-3 border-t border-white/10 flex items-center justify-between">
              <span className="text-[11px] text-slate-500 font-mono">{dest.slug}</span>
              <div className="flex items-center gap-2">
                <button
                  onClick={() => setEditingDest(dest)}
                  className="p-1.5 rounded-lg text-slate-400 hover:text-white hover:bg-white/5 transition"
                  title="Edit Destination"
                >
                  <Edit className="w-4 h-4" />
                </button>
                <button
                  onClick={() => handleDelete(dest.id, dest.name)}
                  className="p-1.5 rounded-lg text-slate-400 hover:text-rose-400 hover:bg-rose-500/10 transition"
                  title="Delete Destination"
                >
                  <Trash2 className="w-4 h-4" />
                </button>
              </div>
            </div>
          </div>
        ))}
      </div>

      {/* Edit/Create Modal */}
      {editingDest && (
        <>
          <div
            onClick={() => setEditingDest(null)}
            className="fixed inset-0 z-50 bg-black/80 backdrop-blur-sm animate-in fade-in"
          />
          <form
            onSubmit={handleSave}
            className="fixed left-1/2 top-1/2 -translate-x-1/2 -translate-y-1/2 z-50 w-full max-w-lg bg-[#0A1118] border border-[#D4AF37]/30 rounded-3xl p-6 shadow-2xl space-y-4 max-h-[90vh] overflow-y-auto"
          >
            <div className="flex items-center justify-between border-b border-white/10 pb-3">
              <h3 className="font-serif text-lg font-bold text-white">
                {editingDest.id ? "Edit Destination" : "Add Sacred Destination"}
              </h3>
              <button
                type="button"
                onClick={() => setEditingDest(null)}
                className="p-1 text-slate-400 hover:text-white"
              >
                <X className="w-5 h-5" />
              </button>
            </div>

            <div className="grid grid-cols-2 gap-3 text-xs">
              <div className="col-span-2 space-y-1">
                <label className="font-semibold text-slate-300">Name *</label>
                <input
                  type="text"
                  required
                  value={editingDest.name}
                  onChange={(e) =>
                    setEditingDest({
                      ...editingDest,
                      name: e.target.value,
                      slug: editingDest.slug || e.target.value.toLowerCase().replace(/[^a-z0-9]+/g, "-"),
                    })
                  }
                  className="w-full px-3 py-2 rounded-xl bg-white/5 border border-white/10 text-white"
                />
              </div>

              <div className="col-span-2 space-y-1">
                <label className="font-semibold text-slate-300">URL Slug *</label>
                <input
                  type="text"
                  required
                  value={editingDest.slug}
                  onChange={(e) => setEditingDest({ ...editingDest, slug: e.target.value })}
                  className="w-full px-3 py-2 rounded-xl bg-white/5 border border-white/10 text-white font-mono"
                />
              </div>

              <div className="space-y-1">
                <label className="font-semibold text-slate-300">City</label>
                <input
                  type="text"
                  value={editingDest.city || ""}
                  onChange={(e) => setEditingDest({ ...editingDest, city: e.target.value })}
                  className="w-full px-3 py-2 rounded-xl bg-white/5 border border-white/10 text-white"
                />
              </div>

              <div className="space-y-1">
                <label className="font-semibold text-slate-300">State</label>
                <input
                  type="text"
                  value={editingDest.state || ""}
                  onChange={(e) => setEditingDest({ ...editingDest, state: e.target.value })}
                  className="w-full px-3 py-2 rounded-xl bg-white/5 border border-white/10 text-white"
                />
              </div>

              <div className="col-span-2 space-y-1">
                <label className="font-semibold text-slate-300">Spiritual Significance</label>
                <textarea
                  rows={2}
                  value={editingDest.spiritual_significance || ""}
                  onChange={(e) =>
                    setEditingDest({ ...editingDest, spiritual_significance: e.target.value })
                  }
                  className="w-full p-2.5 rounded-xl bg-white/5 border border-white/10 text-white"
                />
              </div>

              <div className="col-span-2 space-y-1">
                <label className="font-semibold text-slate-300">Image URL</label>
                <input
                  type="text"
                  value={editingDest.image_url || ""}
                  onChange={(e) => setEditingDest({ ...editingDest, image_url: e.target.value })}
                  className="w-full px-3 py-2 rounded-xl bg-white/5 border border-white/10 text-white font-mono"
                />
              </div>
            </div>

            <div className="flex justify-end gap-3 pt-3 border-t border-white/10">
              <button
                type="button"
                onClick={() => setEditingDest(null)}
                className="px-4 py-2 rounded-xl bg-white/5 text-slate-300 text-xs font-semibold"
              >
                Cancel
              </button>
              <button
                type="submit"
                disabled={saving}
                className="px-4 py-2 rounded-xl bg-[#D4AF37] text-[#0A1118] text-xs font-bold shadow hover:brightness-110"
              >
                {saving ? "Saving..." : "Save Destination"}
              </button>
            </div>
          </form>
        </>
      )}
    </div>
  );
}
