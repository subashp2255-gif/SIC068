"use client";

import Link from "next/link";
import Navbar from "@/components/navigation/Navbar";
import Footer from "@/components/layout/Footer";
import PageTransition from "@/components/animations/PageTransition";
import ScrollProgress from "@/components/animations/ScrollProgress";
import { mockPackages } from "@/data/packages";
import { useApp } from "@/context/AppContext";
import { RefreshCw, Search, ArrowLeft, Trash2, CheckCircle2, XCircle, ArrowRight } from "lucide-react";
import { motion, AnimatePresence } from "framer-motion";
import { easeQuint, getAssetPath } from "@/lib/animations";

export default function ComparePackages() {
  const { compareIds, toggleCompare, setEnquireOpen, setEnquirePackageId } = useApp();

  const comparedPackages = mockPackages.filter((pkg) => compareIds.includes(pkg.id));

  const handleEnquireClick = (id: string) => {
    setEnquirePackageId(id);
    setEnquireOpen(true);
  };

  return (
    <>
      <ScrollProgress />
      <Navbar />
      <PageTransition>
        <main className="w-full flex-grow max-w-container-max mx-auto px-margin-mobile md:px-12 py-10 flex flex-col gap-8">
          
          {/* Header */}
          <div className="flex flex-col gap-3 text-left select-none">
            <nav className="text-xs font-semibold text-outline flex items-center gap-1.5 font-body-sm">
              <Link href="/" className="hover:text-primary transition-colors">Home</Link>
              <span className="material-symbols-outlined text-[14px]">chevron_right</span>
              <Link href="/packages" className="hover:text-primary transition-colors">Packages</Link>
              <span className="material-symbols-outlined text-[14px]">chevron_right</span>
              <span className="text-on-surface font-bold">Comparison Board</span>
            </nav>
            <div className="flex justify-between items-center">
              <div>
                <h1 className="font-display-lg-mobile md:font-display-lg text-primary font-bold">
                  Compare Packages
                </h1>
                <p className="text-sm text-on-surface-variant font-medium mt-1">
                  Compare side-by-side to select the perfect spiritual journey.
                </p>
              </div>
              <Link href="/packages">
                <button className="flex items-center gap-1.5 border border-primary text-primary px-4 py-2 rounded-lg text-xs font-bold hover:bg-surface-container transition-all cursor-pointer">
                  <ArrowLeft size={14} /> Back to Browse
                </button>
              </Link>
            </div>
          </div>

          {/* Comparison Content */}
          <div className="min-h-[400px]">
            <AnimatePresence mode="wait">
              {comparedPackages.length === 0 ? (
                /* Empty state */
                <motion.div
                  key="empty"
                  initial={{ opacity: 0, scale: 0.95 }}
                  animate={{ opacity: 1, scale: 1 }}
                  exit={{ opacity: 0 }}
                  className="flex flex-col items-center justify-center text-center py-20 bg-surface-container-lowest rounded-xl shadow-level-1 border border-outline-variant/10 px-6 gap-4 select-none"
                >
                  <div className="w-16 h-16 bg-surface-container-low text-primary rounded-full flex items-center justify-center mb-1">
                    <RefreshCw size={28} className="text-primary" />
                  </div>
                  <h3 className="font-headline-lg text-primary text-xl font-bold font-display">Comparison Board is Empty</h3>
                  <p className="text-on-surface-variant font-body-sm text-sm max-w-sm">
                    You haven&apos;t added any tour packages to compare. Tick the comparison box on any package card to compare up to 3 side-by-side.
                  </p>
                  <Link href="/packages">
                    <button className="mt-4 bg-primary text-on-primary font-bold px-6 py-2.5 rounded-lg hover:bg-primary-container transition-colors cursor-pointer flex items-center gap-1">
                      <Search size={16} /> Choose Packages
                    </button>
                  </Link>
                </motion.div>
              ) : (
                /* Comparison side by side table/grid */
                <motion.div
                  key="table"
                  initial={{ opacity: 0 }}
                  animate={{ opacity: 1 }}
                  exit={{ opacity: 0 }}
                  className="overflow-x-auto bg-surface-container-lowest rounded-2xl shadow-level-1 border border-outline-variant/10 p-6"
                >
                  <table className="w-full text-left border-collapse min-w-[600px]">
                    <thead>
                      <tr className="border-b border-outline-variant/10">
                        {/* Empty spacer column */}
                        <th className="py-4 pr-6 font-bold text-primary font-display text-base w-[20%] select-none">
                          Feature comparison
                        </th>
                        
                        {/* Compared Packages Headers */}
                        {comparedPackages.map((pkg) => (
                          <th key={pkg.id} className="py-4 px-6 w-[26%] align-top select-none relative group">
                            <div className="flex flex-col gap-3">
                              
                              {/* Remove button */}
                              <button 
                                onClick={() => toggleCompare(pkg.id)}
                                className="absolute top-2 right-6 p-1.5 bg-error-container/20 text-error rounded-full hover:bg-error-container/50 transition-colors cursor-pointer"
                                title="Remove package"
                              >
                                <Trash2 size={13} />
                              </button>

                              <img 
                                src={getAssetPath(pkg.image)} 
                                alt={pkg.title} 
                                className="w-full h-32 object-cover rounded-lg shadow-sm border border-outline-variant/10" 
                              />
                              
                              <h3 className="font-bold text-primary text-[15px] font-display leading-snug line-clamp-2">
                                {pkg.title}
                              </h3>
                              
                              <span className="font-extrabold text-primary text-lg">
                                ₹{pkg.price.toLocaleString()} <span className="text-[11px] font-normal text-outline-variant">/pp</span>
                              </span>
                            </div>
                          </th>
                        ))}
                      </tr>
                    </thead>
                    <tbody>
                      {/* Duration */}
                      <tr className="border-b border-outline-variant/5 hover:bg-surface-container-low/30 transition-colors">
                        <td className="py-4 pr-6 font-bold text-xs uppercase tracking-wider text-outline select-none">Duration</td>
                        {comparedPackages.map((pkg) => (
                          <td key={pkg.id} className="py-4 px-6 font-semibold text-sm text-on-surface">
                            {pkg.duration}
                          </td>
                        ))}
                      </tr>

                      {/* Destinations */}
                      <tr className="border-b border-outline-variant/5 hover:bg-surface-container-low/30 transition-colors">
                        <td className="py-4 pr-6 font-bold text-xs uppercase tracking-wider text-outline select-none">Destinations</td>
                        {comparedPackages.map((pkg) => (
                          <td key={pkg.id} className="py-4 px-6 text-sm text-on-surface-variant font-medium">
                            {pkg.destinations}
                          </td>
                        ))}
                      </tr>

                      {/* Category */}
                      <tr className="border-b border-outline-variant/5 hover:bg-surface-container-low/30 transition-colors">
                        <td className="py-4 pr-6 font-bold text-xs uppercase tracking-wider text-outline select-none">Category</td>
                        {comparedPackages.map((pkg) => (
                          <td key={pkg.id} className="py-4 px-6 text-sm text-on-surface font-semibold">
                            {pkg.category}
                          </td>
                        ))}
                      </tr>

                      {/* Region */}
                      <tr className="border-b border-outline-variant/5 hover:bg-surface-container-low/30 transition-colors">
                        <td className="py-4 pr-6 font-bold text-xs uppercase tracking-wider text-outline select-none">Region</td>
                        {comparedPackages.map((pkg) => (
                          <td key={pkg.id} className="py-4 px-6 text-sm text-on-surface">
                            {pkg.region}
                          </td>
                        ))}
                      </tr>

                      {/* Hotel Stays */}
                      <tr className="border-b border-outline-variant/5 hover:bg-surface-container-low/30 transition-colors">
                        <td className="py-4 pr-6 font-bold text-xs uppercase tracking-wider text-outline select-none">Accommodations</td>
                        {comparedPackages.map((pkg) => (
                          <td key={pkg.id} className="py-4 px-6 text-sm text-on-surface font-medium">
                            {pkg.inclusions.hotel ? (
                              <span className="flex items-center gap-1">
                                <CheckCircle2 size={16} className="text-tertiary flex-shrink-0" />
                                {String(pkg.inclusions.hotel)}
                              </span>
                            ) : (
                              <span className="flex items-center gap-1 text-outline-variant">
                                <XCircle size={16} className="text-outline-variant flex-shrink-0" />
                                Not included
                              </span>
                            )}
                          </td>
                        ))}
                      </tr>

                      {/* Veg Meals */}
                      <tr className="border-b border-outline-variant/5 hover:bg-surface-container-low/30 transition-colors">
                        <td className="py-4 pr-6 font-bold text-xs uppercase tracking-wider text-outline select-none">Veg Meals</td>
                        {comparedPackages.map((pkg) => (
                          <td key={pkg.id} className="py-4 px-6 text-sm text-on-surface font-medium">
                            {pkg.inclusions.meals ? (
                              <span className="flex items-center gap-1">
                                <CheckCircle2 size={16} className="text-tertiary flex-shrink-0" />
                                {String(pkg.inclusions.meals)}
                              </span>
                            ) : (
                              <span className="flex items-center gap-1 text-outline-variant">
                                <XCircle size={16} className="text-outline-variant flex-shrink-0" />
                                Not included
                              </span>
                            )}
                          </td>
                        ))}
                      </tr>

                      {/* Transit details */}
                      <tr className="border-b border-outline-variant/5 hover:bg-surface-container-low/30 transition-colors">
                        <td className="py-4 pr-6 font-bold text-xs uppercase tracking-wider text-outline select-none">Transport</td>
                        {comparedPackages.map((pkg) => (
                          <td key={pkg.id} className="py-4 px-6 text-sm text-on-surface font-medium">
                            {pkg.inclusions.transit ? (
                              <span className="flex items-center gap-1">
                                <CheckCircle2 size={16} className="text-tertiary flex-shrink-0" />
                                {String(pkg.inclusions.transit)}
                              </span>
                            ) : (
                              <span className="flex items-center gap-1 text-outline-variant">
                                <XCircle size={16} className="text-outline-variant flex-shrink-0" />
                                Not included
                              </span>
                            )}
                          </td>
                        ))}
                      </tr>

                      {/* Guide details */}
                      <tr className="border-b border-outline-variant/5 hover:bg-surface-container-low/30 transition-colors">
                        <td className="py-4 pr-6 font-bold text-xs uppercase tracking-wider text-outline select-none">Local Guide</td>
                        {comparedPackages.map((pkg) => (
                          <td key={pkg.id} className="py-4 px-6 text-sm text-on-surface font-medium">
                            {pkg.inclusions.guide ? (
                              <span className="flex items-center gap-1">
                                <CheckCircle2 size={16} className="text-tertiary flex-shrink-0" />
                                {String(pkg.inclusions.guide)}
                              </span>
                            ) : (
                              <span className="flex items-center gap-1 text-outline-variant">
                                <XCircle size={16} className="text-outline-variant flex-shrink-0" />
                                Not included
                              </span>
                            )}
                          </td>
                        ))}
                      </tr>

                      {/* Special Darshans */}
                      <tr className="border-b border-outline-variant/5 hover:bg-surface-container-low/30 transition-colors">
                        <td className="py-4 pr-6 font-bold text-xs uppercase tracking-wider text-outline select-none">VIP Darshan</td>
                        {comparedPackages.map((pkg) => (
                          <td key={pkg.id} className="py-4 px-6 text-sm text-on-surface font-medium">
                            {pkg.inclusions.darshan || pkg.tags.includes("Special Darshan") ? (
                              <span className="flex items-center gap-1 font-bold text-secondary">
                                <CheckCircle2 size={16} className="text-secondary flex-shrink-0" />
                                {pkg.inclusions.darshan ? String(pkg.inclusions.darshan) : "Yes"}
                              </span>
                            ) : (
                              <span className="flex items-center gap-1 text-outline-variant">
                                <XCircle size={16} className="text-outline-variant flex-shrink-0" />
                                Standard Entry
                              </span>
                            )}
                          </td>
                        ))}
                      </tr>

                      {/* Accessibility switch check */}
                      <tr className="border-b border-outline-variant/5 hover:bg-surface-container-low/30 transition-colors">
                        <td className="py-4 pr-6 font-bold text-xs uppercase tracking-wider text-outline select-none">Elder Mobility</td>
                        {comparedPackages.map((pkg) => (
                          <td key={pkg.id} className="py-4 px-6 text-sm text-on-surface font-medium">
                            {pkg.seniorFriendly ? (
                              <span className="text-tertiary font-bold flex items-center gap-1">
                                ✓ Fully Assisted
                              </span>
                            ) : (
                              <span className="text-outline-variant">
                                Moderate Paced
                              </span>
                            )}
                          </td>
                        ))}
                      </tr>

                      {/* Action buttons */}
                      <tr className="select-none">
                        <td className="py-6 pr-6 w-[20%]" />
                        {comparedPackages.map((pkg) => (
                          <td key={pkg.id} className="py-6 px-6 align-middle">
                            <div className="flex flex-col gap-2">
                              <button 
                                onClick={() => handleEnquireClick(pkg.id)}
                                className="w-full bg-primary hover:bg-primary-container text-on-primary py-2.5 rounded-lg text-xs font-bold transition-all cursor-pointer flex items-center justify-center gap-1.5"
                              >
                                Enquire Now <ArrowRight size={13} />
                              </button>
                              <button 
                                onClick={() => toggleCompare(pkg.id)}
                                className="w-full border border-outline-variant text-on-surface-variant hover:text-error hover:border-error py-2.5 rounded-lg text-xs font-bold transition-all cursor-pointer"
                              >
                                Remove
                              </button>
                            </div>
                          </td>
                        ))}
                      </tr>

                    </tbody>
                  </table>
                </motion.div>
              )}
            </AnimatePresence>
          </div>

        </main>
      </PageTransition>
      <Footer />
    </>
  );
}
