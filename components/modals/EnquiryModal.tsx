"use client";

import { useState, useEffect, useRef } from "react";
import { motion, AnimatePresence } from "framer-motion";
import { useApp } from "@/context/AppContext";
import { mockPackages } from "@/data/packages";
import { 
  X, Check, AlertCircle, Minus, Plus, 
  MapPin, Calendar, Users, HeartHandshake, 
  Phone, Mail, User, ShieldCheck, MessageSquare 
} from "lucide-react";
import { easeQuint } from "@/lib/animations";
import { toast } from "sonner";

interface PackageEnquiry {
  packageId: string;
  packageTitle: string;
  destination: string;

  travelPreference: "flexible-month" | "exact-dates" | "undecided";
  preferredMonth?: string;
  departureDate?: string;
  returnDate?: string;
  departureCity: string;
  dateFlexibility: string;

  adults: number;
  seniors: number;
  children: number;
  infants: number;

  assistance: string[];

  fullName: string;
  phoneCountryCode: string;
  phone: string;
  email?: string;
  preferredContactMethod: "phone" | "whatsapp" | "email";
  preferredContactTime: string;
  additionalRequests?: string;

  contactConsent: boolean;
  whatsappUpdates: boolean;
}

const INITIAL_FORM_STATE: PackageEnquiry = {
  packageId: "",
  packageTitle: "",
  destination: "",
  travelPreference: "flexible-month",
  preferredMonth: "",
  departureDate: "",
  returnDate: "",
  departureCity: "",
  dateFlexibility: "± 3 days flexible",
  adults: 2,
  seniors: 0,
  children: 0,
  infants: 0,
  assistance: [],
  fullName: "",
  phoneCountryCode: "+91",
  phone: "",
  email: "",
  preferredContactMethod: "whatsapp",
  preferredContactTime: "Any time",
  additionalRequests: "",
  contactConsent: false,
  whatsappUpdates: false
};

const SUGGESTED_CITIES = [
  "Coimbatore",
  "Chennai",
  "Bangalore",
  "Mumbai",
  "Delhi",
  "Hyderabad",
  "Kochi",
  "Madurai"
];

const ASSISTANCE_OPTIONS = [
  { id: "wheelchair", label: "Wheelchair access", desc: "Prioritize accessible vehicles and hotel stays.", icon: "accessible" },
  { id: "ground_floor", label: "Ground-floor room", desc: "Ensure stays require minimal stair climbing.", icon: "home" },
  { id: "lift_access", label: "Lift-accessible hotel", desc: "Verify working elevators at accommodations.", icon: "elevator" },
  { id: "minimal_walking", label: "Minimal walking", desc: "Select slow-paced tours with close transport drops.", icon: "hiking" },
  { id: "rest_breaks", label: "Regular rest breaks", desc: "Plan frequent rest stops during local transits.", icon: "schedule" },
  { id: "medical_assistance", label: "Medical support on request", desc: "Keep first-aid and emergency doctor on call.", icon: "emergency" },
  { id: "satvik_meals", label: "Satvik meals", desc: "Fresh vegetarian food without onion/garlic.", icon: "soup_kitchen" },
  { id: "pure_veg", label: "Pure vegetarian meals", desc: "Hygienic vegetarian food arrangements.", icon: "restaurant" },
  { id: "diabetic_friendly", label: "Diabetic-friendly meals", desc: "Low sugar, timed meal options.", icon: "cookie" },
  { id: "private_vehicle", label: "Private vehicle", desc: "AC SUV or private vehicle transfers.", icon: "directions_car" },
  { id: "english_guide", label: "English-speaking guide", desc: "Assigned English language coordinator.", icon: "translate" },
  { id: "regional_guide", label: "Regional-language guide", desc: "Guide fluent in native regional tongue.", icon: "record_voice_over" }
];

