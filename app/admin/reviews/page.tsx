"use client";

import React, { useState, useEffect } from "react";
import { fetchAdminReviews, deleteReview } from "@/lib/services/adminService";
import { MessageSquare, Star, Trash2, ShieldCheck, Search } from "lucide-react";

export default function AdminReviewsPage() {
  const [reviews, setReviews] = useState<any[]>([]);
  const [loading, setLoading] = useState(true);
  const [searchQuery, setSearchQuery] = useState("");

  const loadReviews = async () => {
    setLoading(true);
    const data = await fetchAdminReviews();
    setReviews(data);
    setLoading(false);
  };

  useEffect(() => {
    loadReviews();
  }, []);

  const handleDelete = async (id: string) => {
    if (confirm("Delete this review permanently?")) {
      await deleteReview(id);
      loadReviews();
    }
  };

  const filtered = reviews.filter(
    (r) =>
      (r.comment && r.comment.toLowerCase().includes(searchQuery.toLowerCase())) ||
      (r.title && r.title.toLowerCase().includes(searchQuery.toLowerCase()))
  );

  return (
    <div className="space-y-6">
      <div className="flex flex-col sm:flex-row items-start sm:items-center justify-between gap-4">
        <div>
          <h2 className="font-serif text-2xl font-bold text-white">Review Moderation</h2>
          <p className="text-xs text-slate-400">Moderate pilgrim ratings and reviews for authenticity.</p>
        </div>
      </div>

      <div className="relative max-w-md">
        <Search className="absolute left-3 top-1/2 -translate-y-1/2 w-4 h-4 text-slate-400" />
        <input
          type="text"
          placeholder="Search reviews by comment text..."
          value={searchQuery}
          onChange={(e) => setSearchQuery(e.target.value)}
          className="w-full pl-9 pr-4 py-2 rounded-xl bg-[#0A1118] border border-[#D4AF37]/20 text-xs text-white focus:outline-none"
        />
      </div>

      <div className="space-y-3">
        {loading ? (
          <div className="text-xs text-slate-500 py-12 text-center">Loading reviews...</div>
        ) : filtered.length === 0 ? (
          <div className="p-8 rounded-2xl bg-[#0A1118] border border-[#D4AF37]/20 text-center text-xs text-slate-400">
            No reviews logged yet in Supabase.
          </div>
        ) : (
          filtered.map((rev) => (
            <div
              key={rev.id}
              className="p-5 rounded-2xl bg-[#0A1118] border border-[#D4AF37]/20 space-y-3 flex items-start justify-between"
            >
              <div className="space-y-1.5 flex-1">
                <div className="flex items-center gap-2">
                  <div className="flex items-center text-amber-400">
                    {[...Array(rev.rating || 5)].map((_, i) => (
                      <Star key={i} className="w-3.5 h-3.5 fill-current" />
                    ))}
                  </div>
                  {rev.packages?.name && (
                    <span className="text-[10px] font-semibold uppercase text-[#D4AF37] bg-[#D4AF37]/10 px-2 py-0.5 rounded-full">
                      {rev.packages.name}
                    </span>
                  )}
                </div>

                {rev.title && <h4 className="font-bold text-sm text-white">{rev.title}</h4>}
                <p className="text-xs text-slate-300">{rev.comment}</p>
                <span className="text-[10px] text-slate-500 block">
                  Posted on {new Date(rev.created_at).toLocaleDateString()}
                </span>
              </div>

              <button
                onClick={() => handleDelete(rev.id)}
                className="p-2 rounded-xl text-slate-400 hover:text-rose-400 hover:bg-rose-500/10 transition"
                title="Delete Review"
              >
                <Trash2 className="w-4 h-4" />
              </button>
            </div>
          ))
        )}
      </div>
    </div>
  );
}
