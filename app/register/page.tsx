"use client";

import React, { useState, useEffect } from "react";
import Link from "next/link";
import { useRouter } from "next/navigation";
import { motion } from "framer-motion";
import { useAuth } from "@/context/AuthContext";
import { normalizeEmail, isValidEmail } from "@/lib/auth";
import AuthError from "@/components/auth/AuthError";
import { User as UserIcon, Mail, Lock, UserPlus, Loader2, ArrowLeft } from "lucide-react";

export default function RegisterPage() {
  const router = useRouter();
  const { signUp, user, isLoading: isAuthLoading } = useAuth();

  const [name, setName] = useState("");
  const [email, setEmail] = useState("");
  const [password, setPassword] = useState("");
  const [confirmPassword, setConfirmPassword] = useState("");

  const [isSubmitting, setIsSubmitting] = useState(false);
  const [errorMessage, setErrorMessage] = useState<string | null>(null);
  const [fieldErrors, setFieldErrors] = useState<{
    name?: string;
    email?: string;
    password?: string;
    confirmPassword?: string;
  }>({});

  useEffect(() => {
    document.title = "Create Account | Pilgrimage — One Journey";
  }, []);

  useEffect(() => {
    if (!isAuthLoading && user) {
      router.replace("/");
    }
  }, [user, isAuthLoading, router]);

  const handleSubmit = async (e: React.FormEvent) => {
    e.preventDefault();
    if (isSubmitting) return;

    setErrorMessage(null);
    setFieldErrors({});

    const cleanName = name.trim();
    const cleanEmail = normalizeEmail(email);

    const errors: typeof fieldErrors = {};

    if (!cleanName) {
      errors.name = "Please enter your full name.";
    }

    if (!cleanEmail) {
      errors.email = "Please enter your email address.";
    } else if (!isValidEmail(cleanEmail)) {
      errors.email = "Please enter a valid email address.";
    }

    if (!password) {
      errors.password = "Please enter a password.";
    } else if (password.length < 6) {
      errors.password = "Password must be at least 6 characters long.";
    }

    if (password !== confirmPassword) {
      errors.confirmPassword = "Passwords do not match.";
    }

    if (Object.keys(errors).length > 0) {
      setFieldErrors(errors);
      return;
    }

    setIsSubmitting(true);
    const res = await signUp(cleanName, cleanEmail, password);
    setIsSubmitting(false);

    if (res.success) {
      router.push("/");
    } else {
      setErrorMessage(res.error || "Registration failed. Please try again.");
    }
  };

  return (
    <div className="min-h-[100dvh] w-full flex items-center justify-center p-4 sm:p-8 bg-[#102F4A] relative overflow-hidden">
      {/* Background radial glow */}
      <div
        aria-hidden="true"
        className="absolute inset-0 bg-[radial-gradient(circle_at_50%_30%,rgba(230,184,92,0.15)_0%,transparent_70%)] pointer-events-none"
      />

      <motion.div
        initial={{ opacity: 0, y: 20 }}
        animate={{ opacity: 1, y: 0 }}
        transition={{ duration: 0.6, ease: [0.22, 1, 0.36, 1] }}
        className="w-full max-w-[460px] bg-[#FFF9F0]/95 backdrop-blur-xl rounded-[28px] border border-[#E6B85C]/40 p-7 sm:p-10 shadow-level-3 relative z-10"
      >
        <div className="flex flex-col items-center text-center space-y-3 mb-6">
          <div className="w-12 h-12 rounded-2xl bg-[#102F4A] text-[#E6B85C] flex items-center justify-center shadow-sm">
            <UserPlus className="w-6 h-6" />
          </div>
          <h1 className="font-display text-2xl sm:text-3xl font-extrabold text-[#102F4A]">
            Create an Account
          </h1>
          <p className="text-sm font-medium text-[#5E6B76]">
            Join One Journey to plan sacred pilgrimages for your family.
          </p>
        </div>

        <AuthError message={errorMessage} />

        <form onSubmit={handleSubmit} noValidate className="space-y-4 mt-4">
          {/* Full Name */}
          <div className="space-y-1">
            <label
              htmlFor="reg-name"
              className="block text-xs font-bold text-[#102F4A] tracking-wider uppercase"
            >
              Full Name
            </label>
            <div className="relative flex items-center">
              <UserIcon className="w-5 h-5 absolute left-3.5 text-[#5E6B76]" />
              <input
                id="reg-name"
                type="text"
                autoComplete="name"
                required
                disabled={isSubmitting}
                value={name}
                onChange={(e) => {
                  setName(e.target.value);
                  if (fieldErrors.name) setFieldErrors((prev) => ({ ...prev, name: undefined }));
                }}
                placeholder="Ramesh Kumar"
                className="w-full h-11 pl-11 pr-4 rounded-xl bg-white border border-[#DDE4E8] focus:border-[#D89A32] focus:ring-2 focus:ring-[#D89A32]/30 text-sm font-medium outline-none shadow-sm"
              />
            </div>
            {fieldErrors.name && (
              <p className="text-xs font-medium text-red-600 pl-1">{fieldErrors.name}</p>
            )}
          </div>

          {/* Email */}
          <div className="space-y-1">
            <label
              htmlFor="reg-email"
              className="block text-xs font-bold text-[#102F4A] tracking-wider uppercase"
            >
              Email address
            </label>
            <div className="relative flex items-center">
              <Mail className="w-5 h-5 absolute left-3.5 text-[#5E6B76]" />
              <input
                id="reg-email"
                type="email"
                autoComplete="email"
                required
                disabled={isSubmitting}
                value={email}
                onChange={(e) => {
                  setEmail(e.target.value);
                  if (fieldErrors.email) setFieldErrors((prev) => ({ ...prev, email: undefined }));
                }}
                placeholder="you@example.com"
                className="w-full h-11 pl-11 pr-4 rounded-xl bg-white border border-[#DDE4E8] focus:border-[#D89A32] focus:ring-2 focus:ring-[#D89A32]/30 text-sm font-medium outline-none shadow-sm"
              />
            </div>
            {fieldErrors.email && (
              <p className="text-xs font-medium text-red-600 pl-1">{fieldErrors.email}</p>
            )}
          </div>

          {/* Password */}
          <div className="space-y-1">
            <label
              htmlFor="reg-pass"
              className="block text-xs font-bold text-[#102F4A] tracking-wider uppercase"
            >
              Password
            </label>
            <div className="relative flex items-center">
              <Lock className="w-5 h-5 absolute left-3.5 text-[#5E6B76]" />
              <input
                id="reg-pass"
                type="password"
                autoComplete="new-password"
                required
                disabled={isSubmitting}
                value={password}
                onChange={(e) => {
                  setPassword(e.target.value);
                  if (fieldErrors.password) setFieldErrors((prev) => ({ ...prev, password: undefined }));
                }}
                placeholder="••••••••"
                className="w-full h-11 pl-11 pr-4 rounded-xl bg-white border border-[#DDE4E8] focus:border-[#D89A32] focus:ring-2 focus:ring-[#D89A32]/30 text-sm font-medium outline-none shadow-sm"
              />
            </div>
            {fieldErrors.password && (
              <p className="text-xs font-medium text-red-600 pl-1">{fieldErrors.password}</p>
            )}
          </div>

          {/* Confirm Password */}
          <div className="space-y-1">
            <label
              htmlFor="reg-conf-pass"
              className="block text-xs font-bold text-[#102F4A] tracking-wider uppercase"
            >
              Confirm Password
            </label>
            <div className="relative flex items-center">
              <Lock className="w-5 h-5 absolute left-3.5 text-[#5E6B76]" />
              <input
                id="reg-conf-pass"
                type="password"
                autoComplete="new-password"
                required
                disabled={isSubmitting}
                value={confirmPassword}
                onChange={(e) => {
                  setConfirmPassword(e.target.value);
                  if (fieldErrors.confirmPassword)
                    setFieldErrors((prev) => ({ ...prev, confirmPassword: undefined }));
                }}
                placeholder="••••••••"
                className="w-full h-11 pl-11 pr-4 rounded-xl bg-white border border-[#DDE4E8] focus:border-[#D89A32] focus:ring-2 focus:ring-[#D89A32]/30 text-sm font-medium outline-none shadow-sm"
              />
            </div>
            {fieldErrors.confirmPassword && (
              <p className="text-xs font-medium text-red-600 pl-1">
                {fieldErrors.confirmPassword}
              </p>
            )}
          </div>

          <button
            type="submit"
            disabled={isSubmitting}
            className="w-full h-12 mt-2 rounded-xl bg-gradient-to-r from-[#D89A32] via-[#E6B85C] to-[#D89A32] text-[#102F4A] font-bold text-base flex items-center justify-center gap-2 shadow-md hover:brightness-105 transition-all cursor-pointer disabled:opacity-70"
          >
            {isSubmitting ? (
              <>
                <Loader2 className="w-5 h-5 animate-spin" />
                <span>Creating Account…</span>
              </>
            ) : (
              <span>Create Account</span>
            )}
          </button>
        </form>

        <div className="pt-6 border-t border-[#DDE4E8] mt-6 text-center text-sm text-[#5E6B76]">
          <span>Already have an account? </span>
          <Link
            href="/login"
            className="font-bold text-[#102F4A] hover:text-[#D89A32] underline-offset-4 hover:underline transition-colors"
          >
            Sign in
          </Link>
        </div>
      </motion.div>
    </div>
  );
}
