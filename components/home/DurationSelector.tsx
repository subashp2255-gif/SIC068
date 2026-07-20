"use client";

import { useState, useRef, useEffect } from "react";
import { motion, AnimatePresence } from "framer-motion";
import { Clock, ChevronDown } from "lucide-react";

interface Props {
  value: string;
  onChange: (val: string) => void;
}

const DURATIONS = [
  { value: "1-3", label: "1–3 Days" },
  { value: "4-6", label: "4–6 Days" },
  { value: "7-10", label: "7–10 Days" },
  { value: "10+", label: "More than 10 Days" }
];

export default function DurationSelector({ value, onChange }: Props) {
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

  const selectedLabel = DURATIONS.find(d => d.value === value)?.label || "";

  const handleSelect = (val: string) => {
    onChange(val);
    setIsOpen(false);
  };

  return (
    <div className="relative flex flex-col p-4 hover:bg-surface-container-low transition-colors text-left h-full justify-center group cursor-pointer" 
         ref={containerRef}
         onClick={() => setIsOpen(true)}>
      <label className="font-label-bold text-[12px] uppercase tracking-wider text-outline mb-1 cursor-pointer">Duration</label>
      <div className="flex items-center gap-2">
        <Clock size={18} className="text-primary flex-shrink-0" />
        <div className="flex-grow font-body-md text-[15px] truncate text-on-surface">
          {selectedLabel || <span className="text-outline-variant">Any Duration</span>}
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
            className="absolute top-[calc(100%+8px)] left-0 w-full md:w-[240px] bg-surface rounded-xl shadow-level-2 border border-outline-variant/20 z-50 overflow-hidden"
            onClick={(e) => e.stopPropagation()}
          >
            <div className="flex flex-col py-2">
              <button
                type="button"
                onClick={() => handleSelect("")}
                className={`w-full text-left px-4 py-3 hover:bg-surface-container transition-colors text-sm ${value === "" ? "font-bold text-primary bg-surface-container-low" : "text-on-surface"}`}
              >
                Any Duration
              </button>
              {DURATIONS.map((dur) => (
                <button
                  key={dur.value}
                  type="button"
                  onClick={() => handleSelect(dur.value)}
                  className={`w-full text-left px-4 py-3 hover:bg-surface-container transition-colors text-sm ${value === dur.value ? "font-bold text-primary bg-surface-container-low" : "text-on-surface"}`}
                >
                  {dur.label}
                </button>
              ))}
            </div>
          </motion.div>
        )}
      </AnimatePresence>
    </div>
  );
}
