"use client";

import { useState, useRef, useEffect } from "react";
import { motion, AnimatePresence } from "framer-motion";
import { Search, MapPin, ChevronDown } from "lucide-react";

const SUGGESTED_DESTINATIONS = [
  "Varanasi",
  "Rameswaram",
  "Tirupati",
  "Kedarnath",
  "Madurai",
  "Shirdi"
];

interface Props {
  value: string;
  onChange: (val: string) => void;
}

export default function DestinationSelector({ value, onChange }: Props) {
  const [isOpen, setIsOpen] = useState(false);
  const [searchQuery, setSearchQuery] = useState("");
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

  const filtered = SUGGESTED_DESTINATIONS.filter(dest => 
    dest.toLowerCase().includes(searchQuery.toLowerCase())
  );

  const handleSelect = (dest: string) => {
    onChange(dest);
    setSearchQuery("");
    setIsOpen(false);
  };

  return (
    <div className="relative flex flex-col p-4 hover:bg-surface-container-low transition-colors rounded-t-2xl md:rounded-l-2xl md:rounded-tr-none text-left h-full justify-center group cursor-pointer" 
         ref={containerRef}
         onClick={() => setIsOpen(true)}>
      <label className="font-label-bold text-[12px] uppercase tracking-wider text-outline mb-1 cursor-pointer">Destination</label>
      <div className="flex items-center gap-2">
        <Search size={18} className="text-primary flex-shrink-0" />
        <div className="flex-grow font-body-md text-[15px] truncate text-on-surface">
          {value || <span className="text-outline-variant">Where to?</span>}
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
            className="absolute top-[calc(100%+8px)] left-0 w-full md:w-[300px] bg-surface rounded-xl shadow-level-2 border border-outline-variant/20 z-50 overflow-hidden"
            onClick={(e) => e.stopPropagation()}
          >
            <div className="p-3 border-b border-outline-variant/20">
              <div className="flex items-center gap-2 bg-surface-container-low px-3 py-2 rounded-lg">
                <Search size={16} className="text-outline" />
                <input
                  autoFocus
                  type="text"
                  placeholder="Search destinations..."
                  value={searchQuery}
                  onChange={(e) => setSearchQuery(e.target.value)}
                  className="w-full bg-transparent border-none p-0 text-sm focus:ring-0 outline-none"
                />
              </div>
            </div>
            <div className="max-h-[240px] overflow-y-auto py-2">
              {filtered.length > 0 ? (
                filtered.map((dest) => (
                  <button
                    key={dest}
                    type="button"
                    onClick={() => handleSelect(dest)}
                    className="w-full flex items-center gap-3 px-4 py-2.5 hover:bg-surface-container text-left transition-colors"
                  >
                    <div className="bg-surface-container-low p-1.5 rounded-full text-secondary">
                      <MapPin size={14} />
                    </div>
                    <span className="text-sm font-medium text-on-surface">{dest}</span>
                  </button>
                ))
              ) : (
                <div className="px-4 py-3 text-sm text-outline text-center">
                  No destinations found.
                </div>
              )}
            </div>
          </motion.div>
        )}
      </AnimatePresence>
    </div>
  );
}
