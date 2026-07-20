import type { Metadata } from "next";
import { Manrope, Inter } from "next/font/google";
import "./globals.css";
import { Toaster } from "sonner";
import SmoothScroll from "@/components/animations/SmoothScroll";
import { AppProvider } from "@/context/AppContext";
import EnquiryModal from "@/components/modals/EnquiryModal";
import AccessibilityProvider from "@/components/layout/AccessibilityProvider";

const manrope = Manrope({
  variable: "--font-manrope",
  subsets: ["latin"],
  weight: ["400", "600", "700", "800"],
});

const inter = Inter({
  variable: "--font-inter",
  subsets: ["latin"],
  weight: ["400", "500", "600", "700"],
});

export const metadata: Metadata = {
  title: "DharmaYatra - Plan Your Sacred Journey with Confidence",
  description: "Facilitating sacred journeys with trust, transparency, and utmost care for over 15 years. Specialized tours designed for senior citizens.",
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
        <AppProvider>
          <AccessibilityProvider>
            <SmoothScroll>
              {children}
            </SmoothScroll>
            <EnquiryModal />
          </AccessibilityProvider>
        </AppProvider>
        <Toaster position="bottom-right" richColors closeButton />
      </body>
    </html>
  );
}
