import type { Metadata } from "next";
import { Suspense } from "react";
import LoginPage from "@/components/auth/LoginPage";

export const metadata: Metadata = {
  title: "Sign In | Pilgrimage — One Journey",
  description: "Sign in to your One Journey account to continue planning sacred pilgrimages for you and your family.",
};

export default function Page() {
  return (
    <Suspense fallback={<div className="min-h-[100dvh] w-full bg-[#102F4A]" />}>
      <LoginPage />
    </Suspense>
  );
}
