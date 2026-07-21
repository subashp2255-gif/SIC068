"use client";

import { useEffect } from "react";
import { motion, AnimatePresence } from "framer-motion";
import { X, Clock, Shirt, Calendar, MapPin, CheckCircle2, Sparkles, AlertCircle } from "lucide-react";

export type PrepCategory = "timings" | "dressCodes" | "auspiciousDates";

interface JourneyPrepModalProps {
  isOpen: boolean;
  onClose: () => void;
  category: PrepCategory;
}

export default function JourneyPrepModal({ isOpen, onClose, category }: JourneyPrepModalProps) {
  useEffect(() => {
    if (isOpen) {
      document.body.style.overflow = "hidden";
    } else {
      document.body.style.overflow = "";
    }
    return () => {
      document.body.style.overflow = "";
    };
  }, [isOpen]);

  if (!isOpen) return null;

  return (
    <AnimatePresence>
      <div className="fixed inset-0 z-[100] flex items-center justify-center p-4 sm:p-6 overflow-y-auto">
        {/* Backdrop */}
        <motion.div
          initial={{ opacity: 0 }}
          animate={{ opacity: 1 }}
          exit={{ opacity: 0 }}
          onClick={onClose}
          className="fixed inset-0 bg-[#041F35]/70 backdrop-blur-md"
        />

        {/* Modal Dialog */}
        <motion.div
          initial={{ opacity: 0, scale: 0.95, y: 20 }}
          animate={{ opacity: 1, scale: 1, y: 0 }}
          exit={{ opacity: 0, scale: 0.95, y: 20 }}
          transition={{ duration: 0.2, ease: "easeOut" }}
          className="relative w-full max-w-3xl bg-white rounded-3xl shadow-2xl border border-slate-100 overflow-hidden z-10 my-8 text-left"
        >
          {/* Header */}
          <div className="bg-[#062E4F] text-white p-6 sm:p-8 relative">
            <button
              onClick={onClose}
              className="absolute top-5 right-5 p-2 rounded-full bg-white/10 hover:bg-white/20 text-white transition-colors cursor-pointer"
            >
              <X size={20} />
            </button>
            <div className="flex items-center gap-3 mb-2">
              <span className="p-2.5 bg-[#E9A227] text-white rounded-xl shadow-sm">
                {category === "timings" && <Clock size={22} />}
                {category === "dressCodes" && <Shirt size={22} />}
                {category === "auspiciousDates" && <Calendar size={22} />}
              </span>
              <span className="text-[#E9A227] font-bold text-xs uppercase tracking-wider">
                Yatra Preparation Guide
              </span>
            </div>
            <h2 className="text-2xl sm:text-3xl font-extrabold font-display">
              {category === "timings" && "Temple & Shrine Operating Hours"}
              {category === "dressCodes" && "Temple Dress Codes & Decorum"}
              {category === "auspiciousDates" && "Auspicious Yatra & Festival Calendar"}
            </h2>
            <p className="text-sm text-blue-100 mt-1.5 leading-relaxed max-w-xl font-medium">
              {category === "timings" && "Verified opening timings, Aarti schedules, and VIP darshan slots for major shrines across India."}
              {category === "dressCodes" && "Traditional clothing guidelines and sanctity protocols required for inner sanctum entry."}
              {category === "auspiciousDates" && "Spiritual muhurats, festival dates, and shrine portal opening dates for optimal pilgrimage planning."}
            </p>
          </div>

          {/* Modal Body */}
          <div className="p-6 sm:p-8 max-h-[65vh] overflow-y-auto overscroll-contain space-y-6">
            
            {/* TEMPLE TIMINGS CATEGORY */}
            {category === "timings" && (
              <div className="space-y-4">
                <div className="p-4 rounded-2xl bg-amber-50/70 border border-amber-200/60 flex items-start gap-3">
                  <Sparkles size={20} className="text-[#E9A227] shrink-0 mt-0.5" />
                  <p className="text-xs text-slate-700 leading-relaxed font-medium">
                    VIP Priority Darshan passes included in OneJourney Yatra packages allow elderly pilgrims to access special entry lanes during morning Aarti hours.
                  </p>
                </div>

                <div className="grid grid-cols-1 md:grid-cols-2 gap-4">
                  
                  {/* Shrine 1 */}
                  <div className="p-4 rounded-2xl border border-slate-200/80 bg-slate-50/50 space-y-2">
                    <div className="flex justify-between items-center">
                      <h4 className="font-bold text-[#062E4F] text-sm flex items-center gap-1.5">
                        <MapPin size={15} className="text-[#E9A227]" /> Kashi Vishwanath, Varanasi
                      </h4>
                      <span className="text-[10px] font-bold bg-[#062E4F] text-white px-2 py-0.5 rounded-full">UP</span>
                    </div>
                    <ul className="text-xs text-slate-600 space-y-1 pt-1">
                      <li>• <strong>Mangala Aarti:</strong> 3:00 AM – 4:00 AM (Pre-booked)</li>
                      <li>• <strong>General Darshan:</strong> 4:00 AM – 11:00 PM</li>
                      <li>• <strong>Bhog Aarti:</strong> 11:15 AM – 12:20 PM</li>
                      <li>• <strong>Saptarishi Aarti:</strong> 7:00 PM – 8:15 PM</li>
                    </ul>
                  </div>

                  {/* Shrine 2 */}
                  <div className="p-4 rounded-2xl border border-slate-200/80 bg-slate-50/50 space-y-2">
                    <div className="flex justify-between items-center">
                      <h4 className="font-bold text-[#062E4F] text-sm flex items-center gap-1.5">
                        <MapPin size={15} className="text-[#E9A227]" /> Tirupati Balaji, Andhra Pradesh
                      </h4>
                      <span className="text-[10px] font-bold bg-[#062E4F] text-white px-2 py-0.5 rounded-full">AP</span>
                    </div>
                    <ul className="text-xs text-slate-600 space-y-1 pt-1">
                      <li>• <strong>Suprabhatam Seva:</strong> 3:00 AM – 3:30 AM</li>
                      <li>• <strong>VIP Break Darshan:</strong> 6:00 AM – 8:00 AM</li>
                      <li>• <strong>Sarvadarsanam:</strong> 7:30 AM – 11:30 PM</li>
                      <li>• <strong>Ekantha Seva:</strong> 1:30 AM (Night Closure)</li>
                    </ul>
                  </div>

                  {/* Shrine 3 */}
                  <div className="p-4 rounded-2xl border border-slate-200/80 bg-slate-50/50 space-y-2">
                    <div className="flex justify-between items-center">
                      <h4 className="font-bold text-[#062E4F] text-sm flex items-center gap-1.5">
                        <MapPin size={15} className="text-[#E9A227]" /> Kedarnath Dham, Uttarakhand
                      </h4>
                      <span className="text-[10px] font-bold bg-[#062E4F] text-white px-2 py-0.5 rounded-full">UK</span>
                    </div>
                    <ul className="text-xs text-slate-600 space-y-1 pt-1">
                      <li>• <strong>Morning Abhishekam:</strong> 4:00 AM – 6:00 AM</li>
                      <li>• <strong>General Darshan:</strong> 6:00 AM – 3:00 PM</li>
                      <li>• <strong>Afternoon Closure:</strong> 3:00 PM – 5:00 PM</li>
                      <li>• <strong>Grand Evening Aarti:</strong> 6:30 PM – 7:30 PM</li>
                    </ul>
                  </div>

                  {/* Shrine 4 */}
                  <div className="p-4 rounded-2xl border border-slate-200/80 bg-slate-50/50 space-y-2">
                    <div className="flex justify-between items-center">
                      <h4 className="font-bold text-[#062E4F] text-sm flex items-center gap-1.5">
                        <MapPin size={15} className="text-[#E9A227]" /> Ramanathaswamy, Rameswaram
                      </h4>
                      <span className="text-[10px] font-bold bg-[#062E4F] text-white px-2 py-0.5 rounded-full">TN</span>
                    </div>
                    <ul className="text-xs text-slate-600 space-y-1 pt-1">
                      <li>• <strong>Spatika Lingam Darshan:</strong> 5:00 AM – 6:00 AM</li>
                      <li>• <strong>22 Holy Wells Bathing:</strong> 6:00 AM – 5:30 PM</li>
                      <li>• <strong>Sayaratchai Aarti:</strong> 6:00 PM</li>
                      <li>• <strong>Night Closure:</strong> 9:00 PM</li>
                    </ul>
                  </div>

                </div>
              </div>
            )}

            {/* DRESS CODES CATEGORY */}
            {category === "dressCodes" && (
              <div className="space-y-4">
                <div className="p-4 rounded-2xl bg-blue-50/70 border border-blue-200/60 flex items-start gap-3">
                  <AlertCircle size={20} className="text-blue-700 shrink-0 mt-0.5" />
                  <p className="text-xs text-slate-700 leading-relaxed font-medium">
                    Strict traditional dress code compliance is enforced at inner sanctum gates. Modern attire (jeans, shorts, leather belts) is restricted at South Indian and Vedic shrines.
                  </p>
                </div>

                <div className="space-y-3">
                  {/* Rule 1 */}
                  <div className="p-4 rounded-2xl border border-slate-200 text-left space-y-1.5">
                    <h4 className="font-bold text-[#062E4F] text-sm flex items-center gap-2">
                      <span className="w-2 h-2 bg-[#E9A227] rounded-full" />
                      South Indian Temples (Tirupati, Rameswaram, Madurai, Kanyakumari)
                    </h4>
                    <p className="text-xs text-slate-600 leading-relaxed">
                      <strong>Men:</strong> White Dhoti / Veshti with upper cloth (Angavastram) or Kurta Pyjama. Trousers, jeans, and leather belts are strictly prohibited inside inner sanctum.<br />
                      <strong>Women:</strong> Traditional Saree, Half-Saree, or Salwar Kameez with Dupatta.
                    </p>
                  </div>

                  {/* Rule 2 */}
                  <div className="p-4 rounded-2xl border border-slate-200 text-left space-y-1.5">
                    <h4 className="font-bold text-[#062E4F] text-sm flex items-center gap-2">
                      <span className="w-2 h-2 bg-[#E9A227] rounded-full" />
                      North & Himalayan Shrines (Kashi, Kedarnath, Haridwar, Vaishno Devi)
                    </h4>
                    <p className="text-xs text-slate-600 leading-relaxed">
                      Modest Indian ethnic or smart casual attire covering shoulders and knees. Shoes, socks, leather bags, and smartwatches must be stored in complimentary temple lockers before entering.
                    </p>
                  </div>

                  {/* Rule 3 */}
                  <div className="p-4 rounded-2xl border border-slate-200 text-left space-y-1.5">
                    <h4 className="font-bold text-[#062E4F] text-sm flex items-center gap-2">
                      <span className="w-2 h-2 bg-[#E9A227] rounded-full" />
                      Gurudwaras & Dargahs (Golden Temple Amritsar, Ajmer Sharif)
                    </h4>
                    <p className="text-xs text-slate-600 leading-relaxed">
                      Head covering is mandatory for both men and women (headscarves available at entrance). Bare feet must be washed in the foot-bath pool prior to entering Sri Harmandir Sahib.
                    </p>
                  </div>
                </div>
              </div>
            )}

            {/* AUSPICIOUS DATES CATEGORY */}
            {category === "auspiciousDates" && (
              <div className="space-y-4">
                <div className="p-4 rounded-2xl bg-amber-50/70 border border-amber-200/60 flex items-start gap-3">
                  <Sparkles size={20} className="text-[#E9A227] shrink-0 mt-0.5" />
                  <p className="text-xs text-slate-700 leading-relaxed font-medium">
                    2026 - 2027 Sacred Yatra Calendar highlighting key festival muhurats and Himalayan shrine opening portal dates.
                  </p>
                </div>

                <div className="grid grid-cols-1 md:grid-cols-2 gap-4 text-left">
                  
                  <div className="p-4 rounded-2xl border border-slate-200 bg-slate-50/50 space-y-1.5">
                    <span className="text-[10px] font-bold text-[#E9A227] uppercase tracking-wider block">Spring 2026</span>
                    <h4 className="font-bold text-[#062E4F] text-sm">Maha Shivratri & Akshaya Tritiya</h4>
                    <p className="text-xs text-slate-600 leading-relaxed">
                      • <strong>Maha Shivratri:</strong> Peak night Aarti at Kashi Vishwanath & Mahakaleshwar.<br />
                      • <strong>Akshaya Tritiya:</strong> Portals of Kedarnath, Badrinath, Gangotri & Yamunotri open for yatra season.
                    </p>
                  </div>

                  <div className="p-4 rounded-2xl border border-slate-200 bg-slate-50/50 space-y-1.5">
                    <span className="text-[10px] font-bold text-[#E9A227] uppercase tracking-wider block">Autumn 2026</span>
                    <h4 className="font-bold text-[#062E4F] text-sm">Navratri & Dev Deepawali</h4>
                    <p className="text-xs text-slate-600 leading-relaxed">
                      • <strong>Sharad Navratri:</strong> Special Darshan at Mata Vaishno Devi & Shaktipeeths.<br />
                      • <strong>Dev Deepawali:</strong> 1,000,000 diyas lit on Varanasi Ghats during Kartik Purnima.
                    </p>
                  </div>

                  <div className="p-4 rounded-2xl border border-slate-200 bg-slate-50/50 space-y-1.5">
                    <span className="text-[10px] font-bold text-[#E9A227] uppercase tracking-wider block">Winter 2026</span>
                    <h4 className="font-bold text-[#062E4F] text-sm">Vaikuntha Ekadashi & Shirdi Utsav</h4>
                    <p className="text-xs text-slate-600 leading-relaxed">
                      • <strong>Vaikuntha Ekadashi:</strong> Swarga Dwaram opens at Tirupati Balaji.<br />
                      • <strong>Shirdi Punyatithi:</strong> Special Palki procession at Shirdi Sai Baba Samadhi.
                    </p>
                  </div>

                  <div className="p-4 rounded-2xl border border-slate-200 bg-slate-50/50 space-y-1.5">
                    <span className="text-[10px] font-bold text-[#E9A227] uppercase tracking-wider block">Annual 2026</span>
                    <h4 className="font-bold text-[#062E4F] text-sm">Puri Rath Yatra & Amarnath Yatra</h4>
                    <p className="text-xs text-slate-600 leading-relaxed">
                      • <strong>Jagannath Rath Yatra:</strong> Grand Chariot Festival in Puri.<br />
                      • <strong>Amarnath Yatra:</strong> Holy Ice Lingam Darshan season in Kashmir valley.
                    </p>
                  </div>

                </div>
              </div>
            )}

          </div>

          {/* Footer */}
          <div className="p-5 bg-slate-50 border-t border-slate-100 flex justify-between items-center">
            <span className="text-xs text-slate-500 font-medium flex items-center gap-1.5">
              <CheckCircle2 size={15} className="text-emerald-600" />
              Official OneJourney Yatra Information
            </span>
            <button
              onClick={onClose}
              className="px-6 py-2.5 bg-[#062E4F] hover:bg-[#0A4270] text-white font-bold text-xs rounded-xl transition-all cursor-pointer"
            >
              Close Information
            </button>
          </div>
        </motion.div>
      </div>
    </AnimatePresence>
  );
}
