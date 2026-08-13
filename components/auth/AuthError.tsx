"use client";

import React from "react";
import { AlertCircle } from "lucide-react";

interface AuthErrorProps {
  message: string | null;
  id?: string;
}

export default function AuthError({ message, id = "auth-error" }: AuthErrorProps) {
  if (!message) return null;

  return (
    <div
      id={id}
      role="alert"
      aria-live="polite"
      className="w-full flex items-start gap-3 p-3.5 rounded-xl bg-red-50 border border-red-200/80 text-red-800 text-sm font-medium transition-all duration-200 animate-in fade-in slide-in-from-top-1 shadow-sm"
    >
      <AlertCircle className="w-5 h-5 text-red-600 shrink-0 mt-0.5" aria-hidden="true" />
      <span className="leading-snug">{message}</span>
    </div>
  );
}
