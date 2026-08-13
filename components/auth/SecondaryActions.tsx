"use client";

import React from "react";
import Link from "next/link";
import { useRouter } from "next/navigation";
import { ArrowRight, Compass } from "lucide-react";

interface SecondaryActionsProps {
  redirectUrl?: string;
}

export default function SecondaryActions({ redirectUrl = "/" }: SecondaryActionsProps) {
  const router = useRouter();

  const handleGuestContinue = (e: React.MouseEvent) => {
    e.preventDefault();
    router.push(redirectUrl);
  };

  return (
    <div className="w-full flex flex-col items-center gap-4 pt-6 border-t border-[#DDE4E8]/80 text-center">
      {/* Create Account Link */}
      <div className="text-sm text-[#5E6B76]">
        <span>New to One Journey? </span>
        <Link
          href="/register"
          className="font-bold text-[#102F4A] hover:text-[#D89A32] underline-offset-4 hover:underline transition-colors focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-[#D89A32] rounded"
        >
          Create an account
        </Link>
      </div>

      {/* Guest Navigation Link */}
      <button
        onClick={handleGuestContinue}
        type="button"
        className="group inline-flex items-center gap-2 text-xs font-semibold text-[#1D5E85] hover:text-[#102F4A] bg-[#F0F4F7] hover:bg-[#E4EAEF] px-4 py-2 rounded-full transition-all focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-[#D89A32]"
      >
        <Compass className="w-3.5 h-3.5 text-[#D89A32] group-hover:rotate-45 transition-transform duration-300" />
        <span>Continue exploring as a guest</span>
        <ArrowRight className="w-3 h-3 group-hover:translate-x-0.5 transition-transform" />
      </button>
    </div>
  );
}
