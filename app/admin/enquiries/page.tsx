"use client";

import React, { useState, useEffect } from "react";
import {
  fetchAdminEnquiries,
  updateEnquiryStatus,
  markEnquiryVerified,
  confirmPilgrimBooking,
  fetchBookingDetails,
} from "@/lib/services/adminService";
import {
  Search,
  Filter,
  RefreshCw,
  Phone,
  Mail,
  Calendar,
  MapPin,
  Users,
  CheckCircle2,
  Clock,
  X,
  ExternalLink,
  MessageSquare,
  Copy,
  Check,
  Send,
  AlertCircle,
  ShieldCheck,
  CheckSquare,
  Square,
  ArrowRight,
  Receipt,
  FileCheck,
  HelpCircle,
  Lock,
} from "lucide-react";
import { toast } from "sonner";
import { motion, AnimatePresence } from "framer-motion";
import { adminMotion } from "@/lib/animations";

export default function AdminEnquiriesPage() {
  const [enquiries, setEnquiries] = useState<any[]>([]);
  const [totalCount, setTotalCount] = useState(0);
  const [loading, setLoading] = useState(true);
  const [refreshing, setRefreshing] = useState(false);

  // Filters
  const [statusFilter, setStatusFilter] = useState("all");
  const [sourceFilter, setSourceFilter] = useState("all");
  const [searchQuery, setSearchQuery] = useState("");
  const [page, setPage] = useState(1);

  // Selected enquiry for detail drawer
  const [selectedEnquiry, setSelectedEnquiry] = useState<any | null>(null);
  const [internalNotes, setInternalNotes] = useState("");
  const [savingNotes, setSavingNotes] = useState(false);
  const [copiedRef, setCopiedRef] = useState(false);

  // Verification Checklist State
  const [checklist, setChecklist] = useState({
    contact_verified: false,
    dates_confirmed: false,
    pilgrims_confirmed: false,
    package_confirmed: false,
    special_requirements_confirmed: false,
    pricing_explained: false,
  });
  const [verificationAgreed, setVerificationAgreed] = useState(false);
  const [verifyingNotes, setVerifyingNotes] = useState("");
  const [isVerifying, setIsVerifying] = useState(false);

  // Confirm Booking Modal State
  const [confirmBookingEnquiry, setConfirmBookingEnquiry] = useState<any | null>(null);
  const [packageAmount, setPackageAmount] = useState<number>(0);
  const [additionalServicesAmount, setAdditionalServicesAmount] = useState<number>(0);
  const [confirmCheck1, setConfirmCheck1] = useState(false);
  const [confirmCheck2, setConfirmCheck2] = useState(false);
  const [bookingAdminNotes, setBookingAdminNotes] = useState("");
  const [isSubmittingBooking, setIsSubmittingBooking] = useState(false);

  // Success Confirmation Modal
  const [successBookingData, setSuccessBookingData] = useState<any | null>(null);

  // View Confirmed Booking Modal
  const [viewBookingModal, setViewBookingModal] = useState<any | null>(null);
  const [loadingBookingRecord, setLoadingBookingRecord] = useState(false);

  const loadEnquiries = async () => {
    setRefreshing(true);
    const res = await fetchAdminEnquiries({
      status: statusFilter,
      source: sourceFilter,
      searchQuery,
      page,
      limit: 15,
    });
    setEnquiries(res.enquiries);
    setTotalCount(res.total);
    setLoading(false);
    setRefreshing(false);
  };

  useEffect(() => {
    loadEnquiries();
  }, [statusFilter, sourceFilter, searchQuery, page]);

  // Sync verification checklist when selected enquiry changes
  useEffect(() => {
    if (selectedEnquiry) {
      const isAlreadyVerified = ["verified", "ready_to_book", "booking_confirmed", "completed"].includes(
        selectedEnquiry.status
      );
      setChecklist({
        contact_verified: isAlreadyVerified,
        dates_confirmed: isAlreadyVerified,
        pilgrims_confirmed: isAlreadyVerified,
        package_confirmed: isAlreadyVerified,
        special_requirements_confirmed: isAlreadyVerified,
        pricing_explained: isAlreadyVerified,
      });
      setVerificationAgreed(isAlreadyVerified);
      setVerifyingNotes(selectedEnquiry.verification_notes || "");
    }
  }, [selectedEnquiry]);

  const handleStatusChange = async (enquiryId: string, newStatus: string) => {
    // If attempting to jump directly to booking_confirmed without verification, block and open modal
    if (newStatus === "booking_confirmed") {
      const target = enquiries.find((e) => e.id === enquiryId) || selectedEnquiry;
      if (target && !["verified", "ready_to_book"].includes(target.status)) {
        toast.error("Please verify and clarify the enquiry with the pilgrim before confirming the booking.");
        return;
      }
      openConfirmBookingModal(target);
      return;
    }

    const res = await updateEnquiryStatus(enquiryId, newStatus);
    if (res.success) {
      toast.success(`Status updated to ${getStatusLabel(newStatus)}`);
      if (selectedEnquiry && selectedEnquiry.id === enquiryId) {
        setSelectedEnquiry({ ...selectedEnquiry, status: newStatus });
      }
      loadEnquiries();
    } else {
      toast.error(res.error || "Failed to update status");
    }
  };

  const handleSaveNotes = async () => {
    if (!selectedEnquiry) return;
    setSavingNotes(true);
    const res = await updateEnquiryStatus(selectedEnquiry.id, selectedEnquiry.status, internalNotes);
    setSavingNotes(false);
    if (res.success) {
      toast.success("CRM note recorded successfully");
      setInternalNotes("");
      loadEnquiries();
    }
  };

  const handleMarkVerified = async (targetStatus: "verified" | "ready_to_book" = "verified") => {
    if (!selectedEnquiry) return;
    if (!verificationAgreed) {
      toast.error("Please check the confirmation box acknowledging verification with the pilgrim.");
      return;
    }

    setIsVerifying(true);
    const activeChecklistKeys = Object.entries(checklist)
      .filter(([_, val]) => val)
      .map(([key]) => key);

    const res = await markEnquiryVerified(
      selectedEnquiry.id,
      activeChecklistKeys,
      verifyingNotes,
      targetStatus
    );

    setIsVerifying(false);
    if (res.success) {
      toast.success(
        targetStatus === "ready_to_book"
          ? "Enquiry marked as Ready to Book!"
          : "Enquiry successfully marked as Verified & Clarified!"
      );
      setSelectedEnquiry({
        ...selectedEnquiry,
        status: targetStatus,
        verification_notes: verifyingNotes,
      });
      loadEnquiries();
    } else {
      toast.error(res.error || "Failed to mark as verified");
    }
  };

  const openConfirmBookingModal = (enq: any) => {
    setConfirmBookingEnquiry(enq);
    // Estimate initial package amount if adults & base price available
    const adults = enq.adults || 1;
    const estBase = enq.package_amount || enq.final_price || 24999;
    setPackageAmount(estBase);
    setAdditionalServicesAmount(0);
    setConfirmCheck1(false);
    setConfirmCheck2(false);
    setBookingAdminNotes(enq.verification_notes || "");
  };

  const handleConfirmAndCreateBooking = async () => {
    if (!confirmBookingEnquiry) return;
    if (!confirmCheck1 || !confirmCheck2) {
      toast.error("Please acknowledge all final booking confirmation checkboxes.");
      return;
    }

    const total = Number(packageAmount) + Number(additionalServicesAmount);
    if (total <= 0) {
      toast.error("Please enter a valid booking amount.");
      return;
    }

    setIsSubmittingBooking(true);
    const res = await confirmPilgrimBooking({
      enquiryId: confirmBookingEnquiry.id,
      packageAmount: Number(packageAmount),
      additionalServicesAmount: Number(additionalServicesAmount),
      totalAmount: total,
      verificationNotes: confirmBookingEnquiry.verification_notes,
      adminNotes: bookingAdminNotes,
    });

    setIsSubmittingBooking(false);

    if (res.success) {
      const bData = res.data;
      setConfirmBookingEnquiry(null);
      setSuccessBookingData({
        bookingId: bData.booking_id,
        enquiryId: confirmBookingEnquiry.id,
        pilgrimName: confirmBookingEnquiry.full_name,
        packageTitle: confirmBookingEnquiry.package_title,
        totalAmount: total,
      });
      toast.success("Booking confirmed successfully!");
      if (selectedEnquiry && selectedEnquiry.id === confirmBookingEnquiry.id) {
        setSelectedEnquiry({
          ...selectedEnquiry,
          status: "booking_confirmed",
          booking_id: bData.booking_id,
        });
      }
      loadEnquiries();
    } else {
      toast.error(res.error || "Failed to confirm booking.");
    }
  };

  const openViewBookingDrawer = async (bookingIdOrEnquiryId: string) => {
    setLoadingBookingRecord(true);
    setViewBookingModal(null);
    const res = await fetchBookingDetails(bookingIdOrEnquiryId);
    setLoadingBookingRecord(false);
    if (res.success && res.booking) {
      setViewBookingModal(res.booking);
    } else {
      toast.error("Could not find booking details.");
    }
  };

  const handleCopyRef = (ref: string) => {
    navigator.clipboard.writeText(ref);
    setCopiedRef(true);
    toast.info(`Copied: ${ref}`);
    setTimeout(() => setCopiedRef(false), 2000);
  };

  const getStatusLabel = (st: string) => {
    switch (st) {
      case "submitted":
        return "Submitted";
      case "contacted":
        return "Contacted";
      case "verified":
        return "Verified & Clarified";
      case "ready_to_book":
        return "Ready to Book";
      case "booking_confirmed":
      case "completed":
        return "Booking Confirmed";
      case "cancelled":
        return "Cancelled";
      case "in_progress":
        return "In Progress";
      default:
        return st ? st.replace(/_/g, " ") : "Submitted";
    }
  };

  const getStatusBadgeClass = (st: string) => {
    switch (st) {
      case "submitted":
        return "bg-amber-500/10 text-amber-300 border-amber-500/30";
      case "contacted":
        return "bg-sky-500/10 text-sky-300 border-sky-500/30";
      case "verified":
        return "bg-teal-500/15 text-teal-300 border-teal-500/40";
      case "ready_to_book":
        return "bg-[#D4AF37]/20 text-[#D4AF37] border-[#D4AF37]/50 animate-pulse";
      case "booking_confirmed":
      case "completed":
        return "bg-emerald-500/20 text-emerald-300 border-emerald-500/40 font-bold";
      case "cancelled":
        return "bg-rose-500/10 text-rose-300 border-rose-500/30";
      default:
        return "bg-white/10 text-slate-300 border-white/20";
    }
  };

  return (
    <div className="space-y-6">
      {/* Header & Controls */}
      <div className="flex flex-col md:flex-row items-start md:items-center justify-between gap-4">
        <div>
          <h2 className="font-serif text-2xl sm:text-3xl font-bold text-[#F9F6F0]">
            Pilgrim Inquiries & Booking Confirmations
          </h2>
          <p className="text-xs sm:text-sm text-slate-400">
            Total {totalCount} inquiries logged — Workflow: Submitted → Contacted → Verified → Ready to Book → Confirmed
          </p>
        </div>

        <button
          onClick={loadEnquiries}
          disabled={refreshing}
          className="flex items-center gap-2 px-3.5 py-2 rounded-xl bg-white/5 hover:bg-white/10 text-slate-300 text-xs font-semibold border border-white/10 transition"
        >
          <RefreshCw className={`w-3.5 h-3.5 ${refreshing ? "animate-spin text-[#D4AF37]" : ""}`} />
          <span>Refresh List</span>
        </button>
      </div>

      {/* Filter Bar */}
      <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-4 gap-3 bg-[#0A1118] border border-[#D4AF37]/20 rounded-2xl p-4 shadow-lg">
        {/* Search */}
        <div className="relative lg:col-span-2">
          <Search className="absolute left-3 top-1/2 -translate-y-1/2 w-4 h-4 text-slate-400" />
          <input
            type="text"
            placeholder="Search by name, reference, phone, email, package..."
            value={searchQuery}
            onChange={(e) => {
              setSearchQuery(e.target.value);
              setPage(1);
            }}
            className="w-full pl-9 pr-4 py-2 rounded-xl bg-white/5 border border-white/10 text-xs sm:text-sm text-white placeholder-slate-500 focus:outline-none focus:border-[#D4AF37]/50"
          />
        </div>

        {/* Status Filter */}
        <div>
          <select
            value={statusFilter}
            onChange={(e) => {
              setStatusFilter(e.target.value);
              setPage(1);
            }}
            className="w-full px-3 py-2 rounded-xl bg-[#0F172A] border border-white/10 text-xs sm:text-sm text-slate-200 focus:outline-none focus:border-[#D4AF37]/50"
          >
            <option value="all">All Statuses</option>
            <option value="submitted">Submitted (New Lead)</option>
            <option value="contacted">Contacted</option>
            <option value="verified">Verified & Clarified</option>
            <option value="ready_to_book">Ready to Book</option>
            <option value="booking_confirmed">Booking Confirmed</option>
            <option value="cancelled">Cancelled</option>
          </select>
        </div>

        {/* Source Filter */}
        <div>
          <select
            value={sourceFilter}
            onChange={(e) => {
              setSourceFilter(e.target.value);
              setPage(1);
            }}
            className="w-full px-3 py-2 rounded-xl bg-[#0F172A] border border-white/10 text-xs sm:text-sm text-slate-200 focus:outline-none focus:border-[#D4AF37]/50"
          >
            <option value="all">All Sources</option>
            <option value="homepage">Homepage</option>
            <option value="package_card">Package Card</option>
            <option value="package_details">Package Details</option>
            <option value="package_comparison">Comparison</option>
            <option value="ai_trip_planner">AI Trip Planner</option>
            <option value="senior_care_guidelines">Senior Care</option>
          </select>
        </div>
      </div>

      {/* Enquiries Table */}
      <div className="rounded-3xl bg-[#0A1118] border border-[#D4AF37]/20 shadow-xl overflow-hidden">
        <div className="overflow-x-auto">
          <table className="w-full text-left text-xs text-slate-300">
            <thead className="bg-white/[0.02] border-b border-white/10 text-slate-400 uppercase tracking-wider text-[10px]">
              <tr>
                <th className="py-3.5 px-4">Reference</th>
                <th className="py-3.5 px-4">Pilgrim Contact</th>
                <th className="py-3.5 px-4">Package / Destination</th>
                <th className="py-3.5 px-4">Timing & Group</th>
                <th className="py-3.5 px-4">Assistance</th>
                <th className="py-3.5 px-4">Status</th>
                <th className="py-3.5 px-4 text-right">Actions</th>
              </tr>
            </thead>
            <tbody className="divide-y divide-white/5">
              {loading ? (
                <tr>
                  <td colSpan={7} className="py-12 text-center text-slate-500">
                    Loading inquiries from Supabase...
                  </td>
                </tr>
              ) : enquiries.length === 0 ? (
                <tr>
                  <td colSpan={7} className="py-12 text-center text-slate-500">
                    No inquiries found matching selected filters.
                  </td>
                </tr>
              ) : (
                enquiries.map((enq) => {
                  const isVerifiedOrReady = ["verified", "ready_to_book"].includes(enq.status);
                  const isConfirmed = enq.status === "booking_confirmed" || enq.status === "completed";

                  return (
                    <tr
                      key={enq.id}
                      onClick={() => {
                        setSelectedEnquiry(enq);
                        setInternalNotes("");
                      }}
                      className="hover:bg-white/[0.03] transition cursor-pointer group"
                    >
                      <td className="py-3.5 px-4 font-mono font-bold text-[#D4AF37]">
                        {enq.reference_number || "OJ-PENDING"}
                        <span className="block text-[10px] font-sans font-normal text-slate-500">
                          {new Date(enq.created_at).toLocaleDateString()}
                        </span>
                        {enq.booking_id && (
                          <span className="inline-block font-mono text-[9px] px-1.5 py-0.5 rounded bg-emerald-500/15 text-emerald-300 border border-emerald-500/30 mt-1">
                            {enq.booking_id}
                          </span>
                        )}
                      </td>
                      <td className="py-3.5 px-4">
                        <div className="font-semibold text-white group-hover:text-[#D4AF37] transition">
                          {enq.full_name}
                        </div>
                        <div className="text-[11px] text-slate-400">{enq.phone}</div>
                        {enq.email && <div className="text-[10px] text-slate-500">{enq.email}</div>}
                      </td>
                      <td className="py-3.5 px-4">
                        <div className="font-medium text-slate-200 line-clamp-1">
                          {enq.package_title || "General Enquiry"}
                        </div>
                        <span className="inline-block text-[10px] uppercase font-semibold tracking-wider text-[#D4AF37]/80 bg-[#D4AF37]/10 px-2 py-0.5 rounded-full mt-0.5">
                          {enq.source || "web"}
                        </span>
                      </td>
                      <td className="py-3.5 px-4 text-slate-300">
                        <div>{enq.start_date || enq.preferred_month || "Flexible"}</div>
                        <div className="text-[10px] text-slate-500">
                          {enq.adults || 1} Adults
                          {enq.senior_citizens ? `, ${enq.senior_citizens} Seniors` : ""}
                          {enq.children ? `, ${enq.children} Children` : ""}
                        </div>
                      </td>
                      <td className="py-3.5 px-4">
                        {Array.isArray(enq.special_assistance) && enq.special_assistance.length > 0 ? (
                          <div className="flex flex-wrap gap-1">
                            {enq.special_assistance.map((ast: string) => (
                              <span
                                key={ast}
                                className="text-[10px] font-medium px-2 py-0.5 rounded-md bg-teal-500/10 text-teal-300 border border-teal-500/20"
                              >
                                {ast.replace(/_/g, " ")}
                              </span>
                            ))}
                          </div>
                        ) : (
                          <span className="text-[11px] text-slate-500">Standard</span>
                        )}
                      </td>
                      <td className="py-3.5 px-4" onClick={(e) => e.stopPropagation()}>
                        <select
                          value={enq.status || "submitted"}
                          onChange={(e) => handleStatusChange(enq.id, e.target.value)}
                          className={`text-xs font-bold px-2.5 py-1 rounded-lg border bg-[#0F172A] cursor-pointer outline-none ${getStatusBadgeClass(
                            enq.status
                          )}`}
                        >
                          <option value="submitted">Submitted</option>
                          <option value="contacted">Contacted</option>
                          <option value="verified">Verified & Clarified</option>
                          <option value="ready_to_book">Ready to Book</option>
                          <option value="booking_confirmed">Booking Confirmed</option>
                          <option value="cancelled">Cancelled</option>
                        </select>
                      </td>
                      <td className="py-3.5 px-4 text-right" onClick={(e) => e.stopPropagation()}>
                        {isConfirmed ? (
                          <button
                            onClick={() => openViewBookingDrawer(enq.booking_id || enq.id)}
                            className="inline-flex items-center gap-1 px-3 py-1 rounded-xl bg-emerald-500/15 hover:bg-emerald-500/25 border border-emerald-500/30 text-emerald-300 text-xs font-bold transition"
                          >
                            <CheckCircle2 className="w-3.5 h-3.5 text-emerald-400" />
                            <span>View Booking →</span>
                          </button>
                        ) : isVerifiedOrReady ? (
                          <button
                            onClick={() => openConfirmBookingModal(enq)}
                            className="inline-flex items-center gap-1.5 px-3 py-1 rounded-xl bg-gradient-to-r from-[#D4AF37] to-[#B38728] text-[#0A1118] text-xs font-bold shadow hover:brightness-110 active:scale-95 transition"
                          >
                            <span>Confirm Booking →</span>
                          </button>
                        ) : (
                          <button
                            onClick={() => {
                              setSelectedEnquiry(enq);
                              setInternalNotes("");
                            }}
                            className="text-xs font-semibold text-[#D4AF37] hover:underline"
                          >
                            View →
                          </button>
                        )}
                      </td>
                    </tr>
                  );
                })
              )}
            </tbody>
          </table>
        </div>
      </div>

      {/* Slide-out Enquiry Detail Drawer */}
      {selectedEnquiry && (
        <>
          <div
            onClick={() => setSelectedEnquiry(null)}
            className="fixed inset-0 z-50 bg-black/75 backdrop-blur-sm animate-in fade-in duration-200"
          />
          <div className="fixed right-0 top-0 bottom-0 z-50 w-full max-w-xl bg-[#0A1118] border-l border-[#D4AF37]/20 p-6 sm:p-8 shadow-2xl overflow-y-auto space-y-6 animate-in slide-in-from-right duration-300">
            {/* Drawer Header */}
            <div className="flex items-center justify-between border-b border-white/10 pb-4">
              <div>
                <span className="text-[10px] font-bold uppercase tracking-widest text-[#D4AF37]">
                  Pilgrim Enquiry Dossier
                </span>
                <div className="flex items-center gap-2">
                  <h3 className="font-mono text-xl font-bold text-white">
                    {selectedEnquiry.reference_number}
                  </h3>
                  <button
                    onClick={() => handleCopyRef(selectedEnquiry.reference_number)}
                    className="p-1 rounded text-slate-400 hover:text-[#D4AF37]"
                    title="Copy reference code"
                  >
                    {copiedRef ? <Check className="w-4 h-4 text-emerald-400" /> : <Copy className="w-4 h-4" />}
                  </button>
                </div>
              </div>
              <button
                onClick={() => setSelectedEnquiry(null)}
                className="p-2 rounded-xl text-slate-400 hover:text-white hover:bg-white/5 transition"
              >
                <X className="w-5 h-5" />
              </button>
            </div>

            {/* Current Status Banner & Fast Actions */}
            <div className="p-4 rounded-2xl bg-white/5 border border-white/10 space-y-3">
              <div className="flex items-center justify-between">
                <span className="text-xs font-medium text-slate-400">Operational Pipeline Status</span>
                <span
                  className={`text-xs uppercase font-bold tracking-wider px-3 py-1 rounded-full border ${getStatusBadgeClass(
                    selectedEnquiry.status
                  )}`}
                >
                  {getStatusLabel(selectedEnquiry.status)}
                </span>
              </div>

              {/* Booking Confirmed State in Drawer */}
              {selectedEnquiry.status === "booking_confirmed" ? (
                <div className="p-3.5 rounded-xl bg-emerald-500/10 border border-emerald-500/30 flex items-center justify-between">
                  <div className="flex items-center gap-2.5">
                    <CheckCircle2 className="w-5 h-5 text-emerald-400" />
                    <div>
                      <span className="text-xs font-bold text-emerald-300 block">Booking Confirmed</span>
                      <span className="font-mono text-xs text-white">
                        ID: {selectedEnquiry.booking_id || "OJ-CONFIRMED"}
                      </span>
                    </div>
                  </div>
                  <button
                    onClick={() => openViewBookingDrawer(selectedEnquiry.booking_id || selectedEnquiry.id)}
                    className="px-3 py-1.5 rounded-lg bg-emerald-500 text-[#0A1118] font-bold text-xs hover:bg-emerald-400 transition"
                  >
                    View Booking
                  </button>
                </div>
              ) : ["verified", "ready_to_book"].includes(selectedEnquiry.status) ? (
                /* Ready to Confirm Booking CTA */
                <button
                  onClick={() => openConfirmBookingModal(selectedEnquiry)}
                  className="w-full py-3 rounded-xl bg-gradient-to-r from-[#D4AF37] via-[#E5C158] to-[#B38728] text-[#0A1118] font-bold text-sm shadow-lg shadow-[#D4AF37]/20 flex items-center justify-center gap-2 hover:brightness-110 active:scale-98 transition"
                >
                  <CheckCircle2 className="w-4 h-4" />
                  <span>✓ Confirm Booking</span>
                </button>
              ) : (
                /* Unverified status hint */
                <div className="p-3 rounded-xl bg-amber-500/10 border border-amber-500/20 text-xs text-amber-300 flex items-center gap-2">
                  <AlertCircle className="w-4 h-4 shrink-0" />
                  <span>Verify and clarify the enquiry with the pilgrim below before confirming the booking.</span>
                </div>
              )}
            </div>

            {/* Pilgrim Information */}
            <div className="space-y-3">
              <h4 className="font-serif text-sm font-bold text-[#F9F6F0] uppercase tracking-wide flex items-center gap-2">
                <Users className="w-4 h-4 text-[#D4AF37]" />
                <span>Pilgrim Information</span>
              </h4>
              <div className="grid grid-cols-2 gap-3 text-xs">
                <div className="p-3 rounded-xl bg-white/5 border border-white/5 space-y-1">
                  <span className="text-slate-400 text-[10px] uppercase">Full Name</span>
                  <p className="font-semibold text-white">{selectedEnquiry.full_name}</p>
                </div>
                <div className="p-3 rounded-xl bg-white/5 border border-white/5 space-y-1">
                  <span className="text-slate-400 text-[10px] uppercase">Phone / WhatsApp</span>
                  <a
                    href={`tel:${selectedEnquiry.phone}`}
                    className="font-semibold text-[#D4AF37] hover:underline block"
                  >
                    {selectedEnquiry.phone}
                  </a>
                </div>
                <div className="col-span-2 p-3 rounded-xl bg-white/5 border border-white/5 space-y-1">
                  <span className="text-slate-400 text-[10px] uppercase">Email</span>
                  <p className="text-slate-200">{selectedEnquiry.email || "Not provided"}</p>
                </div>
              </div>
            </div>

            {/* Package & Timing Specifications */}
            <div className="space-y-3">
              <h4 className="font-serif text-sm font-bold text-[#F9F6F0] uppercase tracking-wide flex items-center gap-2">
                <MapPin className="w-4 h-4 text-[#D4AF37]" />
                <span>Package & Journey Specifications</span>
              </h4>
              <div className="grid grid-cols-2 gap-3 text-xs">
                <div className="col-span-2 p-3 rounded-xl bg-white/5 border border-white/5 space-y-1">
                  <span className="text-slate-400 text-[10px] uppercase">Selected Package</span>
                  <p className="font-medium text-white">{selectedEnquiry.package_title || "General Enquiry"}</p>
                </div>
                <div className="p-3 rounded-xl bg-white/5 border border-white/5 space-y-1">
                  <span className="text-slate-400 text-[10px] uppercase">Destination</span>
                  <p className="text-slate-200">{selectedEnquiry.destination || "Holy Sites Across India"}</p>
                </div>
                <div className="p-3 rounded-xl bg-white/5 border border-white/5 space-y-1">
                  <span className="text-slate-400 text-[10px] uppercase">Departure City</span>
                  <p className="text-slate-200">{selectedEnquiry.departure_city || "Flexible / Not specified"}</p>
                </div>
                <div className="p-3 rounded-xl bg-white/5 border border-white/5 space-y-1">
                  <span className="text-slate-400 text-[10px] uppercase">Travel Timing</span>
                  <p className="text-slate-200">
                    {selectedEnquiry.start_date
                      ? `${selectedEnquiry.start_date} to ${selectedEnquiry.end_date}`
                      : selectedEnquiry.preferred_month || "Flexible"}
                  </p>
                </div>
                <div className="p-3 rounded-xl bg-white/5 border border-white/5 space-y-1">
                  <span className="text-slate-400 text-[10px] uppercase">Pilgrim Group</span>
                  <p className="text-slate-200">
                    {selectedEnquiry.adults} Adults
                    {selectedEnquiry.senior_citizens ? `, ${selectedEnquiry.senior_citizens} Seniors` : ""}
                    {selectedEnquiry.children ? `, ${selectedEnquiry.children} Children` : ""}
                  </p>
                </div>
              </div>
            </div>

            {/* Special Assistance & Dietary Requirements */}
            <div className="space-y-2 p-4 rounded-2xl bg-white/5 border border-white/10">
              <span className="text-xs font-bold uppercase tracking-wider text-[#D4AF37] block">
                Assistance & Dietary Requirements
              </span>
              <div className="flex flex-wrap gap-1.5 pt-1">
                {Array.isArray(selectedEnquiry.special_assistance) && selectedEnquiry.special_assistance.length > 0 ? (
                  selectedEnquiry.special_assistance.map((req: string) => (
                    <span
                      key={req}
                      className="text-xs px-2.5 py-1 rounded-lg bg-teal-500/10 text-teal-300 border border-teal-500/30 font-medium"
                    >
                      ✓ {req.replace(/_/g, " ")}
                    </span>
                  ))
                ) : (
                  <span className="text-xs text-slate-400">Standard walking & satvik meals requested</span>
                )}
              </div>

              {selectedEnquiry.message && (
                <div className="mt-3 pt-3 border-t border-white/10 text-xs text-slate-300">
                  <span className="text-[10px] uppercase text-slate-400 block mb-0.5">Pilgrim Notes</span>
                  <p className="italic bg-black/20 p-2.5 rounded-lg border border-white/5">
                    "{selectedEnquiry.message}"
                  </p>
                </div>
              )}
            </div>

            {/* Verification & Clarification Section (Section 3 & 4) */}
            <div className="space-y-4 p-5 rounded-2xl bg-gradient-to-br from-[#0E1724] to-[#0A1118] border border-[#D4AF37]/30 shadow-lg">
              <div className="flex items-center gap-2">
                <ShieldCheck className="w-5 h-5 text-[#D4AF37]" />
                <h4 className="font-serif text-base font-bold text-white">
                  Verification & Clarification
                </h4>
              </div>
              <p className="text-xs text-slate-400">
                Confirm all details directly with the pilgrim before transitioning to booking confirmation.
              </p>

              {/* Itemized Verification Checklist */}
              <div className="space-y-2.5 pt-1">
                {[
                  { key: "contact_verified", label: "Identity & contact details verified" },
                  { key: "dates_confirmed", label: "Travel dates & timing confirmed" },
                  { key: "pilgrims_confirmed", label: "Number of pilgrims & senior care confirmed" },
                  { key: "package_confirmed", label: "Package itinerary & destinations confirmed" },
                  { key: "special_requirements_confirmed", label: "Special assistance & satvik meals confirmed" },
                  { key: "pricing_explained", label: "Pricing, inclusions & policy explained to pilgrim" },
                ].map((item) => (
                  <label
                    key={item.key}
                    className="flex items-center gap-2.5 text-xs text-slate-200 cursor-pointer hover:text-white transition select-none"
                  >
                    <input
                      type="checkbox"
                      checked={(checklist as any)[item.key]}
                      onChange={(e) =>
                        setChecklist({ ...checklist, [item.key]: e.target.checked })
                      }
                      className="rounded border-white/20 bg-[#0F172A] text-[#D4AF37] focus:ring-0 focus:outline-none w-4 h-4 cursor-pointer"
                    />
                    <span>{item.label}</span>
                  </label>
                ))}
              </div>

              {/* Verification Notes */}
              <div className="space-y-1.5 pt-2">
                <label className="text-xs font-semibold text-slate-400">
                  Verification Notes / Clarifications
                </label>
                <textarea
                  rows={2}
                  placeholder="Record summary of call with pilgrim (e.g. wheelchair requested for darshan, hotel ground floor room required)..."
                  value={verifyingNotes}
                  onChange={(e) => setVerifyingNotes(e.target.value)}
                  className="w-full p-2.5 rounded-xl bg-white/5 border border-white/10 text-xs text-white placeholder-slate-500 focus:outline-none focus:border-[#D4AF37]/50"
                />
              </div>

              {/* Confirmation Checkbox Requirement */}
              <label className="flex items-start gap-2.5 p-3 rounded-xl bg-[#D4AF37]/10 border border-[#D4AF37]/25 text-xs text-slate-200 cursor-pointer select-none">
                <input
                  type="checkbox"
                  checked={verificationAgreed}
                  onChange={(e) => setVerificationAgreed(e.target.checked)}
                  className="rounded border-[#D4AF37]/50 bg-[#0F172A] text-[#D4AF37] focus:ring-0 w-4 h-4 mt-0.5 cursor-pointer"
                />
                <span className="font-medium text-white">
                  I confirm that the enquiry has been verified and clarified with the pilgrim.
                </span>
              </label>

              {/* Action Buttons */}
              <div className="flex items-center gap-3 pt-2">
                <button
                  onClick={() => handleMarkVerified("verified")}
                  disabled={isVerifying || !verificationAgreed}
                  className="flex-1 py-2.5 rounded-xl bg-teal-600 hover:bg-teal-500 text-white font-bold text-xs shadow-md disabled:opacity-50 transition"
                >
                  {isVerifying ? "Saving..." : "✓ Mark as Verified & Clarified"}
                </button>
                <button
                  onClick={() => handleMarkVerified("ready_to_book")}
                  disabled={isVerifying || !verificationAgreed}
                  className="py-2.5 px-4 rounded-xl bg-gradient-to-r from-[#D4AF37] to-[#B38728] text-[#0A1118] font-bold text-xs shadow-md hover:brightness-110 disabled:opacity-50 transition"
                >
                  Ready to Book →
                </button>
              </div>
            </div>

            {/* Internal Admin Notes */}
            <div className="space-y-2">
              <label className="text-xs font-bold uppercase tracking-wider text-slate-400">
                Internal CRM Log
              </label>
              <textarea
                rows={2}
                placeholder="Add general notes..."
                value={internalNotes}
                onChange={(e) => setInternalNotes(e.target.value)}
                className="w-full p-3 rounded-xl bg-white/5 border border-white/10 text-xs text-white placeholder-slate-500 focus:outline-none focus:border-[#D4AF37]/50"
              />
              <button
                onClick={handleSaveNotes}
                disabled={savingNotes || !internalNotes.trim()}
                className="flex items-center gap-2 px-4 py-2 rounded-xl bg-white/10 hover:bg-white/15 text-slate-200 text-xs font-bold disabled:opacity-50 transition"
              >
                <Send className="w-3.5 h-3.5" />
                <span>{savingNotes ? "Saving..." : "Save CRM Note"}</span>
              </button>
            </div>
          </div>
        </>
      )}

      {/* Confirm Pilgrim Booking Modal (Section 5 & 6) */}
      {confirmBookingEnquiry && (
        <div className="fixed inset-0 z-50 flex items-center justify-center p-4">
          <div
            onClick={() => setConfirmBookingEnquiry(null)}
            className="fixed inset-0 bg-black/80 backdrop-blur-sm animate-in fade-in"
          />
          <div className="relative w-full max-w-lg bg-[#0A1118] border border-[#D4AF37]/40 rounded-3xl p-6 sm:p-8 shadow-2xl space-y-5 z-10 animate-in zoom-in-95 max-h-[90vh] overflow-y-auto">
            {/* Modal Header */}
            <div className="flex items-start justify-between border-b border-white/10 pb-4">
              <div>
                <span className="text-[10px] font-bold uppercase tracking-widest text-[#D4AF37]">
                  Final Step
                </span>
                <h3 className="font-serif text-xl sm:text-2xl font-bold text-white">
                  Confirm Pilgrim Booking
                </h3>
                <p className="text-xs text-slate-400 mt-0.5">
                  Please review the final booking details before creating the booking.
                </p>
              </div>
              <button
                onClick={() => setConfirmBookingEnquiry(null)}
                className="p-1.5 rounded-lg text-slate-400 hover:text-white"
              >
                <X className="w-5 h-5" />
              </button>
            </div>

            {/* Booking Summary Box */}
            <div className="p-4 rounded-2xl bg-white/5 border border-white/10 space-y-3 text-xs">
              <span className="text-[10px] uppercase font-bold tracking-wider text-[#D4AF37] block">
                Booking Summary
              </span>

              <div className="grid grid-cols-2 gap-2 text-slate-300">
                <div>
                  <span className="text-slate-500 text-[10px] block uppercase">Pilgrim</span>
                  <span className="font-bold text-white text-sm">{confirmBookingEnquiry.full_name}</span>
                  <span className="block text-[11px] text-slate-400">{confirmBookingEnquiry.phone}</span>
                </div>
                <div>
                  <span className="text-slate-500 text-[10px] block uppercase">Group Size</span>
                  <span className="font-medium text-white">
                    {confirmBookingEnquiry.adults} Adults
                    {confirmBookingEnquiry.senior_citizens ? `, ${confirmBookingEnquiry.senior_citizens} Seniors` : ""}
                  </span>
                </div>
                <div className="col-span-2 pt-1">
                  <span className="text-slate-500 text-[10px] block uppercase">Package & Destination</span>
                  <span className="font-semibold text-[#D4AF37]">
                    {confirmBookingEnquiry.package_title || "Pilgrimage Tour"}
                  </span>
                  <span className="block text-[11px] text-slate-400">
                    {confirmBookingEnquiry.destination || "Sacred Destination"}
                  </span>
                </div>
                <div className="col-span-2">
                  <span className="text-slate-500 text-[10px] block uppercase">Travel Date</span>
                  <span className="font-medium text-white">
                    {confirmBookingEnquiry.start_date
                      ? `${confirmBookingEnquiry.start_date} to ${confirmBookingEnquiry.end_date}`
                      : confirmBookingEnquiry.preferred_month || "Flexible"}
                  </span>
                </div>
              </div>

              {/* Assistance & Inclusions */}
              {Array.isArray(confirmBookingEnquiry.special_assistance) &&
                confirmBookingEnquiry.special_assistance.length > 0 && (
                  <div className="pt-2 border-t border-white/10">
                    <span className="text-slate-500 text-[10px] block uppercase mb-1">
                      Assistance Inclusions
                    </span>
                    <div className="flex flex-wrap gap-1">
                      {confirmBookingEnquiry.special_assistance.map((req: string) => (
                        <span
                          key={req}
                          className="text-[10px] px-2 py-0.5 rounded bg-teal-500/10 text-teal-300 border border-teal-500/20"
                        >
                          ✓ {req.replace(/_/g, " ")}
                        </span>
                      ))}
                    </div>
                  </div>
                )}
            </div>

            {/* Pricing Section */}
            <div className="p-4 rounded-2xl bg-[#0E1724] border border-[#D4AF37]/30 space-y-3">
              <span className="text-xs font-bold uppercase tracking-wider text-[#D4AF37] block">
                Final Pricing Breakdown
              </span>

              <div className="space-y-2 text-xs">
                <div className="flex items-center justify-between gap-4">
                  <span className="text-slate-300">Package Amount (₹)</span>
                  <input
                    type="number"
                    value={packageAmount}
                    onChange={(e) => setPackageAmount(Number(e.target.value))}
                    className="w-32 px-3 py-1.5 rounded-lg bg-black/40 border border-white/10 text-right text-white font-mono font-bold focus:outline-none focus:border-[#D4AF37]"
                  />
                </div>

                <div className="flex items-center justify-between gap-4">
                  <span className="text-slate-300">Additional Services / Upgrades (₹)</span>
                  <input
                    type="number"
                    value={additionalServicesAmount}
                    onChange={(e) => setAdditionalServicesAmount(Number(e.target.value))}
                    className="w-32 px-3 py-1.5 rounded-lg bg-black/40 border border-white/10 text-right text-white font-mono font-bold focus:outline-none focus:border-[#D4AF37]"
                  />
                </div>

                <div className="pt-2 border-t border-white/10 flex items-center justify-between">
                  <span className="font-bold text-white">Total Booking Amount</span>
                  <span className="font-mono text-base font-extrabold text-[#D4AF37]">
                    ₹ {(Number(packageAmount) + Number(additionalServicesAmount)).toLocaleString()}
                  </span>
                </div>
              </div>

              {Number(packageAmount) + Number(additionalServicesAmount) <= 0 && (
                <div className="p-2 rounded-lg bg-amber-500/10 border border-amber-500/30 text-[11px] text-amber-300">
                  Price not finalized. Please enter the agreed total package amount.
                </div>
              )}
            </div>

            {/* Final Confirmation Checkboxes (Section 6) */}
            <div className="space-y-2 pt-1 text-xs">
              <label className="flex items-center gap-2.5 text-slate-200 cursor-pointer select-none">
                <input
                  type="checkbox"
                  checked={confirmCheck1}
                  onChange={(e) => setConfirmCheck1(e.target.checked)}
                  className="rounded border-[#D4AF37]/50 bg-[#0F172A] text-[#D4AF37] focus:ring-0 w-4 h-4 cursor-pointer"
                />
                <span>I have verified the booking details with the pilgrim.</span>
              </label>

              <label className="flex items-center gap-2.5 text-slate-200 cursor-pointer select-none">
                <input
                  type="checkbox"
                  checked={confirmCheck2}
                  onChange={(e) => setConfirmCheck2(e.target.checked)}
                  className="rounded border-[#D4AF37]/50 bg-[#0F172A] text-[#D4AF37] focus:ring-0 w-4 h-4 cursor-pointer"
                />
                <span>The pilgrim has agreed to the package and final amount.</span>
              </label>
            </div>

            {/* Action Buttons */}
            <div className="flex items-center justify-end gap-3 pt-3 border-t border-white/10">
              <button
                onClick={() => setConfirmBookingEnquiry(null)}
                className="px-4 py-2.5 rounded-xl bg-white/5 hover:bg-white/10 text-xs text-slate-300 font-semibold"
              >
                Cancel
              </button>

              <button
                onClick={handleConfirmAndCreateBooking}
                disabled={
                  isSubmittingBooking ||
                  !confirmCheck1 ||
                  !confirmCheck2 ||
                  Number(packageAmount) + Number(additionalServicesAmount) <= 0
                }
                className="px-6 py-2.5 rounded-xl bg-gradient-to-r from-[#D4AF37] via-[#E5C158] to-[#B38728] text-[#0A1118] font-bold text-xs shadow-lg hover:brightness-110 disabled:opacity-40 transition"
              >
                {isSubmittingBooking ? "Creating Booking..." : "Confirm & Create Booking"}
              </button>
            </div>
          </div>
        </div>
      )}

      {/* Booking Confirmed Success Modal (Section 8) */}
      {successBookingData && (
        <div className="fixed inset-0 z-50 flex items-center justify-center p-4">
          <div
            onClick={() => setSuccessBookingData(null)}
            className="fixed inset-0 bg-black/80 backdrop-blur-sm animate-in fade-in"
          />
          <div className="relative w-full max-w-md bg-[#0A1118] border border-emerald-500/40 rounded-3xl p-6 sm:p-8 text-center space-y-5 z-10 animate-in zoom-in-95 shadow-2xl">
            <div className="w-16 h-16 rounded-full bg-emerald-500/20 border border-emerald-500/40 text-emerald-400 flex items-center justify-center mx-auto shadow-lg shadow-emerald-500/10">
              <CheckCircle2 className="w-9 h-9" />
            </div>

            <div className="space-y-1">
              <h3 className="font-serif text-2xl font-bold text-white">
                Booking Confirmed Successfully!
              </h3>
              <p className="text-xs text-slate-400">
                The enquiry has been converted into a confirmed pilgrim booking.
              </p>
            </div>

            <div className="p-4 rounded-2xl bg-white/5 border border-white/10 space-y-1">
              <span className="text-[10px] uppercase font-bold tracking-widest text-slate-400">
                Official Booking ID
              </span>
              <div className="font-mono text-xl font-extrabold text-[#D4AF37]">
                {successBookingData.bookingId}
              </div>
              <span className="text-xs text-slate-300 block pt-1">
                Pilgrim: <span className="font-semibold text-white">{successBookingData.pilgrimName}</span>
              </span>
              <span className="text-xs text-slate-400 block font-mono">
                Total: ₹ {successBookingData.totalAmount.toLocaleString()}
              </span>
            </div>

            <div className="flex items-center gap-3 pt-2">
              <button
                onClick={() => setSuccessBookingData(null)}
                className="flex-1 py-2.5 rounded-xl bg-white/10 hover:bg-white/15 text-slate-300 text-xs font-semibold"
              >
                Back to Enquiries
              </button>
              <button
                onClick={() => {
                  const bId = successBookingData.bookingId;
                  setSuccessBookingData(null);
                  openViewBookingDrawer(bId);
                }}
                className="flex-1 py-2.5 rounded-xl bg-emerald-500 hover:bg-emerald-400 text-[#0A1118] font-bold text-xs shadow"
              >
                View Booking
              </button>
            </div>
          </div>
        </div>
      )}

      {/* View Booking Details Drawer / Modal */}
      {viewBookingModal && (
        <div className="fixed inset-0 z-50 flex items-center justify-center p-4">
          <div
            onClick={() => setViewBookingModal(null)}
            className="fixed inset-0 bg-black/80 backdrop-blur-sm animate-in fade-in"
          />
          <div className="relative w-full max-w-lg bg-[#0A1118] border border-[#D4AF37]/30 rounded-3xl p-6 sm:p-8 space-y-5 z-10 animate-in zoom-in-95 shadow-2xl max-h-[90vh] overflow-y-auto">
            {/* Header */}
            <div className="flex items-start justify-between border-b border-white/10 pb-4">
              <div>
                <span className="text-[10px] font-bold uppercase tracking-widest text-emerald-400">
                  ✓ Confirmed Pilgrim Booking
                </span>
                <h3 className="font-mono text-2xl font-bold text-[#D4AF37]">
                  {viewBookingModal.booking_id}
                </h3>
                <span className="text-xs text-slate-400">
                  Confirmed on {new Date(viewBookingModal.confirmed_at).toLocaleDateString()}
                </span>
              </div>
              <button
                onClick={() => setViewBookingModal(null)}
                className="p-1.5 rounded-lg text-slate-400 hover:text-white"
              >
                <X className="w-5 h-5" />
              </button>
            </div>

            {/* Pilgrim & Package Information */}
            <div className="grid grid-cols-2 gap-3 text-xs">
              <div className="p-3 rounded-xl bg-white/5 border border-white/5 space-y-1">
                <span className="text-slate-500 text-[10px] uppercase">Pilgrim</span>
                <p className="font-bold text-white text-sm">{viewBookingModal.pilgrim_name}</p>
                <p className="text-slate-400">{viewBookingModal.pilgrim_phone}</p>
              </div>
              <div className="p-3 rounded-xl bg-white/5 border border-white/5 space-y-1">
                <span className="text-slate-500 text-[10px] uppercase">Group Size</span>
                <p className="font-medium text-white">
                  {viewBookingModal.adults} Adults
                  {viewBookingModal.senior_citizens ? `, ${viewBookingModal.senior_citizens} Seniors` : ""}
                </p>
                <p className="text-slate-400">City: {viewBookingModal.departure_city || "Not specified"}</p>
              </div>

              <div className="col-span-2 p-3 rounded-xl bg-white/5 border border-white/5 space-y-1">
                <span className="text-slate-500 text-[10px] uppercase">Tour Package</span>
                <p className="font-semibold text-[#D4AF37]">{viewBookingModal.package_title}</p>
                <p className="text-slate-400">Dates: {viewBookingModal.travel_date}</p>
              </div>
            </div>

            {/* Confirmed Amount */}
            <div className="p-4 rounded-2xl bg-[#0E1724] border border-emerald-500/30 flex items-center justify-between">
              <div>
                <span className="text-[10px] uppercase font-bold text-emerald-400 block">
                  Total Confirmed Amount
                </span>
                <span className="text-xs text-slate-400">Paid / Final Agreed Price</span>
              </div>
              <span className="font-mono text-2xl font-black text-[#D4AF37]">
                ₹ {Number(viewBookingModal.total_booking_amount || 0).toLocaleString()}
              </span>
            </div>

            {/* Verification Checklist / Assistance */}
            {Array.isArray(viewBookingModal.special_requirements) &&
              viewBookingModal.special_requirements.length > 0 && (
                <div className="p-3 rounded-xl bg-white/5 border border-white/10 space-y-1 text-xs">
                  <span className="text-[10px] uppercase font-bold text-slate-400 block">
                    Special Assistance & Care
                  </span>
                  <div className="flex flex-wrap gap-1 pt-1">
                    {viewBookingModal.special_requirements.map((req: string) => (
                      <span
                        key={req}
                        className="text-[10px] px-2 py-0.5 rounded bg-teal-500/10 text-teal-300 border border-teal-500/20"
                      >
                        ✓ {req.replace(/_/g, " ")}
                      </span>
                    ))}
                  </div>
                </div>
              )}

            {/* Admin Verification Notes */}
            {viewBookingModal.verification_notes && (
              <div className="p-3 rounded-xl bg-white/5 border border-white/10 text-xs text-slate-300">
                <span className="text-[10px] uppercase text-slate-400 block mb-0.5">Verification Notes</span>
                <p>{viewBookingModal.verification_notes}</p>
              </div>
            )}

            <div className="pt-2 text-center">
              <button
                onClick={() => setViewBookingModal(null)}
                className="w-full py-2.5 rounded-xl bg-white/10 hover:bg-white/15 text-slate-200 text-xs font-bold"
              >
                Close Dossier
              </button>
            </div>
          </div>
        </div>
      )}
    </div>
  );
}
