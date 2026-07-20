"use client";

import { useState, useRef, useEffect } from "react";
import { motion, AnimatePresence } from "framer-motion";
import { Calendar, ChevronDown, Sparkles } from "lucide-react";

interface Props {
  value: string;
  onChange: (val: string) => void;
}

export default function MonthSelector({ value, onChange }: Props) {
  const [isOpen, setIsOpen] = useState(false);
  const containerRef = useRef<HTMLDivElement>(null);

  useEffect(() => {
    const handleClickOutside = (event: MouseEvent) => {
      if (containerRef.current && !containerRef.current.contains(event.target as Node)) {
        setIsOpen(false);
      }
    };
    document.addEventListener("mousedown", handleClickOutside);
    return () => document.removeEventListener("mousedown", handleClickOutside);
  }, []);

  const generateMonths = () => {
    const months = [];
    const date = new Date();
    // Start from next month to show upcoming 8 months
    date.setMonth(date.getMonth() + 1);
    
    for (let i = 0; i < 8; i++) {
      const monthName = date.toLocaleString('default', { month: 'long' });
      const year = date.getFullYear();
      const value = `${monthName.toLowerCase()}-${year}`;
      const label = `${monthName} ${year}`;
      
      // Mark specific months as recommended (e.g., Oct, Nov, Feb)
      const m = date.getMonth();
      const isRecommended = m === 9 || m === 10 || m === 1; // Oct, Nov, Feb (0-indexed)

      months.push({ value, label, isRecommended });
      date.setMonth(date.getMonth() + 1);
    }
    return months;
  };

  const monthsList = generateMonths();
  const selectedLabel = monthsList.find(m => m.value === value)?.label || "";

  const handleSelect = (val: string) => {
    onChange(val);
    setIsOpen(false);
  };

  return (
    <div className="relative flex flex-col p-4 hover:bg-surface-container-low transition-colors text-left h-full justify-center group cursor-pointer" 
         ref={containerRef}
         onClick={() => setIsOpen(true)}>
      <label className="font-label-bold text-[12px] uppercase tracking-wider text-outline mb-1 cursor-pointer">Travel Month</label>
      <div className="flex items-center gap-2">
        <Calendar size={18} className="text-primary flex-shrink-0" />
        <div className="flex-grow font-body-md text-[15px] truncate text-on-surface">
          {selectedLabel || <span className="text-outline-variant">Any Month</span>}
        </div>
        <ChevronDown size={16} className={`text-outline transition-transform duration-300 ${isOpen ? "rotate-180" : ""}`} />
      </div>

      <AnimatePresence>
        {isOpen && (
          <motion.div
            initial={{ opacity: 0, y: 10, scale: 0.95 }}
            animate={{ opacity: 1, y: 0, scale: 1 }}
            exit={{ opacity: 0, y: 10, scale: 0.95 }}
            transition={{ duration: 0.2 }}
            className="absolute top-[calc(100%+8px)] left-0 w-full md:w-[320px] bg-surface rounded-xl shadow-level-2 border border-outline-variant/20 z-50 overflow-hidden"
            onClick={(e) => e.stopPropagation()}
          >
            <div className="grid grid-cols-2 gap-2 p-3">
              {monthsList.map((month) => (
                <button
                  key={month.value}
                  type="button"
                  onClick={() => handleSelect(month.value)}
                  className={`flex flex-col items-start p-3 rounded-lg border transition-colors ${
                    value === month.value
                      ? "bg-primary-container/10 border-primary text-primary"
                      : "border-transparent hover:bg-surface-container hover:border-outline-variant/30 text-on-surface"
                  }`}
                >
                  <span className="text-sm font-semibold">{month.label.split(' ')[0]}</span>
                  <div className="flex justify-between items-center w-full mt-1">
                    <span className="text-xs text-outline-variant">{month.label.split(' ')[1]}</span>
                    {month.isRecommended && (
                      <span className="text-[10px] flex items-center text-secondary font-bold" title="Recommended Season">
                        <Sparkles size={12} className="mr-0.5" /> Best
                      </span>
                    )}
                  </div>
                </button>
              ))}
            </div>
          </motion.div>
        )}
      </AnimatePresence>
    </div>
  );
}
