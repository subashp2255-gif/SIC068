"use client";

import { useState, useRef, useEffect } from "react";
import { motion, AnimatePresence } from "framer-motion";
import { Users, ChevronDown, Plus, Minus } from "lucide-react";

export interface TravellersState {
  adults: number;
  children: number;
  seniors: number;
}

interface Props {
  value: TravellersState;
  onChange: (val: TravellersState) => void;
}

export default function TravellerSelector({ value, onChange }: Props) {
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

  const total = value.adults + value.children + value.seniors;
  
  // Format the label responsively based on available space via CSS and truncate
  const desktopLabel = `${value.adults + value.seniors} Adults, ${value.children} Children`;
  const mobileLabel = `${total} Travellers`;

  const handleIncrement = (type: keyof TravellersState) => {
    onChange({ ...value, [type]: value[type] + 1 });
  };

  const handleDecrement = (type: keyof TravellersState) => {
    if (value[type] > 0) {
      if (type === 'adults' && value.adults === 1 && value.seniors === 0) return; // Must have at least 1 adult or senior
      onChange({ ...value, [type]: value[type] - 1 });
    }
  };

  const CounterRow = ({ label, description, type, min = 0 }: { label: string, description: string, type: keyof TravellersState, min?: number }) => (
    <div className="flex items-center justify-between py-3">
      <div>
        <div className="text-sm font-bold text-on-surface">{label}</div>
        <div className="text-xs text-outline-variant">{description}</div>
      </div>
      <div className="flex items-center gap-3">
        <button
          type="button"
          onClick={() => handleDecrement(type)}
          disabled={value[type] <= min}
          className="w-8 h-8 rounded-full border border-outline-variant/30 flex items-center justify-center text-outline disabled:opacity-30 disabled:cursor-not-allowed hover:bg-surface-container hover:text-primary transition-colors"
        >
          <Minus size={14} />
        </button>
        <span className="w-4 text-center text-sm font-semibold text-on-surface inline-block">
          {value[type]}
        </span>
        <button
          type="button"
          onClick={() => handleIncrement(type)}
          className="w-8 h-8 rounded-full border border-outline-variant/30 flex items-center justify-center text-outline hover:bg-surface-container hover:text-primary transition-colors"
        >
          <Plus size={14} />
        </button>
      </div>
    </div>
  );

  return (
    <div className="relative flex flex-col p-4 hover:bg-surface-container-low transition-colors rounded-b-2xl md:rounded-r-2xl md:rounded-bl-none text-left h-full justify-center group cursor-pointer" 
         ref={containerRef}
         onClick={() => setIsOpen(!isOpen)}>
      <label className="font-label-bold text-[12px] uppercase tracking-wider text-outline mb-1 cursor-pointer">Travellers</label>
      <div className="flex items-center gap-2">
        <Users size={18} className="text-primary flex-shrink-0" />
        <div className="flex-grow font-body-md text-[15px] truncate text-on-surface">
          <span className="hidden xl:inline">{desktopLabel}</span>
          <span className="inline xl:hidden">{mobileLabel}</span>
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
            className="absolute top-[calc(100%+8px)] right-0 w-full md:w-[320px] bg-surface rounded-xl shadow-level-2 border border-outline-variant/20 z-50 overflow-hidden"
            onClick={(e) => e.stopPropagation()}
          >
            <div className="p-4 flex flex-col divide-y divide-outline-variant/10">
              <CounterRow label="Adults" description="Ages 18 - 59" type="adults" min={value.seniors > 0 ? 0 : 1} />
              <CounterRow label="Seniors" description="Ages 60+" type="seniors" />
              <CounterRow label="Children" description="Ages 2 - 12" type="children" />
            </div>
          </motion.div>
        )}
      </AnimatePresence>
    </div>
  );
}
