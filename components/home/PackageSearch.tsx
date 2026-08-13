"use client";

import { useState } from "react";
import { useRouter } from "next/navigation";
import { Search } from "lucide-react";
import DestinationSelector from "./DestinationSelector";
import MonthSelector from "./MonthSelector";
import DurationSelector from "./DurationSelector";
import TravellerSelector, { TravellersState } from "./TravellerSelector";

export default function PackageSearch() {
  const router = useRouter();
  const [destination, setDestination] = useState("");
  const [travelMonth, setTravelMonth] = useState("");
  const [duration, setDuration] = useState("");
  const [travellers, setTravellers] = useState<TravellersState>({
    adults: 2,
    children: 0,
    seniors: 0,
    rooms: 1,
  });
  const [isSearching, setIsSearching] = useState(false);

  const handleSearchSubmit = async (e: React.FormEvent) => {
    e.preventDefault();
    setIsSearching(true);
    
    // Simulate loading transition state
    await new Promise(resolve => setTimeout(resolve, 500));

    // Build URL Query Params
    const params = new URLSearchParams();
    if (destination) params.append("dest", destination);
    if (travelMonth) params.append("month", travelMonth);
    if (duration) params.append("duration", duration);
    
    const total = travellers.adults + travellers.children + travellers.seniors;
    if (total > 0) params.append("travellers", total.toString());

    router.push(`/packages?${params.toString()}`);
    setIsSearching(false);
  };

  return (
    <form
      onSubmit={handleSearchSubmit}
      className="w-full max-w-6xl bg-white/95 backdrop-blur-md p-4 md:p-3 rounded-2xl shadow-level-2 border border-[#DDE4E8] flex flex-col md:flex-row items-stretch md:items-center gap-4 transition-all duration-300 hover:shadow-level-3 relative z-30"
    >
      <div className="grid grid-cols-1 sm:grid-cols-2 md:grid-cols-4 grow divide-y md:divide-y-0 md:divide-x divide-[#DDE4E8]/60">
        <div className="h-full relative">
          <DestinationSelector value={destination} onChange={setDestination} />
        </div>
        <div className="h-full relative">
          <MonthSelector value={travelMonth} onChange={setTravelMonth} />
        </div>
        <div className="h-full relative">
          <DurationSelector value={duration} onChange={setDuration} />
        </div>
        <div className="h-full relative">
          <TravellerSelector value={travellers} onChange={setTravellers} />
        </div>
      </div>

      {/* Saffron Primary Search Button */}
      <button
        type="submit"
        disabled={isSearching}
        className="bg-[#D89A32] hover:bg-[#E6B85C] text-[#102F4A] h-14 md:h-auto lg:h-[68px] px-8 lg:px-10 rounded-xl font-label-bold text-base hover:shadow-md active:scale-98 transition-all flex items-center justify-center gap-2.5 cursor-pointer disabled:opacity-80 disabled:scale-100 group shrink-0"
      >
        {isSearching ? (
          <div className="w-5 h-5 border-2 border-[#102F4A] border-t-transparent rounded-full animate-spin" />
        ) : (
          <Search size={20} className="group-hover:scale-110 transition-transform text-[#102F4A]" />
        )}
        <span className="inline font-bold">{isSearching ? "Searching..." : "Find Packages"}</span>
      </button>
    </form>
  );
}
