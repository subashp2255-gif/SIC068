"use client";

import React from "react";
import Link from "next/link";
import { motion } from "framer-motion";
import LoginForm from "./LoginForm";
import SecondaryActions from "./SecondaryActions";
import OneJourneyTempleIcon from "@/components/ui/OneJourneyTempleIcon";

interface LoginPanelProps {
  redirectUrl?: string;
}

export default function LoginPanel({ redirectUrl }: LoginPanelProps) {
  return (
    <main className="w-full lg:w-[42%] min-h-[100dvh] flex flex-col items-center justify-center p-4 sm:p-8 lg:p-12 relative z-10">
      {/* Centered Login Card */}
      <motion.div
        initial={{ opacity: 0, x: 20 }}
        animate={{ opacity: 1, x: 0 }}
        transition={{ duration: 0.7, delay: 0.2, ease: [0.22, 1, 0.36, 1] }}
        className="w-full max-w-[440px] bg-white/95 sm:bg-[#FFF9F0]/95 backdrop-blur-xl rounded-[28px] border border-[#E6B85C]/40 p-7 sm:p-10 shadow-level-3 relative overflow-hidden"
      >
        {/* Soft Golden Corner Illumination */}
        <div
          aria-hidden="true"
          className="absolute -top-24 -right-24 w-48 h-48 rounded-full bg-gradient-to-br from-[#E6B85C]/20 to-transparent blur-2xl pointer-events-none"
        />

        {/* Brand Header */}
        <div className="flex flex-col items-center text-center space-y-3 mb-8">
          <Link
            href="/"
            className="group focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-[#D89A32] rounded-xl"
          >
            <div className="flex items-center gap-2.5 px-3.5 py-1.5 rounded-2xl bg-[#102F4A] text-white shadow-sm group-hover:bg-[#1D5E85] transition-colors">
              <OneJourneyTempleIcon size={26} className="text-[#E6B85C]" />
              <span className="font-display tracking-tight text-lg font-extrabold">
                OneJourney
              </span>
            </div>
          </Link>

          <div className="space-y-1 pt-1">
            <h2 className="font-display text-2xl sm:text-3xl font-extrabold text-[#102F4A] tracking-tight">
              Welcome back
            </h2>
            <p className="text-sm font-medium text-[#5E6B76]">
              Continue planning your sacred journey.
            </p>
          </div>
        </div>

        {/* Login Form */}
        <LoginForm />

        {/* Secondary Links & Navigation */}
        <div className="mt-8">
          <SecondaryActions redirectUrl={redirectUrl} />
        </div>
      </motion.div>
    </main>
  );
}
