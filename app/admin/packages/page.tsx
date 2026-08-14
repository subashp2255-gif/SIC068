"use client";

import React, { useState, useEffect } from "react";
import Link from "next/link";
import {
  fetchAdminPackages,
  togglePackageStatus,
  deletePackagePermanent,
} from "@/lib/services/adminService";
import {
  Plus,
  Search,
  Filter,
  RefreshCw,
  Edit,
  Eye,
  Trash2,
  Copy,
  CheckCircle,
  Archive,
  Star,
  MapPin,
  Clock,
  Compass,
  AlertTriangle,
  X,
} from "lucide-react";

import { motion } from "framer-motion";
import { adminMotion } from "@/lib/animations";

export default function AdminPackagesPage() {
  const [packages, setPackages] = useState<any[]>([]);
  const [totalCount, setTotalCount] = useState(0);
  const [loading, setLoading] = useState(true);
  const [refreshing, setRefreshing] = useState(false);

  // Filters
  const [statusTab, setStatusTab] = useState<"all" | "active" | "draft">("all");
  const [searchQuery, setSearchQuery] = useState("");
  const [categoryFilter, setCategoryFilter] = useState("all");
  const [page, setPage] = useState(1);

  // Deletion modal
  const [deletePkg, setDeletePkg] = useState<any | null>(null);
  const [confirmSlug, setConfirmSlug] = useState("");
  const [deleteError, setDeleteError] = useState<string | null>(null);
  const [deleting, setDeleting] = useState(false);

  const loadPackages = async () => {
    setRefreshing(true);
    const res = await fetchAdminPackages({
      status: statusTab,
      category: categoryFilter,
      searchQuery,
      page,
      limit: 12,
    });
    setPackages(res.packages);
    setTotalCount(res.total);
    setLoading(false);
    setRefreshing(false);
  };

  useEffect(() => {
    loadPackages();
  }, [statusTab, categoryFilter, searchQuery, page]);

  const handleToggleStatus = async (id: string, currentStatus: boolean) => {
    await togglePackageStatus(id, !currentStatus);
    loadPackages();
  };

  const handleDelete = async () => {
    if (!deletePkg) return;
    if (confirmSlug.trim() !== deletePkg.slug) {
      setDeleteError(`Please type "${deletePkg.slug}" exactly to confirm.`);
      return;
    }

    setDeleting(true);
    setDeleteError(null);
    const res = await deletePackagePermanent(deletePkg.id, deletePkg.name);
    setDeleting(false);

    if (res.success) {
      setDeletePkg(null);
      setConfirmSlug("");
      loadPackages();
    } else {
      setDeleteError(res.error || "Failed to delete package.");
    }
  };

  return (
    <div className="space-y-6">
      {/* Header */}
      <div className="flex flex-col sm:flex-row items-start sm:items-center justify-between gap-4">
        <div>
          <h2 className="font-serif text-2xl sm:text-3xl font-bold text-[#F9F6F0]">
            Pilgrimage Package Catalogue
          </h2>
          <p className="text-xs sm:text-sm text-slate-400">
            Manage sacred tour itineraries, departures, pricing, and live website publishing.
          </p>
        </div>

        <div className="flex items-center gap-3">
          <button
            onClick={loadPackages}
            disabled={refreshing}
            className="flex items-center gap-2 px-3.5 py-2 rounded-xl bg-white/5 hover:bg-white/10 text-slate-300 text-xs font-semibold border border-white/10 transition"
          >
            <RefreshCw className={`w-3.5 h-3.5 ${refreshing ? "animate-spin text-[#D4AF37]" : ""}`} />
            <span>Refresh</span>
          </button>

          <Link
            href="/admin/packages/new"
            className="flex items-center gap-2 px-4 py-2 rounded-xl bg-gradient-to-r from-[#D4AF37] to-[#B38728] text-[#0A1118] font-bold text-xs shadow-md shadow-[#D4AF37]/20 hover:brightness-110 active:scale-95 transition"
          >
            <Plus className="w-4 h-4" />
            <span>Create New Package</span>
          </Link>
        </div>
      </div>

      {/* Tabs & Search Bar */}
      <div className="flex flex-col sm:flex-row items-stretch sm:items-center justify-between gap-3 bg-[#0A1118] border border-[#D4AF37]/20 rounded-2xl p-3 shadow-lg">
        {/* Status Tabs */}
        <div className="flex items-center gap-1 bg-white/5 p-1 rounded-xl">
          <button
            onClick={() => {
              setStatusTab("all");
              setPage(1);
            }}
            className={`px-3 py-1.5 rounded-lg text-xs font-semibold transition ${
              statusTab === "all" ? "bg-[#D4AF37] text-[#0A1118] shadow" : "text-slate-400 hover:text-white"
            }`}
          >
            All Packages
          </button>
          <button
            onClick={() => {
              setStatusTab("active");
              setPage(1);
            }}
            className={`px-3 py-1.5 rounded-lg text-xs font-semibold transition ${
              statusTab === "active" ? "bg-[#D4AF37] text-[#0A1118] shadow" : "text-slate-400 hover:text-white"
            }`}
          >
            Published
          </button>
          <button
            onClick={() => {
              setStatusTab("draft");
              setPage(1);
            }}
            className={`px-3 py-1.5 rounded-lg text-xs font-semibold transition ${
              statusTab === "draft" ? "bg-[#D4AF37] text-[#0A1118] shadow" : "text-slate-400 hover:text-white"
            }`}
          >
            Drafts / Archived
          </button>
        </div>

        {/* Search Input */}
        <div className="relative flex-1 sm:max-w-xs">
          <Search className="absolute left-3 top-1/2 -translate-y-1/2 w-4 h-4 text-slate-400" />
          <input
            type="text"
            placeholder="Search tours or slugs..."
            value={searchQuery}
            onChange={(e) => {
              setSearchQuery(e.target.value);
              setPage(1);
            }}
            className="w-full pl-9 pr-4 py-1.5 rounded-xl bg-white/5 border border-white/10 text-xs text-white placeholder-slate-500 focus:outline-none focus:border-[#D4AF37]/50"
          />
        </div>
      </div>

      {/* Package Grid / List */}
      {loading ? (
        <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6">
          {[...Array(6)].map((_, i) => (
            <div key={i} className="h-72 rounded-3xl bg-white/5 animate-pulse" />
          ))}
        </div>
      ) : packages.length === 0 ? (
        <div className="rounded-3xl bg-[#0A1118] border border-[#D4AF37]/20 p-12 text-center space-y-4">
          <Compass className="w-12 h-12 text-slate-600 mx-auto" />
          <h3 className="font-serif text-lg font-bold text-white">No Packages Found</h3>
          <p className="text-xs text-slate-400 max-w-sm mx-auto">
            No tours matched your selected status or search filter. Create a new package or adjust filters.
          </p>
          <Link
            href="/admin/packages/new"
            className="inline-flex items-center gap-2 px-4 py-2 rounded-xl bg-[#D4AF37] text-[#0A1118] font-bold text-xs shadow hover:brightness-110"
          >
            <Plus className="w-4 h-4" />
            <span>Create New Package</span>
          </Link>
        </div>
      ) : (
        <motion.div
          variants={adminMotion.cardStagger}
          initial="initial"
          animate="animate"
          className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6"
        >
          {packages.map((pkg) => (
            <motion.div
              key={pkg.id}
              variants={adminMotion.cardItem}
              className="rounded-3xl bg-[#0A1118] border border-[#D4AF37]/20 overflow-hidden shadow-xl hover:border-[#D4AF37]/40 transition-all duration-300 flex flex-col justify-between group"
            >

              {/* Cover Image & Status Badge */}
              <div className="relative h-44 w-full bg-slate-900 overflow-hidden">
                <img
                  src={pkg.image || "/images/placeholder.jpg"}
                  alt={pkg.name}
                  className="w-full h-full object-cover group-hover:scale-105 transition-transform duration-500"
                />
                <div className="absolute inset-0 bg-gradient-to-t from-[#0A1118] via-transparent to-black/40" />

                <div className="absolute top-3 left-3 flex items-center gap-2">
                  <span
                    className={`text-[10px] uppercase font-bold tracking-wider px-2.5 py-1 rounded-full backdrop-blur-md border ${
                      pkg.is_active
                        ? "bg-emerald-500/20 text-emerald-300 border-emerald-500/30"
                        : "bg-amber-500/20 text-amber-300 border-amber-500/30"
                    }`}
                  >
                    {pkg.is_active ? "Published" : "Draft / Hidden"}
                  </span>
                  {pkg.featured && (
                    <span className="text-[10px] uppercase font-bold tracking-wider px-2 py-0.5 rounded-full bg-[#D4AF37]/20 text-[#D4AF37] border border-[#D4AF37]/30 backdrop-blur-md">
                      Featured
                    </span>
                  )}
                </div>

                <div className="absolute bottom-3 left-3 right-3 flex items-center justify-between text-xs text-white">
                  <span className="font-semibold text-[#D4AF37] font-mono">
                    {pkg.duration_days}D / {pkg.duration_nights || pkg.duration_days - 1}N
                  </span>
                  <span className="font-bold">
                    {pkg.currency || "₹"} {Number(pkg.base_price || 0).toLocaleString()}
                  </span>
                </div>
              </div>

              {/* Package Content */}
              <div className="p-5 space-y-3 flex-1 flex flex-col justify-between">
                <div>
                  <div className="flex items-center gap-1.5 text-[11px] text-slate-400 mb-1">
                    <MapPin className="w-3.5 h-3.5 text-[#D4AF37]" />
                    <span className="truncate">{pkg.destination_name || pkg.location || "India"}</span>
                  </div>

                  <h3 className="font-serif text-base font-bold text-white line-clamp-1 group-hover:text-[#D4AF37] transition">
                    {pkg.name}
                  </h3>

                  <p className="text-xs text-slate-400 line-clamp-2 mt-1">
                    {pkg.summary || "Complete spiritual pilgrimage journey with guided darshans."}
                  </p>
                </div>

                {/* Slug & Metadata */}
                <div className="pt-3 border-t border-white/5 text-[11px] text-slate-400 flex items-center justify-between">
                  <span className="font-mono text-slate-500 truncate max-w-[150px]">{pkg.slug}</span>
                  <div className="flex items-center gap-1 text-amber-400 font-semibold">
                    <Star className="w-3.5 h-3.5 fill-current" />
                    <span>{pkg.rating || "4.9"}</span>
                  </div>
                </div>
              </div>

              {/* Actions Footer */}
              <div className="px-5 py-3.5 bg-white/[0.02] border-t border-white/10 flex items-center justify-between gap-2">
                <div className="flex items-center gap-1">
                  {/* Public Preview */}
                  <Link
                    href={`/packages/${pkg.slug}`}
                    target="_blank"
                    className="p-2 rounded-xl text-slate-400 hover:text-white hover:bg-white/5 transition"
                    title="View live public page"
                  >
                    <Eye className="w-4 h-4" />
                  </Link>

                  {/* Toggle Active / Draft */}
                  <button
                    onClick={() => handleToggleStatus(pkg.id, pkg.is_active)}
                    className={`p-2 rounded-xl transition ${
                      pkg.is_active
                        ? "text-emerald-400 hover:bg-emerald-500/10"
                        : "text-amber-400 hover:bg-amber-500/10"
                    }`}
                    title={pkg.is_active ? "Archive / Unpublish" : "Publish to live website"}
                  >
                    <CheckCircle className="w-4 h-4" />
                  </button>

                  {/* Permanent Delete */}
                  <button
                    onClick={() => {
                      setDeletePkg(pkg);
                      setConfirmSlug("");
                      setDeleteError(null);
                    }}
                    className="p-2 rounded-xl text-slate-400 hover:text-rose-400 hover:bg-rose-500/10 transition"
                    title="Delete package"
                  >
                    <Trash2 className="w-4 h-4" />
                  </button>
                </div>

                {/* Edit CTA */}
                <Link
                  href={`/admin/packages/${pkg.id}/edit`}
                  className="flex items-center gap-1.5 px-3 py-1.5 rounded-xl bg-[#D4AF37]/15 hover:bg-[#D4AF37]/25 text-[#D4AF37] border border-[#D4AF37]/30 text-xs font-bold transition"
                >
                  <Edit className="w-3.5 h-3.5" />
                  <span>Edit Itinerary</span>
                </Link>
              </div>
            </motion.div>
          ))}
        </motion.div>
      )}


      {/* Delete Confirmation Modal */}
      {deletePkg && (
        <>
          <div
            onClick={() => setDeletePkg(null)}
            className="fixed inset-0 z-50 bg-black/80 backdrop-blur-sm animate-in fade-in"
          />
          <div className="fixed left-1/2 top-1/2 -translate-x-1/2 -translate-y-1/2 z-50 w-full max-w-md bg-[#0A1118] border border-rose-500/30 rounded-3xl p-6 shadow-2xl space-y-4 animate-in zoom-in-95">
            <div className="flex items-center justify-between">
              <div className="flex items-center gap-3 text-rose-400">
                <div className="p-2.5 rounded-2xl bg-rose-500/10 border border-rose-500/20">
                  <AlertTriangle className="w-6 h-6" />
                </div>
                <h3 className="font-serif text-lg font-bold text-white">Delete Package</h3>
              </div>
              <button
                onClick={() => setDeletePkg(null)}
                className="p-1 rounded text-slate-400 hover:text-white"
              >
                <X className="w-5 h-5" />
              </button>
            </div>

            <div className="space-y-2 text-xs text-slate-300">
              <p>
                Are you sure you want to permanently delete{" "}
                <span className="font-bold text-white">{deletePkg.name}</span>?
              </p>
              <p className="text-slate-400">
                If this tour has existing historical inquiries, the system will block deletion to preserve records. You should archive it instead.
              </p>
            </div>

            <div className="space-y-1.5">
              <label className="text-[11px] font-semibold text-slate-400">
                Type <span className="font-mono text-[#D4AF37]">{deletePkg.slug}</span> to confirm:
              </label>
              <input
                type="text"
                placeholder={deletePkg.slug}
                value={confirmSlug}
                onChange={(e) => setConfirmSlug(e.target.value)}
                className="w-full px-3 py-2 rounded-xl bg-white/5 border border-white/10 text-xs text-white placeholder-slate-600 focus:outline-none focus:border-rose-500"
              />
            </div>

            {deleteError && (
              <div className="p-3 rounded-xl bg-rose-500/10 border border-rose-500/30 text-xs text-rose-400">
                {deleteError}
              </div>
            )}

            <div className="flex items-center justify-end gap-3 pt-2">
              <button
                onClick={() => setDeletePkg(null)}
                className="px-4 py-2 rounded-xl bg-white/5 hover:bg-white/10 text-xs text-slate-300 font-semibold"
              >
                Cancel
              </button>
              <button
                onClick={handleDelete}
                disabled={deleting || confirmSlug !== deletePkg.slug}
                className="px-4 py-2 rounded-xl bg-rose-500 hover:bg-rose-600 text-white font-bold text-xs shadow-lg disabled:opacity-50 transition"
              >
                {deleting ? "Deleting..." : "Confirm Delete"}
              </button>
            </div>
          </div>
        </>
      )}
    </div>
  );
}
