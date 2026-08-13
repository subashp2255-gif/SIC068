"use client";

import React, { useState, useEffect } from "react";
import Link from "next/link";
import { motion, AnimatePresence } from "framer-motion";
import { useAuth } from "@/context/AuthContext";
import { normalizeEmail, isValidEmail } from "@/lib/auth";
import { Mail, ArrowLeft, Check, Loader2, KeyRound } from "lucide-react";

export default function ForgotPasswordPage() {
  const { resetPassword } = useAuth();
  const [email, setEmail] = useState("");
  const [isSubmitting, setIsSubmitting] = useState(false);
  const [successMessage, setSuccessMessage] = useState<string | null>(null);
  const [fieldError, setFieldError] = useState<string | undefined>();
  const [emailFocused, setEmailFocused] = useState(false);

  useEffect(() => {
    document.title = "Reset Password | Pilgrimage — One Journey";
  }, []);

  const handleSubmit = async (e: React.FormEvent) => {
    e.preventDefault();
    if (isSubmitting) return;

    setFieldError(undefined);
    const cleanEmail = normalizeEmail(email);

    if (!cleanEmail) {
      setFieldError("Please enter your email address.");
      return;
    }

    if (!isValidEmail(cleanEmail)) {
      setFieldError("Please enter a valid email address.");
      return;
    }

    setIsSubmitting(true);
    const res = await resetPassword(cleanEmail);
    setIsSubmitting(false);
    setSuccessMessage(res.message);
  };

  return (
    <div className="min-h-[100dvh] w-full flex items-center justify-center p-4 sm:p-8 bg-[#102F4A] relative overflow-hidden">
      {/* Subtle Background Glow */}
      <div
        aria-hidden="true"
        className="absolute inset-0 bg-[radial-gradient(circle_at_50%_30%,rgba(230,184,92,0.15)_0%,transparent_70%)] pointer-events-none"
      />

      <motion.div
        initial={{ opacity: 0, y: 20 }}
        animate={{ opacity: 1, y: 0 }}
        transition={{ duration: 0.6, ease: [0.22, 1, 0.36, 1] }}
        className="w-full max-w-[440px] bg-[#FFF9F0]/95 backdrop-blur-xl rounded-[28px] border border-[#E6B85C]/40 p-7 sm:p-10 shadow-level-3 relative z-10"
      >
        {/* Header */}
        <div className="flex flex-col items-center text-center space-y-3 mb-6">
          <div className="w-12 h-12 rounded-2xl bg-[#102F4A] text-[#E6B85C] flex items-center justify-center shadow-sm">
            <KeyRound className="w-6 h-6" />
          </div>
          <h1 className="font-display text-2xl sm:text-3xl font-extrabold text-[#102F4A]">
            Reset Password
          </h1>
          <p className="text-sm font-medium text-[#5E6B76]">
            Enter your email to receive password reset instructions.
          </p>
        </div>

        <AnimatePresence mode="wait">
          {successMessage ? (
            <motion.div
              key="success"
              initial={{ opacity: 0, scale: 0.95 }}
              animate={{ opacity: 1, scale: 1 }}
              className="space-y-6 text-center"
            >
              <div className="p-4 rounded-xl bg-emerald-50 border border-emerald-200 text-emerald-800 text-sm font-medium leading-relaxed flex items-start gap-3">
                <Check className="w-5 h-5 text-emerald-600 shrink-0 mt-0.5" />
                <span>{successMessage}</span>
              </div>
              <Link
                href="/login"
                className="w-full h-12 rounded-xl bg-[#102F4A] hover:bg-[#1D5E85] text-white font-bold text-sm flex items-center justify-center gap-2 transition-colors shadow-sm"
              >
                <ArrowLeft className="w-4 h-4" />
                <span>Return to Sign In</span>
              </Link>
            </motion.div>
          ) : (
            <motion.form
              key="form"
              onSubmit={handleSubmit}
              noValidate
              className="space-y-5"
            >
              <div className="space-y-1.5">
                <label
                  htmlFor="reset-email"
                  className="block text-xs font-bold text-[#102F4A] tracking-wider uppercase"
                >
                  Email address
                </label>
                <div className="relative flex items-center">
                  <div className="absolute left-3.5 pointer-events-none transition-colors duration-200">
                    <Mail
                      className={`w-5 h-5 ${
                        emailFocused ? "text-[#D89A32]" : "text-[#5E6B76]"
                      }`}
                    />
                  </div>
                  <input
                    id="reset-email"
                    type="email"
                    autoComplete="email"
                    required
                    disabled={isSubmitting}
                    value={email}
                    onChange={(e) => {
                      setEmail(e.target.value);
                      if (fieldError) setFieldError(undefined);
                    }}
                    onFocus={() => setEmailFocused(true)}
                    onBlur={() => setEmailFocused(false)}
                    placeholder="you@example.com"
                    className={`w-full h-12 pl-11 pr-4 rounded-xl bg-white border ${
                      fieldError
                        ? "border-red-400 ring-2 ring-red-100"
                        : "border-[#DDE4E8] focus:border-[#D89A32] focus:ring-2 focus:ring-[#D89A32]/30"
                    } text-[#17212B] text-sm font-medium placeholder:text-slate-400 transition-all outline-none shadow-sm`}
                  />
                </div>
                {fieldError && (
                  <p className="text-xs font-medium text-red-600 pl-1">{fieldError}</p>
                )}
              </div>

              <button
                type="submit"
                disabled={isSubmitting}
                className="w-full h-12 rounded-xl bg-gradient-to-r from-[#D89A32] via-[#E6B85C] to-[#D89A32] text-[#102F4A] font-bold text-base flex items-center justify-center gap-2 shadow-md hover:brightness-105 transition-all cursor-pointer disabled:opacity-70"
              >
                {isSubmitting ? (
                  <>
                    <Loader2 className="w-5 h-5 animate-spin" />
                    <span>Sending link…</span>
                  </>
                ) : (
                  <span>Send Reset Instructions</span>
                )}
              </button>

              <div className="pt-2 text-center">
                <Link
                  href="/login"
                  className="inline-flex items-center gap-1.5 text-xs font-bold text-[#1D5E85] hover:text-[#102F4A] transition-colors"
                >
                  <ArrowLeft className="w-3.5 h-3.5" />
                  <span>Back to Sign In</span>
                </Link>
              </div>
            </motion.form>
          )}
        </AnimatePresence>
      </motion.div>
    </div>
  );
}
