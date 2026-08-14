"use client";

import React, { useState, useEffect } from "react";
import {
  fetchAdminCategories,
  saveCategory,
  deleteCategory,
} from "@/lib/services/adminService";
import { Plus, Tag, Edit, Trash2, X } from "lucide-react";

export default function AdminCategoriesPage() {
  const [categories, setCategories] = useState<any[]>([]);
  const [editingCat, setEditingCat] = useState<any | null>(null);
  const [saving, setSaving] = useState(false);

  const loadCategories = async () => {
    const data = await fetchAdminCategories();
    setCategories(data);
  };

  useEffect(() => {
    loadCategories();
  }, []);

  const handleSave = async (e: React.FormEvent) => {
    e.preventDefault();
    if (!editingCat) return;
    setSaving(true);
    const res = await saveCategory(editingCat);
    setSaving(false);
    if (res.success) {
      setEditingCat(null);
      loadCategories();
    }
  };

  const handleDelete = async (id: string, name: string) => {
    if (confirm(`Delete category "${name}"?`)) {
      await deleteCategory(id, name);
      loadCategories();
    }
  };

  return (
    <div className="space-y-6">
      <div className="flex items-center justify-between">
        <div>
          <h2 className="font-serif text-2xl font-bold text-white">Yatra Categories</h2>
          <p className="text-xs text-slate-400">Classify tours by spiritual tradition and pilgrimage style.</p>
        </div>
        <button
          onClick={() =>
            setEditingCat({
              name: "",
              slug: "",
              description: "",
              icon_name: "Compass",
              display_order: categories.length + 1,
              is_active: true,
            })
          }
          className="flex items-center gap-2 px-4 py-2 rounded-xl bg-[#D4AF37] text-[#0A1118] font-bold text-xs shadow hover:brightness-110"
        >
          <Plus className="w-4 h-4" />
          <span>New Category</span>
        </button>
      </div>

      <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-4">
        {categories.map((cat) => (
          <div
            key={cat.id}
            className="rounded-2xl bg-[#0A1118] border border-[#D4AF37]/20 p-5 shadow-lg flex items-center justify-between"
          >
            <div className="flex items-center gap-3.5">
              <div className="w-10 h-10 rounded-xl bg-[#D4AF37]/10 border border-[#D4AF37]/20 text-[#D4AF37] flex items-center justify-center font-bold text-xs">
                #{cat.display_order}
              </div>
              <div>
                <h3 className="font-serif text-base font-bold text-white">{cat.name}</h3>
                <span className="text-[11px] text-slate-500 font-mono">{cat.slug}</span>
              </div>
            </div>

            <div className="flex items-center gap-1.5">
              <button
                onClick={() => setEditingCat(cat)}
                className="p-1.5 rounded-lg text-slate-400 hover:text-white hover:bg-white/5"
              >
                <Edit className="w-4 h-4" />
              </button>
              <button
                onClick={() => handleDelete(cat.id, cat.name)}
                className="p-1.5 rounded-lg text-slate-400 hover:text-rose-400 hover:bg-rose-500/10"
              >
                <Trash2 className="w-4 h-4" />
              </button>
            </div>
          </div>
        ))}
      </div>

      {editingCat && (
        <>
          <div
            onClick={() => setEditingCat(null)}
            className="fixed inset-0 z-50 bg-black/80 backdrop-blur-sm"
          />
          <form
            onSubmit={handleSave}
            className="fixed left-1/2 top-1/2 -translate-x-1/2 -translate-y-1/2 z-50 w-full max-w-md bg-[#0A1118] border border-[#D4AF37]/30 rounded-3xl p-6 shadow-2xl space-y-4 text-xs"
          >
            <div className="flex items-center justify-between border-b border-white/10 pb-3">
              <h3 className="font-serif text-base font-bold text-white">
                {editingCat.id ? "Edit Category" : "New Category"}
              </h3>
              <button type="button" onClick={() => setEditingCat(null)} className="p-1 text-slate-400">
                <X className="w-5 h-5" />
              </button>
            </div>

            <div className="space-y-1">
              <label className="font-semibold text-slate-300">Name *</label>
              <input
                type="text"
                required
                value={editingCat.name}
                onChange={(e) =>
                  setEditingCat({
                    ...editingCat,
                    name: e.target.value,
                    slug: editingCat.slug || e.target.value.toLowerCase().replace(/[^a-z0-9]+/g, "-"),
                  })
                }
                className="w-full px-3 py-2 rounded-xl bg-white/5 border border-white/10 text-white"
              />
            </div>

            <div className="space-y-1">
              <label className="font-semibold text-slate-300">Slug *</label>
              <input
                type="text"
                required
                value={editingCat.slug}
                onChange={(e) => setEditingCat({ ...editingCat, slug: e.target.value })}
                className="w-full px-3 py-2 rounded-xl bg-white/5 border border-white/10 text-white font-mono"
              />
            </div>

            <div className="space-y-1">
              <label className="font-semibold text-slate-300">Display Order</label>
              <input
                type="number"
                value={editingCat.display_order || 1}
                onChange={(e) => setEditingCat({ ...editingCat, display_order: Number(e.target.value) })}
                className="w-full px-3 py-2 rounded-xl bg-white/5 border border-white/10 text-white"
              />
            </div>

            <div className="flex justify-end gap-2 pt-2">
              <button
                type="button"
                onClick={() => setEditingCat(null)}
                className="px-4 py-2 rounded-xl bg-white/5 text-slate-300"
              >
                Cancel
              </button>
              <button
                type="submit"
                disabled={saving}
                className="px-4 py-2 rounded-xl bg-[#D4AF37] text-[#0A1118] font-bold"
              >
                {saving ? "Saving..." : "Save Category"}
              </button>
            </div>
          </form>
        </>
      )}
    </div>
  );
}
