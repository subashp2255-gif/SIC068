"use client";

import { useEffect } from "react";
import { motion, AnimatePresence } from "framer-motion";
import { X, HeartHandshake, ShieldCheck, Stethoscope, Accessibility, UtensilsCrossed, PhoneCall, Clock, CheckCircle2 } from "lucide-react";

interface SeniorCareModalProps {
  isOpen: boolean;
  onClose: () => void;
}

export default function SeniorCareModal({ isOpen, onClose }: SeniorCareModalProps) {
  useEffect(() => {
    if (isOpen) {
      document.body.style.overflow = "hidden";
    } else {
      document.body.style.overflow = "";
    }
    return () => {
      document.body.style.overflow = "";
    };
  }, [isOpen]);

  if (!isOpen) return null;

  return (
    <AnimatePresence>
      <div className="fixed inset-0 z-[100] flex items-center justify-center p-4 sm:p-6 overflow-y-auto">
        {/* Backdrop */}
        <motion.div
          initial={{ opacity: 0 }}
          animate={{ opacity: 1 }}
          exit={{ opacity: 0 }}
          onClick={onClose}
          className="fixed inset-0 bg-[#041F35]/70 backdrop-blur-md"
        />

        {/* Modal Dialog */}
        <motion.div
          initial={{ opacity: 0, scale: 0.95, y: 20 }}
          animate={{ opacity: 1, scale: 1, y: 0 }}
          exit={{ opacity: 0, scale: 0.95, y: 20 }}
          transition={{ duration: 0.2, ease: "easeOut" }}
          className="relative w-full max-w-2xl bg-white rounded-3xl shadow-2xl border border-slate-100 overflow-hidden z-10 my-8 text-left"
        >
          {/* Modal Header */}
          <div className="bg-[#062E4F] text-white p-6 sm:p-8 relative">
            <button
              onClick={onClose}
              className="absolute top-5 right-5 p-2 rounded-full bg-white/10 hover:bg-white/20 text-white transition-colors cursor-pointer"
            >
              <X size={20} />
            </button>
            <div className="flex items-center gap-3 mb-2">
              <span className="p-2.5 bg-[#E9A227] text-white rounded-xl shadow-sm">
                <HeartHandshake size={22} />
              </span>
              <span className="text-[#E9A227] font-bold text-xs uppercase tracking-wider">
                Elderly Pilgrim Care Protocol
              </span>
            </div>
            <h2 className="text-2xl sm:text-3xl font-extrabold font-display">
              Senior Citizen Care Guidelines
            </h2>
            <p className="text-sm text-blue-100 mt-1.5 leading-relaxed max-w-xl font-medium">
              Comprehensive medical, mobility, and VIP assistance protocols tailored to minimize physical fatigue and ensure a peaceful yatra.
            </p>
          </div>

          {/* Modal Content Body */}
          <div className="p-6 sm:p-8 space-y-6 max-h-[65vh] overflow-y-auto overscroll-contain">
            
            {/* 1. VIP & Queue-Free Darshan */}
            <div className="flex items-start gap-4 p-4 rounded-2xl bg-amber-50/60 border border-amber-200/60">
              <div className="p-2.5 bg-[#E9A227]/15 text-[#E9A227] rounded-xl shrink-0 mt-0.5">
                <ShieldCheck size={22} />
              </div>
              <div className="space-y-1">
                <h3 className="font-bold text-[#062E4F] text-base">VIP & Fast-Track Shrine Access</h3>
                <p className="text-slate-600 text-xs sm:text-sm leading-relaxed">
                  Pre-reserved VIP entry passes at major temples (Kashi Vishwanath, Tirupati Balaji, Rameswaram, Kedarnath) to eliminate 3-5 hour standing queues for seniors.
                </p>
              </div>
            </div>

            {/* 2. On-Call Medical & Oxygen Support */}
            <div className="flex items-start gap-4 p-4 rounded-2xl bg-blue-50/60 border border-blue-200/60">
              <div className="p-2.5 bg-blue-600/15 text-blue-700 rounded-xl shrink-0 mt-0.5">
                <Stethoscope size={22} />
              </div>
              <div className="space-y-1">
                <h3 className="font-bold text-[#062E4F] text-base">Dedicated Medical & Doctor Ties</h3>
                <p className="text-slate-600 text-xs sm:text-sm leading-relaxed">
                  Yatra vehicles carry portable oxygen cylinders, pulse oximeters, BP monitors, and first-aid kits. Direct on-call doctor tie-ups at every overnight hotel stop.
                </p>
              </div>
            </div>

            {/* 3. Mobility & Battery Carts */}
            <div className="flex items-start gap-4 p-4 rounded-2xl bg-emerald-50/60 border border-emerald-200/60">
              <div className="p-2.5 bg-emerald-600/15 text-emerald-700 rounded-xl shrink-0 mt-0.5">
                <Accessibility size={22} />
              </div>
              <div className="space-y-1">
                <h3 className="font-bold text-[#062E4F] text-base">Wheelchair & Battery Cart Assistance</h3>
                <p className="text-slate-600 text-xs sm:text-sm leading-relaxed">
                  Dedicated wheelchair escorts and battery-operated carts arranged from hotel drop-off gates to temple inner corridors wherever permitted by shrine authorities.
                </p>
              </div>
            </div>

            {/* 4. Pure Satvik Food & Dietary Preferences */}
            <div className="flex items-start gap-4 p-4 rounded-2xl bg-slate-50 border border-slate-200/80">
              <div className="p-2.5 bg-[#062E4F]/10 text-[#062E4F] rounded-xl shrink-0 mt-0.5">
                <UtensilsCrossed size={22} />
              </div>
              <div className="space-y-1">
                <h3 className="font-bold text-[#062E4F] text-base">100% Pure Satvik Meals & Special Diet</h3>
                <p className="text-slate-600 text-xs sm:text-sm leading-relaxed">
                  Hygienic vegetarian meals served at relaxed dining hours. Special requests for zero onion/garlic (Jain/Satvik) or low-spice meals are fulfilled seamlessly.
                </p>
              </div>
            </div>

            {/* 5. Relaxed Pacing & Ground Floor Rooms */}
            <div className="grid grid-cols-1 sm:grid-cols-2 gap-4 pt-2">
              <div className="p-4 rounded-2xl border border-slate-200 flex items-center gap-3">
                <Clock className="text-[#E9A227] shrink-0" size={20} />
                <div>
                  <h4 className="font-bold text-xs text-[#062E4F]">Relaxed Itinerary Pacing</h4>
                  <p className="text-[11px] text-slate-500 mt-0.5">Max 4-5 hours travel daily with 2-hour afternoon rest breaks.</p>
                </div>
              </div>

              <div className="p-4 rounded-2xl border border-slate-200 flex items-center gap-3">
                <PhoneCall className="text-[#062E4F] shrink-0" size={20} />
                <div>
                  <h4 className="font-bold text-xs text-[#062E4F]">24/7 Personal Yatra Escort</h4>
                  <p className="text-[11px] text-slate-500 mt-0.5">Dedicated tour manager on-board to assist senior yatris at all times.</p>
                </div>
              </div>
            </div>

          </div>

          {/* Modal Footer */}
          <div className="p-5 bg-slate-50 border-t border-slate-100 flex justify-between items-center">
            <span className="text-xs text-slate-500 font-medium flex items-center gap-1.5">
              <CheckCircle2 size={15} className="text-emerald-600" />
              Verified Senior Care Standard
            </span>
            <button
              onClick={onClose}
              className="px-6 py-2.5 bg-[#062E4F] hover:bg-[#0A4270] text-white font-bold text-xs rounded-xl transition-all cursor-pointer"
            >
              Close Guidelines
            </button>
          </div>
        </motion.div>
      </div>
    </AnimatePresence>
  );
}
