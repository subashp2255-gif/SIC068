"use client";

import React, { useState, useEffect } from "react";
import { useParams } from "next/navigation";
import { fetchAdminPackageById } from "@/lib/services/adminService";
import { PackageEditor } from "@/components/admin/PackageEditor";
import { Compass } from "lucide-react";

export default function EditPackagePage() {
  const params = useParams();
  const packageId = params.id as string;
  const [packageData, setPackageData] = useState<any | null>(null);
  const [loading, setLoading] = useState(true);

  useEffect(() => {
    async function load() {
      if (packageId) {
        const data = await fetchAdminPackageById(packageId);
        setPackageData(data);
        setLoading(false);
      }
    }
    load();
  }, [packageId]);

  if (loading) {
    return (
      <div className="h-64 flex flex-col items-center justify-center text-slate-400 gap-3">
        <Compass className="w-8 h-8 text-[#D4AF37] animate-spin" />
        <p className="text-xs font-semibold">Loading package itinerary data...</p>
      </div>
    );
  }

  if (!packageData) {
    return (
      <div className="rounded-3xl bg-[#0A1118] border border-rose-500/30 p-12 text-center text-white">
        <h3 className="font-serif text-xl font-bold">Package Not Found</h3>
        <p className="text-xs text-slate-400 mt-1">The package ID or slug does not exist in the database.</p>
      </div>
    );
  }

  return <PackageEditor initialData={packageData} isEditMode={true} />;
}
