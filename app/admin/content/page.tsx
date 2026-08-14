"use client";

import React, { useState, useEffect } from "react";
import {
  fetchAdminFAQs,
  saveFAQ,
  deleteFAQ,
  fetchAdminTestimonials,
  saveTestimonial,
  deleteTestimonial,
} from "@/lib/services/adminService";
import { Plus, HelpCircle, MessageSquareQuote, Edit, Trash2, X, Star } from "lucide-react";

export default function AdminContentPage() {
  const [activeTab, setActiveTab] = useState<"faqs" | "testimonials">("faqs");
  const [faqs, setFaqs] = useState<any[]>([]);
  const [testimonials, setTestimonials] = useState<any[]>([]);

  // FAQ Modal
  const [editingFaq, setEditingFaq] = useState<any | null>(null);
  // Testimonial Modal
  const [editingTestimonial, setEditingTestimonial] = useState<any | null>(null);

  const loadData = async () => {
    const [faqData, testData] = await Promise.all([
      fetchAdminFAQs(),
      fetchAdminTestimonials(),
    ]);
    setFaqs(faqData);
    setTestimonials(testData);
  };

  useEffect(() => {
    loadData();
  }, []);

  const handleSaveFAQ = async (e: React.FormEvent) => {
    e.preventDefault();
    if (!editingFaq) return;
    const res = await saveFAQ(editingFaq);
    if (res.success) {
      setEditingFaq(null);
      loadData();
    }
  };

  const handleDeleteFAQ = async (id: string) => {
    if (confirm("Delete this FAQ?")) {
      await deleteFAQ(id);
      loadData();
    }
  };

  const handleSaveTestimonial = async (e: React.FormEvent) => {
    e.preventDefault();
    if (!editingTestimonial) return;
    const res = await saveTestimonial(editingTestimonial);
    if (res.success) {
      setEditingTestimonial(null);
      loadData();
    }
  };

  const handleDeleteTestimonial = async (id: string) => {
    if (confirm("Delete this testimonial?")) {
      await deleteTestimonial(id);
      loadData();
    }
  };

  return (
    <div className="space-y-6">
      <div className="flex flex-col sm:flex-row items-start sm:items-center justify-between gap-4">
        <div>
          <h2 className="font-serif text-2xl font-bold text-white">Content & FAQ Management</h2>
          <p className="text-xs text-slate-400">Manage pilgrim FAQs, answers, and traveller testimonials.</p>
        </div>

        <div className="flex items-center gap-2">
          {activeTab === "faqs" ? (
            <button
              onClick={() =>
                setEditingFaq({
                  question: "",
                  answer: "",
                  category: "General",
                  display_order: faqs.length + 1,
                  is_active: true,
                })
              }
              className="flex items-center gap-2 px-4 py-2 rounded-xl bg-[#D4AF37] text-[#0A1118] font-bold text-xs shadow hover:brightness-110"
            >
              <Plus className="w-4 h-4" />
              <span>Add FAQ</span>
            </button>
          ) : (
            <button
              onClick={() =>
                setEditingTestimonial({
                  traveller_name: "",
                  traveller_location: "",
                  quote: "",
                  rating: 5,
                  trip_name: "Rameshwaram Yatra",
                  is_featured: false,
                  is_active: true,
                })
              }
              className="flex items-center gap-2 px-4 py-2 rounded-xl bg-[#D4AF37] text-[#0A1118] font-bold text-xs shadow hover:brightness-110"
            >
              <Plus className="w-4 h-4" />
              <span>Add Testimonial</span>
            </button>
          )}
        </div>
      </div>

      {/* Tabs */}
      <div className="flex items-center gap-2 bg-[#0A1118] border border-[#D4AF37]/20 p-1.5 rounded-2xl max-w-sm">
        <button
          onClick={() => setActiveTab("faqs")}
          className={`flex-1 flex items-center justify-center gap-2 py-2 rounded-xl text-xs font-bold transition ${
            activeTab === "faqs" ? "bg-[#D4AF37] text-[#0A1118] shadow" : "text-slate-400 hover:text-white"
          }`}
        >
          <HelpCircle className="w-4 h-4" />
          <span>FAQs ({faqs.length})</span>
        </button>
        <button
          onClick={() => setActiveTab("testimonials")}
          className={`flex-1 flex items-center justify-center gap-2 py-2 rounded-xl text-xs font-bold transition ${
            activeTab === "testimonials" ? "bg-[#D4AF37] text-[#0A1118] shadow" : "text-slate-400 hover:text-white"
          }`}
        >
          <MessageSquareQuote className="w-4 h-4" />
          <span>Testimonials ({testimonials.length})</span>
        </button>
      </div>

      {/* FAQs List */}
      {activeTab === "faqs" && (
        <div className="space-y-3">
          {faqs.map((faq) => (
            <div
              key={faq.id}
              className="rounded-2xl bg-[#0A1118] border border-[#D4AF37]/20 p-5 shadow-lg space-y-2"
            >
              <div className="flex items-start justify-between gap-4">
                <div className="space-y-1">
                  <span className="text-[10px] uppercase font-bold text-[#D4AF37] bg-[#D4AF37]/10 px-2 py-0.5 rounded-md">
                    {faq.category || "General"}
                  </span>
                  <h4 className="font-serif text-sm font-bold text-white">{faq.question}</h4>
                </div>
                <div className="flex items-center gap-1.5">
                  <button
                    onClick={() => setEditingFaq(faq)}
                    className="p-1.5 rounded-lg text-slate-400 hover:text-white hover:bg-white/5"
                  >
                    <Edit className="w-4 h-4" />
                  </button>
                  <button
                    onClick={() => handleDeleteFAQ(faq.id)}
                    className="p-1.5 rounded-lg text-slate-400 hover:text-rose-400 hover:bg-rose-500/10"
                  >
                    <Trash2 className="w-4 h-4" />
                  </button>
                </div>
              </div>
              <p className="text-xs text-slate-300 whitespace-pre-line">{faq.answer}</p>
            </div>
          ))}
        </div>
      )}

      {/* Testimonials List */}
      {activeTab === "testimonials" && (
        <div className="grid grid-cols-1 md:grid-cols-2 gap-4">
          {testimonials.map((t) => (
            <div
              key={t.id}
              className="rounded-2xl bg-[#0A1118] border border-[#D4AF37]/20 p-5 shadow-lg space-y-3 flex flex-col justify-between"
            >
              <div className="space-y-2">
                <div className="flex items-center justify-between">
                  <div className="flex items-center gap-1 text-amber-400">
                    {[...Array(t.rating || 5)].map((_, i) => (
                      <Star key={i} className="w-3.5 h-3.5 fill-current" />
                    ))}
                  </div>
                  <div className="flex items-center gap-1">
                    <button
                      onClick={() => setEditingTestimonial(t)}
                      className="p-1 rounded text-slate-400 hover:text-white"
                    >
                      <Edit className="w-3.5 h-3.5" />
                    </button>
                    <button
                      onClick={() => handleDeleteTestimonial(t.id)}
                      className="p-1 rounded text-slate-400 hover:text-rose-400"
                    >
                      <Trash2 className="w-3.5 h-3.5" />
                    </button>
                  </div>
                </div>
                <p className="text-xs text-slate-200 italic">"{t.quote}"</p>
              </div>

              <div className="pt-2 border-t border-white/10 text-xs">
                <span className="font-bold text-white">{t.traveller_name}</span>
                <span className="text-slate-400 block text-[11px]">
                  {[t.traveller_location, t.trip_name].filter(Boolean).join(" • ")}
                </span>
              </div>
            </div>
          ))}
        </div>
      )}

      {/* FAQ Modal */}
      {editingFaq && (
        <>
          <div onClick={() => setEditingFaq(null)} className="fixed inset-0 z-50 bg-black/80 backdrop-blur-sm" />
          <form
            onSubmit={handleSaveFAQ}
            className="fixed left-1/2 top-1/2 -translate-x-1/2 -translate-y-1/2 z-50 w-full max-w-lg bg-[#0A1118] border border-[#D4AF37]/30 rounded-3xl p-6 shadow-2xl space-y-4 text-xs"
          >
            <div className="flex items-center justify-between border-b border-white/10 pb-3">
              <h3 className="font-serif text-base font-bold text-white">FAQ Editor</h3>
              <button type="button" onClick={() => setEditingFaq(null)} className="p-1 text-slate-400">
                <X className="w-5 h-5" />
              </button>
            </div>

            <div className="space-y-1">
              <label className="font-semibold text-slate-300">Category</label>
              <input
                type="text"
                value={editingFaq.category || "General"}
                onChange={(e) => setEditingFaq({ ...editingFaq, category: e.target.value })}
                className="w-full px-3 py-2 rounded-xl bg-white/5 border border-white/10 text-white"
              />
            </div>

            <div className="space-y-1">
              <label className="font-semibold text-slate-300">Question *</label>
              <input
                type="text"
                required
                value={editingFaq.question}
                onChange={(e) => setEditingFaq({ ...editingFaq, question: e.target.value })}
                className="w-full px-3 py-2 rounded-xl bg-white/5 border border-white/10 text-white"
              />
            </div>

            <div className="space-y-1">
              <label className="font-semibold text-slate-300">Answer *</label>
              <textarea
                rows={4}
                required
                value={editingFaq.answer}
                onChange={(e) => setEditingFaq({ ...editingFaq, answer: e.target.value })}
                className="w-full p-2.5 rounded-xl bg-white/5 border border-white/10 text-white"
              />
            </div>

            <div className="flex justify-end gap-2 pt-2">
              <button
                type="button"
                onClick={() => setEditingFaq(null)}
                className="px-4 py-2 rounded-xl bg-white/5 text-slate-300"
              >
                Cancel
              </button>
              <button type="submit" className="px-4 py-2 rounded-xl bg-[#D4AF37] text-[#0A1118] font-bold">
                Save FAQ
              </button>
            </div>
          </form>
        </>
      )}

      {/* Testimonial Modal */}
      {editingTestimonial && (
        <>
          <div onClick={() => setEditingTestimonial(null)} className="fixed inset-0 z-50 bg-black/80 backdrop-blur-sm" />
          <form
            onSubmit={handleSaveTestimonial}
            className="fixed left-1/2 top-1/2 -translate-x-1/2 -translate-y-1/2 z-50 w-full max-w-lg bg-[#0A1118] border border-[#D4AF37]/30 rounded-3xl p-6 shadow-2xl space-y-4 text-xs"
          >
            <div className="flex items-center justify-between border-b border-white/10 pb-3">
              <h3 className="font-serif text-base font-bold text-white">Testimonial Editor</h3>
              <button type="button" onClick={() => setEditingTestimonial(null)} className="p-1 text-slate-400">
                <X className="w-5 h-5" />
              </button>
            </div>

            <div className="grid grid-cols-2 gap-3">
              <div className="space-y-1">
                <label className="font-semibold text-slate-300">Traveller Name *</label>
                <input
                  type="text"
                  required
                  value={editingTestimonial.traveller_name}
                  onChange={(e) => setEditingTestimonial({ ...editingTestimonial, traveller_name: e.target.value })}
                  className="w-full px-3 py-2 rounded-xl bg-white/5 border border-white/10 text-white"
                />
              </div>

              <div className="space-y-1">
                <label className="font-semibold text-slate-300">Location</label>
                <input
                  type="text"
                  value={editingTestimonial.traveller_location || ""}
                  onChange={(e) => setEditingTestimonial({ ...editingTestimonial, traveller_location: e.target.value })}
                  className="w-full px-3 py-2 rounded-xl bg-white/5 border border-white/10 text-white"
                />
              </div>

              <div className="col-span-2 space-y-1">
                <label className="font-semibold text-slate-300">Testimonial Quote *</label>
                <textarea
                  rows={3}
                  required
                  value={editingTestimonial.quote}
                  onChange={(e) => setEditingTestimonial({ ...editingTestimonial, quote: e.target.value })}
                  className="w-full p-2.5 rounded-xl bg-white/5 border border-white/10 text-white"
                />
              </div>

              <div className="space-y-1">
                <label className="font-semibold text-slate-300">Tour / Trip Name</label>
                <input
                  type="text"
                  value={editingTestimonial.trip_name || ""}
                  onChange={(e) => setEditingTestimonial({ ...editingTestimonial, trip_name: e.target.value })}
                  className="w-full px-3 py-2 rounded-xl bg-white/5 border border-white/10 text-white"
                />
              </div>

              <div className="space-y-1">
                <label className="font-semibold text-slate-300">Rating (1-5)</label>
                <input
                  type="number"
                  min={1}
                  max={5}
                  value={editingTestimonial.rating || 5}
                  onChange={(e) => setEditingTestimonial({ ...editingTestimonial, rating: Number(e.target.value) })}
                  className="w-full px-3 py-2 rounded-xl bg-white/5 border border-white/10 text-white"
                />
              </div>
            </div>

            <div className="flex justify-end gap-2 pt-2">
              <button
                type="button"
                onClick={() => setEditingTestimonial(null)}
                className="px-4 py-2 rounded-xl bg-white/5 text-slate-300"
              >
                Cancel
              </button>
              <button type="submit" className="px-4 py-2 rounded-xl bg-[#D4AF37] text-[#0A1118] font-bold">
                Save Testimonial
              </button>
            </div>
          </form>
        </>
      )}
    </div>
  );
}
