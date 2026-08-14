"use client";

import React, { useState, useEffect } from "react";
import Link from "next/link";
import { useRouter } from "next/navigation";
import { motion, AnimatePresence } from "framer-motion";
import { useAuth } from "@/context/AuthContext";
import {
  getMyBookings,
  getUserNotifications,
  markNotificationAsRead,
  UserBookingItem,
  UserNotificationItem,
} from "@/lib/services/bookingService";
import MainNavbar from "@/components/navigation/MainNavbar";
import {
  Compass,
  Calendar,
  MapPin,
  Users,
  CheckCircle2,
  Clock,
  ArrowRight,
  Shield,
  Copy,
  Check,
  AlertCircle,
  FileText,
  Phone,
  Sparkles,
  RefreshCw,
  Bell,
  X,
  CreditCard,
  HeartHandshake,
  ChevronRight,
  ExternalLink,
} from "lucide-react";
import { toast } from "sonner";
import { easeQuint } from "@/lib/animations";

export default function MyBookingsPage() {
  const { user, isLoading: authLoading } = useAuth();
  const router = useRouter();


  const [bookings, setBookings] = useState<UserBookingItem[]>([]);
  const [notifications, setNotifications] = useState<UserNotificationItem[]>([]);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState<string | null>(null);
  const [activeTab, setActiveTab] = useState<"all" | "upcoming" | "completed" | "cancelled">("all");

  // Selected booking detail modal
  const [selectedBooking, setSelectedBooking] = useState<UserBookingItem | null>(null);
  const [copiedRef, setCopiedRef] = useState(false);

  const fetchUserBookings = async () => {
    setLoading(true);
    setError(null);
    const res = await getMyBookings(activeTab);
    if (res.error) {
      setError(res.error);
    } else {
      setBookings(res.bookings);
    }
    const notifs = await getUserNotifications();
    setNotifications(notifs);
    setLoading(false);
  };

  useEffect(() => {
    if (!authLoading) {
      if (!user) {
        router.push("/login?redirect=/my-bookings");
      } else {
        fetchUserBookings();
      }
    }
  }, [user, authLoading, activeTab]);

  const handleCopyRef = (ref: string) => {
    navigator.clipboard.writeText(ref);
    setCopiedRef(true);
    toast.info(`Copied Reference: ${ref}`);
    setTimeout(() => setCopiedRef(false), 2000);
  };

  const handleDismissNotification = async (id: string) => {
    await markNotificationAsRead(id);
    setNotifications((prev) => prev.filter((n) => n.id !== id));
  };

  if (authLoading) {
    return (
      <div className="min-h-screen bg-[#07131F] text-[#F9F6F0] flex items-center justify-center">
        <div className="flex flex-col items-center gap-3">
          <div className="w-10 h-10 border-2 border-[#D89A32] border-t-transparent rounded-full animate-spin" />
          <span className="font-serif text-sm text-slate-300">Loading your sacred journeys...</span>
        </div>
      </div>
    );
  }

  return (
    <div className="min-h-screen bg-[#06101A] text-[#F9F6F0] flex flex-col font-sans selection:bg-[#D89A32]/30">
      <MainNavbar />

      <main className="flex-1 max-w-6xl w-full mx-auto px-4 sm:px-6 lg:px-8 pt-28 pb-20 space-y-8">
        {/* Page Hero Header */}
        <div className="relative rounded-3xl overflow-hidden p-8 sm:p-12 bg-gradient-to-br from-[#0F2236] via-[#0A1827] to-[#06101A] border border-[#D89A32]/25 shadow-2xl">
          <div className="absolute top-0 right-0 w-96 h-96 bg-[#D89A32]/5 rounded-full blur-3xl pointer-events-none" />

          <div className="relative z-10 space-y-3 max-w-2xl">
            <div className="inline-flex items-center gap-2 px-3 py-1 rounded-full bg-[#D89A32]/10 border border-[#D89A32]/30 text-[#D89A32] text-xs font-bold uppercase tracking-wider">
              <Compass className="w-3.5 h-3.5" />
              <span>Pilgrim Dossier</span>
            </div>
            <h1 className="font-serif text-3xl sm:text-4xl lg:text-5xl font-extrabold text-white tracking-tight leading-tight">
              My Sacred Journeys
            </h1>
            <p className="text-sm sm:text-base text-slate-300 leading-relaxed">
              View your confirmed pilgrimages, departure schedules, darshan arrangements, and verified journey status.
            </p>
          </div>
        </div>

        {/* In-app Notifications Banner */}
        {notifications.length > 0 && (
          <div className="space-y-2">
            {notifications.map((notif) => (
              <motion.div
                key={notif.id}
                initial={{ opacity: 0, y: -10 }}
                animate={{ opacity: 1, y: 0 }}
                exit={{ opacity: 0 }}
                className="p-4 rounded-2xl bg-[#D89A32]/10 border border-[#D89A32]/30 flex items-start justify-between gap-3 text-xs shadow-lg"
              >
                <div className="flex items-start gap-3">
                  <div className="p-2 rounded-xl bg-[#D89A32]/20 text-[#D89A32] shrink-0 mt-0.5">
                    <Bell className="w-4 h-4" />
                  </div>
                  <div>
                    <span className="font-bold text-white block text-sm">{notif.title}</span>
                    <p className="text-slate-300 mt-0.5">{notif.message}</p>
                    <span className="text-[10px] text-slate-400 block mt-1">
                      {new Date(notif.created_at).toLocaleDateString()}
                    </span>
                  </div>
                </div>
                <button
                  onClick={() => handleDismissNotification(notif.id)}
                  className="p-1 rounded-lg text-slate-400 hover:text-white"
                  title="Dismiss notification"
                >
                  <X className="w-4 h-4" />
                </button>
              </motion.div>
            ))}
          </div>
        )}

        {/* Tab Controls & Refresh */}
        <div className="flex flex-col sm:flex-row items-start sm:items-center justify-between gap-4 border-b border-white/10 pb-4">
          <div className="flex items-center gap-2 overflow-x-auto w-full sm:w-auto">
            {[
              { key: "all", label: "All Journeys" },
              { key: "upcoming", label: "Upcoming" },
              { key: "completed", label: "Completed" },
              { key: "cancelled", label: "Cancelled" },
            ].map((tab) => (
              <button
                key={tab.key}
                onClick={() => setActiveTab(tab.key as any)}
                className={`px-4 py-2 rounded-xl text-xs sm:text-sm font-bold transition whitespace-nowrap ${
                  activeTab === tab.key
                    ? "bg-[#D89A32] text-[#06101A] shadow-md shadow-[#D89A32]/20"
                    : "text-slate-400 hover:text-white hover:bg-white/5"
                }`}
              >
                {tab.label}
              </button>
            ))}
          </div>

          <button
            onClick={fetchUserBookings}
            disabled={loading}
            className="flex items-center gap-2 px-3.5 py-2 rounded-xl bg-white/5 hover:bg-white/10 text-slate-300 text-xs font-semibold border border-white/10 transition shrink-0"
          >
            <RefreshCw className={`w-3.5 h-3.5 ${loading ? "animate-spin text-[#D89A32]" : ""}`} />
            <span>Refresh</span>
          </button>
        </div>

        {/* Loading Skeletons */}
        {loading && (
          <div className="grid grid-cols-1 md:grid-cols-2 gap-6">
            {[1, 2].map((i) => (
              <div
                key={i}
                className="h-64 rounded-3xl bg-white/[0.03] border border-white/10 animate-pulse p-6 space-y-4"
              >
                <div className="h-4 bg-white/10 rounded w-1/3" />
                <div className="h-6 bg-white/10 rounded w-2/3" />
                <div className="h-20 bg-white/5 rounded-2xl" />
              </div>
            ))}
          </div>
        )}

        {/* Error State */}
        {!loading && error && (
          <div className="p-8 rounded-3xl bg-rose-500/10 border border-rose-500/30 text-center space-y-4">
            <AlertCircle className="w-10 h-10 text-rose-400 mx-auto" />
            <div className="space-y-1">
              <h3 className="font-serif text-lg font-bold text-white">We couldn't load your bookings right now.</h3>
              <p className="text-xs text-slate-400">{error}</p>
            </div>
            <button
              onClick={fetchUserBookings}
              className="px-5 py-2 rounded-xl bg-white/10 hover:bg-white/15 text-white text-xs font-bold transition"
            >
              Try Again
            </button>
          </div>
        )}

        {/* Empty State */}
        {!loading && !error && bookings.length === 0 && (
          <div className="p-12 sm:p-16 rounded-3xl bg-white/[0.02] border border-white/10 text-center space-y-6 max-w-lg mx-auto">
            <div className="w-16 h-16 rounded-full bg-[#D89A32]/10 border border-[#D89A32]/30 text-[#D89A32] flex items-center justify-center mx-auto shadow-xl">
              <Compass className="w-8 h-8" />
            </div>
            <div className="space-y-2">
              <h3 className="font-serif text-2xl font-bold text-white">No confirmed journeys yet</h3>
              <p className="text-xs sm:text-sm text-slate-400">
                Explore our curated pilgrimage packages or submit an enquiry to begin planning your next sacred journey with senior care and satvik meals.
              </p>
            </div>
            <div className="flex flex-col sm:flex-row items-center justify-center gap-3 pt-2">
              <Link
                href="/packages"
                className="w-full sm:w-auto px-6 py-3 rounded-xl bg-gradient-to-r from-[#D89A32] to-[#B38728] text-[#06101A] font-bold text-xs shadow-lg hover:brightness-110 transition text-center"
              >
                Explore Sacred Packages
              </Link>
              <Link
                href="/ai-trip-planner"
                className="w-full sm:w-auto px-6 py-3 rounded-xl bg-white/5 hover:bg-white/10 border border-white/10 text-white font-semibold text-xs transition text-center"
              >
                Plan with AI Assistant
              </Link>
            </div>
          </div>
        )}

        {/* Bookings List Cards */}
        {!loading && !error && bookings.length > 0 && (
          <div className="grid grid-cols-1 md:grid-cols-2 gap-6">
            {bookings.map((booking, idx) => {
              const isCancelled = booking.booking_status === "cancelled";
              const isCompleted = booking.booking_status === "completed";

              return (
                <motion.div
                  key={booking.id}
                  initial={{ opacity: 0, y: 15 }}
                  animate={{ opacity: 1, y: 0 }}
                  transition={{ duration: 0.35, delay: idx * 0.05, ease: easeQuint }}
                  className="rounded-3xl bg-[#0B1A28] border border-[#D89A32]/25 p-6 shadow-xl space-y-5 hover:border-[#D89A32]/50 transition-all group flex flex-col justify-between"
                >
                  <div className="space-y-4">
                    {/* Top Row: Reference + Status Badge */}
                    <div className="flex items-start justify-between gap-3">
                      <div>
                        <span className="text-[10px] uppercase font-bold tracking-widest text-[#D89A32] block">
                          Confirmed Reference
                        </span>
                        <div className="font-mono text-base font-extrabold text-white">
                          {booking.booking_reference}
                        </div>
                      </div>

                      <span
                        className={`text-[10px] font-bold uppercase tracking-wider px-3 py-1 rounded-full border ${
                          isCancelled
                            ? "bg-rose-500/15 text-rose-300 border-rose-500/30"
                            : isCompleted
                            ? "bg-blue-500/15 text-blue-300 border-blue-500/30"
                            : "bg-emerald-500/15 text-emerald-300 border-emerald-500/30 font-extrabold"
                        }`}
                      >
                        {booking.booking_status || "confirmed"}
                      </span>
                    </div>

                    {/* Package Title & Destination */}
                    <div>
                      <h3 className="font-serif text-xl font-bold text-white group-hover:text-[#D89A32] transition line-clamp-1">
                        {booking.package_title_snapshot || booking.package_title}
                      </h3>
                      <div className="flex items-center gap-1.5 text-xs text-slate-400 mt-1">
                        <MapPin className="w-3.5 h-3.5 text-[#D89A32]" />
                        <span>{booking.destination || "Sacred Holy Destination"}</span>
                      </div>
                    </div>

                    {/* Specs Grid */}
                    <div className="grid grid-cols-2 gap-2.5 p-3.5 rounded-2xl bg-white/[0.03] border border-white/5 text-xs">
                      <div>
                        <span className="text-slate-400 text-[10px] block uppercase">Departure City</span>
                        <span className="font-semibold text-white">
                          {booking.departure_city || "Standard Departure"}
                        </span>
                      </div>
                      <div>
                        <span className="text-slate-400 text-[10px] block uppercase">Travel Timing</span>
                        <span className="font-semibold text-white">
                          {booking.start_date ? `${booking.start_date}` : booking.travel_date || "Flexible"}
                        </span>
                      </div>
                      <div>
                        <span className="text-slate-400 text-[10px] block uppercase">Pilgrims</span>
                        <span className="font-medium text-slate-200">
                          {booking.total_travellers || booking.adults || 1} Persons
                        </span>
                      </div>
                      <div>
                        <span className="text-slate-400 text-[10px] block uppercase">Payment State</span>
                        <span
                          className={`font-semibold capitalize ${
                            booking.payment_status === "paid"
                              ? "text-emerald-400"
                              : booking.payment_status === "partial"
                              ? "text-amber-400"
                              : "text-rose-400"
                          }`}
                        >
                          {booking.payment_status || "unpaid"}
                        </span>
                      </div>
                    </div>
                  </div>

                  {/* Bottom Row: Amount & Action */}
                  <div className="pt-4 border-t border-white/10 flex items-center justify-between">
                    <div>
                      <span className="text-[10px] text-slate-400 block uppercase">Total Cost</span>
                      <span className="font-mono text-base font-bold text-[#D89A32]">
                        ₹ {Number(booking.total_amount || 0).toLocaleString()}
                      </span>
                    </div>

                    <button
                      onClick={() => setSelectedBooking(booking)}
                      className="px-4 py-2 rounded-xl bg-white/10 hover:bg-[#D89A32] hover:text-[#06101A] text-white text-xs font-bold transition flex items-center gap-1.5"
                    >
                      <span>View Dossier</span>
                      <ArrowRight className="w-3.5 h-3.5" />
                    </button>
                  </div>
                </motion.div>
              );
            })}
          </div>
        )}
      </main>

      {/* Booking Details Modal / Drawer */}
      <AnimatePresence>
        {selectedBooking && (
          <div className="fixed inset-0 z-50 flex items-center justify-center p-4">
            <motion.div
              initial={{ opacity: 0 }}
              animate={{ opacity: 1 }}
              exit={{ opacity: 0 }}
              onClick={() => setSelectedBooking(null)}
              className="fixed inset-0 bg-black/80 backdrop-blur-md"
            />

            <motion.div
              initial={{ scale: 0.95, opacity: 0 }}
              animate={{ scale: 1, opacity: 1 }}
              exit={{ scale: 0.95, opacity: 0 }}
              className="relative w-full max-w-xl bg-[#091624] border border-[#D89A32]/40 rounded-3xl p-6 sm:p-8 shadow-2xl space-y-6 z-10 max-h-[90vh] overflow-y-auto"
            >
              {/* Header */}
              <div className="flex items-start justify-between border-b border-white/10 pb-4">
                <div>
                  <span className="text-[10px] uppercase font-bold tracking-widest text-[#D89A32]">
                    Confirmed Pilgrimage Dossier
                  </span>
                  <div className="flex items-center gap-2 mt-0.5">
                    <h3 className="font-mono text-2xl font-black text-white">
                      {selectedBooking.booking_reference}
                    </h3>
                    <button
                      onClick={() => handleCopyRef(selectedBooking.booking_reference)}
                      className="p-1 rounded text-slate-400 hover:text-[#D89A32]"
                      title="Copy Reference Number"
                    >
                      {copiedRef ? <Check className="w-4 h-4 text-emerald-400" /> : <Copy className="w-4 h-4" />}
                    </button>
                  </div>
                  <span className="text-xs text-slate-400">
                    Confirmed on {new Date(selectedBooking.confirmed_at || selectedBooking.created_at).toLocaleDateString()}
                  </span>
                </div>

                <button
                  onClick={() => setSelectedBooking(null)}
                  className="p-2 rounded-xl text-slate-400 hover:text-white hover:bg-white/5"
                >
                  <X className="w-5 h-5" />
                </button>
              </div>

              {/* Package & Route Snapshot */}
              <div className="space-y-2 p-4 rounded-2xl bg-white/[0.03] border border-white/10 text-xs">
                <span className="text-[10px] uppercase font-bold text-[#D89A32] block">Tour Itinerary Snapshot</span>
                <p className="font-serif text-lg font-bold text-white">
                  {selectedBooking.package_title_snapshot || selectedBooking.package_title}
                </p>
                <div className="grid grid-cols-2 gap-2 pt-2 text-slate-300">
                  <div>
                    <span className="text-slate-500 text-[10px] uppercase block">Departure</span>
                    <span className="font-semibold text-white">{selectedBooking.departure_city}</span>
                  </div>
                  <div>
                    <span className="text-slate-500 text-[10px] uppercase block">Travel Dates</span>
                    <span className="font-semibold text-white">
                      {selectedBooking.start_date
                        ? `${selectedBooking.start_date} to ${selectedBooking.end_date}`
                        : selectedBooking.travel_date}
                    </span>
                  </div>
                </div>
              </div>

              {/* Travellers & Assistance */}
              <div className="space-y-3 text-xs">
                <h4 className="font-serif text-sm font-bold text-white uppercase tracking-wide flex items-center gap-2">
                  <Users className="w-4 h-4 text-[#D89A32]" />
                  <span>Pilgrim Travellers ({selectedBooking.total_travellers || 1})</span>
                </h4>

                <div className="space-y-2">
                  {Array.isArray(selectedBooking.booking_travellers) &&
                  selectedBooking.booking_travellers.length > 0 ? (
                    selectedBooking.booking_travellers.map((tr, i) => (
                      <div
                        key={tr.id || i}
                        className="p-3 rounded-xl bg-white/5 border border-white/5 flex items-center justify-between"
                      >
                        <div>
                          <span className="font-bold text-white block">{tr.full_name}</span>
                          <span className="text-[10px] text-slate-400 capitalize">{tr.traveller_type}</span>
                        </div>
                        {tr.mobility_requirements && (
                          <span className="text-[10px] px-2 py-0.5 rounded bg-teal-500/10 text-teal-300 border border-teal-500/20">
                            {tr.mobility_requirements}
                          </span>
                        )}
                      </div>
                    ))
                  ) : (
                    <div className="p-3 rounded-xl bg-white/5 border border-white/5 text-slate-400">
                      Standard pilgrim arrangements registered under your name.
                    </div>
                  )}
                </div>
              </div>

              {/* Financial Breakdown */}
              <div className="p-4 rounded-2xl bg-[#06101A] border border-[#D89A32]/30 space-y-2.5 text-xs">
                <span className="text-xs font-bold uppercase tracking-wider text-[#D89A32] block">
                  Payment Summary
                </span>
                <div className="flex justify-between text-slate-300">
                  <span>Total Package Price</span>
                  <span className="font-mono font-bold text-white">
                    ₹ {Number(selectedBooking.total_amount || 0).toLocaleString()}
                  </span>
                </div>
                <div className="flex justify-between text-slate-300">
                  <span>Amount Paid / Settled</span>
                  <span className="font-mono text-emerald-400 font-semibold">
                    ₹ {Number(selectedBooking.amount_paid || 0).toLocaleString()}
                  </span>
                </div>
                <div className="pt-2 border-t border-white/10 flex justify-between text-white font-bold">
                  <span>Remaining Balance</span>
                  <span className="font-mono text-[#D89A32] font-extrabold">
                    ₹ {Number(selectedBooking.balance_amount || 0).toLocaleString()}
                  </span>
                </div>
              </div>

              {/* Customer Visible Notes */}
              {selectedBooking.customer_visible_notes && (
                <div className="p-3.5 rounded-2xl bg-white/5 border border-white/10 text-xs space-y-1">
                  <span className="text-[10px] uppercase font-bold text-[#D89A32] block">
                    Special Instructions for your Journey
                  </span>
                  <p className="text-slate-300 leading-relaxed">{selectedBooking.customer_visible_notes}</p>
                </div>
              )}

              {/* Verified Care Guarantee */}
              <div className="p-4 rounded-2xl bg-[#D89A32]/10 border border-[#D89A32]/25 text-xs text-slate-300 space-y-2">
                <div className="flex items-center gap-2 text-[#D89A32] font-bold">
                  <HeartHandshake className="w-4 h-4" />
                  <span>One Journey Care Support</span>
                </div>
                <p className="text-[11px] leading-relaxed">
                  Your dedicated Yatra Coordinator is assigned 48 hours before departure. Ground assistance, wheelchair support, and fresh satvik meals are coordinated as per verified arrangements.
                </p>
                <div className="flex items-center gap-4 pt-1 text-[11px] font-semibold text-white">
                  <span>📞 24/7 Helpline: +91 800-456-7890</span>
                </div>
              </div>

              <div className="pt-2">
                <button
                  onClick={() => setSelectedBooking(null)}
                  className="w-full py-3 rounded-xl bg-white/10 hover:bg-white/15 text-white font-bold text-xs transition"
                >
                  Close Dossier
                </button>
              </div>
            </motion.div>
          </div>
        )}
      </AnimatePresence>
    </div>
  );
}
