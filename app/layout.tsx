import type { Metadata } from "next";
import "./globals.css";
import { Toaster } from "sonner";
import SmoothScroll from "@/components/animations/SmoothScroll";
import { AppProvider } from "@/context/AppContext";
import { AuthProvider } from "@/context/AuthContext";
import EnquiryModal from "@/components/modals/EnquiryModal";
import AccessibilityProvider from "@/components/layout/AccessibilityProvider";
import FloatingAIAssistant from "@/components/ai/FloatingAIAssistant";
import CompareTray from "@/components/cards/CompareTray";

const manrope = { variable: "font-sans" };
const inter = { variable: "font-inter" };

export const metadata: Metadata = {
  title: "OneJourney | Trusted AI Travel & Pilgrimage Planner",
  description: "OneJourney is a trusted travel platform focused on pilgrimage tours, family tour packages, group tours, and AI-powered trip planning.",
};

export default function RootLayout({
  children,
}: Readonly<{
  children: React.ReactNode;
}>) {
  return (
    <html
      lang="en"
      className={`${manrope.variable} ${inter.variable} h-full antialiased`}
    >
      <head>
        <link
          href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:wght,FILL@100..700,0..1&display=block"
          rel="stylesheet"
        />
      </head>
      <body className="min-h-full flex flex-col bg-background text-on-surface">
        <AuthProvider>
          <AppProvider>
            <AccessibilityProvider>
              <SmoothScroll>
                {children}
              </SmoothScroll>
              <EnquiryModal />
              <CompareTray />
              <FloatingAIAssistant />
            </AccessibilityProvider>
          </AppProvider>
        </AuthProvider>
        <Toaster position="bottom-right" richColors closeButton />
      </body>
    </html>
  );
}
