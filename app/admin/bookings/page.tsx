"use client";

import React, { useState, useEffect } from "react";
import Link from "next/link";
import {
  getAdminBookings,
  getAdminBookingDetails,
  createBooking,
  updatePaymentStatus,
  cancelBooking,
  searchUsersForBooking,
  fetchPackageDepartures,
  CreateBookingInput,
} from "@/lib/services/adminBookingService";
import { fetchAdminPackages } from "@/lib/services/adminService";
import {
  Search,
  RefreshCw,
  Plus,
  Filter,
  Calendar,
  MapPin,
  Users,
  CheckCircle2,
  Clock,
  X,
  ExternalLink,
  Copy,
  Check,
  Send,
  AlertCircle,
  ShieldCheck,
  ArrowRight,
  Receipt,
  FileCheck,
  CreditCard,
  Ban,
  DollarSign,
  UserCheck,
  ChevronRight,
  Sparkles,
} from "lucide-react";
import { toast } from "sonner";
import { motion, AnimatePresence } from "framer-motion";
import { adminMotion } from "@/lib/animations";

export default function AdminBookingsPage() {
  const [bookings, setBookings] = useState<any[]>([]);
  const [totalCount, setTotalCount] = useState(0);
  const [loading, setLoading] = useState(true);
  const [refreshing, setRefreshing] = useState(false);

  // Filters & Tabs
  const [statusFilter, setStatusFilter] = useState("all");
  const [paymentStatusFilter, setPaymentStatusFilter] = useState("all");
  const [packageFilter, setPackageFilter] = useState("all");
  const [searchQuery, setSearchQuery] = useState("");
  const [page, setPage] = useState(1);
  const [activeTab, setActiveTab] = useState<"all" | "confirmed" | "completed" | "cancelled">("all");

  // Packages list for dropdown filter
  const [packageList, setPackageList] = useState<any[]>([]);

  // Selected booking detail drawer
  const [selectedBooking, setSelectedBooking] = useState<any | null>(null);
  const [loadingDetails, setLoadingDetails] = useState(false);
  const [copiedRef, setCopiedRef] = useState(false);

  // Payment Status Update Modal State
  const [paymentModalBooking, setPaymentModalBooking] = useState<any | null>(null);
  const [newPaymentStatus, setNewPaymentStatus] = useState<"unpaid" | "partial" | "paid" | "refunded">("paid");
  const [newAmountPaid, setNewAmountPaid] = useState<number>(0);
  const [isUpdatingPayment, setIsUpdatingPayment] = useState(false);

  // Cancellation Modal State
  const [cancellationBooking, setCancellationBooking] = useState<any | null>(null);
  const [cancellationReason, setCancellationReason] = useState("");
  const [isCancelling, setIsCancelling] = useState(false);

  // Direct "New Booking" Wizard Modal State
  const [showNewBookingModal, setShowNewBookingModal] = useState(false);
  const [newBookingStep, setNewBookingStep] = useState(1);
  const [userSearchQuery, setUserSearchQuery] = useState("");
  const [searchedUsers, setSearchedUsers] = useState<any[]>([]);
  const [selectedUser, setSelectedUser] = useState<any | null>(null);
  const [selectedPackage, setSelectedPackage] = useState<any | null>(null);
  const [availableDepartures, setAvailableDepartures] = useState<any[]>([]);
  const [selectedDeparture, setSelectedDeparture] = useState<any | null>(null);
  const [nbAdults, setNbAdults] = useState(1);
  const [nbChildren, setNbChildren] = useState(0);
  const [nbSeniors, setNbSeniors] = useState(0);
  const [nbPricePerPerson, setNbPricePerPerson] = useState(24999);
  const [nbDiscount, setNbDiscount] = useState(0);
  const [nbAdvance, setNbAdvance] = useState(0);
  const [nbAmountPaid, setNbAmountPaid] = useState(0);
  const [nbPaymentStatus, setNbPaymentStatus] = useState<"unpaid" | "partial" | "paid">("unpaid");
  const [nbSpecialReqs, setNbSpecialReqs] = useState("");
  const [nbCustomerNotes, setNbCustomerNotes] = useState("");
  const [nbAdminNotes, setNbAdminNotes] = useState("");
  const [isCreatingBooking, setIsCreatingBooking] = useState(false);

  const loadBookings = async () => {
    setRefreshing(true);
    const effectiveStatus = activeTab !== "all" ? activeTab : statusFilter;
    const res = await getAdminBookings({
      status: effectiveStatus,
      paymentStatus: paymentStatusFilter,
      packageId: packageFilter,
      searchQuery,
      page,
      limit: 15,
    });
    setBookings(res.bookings);
    setTotalCount(res.total);
    setLoading(false);
    setRefreshing(false);
  };

  useEffect(() => {
    loadBookings();
  }, [activeTab, statusFilter, paymentStatusFilter, packageFilter, searchQuery, page]);

  useEffect(() => {
    const fetchPackages = async () => {
      const res = await fetchAdminPackages({ limit: 100 });
      setPackageList(res.packages);
    };
    fetchPackages();
  }, []);

  const openBookingDrawer = async (booking: any) => {
    setLoadingDetails(true);
    setSelectedBooking(booking);
    const res = await getAdminBookingDetails(booking.id);
    setLoadingDetails(false);
    if (res.success && res.booking) {
      setSelectedBooking(res.booking);
    }
  };

  const handleUpdatePayment = async () => {
    if (!paymentModalBooking) return;
    setIsUpdatingPayment(true);
    const res = await updatePaymentStatus(
      paymentModalBooking.id,
      newPaymentStatus,
      Number(newAmountPaid)
    );
    setIsUpdatingPayment(false);
    if (res.success) {
      toast.success("Payment status updated successfully");
      setPaymentModalBooking(null);
      if (selectedBooking && selectedBooking.id === paymentModalBooking.id) {
        setSelectedBooking({
          ...selectedBooking,
          payment_status: newPaymentStatus,
          amount_paid: Number(newAmountPaid),
          balance_amount: Math.max(0, (selectedBooking.total_amount || 0) - Number(newAmountPaid)),
        });
      }
      loadBookings();
    } else {
      toast.error(res.error || "Failed to update payment");
    }
  };

  const handleCancelBooking = async () => {
    if (!cancellationBooking) return;
    setIsCancelling(true);
    const res = await cancelBooking(cancellationBooking.id, cancellationReason);
    setIsCancelling(false);
    if (res.success) {
      toast.success("Booking cancelled and seats restored to departure schedule");
      setCancellationBooking(null);
      if (selectedBooking && selectedBooking.id === cancellationBooking.id) {
        setSelectedBooking({
          ...selectedBooking,
          booking_status: "cancelled",
          status: "cancelled",
          cancellation_reason: cancellationReason,
        });
      }
      loadBookings();
    } else {
      toast.error(res.error || "Failed to cancel booking");
    }
  };

  // User search for New Booking Wizard
  useEffect(() => {
    const searchUsers = async () => {
      if (userSearchQuery.trim().length >= 2) {
        const users = await searchUsersForBooking(userSearchQuery);
        setSearchedUsers(users);
      } else {
        setSearchedUsers([]);
      }
    };
    const timer = setTimeout(searchUsers, 300);
    return () => clearTimeout(timer);
  }, [userSearchQuery]);

  // Load departures when package selected in wizard
  const handleSelectPackageInWizard = async (pkg: any) => {
    setSelectedPackage(pkg);
    setNbPricePerPerson(pkg.price_inr || 24999);
    const deps = await fetchPackageDepartures(pkg.id);
    setAvailableDepartures(deps.filter((d: any) => d.status === "open" && d.available_seats > 0));
    setSelectedDeparture(null);
  };

  const handleCreateDirectBooking = async () => {
    if (!selectedUser || !selectedPackage) {
      toast.error("Please select a registered user and package.");
      return;
    }

    const totalTravellers = nbAdults + nbChildren + nbSeniors;
    const subtotal = totalTravellers * nbPricePerPerson;
    const totalAmount = Math.max(0, subtotal - nbDiscount);

    setIsCreatingBooking(true);
    const res = await createBooking({
      userId: selectedUser.id,
      packageId: selectedPackage.id,
      departureId: selectedDeparture?.id || undefined,
      adults: nbAdults,
      children: nbChildren,
      seniorCitizens: nbSeniors,
      pricePerPerson: nbPricePerPerson,
      subtotal,
      discountAmount: nbDiscount,
      totalAmount,
      advanceAmount: nbAdvance,
      amountPaid: nbAmountPaid,
      paymentStatus: nbPaymentStatus,
      specialRequirements: nbSpecialReqs,
      customerVisibleNotes: nbCustomerNotes,
      internalAdminNotes: nbAdminNotes,
      idempotencyKey: crypto.randomUUID(),
    });

    setIsCreatingBooking(false);
    if (res.success) {
      toast.success(`Booking created: ${res.data?.booking_reference}`);
      setShowNewBookingModal(false);
      resetNewBookingForm();
      loadBookings();
    } else {
      toast.error(res.error || "Failed to create booking.");
    }
  };

  const resetNewBookingForm = () => {
    setNewBookingStep(1);
    setSelectedUser(null);
    setSelectedPackage(null);
    setSelectedDeparture(null);
    setNbAdults(1);
    setNbChildren(0);
    setNbSeniors(0);
    setNbDiscount(0);
    setNbAdvance(0);
    setNbAmountPaid(0);
    setNbSpecialReqs("");
    setNbCustomerNotes("");
    setNbAdminNotes("");
  };

  const handleCopyRef = (ref: string) => {
    navigator.clipboard.writeText(ref);
    setCopiedRef(true);
    toast.info(`Copied: ${ref}`);
    setTimeout(() => setCopiedRef(false), 2000);
  };

  return (
    <div className="space-y-6">
      {/* Top Header & Actions */}
      <div className="flex flex-col sm:flex-row items-start sm:items-center justify-between gap-4">
        <div>
          <h2 className="font-serif text-2xl sm:text-3xl font-bold text-[#F9F6F0]">
            Pilgrim Booking Command Centre
          </h2>
          <p className="text-xs sm:text-sm text-slate-400">
            {totalCount} total bookings across all sacred pilgrimage routes
          </p>
        </div>

        <div className="flex items-center gap-2.5">
          <button
            onClick={loadBookings}
            disabled={refreshing}
            className="flex items-center gap-2 px-3.5 py-2 rounded-xl bg-white/5 hover:bg-white/10 text-slate-300 text-xs font-semibold border border-white/10 transition"
          >
            <RefreshCw className={`w-3.5 h-3.5 ${refreshing ? "animate-spin text-[#D4AF37]" : ""}`} />
            <span>Refresh</span>
          </button>

          <button
            onClick={() => {
              resetNewBookingForm();
              setShowNewBookingModal(true);
            }}
            className="flex items-center gap-2 px-4 py-2 rounded-xl bg-gradient-to-r from-[#D4AF37] via-[#E5C158] to-[#B38728] text-[#0A1118] text-xs font-bold shadow-lg shadow-[#D4AF37]/20 hover:brightness-110 active:scale-95 transition"
          >
            <Plus className="w-4 h-4" />
            <span>New Booking</span>
          </button>
        </div>
      </div>

      {/* Tabs */}
      <div className="flex items-center gap-2 border-b border-white/10 pb-2 overflow-x-auto">
        {[
          { key: "all", label: "All Bookings" },
          { key: "confirmed", label: "Upcoming / Confirmed" },
          { key: "completed", label: "Completed" },
          { key: "cancelled", label: "Cancelled" },
        ].map((tab) => (
          <button
            key={tab.key}
            onClick={() => {
              setActiveTab(tab.key as any);
              setPage(1);
            }}
            className={`px-4 py-2 rounded-xl text-xs font-bold transition whitespace-nowrap ${
              activeTab === tab.key
                ? "bg-[#D4AF37] text-[#0A1118] shadow-md shadow-[#D4AF37]/20"
                : "text-slate-400 hover:text-white hover:bg-white/5"
            }`}
          >
            {tab.label}
          </button>
        ))}
      </div>

      {/* Filter Bar */}
      <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-4 gap-3 bg-[#0A1118] border border-[#D4AF37]/20 rounded-2xl p-4 shadow-lg">
        {/* Search */}
        <div className="relative lg:col-span-2">
          <Search className="absolute left-3 top-1/2 -translate-y-1/2 w-4 h-4 text-slate-400" />
          <input
            type="text"
            placeholder="Search by reference (OJ-BKG-...), pilgrim, phone, email, package..."
            value={searchQuery}
            onChange={(e) => {
              setSearchQuery(e.target.value);
              setPage(1);
            }}
            className="w-full pl-9 pr-4 py-2 rounded-xl bg-white/5 border border-white/10 text-xs sm:text-sm text-white placeholder-slate-500 focus:outline-none focus:border-[#D4AF37]/50"
          />
        </div>

        {/* Package Filter */}
        <div>
          <select
            value={packageFilter}
            onChange={(e) => {
              setPackageFilter(e.target.value);
              setPage(1);
            }}
            className="w-full px-3 py-2 rounded-xl bg-[#0F172A] border border-white/10 text-xs sm:text-sm text-slate-200 focus:outline-none focus:border-[#D4AF37]/50"
          >
            <option value="all">All Packages</option>
            {packageList.map((pkg) => (
              <option key={pkg.id} value={pkg.id}>
                {pkg.name}
              </option>
            ))}
          </select>
        </div>

        {/* Payment Status Filter */}
        <div>
          <select
            value={paymentStatusFilter}
            onChange={(e) => {
              setPaymentStatusFilter(e.target.value);
              setPage(1);
            }}
            className="w-full px-3 py-2 rounded-xl bg-[#0F172A] border border-white/10 text-xs sm:text-sm text-slate-200 focus:outline-none focus:border-[#D4AF37]/50"
          >
            <option value="all">All Payment Statuses</option>
            <option value="paid">Paid</option>
            <option value="partial">Partial</option>
            <option value="unpaid">Unpaid</option>
            <option value="refunded">Refunded</option>
          </select>
        </div>
      </div>

      {/* Bookings Table */}
      <div className="rounded-3xl bg-[#0A1118] border border-[#D4AF37]/20 shadow-xl overflow-hidden">
        <div className="overflow-x-auto">
          <table className="w-full text-left text-xs text-slate-300">
            <thead className="bg-white/[0.02] border-b border-white/10 text-slate-400 uppercase tracking-wider text-[10px]">
              <tr>
                <th className="py-3.5 px-4">Booking Ref</th>
                <th className="py-3.5 px-4">Pilgrim Contact</th>
                <th className="py-3.5 px-4">Tour Package</th>
                <th className="py-3.5 px-4">Departure & Dates</th>
                <th className="py-3.5 px-4">Financials</th>
                <th className="py-3.5 px-4">Payment</th>
                <th className="py-3.5 px-4">Status</th>
                <th className="py-3.5 px-4 text-right">Actions</th>
              </tr>
            </thead>
            <tbody className="divide-y divide-white/5">
              {loading ? (
                <tr>
                  <td colSpan={8} className="py-12 text-center text-slate-500">
                    Loading bookings from Supabase...
                  </td>
                </tr>
              ) : bookings.length === 0 ? (
                <tr>
                  <td colSpan={8} className="py-12 text-center text-slate-500">
                    No bookings found matching selected criteria.
                  </td>
                </tr>
              ) : (
                bookings.map((b) => {
                  const isCancelled = b.booking_status === "cancelled" || b.status === "cancelled";
                  const isCompleted = b.booking_status === "completed" || b.status === "completed";

                  return (
                    <tr
                      key={b.id}
                      onClick={() => openBookingDrawer(b)}
                      className="hover:bg-white/[0.03] transition cursor-pointer group"
                    >
                      <td className="py-3.5 px-4 font-mono font-bold text-[#D4AF37]">
                        {b.booking_reference || b.booking_id}
                        <span className="block text-[10px] font-sans font-normal text-slate-500">
                          {new Date(b.created_at).toLocaleDateString()}
                        </span>
                      </td>
                      <td className="py-3.5 px-4">
                        <div className="font-semibold text-white group-hover:text-[#D4AF37] transition">
                          {b.pilgrim_name || "Pilgrim"}
                        </div>
                        <div className="text-[11px] text-slate-400">{b.pilgrim_phone}</div>
                        {b.pilgrim_email && <div className="text-[10px] text-slate-500">{b.pilgrim_email}</div>}
                      </td>
                      <td className="py-3.5 px-4">
                        <div className="font-medium text-slate-200 line-clamp-1 max-w-[200px]">
                          {b.package_title_snapshot || b.package_title || "Spiritual Package"}
                        </div>
                        <span className="text-[10px] text-slate-400">
                          {b.destination || "Sacred India"}
                        </span>
                      </td>
                      <td className="py-3.5 px-4 text-slate-300">
                        <div className="font-medium">{b.departure_city || b.departure_city_snapshot || "Flexible"}</div>
                        <div className="text-[10px] text-slate-500">
                          {b.start_date ? `${b.start_date}` : b.travel_date || "Upcoming"}
                        </div>
                        <div className="text-[10px] text-slate-400 font-medium">
                          {b.total_travellers || b.adults || 1} Travellers
                        </div>
                      </td>
                      <td className="py-3.5 px-4 font-mono">
                        <div className="font-bold text-white text-xs">
                          ₹ {Number(b.total_amount || b.total_booking_amount || 0).toLocaleString()}
                        </div>
                        {Number(b.balance_amount || 0) > 0 ? (
                          <div className="text-[10px] text-amber-400">
                            Due: ₹ {Number(b.balance_amount).toLocaleString()}
                          </div>
                        ) : (
                          <div className="text-[10px] text-emerald-400 font-bold">Paid in Full</div>
                        )}
                      </td>
                      <td className="py-3.5 px-4">
                        <span
                          className={`text-[10px] font-bold uppercase px-2.5 py-0.5 rounded-full border ${
                            b.payment_status === "paid"
                              ? "bg-emerald-500/15 text-emerald-300 border-emerald-500/30"
                              : b.payment_status === "partial"
                              ? "bg-amber-500/15 text-amber-300 border-amber-500/30"
                              : b.payment_status === "refunded"
                              ? "bg-purple-500/15 text-purple-300 border-purple-500/30"
                              : "bg-rose-500/15 text-rose-300 border-rose-500/30"
                          }`}
                        >
                          {b.payment_status || "unpaid"}
                        </span>
                      </td>
                      <td className="py-3.5 px-4">
                        <span
                          className={`text-[10px] font-bold uppercase px-2.5 py-0.5 rounded-full border ${
                            isCancelled
                              ? "bg-rose-500/15 text-rose-300 border-rose-500/30"
                              : isCompleted
                              ? "bg-blue-500/15 text-blue-300 border-blue-500/30"
                              : "bg-emerald-500/15 text-emerald-300 border-emerald-500/30"
                          }`}
                        >
                          {b.booking_status || b.status || "confirmed"}
                        </span>
                      </td>
                      <td className="py-3.5 px-4 text-right" onClick={(e) => e.stopPropagation()}>
                        <button
                          onClick={() => openBookingDrawer(b)}
                          className="text-xs font-semibold text-[#D4AF37] hover:underline"
                        >
                          View Details →
                        </button>
                      </td>
                    </tr>
                  );
                })
              )}
            </tbody>
          </table>
        </div>
      </div>

      {/* Slide-out Booking Detail Drawer */}
      {selectedBooking && (
        <>
          <div
            onClick={() => setSelectedBooking(null)}
            className="fixed inset-0 z-50 bg-black/75 backdrop-blur-sm animate-in fade-in duration-200"
          />
          <div className="fixed right-0 top-0 bottom-0 z-50 w-full max-w-xl bg-[#0A1118] border-l border-[#D4AF37]/20 p-6 sm:p-8 shadow-2xl overflow-y-auto space-y-6 animate-in slide-in-from-right duration-300">
            {/* Header */}
            <div className="flex items-start justify-between border-b border-white/10 pb-4">
              <div>
                <span className="text-[10px] font-bold uppercase tracking-widest text-[#D4AF37]">
                  Pilgrim Booking Dossier
                </span>
                <div className="flex items-center gap-2">
                  <h3 className="font-mono text-xl font-bold text-white">
                    {selectedBooking.booking_reference || selectedBooking.booking_id}
                  </h3>
                  <button
                    onClick={() => handleCopyRef(selectedBooking.booking_reference || selectedBooking.booking_id)}
                    className="p-1 rounded text-slate-400 hover:text-[#D4AF37]"
                    title="Copy reference code"
                  >
                    {copiedRef ? <Check className="w-4 h-4 text-emerald-400" /> : <Copy className="w-4 h-4" />}
                  </button>
                </div>
                <span className="text-xs text-slate-400">
                  Confirmed: {new Date(selectedBooking.confirmed_at || selectedBooking.created_at).toLocaleString()}
                </span>
              </div>
              <button
                onClick={() => setSelectedBooking(null)}
                className="p-2 rounded-xl text-slate-400 hover:text-white hover:bg-white/5 transition"
              >
                <X className="w-5 h-5" />
              </button>
            </div>

            {/* Quick Status and Actions */}
            <div className="p-4 rounded-2xl bg-white/5 border border-white/10 flex items-center justify-between gap-3">
              <div>
                <span className="text-xs text-slate-400 block">Booking Status</span>
                <span className="font-bold text-sm text-emerald-400 uppercase">
                  {selectedBooking.booking_status || selectedBooking.status}
                </span>
              </div>

              <div className="flex items-center gap-2">
                <button
                  onClick={() => {
                    setPaymentModalBooking(selectedBooking);
                    setNewPaymentStatus(selectedBooking.payment_status || "paid");
                    setNewAmountPaid(selectedBooking.amount_paid || selectedBooking.total_amount || 0);
                  }}
                  className="px-3 py-1.5 rounded-xl bg-white/10 hover:bg-white/15 text-slate-200 text-xs font-semibold flex items-center gap-1.5 transition"
                >
                  <CreditCard className="w-3.5 h-3.5 text-[#D4AF37]" />
                  <span>Update Payment</span>
                </button>

                {selectedBooking.booking_status !== "cancelled" && selectedBooking.status !== "cancelled" && (
                  <button
                    onClick={() => {
                      setCancellationBooking(selectedBooking);
                      setCancellationReason("");
                    }}
                    className="px-3 py-1.5 rounded-xl bg-rose-500/10 hover:bg-rose-500/20 text-rose-300 text-xs font-semibold border border-rose-500/30 flex items-center gap-1.5 transition"
                  >
                    <Ban className="w-3.5 h-3.5" />
                    <span>Cancel</span>
                  </button>
                )}
              </div>
            </div>

            {/* Pilgrim Contact Info */}
            <div className="space-y-3">
              <h4 className="font-serif text-sm font-bold text-[#F9F6F0] uppercase tracking-wide flex items-center gap-2">
                <Users className="w-4 h-4 text-[#D4AF37]" />
                <span>Pilgrim Profile</span>
              </h4>
              <div className="grid grid-cols-2 gap-3 text-xs">
                <div className="p-3 rounded-xl bg-white/5 border border-white/5 space-y-1">
                  <span className="text-slate-400 text-[10px] uppercase">Full Name</span>
                  <p className="font-semibold text-white">{selectedBooking.pilgrim_name}</p>
                </div>
                <div className="p-3 rounded-xl bg-white/5 border border-white/5 space-y-1">
                  <span className="text-slate-400 text-[10px] uppercase">Phone Number</span>
                  <p className="font-semibold text-[#D4AF37]">{selectedBooking.pilgrim_phone}</p>
                </div>
                <div className="col-span-2 p-3 rounded-xl bg-white/5 border border-white/5 space-y-1">
                  <span className="text-slate-400 text-[10px] uppercase">Email</span>
                  <p className="text-slate-200">{selectedBooking.pilgrim_email || "Not specified"}</p>
                </div>
              </div>
            </div>

            {/* Package & Departure Snapshot */}
            <div className="space-y-3">
              <h4 className="font-serif text-sm font-bold text-[#F9F6F0] uppercase tracking-wide flex items-center gap-2">
                <MapPin className="w-4 h-4 text-[#D4AF37]" />
                <span>Package Snapshot</span>
              </h4>
              <div className="grid grid-cols-2 gap-3 text-xs">
                <div className="col-span-2 p-3 rounded-xl bg-white/5 border border-white/5 space-y-1">
                  <span className="text-slate-400 text-[10px] uppercase">Package Name</span>
                  <p className="font-semibold text-white">
                    {selectedBooking.package_title_snapshot || selectedBooking.package_title}
                  </p>
                </div>
                <div className="p-3 rounded-xl bg-white/5 border border-white/5 space-y-1">
                  <span className="text-slate-400 text-[10px] uppercase">Departure City</span>
                  <p className="text-slate-200">{selectedBooking.departure_city || "Standard City"}</p>
                </div>
                <div className="p-3 rounded-xl bg-white/5 border border-white/5 space-y-1">
                  <span className="text-slate-400 text-[10px] uppercase">Travel Dates</span>
                  <p className="text-slate-200">
                    {selectedBooking.start_date
                      ? `${selectedBooking.start_date} to ${selectedBooking.end_date}`
                      : selectedBooking.travel_date}
                  </p>
                </div>
              </div>
            </div>

            {/* Itemized Travellers List */}
            <div className="space-y-3">
              <h4 className="font-serif text-sm font-bold text-[#F9F6F0] uppercase tracking-wide">
                Travellers ({selectedBooking.total_travellers || 1})
              </h4>
              <div className="space-y-2">
                {Array.isArray(selectedBooking.booking_travellers) &&
                selectedBooking.booking_travellers.length > 0 ? (
                  selectedBooking.booking_travellers.map((tr: any, idx: number) => (
                    <div
                      key={tr.id || idx}
                      className="p-3 rounded-xl bg-white/5 border border-white/10 text-xs flex items-center justify-between"
                    >
                      <div>
                        <span className="font-semibold text-white block">{tr.full_name}</span>
                        <span className="text-[10px] text-slate-400 capitalize">
                          {tr.traveller_type} {tr.gender ? `• ${tr.gender}` : ""}
                        </span>
                      </div>
                      {tr.mobility_requirements && (
                        <span className="text-[10px] px-2 py-0.5 rounded bg-teal-500/10 text-teal-300 border border-teal-500/20">
                          {tr.mobility_requirements}
                        </span>
                      )}
                    </div>
                  ))
                ) : (
                  <div className="p-3 rounded-xl bg-white/5 border border-white/5 text-xs text-slate-400">
                    Primary pilgrim booked under account holder name.
                  </div>
                )}
              </div>
            </div>

            {/* Financials & Balance */}
            <div className="p-4 rounded-2xl bg-[#0E1724] border border-[#D4AF37]/30 space-y-3">
              <span className="text-xs font-bold uppercase tracking-wider text-[#D4AF37] block">
                Financial Breakdown
              </span>

              <div className="space-y-1.5 text-xs">
                <div className="flex justify-between text-slate-300">
                  <span>Total Booking Amount</span>
                  <span className="font-mono font-bold text-white">
                    ₹ {Number(selectedBooking.total_amount || selectedBooking.total_booking_amount || 0).toLocaleString()}
                  </span>
                </div>
                <div className="flex justify-between text-slate-300">
                  <span>Amount Paid</span>
                  <span className="font-mono text-emerald-400 font-semibold">
                    ₹ {Number(selectedBooking.amount_paid || 0).toLocaleString()}
                  </span>
                </div>
                <div className="flex justify-between pt-2 border-t border-white/10 text-slate-200">
                  <span className="font-bold">Balance Remaining</span>
                  <span className="font-mono font-extrabold text-[#D4AF37]">
                    ₹ {Number(selectedBooking.balance_amount || 0).toLocaleString()}
                  </span>
                </div>
              </div>
            </div>

            {/* Customer Visible Notes */}
            {selectedBooking.customer_visible_notes && (
              <div className="p-3 rounded-xl bg-white/5 border border-white/10 space-y-1 text-xs text-slate-300">
                <span className="text-[10px] uppercase font-bold text-[#D4AF37] block">
                  Customer Visible Notes
                </span>
                <p>{selectedBooking.customer_visible_notes}</p>
              </div>
            )}

            {/* Internal Admin Notes */}
            {selectedBooking.internal_admin_notes && (
              <div className="p-3 rounded-xl bg-amber-500/10 border border-amber-500/20 space-y-1 text-xs text-amber-200">
                <span className="text-[10px] uppercase font-bold text-amber-400 block">
                  🔒 Internal Admin Notes (Hidden from User)
                </span>
                <p>{selectedBooking.internal_admin_notes}</p>
              </div>
            )}
          </div>
        </>
      )}

      {/* Payment Status Modal */}
      {paymentModalBooking && (
        <div className="fixed inset-0 z-50 flex items-center justify-center p-4">
          <div
            onClick={() => setPaymentModalBooking(null)}
            className="fixed inset-0 bg-black/80 backdrop-blur-sm animate-in fade-in"
          />
          <div className="relative w-full max-w-md bg-[#0A1118] border border-[#D4AF37]/30 rounded-3xl p-6 sm:p-8 space-y-5 z-10 animate-in zoom-in-95 shadow-2xl">
            <div className="flex items-start justify-between border-b border-white/10 pb-3">
              <div>
                <h3 className="font-serif text-xl font-bold text-white">Update Payment Status</h3>
                <p className="text-xs text-slate-400">
                  Booking Ref: {paymentModalBooking.booking_reference}
                </p>
              </div>
              <button
                onClick={() => setPaymentModalBooking(null)}
                className="p-1 text-slate-400 hover:text-white"
              >
                <X className="w-5 h-5" />
              </button>
            </div>

            <div className="space-y-4 text-xs">
              <div>
                <label className="text-slate-400 block mb-1">Payment Status</label>
                <select
                  value={newPaymentStatus}
                  onChange={(e) => setNewPaymentStatus(e.target.value as any)}
                  className="w-full px-3 py-2 rounded-xl bg-[#0F172A] border border-white/10 text-white font-semibold focus:outline-none"
                >
                  <option value="paid">Paid (Full Settlement)</option>
                  <option value="partial">Partial (Advance Received)</option>
                  <option value="unpaid">Unpaid (Pending Payment)</option>
                  <option value="refunded">Refunded (Cancelled / Returned)</option>
                </select>
              </div>

              <div>
                <label className="text-slate-400 block mb-1">Amount Paid (₹)</label>
                <input
                  type="number"
                  value={newAmountPaid}
                  onChange={(e) => setNewAmountPaid(Number(e.target.value))}
                  className="w-full px-3 py-2 rounded-xl bg-black/40 border border-white/10 text-white font-mono font-bold focus:outline-none"
                />
              </div>

              <div className="p-3 rounded-xl bg-white/5 border border-white/5 space-y-1">
                <div className="flex justify-between text-slate-400">
                  <span>Total Booking Cost:</span>
                  <span className="font-mono text-white font-bold">
                    ₹ {Number(paymentModalBooking.total_amount || paymentModalBooking.total_booking_amount || 0).toLocaleString()}
                  </span>
                </div>
                <div className="flex justify-between text-slate-400">
                  <span>Computed Balance:</span>
                  <span className="font-mono text-[#D4AF37] font-bold">
                    ₹ {Math.max(
                      0,
                      Number(paymentModalBooking.total_amount || paymentModalBooking.total_booking_amount || 0) - Number(newAmountPaid)
                    ).toLocaleString()}
                  </span>
                </div>
              </div>
            </div>

            <div className="flex items-center justify-end gap-3 pt-3 border-t border-white/10">
              <button
                onClick={() => setPaymentModalBooking(null)}
                className="px-4 py-2 rounded-xl bg-white/5 hover:bg-white/10 text-xs text-slate-300"
              >
                Cancel
              </button>
              <button
                onClick={handleUpdatePayment}
                disabled={isUpdatingPayment}
                className="px-5 py-2 rounded-xl bg-[#D4AF37] text-[#0A1118] font-bold text-xs hover:brightness-110 disabled:opacity-50"
              >
                {isUpdatingPayment ? "Saving..." : "Save Payment"}
              </button>
            </div>
          </div>
        </div>
      )}

      {/* Cancellation Dialog Modal */}
      {cancellationBooking && (
        <div className="fixed inset-0 z-50 flex items-center justify-center p-4">
          <div
            onClick={() => setCancellationBooking(null)}
            className="fixed inset-0 bg-black/80 backdrop-blur-sm animate-in fade-in"
          />
          <div className="relative w-full max-w-md bg-[#0A1118] border border-rose-500/40 rounded-3xl p-6 sm:p-8 space-y-5 z-10 animate-in zoom-in-95 shadow-2xl">
            <div className="flex items-start justify-between border-b border-white/10 pb-3">
              <div>
                <h3 className="font-serif text-xl font-bold text-white text-rose-400">
                  Cancel Confirmed Booking
                </h3>
                <p className="text-xs text-slate-400">
                  Ref: {cancellationBooking.booking_reference}
                </p>
              </div>
              <button
                onClick={() => setCancellationBooking(null)}
                className="p-1 text-slate-400 hover:text-white"
              >
                <X className="w-5 h-5" />
              </button>
            </div>

            <div className="space-y-3 text-xs">
              <div className="p-3 rounded-xl bg-rose-500/10 border border-rose-500/20 text-rose-300 space-y-1">
                <span className="font-bold block">⚠️ Concurrency & Seat Release Notice:</span>
                <p>
                  Cancelling will immediately restore {cancellationBooking.total_travellers || 1} available
                  seats back to the departure schedule and send an in-app notification to the pilgrim.
                </p>
              </div>

              <div>
                <label className="text-slate-400 block mb-1 font-semibold">
                  Cancellation Reason
                </label>
                <textarea
                  rows={3}
                  placeholder="Record cancellation reason (e.g. pilgrim medical emergency, schedule conflict)..."
                  value={cancellationReason}
                  onChange={(e) => setCancellationReason(e.target.value)}
                  className="w-full p-2.5 rounded-xl bg-white/5 border border-white/10 text-white placeholder-slate-500 focus:outline-none"
                />
              </div>
            </div>

            <div className="flex items-center justify-end gap-3 pt-3 border-t border-white/10">
              <button
                onClick={() => setCancellationBooking(null)}
                className="px-4 py-2 rounded-xl bg-white/5 hover:bg-white/10 text-xs text-slate-300"
              >
                Keep Booking
              </button>
              <button
                onClick={handleCancelBooking}
                disabled={isCancelling || !cancellationReason.trim()}
                className="px-5 py-2 rounded-xl bg-rose-600 text-white font-bold text-xs hover:bg-rose-500 disabled:opacity-50"
              >
                {isCancelling ? "Cancelling..." : "Confirm Cancellation"}
              </button>
            </div>
          </div>
        </div>
      )}

      {/* Direct "New Booking" Wizard Modal */}
      {showNewBookingModal && (
        <div className="fixed inset-0 z-50 flex items-center justify-center p-4">
          <div
            onClick={() => setShowNewBookingModal(false)}
            className="fixed inset-0 bg-black/80 backdrop-blur-sm animate-in fade-in"
          />
          <div className="relative w-full max-w-2xl bg-[#0A1118] border border-[#D4AF37]/30 rounded-3xl p-6 sm:p-8 space-y-5 z-10 animate-in zoom-in-95 shadow-2xl max-h-[90vh] overflow-y-auto">
            {/* Header */}
            <div className="flex items-start justify-between border-b border-white/10 pb-4">
              <div>
                <span className="text-[10px] font-bold uppercase tracking-widest text-[#D4AF37]">
                  Admin Direct Booking
                </span>
                <h3 className="font-serif text-2xl font-bold text-white">Create New Sacred Journey</h3>
                <p className="text-xs text-slate-400">Step {newBookingStep} of 4</p>
              </div>
              <button
                onClick={() => setShowNewBookingModal(false)}
                className="p-1.5 text-slate-400 hover:text-white"
              >
                <X className="w-5 h-5" />
              </button>
            </div>

            {/* Step 1: Select User */}
            {newBookingStep === 1 && (
              <div className="space-y-4">
                <div>
                  <label className="text-xs font-bold uppercase tracking-wider text-slate-400 block mb-1">
                    Step 1: Search Registered Pilgrim Profile
                  </label>
                  <input
                    type="text"
                    placeholder="Search by full name, phone number, or email..."
                    value={userSearchQuery}
                    onChange={(e) => setUserSearchQuery(e.target.value)}
                    className="w-full px-3.5 py-2.5 rounded-xl bg-white/5 border border-white/10 text-xs text-white placeholder-slate-500 focus:outline-none focus:border-[#D4AF37]"
                  />
                </div>

                {searchedUsers.length > 0 && (
                  <div className="space-y-1.5 max-h-48 overflow-y-auto">
                    {searchedUsers.map((u) => (
                      <div
                        key={u.id}
                        onClick={() => setSelectedUser(u)}
                        className={`p-3 rounded-xl border text-xs cursor-pointer transition flex items-center justify-between ${
                          selectedUser?.id === u.id
                            ? "bg-[#D4AF37]/15 border-[#D4AF37] text-white"
                            : "bg-white/5 border-white/5 text-slate-300 hover:bg-white/10"
                        }`}
                      >
                        <div>
                          <span className="font-bold text-white block">{u.full_name || "Pilgrim"}</span>
                          <span className="text-[11px] text-slate-400">{u.email} • {u.phone}</span>
                        </div>
                        {selectedUser?.id === u.id && <Check className="w-4 h-4 text-[#D4AF37]" />}
                      </div>
                    ))}
                  </div>
                )}

                {selectedUser && (
                  <div className="p-3 rounded-xl bg-emerald-500/10 border border-emerald-500/30 text-xs text-emerald-300 flex items-center justify-between">
                    <span>Selected: <strong>{selectedUser.full_name}</strong> ({selectedUser.email})</span>
                    <button
                      onClick={() => setNewBookingStep(2)}
                      className="px-4 py-1.5 rounded-lg bg-emerald-500 text-[#0A1118] font-bold text-xs hover:bg-emerald-400"
                    >
                      Next: Package →
                    </button>
                  </div>
                )}
              </div>
            )}

            {/* Step 2: Select Package & Departure */}
            {newBookingStep === 2 && (
              <div className="space-y-4 text-xs">
                <div>
                  <label className="text-slate-400 block mb-1 font-semibold">Select Tour Package</label>
                  <select
                    value={selectedPackage?.id || ""}
                    onChange={(e) => {
                      const pkg = packageList.find((p) => p.id === e.target.value);
                      if (pkg) handleSelectPackageInWizard(pkg);
                    }}
                    className="w-full px-3 py-2.5 rounded-xl bg-[#0F172A] border border-white/10 text-white font-semibold focus:outline-none"
                  >
                    <option value="">-- Choose Package --</option>
                    {packageList.map((pkg) => (
                      <option key={pkg.id} value={pkg.id}>
                        {pkg.name} ({pkg.destination_name || "Sacred Tour"})
                      </option>
                    ))}
                  </select>
                </div>

                {selectedPackage && (
                  <div className="space-y-2">
                    <label className="text-slate-400 block font-semibold">Select Departure Schedule</label>
                    {availableDepartures.length > 0 ? (
                      <div className="grid grid-cols-1 sm:grid-cols-2 gap-2">
                        {availableDepartures.map((dep) => (
                          <div
                            key={dep.id}
                            onClick={() => setSelectedDeparture(dep)}
                            className={`p-3 rounded-xl border cursor-pointer transition ${
                              selectedDeparture?.id === dep.id
                                ? "bg-[#D4AF37]/15 border-[#D4AF37] text-white"
                                : "bg-white/5 border-white/5 text-slate-300 hover:bg-white/10"
                            }`}
                          >
                            <span className="font-bold text-white block">{dep.departure_city}</span>
                            <span className="text-[11px] text-slate-400 block">
                              {dep.start_date} to {dep.end_date}
                            </span>
                            <span className="text-[10px] text-emerald-400 font-semibold block mt-1">
                              ✓ {dep.available_seats} seats available
                            </span>
                          </div>
                        ))}
                      </div>
                    ) : (
                      <div className="p-3 rounded-xl bg-white/5 border border-white/10 text-slate-400">
                        No scheduled departures found. Direct booking will proceed with flexible timing.
                      </div>
                    )}
                  </div>
                )}

                <div className="flex justify-between pt-3 border-t border-white/10">
                  <button
                    onClick={() => setNewBookingStep(1)}
                    className="px-4 py-2 rounded-xl bg-white/5 text-slate-300"
                  >
                    ← Back
                  </button>
                  <button
                    onClick={() => setNewBookingStep(3)}
                    disabled={!selectedPackage}
                    className="px-5 py-2 rounded-xl bg-[#D4AF37] text-[#0A1118] font-bold disabled:opacity-50"
                  >
                    Next: Travellers →
                  </button>
                </div>
              </div>
            )}

            {/* Step 3: Travellers & Pricing */}
            {newBookingStep === 3 && (
              <div className="space-y-4 text-xs">
                <div className="grid grid-cols-3 gap-3">
                  <div>
                    <label className="text-slate-400 block mb-1">Adults</label>
                    <input
                      type="number"
                      min={1}
                      value={nbAdults}
                      onChange={(e) => setNbAdults(Math.max(1, Number(e.target.value)))}
                      className="w-full px-3 py-2 rounded-xl bg-black/40 border border-white/10 text-white font-bold"
                    />
                  </div>
                  <div>
                    <label className="text-slate-400 block mb-1">Senior Citizens</label>
                    <input
                      type="number"
                      min={0}
                      value={nbSeniors}
                      onChange={(e) => setNbSeniors(Math.max(0, Number(e.target.value)))}
                      className="w-full px-3 py-2 rounded-xl bg-black/40 border border-white/10 text-white font-bold"
                    />
                  </div>
                  <div>
                    <label className="text-slate-400 block mb-1">Children</label>
                    <input
                      type="number"
                      min={0}
                      value={nbChildren}
                      onChange={(e) => setNbChildren(Math.max(0, Number(e.target.value)))}
                      className="w-full px-3 py-2 rounded-xl bg-black/40 border border-white/10 text-white font-bold"
                    />
                  </div>
                </div>

                <div className="grid grid-cols-2 gap-3">
                  <div>
                    <label className="text-slate-400 block mb-1">Price Per Person (₹)</label>
                    <input
                      type="number"
                      value={nbPricePerPerson}
                      onChange={(e) => setNbPricePerPerson(Number(e.target.value))}
                      className="w-full px-3 py-2 rounded-xl bg-black/40 border border-white/10 text-white font-bold"
                    />
                  </div>
                  <div>
                    <label className="text-slate-400 block mb-1">Discount Amount (₹)</label>
                    <input
                      type="number"
                      value={nbDiscount}
                      onChange={(e) => setNbDiscount(Number(e.target.value))}
                      className="w-full px-3 py-2 rounded-xl bg-black/40 border border-white/10 text-white font-bold"
                    />
                  </div>
                </div>

                <div className="p-3 rounded-2xl bg-[#0E1724] border border-[#D4AF37]/30 flex justify-between items-center">
                  <span className="font-bold text-white">Computed Total:</span>
                  <span className="font-mono text-base font-extrabold text-[#D4AF37]">
                    ₹ {Math.max(0, (nbAdults + nbChildren + nbSeniors) * nbPricePerPerson - nbDiscount).toLocaleString()}
                  </span>
                </div>

                <div className="flex justify-between pt-3 border-t border-white/10">
                  <button
                    onClick={() => setNewBookingStep(2)}
                    className="px-4 py-2 rounded-xl bg-white/5 text-slate-300"
                  >
                    ← Back
                  </button>
                  <button
                    onClick={() => setNewBookingStep(4)}
                    className="px-5 py-2 rounded-xl bg-[#D4AF37] text-[#0A1118] font-bold"
                  >
                    Next: Notes & Confirm →
                  </button>
                </div>
              </div>
            )}

            {/* Step 4: Notes & Final Confirmation */}
            {newBookingStep === 4 && (
              <div className="space-y-4 text-xs">
                <div>
                  <label className="text-slate-400 block mb-1">Customer Visible Notes</label>
                  <textarea
                    rows={2}
                    placeholder="Notes visible to the pilgrim on their My Bookings dashboard..."
                    value={nbCustomerNotes}
                    onChange={(e) => setNbCustomerNotes(e.target.value)}
                    className="w-full p-2.5 rounded-xl bg-white/5 border border-white/10 text-white placeholder-slate-500"
                  />
                </div>

                <div>
                  <label className="text-slate-400 block mb-1">🔒 Internal Admin Notes</label>
                  <textarea
                    rows={2}
                    placeholder="Private CRM notes (hidden from the customer)..."
                    value={nbAdminNotes}
                    onChange={(e) => setNbAdminNotes(e.target.value)}
                    className="w-full p-2.5 rounded-xl bg-white/5 border border-white/10 text-white placeholder-slate-500"
                  />
                </div>

                <div className="flex justify-between pt-3 border-t border-white/10">
                  <button
                    onClick={() => setNewBookingStep(3)}
                    className="px-4 py-2 rounded-xl bg-white/5 text-slate-300"
                  >
                    ← Back
                  </button>
                  <button
                    onClick={handleCreateDirectBooking}
                    disabled={isCreatingBooking}
                    className="px-6 py-2.5 rounded-xl bg-gradient-to-r from-[#D4AF37] to-[#B38728] text-[#0A1118] font-bold shadow-lg hover:brightness-110 disabled:opacity-50"
                  >
                    {isCreatingBooking ? "Confirming..." : "✓ Confirm & Create Booking"}
                  </button>
                </div>
              </div>
            )}
          </div>
        </div>
      )}
    </div>
  );
}
