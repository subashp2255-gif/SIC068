"use client";

import React, { useEffect } from "react";
import { useRouter, useSearchParams } from "next/navigation";
import { useAuth } from "@/context/AuthContext";
import { sanitizeRedirectUrl } from "@/lib/auth";
import JourneyBackdrop from "./JourneyBackdrop";
import LoginPanel from "./LoginPanel";

export default function LoginPage() {
  const router = useRouter();
  const searchParams = useSearchParams();
  const { user, isLoading } = useAuth();

  const rawRedirect = searchParams.get("redirect");
  const redirectTarget = sanitizeRedirectUrl(rawRedirect);

  // If user is already authenticated, redirect them safely
  useEffect(() => {
    if (!isLoading && user) {
      router.replace(redirectTarget);
    }
  }, [user, isLoading, redirectTarget, router]);

  // Set browser title on client mount
  useEffect(() => {
    document.title = "Sign In | Pilgrimage — One Journey";
  }, []);

  return (
    <div className="min-h-[100dvh] w-full flex flex-col lg:flex-row bg-[#102F4A] overflow-x-hidden relative">
      {/* Left Column: Cinematic Journey Backdrop */}
      <JourneyBackdrop />

      {/* Right Column: Login Panel Card */}
      <LoginPanel redirectUrl={redirectTarget} />
    </div>
  );
}
