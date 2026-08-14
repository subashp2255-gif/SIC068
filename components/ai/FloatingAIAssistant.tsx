"use client";

import { useState, useEffect, useRef } from "react";
import { usePathname, useRouter } from "next/navigation";
import { motion, AnimatePresence } from "framer-motion";
import { Sparkles, X, Send, Bot, User, Minimize2, ChevronRight, PhoneCall, RefreshCw } from "lucide-react";
import { useApp } from "@/context/AppContext";
import { easeQuint } from "@/lib/animations";
import OneJourneyTempleIcon from "@/components/ui/OneJourneyTempleIcon";

interface Message {
  id: string;
  sender: "bot" | "user";
  text: string;
  quickActions?: string[];
  timestamp: string;
}

export default function FloatingAIAssistant() {
  const pathname = usePathname();
  const router = useRouter();
  const { openEnquiryModal } = useApp();

  const [isOpen, setIsOpen] = useState(false);
  const [isMinimized, setIsMinimized] = useState(false);
  const [showTooltip, setShowTooltip] = useState(true);
  const [inputText, setInputText] = useState("");
  const [isLoading, setIsLoading] = useState(false);

  const [messages, setMessages] = useState<Message[]>([
    {
      id: "welcome-1",
      sender: "bot",
      text: "Namaste! I am your OneJourney AI Guide. Ask me anything about our pilgrimage tours, senior-friendly facilities, pricing, or custom itineraries!",
      quickActions: [
        "Is this senior-friendly?",
        "What is included in pricing?",
        "Explore Pilgrimage Tours",
        "Plan with AI"
      ],
      timestamp: new Date().toLocaleTimeString([], { hour: "2-digit", minute: "2-digit" }),
    },
  ]);

  const chatEndRef = useRef<HTMLDivElement>(null);

  // Auto-scroll chat to bottom
  useEffect(() => {
    if (isOpen && !isMinimized) {
      chatEndRef.current?.scrollIntoView({ behavior: "smooth" });
    }
  }, [messages, isOpen, isMinimized]);

  // Hide initial welcome tooltip after 8 seconds
  useEffect(() => {
    const timer = setTimeout(() => setShowTooltip(false), 8000);
    return () => clearTimeout(timer);
  }, []);

  const handleSendMessage = async (textToSend?: string) => {
    const query = textToSend || inputText;
    if (!query.trim() || isLoading) return;

    const userMsg: Message = {
      id: `user-${Date.now()}`,
      sender: "user",
      text: query,
      timestamp: new Date().toLocaleTimeString([], { hour: "2-digit", minute: "2-digit" }),
    };

    setMessages((prev) => [...prev, userMsg]);
    if (!textToSend) setInputText("");
    setIsLoading(true);

    try {
      const res = await fetch("/api/ai-chat", {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({
          message: query,
          context: { pathname },
        }),
      });
      const data = await res.json();

      const botMsg: Message = {
        id: `bot-${Date.now()}`,
        sender: "bot",
        text: data.reply || "I am here to guide your journey. Would you like to explore our packages or talk to a travel expert?",
        quickActions: data.quickActions || ["Plan with AI", "Talk to Expert"],
        timestamp: new Date().toLocaleTimeString([], { hour: "2-digit", minute: "2-digit" }),
      };

      setMessages((prev) => [...prev, botMsg]);
    } catch (e) {
      setMessages((prev) => [
        ...prev,
        {
          id: `bot-err-${Date.now()}`,
          sender: "bot",
          text: "I am having trouble fetching live information. You can speak directly with our team at +91 1800-745-4746.",
          quickActions: ["Talk to Expert", "Explore Packages"],
          timestamp: new Date().toLocaleTimeString([], { hour: "2-digit", minute: "2-digit" }),
        },
      ]);
    } finally {
      setIsLoading(false);
    }
  };

  const handleActionClick = (action: string) => {
    if (action === "Plan with AI" || action === "Launch AI Trip Planner") {
      setIsOpen(false);
      router.push("/ai-trip-planner");
    } else if (action === "Explore Pilgrimage Tours" || action === "View Senior Friendly Tours") {
      setIsOpen(false);
      router.push("/packages?category=pilgrimage");
    } else if (action === "Explore Packages") {
      setIsOpen(false);
      router.push("/packages");
    } else if (action === "Talk to Expert" || action === "Speak to Expert" || action === "Talk to Travel Expert") {
      setIsOpen(false);
      openEnquiryModal(null, "ai_trip_planner");
    } else {
      handleSendMessage(action);
    }
  };

  return (
    <div className="fixed bottom-6 right-6 z-50 select-none font-sans">
      {/* 1. Closed Floating Button & Tooltip */}
      <AnimatePresence>
        {!isOpen && (
          <div className="relative flex items-center gap-3">
            {/* Welcome Floating Tooltip Bubble */}
            {showTooltip && (
              <motion.div
                initial={{ opacity: 0, x: 15, scale: 0.95 }}
                animate={{ opacity: 1, x: 0, scale: 1 }}
                exit={{ opacity: 0, scale: 0.9 }}
                className="hidden sm:flex items-center gap-2 bg-[#102F4A] text-white text-xs font-semibold px-3.5 py-2 rounded-xl shadow-level-2 border border-white/20"
              >
                <OneJourneyTempleIcon size={16} className="text-[#E6B85C]" />
                <span>Ask OneJourney AI Travel Assistant</span>
                <button
                  onClick={() => setShowTooltip(false)}
                  className="hover:opacity-70 text-slate-300 ml-1"
                >
                  <X size={12} />
                </button>
              </motion.div>
            )}

            {/* Main Trigger Button */}
            <motion.button
              onClick={() => {
                setIsOpen(true);
                setIsMinimized(false);
                setShowTooltip(false);
              }}
              whileHover={{ scale: 1.06, y: -2 }}
              whileTap={{ scale: 0.94 }}
              className="w-14 h-14 bg-gradient-to-br from-[#102F4A] to-[#1D5E85] text-white rounded-full shadow-level-3 border-2 border-[#E6B85C] flex items-center justify-center relative cursor-pointer group focus-visible:ring-2 focus-visible:ring-[#E6B85C] outline-none"
              aria-label={isOpen ? "Close One Journey AI Trip Planner" : "Open One Journey AI Trip Planner"}
            >
              <OneJourneyTempleIcon size={26} className="text-[#E6B85C] group-hover:drop-shadow-[0_0_8px_rgba(230,184,92,0.85)] transition-all duration-300" />
              {/* Soft Pulse Ring */}
              <span className="absolute inset-0 rounded-full border border-[#E6B85C] animate-ping opacity-30 pointer-events-none" />
            </motion.button>
          </div>
        )}
      </AnimatePresence>

      {/* 2. Expanded Chat Window */}
      <AnimatePresence>
        {isOpen && (
          <motion.div
            initial={{ opacity: 0, y: 25, scale: 0.95 }}
            animate={{ opacity: 1, y: 0, scale: 1 }}
            exit={{ opacity: 0, y: 25, scale: 0.95 }}
            transition={{ duration: 0.3, ease: easeQuint }}
            className={`bg-white rounded-2xl shadow-level-3 border border-[#DDE4E8] flex flex-col overflow-hidden transition-all duration-300 ${
              isMinimized
                ? "w-[300px] h-[58px]"
                : "w-[calc(100vw-32px)] sm:w-[380px] h-[520px] max-h-[80vh]"
            }`}
          >
            {/* Header */}
            <div className="bg-gradient-to-r from-[#102F4A] to-[#1D5E85] text-white p-3.5 flex justify-between items-center shrink-0">
              <div className="flex items-center gap-2.5">
                <div className="w-8 h-8 rounded-full bg-[#E6B85C]/20 border border-[#E6B85C]/40 flex items-center justify-center">
                  <OneJourneyTempleIcon size={18} className="text-[#E6B85C]" />
                </div>
                <div>
                  <h4 className="font-bold text-sm leading-tight flex items-center gap-1.5 font-display">
                    OneJourney AI Guide
                    <span className="w-2 h-2 rounded-full bg-emerald-400 animate-pulse" />
                  </h4>
                  <span className="text-[11px] text-slate-300 block">Instant Yatra Assistance</span>
                </div>
              </div>

              <div className="flex items-center gap-1 text-slate-300">
                <button
                  onClick={() => setIsMinimized(!isMinimized)}
                  className="p-1.5 hover:bg-white/10 rounded-lg transition-colors cursor-pointer"
                  title={isMinimized ? "Expand" : "Minimize"}
                >
                  <Minimize2 size={15} />
                </button>
                <button
                  onClick={() => setIsOpen(false)}
                  className="p-1.5 hover:bg-white/10 rounded-lg transition-colors cursor-pointer"
                  title="Close Assistant"
                >
                  <X size={16} />
                </button>
              </div>
            </div>

            {/* Chat Body (when not minimized) */}
            {!isMinimized && (
              <>
                {/* Messages Container */}
                <div className="flex-grow p-4 overflow-y-auto space-y-3.5 bg-[#F5F7F8]">
                  {messages.map((msg) => (
                    <div
                      key={msg.id}
                      className={`flex flex-col gap-1 ${
                        msg.sender === "user" ? "items-end" : "items-start"
                      }`}
                    >
                      <div className="flex items-end gap-2 max-w-[85%]">
                        {msg.sender === "bot" && (
                          <div className="w-6 h-6 rounded-full bg-[#102F4A] text-[#E6B85C] flex items-center justify-center shrink-0 mb-0.5">
                            <Bot size={13} />
                          </div>
                        )}
                        <div
                          className={`p-3 rounded-2xl text-xs leading-relaxed ${
                            msg.sender === "user"
                              ? "bg-[#102F4A] text-white rounded-br-none font-medium"
                              : "bg-white text-[#17212B] border border-[#DDE4E8] rounded-bl-none shadow-sm"
                          }`}
                        >
                          <p>{msg.text}</p>
                          <span
                            className={`text-[9px] block mt-1 ${
                              msg.sender === "user"
                                ? "text-slate-300 text-right"
                                : "text-slate-400 text-left"
                            }`}
                          >
                            {msg.timestamp}
                          </span>
                        </div>
                      </div>

                      {/* Quick Action Chips attached to Bot messages */}
                      {msg.sender === "bot" && msg.quickActions && msg.quickActions.length > 0 && (
                        <div className="flex flex-wrap gap-1.5 pl-8 mt-1">
                          {msg.quickActions.map((action) => (
                            <button
                              key={action}
                              onClick={() => handleActionClick(action)}
                              className="text-[11px] font-semibold bg-white hover:bg-[#FFF9F0] text-[#1D5E85] hover:text-[#102F4A] border border-[#DDE4E8] hover:border-[#D89A32] px-2.5 py-1 rounded-full shadow-2xs transition-all active:scale-95 cursor-pointer flex items-center gap-1"
                            >
                              <span>{action}</span>
                              <ChevronRight size={10} className="text-[#D89A32]" />
                            </button>
                          ))}
                        </div>
                      )}
                    </div>
                  ))}

                  {/* Thinking Spinner */}
                  {isLoading && (
                    <div className="flex items-center gap-2 text-xs text-[#5E6B76] pl-2 py-1">
                      <RefreshCw size={13} className="animate-spin text-[#D89A32]" />
                      <span>OneJourney AI is thinking...</span>
                    </div>
                  )}

                  <div ref={chatEndRef} />
                </div>

                {/* Input Controls */}
                <form
                  onSubmit={(e) => {
                    e.preventDefault();
                    handleSendMessage();
                  }}
                  className="p-3 bg-white border-t border-[#DDE4E8] flex items-center gap-2"
                >
                  <input
                    type="text"
                    value={inputText}
                    onChange={(e) => setInputText(e.target.value)}
                    placeholder="Ask about tours, pricing, accessibility..."
                    className="flex-grow text-xs px-3.5 py-2.5 bg-[#F5F7F8] border border-[#DDE4E8] rounded-xl outline-none focus:border-[#1D5E85] transition-colors text-[#17212B]"
                  />
                  <button
                    type="submit"
                    disabled={!inputText.trim() || isLoading}
                    className="w-9 h-9 bg-[#102F4A] hover:bg-[#1D5E85] disabled:opacity-50 text-white rounded-xl flex items-center justify-center transition-all cursor-pointer shrink-0"
                    aria-label="Send message"
                  >
                    <Send size={15} />
                  </button>
                </form>
              </>
            )}
          </motion.div>
        )}
      </AnimatePresence>
    </div>
  );
}
