"use client";

import React, { useState } from "react";
import { motion } from "framer-motion";
import { TrendingUp, Users, Package, Inbox, CheckCircle2, Clock, Compass, Star } from "lucide-react";

interface KPICardProps {
  title: string;
  value: number | string;
  subtitle?: string;
  icon: React.ComponentType<{ className?: string }>;
  trend?: string;
  trendUp?: boolean;
  color?: "gold" | "teal" | "emerald" | "amber" | "indigo";
}

export const KPICard: React.FC<KPICardProps> = ({
  title,
  value,
  subtitle,
  icon: Icon,
  trend,
  trendUp = true,
  color = "gold",
}) => {
  const colorMap = {
    gold: "from-[#D4AF37]/20 to-[#D4AF37]/5 text-[#D4AF37] border-[#D4AF37]/25",
    teal: "from-teal-500/20 to-teal-500/5 text-teal-400 border-teal-500/25",
    emerald: "from-emerald-500/20 to-emerald-500/5 text-emerald-400 border-emerald-500/25",
    amber: "from-amber-500/20 to-amber-500/5 text-amber-400 border-amber-500/25",
    indigo: "from-indigo-500/20 to-indigo-500/5 text-indigo-400 border-indigo-500/25",
  };

  return (
    <motion.div
      initial={{ opacity: 0, y: 15 }}
      animate={{ opacity: 1, y: 0 }}
      whileHover={{ y: -2, transition: { duration: 0.2 } }}
      className={`relative overflow-hidden rounded-2xl bg-gradient-to-br ${colorMap[color]} backdrop-blur-md border p-5 shadow-lg shadow-black/20 flex flex-col justify-between`}
    >
      <div className="flex items-start justify-between">
        <div className="space-y-1">
          <p className="text-xs font-medium uppercase tracking-wider text-slate-400">{title}</p>
          <h3 className="text-2xl sm:text-3xl font-serif font-bold text-[#F9F6F0] tracking-tight">
            {value}
          </h3>
        </div>
        <div className="p-2.5 rounded-xl bg-white/5 border border-white/10 text-current">
          <Icon className="w-5 h-5" />
        </div>
      </div>

      {(subtitle || trend) && (
        <div className="mt-3.5 flex items-center justify-between text-xs border-t border-white/5 pt-2.5">
          {subtitle && <span className="text-slate-400">{subtitle}</span>}
          {trend && (
            <span
              className={`flex items-center gap-1 font-semibold ${
                trendUp ? "text-emerald-400" : "text-rose-400"
              }`}
            >
              <TrendingUp className="w-3.5 h-3.5" />
              {trend}
            </span>
          )}
        </div>
      )}
    </motion.div>
  );
};

export const MonthlyTrendsChart: React.FC<{ data: { month: string; count: number }[] }> = ({
  data = [],
}) => {
  const [hoveredIdx, setHoveredIdx] = useState<number | null>(null);
  const maxCount = Math.max(...data.map((d) => d.count), 5);

  return (
    <div className="rounded-2xl bg-[#0A1118]/90 border border-[#D4AF37]/20 p-6 shadow-xl flex flex-col justify-between">
      <div className="flex items-center justify-between mb-6">
        <div>
          <h4 className="font-serif text-lg font-bold text-[#F9F6F0]">Enquiry Growth Trends</h4>
          <p className="text-xs text-slate-400">Monthly pilgrim booking inquiries (last 6 months)</p>
        </div>
        <span className="text-xs font-semibold px-2.5 py-1 rounded-full bg-[#D4AF37]/15 text-[#D4AF37] border border-[#D4AF37]/30">
          Live Data
        </span>
      </div>

      {data.length === 0 ? (
        <div className="h-48 flex items-center justify-center text-sm text-slate-500">
          No enquiry data recorded yet
        </div>
      ) : (
        <div className="h-56 flex items-end gap-3 sm:gap-6 pt-6 pb-2 px-2">
          {data.map((item, idx) => {
            const heightPercent = Math.max((item.count / maxCount) * 100, 8);
            const isHovered = hoveredIdx === idx;

            return (
              <div
                key={item.month}
                onMouseEnter={() => setHoveredIdx(idx)}
                onMouseLeave={() => setHoveredIdx(null)}
                className="flex-1 flex flex-col items-center gap-2 h-full justify-end group cursor-pointer"
              >
                {/* Tooltip */}
                <div
                  className={`text-xs px-2 py-1 rounded-md bg-[#D4AF37] text-[#0A1118] font-bold shadow-lg transition-all duration-200 ${
                    isHovered ? "opacity-100 -translate-y-1" : "opacity-0 translate-y-1 pointer-events-none"
                  }`}
                >
                  {item.count} inquiries
                </div>

                {/* Bar */}
                <motion.div
                  initial={{ height: 0 }}
                  animate={{ height: `${heightPercent}%` }}
                  transition={{ duration: 0.6, delay: idx * 0.08, ease: "easeOut" }}
                  className={`w-full rounded-t-xl transition-all duration-300 ${
                    isHovered
                      ? "bg-gradient-to-t from-[#B38728] to-[#F3E5AB] shadow-lg shadow-[#D4AF37]/30"
                      : "bg-gradient-to-t from-[#B38728]/40 to-[#D4AF37]/80 hover:brightness-125"
                  }`}
                />

                {/* Month label */}
                <span className="text-[11px] font-medium text-slate-400 group-hover:text-[#D4AF37] transition truncate max-w-[60px]">
                  {item.month.split(" ")[0]}
                </span>
              </div>
            );
          })}
        </div>
      )}
    </div>
  );
};

export const BreakdownDistributionChart: React.FC<{
  title: string;
  subtitle: string;
  items: { label: string; count: number; color?: string }[];
}> = ({ title, subtitle, items = [] }) => {
  const total = items.reduce((acc, curr) => acc + curr.count, 0) || 1;
  const defaultColors = ["#D4AF37", "#0D9488", "#6366F1", "#EC4899", "#F59E0B", "#10B981"];

  return (
    <div className="rounded-2xl bg-[#0A1118]/90 border border-[#D4AF37]/20 p-6 shadow-xl flex flex-col justify-between">
      <div className="mb-4">
        <h4 className="font-serif text-lg font-bold text-[#F9F6F0]">{title}</h4>
        <p className="text-xs text-slate-400">{subtitle}</p>
      </div>

      {items.length === 0 ? (
        <div className="h-44 flex items-center justify-center text-sm text-slate-500">
          No records found
        </div>
      ) : (
        <div className="space-y-3.5">
          {items.map((item, idx) => {
            const percentage = Math.round((item.count / total) * 100);
            const color = item.color || defaultColors[idx % defaultColors.length];

            return (
              <div key={item.label} className="space-y-1.5">
                <div className="flex items-center justify-between text-xs">
                  <span className="font-medium text-slate-300 capitalize">{item.label}</span>
                  <div className="flex items-center gap-2">
                    <span className="text-slate-400">{item.count} items</span>
                    <span className="font-semibold text-[#F9F6F0]">{percentage}%</span>
                  </div>
                </div>
                <div className="h-2 w-full rounded-full bg-white/5 overflow-hidden">
                  <motion.div
                    initial={{ width: 0 }}
                    animate={{ width: `${percentage}%` }}
                    transition={{ duration: 0.5, delay: idx * 0.05 }}
                    style={{ backgroundColor: color }}
                    className="h-full rounded-full shadow-sm"
                  />
                </div>
              </div>
            );
          })}
        </div>
      )}
    </div>
  );
};
