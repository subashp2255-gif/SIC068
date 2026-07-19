"use client";

import { useState, useEffect, useRef } from "react";
import Navbar from "@/components/navigation/Navbar";
import Footer from "@/components/layout/Footer";
import PageTransition from "@/components/animations/PageTransition";
import ScrollProgress from "@/components/animations/ScrollProgress";
import { FadeIn, FadeUp, ScaleIn, StaggerContainer, StaggerItem } from "@/components/animations/Reveals";
import PackageCard from "@/components/cards/PackageCard";
import { mockPackages } from "@/data/packages";
import { useApp } from "@/context/AppContext";
import { easeQuint } from "@/lib/animations";
import { Sparkles, MessageSquare, ArrowRight, RotateCcw, Save, ShieldAlert, BadgeInfo } from "lucide-react";
import { motion, AnimatePresence } from "framer-motion";
import { toast } from "sonner";

interface Message {
  id: string;
  sender: "bot" | "user";
  text: string;
  options?: { label: string; value: any }[];
  field?: string;
}

export default function AITripPlanner() {
  const { setEnquireOpen, setEnquirePackageId } = useApp();
  const [messages, setMessages] = useState<Message[]>([]);
  const [isTyping, setIsTyping] = useState(false);
  const [step, setStep] = useState(1);
  const [isLoading, setIsLoading] = useState(false);
  const [showResults, setShowResults] = useState(false);
  const chatEndRef = useRef<HTMLDivElement>(null);

  // User responses
  const [preferences, setPreferences] = useState({
    travelers: "",
    region: "",
    budget: "",
    needs: [] as string[],
  });

  // Welcome Bot message
  useEffect(() => {
    setMessages([
      {
        id: "msg-1",
        sender: "bot",
        text: "Pranam! I am your DharmaYatra AI guide. I will help you plan a peaceful, comfortable sacred journey. Who will be travelling on this sacred trip?",
        options: [
          { label: "Elders & Family (Multigenerational)", value: "Family with Seniors" },
          { label: "Seniors Only (60+ group)", value: "Seniors Group" },
          { label: "Family / Couples", value: "Family / Couples" },
          { label: "Solo Devotee", value: "Solo" }
        ],
        field: "travelers"
      }
    ]);
  }, []);

  // Auto-scroll chat window
  useEffect(() => {
    chatEndRef.current?.scrollIntoView({ behavior: "smooth" });
  }, [messages, isTyping]);

  const handleOptionSelect = (option: { label: string; value: any }, field: string) => {
    // Add user response to message log
    const userMsg: Message = {
      id: `user-${Date.now()}`,
      sender: "user",
      text: option.label
    };
    
    // Save response
    const updatedPrefs = { ...preferences, [field]: option.value };
    setPreferences(updatedPrefs);

    setMessages((prev) => [...prev, userMsg]);
    setIsTyping(true);

    // Formulate bot response after delay
    setTimeout(() => {
      setIsTyping(false);
      
      if (step === 1) {
        // Next step: Destination Region
        setMessages((prev) => [
          ...prev,
          {
            id: `bot-region`,
            sender: "bot",
            text: "Wonderful. Which sacred region of India would you like to visit?",
            options: [
              { label: "North India (Varanasi, Ayodhya, Prayagraj)", value: "North India" },
              { label: "South India (Rameswaram, Madurai, Tirupati)", value: "South India" },
              { label: "Himalayas (Char Dham, Kedarnath)", value: "Char Dham" },
              { label: "Maharashtra (Shirdi, Jyotirlinga)", value: "Maharashtra" }
            ],
            field: "region"
          }
        ]);
        setStep(2);
      } else if (step === 2) {
        // Next step: Budget Tier
        setMessages((prev) => [
          ...prev,
          {
            id: `bot-budget`,
            sender: "bot",
            text: "Understood. What is your preferred budget range per person?",
            options: [
              { label: "Premium Care (5-Star hotels, VIP Darshan, full transport, buggies)", value: "Premium" },
              { label: "Comfort Standard (Centrally located hotels, AC SUVs, guided)", value: "Comfort" },
              { label: "Budget Friendly (Ashram / 3-Star stays, standard AC buses)", value: "Budget" }
            ],
            field: "budget"
          }
        ]);
        setStep(3);
      } else if (step === 3) {
        // Next step: Mobility and Dietary needs
        setMessages((prev) => [
          ...prev,
          {
            id: `bot-needs`,
            sender: "bot",
            text: "Safety first. Please select any special assistance or meal requirements:",
            options: [
              { label: "Wheelchair Assistance / Ramp access", value: "Wheelchair" },
              { label: "Strict Vegetarian / Satvik meals (no onion/garlic)", value: "Veg Meals" },
              { label: "Ground Floor Hotel rooms only (no stairs)", value: "Ground Floor" },
              { label: "First-aid / Medical oxygen support on-board", value: "Medical Support" },
              { label: "No special requirements, we are fit", value: "None" }
            ],
            field: "needs"
          }
        ]);
        setStep(4);
      } else if (step === 4) {
        // Generate plan triggers loading shimmer
        setMessages((prev) => [
          ...prev,
          {
            id: `bot-generate`,
            sender: "bot",
            text: "Dhanyawad! I have gathered all preferences. I will now create your tailored pilgrimage plan."
          }
        ]);
        generateAIPlan();
      }
    }, 1000);
  };

  const generateAIPlan = async () => {
    setIsLoading(true);
    await new Promise((resolve) => setTimeout(resolve, 2500)); // Shimmer delay
    setIsLoading(false);
    setShowResults(true);
    toast.success("Personalized Yatra Itinerary Generated!", {
      icon: "✨"
    });
  };

  const handleRegenerate = () => {
    setShowResults(false);
    setStep(1);
    setPreferences({
      travelers: "",
      region: "",
      budget: "",
      needs: [],
    });
    setMessages([
      {
        id: "msg-1",
        sender: "bot",
        text: "Pranam! I am your DharmaYatra AI guide. I will help you plan a peaceful, comfortable sacred journey. Who will be travelling on this sacred trip?",
        options: [
          { label: "Elders & Family (Multigenerational)", value: "Family with Seniors" },
          { label: "Seniors Only (60+ group)", value: "Seniors Group" },
          { label: "Family / Couples", value: "Family / Couples" },
          { label: "Solo Devotee", value: "Solo" }
        ],
        field: "travelers"
      }
    ]);
  };

  const handleSavePlan = () => {
    localStorage.setItem("dharmayatra_ai_plan", JSON.stringify(preferences));
    toast.success("AI plan saved to your profile draft!", {
      description: "You can load this draft when contacting our support agents.",
      icon: "💾"
    });
  };

  // Filter mock packages matching the selected region to display
  const matchedPackages = mockPackages.filter((p) => {
    if (preferences.region && p.region !== preferences.region) return false;
    return true;
  }).slice(0, 3); // Pick first 3 matches

  return (
    <>
      <ScrollProgress />
      <Navbar />
      <PageTransition>
        <main className="w-full flex-grow max-w-container-max mx-auto px-margin-mobile md:px-12 py-10 flex flex-col gap-8">
          
          {/* Header */}
          <section className="flex flex-col gap-2 items-center text-center select-none">
            <span className="px-3 py-1 rounded-full bg-secondary-fixed text-on-secondary-fixed text-xs font-bold flex items-center gap-1.5 shadow-sm">
              <Sparkles size={12} className="animate-pulse" />
              INTELLIGENT ROUTING
            </span>
            <h1 className="font-display-lg-mobile text-display-lg-mobile md:font-display-lg md:text-display-lg text-primary font-bold">
              AI Devotional Trip Planner
            </h1>
            <p className="font-body-md text-body-md text-on-surface-variant max-w-2xl leading-relaxed">
              Curate a custom itinerary optimized for senior safety, minimal walking, Satvik diet, and VIP darshan gates.
            </p>
          </section>

          {/* Chat Interface and Results Screen */}
          <div className="w-full max-w-4xl mx-auto flex flex-col gap-6 select-none">
            
            {/* Chat Box */}
            <div className="bg-surface-container-lowest rounded-2xl shadow-level-1 border border-outline-variant/15 p-6 flex flex-col h-[480px] overflow-y-auto relative">
              <div className="flex-grow space-y-4 pr-2">
                {messages.map((msg) => {
                  const isBot = msg.sender === "bot";
                  return (
                    <div
                      key={msg.id}
                      className={`flex ${isBot ? "justify-start" : "justify-end"}`}
                    >
                      <div
                        className={`max-w-[75%] rounded-2xl p-4 text-left ${
                          isBot
                            ? "bg-surface-container-low text-primary rounded-tl-none font-medium border border-outline-variant/10"
                            : "bg-primary text-on-primary rounded-tr-none font-semibold"
                        }`}
                      >
                        {/* Message body text */}
                        <p className="text-[15px] leading-relaxed">{msg.text}</p>

                        {/* Stagger options buttons if present */}
                        {isBot && msg.options && !showResults && (
                          <div className="flex flex-wrap gap-2 mt-4 select-none">
                            {msg.options.map((opt) => (
                              <button
                                key={opt.label}
                                onClick={() => handleOptionSelect(opt, msg.field!)}
                                className="bg-surface-container-lowest hover:bg-secondary hover:text-on-secondary text-primary font-bold text-xs px-3.5 py-2.5 rounded-lg border border-outline-variant/30 hover:border-transparent transition-all shadow-sm cursor-pointer active:scale-95 flex items-center gap-1"
                              >
                                {opt.label} <ArrowRight size={10} />
                              </button>
                            ))}
                          </div>
                        )}
                      </div>
                    </div>
                  );
                })}

                {/* Typing status loader */}
                {isTyping && (
                  <div className="flex justify-start">
                    <div className="bg-surface-container-low text-primary rounded-2xl rounded-tl-none p-4 flex items-center gap-1.5">
                      <span className="w-2.5 h-2.5 bg-secondary rounded-full animate-bounce" />
                      <span className="w-2.5 h-2.5 bg-secondary rounded-full animate-bounce [animation-delay:0.2s]" />
                      <span className="w-2.5 h-2.5 bg-secondary rounded-full animate-bounce [animation-delay:0.4s]" />
                    </div>
                  </div>
                )}

                <div ref={chatEndRef} />
              </div>

              {/* Loader overlay during plan creation */}
              {isLoading && (
                <div className="absolute inset-0 bg-surface-container-lowest/80 backdrop-blur-sm flex flex-col items-center justify-center gap-3">
                  <div className="relative w-16 h-16 flex items-center justify-center">
                    <div className="w-full h-full border-4 border-secondary border-t-transparent rounded-full animate-spin" />
                    <Sparkles size={24} className="text-secondary absolute animate-pulse" />
                  </div>
                  <h4 className="font-headline-md text-primary font-bold mt-2">DharmaYatra AI is planning...</h4>
                  <p className="text-xs text-on-surface-variant max-w-xs text-center leading-relaxed">
                    Calculating senior pacing, pre-booking VIP gateway lanes, and selecting nearby hotels...
                  </p>
                </div>
              )}
            </div>

            {/* Generated Plan results */}
            <AnimatePresence>
              {showResults && (
                <motion.div
                  initial={{ opacity: 0, y: 30 }}
                  animate={{ opacity: 1, y: 0 }}
                  exit={{ opacity: 0, y: 30 }}
                  transition={{ duration: 0.5, ease: easeQuint }}
                  className="space-y-8 select-none"
                >
                  
                  {/* Prefs summary box */}
                  <div className="bg-surface-container-low rounded-xl p-5 flex flex-wrap gap-4 items-center justify-center border border-primary-fixed-dim/40 text-left">
                    <span className="text-sm font-bold text-primary flex items-center gap-1">
                      <BadgeInfo size={16} /> Preferences Applied:
                    </span>
                    <div className="bg-surface-container-lowest px-3 py-1.5 rounded-full border border-outline-variant text-xs font-bold text-primary flex items-center gap-1">
                      👥 {preferences.travelers}
                    </div>
                    <div className="bg-surface-container-lowest px-3 py-1.5 rounded-full border border-outline-variant text-xs font-bold text-primary flex items-center gap-1">
                      📍 {preferences.region || "North India"}
                    </div>
                    <div className="bg-surface-container-lowest px-3 py-1.5 rounded-full border border-outline-variant text-xs font-bold text-primary flex items-center gap-1">
                      💰 {preferences.budget} Budget
                    </div>
                    <button 
                      onClick={handleRegenerate}
                      className="text-secondary font-bold text-xs hover:underline flex items-center gap-1 cursor-pointer ml-3"
                    >
                      <RotateCcw size={12} /> Edit preferences
                    </button>
                  </div>

                  {/* Recommendations */}
                  <div className="space-y-4 text-left">
                    <h2 className="font-headline-lg text-primary font-bold flex items-center gap-2">
                      <Sparkles className="text-secondary animate-pulse" size={24} />
                      We Found {matchedPackages.length} Highly Suited Yatra Matches!
                    </h2>
                    
                    <div className="grid grid-cols-1 md:grid-cols-3 gap-6 pt-2">
                      {matchedPackages.map((pkg, idx) => (
                        <PackageCard key={pkg.id} pkg={pkg} index={idx} />
                      ))}
                    </div>
                  </div>

                  {/* Actions footer */}
                  <div className="flex flex-col sm:flex-row justify-center gap-4 pt-4 select-none">
                    <button
                      onClick={handleSavePlan}
                      className="bg-primary text-on-primary font-bold px-8 py-3.5 rounded-lg flex items-center justify-center gap-2 hover:bg-primary-container cursor-pointer transition-all active:scale-97 shadow-sm"
                    >
                      <Save size={18} /> Save Custom Plan
                    </button>
                    <button
                      onClick={handleRegenerate}
                      className="border-2 border-primary text-primary font-bold px-8 py-3.5 rounded-lg flex items-center justify-center gap-2 hover:bg-surface-container cursor-pointer transition-all active:scale-97"
                    >
                      <RotateCcw size={18} /> Start Over
                    </button>
                  </div>

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
