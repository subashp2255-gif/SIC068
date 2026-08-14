"use client";

import React, { useEffect, useState } from "react";
import Link from "next/link";
import { motion } from "framer-motion";
import {
  fetchAdminAnalytics,
  fetchAdminEnquiries,
  type AdminAnalytics,
  updateEnquiryStatus,
} from "@/lib/services/adminService";
import { KPICard, MonthlyTrendsChart, BreakdownDistributionChart } from "@/components/admin/AdminCharts";
import {
  Package,
  Inbox,
  Users,
  Compass,
  CheckCircle2,
  Clock,
  ArrowRight,
  RefreshCw,
  Plus,
  Phone,
  Mail,
  ExternalLink,
  Tag,
  Star,
} from "lucide-react";

export default function AdminOverviewPage() {
  const [analytics, setAnalytics] = useState<AdminAnalytics | null>(null);
  const [recentEnquiries, setRecentEnquiries] = useState<any[]>([]);
  const [loading, setLoading] = useState(true);
  const [refreshing, setRefreshing] = useState(false);

  const loadData = async () => {
    setRefreshing(true);
    const [analyticsData, enquiriesData] = await Promise.all([
      fetchAdminAnalytics(),
      fetchAdminEnquiries({ limit: 6 }),
    ]);

    setAnalytics(analyticsData);
    setRecentEnquiries(enquiriesData.enquiries);
    setLoading(false);
    setRefreshing(false);
  };

  useEffect(() => {
    loadData();
  }, []);

  const handleQuickStatusChange = async (id: string, newStatus: string) => {
    await updateEnquiryStatus(id, newStatus);
    loadData();
  };

  if (loading) {
    return (
      <div className="space-y-8 animate-pulse">
        <div className="h-8 w-48 bg-white/5 rounded-lg" />
        <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-4 gap-4">
          {[...Array(4)].map((_, i) => (
            <div key={i} className="h-32 rounded-2xl bg-white/5" />
          ))}
        </div>
        <div className="grid grid-cols-1 lg:grid-cols-2 gap-6">
          <div className="h-64 rounded-2xl bg-white/5" />
          <div className="h-64 rounded-2xl bg-white/5" />
        </div>
      </div>
    );
  }

  const kpis = analytics?.kpis || {
    total_packages: 0,
    active_packages: 0,
    draft_packages: 0,
    total_enquiries: 0,
    new_enquiries: 0,
    contacted_enquiries: 0,
    converted_enquiries: 0,
    this_month_enquiries: 0,
    total_destinations: 0,
    total_users: 0,
    average_rating: 4.9,
  };

  return (
    <div className="space-y-8">
      {/* Top Banner / Welcome Action */}
      <div className="flex flex-col sm:flex-row items-start sm:items-center justify-between gap-4 bg-gradient-to-r from-[#0A1118] via-[#141E28] to-[#0A1118] border border-[#D4AF37]/20 rounded-3xl p-6 shadow-xl">
        <div className="space-y-1">
          <div className="flex items-center gap-2 text-xs text-[#D4AF37] font-semibold uppercase tracking-wider">
            <span className="w-2 h-2 rounded-full bg-emerald-400 animate-ping" />
            Live Supabase Production Engine
          </div>
          <h2 className="font-serif text-2xl sm:text-3xl font-bold text-[#F9F6F0]">
            Pilgrimage Management Command Center
          </h2>
          <p className="text-xs sm:text-sm text-slate-400">
            Monitor real-time pilgrim bookings, manage spiritual yatra itineraries, and publish sacred journeys.
          </p>
        </div>

        <div className="flex items-center gap-3">
          <button
            onClick={loadData}
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
            <span>Create Package</span>
          </Link>
        </div>
      </div>

      {/* KPI Grid */}
      <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-4 gap-4 sm:gap-6">
        <KPICard
          title="Total Inquiries"
          value={kpis.total_enquiries}
          subtitle={`${kpis.new_enquiries} pending response`}
          icon={Inbox}
          color="gold"
        />
        <KPICard
          title="Active Packages"
          value={kpis.active_packages}
          subtitle={`${kpis.draft_packages} draft or archived`}
          icon={Package}
          color="teal"
        />
        <KPICard
          title="Sacred Destinations"
          value={kpis.total_destinations}
          subtitle="Across India & Holy Sites"
          icon={Compass}
          color="amber"
        />
        <KPICard
          title="Overall Satisfaction"
          value={`${kpis.average_rating} ★`}
          subtitle="Based on authentic pilgrim reviews"
          icon={Star}
          color="emerald"
        />
      </div>

      {/* Analytics Visualizations */}
      <div className="grid grid-cols-1 lg:grid-cols-2 gap-6">
        <MonthlyTrendsChart data={analytics?.monthly_enquiries || []} />
        <BreakdownDistributionChart
          title="Inquiry Distribution by Source"
          subtitle="Where travellers are reaching out from"
          items={(analytics?.source_breakdown || []).map((s) => ({
            label: s.source.replace(/_/g, " "),
            count: s.count,
          }))}
        />
      </div>

      {/* Secondary Distribution Grid */}
      <div className="grid grid-cols-1 lg:grid-cols-3 gap-6">
        <div className="lg:col-span-1">
          <BreakdownDistributionChart
            title="Inquiry Pipeline Status"
            subtitle="Current operational workflow"
            items={(analytics?.status_breakdown || []).map((st) => ({
              label: st.status,
              count: st.count,
            }))}
          />
        </div>

        {/* Top Performing Packages */}
        <div className="lg:col-span-2 rounded-2xl bg-[#0A1118]/90 border border-[#D4AF37]/20 p-6 shadow-xl flex flex-col justify-between">
          <div className="flex items-center justify-between mb-4">
            <div>
              <h4 className="font-serif text-lg font-bold text-[#F9F6F0]">Most Enquired Tours</h4>
              <p className="text-xs text-slate-400">Top pilgrimage packages generating traveller interest</p>
            </div>
            <Link
              href="/admin/packages"
              className="text-xs font-semibold text-[#D4AF37] hover:underline flex items-center gap-1"
            >
              View Catalogue <ArrowRight className="w-3.5 h-3.5" />
            </Link>
          </div>

          <div className="space-y-3">
            {(analytics?.top_packages || []).length === 0 ? (
              <p className="text-xs text-slate-500 py-6 text-center">No package enquiries recorded yet</p>
            ) : (
              (analytics?.top_packages || []).map((pkg, idx) => (
                <div
                  key={pkg.title}
                  className="flex items-center justify-between p-3 rounded-xl bg-white/5 border border-white/5 hover:border-[#D4AF37]/30 transition"
                >
                  <div className="flex items-center gap-3">
                    <span className="w-6 h-6 rounded-lg bg-[#D4AF37]/15 text-[#D4AF37] text-xs font-bold flex items-center justify-center">
                      #{idx + 1}
                    </span>
                    <span className="text-sm font-medium text-[#F9F6F0] line-clamp-1">{pkg.title}</span>
                  </div>
                  <span className="text-xs font-semibold px-2.5 py-1 rounded-full bg-[#D4AF37]/10 text-[#D4AF37]">
                    {pkg.enquiries_count} inquiries
                  </span>
                </div>
              ))
            )}
          </div>
        </div>
      </div>

      {/* Recent Enquiries Live Feed */}
      <div className="rounded-3xl bg-[#0A1118] border border-[#D4AF37]/20 p-6 shadow-xl space-y-4">
        <div className="flex items-center justify-between">
          <div>
            <h3 className="font-serif text-xl font-bold text-[#F9F6F0]">Recent Pilgrim Inquiries</h3>
            <p className="text-xs text-slate-400">Live booking inquiries submitted through public website</p>
          </div>
          <Link
            href="/admin/enquiries"
            className="flex items-center gap-1.5 px-3.5 py-1.5 rounded-xl bg-[#D4AF37]/10 text-[#D4AF37] hover:bg-[#D4AF37]/20 text-xs font-semibold transition"
          >
            <span>All Inquiries ({kpis.total_enquiries})</span>
            <ArrowRight className="w-3.5 h-3.5" />
          </Link>
        </div>

        <div className="overflow-x-auto">
          <table className="w-full text-left text-xs text-slate-300">
            <thead className="border-b border-white/10 text-slate-400 uppercase tracking-wider text-[10px]">
              <tr>
                <th className="py-3 px-3">Reference</th>
                <th className="py-3 px-3">Pilgrim Name</th>
                <th className="py-3 px-3">Package / Tour</th>
                <th className="py-3 px-3">Contact</th>
                <th className="py-3 px-3">Timing</th>
                <th className="py-3 px-3">Status</th>
                <th className="py-3 px-3 text-right">Quick Action</th>
              </tr>
            </thead>
            <tbody className="divide-y divide-white/5 font-sans">
              {recentEnquiries.length === 0 ? (
                <tr>
                  <td colSpan={7} className="py-8 text-center text-slate-500">
                    No enquiries received yet
                  </td>
                </tr>
              ) : (
                recentEnquiries.map((enq) => (
                  <tr key={enq.id} className="hover:bg-white/[0.02] transition">
                    <td className="py-3 px-3 font-mono font-semibold text-[#D4AF37]">
                      {enq.reference_number || "OJ-PENDING"}
                    </td>
                    <td className="py-3 px-3 font-medium text-white">
                      {enq.full_name}
                      {enq.adults && (
                        <span className="block text-[10px] text-slate-400">
                          {enq.adults} Adults {enq.senior_citizens ? `, ${enq.senior_citizens} Seniors` : ""}
                        </span>
                      )}
                    </td>
                    <td className="py-3 px-3 text-slate-300 max-w-[200px] truncate">
                      {enq.package_title || "General Enquiry"}
                    </td>
                    <td className="py-3 px-3">
                      <div className="flex flex-col gap-0.5">
                        <span className="text-white">{enq.phone}</span>
                        {enq.email && <span className="text-[10px] text-slate-400">{enq.email}</span>}
                      </div>
                    </td>
                    <td className="py-3 px-3 text-slate-400">
                      {enq.start_date ? `${enq.start_date}` : enq.preferred_month || "Flexible"}
                    </td>
                    <td className="py-3 px-3">
                      <select
                        value={enq.status || "submitted"}
                        onChange={(e) => handleQuickStatusChange(enq.id, e.target.value)}
                        className={`text-xs font-semibold px-2 py-1 rounded-lg border bg-[#0F172A] cursor-pointer outline-none ${
                          enq.status === "contacted"
                            ? "text-teal-400 border-teal-500/30"
                            : enq.status === "completed" || enq.status === "converted"
                            ? "text-emerald-400 border-emerald-500/30"
                            : "text-[#D4AF37] border-[#D4AF37]/30"
                        }`}
                      >
                        <option value="submitted">Submitted</option>
                        <option value="contacted">Contacted</option>
                        <option value="verified">Verified & Clarified</option>
                        <option value="ready_to_book">Ready to Book</option>
                        <option value="booking_confirmed">Booking Confirmed</option>
                        <option value="cancelled">Cancelled</option>
                      </select>

                    </td>
                    <td className="py-3 px-3 text-right">
                      <Link
                        href={`/admin/enquiries`}
                        className="p-1.5 rounded-lg text-slate-400 hover:text-white hover:bg-white/5 transition inline-block"
                        title="View details"
                      >
                        <ExternalLink className="w-4 h-4" />
                      </Link>
                    </td>
                  </tr>
                ))
              )}
            </tbody>
          </table>
        </div>
      </div>
    </div>
  );
}
