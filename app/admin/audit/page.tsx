"use client";

import React, { useState, useEffect } from "react";
import { fetchAuditLogs, type AuditLogItem } from "@/lib/services/adminService";
import { ShieldCheck, Clock, User, ChevronDown, ChevronRight, RefreshCw } from "lucide-react";

export default function AdminAuditPage() {
  const [logs, setLogs] = useState<AuditLogItem[]>([]);
  const [loading, setLoading] = useState(true);
  const [expandedId, setExpandedId] = useState<string | null>(null);

  const loadLogs = async () => {
    setLoading(true);
    const data = await fetchAuditLogs(50);
    setLogs(data);
    setLoading(false);
  };

  useEffect(() => {
    loadLogs();
  }, []);

  return (
    <div className="space-y-6">
      <div className="flex items-center justify-between">
        <div>
          <h2 className="font-serif text-2xl font-bold text-white">Security & Audit Logs</h2>
          <p className="text-xs text-slate-400">
            Append-only record of administrator package modifications, status transitions, and publishing actions.
          </p>
        </div>
        <button
          onClick={loadLogs}
          className="flex items-center gap-2 px-3.5 py-2 rounded-xl bg-white/5 hover:bg-white/10 text-slate-300 text-xs font-semibold border border-white/10 transition"
        >
          <RefreshCw className="w-3.5 h-3.5" />
          <span>Refresh Logs</span>
        </button>
      </div>

      <div className="space-y-3">
        {loading ? (
          <div className="py-12 text-center text-xs text-slate-500">Loading audit trail...</div>
        ) : logs.length === 0 ? (
          <div className="p-8 rounded-2xl bg-[#0A1118] border border-[#D4AF37]/20 text-center text-xs text-slate-400">
            No audit records created yet.
          </div>
        ) : (
          logs.map((log) => {
            const isExpanded = expandedId === log.id;
            return (
              <div
                key={log.id}
                className="rounded-2xl bg-[#0A1118] border border-[#D4AF37]/20 p-4 shadow-lg space-y-3"
              >
                <div
                  onClick={() => setExpandedId(isExpanded ? null : log.id)}
                  className="flex items-center justify-between cursor-pointer group"
                >
                  <div className="flex items-center gap-3">
                    <div className="w-8 h-8 rounded-xl bg-[#D4AF37]/10 text-[#D4AF37] flex items-center justify-center font-bold text-xs">
                      <ShieldCheck className="w-4 h-4" />
                    </div>
                    <div>
                      <div className="flex items-center gap-2">
                        <span className="font-mono text-xs font-bold text-white uppercase tracking-wider">
                          {log.action}
                        </span>
                        {log.entity_name && (
                          <span className="text-xs text-[#D4AF37] font-semibold">
                            "{log.entity_name}"
                          </span>
                        )}
                      </div>
                      <span className="text-[11px] text-slate-400">
                        Admin: {log.admin_email || "System"} • Entity: {log.entity_type}
                      </span>
                    </div>
                  </div>

                  <div className="flex items-center gap-3">
                    <span className="text-[11px] text-slate-500 font-mono">
                      {new Date(log.created_at).toLocaleString()}
                    </span>
                    {isExpanded ? (
                      <ChevronDown className="w-4 h-4 text-slate-400" />
                    ) : (
                      <ChevronRight className="w-4 h-4 text-slate-400" />
                    )}
                  </div>
                </div>

                {isExpanded && (
                  <div className="pt-3 border-t border-white/10 grid grid-cols-1 md:grid-cols-2 gap-4 text-xs font-mono">
                    {log.old_values && (
                      <div className="p-3 rounded-xl bg-black/40 border border-white/5 space-y-1">
                        <span className="text-rose-400 font-bold block text-[10px] uppercase">
                          Previous State
                        </span>
                        <pre className="text-slate-400 overflow-x-auto text-[11px]">
                          {JSON.stringify(log.old_values, null, 2)}
                        </pre>
                      </div>
                    )}
                    {log.new_values && (
                      <div className="p-3 rounded-xl bg-black/40 border border-white/5 space-y-1">
                        <span className="text-emerald-400 font-bold block text-[10px] uppercase">
                          Updated State
                        </span>
                        <pre className="text-slate-300 overflow-x-auto text-[11px]">
                          {JSON.stringify(log.new_values, null, 2)}
                        </pre>
                      </div>
                    )}
                  </div>
                )}
              </div>
            );
          })
        )}
      </div>
    </div>
  );
}
