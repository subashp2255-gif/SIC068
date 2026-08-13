"use client";

import { useState, useEffect } from "react";
import Link from "next/link";
import { useRouter } from "next/navigation";
import { motion } from "framer-motion";
import Navbar from "@/components/navigation/Navbar";
import Footer from "@/components/layout/Footer";
import PageTransition from "@/components/animations/PageTransition";
import ScrollProgress from "@/components/animations/ScrollProgress";
import { useApp } from "@/context/AppContext";
import { mockPackages } from "@/data/packages";
import { 
  HeartHandshake, ShieldCheck, Pill, Accessibility, 
  Utensils, Hotel, Activity, PhoneCall, Users, 
  AlertTriangle, FileText, CheckCircle2, Printer, 
  ChevronRight, ArrowLeft, Sparkles, Clock, MapPin, 
  HelpCircle, Info, ExternalLink
} from "lucide-react";
import { easeQuint } from "@/lib/animations";

export default function SeniorCareGuidelinesPage() {
  const router = useRouter();
  const { setEnquireOpen, enquirePackageId } = useApp();
  const [checkedItems, setCheckedItems] = useState<Record<string, boolean>>({});

  const selectedPackage = mockPackages.find((p) => p.id === enquirePackageId);

  // Toggle checklist checkbox
  const toggleCheck = (id: string) => {
    setCheckedItems((prev) => ({ ...prev, [id]: !prev[id] }));
  };

  // Pre-fill enquiry modal with senior-care details
  const handleOpenSeniorEnquiry = (assistanceType?: string) => {
    try {
      const existingDraft = localStorage.getItem("onejourney_enquiry_draft");
      const parsed = existingDraft ? JSON.parse(existingDraft) : {};
      const updatedAssistance = assistanceType
        ? Array.from(new Set([...(parsed.assistance || []), assistanceType]))
        : parsed.assistance?.length ? parsed.assistance : ["wheelchair", "ground_floor"];

      const updated = {
        ...parsed,
        seniors: Math.max(1, parsed.seniors || 1),
        source: "senior-care-guidelines",
        assistance: updatedAssistance,
        additionalRequests: parsed.additionalRequests || "Enquired via Senior Care Guidelines page."
      };
      localStorage.setItem("onejourney_enquiry_draft", JSON.stringify(updated));
    } catch (e) {
      // Ignore storage error
    }
    setEnquireOpen(true);
  };

  return (
    <>
      <ScrollProgress />
      <Navbar />
      <PageTransition>
        <main className="w-full min-h-screen bg-[#FDFBF7] text-slate-800 pb-20">
          
          {/* Breadcrumbs & Header Bar */}
          <div className="bg-[#041F35] text-white border-b border-slate-800 py-3 px-4 sm:px-8 select-none">
            <div className="max-w-container-max mx-auto flex flex-wrap justify-between items-center text-xs gap-3">
              <div className="flex items-center gap-2 text-slate-300">
                <Link href="/" className="hover:text-[#E8A63B] transition-colors">Home</Link>
                <ChevronRight size={12} className="text-slate-500" />
                <span className="text-[#E8A63B] font-bold">Senior Citizen Care Guidelines</span>
              </div>

              <button
                onClick={() => router.back()}
                className="flex items-center gap-1.5 px-3 py-1 rounded-lg bg-white/10 hover:bg-white/20 text-white font-bold transition-all cursor-pointer"
              >
                <ArrowLeft size={14} />
                <span>Back to Previous Page</span>
              </button>
            </div>
          </div>

          {/* Hero Section */}
          <section className="bg-gradient-to-b from-[#041F35] to-[#0A2E4D] text-white py-12 sm:py-16 px-4 sm:px-8 relative overflow-hidden select-none">
            <div className="absolute right-0 top-0 w-96 h-96 bg-[#E8A63B]/10 rounded-full blur-3xl pointer-events-none" />
            <div className="max-w-4xl mx-auto text-center space-y-5 relative z-10">
              
              <div className="inline-flex items-center gap-2 px-3.5 py-1.5 rounded-full bg-[#E8A63B]/15 border border-[#E8A63B]/30 backdrop-blur-sm text-[#E8A63B] text-xs font-bold uppercase tracking-wider mx-auto">
                <HeartHandshake size={16} />
                <span>Senior Pilgrim Safety & Comfort</span>
              </div>

              <h1 className="text-3xl sm:text-4xl md:text-5xl font-extrabold font-display leading-tight text-white tracking-tight">
                Senior Citizen Care Guidelines
              </h1>

              <p className="text-base sm:text-xl text-[#F6C667] font-semibold max-w-2xl mx-auto leading-relaxed">
                A safer, more comfortable and thoughtfully supported pilgrimage for every senior traveller.
              </p>

              <p className="text-xs sm:text-sm text-slate-300 max-w-xl mx-auto leading-relaxed">
                Please review these guidelines with your family and medical professional before beginning your sacred journey.
              </p>

              <div className="pt-4 flex flex-wrap justify-center gap-3">
                <button
                  onClick={() => handleOpenSeniorEnquiry()}
                  className="px-6 py-3.5 bg-[#E8A63B] hover:bg-[#d6952a] text-[#041F35] font-bold text-xs sm:text-sm rounded-xl shadow-lg transition-all cursor-pointer flex items-center gap-2"
                >
                  <Sparkles size={16} />
                  <span>Enquire About Assistance</span>
                </button>
                <button
                  onClick={() => window.print()}
                  className="px-6 py-3.5 bg-white/10 hover:bg-white/20 border border-white/20 text-white font-bold text-xs sm:text-sm rounded-xl backdrop-blur-md transition-all cursor-pointer flex items-center gap-2"
                >
                  <Printer size={16} />
                  <span>Print Guidelines</span>
                </button>
              </div>

            </div>
          </section>

          {/* Main Content Area */}
          <div className="max-w-4xl mx-auto px-4 sm:px-6 pt-10 space-y-12 text-left">

            {/* Section 1: Pre-travel medical checklist */}
            <section id="checklist" className="bg-white border border-slate-200 rounded-2xl p-6 sm:p-8 shadow-xs space-y-6">
              <div className="flex items-center gap-3 border-b border-slate-100 pb-4">
                <div className="w-10 h-10 rounded-xl bg-amber-50 text-[#E8A63B] flex items-center justify-center font-bold text-lg">
                  <CheckCircle2 size={24} />
                </div>
                <div>
                  <h2 className="text-xl font-bold text-[#0B3A63]">Before You Begin Your Journey</h2>
                  <p className="text-xs text-slate-500 font-medium">Pre-travel personal health readiness checklist.</p>
                </div>
              </div>

              <div className="space-y-3">
                {[
                  { id: "c1", title: "Medical Consultation", desc: "Consult a qualified medical professional before travelling to evaluate health readiness." },
                  { id: "c2", title: "Evaluate Trip Demands", desc: "Discuss destination altitude, climate, walking distances, and daily journey duration with your doctor." },
                  { id: "c3", title: "Complete Health Checks", desc: "Complete any recommended health evaluations, blood tests, or cardiac checks prior to departure." },
                  { id: "c4", title: "Carry Medical Records", desc: "Carry recent medical records, ECG copies, doctor certificates, and active prescriptions." },
                  { id: "c5", title: "Record Emergency Details", desc: "Keep a written log of allergies, existing health conditions, blood group, and emergency contacts." },
                  { id: "c6", title: "Companion Requirements", desc: "Confirm whether the senior traveller requires a family companion or dedicated caregiver." },
                  { id: "c7", title: "Verify Package Support", desc: "Verify that required mobility support (wheelchairs/ground-floor stays) is available for the selected package." },
                  { id: "c8", title: "Inform Travel Team Early", desc: "Inform the travel coordinator about important assistance needs in advance." },
                  { id: "c9", title: "Personal Support Gear", desc: "Carry suitable cushioned walking shoes, weather protection (shawls/caps), and personal walking sticks." }
                ].map((item) => (
                  <label
                    key={item.id}
                    onClick={() => toggleCheck(item.id)}
                    className={`flex items-start gap-3.5 p-3.5 rounded-xl border transition-all cursor-pointer select-none ${
                      checkedItems[item.id] ? "bg-amber-50/60 border-[#E8A63B]" : "bg-slate-50/80 border-slate-200 hover:bg-slate-100/60"
                    }`}
                  >
                    <input
                      type="checkbox"
                      checked={!!checkedItems[item.id]}
                      onChange={() => {}}
                      className="mt-1 w-4 h-4 rounded text-primary focus:ring-primary border-slate-300"
                    />
                    <div className="min-w-0 flex-1">
                      <h4 className="text-xs font-bold text-slate-800">{item.title}</h4>
                      <p className="text-[11px] text-slate-600 leading-relaxed mt-0.5">{item.desc}</p>
                    </div>
                  </label>
                ))}
              </div>

              <div className="bg-slate-50 border border-slate-200 rounded-xl p-3.5 text-xs text-slate-600 flex items-start gap-2.5">
                <Info size={16} className="text-[#0B3A63] shrink-0 mt-0.5" />
                <p>
                  <span className="font-bold">Please note:</span> Checking items on this website is strictly for personal preparation and family planning. It does not represent formal medical clearance.
                </p>
              </div>
            </section>

            {/* Section 2: Medicines and prescription guidance */}
            <section id="medicines" className="bg-white border border-slate-200 rounded-2xl p-6 sm:p-8 shadow-xs space-y-6">
              <div className="flex items-center gap-3 border-b border-slate-100 pb-4">
                <div className="w-10 h-10 rounded-xl bg-blue-50 text-[#0B3A63] flex items-center justify-center font-bold text-lg">
                  <Pill size={24} />
                </div>
                <div>
                  <h2 className="text-xl font-bold text-[#0B3A63]">Medicines & Prescription Guidance</h2>
                  <p className="text-xs text-slate-500 font-medium">Safe handling and storage of personal medication.</p>
                </div>
              </div>

              <div className="grid grid-cols-1 sm:grid-cols-2 gap-4 text-xs">
                <div className="bg-slate-50 p-4 rounded-xl border border-slate-200 space-y-1.5">
                  <h4 className="font-bold text-[#0B3A63] flex items-center gap-1.5">
                    <CheckCircle2 size={14} className="text-emerald-600" /> Reserve Medicine Supply
                  </h4>
                  <p className="text-slate-600 leading-relaxed">
                    Carry enough regular medication for the entire journey, plus a 4-to-5 day reserve supply in case of travel delays.
                  </p>
                </div>

                <div className="bg-slate-50 p-4 rounded-xl border border-slate-200 space-y-1.5">
                  <h4 className="font-bold text-[#0B3A63] flex items-center gap-1.5">
                    <CheckCircle2 size={14} className="text-emerald-600" /> Original Packets & Labeling
                  </h4>
                  <p className="text-slate-600 leading-relaxed">
                    Keep all medicines in original labeled blister packs or bottles with doctor instructions clearly visible.
                  </p>
                </div>

                <div className="bg-slate-50 p-4 rounded-xl border border-slate-200 space-y-1.5">
                  <h4 className="font-bold text-[#0B3A63] flex items-center gap-1.5">
                    <CheckCircle2 size={14} className="text-emerald-600" /> Hand Luggage Storage
                  </h4>
                  <p className="text-slate-600 leading-relaxed">
                    Always carry essential daily medication in handbag or daypack—never store critical medicines in checked luggage.
                  </p>
                </div>

                <div className="bg-slate-50 p-4 rounded-xl border border-slate-200 space-y-1.5">
                  <h4 className="font-bold text-[#0B3A63] flex items-center gap-1.5">
                    <CheckCircle2 size={14} className="text-emerald-600" /> Doctor Contact & List
                  </h4>
                  <p className="text-slate-600 leading-relaxed">
                    Carry a written list of exact chemical names, dosages, known drug allergies, and your prescribing doctor&apos;s phone number.
                  </p>
                </div>
              </div>

              {/* Highlighted Warning Note */}
              <div className="bg-amber-50/80 border border-[#E8A63B] rounded-xl p-4 text-xs text-[#041F35] font-semibold flex items-center gap-3">
                <AlertTriangle size={20} className="text-[#E8A63B] shrink-0" />
                <p>
                  <span className="font-bold uppercase tracking-wider block text-[10px] text-amber-800">Important Responsibility Note</span>
                  Our tour coordinators and guides cannot prescribe medicines, administer injections, or alter your medical treatment plan under any circumstances.
                </p>
              </div>
            </section>

            {/* Section 3: Mobility and wheelchair assistance */}
            <section id="mobility" className="bg-white border border-slate-200 rounded-2xl p-6 sm:p-8 shadow-xs space-y-6">
              <div className="flex items-center gap-3 border-b border-slate-100 pb-4">
                <div className="w-10 h-10 rounded-xl bg-amber-50 text-[#E8A63B] flex items-center justify-center font-bold text-lg">
                  <Accessibility size={24} />
                </div>
                <div>
                  <h2 className="text-xl font-bold text-[#0B3A63]">Mobility & Wheelchair Assistance</h2>
                  <p className="text-xs text-slate-500 font-medium">Assistance coordination for senior pilgrims.</p>
                </div>
              </div>

              <div className="space-y-3 text-xs text-slate-600 leading-relaxed">
                <p>
                  We coordinate mobility assistance tailored for senior pilgrims to reduce physical exertion during yatra tours:
                </p>

                <ul className="grid grid-cols-1 sm:grid-cols-2 gap-2.5 font-semibold text-[#0B3A63]">
                  <li className="bg-slate-50 p-3 rounded-xl border border-slate-200 flex items-center gap-2">
                    <span className="w-2 h-2 rounded-full bg-[#E8A63B]" /> Wheelchair booking & push-assistance
                  </li>
                  <li className="bg-slate-50 p-3 rounded-xl border border-slate-200 flex items-center gap-2">
                    <span className="w-2 h-2 rounded-full bg-[#E8A63B]" /> Battery-operated cart coordination
                  </li>
                  <li className="bg-slate-50 p-3 rounded-xl border border-slate-200 flex items-center gap-2">
                    <span className="w-2 h-2 rounded-full bg-[#E8A63B]" /> Ground-floor or elevator room priority
                  </li>
                  <li className="bg-slate-50 p-3 rounded-xl border border-slate-200 flex items-center gap-2">
                    <span className="w-2 h-2 rounded-full bg-[#E8A63B]" /> Slow-paced walking itineraries with rest stops
                  </li>
                </ul>

                <div className="bg-slate-100 border border-slate-200 rounded-xl p-4 text-xs text-slate-700 font-medium space-y-1">
                  <span className="font-bold text-[#0B3A63] block">Infrastructure & Local Authority Rule Notice:</span>
                  <p>
                    Mobility services depend on destination infrastructure, local-authority rules, availability, terrain, crowd conditions and the selected package. Requests must be made before booking confirmation.
                  </p>
                </div>
              </div>

              <div className="pt-2">
                <button
                  onClick={() => handleOpenSeniorEnquiry("wheelchair")}
                  className="px-6 py-3 bg-[#0B3A63] hover:bg-[#124d80] text-white font-bold text-xs rounded-xl transition-all cursor-pointer flex items-center gap-2"
                >
                  <Accessibility size={16} className="text-[#E8A63B]" />
                  <span>Request Mobility Assistance</span>
                </button>
              </div>
            </section>

            {/* Section 4: Zero-hassle/VIP darshan conditions */}
            <section id="darshan" className="bg-white border border-slate-200 rounded-2xl p-6 sm:p-8 shadow-xs space-y-6">
              <div className="flex items-center gap-3 border-b border-slate-100 pb-4">
                <div className="w-10 h-10 rounded-xl bg-emerald-50 text-emerald-600 flex items-center justify-center font-bold text-lg">
                  <Sparkles size={24} />
                </div>
                <div>
                  <h2 className="text-xl font-bold text-[#0B3A63]">Darshan Assistance Conditions</h2>
                  <p className="text-xs text-slate-500 font-medium">Transparent rules regarding special temple darshan access.</p>
                </div>
              </div>

              <div className="space-y-4 text-xs text-slate-600 leading-relaxed">
                <div className="bg-emerald-50/60 border border-emerald-200 rounded-xl p-4 text-emerald-950 font-semibold">
                  Assisted darshan planning designed to reduce avoidable waiting where official facilities permit.
                </div>

                <div className="space-y-2">
                  <h4 className="font-bold text-[#0B3A63]">Key Darshan Operational Rules:</h4>
                  <ul className="list-disc pl-5 space-y-1.5">
                    <li>Darshan assistance includes guided route navigation, pre-arranged ticket slots, queue coordination, or permitted senior priority access.</li>
                    <li>Special access availability varies strictly by individual temple administration policies and festival dates.</li>
                    <li>Temple entry, queue speeds, and security checkpoints are governed solely by temple trusts and local police authorities.</li>
                    <li>Unexpected festival rushes, VIP security movements, or temple rituals may cause temporary delays despite pre-planning.</li>
                    <li>Shorter queue arrangements must not be interpreted as zero waiting time.</li>
                    <li>Any official temple ticket charges or special entry fees are disclosed transparently before booking.</li>
                  </ul>
                </div>
              </div>
            </section>

            {/* Section 5: Food, hydration and rest */}
            <section id="nutrition" className="bg-white border border-slate-200 rounded-2xl p-6 sm:p-8 shadow-xs space-y-6">
              <div className="flex items-center gap-3 border-b border-slate-100 pb-4">
                <div className="w-10 h-10 rounded-xl bg-[#FFF8E8] text-[#E8A63B] flex items-center justify-center font-bold text-lg">
                  <Utensils size={24} />
                </div>
                <div>
                  <h2 className="text-xl font-bold text-[#0B3A63]">Food, Hydration & Rest</h2>
                  <p className="text-xs text-slate-500 font-medium">Maintaining energy and wellness during temple yatras.</p>
                </div>
              </div>

              <div className="grid grid-cols-1 sm:grid-cols-2 gap-4 text-xs text-slate-600">
                <div className="border border-slate-200 rounded-xl p-4 bg-slate-50/60 space-y-1">
                  <h4 className="font-bold text-[#0B3A63]">Safe Hydration</h4>
                  <p>Drink sealed bottled or purified safe water regularly. Avoid unhygienic local tap water or ice during transit.</p>
                </div>

                <div className="border border-slate-200 rounded-xl p-4 bg-slate-50/60 space-y-1">
                  <h4 className="font-bold text-[#0B3A63]">Pure Veg & Satvik Meals</h4>
                  <p>Hygienic vegetarian meals are arranged. Inform our coordinator in advance regarding diabetic or low-spice preferences.</p>
                </div>

                <div className="border border-slate-200 rounded-xl p-4 bg-slate-50/60 space-y-1">
                  <h4 className="font-bold text-[#0B3A63]">Light Meals Before Walks</h4>
                  <p>Opt for lighter meals prior to scheduled temple hill climbs or long queue walks to prevent indigestion or fatigue.</p>
                </div>

                <div className="border border-slate-200 rounded-xl p-4 bg-slate-50/60 space-y-1">
                  <h4 className="font-bold text-[#0B3A63]">Scheduled Rest Stops</h4>
                  <p>Make full use of planned itinerary rest breaks. Inform the tour guide immediately if a senior traveller feels fatigued.</p>
                </div>
              </div>
            </section>

            {/* Section 6: Accommodation accessibility */}
            <section id="accommodation" className="bg-white border border-slate-200 rounded-2xl p-6 sm:p-8 shadow-xs space-y-6">
              <div className="flex items-center gap-3 border-b border-slate-100 pb-4">
                <div className="w-10 h-10 rounded-xl bg-purple-50 text-purple-700 flex items-center justify-center font-bold text-lg">
                  <Hotel size={24} />
                </div>
                <div>
                  <h2 className="text-xl font-bold text-[#0B3A63]">Accommodation Accessibility</h2>
                  <p className="text-xs text-slate-500 font-medium">Hotel selection and room accessibility standards.</p>
                </div>
              </div>

              <div className="space-y-4 text-xs text-slate-600 leading-relaxed">
                <p>
                  When curating senior-friendly packages, we evaluate hotel properties based on key accessibility factors:
                </p>

                <div className="grid grid-cols-2 sm:grid-cols-4 gap-3 text-center">
                  <div className="p-3 bg-slate-50 border border-slate-200 rounded-xl font-bold text-[#0B3A63]">Elevator / Lift Access</div>
                  <div className="p-3 bg-slate-50 border border-slate-200 rounded-xl font-bold text-[#0B3A63]">Ground-Floor Rooms</div>
                  <div className="p-3 bg-slate-50 border border-slate-200 rounded-xl font-bold text-[#0B3A63]">Bathroom Grab-Rails</div>
                  <div className="p-3 bg-slate-50 border border-slate-200 rounded-xl font-bold text-[#0B3A63]">Minimal Stair Closes</div>
                </div>

                {/* Explicit Property Category Warning */}
                <div className="bg-amber-50 border border-[#E8A63B] rounded-xl p-4 text-xs text-amber-950 font-medium flex items-start gap-3">
                  <AlertTriangle size={18} className="text-[#E8A63B] shrink-0 mt-0.5" />
                  <p>
                    <span className="font-bold">Accommodation Feature Disclaimer:</span> Accessibility features vary between hotels, dharamshalas and guest houses. Requested facilities are subject to written confirmation and should not be assumed from the property category alone.
                  </p>
                </div>
              </div>
            </section>

            {/* Section 7: Medical-support procedure */}
            <section id="emergency-procedure" className="bg-white border border-slate-200 rounded-2xl p-6 sm:p-8 shadow-xs space-y-6">
              <div className="flex items-center gap-3 border-b border-slate-100 pb-4">
                <div className="w-10 h-10 rounded-xl bg-red-50 text-red-600 flex items-center justify-center font-bold text-lg">
                  <Activity size={24} />
                </div>
                <div>
                  <h2 className="text-xl font-bold text-[#0B3A63]">On-Call Medical-Support Procedure</h2>
                  <p className="text-xs text-slate-500 font-medium">Standard emergency response protocol during yatra trips.</p>
                </div>
              </div>

              {/* Step-by-step emergency flow diagram */}
              <div className="bg-slate-50 border border-slate-200 rounded-2xl p-5 space-y-4">
                <h4 className="text-xs font-bold text-[#0B3A63] uppercase tracking-wider text-center">Emergency Escalation Flow</h4>
                
                <div className="grid grid-cols-1 md:grid-cols-5 gap-2 text-center text-xs">
                  <div className="bg-white p-3 rounded-xl border border-slate-200 font-bold text-slate-800 shadow-2xs">
                    1. Discomfort Reported
                  </div>
                  <div className="hidden md:flex items-center justify-center text-slate-400">→</div>
                  <div className="bg-white p-3 rounded-xl border border-slate-200 font-bold text-slate-800 shadow-2xs">
                    2. Immediate First-Aid & Assessment
                  </div>
                  <div className="hidden md:flex items-center justify-center text-slate-400">→</div>
                  <div className="bg-white p-3 rounded-xl border border-slate-200 font-bold text-slate-800 shadow-2xs">
                    3. Local Hospital / Ambulance Contact
                  </div>
                </div>

                <div className="grid grid-cols-1 md:grid-cols-5 gap-2 text-center text-xs pt-2">
                  <div className="bg-white p-3 rounded-xl border border-slate-200 font-bold text-slate-800 shadow-2xs">
                    4. Family Contact Informed
                  </div>
                  <div className="hidden md:flex items-center justify-center text-slate-400">→</div>
                  <div className="bg-white p-3 rounded-xl border border-slate-200 font-bold text-slate-800 shadow-2xs">
                    5. Incident Logged
                  </div>
                  <div className="hidden md:flex items-center justify-center text-slate-400">→</div>
                  <div className="bg-white p-3 rounded-xl border border-slate-200 font-bold text-slate-800 shadow-2xs">
                    6. Itinerary Adjusted
                  </div>
                </div>
              </div>

              <div className="text-xs text-slate-600 space-y-2 leading-relaxed">
                <p>
                  Tour coordinators carry standard first-aid kits and keep local emergency contacts accessible. Guides are trained in basic assistance procedures, but are not substitutes for doctors or nurses.
                </p>
                <p className="text-[#0B3A63] font-semibold">
                  * Hospital treatment costs, specialist doctor consultation fees, ambulance charges, and additional emergency accommodation or return travel costs remain separately payable by the traveller or their insurance provider.
                </p>
              </div>
            </section>

            {/* Section 8: Emergency contact information */}
            <section id="emergency-info" className="bg-white border border-slate-200 rounded-2xl p-6 sm:p-8 shadow-xs space-y-6">
              <div className="flex items-center justify-between border-b border-slate-100 pb-4">
                <div className="flex items-center gap-3">
                  <div className="w-10 h-10 rounded-xl bg-blue-50 text-[#0B3A63] flex items-center justify-center font-bold text-lg">
                    <PhoneCall size={24} />
                  </div>
                  <div>
                    <h2 className="text-xl font-bold text-[#0B3A63]">Emergency Contact Information</h2>
                    <p className="text-xs text-slate-500 font-medium">Key assistance contacts for senior travellers.</p>
                  </div>
                </div>

                <button
                  onClick={() => window.print()}
                  className="px-3 py-1.5 bg-slate-100 hover:bg-slate-200 text-[#0B3A63] text-xs font-bold rounded-lg transition-all cursor-pointer hidden sm:flex items-center gap-1.5"
                >
                  <Printer size={14} />
                  <span>Print Card</span>
                </button>
              </div>

              <div className="bg-[#041F35] text-white rounded-2xl p-5 sm:p-6 space-y-4 shadow-md select-none">
                <div className="grid grid-cols-1 sm:grid-cols-2 gap-4 text-xs">
                  <div className="border-b sm:border-b-0 sm:border-r border-slate-700 pb-3 sm:pb-0 sm:pr-4 space-y-1">
                    <span className="text-[10px] font-bold text-[#E8A63B] uppercase tracking-wider block">OneJourney Helpline (24/7)</span>
                    <p className="text-base font-extrabold text-white">+91 1800-745-4746</p>
                    <p className="text-slate-400 text-[11px]">Toll-free customer & yatra assistance line</p>
                  </div>

                  <div className="space-y-1">
                    <span className="text-[10px] font-bold text-[#E8A63B] uppercase tracking-wider block">National Emergency Ambulance</span>
                    <p className="text-base font-extrabold text-white">108 / 112</p>
                    <p className="text-slate-400 text-[11px]">Govt. Ambulance & Medical Emergency Service</p>
                  </div>
                </div>

                <div className="border-t border-slate-700 pt-4 grid grid-cols-1 sm:grid-cols-3 gap-3 text-xs text-slate-300">
                  <div>
                    <span className="text-[10px] font-bold text-slate-400 block">Assigned Tour Coordinator</span>
                    <span className="font-bold text-white">Provided after booking confirmation</span>
                  </div>

                  <div>
                    <span className="text-[10px] font-bold text-slate-400 block">Nearest Planned Medical Facility</span>
                    <span className="font-bold text-white">Provided after booking confirmation</span>
                  </div>

                  <div>
                    <span className="text-[10px] font-bold text-slate-400 block">Booking Reference</span>
                    <span className="font-bold text-white">Provided after booking confirmation</span>
                  </div>
                </div>
              </div>
            </section>

            {/* Section 9: Guidance for accompanying family members */}
            <section id="family-guidance" className="bg-white border border-slate-200 rounded-2xl p-6 sm:p-8 shadow-xs space-y-6">
              <div className="flex items-center gap-3 border-b border-slate-100 pb-4">
                <div className="w-10 h-10 rounded-xl bg-amber-50 text-[#E8A63B] flex items-center justify-center font-bold text-lg">
                  <Users size={24} />
                </div>
                <div>
                  <h2 className="text-xl font-bold text-[#0B3A63]">Guidance for Accompanying Family Members</h2>
                  <p className="text-xs text-slate-500 font-medium">Tips for family members caring for senior pilgrims.</p>
                </div>
              </div>

              <ul className="space-y-2.5 text-xs text-slate-600">
                <li className="flex items-start gap-2.5 p-3 rounded-xl bg-slate-50 border border-slate-200">
                  <CheckCircle2 size={16} className="text-[#E8A63B] shrink-0 mt-0.5" />
                  <span>Review daily walking distances, staircases, and altitude changes together with the senior traveller before departure.</span>
                </li>
                <li className="flex items-start gap-2.5 p-3 rounded-xl bg-slate-50 border border-slate-200">
                  <CheckCircle2 size={16} className="text-[#E8A63B] shrink-0 mt-0.5" />
                  <span>Keep daily medicines, doctor prescriptions, and medical insurance details easily accessible in your personal daypack.</span>
                </li>
                <li className="flex items-start gap-2.5 p-3 rounded-xl bg-slate-50 border border-slate-200">
                  <CheckCircle2 size={16} className="text-[#E8A63B] shrink-0 mt-0.5" />
                  <span>Regularly observe the senior traveller for subtle signs of fatigue, dehydration, shortness of breath, or joint pain.</span>
                </li>
                <li className="flex items-start gap-2.5 p-3 rounded-xl bg-slate-50 border border-slate-200">
                  <CheckCircle2 size={16} className="text-[#E8A63B] shrink-0 mt-0.5" />
                  <span>Do not urge senior travellers to attempt demanding Darshan climbs or activities if they feel unwell.</span>
                </li>
                <li className="flex items-start gap-2.5 p-3 rounded-xl bg-slate-50 border border-slate-200">
                  <CheckCircle2 size={16} className="text-[#E8A63B] shrink-0 mt-0.5" />
                  <span>Inform the tour guide immediately if you need to pause or separate temporarily from the main group.</span>
                </li>
              </ul>
            </section>

            {/* Section 10: Package-specific limitations and availability */}
            <section id="limitations" className="bg-white border border-slate-200 rounded-2xl p-6 sm:p-8 shadow-xs space-y-6">
              <div className="flex items-center gap-3 border-b border-slate-100 pb-4">
                <div className="w-10 h-10 rounded-xl bg-slate-100 text-slate-700 flex items-center justify-center font-bold text-lg">
                  <FileText size={24} />
                </div>
                <div>
                  <h2 className="text-xl font-bold text-[#0B3A63]">Package Limitations & Local Infrastructure</h2>
                  <p className="text-xs text-slate-500 font-medium">Variables affecting service availability across pilgrimage circuits.</p>
                </div>
              </div>

              <p className="text-xs text-slate-600 leading-relaxed">
                Facilities, wheelchair availability, elevator access, and vehicle drop distances vary depending on destination terrain, local municipal regulations, weather conditions, festival crowds, and local hotel infrastructure.
              </p>

              {/* Package-specific panel if package preselected */}
              {selectedPackage ? (
                <div className="bg-amber-50/60 border border-[#E8A63B] rounded-2xl p-5 space-y-3 select-none">
                  <div className="flex justify-between items-start">
                    <div>
                      <span className="text-[10px] font-bold text-[#E8A63B] uppercase tracking-wider block">Selected Package Assistance Profile</span>
                      <h3 className="font-bold text-base text-[#0B3A63]">{selectedPackage.title}</h3>
                      <p className="text-xs text-slate-500">{selectedPackage.location} · {selectedPackage.durationLabel}</p>
                    </div>
                    <span className="bg-[#0B3A63] text-white text-[10px] font-bold px-2.5 py-1 rounded-full">
                      Verified Data
                    </span>
                  </div>

                  <div className="grid grid-cols-1 sm:grid-cols-3 gap-3 text-xs pt-2">
                    <div className="bg-white p-3 rounded-xl border border-slate-200">
                      <span className="text-slate-400 block text-[10px] font-bold">Physical Demand</span>
                      <span className="font-bold text-[#0B3A63]">Moderate / Senior-Friendly</span>
                    </div>

                    <div className="bg-white p-3 rounded-xl border border-slate-200">
                      <span className="text-slate-400 block text-[10px] font-bold">Wheelchair Support</span>
                      <span className="font-bold text-[#0B3A63]">Available on Request</span>
                    </div>

                    <div className="bg-white p-3 rounded-xl border border-slate-200">
                      <span className="text-slate-400 block text-[10px] font-bold">Meal Standard</span>
                      <span className="font-bold text-[#0B3A63]">Pure Veg / Satvik</span>
                    </div>
                  </div>
                </div>
              ) : (
                <div className="bg-slate-50 border border-slate-200 rounded-xl p-4 text-xs text-slate-600 flex items-center justify-between">
                  <span>Contact our journey planner to confirm assistance details for your preferred package.</span>
                  <button
                    onClick={() => handleOpenSeniorEnquiry()}
                    className="px-4 py-2 bg-[#0B3A63] hover:bg-[#124d80] text-white font-bold text-xs rounded-lg transition-all cursor-pointer shrink-0 ml-3"
                  >
                    Check Package Support
                  </button>
                </div>
              )}
            </section>

            {/* Section 11: Medical disclaimer */}
            <section id="disclaimer" className="bg-[#FFF9F0] border border-[#E8A63B]/60 rounded-2xl p-6 sm:p-8 space-y-4 text-left select-none">
              <div className="flex items-center gap-2.5 text-[#0B3A63]">
                <AlertTriangle size={22} className="text-[#E8A63B] shrink-0" />
                <h3 className="text-lg font-bold">Medical Disclaimer</h3>
              </div>

              <div className="text-xs text-slate-700 space-y-3 leading-relaxed">
                <p>
                  The information on this page is provided for general travel preparation and does not constitute medical advice, diagnosis, treatment or medical clearance. Senior travellers and people with existing health conditions should consult a qualified medical professional before travelling.
                </p>
                <p>
                  Pilgrimage — One Journey, its coordinators and guides are not substitutes for licensed healthcare professionals or emergency medical services. The availability of mobility assistance, accessible accommodation, special darshan arrangements and nearby medical facilities depends on the selected package, destination, local infrastructure, official regulations and third-party providers.
                </p>
                <p>
                  Travellers and their families are responsible for providing accurate health and assistance information before booking and for carrying prescribed medicines, medical documents, insurance details and emergency contacts.
                </p>
              </div>
            </section>

            {/* Final Call To Action Section */}
            <section className="bg-gradient-to-br from-[#041F35] to-[#0A2E4D] text-white rounded-3xl p-8 sm:p-12 text-center space-y-6 shadow-xl select-none">
              <div className="w-14 h-14 bg-[#E8A63B]/20 text-[#E8A63B] rounded-2xl flex items-center justify-center mx-auto">
                <HeartHandshake size={32} />
              </div>

              <div className="space-y-2 max-w-2xl mx-auto">
                <h3 className="text-2xl sm:text-3xl font-bold font-display text-white">
                  Need help planning a comfortable pilgrimage?
                </h3>
                <p className="text-xs sm:text-sm text-slate-300 leading-relaxed">
                  Tell us about your destination, mobility requirements, health-related travel needs and preferred dates. Our journey team will help you identify a suitable package.
                </p>
              </div>

              <div className="flex flex-col sm:flex-row gap-4 justify-center pt-2 max-w-md mx-auto">
                <button
                  onClick={() => handleOpenSeniorEnquiry()}
                  className="w-full sm:w-auto px-6 py-3.5 bg-[#E8A63B] hover:bg-[#d6952a] text-[#041F35] font-bold text-xs sm:text-sm rounded-xl shadow-lg transition-all cursor-pointer flex items-center justify-center gap-2"
                >
                  <Sparkles size={16} />
                  <span>Enquire About Senior-Friendly Packages</span>
                </button>

                <Link href="/packages?category=pilgrimage" className="w-full sm:w-auto">
                  <button className="w-full sm:w-auto px-6 py-3.5 bg-white/10 hover:bg-white/20 border border-white/20 text-white font-bold text-xs sm:text-sm rounded-xl backdrop-blur-md transition-all cursor-pointer flex items-center justify-center gap-2">
                    <span>Explore Pilgrimage Packages</span>
                  </button>
                </Link>
              </div>
            </section>

          </div>

        </main>
      </PageTransition>
      <Footer />
    </>
  );
}
