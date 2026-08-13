"use client";

import React, { useState } from "react";
import Link from "next/link";
import { useRouter, useSearchParams } from "next/navigation";
import { motion, AnimatePresence } from "framer-motion";
import { useAuth } from "@/context/AuthContext";
import { sanitizeRedirectUrl, normalizeEmail, isValidEmail, GENERIC_AUTH_ERROR } from "@/lib/auth";
import AuthError from "./AuthError";
import { Mail, Lock, Eye, EyeOff, Check, Loader2, LogIn } from "lucide-react";

export default function LoginForm() {
  const router = useRouter();
  const searchParams = useSearchParams();
  const { signIn } = useAuth();

  // Form State
  const [email, setEmail] = useState("");
  const [password, setPassword] = useState("");
  const [rememberMe, setRememberMe] = useState(true);
  const [showPassword, setShowPassword] = useState(false);

  // Status & Validation State
  const [isSubmitting, setIsSubmitting] = useState(false);
  const [isSuccess, setIsSuccess] = useState(false);
  const [errorMessage, setErrorMessage] = useState<string | null>(null);
  const [fieldErrors, setFieldErrors] = useState<{ email?: string; password?: string }>({});

  // Animation trigger for failed login nudge
  const [shakeTrigger, setShakeTrigger] = useState(0);

  // Focused state for visual icon highlights
  const [emailFocused, setEmailFocused] = useState(false);
  const [passwordFocused, setPasswordFocused] = useState(false);

  // Get sanitized redirect URL
  const rawRedirect = searchParams.get("redirect");
  const redirectTarget = sanitizeRedirectUrl(rawRedirect);

  const handleSubmit = async (e: React.FormEvent) => {
    e.preventDefault();
    if (isSubmitting || isSuccess) return;

    setErrorMessage(null);
    setFieldErrors({});

    const cleanEmail = normalizeEmail(email);

    // Client-side quick field checks
    const errors: { email?: string; password?: string } = {};

    if (!cleanEmail) {
      errors.email = "Please enter your email address.";
    } else if (!isValidEmail(cleanEmail)) {
      errors.email = "Please enter a valid email address.";
    }

    if (!password) {
      errors.password = "Please enter your password.";
    }

    if (Object.keys(errors).length > 0) {
      setFieldErrors(errors);
      setShakeTrigger((prev) => prev + 1);
      return;
    }

    setIsSubmitting(true);

    const response = await signIn(cleanEmail, password, rememberMe);

    if (response.success) {
      setIsSuccess(true);
      // Short checkmark delay for smooth feedback before redirect
      setTimeout(() => {
        router.push(redirectTarget);
      }, 500);
    } else {
      setIsSubmitting(false);
      setErrorMessage(response.error || GENERIC_AUTH_ERROR);
      setShakeTrigger((prev) => prev + 1);
    }
  };

  return (
    <motion.form
      onSubmit={handleSubmit}
      noValidate
      animate={shakeTrigger > 0 ? { x: [0, -8, 8, -4, 4, 0] } : { x: 0 }}
      transition={{ duration: 0.4, ease: "easeOut" }}
      className="w-full space-y-5"
      aria-label="User Login Form"
    >
      {/* Accessible Error Live Region */}
      <AuthError message={errorMessage} />

      {/* Email Input Field */}
      <div className="space-y-1.5">
        <label
          htmlFor="login-email"
          className="block text-xs font-bold text-[#102F4A] tracking-wider uppercase"
        >
          Email address
        </label>
        <div className="relative flex items-center">
          <div className="absolute left-3.5 pointer-events-none transition-colors duration-200">
            <Mail
              className={`w-5 h-5 ${
                emailFocused ? "text-[#D89A32]" : "text-[#5E6B76]"
              } transition-colors duration-200`}
            />
          </div>
          <input
            id="login-email"
            type="email"
            autoComplete="email"
            required
            disabled={isSubmitting || isSuccess}
            value={email}
            onChange={(e) => {
              setEmail(e.target.value);
              if (fieldErrors.email) setFieldErrors((prev) => ({ ...prev, email: undefined }));
              if (errorMessage) setErrorMessage(null);
            }}
            onFocus={() => setEmailFocused(true)}
            onBlur={() => setEmailFocused(false)}
            placeholder="you@example.com"
            aria-invalid={Boolean(fieldErrors.email)}
            aria-describedby={fieldErrors.email ? "email-error" : undefined}
            className={`w-full h-12 pl-11 pr-4 rounded-xl bg-white border ${
              fieldErrors.email
                ? "border-red-400 ring-2 ring-red-100"
                : "border-[#DDE4E8] focus:border-[#D89A32] focus:ring-2 focus:ring-[#D89A32]/30"
            } text-[#17212B] text-sm font-medium placeholder:text-slate-400 transition-all duration-200 outline-none shadow-sm disabled:opacity-60 disabled:cursor-not-allowed`}
          />
        </div>
        {fieldErrors.email && (
          <p id="email-error" className="text-xs font-medium text-red-600 pl-1">
            {fieldErrors.email}
          </p>
        )}
      </div>

      {/* Password Input Field */}
      <div className="space-y-1.5">
        <div className="flex items-center justify-between">
          <label
            htmlFor="login-password"
            className="block text-xs font-bold text-[#102F4A] tracking-wider uppercase"
          >
            Password
          </label>
          <Link
            href="/forgot-password"
            className="text-xs font-semibold text-[#1D5E85] hover:text-[#D89A32] transition-colors focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-[#D89A32] rounded"
          >
            Forgot password?
          </Link>
        </div>
        <div className="relative flex items-center">
          <div className="absolute left-3.5 pointer-events-none transition-colors duration-200">
            <Lock
              className={`w-5 h-5 ${
                passwordFocused ? "text-[#D89A32]" : "text-[#5E6B76]"
              } transition-colors duration-200`}
            />
          </div>
          <input
            id="login-password"
            type={showPassword ? "text" : "password"}
            autoComplete="current-password"
            required
            disabled={isSubmitting || isSuccess}
            value={password}
            onChange={(e) => {
              setPassword(e.target.value);
              if (fieldErrors.password) setFieldErrors((prev) => ({ ...prev, password: undefined }));
              if (errorMessage) setErrorMessage(null);
            }}
            onFocus={() => setPasswordFocused(true)}
            onBlur={() => setPasswordFocused(false)}
            placeholder="••••••••"
            aria-invalid={Boolean(fieldErrors.password)}
            aria-describedby={fieldErrors.password ? "password-error" : undefined}
            className={`w-full h-12 pl-11 pr-11 rounded-xl bg-white border ${
              fieldErrors.password
                ? "border-red-400 ring-2 ring-red-100"
                : "border-[#DDE4E8] focus:border-[#D89A32] focus:ring-2 focus:ring-[#D89A32]/30"
            } text-[#17212B] text-sm font-medium placeholder:text-slate-400 transition-all duration-200 outline-none shadow-sm disabled:opacity-60 disabled:cursor-not-allowed`}
          />
          <button
            type="button"
            onClick={() => setShowPassword(!showPassword)}
            disabled={isSubmitting || isSuccess}
            aria-label={showPassword ? "Hide password" : "Show password"}
            className="absolute right-3 p-1.5 text-[#5E6B76] hover:text-[#102F4A] transition-colors rounded-lg focus-visible:ring-2 focus-visible:ring-[#D89A32] outline-none"
          >
            {showPassword ? <EyeOff className="w-4 h-4" /> : <Eye className="w-4 h-4" />}
          </button>
        </div>
        {fieldErrors.password && (
          <p id="password-error" className="text-xs font-medium text-red-600 pl-1">
            {fieldErrors.password}
          </p>
        )}
      </div>

      {/* Remember Me Checkbox */}
      <div className="flex items-center justify-between pt-1">
        <label className="flex items-center gap-2.5 cursor-pointer select-none group">
          <input
            type="checkbox"
            checked={rememberMe}
            onChange={(e) => setRememberMe(e.target.checked)}
            disabled={isSubmitting || isSuccess}
            className="sr-only peer"
          />
          <div className="w-4 h-4 rounded border border-[#5E6B76]/50 bg-white peer-checked:bg-[#102F4A] peer-checked:border-[#102F4A] peer-focus-visible:ring-2 peer-focus-visible:ring-[#D89A32] flex items-center justify-center transition-all shadow-sm">
            {rememberMe && <Check className="w-3 h-3 text-white stroke-[3]" />}
          </div>
          <span className="text-sm font-medium text-[#5E6B76] group-hover:text-[#102F4A] transition-colors">
            Remember me
          </span>
        </label>
      </div>

      {/* Primary Sign In Submit Button */}
      <motion.button
        type="submit"
        disabled={isSubmitting || isSuccess}
        whileHover={{ y: isSubmitting || isSuccess ? 0 : -1 }}
        whileTap={{ scale: isSubmitting || isSuccess ? 1 : 0.98 }}
        className={`w-full h-12 rounded-xl font-bold text-base flex items-center justify-center gap-2 shadow-md transition-all cursor-pointer relative overflow-hidden focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-[#D89A32] ${
          isSuccess
            ? "bg-[#18794E] text-white"
            : "bg-gradient-to-r from-[#D89A32] via-[#E6B85C] to-[#D89A32] text-[#102F4A] hover:brightness-105"
        } disabled:opacity-80 disabled:cursor-not-allowed`}
      >
        <AnimatePresence mode="wait">
          {isSuccess ? (
            <motion.div
              key="success"
              initial={{ scale: 0.5, opacity: 0 }}
              animate={{ scale: 1, opacity: 1 }}
              className="flex items-center gap-2"
            >
              <Check className="w-5 h-5 stroke-[3]" />
              <span>Signed In! Redirecting…</span>
            </motion.div>
          ) : isSubmitting ? (
            <motion.div
              key="submitting"
              initial={{ opacity: 0 }}
              animate={{ opacity: 1 }}
              className="flex items-center gap-2"
            >
              <Loader2 className="w-5 h-5 animate-spin" />
              <span>Signing in…</span>
            </motion.div>
          ) : (
            <motion.div
              key="default"
              initial={{ opacity: 0 }}
              animate={{ opacity: 1 }}
              className="flex items-center gap-2"
            >
              <LogIn className="w-5 h-5" />
              <span>Sign In</span>
            </motion.div>
          )}
        </AnimatePresence>
      </motion.button>
    </motion.form>
  );
}