export default function EnquiryModal() {
  const { isEnquireOpen, setEnquireOpen, enquirePackageId } = useApp();
  const [step, setStep] = useState(1);
  const [isSubmitting, setIsSubmitting] = useState(false);
  const [isSuccess, setIsSuccess] = useState(false);
  const [successData, setSuccessData] = useState<{ reference: string; contactMethod: string } | null>(null);

  const [formData, setFormData] = useState<PackageEnquiry>(INITIAL_FORM_STATE);
  const [errors, setErrors] = useState<Record<string, string>>({});
  const [cityFocused, setCityFocused] = useState(false);

  const modalRef = useRef<HTMLDivElement>(null);
  const selectedPackage = mockPackages.find((p) => p.id === enquirePackageId);

  // Check if form data is dirty
  const isDirty = () => {
    return (
      formData.travelPreference !== "flexible-month" ||
      formData.preferredMonth !== "" ||
      formData.departureDate !== "" ||
      formData.returnDate !== "" ||
      formData.departureCity !== "" ||
      formData.adults !== 2 ||
      formData.seniors !== 0 ||
      formData.children !== 0 ||
      formData.infants !== 0 ||
      formData.assistance.length > 0 ||
      formData.fullName !== "" ||
      formData.phone !== "" ||
      formData.email !== "" ||
      formData.additionalRequests !== "" ||
      formData.contactConsent !== false ||
      formData.whatsappUpdates !== false
    );
  };

  // Close attempt handler
  const handleCloseAttempt = () => {
    if (isDirty() && !isSuccess) {
      const confirmDiscard = window.confirm(
        "You have entered information in the enquiry form. Are you sure you want to discard your progress and close?"
      );
      if (confirmDiscard) {
        setEnquireOpen(false);
      }
    } else {
      setEnquireOpen(false);
    }
  };

  // Trap focus & scroll lock
  useEffect(() => {
    if (isEnquireOpen) {
      document.body.style.overflow = "hidden";
      document.documentElement.style.overflow = "hidden";
      modalRef.current?.focus();
      
      // Load drafts
      try {
        const savedDraft = localStorage.getItem("onejourney_enquiry_draft");
        if (savedDraft) {
          const parsed = JSON.parse(savedDraft);
          // Keep preselected package fields updated
          setFormData((prev) => ({
            ...prev,
            ...parsed,
            packageId: selectedPackage?.id || "",
            packageTitle: selectedPackage?.title || "",
            destination: selectedPackage?.location || ""
          }));
        }
      } catch (e) {
        console.error(e);
      }
    } else {
      document.body.style.overflow = "";
      document.documentElement.style.overflow = "";
    }
    return () => {
      document.body.style.overflow = "";
      document.documentElement.style.overflow = "";
    };
  }, [isEnquireOpen, selectedPackage]);

  // Sync preselected package when it changes
  useEffect(() => {
    if (selectedPackage) {
      setFormData((prev) => ({
        ...prev,
        packageId: selectedPackage.id,
        packageTitle: selectedPackage.title,
        destination: selectedPackage.location
      }));
    }
    setStep(1);
    setIsSuccess(false);
    setErrors({});
  }, [selectedPackage, isEnquireOpen]);

  // Handle Input Changes
  const updateField = <K extends keyof PackageEnquiry>(name: K, value: PackageEnquiry[K]) => {
    const updated = { ...formData, [name]: value };
    setFormData(updated);
    setErrors((prev) => ({ ...prev, [name]: "" })); // Clear error
    localStorage.setItem("onejourney_enquiry_draft", JSON.stringify(updated));
  };

  // Stepper traveller counts
  const updateTravellerCount = (type: "adults" | "seniors" | "children" | "infants", delta: number) => {
    const current = formData[type];
    const updatedValue = Math.max(0, current + delta);
    updateField(type, updatedValue);
  };

  // Assistance checkbox cards
  const toggleAssistance = (optionId: string) => {
    const current = formData.assistance;
    const updatedList = current.includes(optionId)
      ? current.filter((id) => id !== optionId)
      : [...current, optionId];
    updateField("assistance", updatedList);
  };

  // Validation helper
  const validateForm = (currentStep: number) => {
    const newErrors: Record<string, string> = {};

    if (currentStep === 1) {
      if (!formData.packageId) {
        newErrors.package = "Package selection is required.";
      }
      if (!formData.departureCity.trim()) {
        newErrors.departureCity = "Please enter your departure city.";
      }

      if (formData.travelPreference === "flexible-month") {
        if (!formData.preferredMonth) {
          newErrors.preferredMonth = "Please select a preferred travel month.";
        }
      } else if (formData.travelPreference === "exact-dates") {
        if (!formData.departureDate) {
          newErrors.departureDate = "Departure date is required.";
        }
        if (!formData.returnDate) {
          newErrors.returnDate = "Return date is required.";
        }
        if (formData.departureDate && formData.returnDate) {
          const dep = new Date(formData.departureDate);
          const ret = new Date(formData.returnDate);
          if (ret < dep) {
            newErrors.returnDate = "Return date cannot be earlier than departure date.";
          }
        }
      }
    }

    if (currentStep === 2) {
      const total = formData.adults + formData.seniors + formData.children + formData.infants;
      if (total < 1) {
        newErrors.travellers = "Please specify at least 1 traveller.";
      }
    }

    if (currentStep === 3) {
      if (!formData.fullName.trim()) {
        newErrors.fullName = "Please enter your full name.";
      }
      if (!formData.phone.trim()) {
        newErrors.phone = "Phone number is required.";
      } else {
        const cleanPhone = formData.phone.replace(/[\s\-()]/g, "");
        if (!/^[0-9]{7,15}$/.test(cleanPhone)) {
          newErrors.phone = "Please enter a valid phone number.";
        }
      }
      if (formData.email && formData.email.trim() !== "") {
        const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
        if (!emailRegex.test(formData.email.trim())) {
          newErrors.email = "Please enter a valid email address.";
        }
      }
      if (!formData.contactConsent) {
        newErrors.contactConsent = "You must agree to be contacted to submit this enquiry.";
      }
    }

    setErrors(newErrors);
    return Object.keys(newErrors).length === 0;
  };

  // Keyboard navigation Tab Trap
  const handleTabTrap = (e: React.KeyboardEvent) => {
    if (e.key !== "Tab" || !modalRef.current) return;
    const focusable = modalRef.current.querySelectorAll(
      'a[href], button:not([disabled]), input:not([disabled]), select:not([disabled]), textarea:not([disabled]), [tabindex="0"]'
    );
    if (focusable.length === 0) return;
    const first = focusable[0] as HTMLElement;
    const last = focusable[focusable.length - 1] as HTMLElement;

    if (e.shiftKey) {
      if (document.activeElement === first) {
        last.focus();
        e.preventDefault();
      }
    } else {
      if (document.activeElement === last) {
        first.focus();
        e.preventDefault();
      }
    }
  };

  // Navigation CTAs
  const handleContinue = () => {
    if (validateForm(step)) {
      setStep((s) => Math.min(3, s + 1));
    } else {
      // Focus first error field
      setTimeout(() => {
        const firstErr = document.querySelector("[aria-invalid='true']") as HTMLElement;
        firstErr?.focus();
      }, 50);
    }
  };

  const handleBack = () => {
    setStep((s) => Math.max(1, s - 1));
  };

  // Form Submit Action
  const handleFormSubmit = async (e: React.FormEvent) => {
    e.preventDefault();
    if (!validateForm(3)) {
      setTimeout(() => {
        const firstErr = document.querySelector("[aria-invalid='true']") as HTMLElement;
        firstErr?.focus();
      }, 50);
      return;
    }

    setIsSubmitting(true);
    try {
      const response = await fetch("/api/enquiries", {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify(formData)
      });

      const resData = await response.json();
      if (response.ok && resData.success) {
        setIsSuccess(true);
        setSuccessData({
          reference: resData.reference,
          contactMethod: formData.preferredContactMethod
        });
        localStorage.removeItem("onejourney_enquiry_draft");
        toast.success("Enquiry request sent successfully!");
      } else {
        toast.error(resData.message || "Failed to submit enquiry. Please review the details and try again.");
      }
    } catch (err) {
      console.error(err);
      toast.error("We could not submit your enquiry right now. Your entered information has been preserved. Please try again.");
    } finally {
      setIsSubmitting(false);
    }
  };

  // Accessibility variables
  const travellerSummary = [
    formData.adults > 0 ? `${formData.adults} Adult${formData.adults > 1 ? "s" : ""}` : "",
    formData.seniors > 0 ? `${formData.seniors} Senior${formData.seniors > 1 ? "s" : ""}` : "",
    formData.children > 0 ? `${formData.children} Child${formData.children > 1 ? "ren" : ""}` : "",
    formData.infants > 0 ? `${formData.infants} Infant${formData.infants > 1 ? "s" : ""}` : ""
  ].filter(Boolean).join(" · ") || "0 Travellers";

  return (
    <AnimatePresence>
      {isEnquireOpen && (
        <div className="fixed inset-0 z-50 flex items-center justify-center p-0 md:p-4 select-none">
          {/* Backdrop Overlay */}
          <motion.div
            initial={{ opacity: 0 }}
            animate={{ opacity: 0.6 }}
            exit={{ opacity: 0 }}
            onClick={handleCloseAttempt}
            className="fixed inset-0 bg-[#041F35] backdrop-blur-sm"
          />

          {/* Modal Content Box */}
          <motion.div
            ref={modalRef}
            role="dialog"
            aria-modal="true"
            aria-labelledby="enquiry-modal-title"
            tabIndex={-1}
            onKeyDown={(e) => {
              handleTabTrap(e);
              if (e.key === "Escape") handleCloseAttempt();
            }}
            initial={{ opacity: 0, scale: 0.95, y: 15 }}
            animate={{ opacity: 1, scale: 1, y: 0 }}
            exit={{ opacity: 0, scale: 0.95, y: 15 }}
            transition={{ duration: 0.22, ease: "easeOut" }}
            style={{ fontFamily: "'Inter', sans-serif" }}
            className="relative bg-white w-full md:max-w-2xl h-full md:h-[680px] md:max-h-[85vh] md:rounded-3xl shadow-2xl flex flex-col overflow-hidden z-50 focus:outline-none overscroll-contain"
          >
            {/* Header Area */}
            <div className="shrink-0 p-5 border-b border-slate-100 flex justify-between items-start text-left bg-white">
              <div className="min-w-0">
                <span className="text-[10px] font-bold text-[#E8A63B] uppercase tracking-wider block">
                  {selectedPackage?.category === "Pilgrimage" ? "Pilgrimage Yatra" : "Family Vacation"}
                </span>
                <h3 id="enquiry-modal-title" className="font-bold text-xl text-[#0B3A63] font-display mt-0.5 tracking-tight">
                  Enquire about your journey
                </h3>
                <p className="text-xs text-slate-500 font-medium truncate mt-0.5 max-w-[450px]">
                  {selectedPackage ? selectedPackage.title : "Sacred Destination Journey Plan"}
                </p>
              </div>
              <button
                onClick={handleCloseAttempt}
                aria-label="Close Enquiry modal"
                className="w-10 h-10 -mr-2 rounded-full hover:bg-slate-50 text-slate-400 hover:text-slate-700 flex items-center justify-center transition-all cursor-pointer border border-transparent"
              >
                <X size={20} />
              </button>
            </div>

            {/* Clear Progress Indicator Bar */}
            {!isSuccess && (
              <div className="shrink-0 bg-slate-50 border-b border-slate-100 py-3 px-6 flex items-center justify-between text-[11px] font-bold text-slate-500 select-none">
                <div 
                  className="flex items-center gap-1.5 cursor-pointer hover:text-primary transition-colors" 
                  onClick={() => step > 1 && setStep(1)}
                >
                  <div className={`w-5 h-5 rounded-full flex items-center justify-center text-[9px] font-extrabold ${
                    step > 1 
                      ? "bg-[#E8A63B] text-white" 
                      : step === 1 
                        ? "bg-[#0B3A63] text-white border border-[#E8A63B]" 
                        : "bg-slate-200 text-slate-500"
                  }`}>
                    {step > 1 ? "✓" : "1"}
                  </div>
                  <span className={step === 1 ? "text-[#0B3A63] font-extrabold" : ""}>Preferences</span>
                </div>
                <div className="flex-grow h-0.5 bg-slate-200 mx-3 rounded" />
                
                <div 
                  className="flex items-center gap-1.5 cursor-pointer hover:text-primary transition-colors" 
                  onClick={() => {
                    if (validateForm(1)) setStep(2);
                  }}
                >
                  <div className={`w-5 h-5 rounded-full flex items-center justify-center text-[9px] font-extrabold ${
                    step > 2 
                      ? "bg-[#E8A63B] text-white" 
                      : step === 2 
                        ? "bg-[#0B3A63] text-white border border-[#E8A63B]" 
                        : "bg-slate-200 text-slate-500"
                  }`}>
                    {step > 2 ? "✓" : "2"}
                  </div>
                  <span className={step === 2 ? "text-[#0B3A63] font-extrabold" : ""}>Travellers</span>
                </div>
                <div className="flex-grow h-0.5 bg-slate-200 mx-3 rounded" />

                <div 
                  className="flex items-center gap-1.5 cursor-pointer hover:text-primary transition-colors"
                  onClick={() => {
                    if (validateForm(1) && validateForm(2)) setStep(3);
                  }}
                >
                  <div className={`w-5 h-5 rounded-full flex items-center justify-center text-[9px] font-extrabold ${
                    step === 3 
                      ? "bg-[#0B3A63] text-white border border-[#E8A63B]" 
                      : "bg-slate-200 text-slate-500"
                  }`}>
                    3
                  </div>
                  <span className={step === 3 ? "text-[#0B3A63] font-extrabold" : ""}>Contact</span>
                </div>
              </div>
            )}

            {/* Scrollable Form Body */}
            <div 
              className="flex-1 min-h-0 overflow-y-auto overscroll-contain p-5 md:p-6 text-left"
              onWheel={(e) => e.stopPropagation()}
            >
              
              {/* Package Summary Block (Compact) */}
              {!isSuccess && selectedPackage && (
                <div className="bg-slate-50 border border-slate-200/80 rounded-xl p-3 mb-5 flex gap-3 items-center select-none">
                  <img 
                    src={selectedPackage.image} 
                    alt={selectedPackage.title} 
                    className="w-12 h-12 rounded-lg object-cover shrink-0" 
                  />
                  <div className="min-w-0 flex-1">
                    <h4 className="text-xs font-bold text-slate-800 truncate leading-snug">{selectedPackage.title}</h4>
                    <p className="text-[10px] text-slate-500 font-bold truncate mt-0.5 flex items-center gap-1">
                      <MapPin size={10} className="text-[#E8A63B]" /> {selectedPackage.location}
                    </p>
                    <div className="flex flex-wrap gap-2 items-center text-[10px] font-extrabold text-[#0B3A63] mt-1.5">
                      <span>{selectedPackage.durationLabel}</span>
                      <span>·</span>
                      <span>{selectedPackage.categoryLabel || `${selectedPackage.category} Tour`}</span>
                      {selectedPackage.price != null && (
                        <>
                          <span>·</span>
                          <span className="text-[#E8A63B]">From ₹{selectedPackage.price.toLocaleString()}</span>
                        </>
                      )}
                    </div>
                  </div>
                </div>
              )}

              <AnimatePresence mode="wait">
                {isSuccess ? (
                  /* Dynamic Success State */
                  <motion.div
                    key="success"
                    initial={{ opacity: 0, y: 10 }}
                    animate={{ opacity: 1, y: 0 }}
                    exit={{ opacity: 0 }}
                    className="flex flex-col items-center justify-center text-center py-10 space-y-4"
                  >
                    <div className="w-16 h-16 bg-emerald-50 text-emerald-600 rounded-full flex items-center justify-center shadow-sm">
                      <ShieldCheck size={36} className="stroke-[2.5]" />
                    </div>
                    
                    <div className="space-y-1.5">
                      <h4 className="font-bold text-[#0B3A63] text-xl font-display">
                        Enquiry submitted successfully
                      </h4>
                      <p className="text-slate-600 text-sm max-w-md mx-auto leading-relaxed">
                        Thank you, <span className="font-bold text-slate-800">{formData.fullName}</span>. Our travel advisor will contact you shortly about the <span className="font-bold text-slate-800">{selectedPackage?.title}</span>.
                      </p>
                    </div>

                    <div className="bg-slate-50 border border-slate-200/80 rounded-xl p-4 w-full max-w-sm text-left text-xs space-y-2 mt-4">
                      <div className="flex justify-between border-b border-slate-200 pb-2">
                        <span className="text-slate-500 font-bold uppercase tracking-wider">Reference Code</span>
                        <span className="font-extrabold text-[#0B3A63]">{successData?.reference || "OJ-2026-1042"}</span>
                      </div>
                      <div className="flex justify-between pt-1">
                        <span className="text-slate-500 font-medium">Preferred Contact</span>
                        <span className="font-bold text-slate-800 capitalize">{successData?.contactMethod || "WhatsApp"}</span>
                      </div>
                      <div className="flex justify-between">
                        <span className="text-slate-500 font-medium">Expected Response</span>
                        <span className="font-bold text-emerald-600">Within 24 Hours</span>
                      </div>
                    </div>

                    <div className="pt-6 flex flex-col sm:flex-row gap-3 w-full max-w-sm">
                      <button
                        onClick={() => setEnquireOpen(false)}
                        className="flex-1 bg-[#0B3A63] hover:bg-[#124d80] text-white py-3 rounded-xl font-bold text-xs transition-colors cursor-pointer"
                      >
                        Explore More Tours
                      </button>
                      <button
                        onClick={() => setEnquireOpen(false)}
                        className="flex-1 border border-slate-300 text-slate-700 hover:bg-slate-50 py-3 rounded-xl font-bold text-xs transition-colors cursor-pointer"
                      >
                        Close Window
                      </button>
                    </div>
                  </motion.div>
                ) : (
                  <form onSubmit={handleFormSubmit} className="space-y-5" noValidate>
                    {step === 1 && (
                      /* Step 1: Journey Preferences */
                      <motion.div
                        key="step1"
                        initial={{ opacity: 0, x: 10 }}
                        animate={{ opacity: 1, x: 0 }}
                        exit={{ opacity: 0, x: -10 }}
                        transition={{ duration: 0.18 }}
                        className="space-y-4"
                      >
                        <div className="border-b border-slate-100 pb-2">
                          <h4 className="text-sm font-bold text-[#0B3A63] uppercase tracking-wider flex items-center gap-1.5">
                            <MapPin size={16} className="text-[#E8A63B]" /> Journey Preferences
                          </h4>
                        </div>

                        {/* Destination select card (Read only) */}
                        <div>
                          <label className="block text-[11px] font-bold uppercase tracking-wider text-slate-500 mb-1">
                            Destination Package
                          </label>
                          <div className="bg-slate-100/80 border border-slate-200/80 rounded-xl px-4 py-3 text-sm text-slate-600 font-bold select-none cursor-not-allowed">
                            {selectedPackage ? selectedPackage.title : "No package preselected"}
                          </div>
                        </div>

                        {/* Travel Date Preference Mode */}
                        <div>
                          <label className="block text-[11px] font-bold uppercase tracking-wider text-slate-500 mb-2">
                            When would you like to travel?
                          </label>
                          <div className="grid grid-cols-3 gap-2">
                            {[
                              { id: "flexible-month", label: "Flexible Month" },
                              { id: "exact-dates", label: "Exact Dates" },
                              { id: "undecided", label: "Not Decided" }
                            ].map((mode) => (
                              <button
                                key={mode.id}
                                type="button"
                                onClick={() => updateField("travelPreference", mode.id as any)}
                                className={`py-3 px-2 rounded-xl text-xs font-bold text-center border transition-all cursor-pointer ${
                                  formData.travelPreference === mode.id
                                    ? "bg-slate-50 border-[#E8A63B] text-[#0B3A63] shadow-sm"
                                    : "bg-white border-slate-200 text-slate-600 hover:bg-slate-50"
                                }`}
                              >
                                {mode.label}
                              </button>
                            ))}
                          </div>
                        </div>

                        {/* Flexible Month Option dropdown */}
                        {formData.travelPreference === "flexible-month" && (
                          <div className="relative">
                            <label className="block text-[11px] font-bold uppercase tracking-wider text-slate-500 mb-1">
                              Preferred travel month *
                            </label>
                            <select
                              name="preferredMonth"
                              value={formData.preferredMonth}
                              onChange={(e) => updateField("preferredMonth", e.target.value)}
                              aria-invalid={!!errors.preferredMonth}
                              className={`w-full bg-slate-50 text-slate-700 p-3 rounded-xl border outline-none text-xs font-semibold cursor-pointer ${
                                errors.preferredMonth ? "border-red-500" : "border-slate-200 focus:border-[#0B3A63]"
                              }`}
                            >
                              <option value="">Select Month</option>
                              <option value="October 2026">October 2026</option>
                              <option value="November 2026">November 2026</option>
                              <option value="December 2026">December 2026</option>
                              <option value="January 2027">January 2027</option>
                              <option value="February 2027">February 2027</option>
                              <option value="March 2027">March 2027</option>
                            </select>
                            {errors.preferredMonth && (
                              <p className="text-red-500 text-[10px] font-bold mt-1 flex items-center gap-1">
                                <AlertCircle size={10} /> {errors.preferredMonth}
                              </p>
                            )}
                          </div>
                        )}

                        {/* Exact Dates Option Selection */}
                        {formData.travelPreference === "exact-dates" && (
                          <div className="space-y-3">
                            <div className="grid grid-cols-2 gap-3">
                              <div>
                                <label className="block text-[11px] font-bold uppercase tracking-wider text-slate-500 mb-1">
                                  Departure Date *
                                </label>
                                <input
                                  type="date"
                                  value={formData.departureDate || ""}
                                  onChange={(e) => updateField("departureDate", e.target.value)}
                                  aria-invalid={!!errors.departureDate}
                                  className={`w-full bg-slate-50 text-slate-700 p-3 rounded-xl border outline-none text-xs font-semibold ${
                                    errors.departureDate ? "border-red-500" : "border-slate-200 focus:border-[#0B3A63]"
                                  }`}
                                />
                                {errors.departureDate && (
                                  <p className="text-red-500 text-[10px] font-bold mt-1 flex items-center gap-1">
                                    <AlertCircle size={10} /> {errors.departureDate}
                                  </p>
                                )}
                              </div>
                              <div>
                                <label className="block text-[11px] font-bold uppercase tracking-wider text-slate-500 mb-1">
                                  Return Date *
                                </label>
                                <input
                                  type="date"
                                  value={formData.returnDate || ""}
                                  onChange={(e) => updateField("returnDate", e.target.value)}
                                  aria-invalid={!!errors.returnDate}
                                  className={`w-full bg-slate-50 text-slate-700 p-3 rounded-xl border outline-none text-xs font-semibold ${
                                    errors.returnDate ? "border-red-500" : "border-slate-200 focus:border-[#0B3A63]"
                                  }`}
                                />
                                {errors.returnDate && (
                                  <p className="text-red-500 text-[10px] font-bold mt-1 flex items-center gap-1">
                                    <AlertCircle size={10} /> {errors.returnDate}
                                  </p>
                                )}
                              </div>
                            </div>
                          </div>
                        )}

                        {/* Departure City */}
                        <div className="relative">
                          <label className="block text-[11px] font-bold uppercase tracking-wider text-slate-500 mb-1">
                            Departure City *
                          </label>
                          <input
                            type="text"
                            value={formData.departureCity}
                            onChange={(e) => updateField("departureCity", e.target.value)}
                            onFocus={() => setCityFocused(true)}
                            onBlur={() => setTimeout(() => setCityFocused(false), 200)}
                            placeholder="Enter departure city"
                            aria-invalid={!!errors.departureCity}
                            className={`w-full bg-slate-50 text-slate-700 p-3.5 rounded-xl border outline-none text-xs font-semibold ${
                              errors.departureCity ? "border-red-500" : "border-slate-200 focus:border-[#0B3A63]"
                            }`}
                          />
                          {errors.departureCity && (
                            <p className="text-red-500 text-[10px] font-bold mt-1 flex items-center gap-1">
                              <AlertCircle size={10} /> {errors.departureCity}
                            </p>
                          )}

                          {/* Quick City suggestions drop panel */}
                          {cityFocused && (
                            <div className="absolute left-0 right-0 top-full mt-1 bg-white border border-slate-200 rounded-xl shadow-lg p-2.5 z-50 text-left">
                              <span className="text-[9px] font-bold text-slate-400 uppercase tracking-wider block mb-1.5 px-1">Suggested Cities</span>
                              <div className="flex flex-wrap gap-1.5">
                                {SUGGESTED_CITIES.map((city) => (
                                  <button
                                    key={city}
                                    type="button"
                                    onClick={() => updateField("departureCity", city)}
                                    className="bg-slate-50 hover:bg-slate-100 text-slate-700 px-2.5 py-1.5 rounded-lg text-xs font-bold transition-all border border-slate-200/50 cursor-pointer"
                                  >
                                    {city}
                                  </button>
                                ))}
                              </div>
                            </div>
                          )}
                        </div>

                        {/* Trip Date Flexibility Options */}
                        <div>
                          <label className="block text-[11px] font-bold uppercase tracking-wider text-slate-500 mb-1.5">
                            Trip Date Flexibility
                          </label>
                          <div className="flex flex-wrap gap-2">
                            {["Fixed dates", "± 3 days flexible", "Fully flexible"].map((flex) => (
                              <button
                                key={flex}
                                type="button"
                                onClick={() => updateField("dateFlexibility", flex)}
                                className={`px-4 py-2 rounded-xl text-xs font-bold transition-all border cursor-pointer ${
                                  formData.dateFlexibility === flex
                                    ? "bg-slate-50 border-[#E8A63B] text-[#0B3A63]"
                                    : "bg-white border-slate-200 text-slate-500 hover:bg-slate-50"
                                }`}
                              >
                                {flex}
                              </button>
                            ))}
                          </div>
                        </div>

                        {/* Optional Journey Preference message */}
                        <div>
                          <label className="block text-[11px] font-bold uppercase tracking-wider text-slate-500 mb-1">
                            Anything we should consider at this stage? <span className="text-slate-400 font-medium">(Optional)</span>
                          </label>
                          <textarea
                            value={formData.additionalRequests}
                            onChange={(e) => updateField("additionalRequests", e.target.value)}
                            placeholder="E.g., Preferred temple timings, special occasion yatra details, avoid night trains..."
                            rows={2}
                            maxLength={500}
                            className="w-full bg-slate-50 text-slate-700 p-3 rounded-xl border border-slate-200 focus:border-[#0B3A63] outline-none text-xs font-semibold resize-none"
                          />
                        </div>
                      </motion.div>
                    )}

                    {step === 2 && (
                      /* Step 2: Who is travelling? */
                      <motion.div
                        key="step2"
                        initial={{ opacity: 0, x: 10 }}
                        animate={{ opacity: 1, x: 0 }}
                        exit={{ opacity: 0, x: -10 }}
                        transition={{ duration: 0.18 }}
                        className="space-y-5"
                      >
                        <div className="border-b border-slate-100 pb-2">
                          <h4 className="text-sm font-bold text-[#0B3A63] uppercase tracking-wider flex items-center gap-1.5">
                            <Users size={16} className="text-[#E8A63B]" /> Who is travelling?
                          </h4>
                        </div>

                        {/* Custom Steppers list for age groups */}
                        <div className="bg-slate-50 border border-slate-100 rounded-2xl p-4 space-y-4">
                          {[
                            { key: "adults" as const, label: "Adults", desc: "Ages 18–59" },
                            { key: "seniors" as const, label: "Seniors", desc: "Ages 60+" },
                            { key: "children" as const, label: "Children", desc: "Ages 2–17" },
                            { key: "infants" as const, label: "Infants", desc: "Under 2" }
                          ].map((item) => (
                            <div key={item.key} className="flex justify-between items-center select-none">
                              <div>
                                <span className="text-xs font-extrabold text-[#0B3A63] block">{item.label}</span>
                                <span className="text-[10px] text-slate-500 font-medium">{item.desc}</span>
                              </div>
                              <div className="flex items-center gap-3">
                                <button
                                  type="button"
                                  onClick={() => updateTravellerCount(item.key, -1)}
                                  disabled={formData[item.key] === 0}
                                  className="w-8 h-8 rounded-full bg-white border border-slate-200 flex items-center justify-center text-[#0B3A63] hover:bg-slate-50 disabled:opacity-30 disabled:hover:bg-white cursor-pointer select-none"
                                >
                                  <Minus size={14} className="stroke-[3]" />
                                </button>
                                <span className="text-sm font-extrabold text-[#0B3A63] w-6 text-center select-all">
                                  {formData[item.key]}
                                </span>
                                <button
                                  type="button"
                                  onClick={() => updateTravellerCount(item.key, 1)}
                                  className="w-8 h-8 rounded-full bg-white border border-slate-200 flex items-center justify-center text-[#0B3A63] hover:bg-slate-50 cursor-pointer select-none"
                                >
                                  <Plus size={14} className="stroke-[3]" />
                                </button>
                              </div>
                            </div>
                          ))}
                          
                          {/* Live counters totals check */}
                          <div className="border-t border-slate-200/80 pt-3 flex justify-between items-center text-xs">
                            <span className="text-slate-500 font-medium">Traveller Summary</span>
                            <span className="font-extrabold text-[#0B3A63]">{travellerSummary}</span>
                          </div>
                          {errors.travellers && (
                            <p className="text-red-500 text-[10px] font-bold mt-1 flex items-center gap-1">
                              <AlertCircle size={10} /> {errors.travellers}
                            </p>
                          )}
                        </div>

                        {/* Selectable Comfort cards */}
                        <div>
                          <div className="mb-2">
                            <label className="block text-[11px] font-bold uppercase tracking-wider text-slate-500 flex items-center gap-1">
                              <HeartHandshake size={14} className="text-[#E8A63B]" /> Comfort and assistance
                            </label>
                            <span className="text-[10px] text-slate-400 font-medium block">Select all support requirements for elder pilgrims.</span>
                          </div>

                          <div className="grid grid-cols-1 sm:grid-cols-2 gap-2.5 max-h-[220px] overflow-y-auto pr-1">
                            {ASSISTANCE_OPTIONS.map((opt) => {
                              const isSelected = formData.assistance.includes(opt.id);
                              return (
                                <button
                                  key={opt.id}
                                  type="button"
                                  onClick={() => toggleAssistance(opt.id)}
                                  className={`flex items-start gap-3 p-3 rounded-xl border text-left transition-all duration-150 cursor-pointer select-none relative group/opt ${
                                    isSelected
                                      ? "bg-[#FFF8E8] border-[#E8A63B] shadow-sm"
                                      : "bg-white border-slate-200/80 hover:bg-slate-50"
                                  }`}
                                >
                                  <span className="material-symbols-outlined text-[20px] text-[#0B3A63] shrink-0 mt-0.5 select-none">{opt.icon}</span>
                                  <div className="min-w-0 flex-1 pr-4">
                                    <h5 className="text-[11.5px] font-bold text-slate-800 leading-snug">{opt.label}</h5>
                                    <p className="text-[9.5px] text-slate-500 font-medium mt-0.5 leading-relaxed leading-normal">{opt.desc}</p>
                                  </div>
                                  
                                  {/* Selection Checkbox Pill */}
                                  <div className={`absolute top-3 right-3 w-4 h-4 rounded-full flex items-center justify-center border transition-all ${
                                    isSelected 
                                      ? "bg-[#E8A63B] border-[#E8A63B] text-white scale-110" 
                                      : "border-slate-300 bg-white"
                                  }`}>
                                    {isSelected && <Check size={10} className="stroke-[3.5]" />}
                                  </div>
                                </button>
                              );
                            })}
                          </div>

                          {/* Advisory disclaimer */}
                          <p className="text-[9px] text-slate-400 font-medium leading-normal mt-2">
                            * Assistance requests will be reviewed and confirmed by the travel team. Stays are custom assigned.
                          </p>
                        </div>
                      </motion.div>
                    )}

                    {step === 3 && (
                      /* Step 3: Contact & Review Panel */
                      <motion.div
                        key="step3"
                        initial={{ opacity: 0, x: 10 }}
                        animate={{ opacity: 1, x: 0 }}
                        exit={{ opacity: 0, x: -10 }}
                        transition={{ duration: 0.18 }}
                        className="space-y-4"
                      >
                        <div className="border-b border-slate-100 pb-2">
                          <h4 className="text-sm font-bold text-[#0B3A63] uppercase tracking-wider flex items-center gap-1.5">
                            <Phone size={16} className="text-[#E8A63B]" /> How can we contact you?
                          </h4>
                        </div>

                        {/* Full Name Input */}
                        <div>
                          <label className="block text-[11px] font-bold uppercase tracking-wider text-slate-500 mb-1">
                            Full Name *
                          </label>
                          <input
                            type="text"
                            value={formData.fullName}
                            onChange={(e) => updateField("fullName", e.target.value)}
                            placeholder="Enter your full name"
                            aria-invalid={!!errors.fullName}
                            className={`w-full bg-slate-50 text-slate-700 p-3 rounded-xl border outline-none text-xs font-semibold ${
                              errors.fullName ? "border-red-500 animate-shake" : "border-slate-200 focus:border-[#0B3A63]"
                            }`}
                          />
                          {errors.fullName && (
                            <p className="text-red-500 text-[10px] font-bold mt-1 flex items-center gap-1">
                              <AlertCircle size={10} /> {errors.fullName}
                            </p>
                          )}
                        </div>

                        <div className="grid grid-cols-1 sm:grid-cols-2 gap-3">
                          {/* Phone input with Country code prefix */}
                          <div>
                            <label className="block text-[11px] font-bold uppercase tracking-wider text-slate-500 mb-1">
                              Phone Number *
                            </label>
                            <div className="flex gap-2">
                              <select
                                value={formData.phoneCountryCode}
                                onChange={(e) => updateField("phoneCountryCode", e.target.value)}
                                className="bg-slate-50 text-slate-700 p-3 rounded-xl border border-slate-200 outline-none text-xs font-bold cursor-pointer shrink-0"
                              >
                                <option value="+91">+91 (IN)</option>
                                <option value="+1">+1 (US)</option>
                                <option value="+44">+44 (UK)</option>
                                <option value="+971">+971 (AE)</option>
                                <option value="+65">+65 (SG)</option>
                              </select>
                              <input
                                type="tel"
                                value={formData.phone}
                                onChange={(e) => updateField("phone", e.target.value)}
                                placeholder="98765 43210"
                                aria-invalid={!!errors.phone}
                                className={`w-full bg-slate-50 text-slate-700 p-3 rounded-xl border outline-none text-xs font-semibold ${
                                  errors.phone ? "border-red-500" : "border-slate-200 focus:border-[#0B3A63]"
                                }`}
                              />
                            </div>
                            {errors.phone && (
                              <p className="text-red-500 text-[10px] font-bold mt-1 flex items-center gap-1">
                                <AlertCircle size={10} /> {errors.phone}
                              </p>
                            )}
                          </div>

                          {/* Email Address (optional) */}
                          <div>
                            <label className="block text-[11px] font-bold uppercase tracking-wider text-slate-500 mb-1">
                              Email Address <span className="text-slate-400 font-medium">(Optional)</span>
                            </label>
                            <input
                              type="email"
                              value={formData.email || ""}
                              onChange={(e) => updateField("email", e.target.value)}
                              placeholder="name@gmail.com"
                              aria-invalid={!!errors.email}
                              className={`w-full bg-slate-50 text-slate-700 p-3 rounded-xl border outline-none text-xs font-semibold ${
                                errors.email ? "border-red-500" : "border-slate-200 focus:border-[#0B3A63]"
                              }`}
                            />
                            {errors.email && (
                              <p className="text-red-500 text-[10px] font-bold mt-1 flex items-center gap-1">
                                <AlertCircle size={10} /> {errors.email}
                              </p>
                            )}
                          </div>
                        </div>

                        {/* Preferred Contact Method & Time preferences */}
                        <div className="grid grid-cols-1 sm:grid-cols-2 gap-3">
                          <div>
                            <label className="block text-[11px] font-bold uppercase tracking-wider text-slate-500 mb-1">
                              Preferred Contact Method
                            </label>
                            <div className="grid grid-cols-3 gap-1">
                              {[
                                { id: "whatsapp", label: "WhatsApp" },
                                { id: "phone", label: "Phone Call" },
                                { id: "email", label: "Email" }
                              ].map((m) => (
                                <button
                                  key={m.id}
                                  type="button"
                                  onClick={() => updateField("preferredContactMethod", m.id as any)}
                                  className={`py-2 px-1 rounded-lg text-[10px] font-extrabold border text-center transition-all cursor-pointer ${
                                    formData.preferredContactMethod === m.id
                                      ? "bg-slate-50 border-[#E8A63B] text-[#0B3A63]"
                                      : "bg-white border-slate-200 text-slate-500 hover:bg-slate-50"
                                  }`}
                                >
                                  {m.label}
                                </button>
                              ))}
                            </div>
                          </div>
                          <div>
                            <label className="block text-[11px] font-bold uppercase tracking-wider text-slate-500 mb-1">
                              Preferred Contact Time
                            </label>
                            <select
                              value={formData.preferredContactTime}
                              onChange={(e) => updateField("preferredContactTime", e.target.value)}
                              className="w-full bg-slate-50 text-slate-700 p-2.5 rounded-lg border border-slate-200 outline-none text-xs font-semibold cursor-pointer"
                            >
                              <option value="Any time">Any time</option>
                              <option value="Morning (9 AM - 12 PM)">Morning (9 AM - 12 PM)</option>
                              <option value="Afternoon (12 PM - 5 PM)">Afternoon (12 PM - 5 PM)</option>
                              <option value="Evening (5 PM - 8 PM)">Evening (5 PM - 8 PM)</option>
                            </select>
                          </div>
                        </div>

                        {/* WhatsApp Updates and Consent checks */}
                        <div className="space-y-2 border-t border-slate-100 pt-3 select-none">
                          <label className="flex items-start gap-2.5 cursor-pointer">
                            <input
                              type="checkbox"
                              checked={formData.contactConsent}
                              onChange={(e) => updateField("contactConsent", e.target.checked)}
                              className="mt-0.5 w-4 h-4 rounded text-primary focus:ring-primary border-slate-300"
                            />
                            <span className="text-[10px] text-slate-600 font-bold leading-normal">
                              I agree to be contacted regarding this enquiry. *
                            </span>
                          </label>
                          {errors.contactConsent && (
                            <p className="text-red-500 text-[9px] font-bold flex items-center gap-1 select-none">
                              <AlertCircle size={9} /> {errors.contactConsent}
                            </p>
                          )}

                          <label className="flex items-start gap-2.5 cursor-pointer">
                            <input
                              type="checkbox"
                              checked={formData.whatsappUpdates}
                              onChange={(e) => updateField("whatsappUpdates", e.target.checked)}
                              className="mt-0.5 w-4 h-4 rounded text-primary focus:ring-primary border-slate-300"
                            />
                            <span className="text-[10px] text-slate-500 font-medium leading-normal">
                              Send itinerary updates and coordinates on WhatsApp
                            </span>
                          </label>
                        </div>

                        {/* Review Summary Panel */}
                        <div className="bg-slate-50 border border-slate-200/80 rounded-2xl p-4 text-xs space-y-2 mt-4 select-none">
                          <span className="text-[10px] font-bold uppercase tracking-wider text-slate-400 block border-b border-slate-200 pb-1.5">Review summary</span>
                          
                          <div className="space-y-1.5 font-medium text-slate-600">
                            <div className="flex justify-between items-center">
                              <span>Journey:</span>
                              <div className="flex items-center gap-1.5">
                                <span className="font-bold text-[#0B3A63] text-right truncate max-w-[180px]">{selectedPackage?.title}</span>
                              </div>
                            </div>
                            
                            <div className="flex justify-between items-center">
                              <span>Travel Preferences:</span>
                              <div className="flex items-center gap-1.5">
                                <span className="font-bold text-slate-800 text-right">
                                  {formData.travelPreference === "flexible-month" 
                                    ? formData.preferredMonth 
                                    : formData.travelPreference === "exact-dates"
                                      ? `${formData.departureDate} to ${formData.returnDate}`
                                      : "Undecided Month"} (From {formData.departureCity || "N/A"})
                                </span>
                                <button type="button" onClick={() => setStep(1)} className="text-[#E8A63B] font-bold hover:underline">Edit</button>
                              </div>
                            </div>

                            <div className="flex justify-between items-center">
                              <span>Travellers:</span>
                              <div className="flex items-center gap-1.5">
                                <span className="font-bold text-slate-800 text-right">{travellerSummary}</span>
                                <button type="button" onClick={() => setStep(2)} className="text-[#E8A63B] font-bold hover:underline">Edit</button>
                              </div>
                            </div>

                            <div className="flex justify-between items-center">
                              <span>Assistance:</span>
                              <div className="flex items-center gap-1.5">
                                <span className="font-bold text-slate-800 text-right truncate max-w-[200px]">
                                  {formData.assistance.length > 0 
                                    ? formData.assistance.map(id => ASSISTANCE_OPTIONS.find(o => o.id === id)?.label).join(", ")
                                    : "None Selected"}
                                </span>
                                <button type="button" onClick={() => setStep(2)} className="text-[#E8A63B] font-bold hover:underline">Edit</button>
                              </div>
                            </div>

                            <div className="flex justify-between items-center">
                              <span>Contact Details:</span>
                              <div className="flex items-center gap-1.5">
                                <span className="font-bold text-slate-800 text-right">
                                  {formData.phoneCountryCode} {formData.phone} ({formData.preferredContactMethod})
                                </span>
                                <button type="button" onClick={() => setStep(3)} className="text-[#E8A63B] font-bold hover:underline">Edit</button>
                              </div>
                            </div>
                          </div>
                        </div>
                      </motion.div>
                    )}
                  </form>
                )}
              </AnimatePresence>
            </div>

            {/* Sticky Actions Footer */}
            {!isSuccess && (
              <div className="shrink-0 p-4 border-t border-slate-100 flex justify-between items-center bg-white select-none">
                {step > 1 ? (
                  <button
                    type="button"
                    onClick={handleBack}
                    className="h-11 px-6 border border-slate-300 text-slate-700 hover:bg-slate-50 font-bold rounded-xl text-xs transition-colors cursor-pointer flex items-center justify-center gap-1"
                  >
                    Back
                  </button>
                ) : (
                  <button
                    type="button"
                    onClick={handleCloseAttempt}
                    className="h-11 px-6 border border-slate-200 text-slate-500 hover:bg-slate-50 font-bold rounded-xl text-xs transition-colors cursor-pointer flex items-center justify-center gap-1"
                  >
                    Cancel
                  </button>
                )}

                {step < 3 ? (
                  <button
                    type="button"
                    onClick={handleContinue}
                    className="h-11 px-8 bg-[#0B3A63] hover:bg-[#124d80] text-white font-bold rounded-xl text-xs transition-colors cursor-pointer flex items-center justify-center gap-1"
                  >
                    Continue
                  </button>
                ) : (
                  <button
                    type="button"
                    onClick={handleFormSubmit}
                    disabled={isSubmitting}
                    className="h-11 px-8 bg-[#E8A63B] hover:bg-[#d6952a] text-white font-bold rounded-xl text-xs transition-colors cursor-pointer flex items-center justify-center gap-1.5 disabled:opacity-60 disabled:hover:bg-[#E8A63B]"
                  >
                    {isSubmitting ? (
                      <>
                        <div className="w-4 h-4 border-2 border-white border-t-transparent rounded-full animate-spin" />
                        Submitting...
                      </>
                    ) : (
                      "Submit Enquiry"
                    )}
                  </button>
                )}
              </div>
            )}
          </motion.div>
        </div>
      )}
    </AnimatePresence>
  );
}
