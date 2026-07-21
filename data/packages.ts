export interface ItineraryItem {
  day: number;
  title: string;
  location: string;
  overview: string;
  schedule: {
    morning: {
      title: string;
      description: string;
    };
    afternoon: {
      title: string;
      description: string;
    };
    evening: {
      title: string;
      description: string;
    };
  };
  details: {
    importantTimings: string;
    meals: string;
    transport: string;
    walkingLevel: string;
    stay: string;
    weather: string;
    dressCode: string;
    packingSuggestions: string;
    accessibility?: string;
    visitorNote?: string;
    travelDuration?: string;
  };
}

export interface PackageInclusions {
  hotel: boolean;
  meals: boolean;
  transit: boolean;
  guide: boolean;
  entryPasses: boolean;
  medicalSupport: boolean;
  localExperience: boolean;
}

export interface Package {
  id: string;
  title: string;
  destinationName: string;
  image: string;
  location: string;
  region: "North India" | "South India" | "Char Dham" | "Maharashtra" | "Pan India" | "International";

  category: "Family" | "Pilgrimage";
  subCategory?: "Hinduism" | "Buddhism" | "Christianity" | "Islam";

  durationDays: number;
  durationLabel: string;

  bestSeason: string;
  pace: "Relaxed" | "Easy" | "Moderate" | "Active";

  travellerTypes: string[];
  accessibilityStatus:
    | "Wheelchair Accessible"
    | "Partial Accessibility"
    | "Accessibility on Request"
    | "Not Wheelchair Accessible";

  seniorFriendly: boolean;
  childFriendly: boolean;

  inclusions: PackageInclusions;

  packageBenefits: string[];
  highlights: string[];
  tips: string[];
  itinerarySummary: string[];
  cancellationSummary: string;

  price: number | null;

  // Backward compatible properties
  destinations: string;
  route?: string[];
  duration: string;
  rating?: number | null;
  reviewCount?: number | null;
  seatsLeft?: number | null;
  recentBookings?: number | null;
  verified?: boolean | null;
  altText?: string;
  tags: string[];
  itinerary: ItineraryItem[];
  vegMeals: boolean;
  wheelchairAccess: boolean;
  mainCategory?: "Pilgrimage" | "Family";
  categoryLabel?: string;
  travellerType?: string;
  description?: string;
}

export const mockPackages: Package[] = [
  {
    "id": "family-alleppey-backwaters",
    "title": "Alleppey Backwaters",
    "destinationName": "Alleppey Backwaters",
    "destinations": "Alleppey Backwaters (Alappuzha, Kerala)",
    "location": "Alappuzha, Kerala",
    "route": [
      "Alappuzha",
      "Alleppey Backwaters"
    ],
    "mainCategory": "Family",
    "categoryLabel": "Family Tour",
    "category": "Family",
    "region": "South India",
    "image": "/images/tourist-places/family/Alleppey Backwaters.jpg",
    "altText": "Alleppey Backwaters family tour destination in Alappuzha, Kerala",
    "duration": "4 Days / 3 Nights",
    "bestSeason": "November–February",
    "pace": "Relaxed",
    "travellerType": "Family Friendly",
    "description": "A thoughtfully planned family tour offering comfort, guidance, and a memorable experience.",
    "price": 18500,
    "rating": null,
    "reviewCount": null,
    "seatsLeft": null,
    "recentBookings": null,
    "verified": null,
    "tags": [
      "Family Tour",
      "Family Friendly"
    ],
    "seniorFriendly": true,
    "wheelchairAccess": true,
    "vegMeals": false,
    "inclusions": {
      "hotel": true,
      "meals": true,
      "transit": true,
      "guide": false,
      "entryPasses": false,
      "medicalSupport": false,
      "localExperience": true
    },
    "itinerary": [
      {
        "day": 1,
        "title": "Arrival in Alappuzha & Houseboat Cruise Check-in",
        "location": "Alappuzha",
        "overview": "Arrive in scenic Alappuzha. Board your luxury Kerala houseboat and sail along palm-fringed backwater canals.",
        "schedule": {
          "morning": {
            "title": "Warm Arrival & Vessel Boarding",
            "description": "Meet our local representative at Alappuzha hub. Transfer to Jetty and check into your traditional Kettuvallam houseboat with welcome drinks."
          },
          "afternoon": {
            "title": "Punnamada Lake Canal Cruise",
            "description": "Glide through quiet inland waterways, observing traditional paddy fields, lotus ponds, and riverside coconut groves."
          },
          "evening": {
            "title": "Sunset Deck View & Karimeen Dinner",
            "description": "Watch the golden Kerala sunset over Vembanad Lake. Enjoy freshly prepared authentic Kerala Sadya & Pearl Spot fish curry."
          }
        },
        "details": {
          "importantTimings": "Houseboat Cruise: 12:00 PM - 5:30 PM | Sunset Decking: 5:45 PM",
          "meals": "Welcome Tender Coconut & Traditional Kerala Buffet Dinner.",
          "transport": "AC Private Chauffeur Sedan + Deluxe Houseboat Transit.",
          "walkingLevel": "Relaxed (Flat wooden decks, optional shore walks)",
          "stay": "Deluxe Lakeview Houseboat (AC Bedrooms, en-suite bathroom, sun deck)",
          "weather": "Pleasant coastal breeze, tropical afternoon warmth 28°C.",
          "dressCode": "Light breathable cottons, sunhats, sunglasses, and slip-on sandals.",
          "packingSuggestions": "Mosquito repellent, camera with extra battery, light cotton wear, sunglasses.",
          "accessibility": "Ramp entry available at main jetty portals.",
          "visitorNote": "Houseboats anchor securely at 5:30 PM as per Kerala inland navigation guidelines.",
          "travelDuration": "Approx 1 to 2 hours road transfer + 5 hours cruise"
        }
      },
      {
        "day": 2,
        "title": "Kuttanad Village Trail & Canoe Cruise",
        "location": "Alappuzha",
        "overview": "Discover authentic rural life along the lower sea-level paddy farms of Kuttanad aboard small country canoes.",
        "schedule": {
          "morning": {
            "title": "Village Morning Walk & Breakfast",
            "description": "Wake up to bird songs over the water. Enjoy fresh Appam with Stew followed by a morning walk through local spice gardens."
          },
          "afternoon": {
            "title": "Canoe Exploration of Narrow Canals",
            "description": "Board a traditional narrow canoe to navigate hidden residential waterways inaccessible to larger boats."
          },
          "evening": {
            "title": "Riverside Sunset & Cultural Music",
            "description": "Relax at a waterside heritage pavilion listening to soft local instrumental tunes as dusk falls."
          }
        },
        "details": {
          "importantTimings": "Canoe Excursion: 9:00 AM - 11:30 AM | Afternoon Rest: 1:00 PM - 3:30 PM",
          "meals": "Complimentary South Indian Breakfast & Traditional Lunch.",
          "transport": "Traditional Country Canoe + AC Private Vehicle.",
          "walkingLevel": "Easy Paced (Village dirt paths, flat terrain)",
          "stay": "Waterfront Heritage Resort (Riverfront balcony, swimming pool, spa)",
          "weather": "Warm and humid morning, gentle afternoon river breeze 27°C.",
          "dressCode": "Comfortable casual wear, sunhat, and light walking shoes.",
          "packingSuggestions": "Sunscreen lotion, water bottle, dry bag for electronics, camera.",
          "accessibility": "Flat paths with assistance for seniors.",
          "visitorNote": "Local boatmen guide canoe rides safely with life jackets provided.",
          "travelDuration": "Approx 3 to 4 hours active excursion"
        }
      },
      {
        "day": 3,
        "title": "Marari Beach & Ayurvedic Wellness Session",
        "location": "Mararikulam",
        "overview": "Excursion to pristine Marari Beach and experience relaxing authentic Kerala Ayurvedic rejuvenation.",
        "schedule": {
          "morning": {
            "title": "Marari White Sand Beach Walk",
            "description": "Transfer to quiet Marari Beach. Stroll along pristine white sands and shade under coconut palms."
          },
          "afternoon": {
            "title": "Ayurvedic Spa & Herbal Massage",
            "description": "Indulge in a 60-minute Abhyanga full-body herbal oil massage by certified Kerala practitioners."
          },
          "evening": {
            "title": "Beachside Sunset & Seafood Dinner",
            "description": "Watch fisherman bring in evening catches against a crimson horizon."
          }
        },
        "details": {
          "importantTimings": "Beach Stroll: 7:30 AM - 10:00 AM | Spa Session: 2:30 PM",
          "meals": "Healthy Organic Breakfast & Special Dinner.",
          "transport": "AC Sedan Transfer.",
          "walkingLevel": "Easy Paced (Sandy beach walks, smooth spa corridors)",
          "stay": "Marari Beach Eco-Resort (Private cottage, coconut grove views)",
          "weather": "Sunny sea breeze 29°C.",
          "dressCode": "Beachwear, cotton shorts, light dresses, sunglasses.",
          "packingSuggestions": "Beach towel, flip-flops, swimwear, sunscreen.",
          "accessibility": "Direct wheelchair-accessible beach boardwalks.",
          "visitorNote": "Swimming is advised in designated lifeguard zones only.",
          "travelDuration": "Approx 30 mins drive from Alappuzha"
        }
      },
      {
        "day": 4,
        "title": "Coir Crafts Market & Onward Departure",
        "location": "Alappuzha",
        "overview": "Shop for native coconut coir handicrafts and spices before your return journey home.",
        "schedule": {
          "morning": {
            "title": "Coir Handicraft & Spice Market",
            "description": "Visit traditional coir weaving centers and spice bazaars to buy cardamom, pepper, and handmade mats."
          },
          "afternoon": {
            "title": "Hotel Checkout & Farewell Lunch",
            "description": "Return to resort, pack luggage, and enjoy a farewell lunch."
          },
          "evening": {
            "title": "Departure Transfer",
            "description": "Chauffeur transfer to Cochin International Airport (COK) or Ernakulam Junction Railway Station."
          }
        },
        "details": {
          "importantTimings": "Shopping: 9:30 AM - 12:00 PM | Checkout: 1:00 PM",
          "meals": "Breakfast & Farewell Kerala Lunch included.",
          "transport": "AC Private Chauffeur Sedan.",
          "walkingLevel": "Easy Paced (Market stalls)",
          "stay": "N/A (Day of departure)",
          "weather": "Warm and bright 28°C.",
          "dressCode": "Comfortable travel attire.",
          "packingSuggestions": "Pack purchased spices in check-in bags, photo ID ready.",
          "accessibility": "Accessible vehicles with low step entry.",
          "visitorNote": "Reach airport 3 hours prior to domestic flight departure.",
          "travelDuration": "Approx 2 hours transfer to airport"
        }
      }
    ],
    "durationDays": 4,
    "durationLabel": "4 Days / 3 Nights",
    "travellerTypes": [
      "Couples",
      "Seniors"
    ],
    "accessibilityStatus": "Accessibility on Request",
    "childFriendly": true,
    "packageBenefits": [
      "Scenic Accommodation",
      "Breakfast Included"
    ],
    "highlights": [
      "Relaxing stay and leisure exploration in Alleppey Backwaters",
      "Scenic beauty and local dining experiences",
      "Private luxury transfers for ultimate comfort"
    ],
    "tips": [
      "Carry sun protection (glasses/hat) for outdoor excursions.",
      "Keep local currency handy for local markets.",
      "Follow guidelines at heritage locations."
    ],
    "itinerarySummary": [
      "Day 1: Arrival in Alappuzha & Houseboat Cruise Check-in",
      "Day 2: Kuttanad Village Trail & Canoe Cruise",
      "Day 3: Marari Beach & Ayurvedic Wellness Session",
      "Day 4: Coir Crafts Market & Onward Departure"
    ],
    "cancellationSummary": "Get a 100% full refund on cancellations made up to 15 days before the departure. Rescheduling options are fully flexible."
  },
  {
    "id": "family-amber-fort",
    "title": "Amber Fort",
    "destinationName": "Amber Fort",
    "destinations": "Amber Fort (Jaipur, Rajasthan)",
    "location": "Jaipur, Rajasthan",
    "route": [
      "Jaipur",
      "Amber Fort"
    ],
    "mainCategory": "Family",
    "categoryLabel": "Family Tour",
    "category": "Family",
    "region": "North India",
    "image": "/images/tourist-places/family/Amber Fort.jpg",
    "altText": "Amber Fort family tour destination in Jaipur, Rajasthan",
    "duration": "4 Days / 3 Nights",
    "bestSeason": "October–March",
    "pace": "Moderate",
    "travellerType": "Family Friendly",
    "description": "A thoughtfully planned family tour offering comfort, guidance, and a memorable experience.",
    "price": 20000,
    "rating": null,
    "reviewCount": null,
    "seatsLeft": null,
    "recentBookings": null,
    "verified": null,
    "tags": [
      "Family Tour",
      "Family Friendly"
    ],
    "seniorFriendly": true,
    "wheelchairAccess": true,
    "vegMeals": false,
    "inclusions": {
      "hotel": true,
      "meals": true,
      "transit": true,
      "guide": true,
      "entryPasses": true,
      "medicalSupport": false,
      "localExperience": false
    },
    "itinerary": [
      {
        "day": 1,
        "title": "Arrival in Pink City Jaipur & Chokhi Dhani Night",
        "location": "Jaipur",
        "overview": "Welcome to Jaipur! Settle into your heritage stay and experience authentic Rajasthani village culture.",
        "schedule": {
          "morning": {
            "title": "Royal Welcome & Check-in",
            "description": "Arrive at Jaipur Airport/Station. Escorted transfer to your heritage Haveli hotel with traditional tika welcome."
          },
          "afternoon": {
            "title": "Rest & Orientation Walk",
            "description": "Unpack and relax in your Rajasthani themed rooms. Optional stroll near the local bazaar."
          },
          "evening": {
            "title": "Chokhi Dhani Cultural Village",
            "description": "Experience puppet shows, Kalbelia folk dance, camel rides, and a lavish Rajasthani Thali feast."
          }
        },
        "details": {
          "importantTimings": "Hotel Check-in: 12:00 PM | Chokhi Dhani Gates: 6:00 PM - 10:30 PM",
          "meals": "Welcome Drink & Grand Rajasthani Thali Dinner.",
          "transport": "AC Private Sedan Transfer.",
          "walkingLevel": "Easy Paced (Flat village paths)",
          "stay": "Heritage Haveli Hotel (Courtyard garden, royal decor, pool)",
          "weather": "Pleasant evening climate, 22°C.",
          "dressCode": "Ethnic Rajasthani or comfortable smart casuals.",
          "packingSuggestions": "Camera, light jacket for evening, comfortable walking shoes.",
          "accessibility": "Wheelchair accessible dining & courtyard areas.",
          "visitorNote": "Chokhi Dhani entrance ticket includes all entertainment and thali dinner.",
          "travelDuration": "Approx 45 mins transfer to resort"
        }
      },
      {
        "day": 2,
        "title": "Grand Amber Fort & Sheesh Mahal Exploration",
        "location": "Jaipur",
        "overview": "Ascend the hilltop Amber Fort and marvel at the breathtaking mirror work of Sheesh Mahal.",
        "schedule": {
          "morning": {
            "title": "Amber Fort Elephant / Jeep Hill Climb",
            "description": "Morning ascent up Maota Lake ramparts to Amber Fort. Tour Diwan-i-Aam, Ganesh Pol, and Sheesh Mahal."
          },
          "afternoon": {
            "title": "Jaigarh Fort & Jaivana Cannon",
            "description": "Visit Jaigarh Fort overlooking Amber Fort to see the world's largest cannon on wheels."
          },
          "evening": {
            "title": "Jal Mahal Sunset Photography",
            "description": "Stop by the illuminated Water Palace standing serenely in Man Sagar Lake."
          }
        },
        "details": {
          "importantTimings": "Amber Fort Monument Hours: 8:00 AM - 5:30 PM",
          "meals": "Breakfast & Laal Maas / Veg Thali Lunch.",
          "transport": "AC Private Sedan + Elephant/Jeep Ride.",
          "walkingLevel": "Moderate (Cobblestone ramps and fort staircases)",
          "stay": "Heritage Haveli Hotel",
          "weather": "Sunny afternoon 25°C.",
          "dressCode": "Sunhats, shades, cotton clothing, sturdy footwear.",
          "packingSuggestions": "Sunscreen, sunglasses, water bottle, camera with zoom lens.",
          "accessibility": "Battery buggies available inside fort courtyards.",
          "visitorNote": "Guides escort through historical corridors explaining Rajput-Mughal history.",
          "travelDuration": "Full day sightseeing approx 6 hours"
        }
      },
      {
        "day": 3,
        "title": "City Palace, Hawa Mahal & Johari Bazaar",
        "location": "Jaipur",
        "overview": "Discover Jaipur's royal heritage at the City Palace and observatory of Jantar Mantar.",
        "schedule": {
          "morning": {
            "title": "City Palace Museum & Jantar Mantar",
            "description": "Explore Chandra Mahal, royal costumes, weapon armory, and UNESCO stone astronomical instruments."
          },
          "afternoon": {
            "title": "Hawa Mahal Honeycomb Facade",
            "description": "Photograph the iconic 953-window Palace of Winds from across the street."
          },
          "evening": {
            "title": "Johari & Bapu Bazaar Shopping",
            "description": "Shop for Kundan jewelry, Jaipur block-printed textiles, and lac bangles."
          }
        },
        "details": {
          "importantTimings": "City Palace: 9:30 AM - 5:00 PM | Bazaar Shopping: 5:00 PM - 8:30 PM",
          "meals": "Breakfast & Royal Thali Lunch.",
          "transport": "AC Private Sedan.",
          "walkingLevel": "Easy Paced (Paved palace floors & shopping alleys)",
          "stay": "Heritage Haveli Hotel",
          "weather": "Comfortable travel weather 24°C.",
          "dressCode": "Modest casual wear.",
          "packingSuggestions": "Shopping tote bag, small cash notes for local artisans.",
          "accessibility": "Ramps and elevators available throughout City Palace museum.",
          "visitorNote": "Bargaining is accepted in local artisan street shops.",
          "travelDuration": "Approx 5 hours city tour"
        }
      },
      {
        "day": 4,
        "title": "Albert Hall & Departure",
        "location": "Jaipur",
        "overview": "Visit Albert Hall Museum before your departure from Jaipur.",
        "schedule": {
          "morning": {
            "title": "Albert Hall Museum & Blue Pottery",
            "description": "Admire Indo-Saracenic architecture and Egyptian mummy at Albert Hall. Visit local Blue Pottery workshop."
          },
          "afternoon": {
            "title": "Check-out & Local Sweets Shopping",
            "description": "Buy authentic Jaipur Ghevar sweet before heading to airport/station."
          },
          "evening": {
            "title": "Departure Transfer",
            "description": "Chauffeur transfer to Jaipur International Airport (JAI) or Jaipur Junction."
          }
        },
        "details": {
          "importantTimings": "Museum Visit: 9:00 AM - 11:30 AM | Checkout: 12:00 PM",
          "meals": "Breakfast & Light Snack included.",
          "transport": "AC Private Sedan.",
          "walkingLevel": "Easy Paced",
          "stay": "N/A (Departure day)",
          "weather": "Sunny 25°C.",
          "dressCode": "Travel clothing.",
          "packingSuggestions": "Fragile pottery packed carefully, photo ID ready.",
          "accessibility": "Accessible vehicles and museum ramps.",
          "visitorNote": "Reach airport 2 hours before departure.",
          "travelDuration": "Approx 45 mins airport transfer"
        }
      }
    ],
    "durationDays": 4,
    "durationLabel": "4 Days / 3 Nights",
    "travellerTypes": [
      "History Lovers",
      "Families"
    ],
    "accessibilityStatus": "Partial Accessibility",
    "childFriendly": true,
    "packageBenefits": [
      "Heritage Guide",
      "Monument Entry Assistance"
    ],
    "highlights": [
      "Guided heritage sightseeing of Amber Fort landmarks",
      "Immersive cultural show and local market visits",
      "Delight in authentic regional delicacies"
    ],
    "tips": [
      "Carry sun protection (glasses/hat) for outdoor excursions.",
      "Keep local currency handy for local markets.",
      "Follow guidelines at heritage locations."
    ],
    "itinerarySummary": [
      "Day 1: Arrival in Pink City Jaipur & Chokhi Dhani Night",
      "Day 2: Grand Amber Fort & Sheesh Mahal Exploration",
      "Day 3: City Palace, Hawa Mahal & Johari Bazaar",
      "Day 4: Albert Hall & Departure"
    ],
    "cancellationSummary": "Get a 100% full refund on cancellations made up to 15 days before the departure. Rescheduling options are fully flexible."
  },
  {
    "id": "family-athirappilly-waterfalls",
    "title": "Athirappilly Waterfalls",
    "destinationName": "Athirappilly Waterfalls",
    "destinations": "Athirappilly Waterfalls (Thrissur, Kerala)",
    "location": "Thrissur, Kerala",
    "route": [
      "Thrissur",
      "Athirappilly Waterfalls"
    ],
    "mainCategory": "Family",
    "categoryLabel": "Family Tour",
    "category": "Family",
    "region": "South India",
    "image": "/images/tourist-places/family/Athirappilly Waterfalls.jpg",
    "altText": "Athirappilly Waterfalls family tour destination in Thrissur, Kerala",
    "duration": "4 Days / 3 Nights",
    "bestSeason": "September–January",
    "pace": "Active",
    "travellerType": "Family Friendly",
    "description": "A thoughtfully planned family tour offering comfort, guidance, and a memorable experience.",
    "price": 21500,
    "rating": null,
    "reviewCount": null,
    "seatsLeft": null,
    "recentBookings": null,
    "verified": null,
    "tags": [
      "Family Tour",
      "Family Friendly"
    ],
    "seniorFriendly": false,
    "wheelchairAccess": false,
    "vegMeals": false,
    "inclusions": {
      "hotel": true,
      "meals": true,
      "transit": true,
      "guide": true,
      "entryPasses": false,
      "medicalSupport": true,
      "localExperience": true
    },
    "itinerary": [
      {
        "day": 1,
        "title": "Escorted Arrival in Thrissur & Athirappilly Waterfalls Gateway",
        "location": "Thrissur",
        "overview": "Arrive in vibrant Thrissur. Escorted transfer to Royal Heritage Villa near Athirappilly Waterfalls. Spend your evening relaxing and sampling authentic local dishes.",
        "schedule": {
          "morning": {
            "title": "Arrival & Escorted Transfer in Thrissur",
            "description": "Meet our local travel escort at Thrissur transit hub. Receive a traditional welcome and transfer to Royal Heritage Villa near Athirappilly Waterfalls."
          },
          "afternoon": {
            "title": "Unpack & Courtyard Leisure at Thrissur",
            "description": "Check into your sanitized room, unpack your luggage, and enjoy quiet leisure time exploring hotel gardens and facilities."
          },
          "evening": {
            "title": "Cultural Folk Performance & Dinner at Athirappilly Waterfalls",
            "description": "Stroll through the bustling neighborhood of Athirappilly Waterfalls. Watch the sunset and savor a multi-course dinner."
          }
        },
        "details": {
          "importantTimings": "Sunrise Tour: 5:45 AM | Museum Hours: 9:30 AM - 5:00 PM",
          "meals": "Welcome Drink & Lavish Regional Buffet Dinner.",
          "transport": "AC Private Chauffeur Vehicle",
          "walkingLevel": "Easy Paced (Paved walkways)",
          "stay": "Royal Heritage Villa near Athirappilly Waterfalls",
          "weather": "Warm tropical sunshine with ocean breeze 27°C",
          "dressCode": "Casual travel clothing & sunhat",
          "packingSuggestions": "Light cotton wear, camera with telephoto lens, sunscreen lotion, photo ID.",
          "accessibility": "Wheelchair ramps & low step entry vehicle",
          "visitorNote": "Escort coordinator will brief you on timing for Athirappilly Waterfalls visit.",
          "travelDuration": "Approx 1 to 2 hours transfer"
        }
      },
      {
        "day": 2,
        "title": "Exclusive Morning Tour of Athirappilly Waterfalls",
        "location": "Thrissur",
        "overview": "A deep dive into Athirappilly Waterfalls. Tour inner sanctums, historical galleries, and architectural viewpoints accompanied by an expert guide.",
        "schedule": {
          "morning": {
            "title": "Guided Tour of Athirappilly Waterfalls",
            "description": "Early morning entry to Athirappilly Waterfalls. Walk through central courtyards, ancient corridors, and historic halls."
          },
          "afternoon": {
            "title": "Museum Treasures & Heritage Galleries near Thrissur",
            "description": "Taste authentic local regional cuisine. Visit local artisan markets specializing in handcrafts native to Kerala."
          },
          "evening": {
            "title": "Sunset Viewpoint & Cultural Evening",
            "description": "Head to the highest scenic viewpoint overlooking Athirappilly Waterfalls. Capture sunset photographs followed by evening entertainment."
          }
        },
        "details": {
          "importantTimings": "Sunrise Tour: 5:45 AM | Museum Hours: 9:30 AM - 5:00 PM",
          "meals": "Complimentary Buffet Breakfast & Traditional Cuisine Lunch.",
          "transport": "AC Private Sedan / SUV",
          "walkingLevel": "Moderate (Historical walkways & corridors)",
          "stay": "Royal Heritage Villa near Athirappilly Waterfalls",
          "weather": "Warm tropical sunshine with ocean breeze 27°C",
          "dressCode": "Comfortable daywear",
          "packingSuggestions": "Comfortable walking socks, power bank, shoulder shawl, daypack.",
          "accessibility": "Assistive ramps available at main portals",
          "visitorNote": "Follow local heritage guidelines inside Athirappilly Waterfalls.",
          "travelDuration": "Full day sightseeing approx 5 to 6 hours"
        }
      },
      {
        "day": 3,
        "title": "Excursion to Surrounding Landmarks of Thrissur",
        "location": "Kerala",
        "overview": "Expand your exploration with a day trip to surrounding heritage spots, sacred lakes, and craft villages near Thrissur.",
        "schedule": {
          "morning": {
            "title": "Heritage Excursion & Scenic Drive",
            "description": "Scenic drive through countryside roads surrounding Thrissur. Visit secondary monuments and historic watchtowers."
          },
          "afternoon": {
            "title": "Artisan Workshop & Traditional Lunch",
            "description": "Interact with local master craftsmen demonstrating native handloom weaving or stone carving. Enjoy traditional lunch."
          },
          "evening": {
            "title": "Twilight Promenade & Dinner",
            "description": "Enjoy a relaxed walk around the local market square. Purchase authentic local sweets and dinner."
          }
        },
        "details": {
          "importantTimings": "Excursion Departure: 9:00 AM",
          "meals": "Organic Farm-to-Table Breakfast & Seafood / Veg Dinner.",
          "transport": "AC Private Vehicle",
          "walkingLevel": "Easy Paced",
          "stay": "Royal Heritage Villa near Athirappilly Waterfalls",
          "weather": "Warm tropical sunshine with ocean breeze 27°C",
          "dressCode": "Comfortable clothing",
          "packingSuggestions": "Breathable linen wear, sunglasses, small currency notes for local shops.",
          "accessibility": "Accessible vehicles",
          "visitorNote": "Authentic souvenirs certified by local artisans.",
          "travelDuration": "Approx 4 hours excursion"
        }
      },
      {
        "day": 4,
        "title": "Souvenir Shopping & Onward Departure from Thrissur",
        "location": "Thrissur",
        "overview": "Conclude your trip to Athirappilly Waterfalls with morning shopping for local delicacies and souvenirs, followed by departure transfer.",
        "schedule": {
          "morning": {
            "title": "Handicrafts & Sweet Market Visit",
            "description": "Visit trusted local bazaar stalls to buy regional spices, handmade crafts, and traditional sweets of Thrissur."
          },
          "afternoon": {
            "title": "Hotel Checkout & Farewell Lunch",
            "description": "Return to hotel for packing and checkout. Enjoy a farewell lunch before your transfer."
          },
          "evening": {
            "title": "Outbound Departure Transfer",
            "description": "Chauffeur drop to Thrissur Airport or Railway Station for your onward journey home."
          }
        },
        "details": {
          "importantTimings": "Checkout: 12:00 PM | Transfer: As per flight/train",
          "meals": "Breakfast & Farewell Lunch included.",
          "transport": "AC Private Transfer Vehicle",
          "walkingLevel": "Easy Paced",
          "stay": "N/A (Day of departure)",
          "weather": "Warm tropical sunshine with ocean breeze 27°C",
          "dressCode": "Comfortable travel wear",
          "packingSuggestions": "Check-in luggage packed, photo ID ready.",
          "accessibility": "Accessible vehicles",
          "visitorNote": "Arrive at Thrissur station/airport 2 hours prior to departure.",
          "travelDuration": "Approx 1 hour transfer"
        }
      }
    ],
    "durationDays": 4,
    "durationLabel": "4 Days / 3 Nights",
    "travellerTypes": [
      "Nature Lovers",
      "Adventure Travellers"
    ],
    "accessibilityStatus": "Not Wheelchair Accessible",
    "childFriendly": false,
    "packageBenefits": [
      "Nature Guide",
      "Viewpoint Access"
    ],
    "highlights": [
      "Explore the scenic nature trails and waterfall routes in Athirappilly Waterfalls",
      "Breathtaking viewpoints and photo opportunities",
      "Guided trekking and outdoor activities"
    ],
    "tips": [
      "Wear sturdy, non-slip walking shoes.",
      "Carry a light raincoat or umbrella depending on the season.",
      "Stay well-hydrated during the walk."
    ],
    "itinerarySummary": [
      "Day 1: Escorted Arrival in Thrissur & Athirappilly Waterfalls Gateway",
      "Day 2: Exclusive Morning Tour of Athirappilly Waterfalls",
      "Day 3: Excursion to Surrounding Landmarks of Thrissur",
      "Day 4: Souvenir Shopping & Onward Departure from Thrissur"
    ],
    "cancellationSummary": "Get a 100% full refund on cancellations made up to 15 days before the departure. Rescheduling options are fully flexible."
  },
  {
    "id": "family-big-ben",
    "title": "Big Ben",
    "destinationName": "Big Ben",
    "destinations": "Big Ben (London, United Kingdom)",
    "location": "London, United Kingdom",
    "route": [
      "London",
      "Big Ben"
    ],
    "mainCategory": "Family",
    "categoryLabel": "Family Tour",
    "category": "Family",
    "region": "International",
    "image": "/images/tourist-places/family/Big Ben.jpg",
    "altText": "Big Ben family tour destination in London, United Kingdom",
    "duration": "4 Days / 3 Nights",
    "bestSeason": "Year-Round",
    "pace": "Easy",
    "travellerType": "Family Friendly",
    "description": "A thoughtfully planned family tour offering comfort, guidance, and a memorable experience.",
    "price": 23000,
    "rating": null,
    "reviewCount": null,
    "seatsLeft": null,
    "recentBookings": null,
    "verified": null,
    "tags": [
      "Family Tour",
      "Family Friendly"
    ],
    "seniorFriendly": true,
    "wheelchairAccess": true,
    "vegMeals": false,
    "inclusions": {
      "hotel": true,
      "meals": true,
      "transit": true,
      "guide": false,
      "entryPasses": false,
      "medicalSupport": false,
      "localExperience": false
    },
    "itinerary": [
      {
        "day": 1,
        "title": "Arrival in London: Riverside Aarti & Evening Tea",
        "location": "London",
        "overview": "Arrive in vibrant London. Escorted transfer to Luxury Eco Lodge in London. Spend your evening relaxing and sampling authentic local dishes.",
        "schedule": {
          "morning": {
            "title": "Arrival & Escorted Transfer in London",
            "description": "Meet our local travel escort at London transit hub. Receive a traditional welcome and transfer to Luxury Eco Lodge in London."
          },
          "afternoon": {
            "title": "Unpack & Courtyard Leisure at London",
            "description": "Check into your sanitized room, unpack your luggage, and enjoy quiet leisure time exploring hotel gardens and facilities."
          },
          "evening": {
            "title": "Riverside Aarti & Evening Tea at Big Ben",
            "description": "Stroll through the bustling neighborhood of Big Ben. Watch the sunset and savor a multi-course dinner."
          }
        },
        "details": {
          "importantTimings": "Guided Walk: 9:00 AM | Sunset Point Departure: 5:15 PM",
          "meals": "Welcome Drink & Lavish Regional Buffet Dinner.",
          "transport": "AC Private Chauffeur Vehicle",
          "walkingLevel": "Easy Paced (Paved walkways)",
          "stay": "Luxury Eco Lodge in London",
          "weather": "Crisp mountain climate, clear blue skies 19°C",
          "dressCode": "Casual travel clothing & sunhat",
          "packingSuggestions": "Comfortable walking socks, power bank, shoulder shawl, daypack.",
          "accessibility": "Wheelchair ramps & low step entry vehicle",
          "visitorNote": "Escort coordinator will brief you on timing for Big Ben visit.",
          "travelDuration": "Approx 1 to 2 hours transfer"
        }
      },
      {
        "day": 2,
        "title": "VIP Access to Big Ben",
        "location": "London",
        "overview": "A deep dive into Big Ben. Tour inner sanctums, historical galleries, and architectural viewpoints accompanied by an expert guide.",
        "schedule": {
          "morning": {
            "title": "Guided Tour of Big Ben",
            "description": "Early morning entry to Big Ben. Walk through central courtyards, ancient corridors, and historic halls."
          },
          "afternoon": {
            "title": "Boat Ride & Riverfront Exploration near London",
            "description": "Taste authentic local regional cuisine. Visit local artisan markets specializing in handcrafts native to United Kingdom."
          },
          "evening": {
            "title": "Sunset Viewpoint & Cultural Evening",
            "description": "Head to the highest scenic viewpoint overlooking Big Ben. Capture sunset photographs followed by evening entertainment."
          }
        },
        "details": {
          "importantTimings": "Guided Walk: 9:00 AM | Sunset Point Departure: 5:15 PM",
          "meals": "Complimentary Buffet Breakfast & Traditional Cuisine Lunch.",
          "transport": "AC Private Sedan / SUV",
          "walkingLevel": "Moderate (Historical walkways & corridors)",
          "stay": "Luxury Eco Lodge in London",
          "weather": "Crisp mountain climate, clear blue skies 19°C",
          "dressCode": "Comfortable daywear",
          "packingSuggestions": "Breathable linen wear, sunglasses, small currency notes for local shops.",
          "accessibility": "Assistive ramps available at main portals",
          "visitorNote": "Follow local heritage guidelines inside Big Ben.",
          "travelDuration": "Full day sightseeing approx 5 to 6 hours"
        }
      },
      {
        "day": 3,
        "title": "Excursion to Surrounding Landmarks of London",
        "location": "United Kingdom",
        "overview": "Expand your exploration with a day trip to surrounding heritage spots, sacred lakes, and craft villages near London.",
        "schedule": {
          "morning": {
            "title": "Heritage Excursion & Scenic Drive",
            "description": "Scenic drive through countryside roads surrounding London. Visit secondary monuments and historic watchtowers."
          },
          "afternoon": {
            "title": "Artisan Workshop & Traditional Lunch",
            "description": "Interact with local master craftsmen demonstrating native handloom weaving or stone carving. Enjoy traditional lunch."
          },
          "evening": {
            "title": "Twilight Promenade & Dinner",
            "description": "Enjoy a relaxed walk around the local market square. Purchase authentic local sweets and dinner."
          }
        },
        "details": {
          "importantTimings": "Excursion Departure: 9:00 AM",
          "meals": "Organic Farm-to-Table Breakfast & Seafood / Veg Dinner.",
          "transport": "AC Private Vehicle",
          "walkingLevel": "Easy Paced",
          "stay": "Luxury Eco Lodge in London",
          "weather": "Crisp mountain climate, clear blue skies 19°C",
          "dressCode": "Comfortable clothing",
          "packingSuggestions": "Sunhat, sunglasses, comfortable walking shoes, light jacket, camera.",
          "accessibility": "Accessible vehicles",
          "visitorNote": "Authentic souvenirs certified by local artisans.",
          "travelDuration": "Approx 4 hours excursion"
        }
      },
      {
        "day": 4,
        "title": "Souvenir Shopping & Onward Departure from London",
        "location": "London",
        "overview": "Conclude your trip to Big Ben with morning shopping for local delicacies and souvenirs, followed by departure transfer.",
        "schedule": {
          "morning": {
            "title": "Handicrafts & Sweet Market Visit",
            "description": "Visit trusted local bazaar stalls to buy regional spices, handmade crafts, and traditional sweets of London."
          },
          "afternoon": {
            "title": "Hotel Checkout & Farewell Lunch",
            "description": "Return to hotel for packing and checkout. Enjoy a farewell lunch before your transfer."
          },
          "evening": {
            "title": "Outbound Departure Transfer",
            "description": "Chauffeur drop to London Airport or Railway Station for your onward journey home."
          }
        },
        "details": {
          "importantTimings": "Checkout: 12:00 PM | Transfer: As per flight/train",
          "meals": "Breakfast & Farewell Lunch included.",
          "transport": "AC Private Transfer Vehicle",
          "walkingLevel": "Easy Paced",
          "stay": "N/A (Day of departure)",
          "weather": "Crisp mountain climate, clear blue skies 19°C",
          "dressCode": "Comfortable travel wear",
          "packingSuggestions": "Check-in luggage packed, photo ID ready.",
          "accessibility": "Accessible vehicles",
          "visitorNote": "Arrive at London station/airport 2 hours prior to departure.",
          "travelDuration": "Approx 1 hour transfer"
        }
      }
    ],
    "durationDays": 4,
    "durationLabel": "4 Days / 3 Nights",
    "travellerTypes": [
      "Families",
      "Couples"
    ],
    "accessibilityStatus": "Wheelchair Accessible",
    "childFriendly": true,
    "packageBenefits": [
      "Family Accommodation",
      "Local Sightseeing"
    ],
    "highlights": [
      "Guided heritage sightseeing of Big Ben landmarks",
      "Immersive cultural show and local market visits",
      "Delight in authentic regional delicacies"
    ],
    "tips": [
      "Carry sun protection (glasses/hat) for outdoor excursions.",
      "Keep local currency handy for local markets.",
      "Follow guidelines at heritage locations."
    ],
    "itinerarySummary": [
      "Day 1: Arrival in London: Riverside Aarti & Evening Tea",
      "Day 2: VIP Access to Big Ben",
      "Day 3: Excursion to Surrounding Landmarks of London",
      "Day 4: Souvenir Shopping & Onward Departure from London"
    ],
    "cancellationSummary": "Get a 100% full refund on cancellations made up to 15 days before the departure. Rescheduling options are fully flexible."
  },
  {
    "id": "family-burj-khalifa",
    "title": "Burj Khalifa",
    "destinationName": "Burj Khalifa",
    "destinations": "Burj Khalifa (Dubai, United Arab Emirates)",
    "location": "Dubai, United Arab Emirates",
    "route": [
      "Dubai",
      "Burj Khalifa"
    ],
    "mainCategory": "Family",
    "categoryLabel": "Family Tour",
    "category": "Family",
    "region": "International",
    "image": "/images/tourist-places/family/Burj Khalifa.jpg",
    "altText": "Burj Khalifa family tour destination in Dubai, United Arab Emirates",
    "duration": "4 Days / 3 Nights",
    "bestSeason": "Year-Round",
    "pace": "Easy",
    "travellerType": "Family Friendly",
    "description": "A thoughtfully planned family tour offering comfort, guidance, and a memorable experience.",
    "price": 24500,
    "rating": null,
    "reviewCount": null,
    "seatsLeft": null,
    "recentBookings": null,
    "verified": null,
    "tags": [
      "Family Tour",
      "Family Friendly"
    ],
    "seniorFriendly": true,
    "wheelchairAccess": true,
    "vegMeals": false,
    "inclusions": {
      "hotel": true,
      "meals": true,
      "transit": true,
      "guide": false,
      "entryPasses": false,
      "medicalSupport": false,
      "localExperience": false
    },
    "itinerary": [
      {
        "day": 1,
        "title": "Scenic Drive to Dubai & Burj Khalifa Gateway",
        "location": "Dubai",
        "overview": "Arrive in vibrant Dubai. Escorted transfer to Grand Riverfront Resort near Burj Khalifa. Spend your evening relaxing and sampling authentic local dishes.",
        "schedule": {
          "morning": {
            "title": "Arrival & Escorted Transfer in Dubai",
            "description": "Meet our local travel escort at Dubai transit hub. Receive a traditional welcome and transfer to Grand Riverfront Resort near Burj Khalifa."
          },
          "afternoon": {
            "title": "Unpack & Courtyard Leisure at Dubai",
            "description": "Check into your sanitized room, unpack your luggage, and enjoy quiet leisure time exploring hotel gardens and facilities."
          },
          "evening": {
            "title": "Skyline Sunset & Regional Delicacies at Burj Khalifa",
            "description": "Stroll through the bustling neighborhood of Burj Khalifa. Watch the sunset and savor a multi-course dinner."
          }
        },
        "details": {
          "importantTimings": "Boat Departure: 6:00 AM | Heritage Show: 7:00 PM",
          "meals": "Welcome Drink & Lavish Regional Buffet Dinner.",
          "transport": "AC Private Chauffeur Vehicle",
          "walkingLevel": "Easy Paced (Paved walkways)",
          "stay": "Grand Riverfront Resort near Burj Khalifa",
          "weather": "Refreshing river mist with mild sun 23°C",
          "dressCode": "Casual travel clothing & sunhat",
          "packingSuggestions": "Breathable linen wear, sunglasses, small currency notes for local shops.",
          "accessibility": "Wheelchair ramps & low step entry vehicle",
          "visitorNote": "Escort coordinator will brief you on timing for Burj Khalifa visit.",
          "travelDuration": "Approx 1 to 2 hours transfer"
        }
      },
      {
        "day": 2,
        "title": "Breakfast & Exploration of Burj Khalifa",
        "location": "Dubai",
        "overview": "A deep dive into Burj Khalifa. Tour inner sanctums, historical galleries, and architectural viewpoints accompanied by an expert guide.",
        "schedule": {
          "morning": {
            "title": "Guided Tour of Burj Khalifa",
            "description": "Early morning entry to Burj Khalifa. Walk through central courtyards, ancient corridors, and historic halls."
          },
          "afternoon": {
            "title": "Artisan Handloom Workshop & Souvenirs near Dubai",
            "description": "Taste authentic local regional cuisine. Visit local artisan markets specializing in handcrafts native to United Arab Emirates."
          },
          "evening": {
            "title": "Sunset Viewpoint & Cultural Evening",
            "description": "Head to the highest scenic viewpoint overlooking Burj Khalifa. Capture sunset photographs followed by evening entertainment."
          }
        },
        "details": {
          "importantTimings": "Boat Departure: 6:00 AM | Heritage Show: 7:00 PM",
          "meals": "Complimentary Buffet Breakfast & Traditional Cuisine Lunch.",
          "transport": "AC Private Sedan / SUV",
          "walkingLevel": "Moderate (Historical walkways & corridors)",
          "stay": "Grand Riverfront Resort near Burj Khalifa",
          "weather": "Refreshing river mist with mild sun 23°C",
          "dressCode": "Comfortable daywear",
          "packingSuggestions": "Sunhat, sunglasses, comfortable walking shoes, light jacket, camera.",
          "accessibility": "Assistive ramps available at main portals",
          "visitorNote": "Follow local heritage guidelines inside Burj Khalifa.",
          "travelDuration": "Full day sightseeing approx 5 to 6 hours"
        }
      },
      {
        "day": 3,
        "title": "Excursion to Surrounding Landmarks of Dubai",
        "location": "United Arab Emirates",
        "overview": "Expand your exploration with a day trip to surrounding heritage spots, sacred lakes, and craft villages near Dubai.",
        "schedule": {
          "morning": {
            "title": "Heritage Excursion & Scenic Drive",
            "description": "Scenic drive through countryside roads surrounding Dubai. Visit secondary monuments and historic watchtowers."
          },
          "afternoon": {
            "title": "Artisan Workshop & Traditional Lunch",
            "description": "Interact with local master craftsmen demonstrating native handloom weaving or stone carving. Enjoy traditional lunch."
          },
          "evening": {
            "title": "Twilight Promenade & Dinner",
            "description": "Enjoy a relaxed walk around the local market square. Purchase authentic local sweets and dinner."
          }
        },
        "details": {
          "importantTimings": "Excursion Departure: 9:00 AM",
          "meals": "Organic Farm-to-Table Breakfast & Seafood / Veg Dinner.",
          "transport": "AC Private Vehicle",
          "walkingLevel": "Easy Paced",
          "stay": "Grand Riverfront Resort near Burj Khalifa",
          "weather": "Refreshing river mist with mild sun 23°C",
          "dressCode": "Comfortable clothing",
          "packingSuggestions": "Traditional headscarf, slip-on shoes, reusable water bottle, dry bag.",
          "accessibility": "Accessible vehicles",
          "visitorNote": "Authentic souvenirs certified by local artisans.",
          "travelDuration": "Approx 4 hours excursion"
        }
      },
      {
        "day": 4,
        "title": "Souvenir Shopping & Onward Departure from Dubai",
        "location": "Dubai",
        "overview": "Conclude your trip to Burj Khalifa with morning shopping for local delicacies and souvenirs, followed by departure transfer.",
        "schedule": {
          "morning": {
            "title": "Handicrafts & Sweet Market Visit",
            "description": "Visit trusted local bazaar stalls to buy regional spices, handmade crafts, and traditional sweets of Dubai."
          },
          "afternoon": {
            "title": "Hotel Checkout & Farewell Lunch",
            "description": "Return to hotel for packing and checkout. Enjoy a farewell lunch before your transfer."
          },
          "evening": {
            "title": "Outbound Departure Transfer",
            "description": "Chauffeur drop to Dubai Airport or Railway Station for your onward journey home."
          }
        },
        "details": {
          "importantTimings": "Checkout: 12:00 PM | Transfer: As per flight/train",
          "meals": "Breakfast & Farewell Lunch included.",
          "transport": "AC Private Transfer Vehicle",
          "walkingLevel": "Easy Paced",
          "stay": "N/A (Day of departure)",
          "weather": "Refreshing river mist with mild sun 23°C",
          "dressCode": "Comfortable travel wear",
          "packingSuggestions": "Check-in luggage packed, photo ID ready.",
          "accessibility": "Accessible vehicles",
          "visitorNote": "Arrive at Dubai station/airport 2 hours prior to departure.",
          "travelDuration": "Approx 1 hour transfer"
        }
      }
    ],
    "durationDays": 4,
    "durationLabel": "4 Days / 3 Nights",
    "travellerTypes": [
      "Families",
      "Couples"
    ],
    "accessibilityStatus": "Wheelchair Accessible",
    "childFriendly": true,
    "packageBenefits": [
      "Family Accommodation",
      "Local Sightseeing"
    ],
    "highlights": [
      "Guided heritage sightseeing of Burj Khalifa landmarks",
      "Immersive cultural show and local market visits",
      "Delight in authentic regional delicacies"
    ],
    "tips": [
      "Carry sun protection (glasses/hat) for outdoor excursions.",
      "Keep local currency handy for local markets.",
      "Follow guidelines at heritage locations."
    ],
    "itinerarySummary": [
      "Day 1: Scenic Drive to Dubai & Burj Khalifa Gateway",
      "Day 2: Breakfast & Exploration of Burj Khalifa",
      "Day 3: Excursion to Surrounding Landmarks of Dubai",
      "Day 4: Souvenir Shopping & Onward Departure from Dubai"
    ],
    "cancellationSummary": "Get a 100% full refund on cancellations made up to 15 days before the departure. Rescheduling options are fully flexible."
  },
  {
    "id": "family-chitrakote-waterfalls",
    "title": "Chitrakote Waterfalls",
    "destinationName": "Chitrakote Waterfalls",
    "destinations": "Chitrakote Waterfalls (Bastar, Chhattisgarh)",
    "location": "Bastar, Chhattisgarh",
    "route": [
      "Bastar",
      "Chitrakote Waterfalls"
    ],
    "mainCategory": "Family",
    "categoryLabel": "Family Tour",
    "category": "Family",
    "region": "North India",
    "image": "/images/tourist-places/family/Chitrakote Waterfalls.jpg",
    "altText": "Chitrakote Waterfalls family tour destination in Bastar, Chhattisgarh",
    "duration": "4 Days / 3 Nights",
    "bestSeason": "July–September",
    "pace": "Active",
    "travellerType": "Family Friendly",
    "description": "A thoughtfully planned family tour offering comfort, guidance, and a memorable experience.",
    "price": 26000,
    "rating": null,
    "reviewCount": null,
    "seatsLeft": null,
    "recentBookings": null,
    "verified": null,
    "tags": [
      "Family Tour",
      "Family Friendly"
    ],
    "seniorFriendly": false,
    "wheelchairAccess": false,
    "vegMeals": false,
    "inclusions": {
      "hotel": true,
      "meals": true,
      "transit": true,
      "guide": true,
      "entryPasses": false,
      "medicalSupport": true,
      "localExperience": true
    },
    "itinerary": [
      {
        "day": 1,
        "title": "Arrival in Bastar: Candlelight Dinner & Courtyard Music",
        "location": "Bastar",
        "overview": "Arrive in vibrant Bastar. Escorted transfer to Vedic Pilgrim Ashram Stay in Bastar. Spend your evening relaxing and sampling authentic local dishes.",
        "schedule": {
          "morning": {
            "title": "Arrival & Escorted Transfer in Bastar",
            "description": "Meet our local travel escort at Bastar transit hub. Receive a traditional welcome and transfer to Vedic Pilgrim Ashram Stay in Bastar."
          },
          "afternoon": {
            "title": "Unpack & Courtyard Leisure at Bastar",
            "description": "Check into your sanitized room, unpack your luggage, and enjoy quiet leisure time exploring hotel gardens and facilities."
          },
          "evening": {
            "title": "Candlelight Dinner & Courtyard Music at Chitrakote Waterfalls",
            "description": "Stroll through the bustling neighborhood of Chitrakote Waterfalls. Watch the sunset and savor a multi-course dinner."
          }
        },
        "details": {
          "importantTimings": "Gate Entry: 8:00 AM | Evening Light Show: 6:30 PM",
          "meals": "Welcome Drink & Lavish Regional Buffet Dinner.",
          "transport": "AC Private Chauffeur Vehicle",
          "walkingLevel": "Easy Paced (Paved walkways)",
          "stay": "Vedic Pilgrim Ashram Stay in Bastar",
          "weather": "Pleasant breeze with sunny afternoon 24°C",
          "dressCode": "Casual travel clothing & sunhat",
          "packingSuggestions": "Sunhat, sunglasses, comfortable walking shoes, light jacket, camera.",
          "accessibility": "Wheelchair ramps & low step entry vehicle",
          "visitorNote": "Escort coordinator will brief you on timing for Chitrakote Waterfalls visit.",
          "travelDuration": "Approx 1 to 2 hours transfer"
        }
      },
      {
        "day": 2,
        "title": "Panoramic Discovery of Chitrakote Waterfalls",
        "location": "Bastar",
        "overview": "A deep dive into Chitrakote Waterfalls. Tour inner sanctums, historical galleries, and architectural viewpoints accompanied by an expert guide.",
        "schedule": {
          "morning": {
            "title": "Guided Tour of Chitrakote Waterfalls",
            "description": "Early morning entry to Chitrakote Waterfalls. Walk through central courtyards, ancient corridors, and historic halls."
          },
          "afternoon": {
            "title": "Scenic Valley Drive & Photo Stops near Bastar",
            "description": "Taste authentic local regional cuisine. Visit local artisan markets specializing in handcrafts native to Chhattisgarh."
          },
          "evening": {
            "title": "Sunset Viewpoint & Cultural Evening",
            "description": "Head to the highest scenic viewpoint overlooking Chitrakote Waterfalls. Capture sunset photographs followed by evening entertainment."
          }
        },
        "details": {
          "importantTimings": "Gate Entry: 8:00 AM | Evening Light Show: 6:30 PM",
          "meals": "Complimentary Buffet Breakfast & Traditional Cuisine Lunch.",
          "transport": "AC Private Sedan / SUV",
          "walkingLevel": "Moderate (Historical walkways & corridors)",
          "stay": "Vedic Pilgrim Ashram Stay in Bastar",
          "weather": "Pleasant breeze with sunny afternoon 24°C",
          "dressCode": "Comfortable daywear",
          "packingSuggestions": "Traditional headscarf, slip-on shoes, reusable water bottle, dry bag.",
          "accessibility": "Assistive ramps available at main portals",
          "visitorNote": "Follow local heritage guidelines inside Chitrakote Waterfalls.",
          "travelDuration": "Full day sightseeing approx 5 to 6 hours"
        }
      },
      {
        "day": 3,
        "title": "Excursion to Surrounding Landmarks of Bastar",
        "location": "Chhattisgarh",
        "overview": "Expand your exploration with a day trip to surrounding heritage spots, sacred lakes, and craft villages near Bastar.",
        "schedule": {
          "morning": {
            "title": "Heritage Excursion & Scenic Drive",
            "description": "Scenic drive through countryside roads surrounding Bastar. Visit secondary monuments and historic watchtowers."
          },
          "afternoon": {
            "title": "Artisan Workshop & Traditional Lunch",
            "description": "Interact with local master craftsmen demonstrating native handloom weaving or stone carving. Enjoy traditional lunch."
          },
          "evening": {
            "title": "Twilight Promenade & Dinner",
            "description": "Enjoy a relaxed walk around the local market square. Purchase authentic local sweets and dinner."
          }
        },
        "details": {
          "importantTimings": "Excursion Departure: 9:00 AM",
          "meals": "Organic Farm-to-Table Breakfast & Seafood / Veg Dinner.",
          "transport": "AC Private Vehicle",
          "walkingLevel": "Easy Paced",
          "stay": "Vedic Pilgrim Ashram Stay in Bastar",
          "weather": "Pleasant breeze with sunny afternoon 24°C",
          "dressCode": "Comfortable clothing",
          "packingSuggestions": "Light cotton wear, camera with telephoto lens, sunscreen lotion, photo ID.",
          "accessibility": "Accessible vehicles",
          "visitorNote": "Authentic souvenirs certified by local artisans.",
          "travelDuration": "Approx 4 hours excursion"
        }
      },
      {
        "day": 4,
        "title": "Souvenir Shopping & Onward Departure from Bastar",
        "location": "Bastar",
        "overview": "Conclude your trip to Chitrakote Waterfalls with morning shopping for local delicacies and souvenirs, followed by departure transfer.",
        "schedule": {
          "morning": {
            "title": "Handicrafts & Sweet Market Visit",
            "description": "Visit trusted local bazaar stalls to buy regional spices, handmade crafts, and traditional sweets of Bastar."
          },
          "afternoon": {
            "title": "Hotel Checkout & Farewell Lunch",
            "description": "Return to hotel for packing and checkout. Enjoy a farewell lunch before your transfer."
          },
          "evening": {
            "title": "Outbound Departure Transfer",
            "description": "Chauffeur drop to Bastar Airport or Railway Station for your onward journey home."
          }
        },
        "details": {
          "importantTimings": "Checkout: 12:00 PM | Transfer: As per flight/train",
          "meals": "Breakfast & Farewell Lunch included.",
          "transport": "AC Private Transfer Vehicle",
          "walkingLevel": "Easy Paced",
          "stay": "N/A (Day of departure)",
          "weather": "Pleasant breeze with sunny afternoon 24°C",
          "dressCode": "Comfortable travel wear",
          "packingSuggestions": "Check-in luggage packed, photo ID ready.",
          "accessibility": "Accessible vehicles",
          "visitorNote": "Arrive at Bastar station/airport 2 hours prior to departure.",
          "travelDuration": "Approx 1 hour transfer"
        }
      }
    ],
    "durationDays": 4,
    "durationLabel": "4 Days / 3 Nights",
    "travellerTypes": [
      "Nature Lovers",
      "Adventure Travellers"
    ],
    "accessibilityStatus": "Not Wheelchair Accessible",
    "childFriendly": false,
    "packageBenefits": [
      "Nature Guide",
      "Viewpoint Access"
    ],
    "highlights": [
      "Explore the scenic nature trails and waterfall routes in Chitrakote Waterfalls",
      "Breathtaking viewpoints and photo opportunities",
      "Guided trekking and outdoor activities"
    ],
    "tips": [
      "Wear sturdy, non-slip walking shoes.",
      "Carry a light raincoat or umbrella depending on the season.",
      "Stay well-hydrated during the walk."
    ],
    "itinerarySummary": [
      "Day 1: Arrival in Bastar: Candlelight Dinner & Courtyard Music",
      "Day 2: Panoramic Discovery of Chitrakote Waterfalls",
      "Day 3: Excursion to Surrounding Landmarks of Bastar",
      "Day 4: Souvenir Shopping & Onward Departure from Bastar"
    ],
    "cancellationSummary": "Get a 100% full refund on cancellations made up to 15 days before the departure. Rescheduling options are fully flexible."
  },
  {
    "id": "family-city-palace-udaipur",
    "title": "City Palace, Udaipur",
    "destinationName": "City Palace, Udaipur",
    "destinations": "City Palace, Udaipur (Udaipur, Rajasthan)",
    "location": "Udaipur, Rajasthan",
    "route": [
      "Udaipur",
      "City Palace, Udaipur"
    ],
    "mainCategory": "Family",
    "categoryLabel": "Family Tour",
    "category": "Family",
    "region": "North India",
    "image": "/images/tourist-places/family/City Palace, Udaipur.jpg",
    "altText": "City Palace, Udaipur family tour destination in Udaipur, Rajasthan",
    "duration": "4 Days / 3 Nights",
    "bestSeason": "October–March",
    "pace": "Moderate",
    "travellerType": "Family Friendly",
    "description": "A thoughtfully planned family tour offering comfort, guidance, and a memorable experience.",
    "price": 27500,
    "rating": null,
    "reviewCount": null,
    "seatsLeft": null,
    "recentBookings": null,
    "verified": null,
    "tags": [
      "Family Tour",
      "Family Friendly"
    ],
    "seniorFriendly": true,
    "wheelchairAccess": true,
    "vegMeals": false,
    "inclusions": {
      "hotel": true,
      "meals": true,
      "transit": true,
      "guide": true,
      "entryPasses": true,
      "medicalSupport": false,
      "localExperience": false
    },
    "itinerary": [
      {
        "day": 1,
        "title": "Beginning Your Journey in Udaipur & City Palace, Udaipur Gateway",
        "location": "Udaipur",
        "overview": "Arrive in vibrant Udaipur. Escorted transfer to Boutique Star Hotel in Udaipur. Spend your evening relaxing and sampling authentic local dishes.",
        "schedule": {
          "morning": {
            "title": "Arrival & Escorted Transfer in Udaipur",
            "description": "Meet our local travel escort at Udaipur transit hub. Receive a traditional welcome and transfer to Boutique Star Hotel in Udaipur."
          },
          "afternoon": {
            "title": "Unpack & Courtyard Leisure at Udaipur",
            "description": "Check into your sanitized room, unpack your luggage, and enjoy quiet leisure time exploring hotel gardens and facilities."
          },
          "evening": {
            "title": "Heritage Bazaar Promenade at City Palace, Udaipur",
            "description": "Stroll through the bustling neighborhood of City Palace, Udaipur. Watch the sunset and savor a multi-course dinner."
          }
        },
        "details": {
          "importantTimings": "Sanctum VIP Slot: 6:30 AM | Bazaar Hours: 4:00 PM - 8:30 PM",
          "meals": "Welcome Drink & Lavish Regional Buffet Dinner.",
          "transport": "AC Private Chauffeur Vehicle",
          "walkingLevel": "Easy Paced (Paved walkways)",
          "stay": "Boutique Star Hotel in Udaipur",
          "weather": "Cool crisp morning fog clearing to bright 22°C",
          "dressCode": "Casual travel clothing & sunhat",
          "packingSuggestions": "Traditional headscarf, slip-on shoes, reusable water bottle, dry bag.",
          "accessibility": "Wheelchair ramps & low step entry vehicle",
          "visitorNote": "Escort coordinator will brief you on timing for City Palace, Udaipur visit.",
          "travelDuration": "Approx 1 to 2 hours transfer"
        }
      },
      {
        "day": 2,
        "title": "Uncovering the Secrets of City Palace, Udaipur",
        "location": "Udaipur",
        "overview": "A deep dive into City Palace, Udaipur. Tour inner sanctums, historical galleries, and architectural viewpoints accompanied by an expert guide.",
        "schedule": {
          "morning": {
            "title": "Guided Tour of City Palace, Udaipur",
            "description": "Early morning entry to City Palace, Udaipur. Walk through central courtyards, ancient corridors, and historic halls."
          },
          "afternoon": {
            "title": "Sacred Shrine Darshan & Temple Complex near Udaipur",
            "description": "Taste authentic local regional cuisine. Visit local artisan markets specializing in handcrafts native to Rajasthan."
          },
          "evening": {
            "title": "Sunset Viewpoint & Cultural Evening",
            "description": "Head to the highest scenic viewpoint overlooking City Palace, Udaipur. Capture sunset photographs followed by evening entertainment."
          }
        },
        "details": {
          "importantTimings": "Sanctum VIP Slot: 6:30 AM | Bazaar Hours: 4:00 PM - 8:30 PM",
          "meals": "Complimentary Buffet Breakfast & Traditional Cuisine Lunch.",
          "transport": "AC Private Sedan / SUV",
          "walkingLevel": "Moderate (Historical walkways & corridors)",
          "stay": "Boutique Star Hotel in Udaipur",
          "weather": "Cool crisp morning fog clearing to bright 22°C",
          "dressCode": "Comfortable daywear",
          "packingSuggestions": "Light cotton wear, camera with telephoto lens, sunscreen lotion, photo ID.",
          "accessibility": "Assistive ramps available at main portals",
          "visitorNote": "Follow local heritage guidelines inside City Palace, Udaipur.",
          "travelDuration": "Full day sightseeing approx 5 to 6 hours"
        }
      },
      {
        "day": 3,
        "title": "Excursion to Surrounding Landmarks of Udaipur",
        "location": "Rajasthan",
        "overview": "Expand your exploration with a day trip to surrounding heritage spots, sacred lakes, and craft villages near Udaipur.",
        "schedule": {
          "morning": {
            "title": "Heritage Excursion & Scenic Drive",
            "description": "Scenic drive through countryside roads surrounding Udaipur. Visit secondary monuments and historic watchtowers."
          },
          "afternoon": {
            "title": "Artisan Workshop & Traditional Lunch",
            "description": "Interact with local master craftsmen demonstrating native handloom weaving or stone carving. Enjoy traditional lunch."
          },
          "evening": {
            "title": "Twilight Promenade & Dinner",
            "description": "Enjoy a relaxed walk around the local market square. Purchase authentic local sweets and dinner."
          }
        },
        "details": {
          "importantTimings": "Excursion Departure: 9:00 AM",
          "meals": "Organic Farm-to-Table Breakfast & Seafood / Veg Dinner.",
          "transport": "AC Private Vehicle",
          "walkingLevel": "Easy Paced",
          "stay": "Boutique Star Hotel in Udaipur",
          "weather": "Cool crisp morning fog clearing to bright 22°C",
          "dressCode": "Comfortable clothing",
          "packingSuggestions": "Comfortable walking socks, power bank, shoulder shawl, daypack.",
          "accessibility": "Accessible vehicles",
          "visitorNote": "Authentic souvenirs certified by local artisans.",
          "travelDuration": "Approx 4 hours excursion"
        }
      },
      {
        "day": 4,
        "title": "Souvenir Shopping & Onward Departure from Udaipur",
        "location": "Udaipur",
        "overview": "Conclude your trip to City Palace, Udaipur with morning shopping for local delicacies and souvenirs, followed by departure transfer.",
        "schedule": {
          "morning": {
            "title": "Handicrafts & Sweet Market Visit",
            "description": "Visit trusted local bazaar stalls to buy regional spices, handmade crafts, and traditional sweets of Udaipur."
          },
          "afternoon": {
            "title": "Hotel Checkout & Farewell Lunch",
            "description": "Return to hotel for packing and checkout. Enjoy a farewell lunch before your transfer."
          },
          "evening": {
            "title": "Outbound Departure Transfer",
            "description": "Chauffeur drop to Udaipur Airport or Railway Station for your onward journey home."
          }
        },
        "details": {
          "importantTimings": "Checkout: 12:00 PM | Transfer: As per flight/train",
          "meals": "Breakfast & Farewell Lunch included.",
          "transport": "AC Private Transfer Vehicle",
          "walkingLevel": "Easy Paced",
          "stay": "N/A (Day of departure)",
          "weather": "Cool crisp morning fog clearing to bright 22°C",
          "dressCode": "Comfortable travel wear",
          "packingSuggestions": "Check-in luggage packed, photo ID ready.",
          "accessibility": "Accessible vehicles",
          "visitorNote": "Arrive at Udaipur station/airport 2 hours prior to departure.",
          "travelDuration": "Approx 1 hour transfer"
        }
      }
    ],
    "durationDays": 4,
    "durationLabel": "4 Days / 3 Nights",
    "travellerTypes": [
      "History Lovers",
      "Families"
    ],
    "accessibilityStatus": "Partial Accessibility",
    "childFriendly": true,
    "packageBenefits": [
      "Heritage Guide",
      "Monument Entry Assistance"
    ],
    "highlights": [
      "Guided heritage sightseeing of City Palace, Udaipur landmarks",
      "Immersive cultural show and local market visits",
      "Delight in authentic regional delicacies"
    ],
    "tips": [
      "Carry sun protection (glasses/hat) for outdoor excursions.",
      "Keep local currency handy for local markets.",
      "Follow guidelines at heritage locations."
    ],
    "itinerarySummary": [
      "Day 1: Beginning Your Journey in Udaipur & City Palace, Udaipur Gateway",
      "Day 2: Uncovering the Secrets of City Palace, Udaipur",
      "Day 3: Excursion to Surrounding Landmarks of Udaipur",
      "Day 4: Souvenir Shopping & Onward Departure from Udaipur"
    ],
    "cancellationSummary": "Get a 100% full refund on cancellations made up to 15 days before the departure. Rescheduling options are fully flexible."
  },
  {
    "id": "family-colosseum",
    "title": "Colosseum",
    "destinationName": "Colosseum",
    "destinations": "Colosseum (Rome, Italy)",
    "location": "Rome, Italy",
    "route": [
      "Rome",
      "Colosseum"
    ],
    "mainCategory": "Family",
    "categoryLabel": "Family Tour",
    "category": "Family",
    "region": "International",
    "image": "/images/tourist-places/family/Colosseum.jpg",
    "altText": "Colosseum family tour destination in Rome, Italy",
    "duration": "4 Days / 3 Nights",
    "bestSeason": "October–March",
    "pace": "Easy",
    "travellerType": "Family Friendly",
    "description": "A thoughtfully planned family tour offering comfort, guidance, and a memorable experience.",
    "price": 29000,
    "rating": null,
    "reviewCount": null,
    "seatsLeft": null,
    "recentBookings": null,
    "verified": null,
    "tags": [
      "Family Tour",
      "Family Friendly"
    ],
    "seniorFriendly": true,
    "wheelchairAccess": true,
    "vegMeals": false,
    "inclusions": {
      "hotel": true,
      "meals": true,
      "transit": true,
      "guide": false,
      "entryPasses": false,
      "medicalSupport": false,
      "localExperience": false
    },
    "itinerary": [
      {
        "day": 1,
        "title": "Arrival in Rome: Panoramic Terrace Lounge Session",
        "location": "Rome",
        "overview": "Arrive in vibrant Rome. Escorted transfer to Hilltop Panorama Resort near Colosseum. Spend your evening relaxing and sampling authentic local dishes.",
        "schedule": {
          "morning": {
            "title": "Arrival & Escorted Transfer in Rome",
            "description": "Meet our local travel escort at Rome transit hub. Receive a traditional welcome and transfer to Hilltop Panorama Resort near Colosseum."
          },
          "afternoon": {
            "title": "Unpack & Courtyard Leisure at Rome",
            "description": "Check into your sanitized room, unpack your luggage, and enjoy quiet leisure time exploring hotel gardens and facilities."
          },
          "evening": {
            "title": "Panoramic Terrace Lounge Session at Colosseum",
            "description": "Stroll through the bustling neighborhood of Colosseum. Watch the sunset and savor a multi-course dinner."
          }
        },
        "details": {
          "importantTimings": "Sunrise Tour: 5:45 AM | Museum Hours: 9:30 AM - 5:00 PM",
          "meals": "Welcome Drink & Lavish Regional Buffet Dinner.",
          "transport": "AC Private Chauffeur Vehicle",
          "walkingLevel": "Easy Paced (Paved walkways)",
          "stay": "Hilltop Panorama Resort near Colosseum",
          "weather": "Warm tropical sunshine with ocean breeze 27°C",
          "dressCode": "Casual travel clothing & sunhat",
          "packingSuggestions": "Light cotton wear, camera with telephoto lens, sunscreen lotion, photo ID.",
          "accessibility": "Wheelchair ramps & low step entry vehicle",
          "visitorNote": "Escort coordinator will brief you on timing for Colosseum visit.",
          "travelDuration": "Approx 1 to 2 hours transfer"
        }
      },
      {
        "day": 2,
        "title": "Spiritual Morning Prayers at Colosseum",
        "location": "Rome",
        "overview": "A deep dive into Colosseum. Tour inner sanctums, historical galleries, and architectural viewpoints accompanied by an expert guide.",
        "schedule": {
          "morning": {
            "title": "Guided Tour of Colosseum",
            "description": "Early morning entry to Colosseum. Walk through central courtyards, ancient corridors, and historic halls."
          },
          "afternoon": {
            "title": "Coastal Promenade & Beach Relax near Rome",
            "description": "Taste authentic local regional cuisine. Visit local artisan markets specializing in handcrafts native to Italy."
          },
          "evening": {
            "title": "Sunset Viewpoint & Cultural Evening",
            "description": "Head to the highest scenic viewpoint overlooking Colosseum. Capture sunset photographs followed by evening entertainment."
          }
        },
        "details": {
          "importantTimings": "Sunrise Tour: 5:45 AM | Museum Hours: 9:30 AM - 5:00 PM",
          "meals": "Complimentary Buffet Breakfast & Traditional Cuisine Lunch.",
          "transport": "AC Private Sedan / SUV",
          "walkingLevel": "Moderate (Historical walkways & corridors)",
          "stay": "Hilltop Panorama Resort near Colosseum",
          "weather": "Warm tropical sunshine with ocean breeze 27°C",
          "dressCode": "Comfortable daywear",
          "packingSuggestions": "Comfortable walking socks, power bank, shoulder shawl, daypack.",
          "accessibility": "Assistive ramps available at main portals",
          "visitorNote": "Follow local heritage guidelines inside Colosseum.",
          "travelDuration": "Full day sightseeing approx 5 to 6 hours"
        }
      },
      {
        "day": 3,
        "title": "Excursion to Surrounding Landmarks of Rome",
        "location": "Italy",
        "overview": "Expand your exploration with a day trip to surrounding heritage spots, sacred lakes, and craft villages near Rome.",
        "schedule": {
          "morning": {
            "title": "Heritage Excursion & Scenic Drive",
            "description": "Scenic drive through countryside roads surrounding Rome. Visit secondary monuments and historic watchtowers."
          },
          "afternoon": {
            "title": "Artisan Workshop & Traditional Lunch",
            "description": "Interact with local master craftsmen demonstrating native handloom weaving or stone carving. Enjoy traditional lunch."
          },
          "evening": {
            "title": "Twilight Promenade & Dinner",
            "description": "Enjoy a relaxed walk around the local market square. Purchase authentic local sweets and dinner."
          }
        },
        "details": {
          "importantTimings": "Excursion Departure: 9:00 AM",
          "meals": "Organic Farm-to-Table Breakfast & Seafood / Veg Dinner.",
          "transport": "AC Private Vehicle",
          "walkingLevel": "Easy Paced",
          "stay": "Hilltop Panorama Resort near Colosseum",
          "weather": "Warm tropical sunshine with ocean breeze 27°C",
          "dressCode": "Comfortable clothing",
          "packingSuggestions": "Breathable linen wear, sunglasses, small currency notes for local shops.",
          "accessibility": "Accessible vehicles",
          "visitorNote": "Authentic souvenirs certified by local artisans.",
          "travelDuration": "Approx 4 hours excursion"
        }
      },
      {
        "day": 4,
        "title": "Souvenir Shopping & Onward Departure from Rome",
        "location": "Rome",
        "overview": "Conclude your trip to Colosseum with morning shopping for local delicacies and souvenirs, followed by departure transfer.",
        "schedule": {
          "morning": {
            "title": "Handicrafts & Sweet Market Visit",
            "description": "Visit trusted local bazaar stalls to buy regional spices, handmade crafts, and traditional sweets of Rome."
          },
          "afternoon": {
            "title": "Hotel Checkout & Farewell Lunch",
            "description": "Return to hotel for packing and checkout. Enjoy a farewell lunch before your transfer."
          },
          "evening": {
            "title": "Outbound Departure Transfer",
            "description": "Chauffeur drop to Rome Airport or Railway Station for your onward journey home."
          }
        },
        "details": {
          "importantTimings": "Checkout: 12:00 PM | Transfer: As per flight/train",
          "meals": "Breakfast & Farewell Lunch included.",
          "transport": "AC Private Transfer Vehicle",
          "walkingLevel": "Easy Paced",
          "stay": "N/A (Day of departure)",
          "weather": "Warm tropical sunshine with ocean breeze 27°C",
          "dressCode": "Comfortable travel wear",
          "packingSuggestions": "Check-in luggage packed, photo ID ready.",
          "accessibility": "Accessible vehicles",
          "visitorNote": "Arrive at Rome station/airport 2 hours prior to departure.",
          "travelDuration": "Approx 1 hour transfer"
        }
      }
    ],
    "durationDays": 4,
    "durationLabel": "4 Days / 3 Nights",
    "travellerTypes": [
      "Families",
      "Couples"
    ],
    "accessibilityStatus": "Wheelchair Accessible",
    "childFriendly": true,
    "packageBenefits": [
      "Family Accommodation",
      "Local Sightseeing"
    ],
    "highlights": [
      "Guided heritage sightseeing of Colosseum landmarks",
      "Immersive cultural show and local market visits",
      "Delight in authentic regional delicacies"
    ],
    "tips": [
      "Carry sun protection (glasses/hat) for outdoor excursions.",
      "Keep local currency handy for local markets.",
      "Follow guidelines at heritage locations."
    ],
    "itinerarySummary": [
      "Day 1: Arrival in Rome: Panoramic Terrace Lounge Session",
      "Day 2: Spiritual Morning Prayers at Colosseum",
      "Day 3: Excursion to Surrounding Landmarks of Rome",
      "Day 4: Souvenir Shopping & Onward Departure from Rome"
    ],
    "cancellationSummary": "Get a 100% full refund on cancellations made up to 15 days before the departure. Rescheduling options are fully flexible."
  },
  {
    "id": "family-dawki-river-umngot-river",
    "title": "Dawki River",
    "destinationName": "Dawki River",
    "destinations": "Dawki River (West Jaintia Hills, Meghalaya)",
    "location": "West Jaintia Hills, Meghalaya",
    "route": [
      "West Jaintia Hills",
      "Dawki River"
    ],
    "mainCategory": "Family",
    "categoryLabel": "Family Tour",
    "category": "Family",
    "region": "North India",
    "image": "/images/tourist-places/family/Dawki River (Umngot River).webp",
    "altText": "Dawki River family tour destination in West Jaintia Hills, Meghalaya",
    "duration": "4 Days / 3 Nights",
    "bestSeason": "October–March",
    "pace": "Easy",
    "travellerType": "Family Friendly",
    "description": "A thoughtfully planned family tour offering comfort, guidance, and a memorable experience.",
    "price": 18500,
    "rating": null,
    "reviewCount": null,
    "seatsLeft": null,
    "recentBookings": null,
    "verified": null,
    "tags": [
      "Family Tour",
      "Family Friendly"
    ],
    "seniorFriendly": true,
    "wheelchairAccess": true,
    "vegMeals": false,
    "inclusions": {
      "hotel": true,
      "meals": true,
      "transit": true,
      "guide": false,
      "entryPasses": false,
      "medicalSupport": false,
      "localExperience": false
    },
    "itinerary": [
      {
        "day": 1,
        "title": "Spiritual Welcome to West Jaintia Hills & Dawki River Gateway",
        "location": "West Jaintia Hills",
        "overview": "Arrive in vibrant West Jaintia Hills. Escorted transfer to Heritage Palace Resort overlooking Dawki River. Spend your evening relaxing and sampling authentic local dishes.",
        "schedule": {
          "morning": {
            "title": "Arrival & Escorted Transfer in West Jaintia Hills",
            "description": "Meet our local travel escort at West Jaintia Hills transit hub. Receive a traditional welcome and transfer to Heritage Palace Resort overlooking Dawki River."
          },
          "afternoon": {
            "title": "Unpack & Courtyard Leisure at West Jaintia Hills",
            "description": "Check into your sanitized room, unpack your luggage, and enjoy quiet leisure time exploring hotel gardens and facilities."
          },
          "evening": {
            "title": "Lakeside Stroll & Local Cuisine at Dawki River",
            "description": "Stroll through the bustling neighborhood of Dawki River. Watch the sunset and savor a multi-course dinner."
          }
        },
        "details": {
          "importantTimings": "Guided Walk: 9:00 AM | Sunset Point Departure: 5:15 PM",
          "meals": "Welcome Drink & Lavish Regional Buffet Dinner.",
          "transport": "AC Private Chauffeur Vehicle",
          "walkingLevel": "Easy Paced (Paved walkways)",
          "stay": "Heritage Palace Resort overlooking Dawki River",
          "weather": "Crisp mountain climate, clear blue skies 19°C",
          "dressCode": "Casual travel clothing & sunhat",
          "packingSuggestions": "Comfortable walking socks, power bank, shoulder shawl, daypack.",
          "accessibility": "Wheelchair ramps & low step entry vehicle",
          "visitorNote": "Escort coordinator will brief you on timing for Dawki River visit.",
          "travelDuration": "Approx 1 to 2 hours transfer"
        }
      },
      {
        "day": 2,
        "title": "Architectural Tour of Dawki River",
        "location": "West Jaintia Hills",
        "overview": "A deep dive into Dawki River. Tour inner sanctums, historical galleries, and architectural viewpoints accompanied by an expert guide.",
        "schedule": {
          "morning": {
            "title": "Guided Tour of Dawki River",
            "description": "Early morning entry to Dawki River. Walk through central courtyards, ancient corridors, and historic halls."
          },
          "afternoon": {
            "title": "Culinary Tasting & Local Artisan Crafts near West Jaintia Hills",
            "description": "Taste authentic local regional cuisine. Visit local artisan markets specializing in handcrafts native to Meghalaya."
          },
          "evening": {
            "title": "Sunset Viewpoint & Cultural Evening",
            "description": "Head to the highest scenic viewpoint overlooking Dawki River. Capture sunset photographs followed by evening entertainment."
          }
        },
        "details": {
          "importantTimings": "Guided Walk: 9:00 AM | Sunset Point Departure: 5:15 PM",
          "meals": "Complimentary Buffet Breakfast & Traditional Cuisine Lunch.",
          "transport": "AC Private Sedan / SUV",
          "walkingLevel": "Moderate (Historical walkways & corridors)",
          "stay": "Heritage Palace Resort overlooking Dawki River",
          "weather": "Crisp mountain climate, clear blue skies 19°C",
          "dressCode": "Comfortable daywear",
          "packingSuggestions": "Breathable linen wear, sunglasses, small currency notes for local shops.",
          "accessibility": "Assistive ramps available at main portals",
          "visitorNote": "Follow local heritage guidelines inside Dawki River.",
          "travelDuration": "Full day sightseeing approx 5 to 6 hours"
        }
      },
      {
        "day": 3,
        "title": "Excursion to Surrounding Landmarks of West Jaintia Hills",
        "location": "Meghalaya",
        "overview": "Expand your exploration with a day trip to surrounding heritage spots, sacred lakes, and craft villages near West Jaintia Hills.",
        "schedule": {
          "morning": {
            "title": "Heritage Excursion & Scenic Drive",
            "description": "Scenic drive through countryside roads surrounding West Jaintia Hills. Visit secondary monuments and historic watchtowers."
          },
          "afternoon": {
            "title": "Artisan Workshop & Traditional Lunch",
            "description": "Interact with local master craftsmen demonstrating native handloom weaving or stone carving. Enjoy traditional lunch."
          },
          "evening": {
            "title": "Twilight Promenade & Dinner",
            "description": "Enjoy a relaxed walk around the local market square. Purchase authentic local sweets and dinner."
          }
        },
        "details": {
          "importantTimings": "Excursion Departure: 9:00 AM",
          "meals": "Organic Farm-to-Table Breakfast & Seafood / Veg Dinner.",
          "transport": "AC Private Vehicle",
          "walkingLevel": "Easy Paced",
          "stay": "Heritage Palace Resort overlooking Dawki River",
          "weather": "Crisp mountain climate, clear blue skies 19°C",
          "dressCode": "Comfortable clothing",
          "packingSuggestions": "Sunhat, sunglasses, comfortable walking shoes, light jacket, camera.",
          "accessibility": "Accessible vehicles",
          "visitorNote": "Authentic souvenirs certified by local artisans.",
          "travelDuration": "Approx 4 hours excursion"
        }
      },
      {
        "day": 4,
        "title": "Souvenir Shopping & Onward Departure from West Jaintia Hills",
        "location": "West Jaintia Hills",
        "overview": "Conclude your trip to Dawki River with morning shopping for local delicacies and souvenirs, followed by departure transfer.",
        "schedule": {
          "morning": {
            "title": "Handicrafts & Sweet Market Visit",
            "description": "Visit trusted local bazaar stalls to buy regional spices, handmade crafts, and traditional sweets of West Jaintia Hills."
          },
          "afternoon": {
            "title": "Hotel Checkout & Farewell Lunch",
            "description": "Return to hotel for packing and checkout. Enjoy a farewell lunch before your transfer."
          },
          "evening": {
            "title": "Outbound Departure Transfer",
            "description": "Chauffeur drop to West Jaintia Hills Airport or Railway Station for your onward journey home."
          }
        },
        "details": {
          "importantTimings": "Checkout: 12:00 PM | Transfer: As per flight/train",
          "meals": "Breakfast & Farewell Lunch included.",
          "transport": "AC Private Transfer Vehicle",
          "walkingLevel": "Easy Paced",
          "stay": "N/A (Day of departure)",
          "weather": "Crisp mountain climate, clear blue skies 19°C",
          "dressCode": "Comfortable travel wear",
          "packingSuggestions": "Check-in luggage packed, photo ID ready.",
          "accessibility": "Accessible vehicles",
          "visitorNote": "Arrive at West Jaintia Hills station/airport 2 hours prior to departure.",
          "travelDuration": "Approx 1 hour transfer"
        }
      }
    ],
    "durationDays": 4,
    "durationLabel": "4 Days / 3 Nights",
    "travellerTypes": [
      "Families",
      "Couples"
    ],
    "accessibilityStatus": "Accessibility on Request",
    "childFriendly": true,
    "packageBenefits": [
      "Family Accommodation",
      "Local Sightseeing"
    ],
    "highlights": [
      "Guided heritage sightseeing of Dawki River landmarks",
      "Immersive cultural show and local market visits",
      "Delight in authentic regional delicacies"
    ],
    "tips": [
      "Carry sun protection (glasses/hat) for outdoor excursions.",
      "Keep local currency handy for local markets.",
      "Follow guidelines at heritage locations."
    ],
    "itinerarySummary": [
      "Day 1: Spiritual Welcome to West Jaintia Hills & Dawki River Gateway",
      "Day 2: Architectural Tour of Dawki River",
      "Day 3: Excursion to Surrounding Landmarks of West Jaintia Hills",
      "Day 4: Souvenir Shopping & Onward Departure from West Jaintia Hills"
    ],
    "cancellationSummary": "Get a 100% full refund on cancellations made up to 15 days before the departure. Rescheduling options are fully flexible."
  },
  {
    "id": "family-disneyland-paris",
    "title": "Disneyland Paris",
    "destinationName": "Disneyland Paris",
    "destinations": "Disneyland Paris (Marne-la-Vallée, France)",
    "location": "Marne-la-Vallée, France",
    "route": [
      "Marne-la-Vallée",
      "Disneyland Paris"
    ],
    "mainCategory": "Family",
    "categoryLabel": "Family Tour",
    "category": "Family",
    "region": "International",
    "image": "/images/tourist-places/family/Disneyland Paris.webp",
    "altText": "Disneyland Paris family tour destination in Marne-la-Vallée, France",
    "duration": "4 Days / 3 Nights",
    "bestSeason": "October–March",
    "pace": "Easy",
    "travellerType": "Family Friendly",
    "description": "A thoughtfully planned family tour offering comfort, guidance, and a memorable experience.",
    "price": 20000,
    "rating": null,
    "reviewCount": null,
    "seatsLeft": null,
    "recentBookings": null,
    "verified": null,
    "tags": [
      "Family Tour",
      "Family Friendly"
    ],
    "seniorFriendly": true,
    "wheelchairAccess": true,
    "vegMeals": false,
    "inclusions": {
      "hotel": true,
      "meals": true,
      "transit": true,
      "guide": false,
      "entryPasses": false,
      "medicalSupport": false,
      "localExperience": false
    },
    "itinerary": [
      {
        "day": 1,
        "title": "Arrival in Marne-la-Vallée: Traditional Ceremony & Quiet Reflection",
        "location": "Marne-la-Vallée",
        "overview": "Arrive in vibrant Marne-la-Vallée. Escorted transfer to Boutique Lakefront Haveli in Marne-la-Vallée. Spend your evening relaxing and sampling authentic local dishes.",
        "schedule": {
          "morning": {
            "title": "Arrival & Escorted Transfer in Marne-la-Vallée",
            "description": "Meet our local travel escort at Marne-la-Vallée transit hub. Receive a traditional welcome and transfer to Boutique Lakefront Haveli in Marne-la-Vallée."
          },
          "afternoon": {
            "title": "Unpack & Courtyard Leisure at Marne-la-Vallée",
            "description": "Check into your sanitized room, unpack your luggage, and enjoy quiet leisure time exploring hotel gardens and facilities."
          },
          "evening": {
            "title": "Traditional Ceremony & Quiet Reflection at Disneyland Paris",
            "description": "Stroll through the bustling neighborhood of Disneyland Paris. Watch the sunset and savor a multi-course dinner."
          }
        },
        "details": {
          "importantTimings": "Boat Departure: 6:00 AM | Heritage Show: 7:00 PM",
          "meals": "Welcome Drink & Lavish Regional Buffet Dinner.",
          "transport": "AC Private Chauffeur Vehicle",
          "walkingLevel": "Easy Paced (Paved walkways)",
          "stay": "Boutique Lakefront Haveli in Marne-la-Vallée",
          "weather": "Refreshing river mist with mild sun 23°C",
          "dressCode": "Casual travel clothing & sunhat",
          "packingSuggestions": "Breathable linen wear, sunglasses, small currency notes for local shops.",
          "accessibility": "Wheelchair ramps & low step entry vehicle",
          "visitorNote": "Escort coordinator will brief you on timing for Disneyland Paris visit.",
          "travelDuration": "Approx 1 to 2 hours transfer"
        }
      },
      {
        "day": 2,
        "title": "Dawn Guided Expedition of Disneyland Paris",
        "location": "Marne-la-Vallée",
        "overview": "A deep dive into Disneyland Paris. Tour inner sanctums, historical galleries, and architectural viewpoints accompanied by an expert guide.",
        "schedule": {
          "morning": {
            "title": "Guided Tour of Disneyland Paris",
            "description": "Early morning entry to Disneyland Paris. Walk through central courtyards, ancient corridors, and historic halls."
          },
          "afternoon": {
            "title": "Excursion to Surrounding Haveli & Gardens near Marne-la-Vallée",
            "description": "Taste authentic local regional cuisine. Visit local artisan markets specializing in handcrafts native to France."
          },
          "evening": {
            "title": "Sunset Viewpoint & Cultural Evening",
            "description": "Head to the highest scenic viewpoint overlooking Disneyland Paris. Capture sunset photographs followed by evening entertainment."
          }
        },
        "details": {
          "importantTimings": "Boat Departure: 6:00 AM | Heritage Show: 7:00 PM",
          "meals": "Complimentary Buffet Breakfast & Traditional Cuisine Lunch.",
          "transport": "AC Private Sedan / SUV",
          "walkingLevel": "Moderate (Historical walkways & corridors)",
          "stay": "Boutique Lakefront Haveli in Marne-la-Vallée",
          "weather": "Refreshing river mist with mild sun 23°C",
          "dressCode": "Comfortable daywear",
          "packingSuggestions": "Sunhat, sunglasses, comfortable walking shoes, light jacket, camera.",
          "accessibility": "Assistive ramps available at main portals",
          "visitorNote": "Follow local heritage guidelines inside Disneyland Paris.",
          "travelDuration": "Full day sightseeing approx 5 to 6 hours"
        }
      },
      {
        "day": 3,
        "title": "Excursion to Surrounding Landmarks of Marne-la-Vallée",
        "location": "France",
        "overview": "Expand your exploration with a day trip to surrounding heritage spots, sacred lakes, and craft villages near Marne-la-Vallée.",
        "schedule": {
          "morning": {
            "title": "Heritage Excursion & Scenic Drive",
            "description": "Scenic drive through countryside roads surrounding Marne-la-Vallée. Visit secondary monuments and historic watchtowers."
          },
          "afternoon": {
            "title": "Artisan Workshop & Traditional Lunch",
            "description": "Interact with local master craftsmen demonstrating native handloom weaving or stone carving. Enjoy traditional lunch."
          },
          "evening": {
            "title": "Twilight Promenade & Dinner",
            "description": "Enjoy a relaxed walk around the local market square. Purchase authentic local sweets and dinner."
          }
        },
        "details": {
          "importantTimings": "Excursion Departure: 9:00 AM",
          "meals": "Organic Farm-to-Table Breakfast & Seafood / Veg Dinner.",
          "transport": "AC Private Vehicle",
          "walkingLevel": "Easy Paced",
          "stay": "Boutique Lakefront Haveli in Marne-la-Vallée",
          "weather": "Refreshing river mist with mild sun 23°C",
          "dressCode": "Comfortable clothing",
          "packingSuggestions": "Traditional headscarf, slip-on shoes, reusable water bottle, dry bag.",
          "accessibility": "Accessible vehicles",
          "visitorNote": "Authentic souvenirs certified by local artisans.",
          "travelDuration": "Approx 4 hours excursion"
        }
      },
      {
        "day": 4,
        "title": "Souvenir Shopping & Onward Departure from Marne-la-Vallée",
        "location": "Marne-la-Vallée",
        "overview": "Conclude your trip to Disneyland Paris with morning shopping for local delicacies and souvenirs, followed by departure transfer.",
        "schedule": {
          "morning": {
            "title": "Handicrafts & Sweet Market Visit",
            "description": "Visit trusted local bazaar stalls to buy regional spices, handmade crafts, and traditional sweets of Marne-la-Vallée."
          },
          "afternoon": {
            "title": "Hotel Checkout & Farewell Lunch",
            "description": "Return to hotel for packing and checkout. Enjoy a farewell lunch before your transfer."
          },
          "evening": {
            "title": "Outbound Departure Transfer",
            "description": "Chauffeur drop to Marne-la-Vallée Airport or Railway Station for your onward journey home."
          }
        },
        "details": {
          "importantTimings": "Checkout: 12:00 PM | Transfer: As per flight/train",
          "meals": "Breakfast & Farewell Lunch included.",
          "transport": "AC Private Transfer Vehicle",
          "walkingLevel": "Easy Paced",
          "stay": "N/A (Day of departure)",
          "weather": "Refreshing river mist with mild sun 23°C",
          "dressCode": "Comfortable travel wear",
          "packingSuggestions": "Check-in luggage packed, photo ID ready.",
          "accessibility": "Accessible vehicles",
          "visitorNote": "Arrive at Marne-la-Vallée station/airport 2 hours prior to departure.",
          "travelDuration": "Approx 1 hour transfer"
        }
      }
    ],
    "durationDays": 4,
    "durationLabel": "4 Days / 3 Nights",
    "travellerTypes": [
      "Families",
      "Couples"
    ],
    "accessibilityStatus": "Wheelchair Accessible",
    "childFriendly": true,
    "packageBenefits": [
      "Family Accommodation",
      "Local Sightseeing"
    ],
    "highlights": [
      "Guided heritage sightseeing of Disneyland Paris landmarks",
      "Immersive cultural show and local market visits",
      "Delight in authentic regional delicacies"
    ],
    "tips": [
      "Carry sun protection (glasses/hat) for outdoor excursions.",
      "Keep local currency handy for local markets.",
      "Follow guidelines at heritage locations."
    ],
    "itinerarySummary": [
      "Day 1: Arrival in Marne-la-Vallée: Traditional Ceremony & Quiet Reflection",
      "Day 2: Dawn Guided Expedition of Disneyland Paris",
      "Day 3: Excursion to Surrounding Landmarks of Marne-la-Vallée",
      "Day 4: Souvenir Shopping & Onward Departure from Marne-la-Vallée"
    ],
    "cancellationSummary": "Get a 100% full refund on cancellations made up to 15 days before the departure. Rescheduling options are fully flexible."
  },
  {
    "id": "family-dubai-miracle-garden",
    "title": "Dubai Miracle Garden",
    "destinationName": "Dubai Miracle Garden",
    "destinations": "Dubai Miracle Garden (Dubai, United Arab Emirates)",
    "location": "Dubai, United Arab Emirates",
    "route": [
      "Dubai",
      "Dubai Miracle Garden"
    ],
    "mainCategory": "Family",
    "categoryLabel": "Family Tour",
    "category": "Family",
    "region": "International",
    "image": "/images/tourist-places/family/Dubai Miracle Garden.jpg",
    "altText": "Dubai Miracle Garden family tour destination in Dubai, United Arab Emirates",
    "duration": "4 Days / 3 Nights",
    "bestSeason": "Year-Round",
    "pace": "Easy",
    "travellerType": "Family Friendly",
    "description": "A thoughtfully planned family tour offering comfort, guidance, and a memorable experience.",
    "price": 21500,
    "rating": null,
    "reviewCount": null,
    "seatsLeft": null,
    "recentBookings": null,
    "verified": null,
    "tags": [
      "Family Tour",
      "Family Friendly"
    ],
    "seniorFriendly": true,
    "wheelchairAccess": true,
    "vegMeals": false,
    "inclusions": {
      "hotel": true,
      "meals": true,
      "transit": true,
      "guide": false,
      "entryPasses": false,
      "medicalSupport": false,
      "localExperience": false
    },
    "itinerary": [
      {
        "day": 1,
        "title": "Welcome & Check-in at Dubai & Dubai Miracle Garden Gateway",
        "location": "Dubai",
        "overview": "Arrive in vibrant Dubai. Escorted transfer to Royal Heritage Villa near Dubai Miracle Garden. Spend your evening relaxing and sampling authentic local dishes.",
        "schedule": {
          "morning": {
            "title": "Arrival & Escorted Transfer in Dubai",
            "description": "Meet our local travel escort at Dubai transit hub. Receive a traditional welcome and transfer to Royal Heritage Villa near Dubai Miracle Garden."
          },
          "afternoon": {
            "title": "Unpack & Courtyard Leisure at Dubai",
            "description": "Check into your sanitized room, unpack your luggage, and enjoy quiet leisure time exploring hotel gardens and facilities."
          },
          "evening": {
            "title": "Sunset Walk & Local Market Flavors at Dubai Miracle Garden",
            "description": "Stroll through the bustling neighborhood of Dubai Miracle Garden. Watch the sunset and savor a multi-course dinner."
          }
        },
        "details": {
          "importantTimings": "Gate Entry: 8:00 AM | Evening Light Show: 6:30 PM",
          "meals": "Welcome Drink & Lavish Regional Buffet Dinner.",
          "transport": "AC Private Chauffeur Vehicle",
          "walkingLevel": "Easy Paced (Paved walkways)",
          "stay": "Royal Heritage Villa near Dubai Miracle Garden",
          "weather": "Pleasant breeze with sunny afternoon 24°C",
          "dressCode": "Casual travel clothing & sunhat",
          "packingSuggestions": "Sunhat, sunglasses, comfortable walking shoes, light jacket, camera.",
          "accessibility": "Wheelchair ramps & low step entry vehicle",
          "visitorNote": "Escort coordinator will brief you on timing for Dubai Miracle Garden visit.",
          "travelDuration": "Approx 1 to 2 hours transfer"
        }
      },
      {
        "day": 2,
        "title": "Early Sunrise Visit to Dubai Miracle Garden",
        "location": "Dubai",
        "overview": "A deep dive into Dubai Miracle Garden. Tour inner sanctums, historical galleries, and architectural viewpoints accompanied by an expert guide.",
        "schedule": {
          "morning": {
            "title": "Guided Tour of Dubai Miracle Garden",
            "description": "Early morning entry to Dubai Miracle Garden. Walk through central courtyards, ancient corridors, and historic halls."
          },
          "afternoon": {
            "title": "Museum Treasures & Heritage Galleries near Dubai",
            "description": "Taste authentic local regional cuisine. Visit local artisan markets specializing in handcrafts native to United Arab Emirates."
          },
          "evening": {
            "title": "Sunset Viewpoint & Cultural Evening",
            "description": "Head to the highest scenic viewpoint overlooking Dubai Miracle Garden. Capture sunset photographs followed by evening entertainment."
          }
        },
        "details": {
          "importantTimings": "Gate Entry: 8:00 AM | Evening Light Show: 6:30 PM",
          "meals": "Complimentary Buffet Breakfast & Traditional Cuisine Lunch.",
          "transport": "AC Private Sedan / SUV",
          "walkingLevel": "Moderate (Historical walkways & corridors)",
          "stay": "Royal Heritage Villa near Dubai Miracle Garden",
          "weather": "Pleasant breeze with sunny afternoon 24°C",
          "dressCode": "Comfortable daywear",
          "packingSuggestions": "Traditional headscarf, slip-on shoes, reusable water bottle, dry bag.",
          "accessibility": "Assistive ramps available at main portals",
          "visitorNote": "Follow local heritage guidelines inside Dubai Miracle Garden.",
          "travelDuration": "Full day sightseeing approx 5 to 6 hours"
        }
      },
      {
        "day": 3,
        "title": "Excursion to Surrounding Landmarks of Dubai",
        "location": "United Arab Emirates",
        "overview": "Expand your exploration with a day trip to surrounding heritage spots, sacred lakes, and craft villages near Dubai.",
        "schedule": {
          "morning": {
            "title": "Heritage Excursion & Scenic Drive",
            "description": "Scenic drive through countryside roads surrounding Dubai. Visit secondary monuments and historic watchtowers."
          },
          "afternoon": {
            "title": "Artisan Workshop & Traditional Lunch",
            "description": "Interact with local master craftsmen demonstrating native handloom weaving or stone carving. Enjoy traditional lunch."
          },
          "evening": {
            "title": "Twilight Promenade & Dinner",
            "description": "Enjoy a relaxed walk around the local market square. Purchase authentic local sweets and dinner."
          }
        },
        "details": {
          "importantTimings": "Excursion Departure: 9:00 AM",
          "meals": "Organic Farm-to-Table Breakfast & Seafood / Veg Dinner.",
          "transport": "AC Private Vehicle",
          "walkingLevel": "Easy Paced",
          "stay": "Royal Heritage Villa near Dubai Miracle Garden",
          "weather": "Pleasant breeze with sunny afternoon 24°C",
          "dressCode": "Comfortable clothing",
          "packingSuggestions": "Light cotton wear, camera with telephoto lens, sunscreen lotion, photo ID.",
          "accessibility": "Accessible vehicles",
          "visitorNote": "Authentic souvenirs certified by local artisans.",
          "travelDuration": "Approx 4 hours excursion"
        }
      },
      {
        "day": 4,
        "title": "Souvenir Shopping & Onward Departure from Dubai",
        "location": "Dubai",
        "overview": "Conclude your trip to Dubai Miracle Garden with morning shopping for local delicacies and souvenirs, followed by departure transfer.",
        "schedule": {
          "morning": {
            "title": "Handicrafts & Sweet Market Visit",
            "description": "Visit trusted local bazaar stalls to buy regional spices, handmade crafts, and traditional sweets of Dubai."
          },
          "afternoon": {
            "title": "Hotel Checkout & Farewell Lunch",
            "description": "Return to hotel for packing and checkout. Enjoy a farewell lunch before your transfer."
          },
          "evening": {
            "title": "Outbound Departure Transfer",
            "description": "Chauffeur drop to Dubai Airport or Railway Station for your onward journey home."
          }
        },
        "details": {
          "importantTimings": "Checkout: 12:00 PM | Transfer: As per flight/train",
          "meals": "Breakfast & Farewell Lunch included.",
          "transport": "AC Private Transfer Vehicle",
          "walkingLevel": "Easy Paced",
          "stay": "N/A (Day of departure)",
          "weather": "Pleasant breeze with sunny afternoon 24°C",
          "dressCode": "Comfortable travel wear",
          "packingSuggestions": "Check-in luggage packed, photo ID ready.",
          "accessibility": "Accessible vehicles",
          "visitorNote": "Arrive at Dubai station/airport 2 hours prior to departure.",
          "travelDuration": "Approx 1 hour transfer"
        }
      }
    ],
    "durationDays": 4,
    "durationLabel": "4 Days / 3 Nights",
    "travellerTypes": [
      "Families",
      "Couples"
    ],
    "accessibilityStatus": "Wheelchair Accessible",
    "childFriendly": true,
    "packageBenefits": [
      "Family Accommodation",
      "Local Sightseeing"
    ],
    "highlights": [
      "Guided heritage sightseeing of Dubai Miracle Garden landmarks",
      "Immersive cultural show and local market visits",
      "Delight in authentic regional delicacies"
    ],
    "tips": [
      "Carry sun protection (glasses/hat) for outdoor excursions.",
      "Keep local currency handy for local markets.",
      "Follow guidelines at heritage locations."
    ],
    "itinerarySummary": [
      "Day 1: Welcome & Check-in at Dubai & Dubai Miracle Garden Gateway",
      "Day 2: Early Sunrise Visit to Dubai Miracle Garden",
      "Day 3: Excursion to Surrounding Landmarks of Dubai",
      "Day 4: Souvenir Shopping & Onward Departure from Dubai"
    ],
    "cancellationSummary": "Get a 100% full refund on cancellations made up to 15 days before the departure. Rescheduling options are fully flexible."
  },
  {
    "id": "family-dudhsagar-falls",
    "title": "Dudhsagar Falls",
    "destinationName": "Dudhsagar Falls",
    "destinations": "Dudhsagar Falls (Goa / Karnataka)",
    "location": "Goa / Karnataka",
    "route": [
      "Goa / Karnataka",
      "Dudhsagar Falls"
    ],
    "mainCategory": "Family",
    "categoryLabel": "Family Tour",
    "category": "Family",
    "region": "South India",
    "image": "/images/tourist-places/family/Dudhsagar Falls.jpg",
    "altText": "Dudhsagar Falls family tour destination in Goa / Karnataka",
    "duration": "4 Days / 3 Nights",
    "bestSeason": "November–February",
    "pace": "Relaxed",
    "travellerType": "Family Friendly",
    "description": "A thoughtfully planned family tour offering comfort, guidance, and a memorable experience.",
    "price": 23000,
    "rating": null,
    "reviewCount": null,
    "seatsLeft": null,
    "recentBookings": null,
    "verified": null,
    "tags": [
      "Family Tour",
      "Family Friendly"
    ],
    "seniorFriendly": true,
    "wheelchairAccess": true,
    "vegMeals": false,
    "inclusions": {
      "hotel": true,
      "meals": true,
      "transit": true,
      "guide": false,
      "entryPasses": false,
      "medicalSupport": false,
      "localExperience": true
    },
    "itinerary": [
      {
        "day": 1,
        "title": "Arrival in Goa / Karnataka: Illuminated Viewpoint & Welcome Feast",
        "location": "Goa / Karnataka",
        "overview": "Arrive in vibrant Goa / Karnataka. Escorted transfer to Luxury Eco Lodge in Goa / Karnataka. Spend your evening relaxing and sampling authentic local dishes.",
        "schedule": {
          "morning": {
            "title": "Arrival & Escorted Transfer in Goa / Karnataka",
            "description": "Meet our local travel escort at Goa / Karnataka transit hub. Receive a traditional welcome and transfer to Luxury Eco Lodge in Goa / Karnataka."
          },
          "afternoon": {
            "title": "Unpack & Courtyard Leisure at Goa / Karnataka",
            "description": "Check into your sanitized room, unpack your luggage, and enjoy quiet leisure time exploring hotel gardens and facilities."
          },
          "evening": {
            "title": "Illuminated Viewpoint & Welcome Feast at Dudhsagar Falls",
            "description": "Stroll through the bustling neighborhood of Dudhsagar Falls. Watch the sunset and savor a multi-course dinner."
          }
        },
        "details": {
          "importantTimings": "Sanctum VIP Slot: 6:30 AM | Bazaar Hours: 4:00 PM - 8:30 PM",
          "meals": "Welcome Drink & Lavish Regional Buffet Dinner.",
          "transport": "AC Private Chauffeur Vehicle",
          "walkingLevel": "Easy Paced (Paved walkways)",
          "stay": "Luxury Eco Lodge in Goa / Karnataka",
          "weather": "Cool crisp morning fog clearing to bright 22°C",
          "dressCode": "Casual travel clothing & sunhat",
          "packingSuggestions": "Traditional headscarf, slip-on shoes, reusable water bottle, dry bag.",
          "accessibility": "Wheelchair ramps & low step entry vehicle",
          "visitorNote": "Escort coordinator will brief you on timing for Dudhsagar Falls visit.",
          "travelDuration": "Approx 1 to 2 hours transfer"
        }
      },
      {
        "day": 2,
        "title": "Exclusive Morning Tour of Dudhsagar Falls",
        "location": "Goa / Karnataka",
        "overview": "A deep dive into Dudhsagar Falls. Tour inner sanctums, historical galleries, and architectural viewpoints accompanied by an expert guide.",
        "schedule": {
          "morning": {
            "title": "Guided Tour of Dudhsagar Falls",
            "description": "Early morning entry to Dudhsagar Falls. Walk through central courtyards, ancient corridors, and historic halls."
          },
          "afternoon": {
            "title": "Boat Ride & Riverfront Exploration near Goa / Karnataka",
            "description": "Taste authentic local regional cuisine. Visit local artisan markets specializing in handcrafts native to Goa / Karnataka."
          },
          "evening": {
            "title": "Sunset Viewpoint & Cultural Evening",
            "description": "Head to the highest scenic viewpoint overlooking Dudhsagar Falls. Capture sunset photographs followed by evening entertainment."
          }
        },
        "details": {
          "importantTimings": "Sanctum VIP Slot: 6:30 AM | Bazaar Hours: 4:00 PM - 8:30 PM",
          "meals": "Complimentary Buffet Breakfast & Traditional Cuisine Lunch.",
          "transport": "AC Private Sedan / SUV",
          "walkingLevel": "Moderate (Historical walkways & corridors)",
          "stay": "Luxury Eco Lodge in Goa / Karnataka",
          "weather": "Cool crisp morning fog clearing to bright 22°C",
          "dressCode": "Comfortable daywear",
          "packingSuggestions": "Light cotton wear, camera with telephoto lens, sunscreen lotion, photo ID.",
          "accessibility": "Assistive ramps available at main portals",
          "visitorNote": "Follow local heritage guidelines inside Dudhsagar Falls.",
          "travelDuration": "Full day sightseeing approx 5 to 6 hours"
        }
      },
      {
        "day": 3,
        "title": "Excursion to Surrounding Landmarks of Goa / Karnataka",
        "location": "Goa / Karnataka",
        "overview": "Expand your exploration with a day trip to surrounding heritage spots, sacred lakes, and craft villages near Goa / Karnataka.",
        "schedule": {
          "morning": {
            "title": "Heritage Excursion & Scenic Drive",
            "description": "Scenic drive through countryside roads surrounding Goa / Karnataka. Visit secondary monuments and historic watchtowers."
          },
          "afternoon": {
            "title": "Artisan Workshop & Traditional Lunch",
            "description": "Interact with local master craftsmen demonstrating native handloom weaving or stone carving. Enjoy traditional lunch."
          },
          "evening": {
            "title": "Twilight Promenade & Dinner",
            "description": "Enjoy a relaxed walk around the local market square. Purchase authentic local sweets and dinner."
          }
        },
        "details": {
          "importantTimings": "Excursion Departure: 9:00 AM",
          "meals": "Organic Farm-to-Table Breakfast & Seafood / Veg Dinner.",
          "transport": "AC Private Vehicle",
          "walkingLevel": "Easy Paced",
          "stay": "Luxury Eco Lodge in Goa / Karnataka",
          "weather": "Cool crisp morning fog clearing to bright 22°C",
          "dressCode": "Comfortable clothing",
          "packingSuggestions": "Comfortable walking socks, power bank, shoulder shawl, daypack.",
          "accessibility": "Accessible vehicles",
          "visitorNote": "Authentic souvenirs certified by local artisans.",
          "travelDuration": "Approx 4 hours excursion"
        }
      },
      {
        "day": 4,
        "title": "Souvenir Shopping & Onward Departure from Goa / Karnataka",
        "location": "Goa / Karnataka",
        "overview": "Conclude your trip to Dudhsagar Falls with morning shopping for local delicacies and souvenirs, followed by departure transfer.",
        "schedule": {
          "morning": {
            "title": "Handicrafts & Sweet Market Visit",
            "description": "Visit trusted local bazaar stalls to buy regional spices, handmade crafts, and traditional sweets of Goa / Karnataka."
          },
          "afternoon": {
            "title": "Hotel Checkout & Farewell Lunch",
            "description": "Return to hotel for packing and checkout. Enjoy a farewell lunch before your transfer."
          },
          "evening": {
            "title": "Outbound Departure Transfer",
            "description": "Chauffeur drop to Goa / Karnataka Airport or Railway Station for your onward journey home."
          }
        },
        "details": {
          "importantTimings": "Checkout: 12:00 PM | Transfer: As per flight/train",
          "meals": "Breakfast & Farewell Lunch included.",
          "transport": "AC Private Transfer Vehicle",
          "walkingLevel": "Easy Paced",
          "stay": "N/A (Day of departure)",
          "weather": "Cool crisp morning fog clearing to bright 22°C",
          "dressCode": "Comfortable travel wear",
          "packingSuggestions": "Check-in luggage packed, photo ID ready.",
          "accessibility": "Accessible vehicles",
          "visitorNote": "Arrive at Goa / Karnataka station/airport 2 hours prior to departure.",
          "travelDuration": "Approx 1 hour transfer"
        }
      }
    ],
    "durationDays": 4,
    "durationLabel": "4 Days / 3 Nights",
    "travellerTypes": [
      "Couples",
      "Seniors"
    ],
    "accessibilityStatus": "Wheelchair Accessible",
    "childFriendly": true,
    "packageBenefits": [
      "Scenic Accommodation",
      "Breakfast Included"
    ],
    "highlights": [
      "Relaxing stay and leisure exploration in Dudhsagar Falls",
      "Scenic beauty and local dining experiences",
      "Private luxury transfers for ultimate comfort"
    ],
    "tips": [
      "Carry sun protection (glasses/hat) for outdoor excursions.",
      "Keep local currency handy for local markets.",
      "Follow guidelines at heritage locations."
    ],
    "itinerarySummary": [
      "Day 1: Arrival in Goa / Karnataka: Illuminated Viewpoint & Welcome Feast",
      "Day 2: Exclusive Morning Tour of Dudhsagar Falls",
      "Day 3: Excursion to Surrounding Landmarks of Goa / Karnataka",
      "Day 4: Souvenir Shopping & Onward Departure from Goa / Karnataka"
    ],
    "cancellationSummary": "Get a 100% full refund on cancellations made up to 15 days before the departure. Rescheduling options are fully flexible."
  },
  {
    "id": "family-eiffel-tower",
    "title": "Eiffel Tower",
    "destinationName": "Eiffel Tower",
    "destinations": "Eiffel Tower (Paris, France)",
    "location": "Paris, France",
    "route": [
      "Paris",
      "Eiffel Tower"
    ],
    "mainCategory": "Family",
    "categoryLabel": "Family Tour",
    "category": "Family",
    "region": "International",
    "image": "/images/tourist-places/family/Eiffel Tower.jpg",
    "altText": "Eiffel Tower family tour destination in Paris, France",
    "duration": "4 Days / 3 Nights",
    "bestSeason": "Year-Round",
    "pace": "Easy",
    "travellerType": "Family Friendly",
    "description": "A thoughtfully planned family tour offering comfort, guidance, and a memorable experience.",
    "price": 24500,
    "rating": null,
    "reviewCount": null,
    "seatsLeft": null,
    "recentBookings": null,
    "verified": null,
    "tags": [
      "Family Tour",
      "Family Friendly"
    ],
    "seniorFriendly": true,
    "wheelchairAccess": true,
    "vegMeals": false,
    "inclusions": {
      "hotel": true,
      "meals": true,
      "transit": true,
      "guide": false,
      "entryPasses": false,
      "medicalSupport": false,
      "localExperience": false
    },
    "itinerary": [
      {
        "day": 1,
        "title": "Escorted Arrival in Paris & Eiffel Tower Gateway",
        "location": "Paris",
        "overview": "Arrive in vibrant Paris. Escorted transfer to Grand Riverfront Resort near Eiffel Tower. Spend your evening relaxing and sampling authentic local dishes.",
        "schedule": {
          "morning": {
            "title": "Arrival & Escorted Transfer in Paris",
            "description": "Meet our local travel escort at Paris transit hub. Receive a traditional welcome and transfer to Grand Riverfront Resort near Eiffel Tower."
          },
          "afternoon": {
            "title": "Unpack & Courtyard Leisure at Paris",
            "description": "Check into your sanitized room, unpack your luggage, and enjoy quiet leisure time exploring hotel gardens and facilities."
          },
          "evening": {
            "title": "Cultural Folk Performance & Dinner at Eiffel Tower",
            "description": "Stroll through the bustling neighborhood of Eiffel Tower. Watch the sunset and savor a multi-course dinner."
          }
        },
        "details": {
          "importantTimings": "Sunrise Tour: 5:45 AM | Museum Hours: 9:30 AM - 5:00 PM",
          "meals": "Welcome Drink & Lavish Regional Buffet Dinner.",
          "transport": "AC Private Chauffeur Vehicle",
          "walkingLevel": "Easy Paced (Paved walkways)",
          "stay": "Grand Riverfront Resort near Eiffel Tower",
          "weather": "Warm tropical sunshine with ocean breeze 27°C",
          "dressCode": "Casual travel clothing & sunhat",
          "packingSuggestions": "Light cotton wear, camera with telephoto lens, sunscreen lotion, photo ID.",
          "accessibility": "Wheelchair ramps & low step entry vehicle",
          "visitorNote": "Escort coordinator will brief you on timing for Eiffel Tower visit.",
          "travelDuration": "Approx 1 to 2 hours transfer"
        }
      },
      {
        "day": 2,
        "title": "VIP Access to Eiffel Tower",
        "location": "Paris",
        "overview": "A deep dive into Eiffel Tower. Tour inner sanctums, historical galleries, and architectural viewpoints accompanied by an expert guide.",
        "schedule": {
          "morning": {
            "title": "Guided Tour of Eiffel Tower",
            "description": "Early morning entry to Eiffel Tower. Walk through central courtyards, ancient corridors, and historic halls."
          },
          "afternoon": {
            "title": "Artisan Handloom Workshop & Souvenirs near Paris",
            "description": "Taste authentic local regional cuisine. Visit local artisan markets specializing in handcrafts native to France."
          },
          "evening": {
            "title": "Sunset Viewpoint & Cultural Evening",
            "description": "Head to the highest scenic viewpoint overlooking Eiffel Tower. Capture sunset photographs followed by evening entertainment."
          }
        },
        "details": {
          "importantTimings": "Sunrise Tour: 5:45 AM | Museum Hours: 9:30 AM - 5:00 PM",
          "meals": "Complimentary Buffet Breakfast & Traditional Cuisine Lunch.",
          "transport": "AC Private Sedan / SUV",
          "walkingLevel": "Moderate (Historical walkways & corridors)",
          "stay": "Grand Riverfront Resort near Eiffel Tower",
          "weather": "Warm tropical sunshine with ocean breeze 27°C",
          "dressCode": "Comfortable daywear",
          "packingSuggestions": "Comfortable walking socks, power bank, shoulder shawl, daypack.",
          "accessibility": "Assistive ramps available at main portals",
          "visitorNote": "Follow local heritage guidelines inside Eiffel Tower.",
          "travelDuration": "Full day sightseeing approx 5 to 6 hours"
        }
      },
      {
        "day": 3,
        "title": "Excursion to Surrounding Landmarks of Paris",
        "location": "France",
        "overview": "Expand your exploration with a day trip to surrounding heritage spots, sacred lakes, and craft villages near Paris.",
        "schedule": {
          "morning": {
            "title": "Heritage Excursion & Scenic Drive",
            "description": "Scenic drive through countryside roads surrounding Paris. Visit secondary monuments and historic watchtowers."
          },
          "afternoon": {
            "title": "Artisan Workshop & Traditional Lunch",
            "description": "Interact with local master craftsmen demonstrating native handloom weaving or stone carving. Enjoy traditional lunch."
          },
          "evening": {
            "title": "Twilight Promenade & Dinner",
            "description": "Enjoy a relaxed walk around the local market square. Purchase authentic local sweets and dinner."
          }
        },
        "details": {
          "importantTimings": "Excursion Departure: 9:00 AM",
          "meals": "Organic Farm-to-Table Breakfast & Seafood / Veg Dinner.",
          "transport": "AC Private Vehicle",
          "walkingLevel": "Easy Paced",
          "stay": "Grand Riverfront Resort near Eiffel Tower",
          "weather": "Warm tropical sunshine with ocean breeze 27°C",
          "dressCode": "Comfortable clothing",
          "packingSuggestions": "Breathable linen wear, sunglasses, small currency notes for local shops.",
          "accessibility": "Accessible vehicles",
          "visitorNote": "Authentic souvenirs certified by local artisans.",
          "travelDuration": "Approx 4 hours excursion"
        }
      },
      {
        "day": 4,
        "title": "Souvenir Shopping & Onward Departure from Paris",
        "location": "Paris",
        "overview": "Conclude your trip to Eiffel Tower with morning shopping for local delicacies and souvenirs, followed by departure transfer.",
        "schedule": {
          "morning": {
            "title": "Handicrafts & Sweet Market Visit",
            "description": "Visit trusted local bazaar stalls to buy regional spices, handmade crafts, and traditional sweets of Paris."
          },
          "afternoon": {
            "title": "Hotel Checkout & Farewell Lunch",
            "description": "Return to hotel for packing and checkout. Enjoy a farewell lunch before your transfer."
          },
          "evening": {
            "title": "Outbound Departure Transfer",
            "description": "Chauffeur drop to Paris Airport or Railway Station for your onward journey home."
          }
        },
        "details": {
          "importantTimings": "Checkout: 12:00 PM | Transfer: As per flight/train",
          "meals": "Breakfast & Farewell Lunch included.",
          "transport": "AC Private Transfer Vehicle",
          "walkingLevel": "Easy Paced",
          "stay": "N/A (Day of departure)",
          "weather": "Warm tropical sunshine with ocean breeze 27°C",
          "dressCode": "Comfortable travel wear",
          "packingSuggestions": "Check-in luggage packed, photo ID ready.",
          "accessibility": "Accessible vehicles",
          "visitorNote": "Arrive at Paris station/airport 2 hours prior to departure.",
          "travelDuration": "Approx 1 hour transfer"
        }
      }
    ],
    "durationDays": 4,
    "durationLabel": "4 Days / 3 Nights",
    "travellerTypes": [
      "Families",
      "Couples"
    ],
    "accessibilityStatus": "Wheelchair Accessible",
    "childFriendly": true,
    "packageBenefits": [
      "Family Accommodation",
      "Local Sightseeing"
    ],
    "highlights": [
      "Guided heritage sightseeing of Eiffel Tower landmarks",
      "Immersive cultural show and local market visits",
      "Delight in authentic regional delicacies"
    ],
    "tips": [
      "Carry sun protection (glasses/hat) for outdoor excursions.",
      "Keep local currency handy for local markets.",
      "Follow guidelines at heritage locations."
    ],
    "itinerarySummary": [
      "Day 1: Escorted Arrival in Paris & Eiffel Tower Gateway",
      "Day 2: VIP Access to Eiffel Tower",
      "Day 3: Excursion to Surrounding Landmarks of Paris",
      "Day 4: Souvenir Shopping & Onward Departure from Paris"
    ],
    "cancellationSummary": "Get a 100% full refund on cancellations made up to 15 days before the departure. Rescheduling options are fully flexible."
  },
  {
    "id": "family-gardens-by-the-bay",
    "title": "Gardens by the Bay",
    "destinationName": "Gardens by the Bay",
    "destinations": "Gardens by the Bay (Singapore)",
    "location": "Singapore",
    "route": [
      "Singapore",
      "Gardens by the Bay"
    ],
    "mainCategory": "Family",
    "categoryLabel": "Family Tour",
    "category": "Family",
    "region": "International",
    "image": "/images/tourist-places/family/Gardens by the Bay.jpg",
    "altText": "Gardens by the Bay family tour destination in Singapore",
    "duration": "4 Days / 3 Nights",
    "bestSeason": "Year-Round",
    "pace": "Easy",
    "travellerType": "Family Friendly",
    "description": "A thoughtfully planned family tour offering comfort, guidance, and a memorable experience.",
    "price": 26000,
    "rating": null,
    "reviewCount": null,
    "seatsLeft": null,
    "recentBookings": null,
    "verified": null,
    "tags": [
      "Family Tour",
      "Family Friendly"
    ],
    "seniorFriendly": true,
    "wheelchairAccess": true,
    "vegMeals": false,
    "inclusions": {
      "hotel": true,
      "meals": true,
      "transit": true,
      "guide": false,
      "entryPasses": false,
      "medicalSupport": false,
      "localExperience": false
    },
    "itinerary": [
      {
        "day": 1,
        "title": "Arrival in Singapore: Riverside Aarti & Evening Tea",
        "location": "Singapore",
        "overview": "Arrive in vibrant Singapore. Escorted transfer to Vedic Pilgrim Ashram Stay in Singapore. Spend your evening relaxing and sampling authentic local dishes.",
        "schedule": {
          "morning": {
            "title": "Arrival & Escorted Transfer in Singapore",
            "description": "Meet our local travel escort at Singapore transit hub. Receive a traditional welcome and transfer to Vedic Pilgrim Ashram Stay in Singapore."
          },
          "afternoon": {
            "title": "Unpack & Courtyard Leisure at Singapore",
            "description": "Check into your sanitized room, unpack your luggage, and enjoy quiet leisure time exploring hotel gardens and facilities."
          },
          "evening": {
            "title": "Riverside Aarti & Evening Tea at Gardens by the Bay",
            "description": "Stroll through the bustling neighborhood of Gardens by the Bay. Watch the sunset and savor a multi-course dinner."
          }
        },
        "details": {
          "importantTimings": "Guided Walk: 9:00 AM | Sunset Point Departure: 5:15 PM",
          "meals": "Welcome Drink & Lavish Regional Buffet Dinner.",
          "transport": "AC Private Chauffeur Vehicle",
          "walkingLevel": "Easy Paced (Paved walkways)",
          "stay": "Vedic Pilgrim Ashram Stay in Singapore",
          "weather": "Crisp mountain climate, clear blue skies 19°C",
          "dressCode": "Casual travel clothing & sunhat",
          "packingSuggestions": "Comfortable walking socks, power bank, shoulder shawl, daypack.",
          "accessibility": "Wheelchair ramps & low step entry vehicle",
          "visitorNote": "Escort coordinator will brief you on timing for Gardens by the Bay visit.",
          "travelDuration": "Approx 1 to 2 hours transfer"
        }
      },
      {
        "day": 2,
        "title": "Breakfast & Exploration of Gardens by the Bay",
        "location": "Singapore",
        "overview": "A deep dive into Gardens by the Bay. Tour inner sanctums, historical galleries, and architectural viewpoints accompanied by an expert guide.",
        "schedule": {
          "morning": {
            "title": "Guided Tour of Gardens by the Bay",
            "description": "Early morning entry to Gardens by the Bay. Walk through central courtyards, ancient corridors, and historic halls."
          },
          "afternoon": {
            "title": "Scenic Valley Drive & Photo Stops near Singapore",
            "description": "Taste authentic local regional cuisine. Visit local artisan markets specializing in handcrafts native to Singapore."
          },
          "evening": {
            "title": "Sunset Viewpoint & Cultural Evening",
            "description": "Head to the highest scenic viewpoint overlooking Gardens by the Bay. Capture sunset photographs followed by evening entertainment."
          }
        },
        "details": {
          "importantTimings": "Guided Walk: 9:00 AM | Sunset Point Departure: 5:15 PM",
          "meals": "Complimentary Buffet Breakfast & Traditional Cuisine Lunch.",
          "transport": "AC Private Sedan / SUV",
          "walkingLevel": "Moderate (Historical walkways & corridors)",
          "stay": "Vedic Pilgrim Ashram Stay in Singapore",
          "weather": "Crisp mountain climate, clear blue skies 19°C",
          "dressCode": "Comfortable daywear",
          "packingSuggestions": "Breathable linen wear, sunglasses, small currency notes for local shops.",
          "accessibility": "Assistive ramps available at main portals",
          "visitorNote": "Follow local heritage guidelines inside Gardens by the Bay.",
          "travelDuration": "Full day sightseeing approx 5 to 6 hours"
        }
      },
      {
        "day": 3,
        "title": "Excursion to Surrounding Landmarks of Singapore",
        "location": "Singapore",
        "overview": "Expand your exploration with a day trip to surrounding heritage spots, sacred lakes, and craft villages near Singapore.",
        "schedule": {
          "morning": {
            "title": "Heritage Excursion & Scenic Drive",
            "description": "Scenic drive through countryside roads surrounding Singapore. Visit secondary monuments and historic watchtowers."
          },
          "afternoon": {
            "title": "Artisan Workshop & Traditional Lunch",
            "description": "Interact with local master craftsmen demonstrating native handloom weaving or stone carving. Enjoy traditional lunch."
          },
          "evening": {
            "title": "Twilight Promenade & Dinner",
            "description": "Enjoy a relaxed walk around the local market square. Purchase authentic local sweets and dinner."
          }
        },
        "details": {
          "importantTimings": "Excursion Departure: 9:00 AM",
          "meals": "Organic Farm-to-Table Breakfast & Seafood / Veg Dinner.",
          "transport": "AC Private Vehicle",
          "walkingLevel": "Easy Paced",
          "stay": "Vedic Pilgrim Ashram Stay in Singapore",
          "weather": "Crisp mountain climate, clear blue skies 19°C",
          "dressCode": "Comfortable clothing",
          "packingSuggestions": "Sunhat, sunglasses, comfortable walking shoes, light jacket, camera.",
          "accessibility": "Accessible vehicles",
          "visitorNote": "Authentic souvenirs certified by local artisans.",
          "travelDuration": "Approx 4 hours excursion"
        }
      },
      {
        "day": 4,
        "title": "Souvenir Shopping & Onward Departure from Singapore",
        "location": "Singapore",
        "overview": "Conclude your trip to Gardens by the Bay with morning shopping for local delicacies and souvenirs, followed by departure transfer.",
        "schedule": {
          "morning": {
            "title": "Handicrafts & Sweet Market Visit",
            "description": "Visit trusted local bazaar stalls to buy regional spices, handmade crafts, and traditional sweets of Singapore."
          },
          "afternoon": {
            "title": "Hotel Checkout & Farewell Lunch",
            "description": "Return to hotel for packing and checkout. Enjoy a farewell lunch before your transfer."
          },
          "evening": {
            "title": "Outbound Departure Transfer",
            "description": "Chauffeur drop to Singapore Airport or Railway Station for your onward journey home."
          }
        },
        "details": {
          "importantTimings": "Checkout: 12:00 PM | Transfer: As per flight/train",
          "meals": "Breakfast & Farewell Lunch included.",
          "transport": "AC Private Transfer Vehicle",
          "walkingLevel": "Easy Paced",
          "stay": "N/A (Day of departure)",
          "weather": "Crisp mountain climate, clear blue skies 19°C",
          "dressCode": "Comfortable travel wear",
          "packingSuggestions": "Check-in luggage packed, photo ID ready.",
          "accessibility": "Accessible vehicles",
          "visitorNote": "Arrive at Singapore station/airport 2 hours prior to departure.",
          "travelDuration": "Approx 1 hour transfer"
        }
      }
    ],
    "durationDays": 4,
    "durationLabel": "4 Days / 3 Nights",
    "travellerTypes": [
      "Families",
      "Couples"
    ],
    "accessibilityStatus": "Wheelchair Accessible",
    "childFriendly": true,
    "packageBenefits": [
      "Family Accommodation",
      "Local Sightseeing"
    ],
    "highlights": [
      "Guided heritage sightseeing of Gardens by the Bay landmarks",
      "Immersive cultural show and local market visits",
      "Delight in authentic regional delicacies"
    ],
    "tips": [
      "Carry sun protection (glasses/hat) for outdoor excursions.",
      "Keep local currency handy for local markets.",
      "Follow guidelines at heritage locations."
    ],
    "itinerarySummary": [
      "Day 1: Arrival in Singapore: Riverside Aarti & Evening Tea",
      "Day 2: Breakfast & Exploration of Gardens by the Bay",
      "Day 3: Excursion to Surrounding Landmarks of Singapore",
      "Day 4: Souvenir Shopping & Onward Departure from Singapore"
    ],
    "cancellationSummary": "Get a 100% full refund on cancellations made up to 15 days before the departure. Rescheduling options are fully flexible."
  },
  {
    "id": "family-glacier-3000",
    "title": "Glacier 3000",
    "destinationName": "Glacier 3000",
    "destinations": "Glacier 3000 (Les Diablerets, Switzerland)",
    "location": "Les Diablerets, Switzerland",
    "route": [
      "Les Diablerets",
      "Glacier 3000"
    ],
    "mainCategory": "Family",
    "categoryLabel": "Family Tour",
    "category": "Family",
    "region": "International",
    "image": "/images/tourist-places/family/Glacier 3000.jpg",
    "altText": "Glacier 3000 family tour destination in Les Diablerets, Switzerland",
    "duration": "4 Days / 3 Nights",
    "bestSeason": "October–March",
    "pace": "Easy",
    "travellerType": "Family Friendly",
    "description": "A thoughtfully planned family tour offering comfort, guidance, and a memorable experience.",
    "price": 27500,
    "rating": null,
    "reviewCount": null,
    "seatsLeft": null,
    "recentBookings": null,
    "verified": null,
    "tags": [
      "Family Tour",
      "Family Friendly"
    ],
    "seniorFriendly": true,
    "wheelchairAccess": true,
    "vegMeals": false,
    "inclusions": {
      "hotel": true,
      "meals": true,
      "transit": true,
      "guide": false,
      "entryPasses": false,
      "medicalSupport": false,
      "localExperience": false
    },
    "itinerary": [
      {
        "day": 1,
        "title": "Scenic Drive to Les Diablerets & Glacier 3000 Gateway",
        "location": "Les Diablerets",
        "overview": "Arrive in vibrant Les Diablerets. Escorted transfer to Boutique Star Hotel in Les Diablerets. Spend your evening relaxing and sampling authentic local dishes.",
        "schedule": {
          "morning": {
            "title": "Arrival & Escorted Transfer in Les Diablerets",
            "description": "Meet our local travel escort at Les Diablerets transit hub. Receive a traditional welcome and transfer to Boutique Star Hotel in Les Diablerets."
          },
          "afternoon": {
            "title": "Unpack & Courtyard Leisure at Les Diablerets",
            "description": "Check into your sanitized room, unpack your luggage, and enjoy quiet leisure time exploring hotel gardens and facilities."
          },
          "evening": {
            "title": "Skyline Sunset & Regional Delicacies at Glacier 3000",
            "description": "Stroll through the bustling neighborhood of Glacier 3000. Watch the sunset and savor a multi-course dinner."
          }
        },
        "details": {
          "importantTimings": "Boat Departure: 6:00 AM | Heritage Show: 7:00 PM",
          "meals": "Welcome Drink & Lavish Regional Buffet Dinner.",
          "transport": "AC Private Chauffeur Vehicle",
          "walkingLevel": "Easy Paced (Paved walkways)",
          "stay": "Boutique Star Hotel in Les Diablerets",
          "weather": "Refreshing river mist with mild sun 23°C",
          "dressCode": "Casual travel clothing & sunhat",
          "packingSuggestions": "Breathable linen wear, sunglasses, small currency notes for local shops.",
          "accessibility": "Wheelchair ramps & low step entry vehicle",
          "visitorNote": "Escort coordinator will brief you on timing for Glacier 3000 visit.",
          "travelDuration": "Approx 1 to 2 hours transfer"
        }
      },
      {
        "day": 2,
        "title": "Panoramic Discovery of Glacier 3000",
        "location": "Les Diablerets",
        "overview": "A deep dive into Glacier 3000. Tour inner sanctums, historical galleries, and architectural viewpoints accompanied by an expert guide.",
        "schedule": {
          "morning": {
            "title": "Guided Tour of Glacier 3000",
            "description": "Early morning entry to Glacier 3000. Walk through central courtyards, ancient corridors, and historic halls."
          },
          "afternoon": {
            "title": "Sacred Shrine Darshan & Temple Complex near Les Diablerets",
            "description": "Taste authentic local regional cuisine. Visit local artisan markets specializing in handcrafts native to Switzerland."
          },
          "evening": {
            "title": "Sunset Viewpoint & Cultural Evening",
            "description": "Head to the highest scenic viewpoint overlooking Glacier 3000. Capture sunset photographs followed by evening entertainment."
          }
        },
        "details": {
          "importantTimings": "Boat Departure: 6:00 AM | Heritage Show: 7:00 PM",
          "meals": "Complimentary Buffet Breakfast & Traditional Cuisine Lunch.",
          "transport": "AC Private Sedan / SUV",
          "walkingLevel": "Moderate (Historical walkways & corridors)",
          "stay": "Boutique Star Hotel in Les Diablerets",
          "weather": "Refreshing river mist with mild sun 23°C",
          "dressCode": "Comfortable daywear",
          "packingSuggestions": "Sunhat, sunglasses, comfortable walking shoes, light jacket, camera.",
          "accessibility": "Assistive ramps available at main portals",
          "visitorNote": "Follow local heritage guidelines inside Glacier 3000.",
          "travelDuration": "Full day sightseeing approx 5 to 6 hours"
        }
      },
      {
        "day": 3,
        "title": "Excursion to Surrounding Landmarks of Les Diablerets",
        "location": "Switzerland",
        "overview": "Expand your exploration with a day trip to surrounding heritage spots, sacred lakes, and craft villages near Les Diablerets.",
        "schedule": {
          "morning": {
            "title": "Heritage Excursion & Scenic Drive",
            "description": "Scenic drive through countryside roads surrounding Les Diablerets. Visit secondary monuments and historic watchtowers."
          },
          "afternoon": {
            "title": "Artisan Workshop & Traditional Lunch",
            "description": "Interact with local master craftsmen demonstrating native handloom weaving or stone carving. Enjoy traditional lunch."
          },
          "evening": {
            "title": "Twilight Promenade & Dinner",
            "description": "Enjoy a relaxed walk around the local market square. Purchase authentic local sweets and dinner."
          }
        },
        "details": {
          "importantTimings": "Excursion Departure: 9:00 AM",
          "meals": "Organic Farm-to-Table Breakfast & Seafood / Veg Dinner.",
          "transport": "AC Private Vehicle",
          "walkingLevel": "Easy Paced",
          "stay": "Boutique Star Hotel in Les Diablerets",
          "weather": "Refreshing river mist with mild sun 23°C",
          "dressCode": "Comfortable clothing",
          "packingSuggestions": "Traditional headscarf, slip-on shoes, reusable water bottle, dry bag.",
          "accessibility": "Accessible vehicles",
          "visitorNote": "Authentic souvenirs certified by local artisans.",
          "travelDuration": "Approx 4 hours excursion"
        }
      },
      {
        "day": 4,
        "title": "Souvenir Shopping & Onward Departure from Les Diablerets",
        "location": "Les Diablerets",
        "overview": "Conclude your trip to Glacier 3000 with morning shopping for local delicacies and souvenirs, followed by departure transfer.",
        "schedule": {
          "morning": {
            "title": "Handicrafts & Sweet Market Visit",
            "description": "Visit trusted local bazaar stalls to buy regional spices, handmade crafts, and traditional sweets of Les Diablerets."
          },
          "afternoon": {
            "title": "Hotel Checkout & Farewell Lunch",
            "description": "Return to hotel for packing and checkout. Enjoy a farewell lunch before your transfer."
          },
          "evening": {
            "title": "Outbound Departure Transfer",
            "description": "Chauffeur drop to Les Diablerets Airport or Railway Station for your onward journey home."
          }
        },
        "details": {
          "importantTimings": "Checkout: 12:00 PM | Transfer: As per flight/train",
          "meals": "Breakfast & Farewell Lunch included.",
          "transport": "AC Private Transfer Vehicle",
          "walkingLevel": "Easy Paced",
          "stay": "N/A (Day of departure)",
          "weather": "Refreshing river mist with mild sun 23°C",
          "dressCode": "Comfortable travel wear",
          "packingSuggestions": "Check-in luggage packed, photo ID ready.",
          "accessibility": "Accessible vehicles",
          "visitorNote": "Arrive at Les Diablerets station/airport 2 hours prior to departure.",
          "travelDuration": "Approx 1 hour transfer"
        }
      }
    ],
    "durationDays": 4,
    "durationLabel": "4 Days / 3 Nights",
    "travellerTypes": [
      "Families",
      "Couples"
    ],
    "accessibilityStatus": "Wheelchair Accessible",
    "childFriendly": true,
    "packageBenefits": [
      "Family Accommodation",
      "Local Sightseeing"
    ],
    "highlights": [
      "Guided heritage sightseeing of Glacier 3000 landmarks",
      "Immersive cultural show and local market visits",
      "Delight in authentic regional delicacies"
    ],
    "tips": [
      "Carry sun protection (glasses/hat) for outdoor excursions.",
      "Keep local currency handy for local markets.",
      "Follow guidelines at heritage locations."
    ],
    "itinerarySummary": [
      "Day 1: Scenic Drive to Les Diablerets & Glacier 3000 Gateway",
      "Day 2: Panoramic Discovery of Glacier 3000",
      "Day 3: Excursion to Surrounding Landmarks of Les Diablerets",
      "Day 4: Souvenir Shopping & Onward Departure from Les Diablerets"
    ],
    "cancellationSummary": "Get a 100% full refund on cancellations made up to 15 days before the departure. Rescheduling options are fully flexible."
  },
  {
    "id": "family-gol-gumbaz",
    "title": "Gol Gumbaz",
    "destinationName": "Gol Gumbaz",
    "destinations": "Gol Gumbaz (Vijayapura, Karnataka)",
    "location": "Vijayapura, Karnataka",
    "route": [
      "Vijayapura",
      "Gol Gumbaz"
    ],
    "mainCategory": "Family",
    "categoryLabel": "Family Tour",
    "category": "Family",
    "region": "South India",
    "image": "/images/tourist-places/family/Gol Gumbaz.jpg",
    "altText": "Gol Gumbaz family tour destination in Vijayapura, Karnataka",
    "duration": "4 Days / 3 Nights",
    "bestSeason": "November–February",
    "pace": "Easy",
    "travellerType": "Family Friendly",
    "description": "A thoughtfully planned family tour offering comfort, guidance, and a memorable experience.",
    "price": 29000,
    "rating": null,
    "reviewCount": null,
    "seatsLeft": null,
    "recentBookings": null,
    "verified": null,
    "tags": [
      "Family Tour",
      "Family Friendly"
    ],
    "seniorFriendly": true,
    "wheelchairAccess": true,
    "vegMeals": false,
    "inclusions": {
      "hotel": true,
      "meals": true,
      "transit": true,
      "guide": false,
      "entryPasses": false,
      "medicalSupport": false,
      "localExperience": false
    },
    "itinerary": [
      {
        "day": 1,
        "title": "Arrival in Vijayapura: Candlelight Dinner & Courtyard Music",
        "location": "Vijayapura",
        "overview": "Arrive in vibrant Vijayapura. Escorted transfer to Hilltop Panorama Resort near Gol Gumbaz. Spend your evening relaxing and sampling authentic local dishes.",
        "schedule": {
          "morning": {
            "title": "Arrival & Escorted Transfer in Vijayapura",
            "description": "Meet our local travel escort at Vijayapura transit hub. Receive a traditional welcome and transfer to Hilltop Panorama Resort near Gol Gumbaz."
          },
          "afternoon": {
            "title": "Unpack & Courtyard Leisure at Vijayapura",
            "description": "Check into your sanitized room, unpack your luggage, and enjoy quiet leisure time exploring hotel gardens and facilities."
          },
          "evening": {
            "title": "Candlelight Dinner & Courtyard Music at Gol Gumbaz",
            "description": "Stroll through the bustling neighborhood of Gol Gumbaz. Watch the sunset and savor a multi-course dinner."
          }
        },
        "details": {
          "importantTimings": "Gate Entry: 8:00 AM | Evening Light Show: 6:30 PM",
          "meals": "Welcome Drink & Lavish Regional Buffet Dinner.",
          "transport": "AC Private Chauffeur Vehicle",
          "walkingLevel": "Easy Paced (Paved walkways)",
          "stay": "Hilltop Panorama Resort near Gol Gumbaz",
          "weather": "Pleasant breeze with sunny afternoon 24°C",
          "dressCode": "Casual travel clothing & sunhat",
          "packingSuggestions": "Sunhat, sunglasses, comfortable walking shoes, light jacket, camera.",
          "accessibility": "Wheelchair ramps & low step entry vehicle",
          "visitorNote": "Escort coordinator will brief you on timing for Gol Gumbaz visit.",
          "travelDuration": "Approx 1 to 2 hours transfer"
        }
      },
      {
        "day": 2,
        "title": "Uncovering the Secrets of Gol Gumbaz",
        "location": "Vijayapura",
        "overview": "A deep dive into Gol Gumbaz. Tour inner sanctums, historical galleries, and architectural viewpoints accompanied by an expert guide.",
        "schedule": {
          "morning": {
            "title": "Guided Tour of Gol Gumbaz",
            "description": "Early morning entry to Gol Gumbaz. Walk through central courtyards, ancient corridors, and historic halls."
          },
          "afternoon": {
            "title": "Coastal Promenade & Beach Relax near Vijayapura",
            "description": "Taste authentic local regional cuisine. Visit local artisan markets specializing in handcrafts native to Karnataka."
          },
          "evening": {
            "title": "Sunset Viewpoint & Cultural Evening",
            "description": "Head to the highest scenic viewpoint overlooking Gol Gumbaz. Capture sunset photographs followed by evening entertainment."
          }
        },
        "details": {
          "importantTimings": "Gate Entry: 8:00 AM | Evening Light Show: 6:30 PM",
          "meals": "Complimentary Buffet Breakfast & Traditional Cuisine Lunch.",
          "transport": "AC Private Sedan / SUV",
          "walkingLevel": "Moderate (Historical walkways & corridors)",
          "stay": "Hilltop Panorama Resort near Gol Gumbaz",
          "weather": "Pleasant breeze with sunny afternoon 24°C",
          "dressCode": "Comfortable daywear",
          "packingSuggestions": "Traditional headscarf, slip-on shoes, reusable water bottle, dry bag.",
          "accessibility": "Assistive ramps available at main portals",
          "visitorNote": "Follow local heritage guidelines inside Gol Gumbaz.",
          "travelDuration": "Full day sightseeing approx 5 to 6 hours"
        }
      },
      {
        "day": 3,
        "title": "Excursion to Surrounding Landmarks of Vijayapura",
        "location": "Karnataka",
        "overview": "Expand your exploration with a day trip to surrounding heritage spots, sacred lakes, and craft villages near Vijayapura.",
        "schedule": {
          "morning": {
            "title": "Heritage Excursion & Scenic Drive",
            "description": "Scenic drive through countryside roads surrounding Vijayapura. Visit secondary monuments and historic watchtowers."
          },
          "afternoon": {
            "title": "Artisan Workshop & Traditional Lunch",
            "description": "Interact with local master craftsmen demonstrating native handloom weaving or stone carving. Enjoy traditional lunch."
          },
          "evening": {
            "title": "Twilight Promenade & Dinner",
            "description": "Enjoy a relaxed walk around the local market square. Purchase authentic local sweets and dinner."
          }
        },
        "details": {
          "importantTimings": "Excursion Departure: 9:00 AM",
          "meals": "Organic Farm-to-Table Breakfast & Seafood / Veg Dinner.",
          "transport": "AC Private Vehicle",
          "walkingLevel": "Easy Paced",
          "stay": "Hilltop Panorama Resort near Gol Gumbaz",
          "weather": "Pleasant breeze with sunny afternoon 24°C",
          "dressCode": "Comfortable clothing",
          "packingSuggestions": "Light cotton wear, camera with telephoto lens, sunscreen lotion, photo ID.",
          "accessibility": "Accessible vehicles",
          "visitorNote": "Authentic souvenirs certified by local artisans.",
          "travelDuration": "Approx 4 hours excursion"
        }
      },
      {
        "day": 4,
        "title": "Souvenir Shopping & Onward Departure from Vijayapura",
        "location": "Vijayapura",
        "overview": "Conclude your trip to Gol Gumbaz with morning shopping for local delicacies and souvenirs, followed by departure transfer.",
        "schedule": {
          "morning": {
            "title": "Handicrafts & Sweet Market Visit",
            "description": "Visit trusted local bazaar stalls to buy regional spices, handmade crafts, and traditional sweets of Vijayapura."
          },
          "afternoon": {
            "title": "Hotel Checkout & Farewell Lunch",
            "description": "Return to hotel for packing and checkout. Enjoy a farewell lunch before your transfer."
          },
          "evening": {
            "title": "Outbound Departure Transfer",
            "description": "Chauffeur drop to Vijayapura Airport or Railway Station for your onward journey home."
          }
        },
        "details": {
          "importantTimings": "Checkout: 12:00 PM | Transfer: As per flight/train",
          "meals": "Breakfast & Farewell Lunch included.",
          "transport": "AC Private Transfer Vehicle",
          "walkingLevel": "Easy Paced",
          "stay": "N/A (Day of departure)",
          "weather": "Pleasant breeze with sunny afternoon 24°C",
          "dressCode": "Comfortable travel wear",
          "packingSuggestions": "Check-in luggage packed, photo ID ready.",
          "accessibility": "Accessible vehicles",
          "visitorNote": "Arrive at Vijayapura station/airport 2 hours prior to departure.",
          "travelDuration": "Approx 1 hour transfer"
        }
      }
    ],
    "durationDays": 4,
    "durationLabel": "4 Days / 3 Nights",
    "travellerTypes": [
      "Families",
      "Couples"
    ],
    "accessibilityStatus": "Wheelchair Accessible",
    "childFriendly": true,
    "packageBenefits": [
      "Family Accommodation",
      "Local Sightseeing"
    ],
    "highlights": [
      "Guided heritage sightseeing of Gol Gumbaz landmarks",
      "Immersive cultural show and local market visits",
      "Delight in authentic regional delicacies"
    ],
    "tips": [
      "Carry sun protection (glasses/hat) for outdoor excursions.",
      "Keep local currency handy for local markets.",
      "Follow guidelines at heritage locations."
    ],
    "itinerarySummary": [
      "Day 1: Arrival in Vijayapura: Candlelight Dinner & Courtyard Music",
      "Day 2: Uncovering the Secrets of Gol Gumbaz",
      "Day 3: Excursion to Surrounding Landmarks of Vijayapura",
      "Day 4: Souvenir Shopping & Onward Departure from Vijayapura"
    ],
    "cancellationSummary": "Get a 100% full refund on cancellations made up to 15 days before the departure. Rescheduling options are fully flexible."
  },
  {
    "id": "family-hampi-monuments",
    "title": "Hampi Monuments",
    "destinationName": "Hampi Monuments",
    "destinations": "Hampi Monuments (Vijayanagara, Karnataka)",
    "location": "Vijayanagara, Karnataka",
    "route": [
      "Vijayanagara",
      "Hampi Monuments"
    ],
    "mainCategory": "Family",
    "categoryLabel": "Family Tour",
    "category": "Family",
    "region": "South India",
    "image": "/images/tourist-places/family/Hampi Monuments.jpg",
    "altText": "Hampi Monuments family tour destination in Vijayanagara, Karnataka",
    "duration": "4 Days / 3 Nights",
    "bestSeason": "November–February",
    "pace": "Moderate",
    "travellerType": "Family Friendly",
    "description": "A thoughtfully planned family tour offering comfort, guidance, and a memorable experience.",
    "price": 18500,
    "rating": null,
    "reviewCount": null,
    "seatsLeft": null,
    "recentBookings": null,
    "verified": null,
    "tags": [
      "Family Tour",
      "Family Friendly"
    ],
    "seniorFriendly": true,
    "wheelchairAccess": true,
    "vegMeals": false,
    "inclusions": {
      "hotel": true,
      "meals": true,
      "transit": true,
      "guide": true,
      "entryPasses": true,
      "medicalSupport": false,
      "localExperience": false
    },
    "itinerary": [
      {
        "day": 1,
        "title": "Beginning Your Journey in Vijayanagara & Hampi Monuments Gateway",
        "location": "Vijayanagara",
        "overview": "Arrive in vibrant Vijayanagara. Escorted transfer to Heritage Palace Resort overlooking Hampi Monuments. Spend your evening relaxing and sampling authentic local dishes.",
        "schedule": {
          "morning": {
            "title": "Arrival & Escorted Transfer in Vijayanagara",
            "description": "Meet our local travel escort at Vijayanagara transit hub. Receive a traditional welcome and transfer to Heritage Palace Resort overlooking Hampi Monuments."
          },
          "afternoon": {
            "title": "Unpack & Courtyard Leisure at Vijayanagara",
            "description": "Check into your sanitized room, unpack your luggage, and enjoy quiet leisure time exploring hotel gardens and facilities."
          },
          "evening": {
            "title": "Heritage Bazaar Promenade at Hampi Monuments",
            "description": "Stroll through the bustling neighborhood of Hampi Monuments. Watch the sunset and savor a multi-course dinner."
          }
        },
        "details": {
          "importantTimings": "Sanctum VIP Slot: 6:30 AM | Bazaar Hours: 4:00 PM - 8:30 PM",
          "meals": "Welcome Drink & Lavish Regional Buffet Dinner.",
          "transport": "AC Private Chauffeur Vehicle",
          "walkingLevel": "Easy Paced (Paved walkways)",
          "stay": "Heritage Palace Resort overlooking Hampi Monuments",
          "weather": "Cool crisp morning fog clearing to bright 22°C",
          "dressCode": "Casual travel clothing & sunhat",
          "packingSuggestions": "Traditional headscarf, slip-on shoes, reusable water bottle, dry bag.",
          "accessibility": "Wheelchair ramps & low step entry vehicle",
          "visitorNote": "Escort coordinator will brief you on timing for Hampi Monuments visit.",
          "travelDuration": "Approx 1 to 2 hours transfer"
        }
      },
      {
        "day": 2,
        "title": "Spiritual Morning Prayers at Hampi Monuments",
        "location": "Vijayanagara",
        "overview": "A deep dive into Hampi Monuments. Tour inner sanctums, historical galleries, and architectural viewpoints accompanied by an expert guide.",
        "schedule": {
          "morning": {
            "title": "Guided Tour of Hampi Monuments",
            "description": "Early morning entry to Hampi Monuments. Walk through central courtyards, ancient corridors, and historic halls."
          },
          "afternoon": {
            "title": "Culinary Tasting & Local Artisan Crafts near Vijayanagara",
            "description": "Taste authentic local regional cuisine. Visit local artisan markets specializing in handcrafts native to Karnataka."
          },
          "evening": {
            "title": "Sunset Viewpoint & Cultural Evening",
            "description": "Head to the highest scenic viewpoint overlooking Hampi Monuments. Capture sunset photographs followed by evening entertainment."
          }
        },
        "details": {
          "importantTimings": "Sanctum VIP Slot: 6:30 AM | Bazaar Hours: 4:00 PM - 8:30 PM",
          "meals": "Complimentary Buffet Breakfast & Traditional Cuisine Lunch.",
          "transport": "AC Private Sedan / SUV",
          "walkingLevel": "Moderate (Historical walkways & corridors)",
          "stay": "Heritage Palace Resort overlooking Hampi Monuments",
          "weather": "Cool crisp morning fog clearing to bright 22°C",
          "dressCode": "Comfortable daywear",
          "packingSuggestions": "Light cotton wear, camera with telephoto lens, sunscreen lotion, photo ID.",
          "accessibility": "Assistive ramps available at main portals",
          "visitorNote": "Follow local heritage guidelines inside Hampi Monuments.",
          "travelDuration": "Full day sightseeing approx 5 to 6 hours"
        }
      },
      {
        "day": 3,
        "title": "Excursion to Surrounding Landmarks of Vijayanagara",
        "location": "Karnataka",
        "overview": "Expand your exploration with a day trip to surrounding heritage spots, sacred lakes, and craft villages near Vijayanagara.",
        "schedule": {
          "morning": {
            "title": "Heritage Excursion & Scenic Drive",
            "description": "Scenic drive through countryside roads surrounding Vijayanagara. Visit secondary monuments and historic watchtowers."
          },
          "afternoon": {
            "title": "Artisan Workshop & Traditional Lunch",
            "description": "Interact with local master craftsmen demonstrating native handloom weaving or stone carving. Enjoy traditional lunch."
          },
          "evening": {
            "title": "Twilight Promenade & Dinner",
            "description": "Enjoy a relaxed walk around the local market square. Purchase authentic local sweets and dinner."
          }
        },
        "details": {
          "importantTimings": "Excursion Departure: 9:00 AM",
          "meals": "Organic Farm-to-Table Breakfast & Seafood / Veg Dinner.",
          "transport": "AC Private Vehicle",
          "walkingLevel": "Easy Paced",
          "stay": "Heritage Palace Resort overlooking Hampi Monuments",
          "weather": "Cool crisp morning fog clearing to bright 22°C",
          "dressCode": "Comfortable clothing",
          "packingSuggestions": "Comfortable walking socks, power bank, shoulder shawl, daypack.",
          "accessibility": "Accessible vehicles",
          "visitorNote": "Authentic souvenirs certified by local artisans.",
          "travelDuration": "Approx 4 hours excursion"
        }
      },
      {
        "day": 4,
        "title": "Souvenir Shopping & Onward Departure from Vijayanagara",
        "location": "Vijayanagara",
        "overview": "Conclude your trip to Hampi Monuments with morning shopping for local delicacies and souvenirs, followed by departure transfer.",
        "schedule": {
          "morning": {
            "title": "Handicrafts & Sweet Market Visit",
            "description": "Visit trusted local bazaar stalls to buy regional spices, handmade crafts, and traditional sweets of Vijayanagara."
          },
          "afternoon": {
            "title": "Hotel Checkout & Farewell Lunch",
            "description": "Return to hotel for packing and checkout. Enjoy a farewell lunch before your transfer."
          },
          "evening": {
            "title": "Outbound Departure Transfer",
            "description": "Chauffeur drop to Vijayanagara Airport or Railway Station for your onward journey home."
          }
        },
        "details": {
          "importantTimings": "Checkout: 12:00 PM | Transfer: As per flight/train",
          "meals": "Breakfast & Farewell Lunch included.",
          "transport": "AC Private Transfer Vehicle",
          "walkingLevel": "Easy Paced",
          "stay": "N/A (Day of departure)",
          "weather": "Cool crisp morning fog clearing to bright 22°C",
          "dressCode": "Comfortable travel wear",
          "packingSuggestions": "Check-in luggage packed, photo ID ready.",
          "accessibility": "Accessible vehicles",
          "visitorNote": "Arrive at Vijayanagara station/airport 2 hours prior to departure.",
          "travelDuration": "Approx 1 hour transfer"
        }
      }
    ],
    "durationDays": 4,
    "durationLabel": "4 Days / 3 Nights",
    "travellerTypes": [
      "History Lovers",
      "Families"
    ],
    "accessibilityStatus": "Partial Accessibility",
    "childFriendly": true,
    "packageBenefits": [
      "Heritage Guide",
      "Monument Entry Assistance"
    ],
    "highlights": [
      "Guided heritage sightseeing of Hampi Monuments landmarks",
      "Immersive cultural show and local market visits",
      "Delight in authentic regional delicacies"
    ],
    "tips": [
      "Carry sun protection (glasses/hat) for outdoor excursions.",
      "Keep local currency handy for local markets.",
      "Follow guidelines at heritage locations."
    ],
    "itinerarySummary": [
      "Day 1: Beginning Your Journey in Vijayanagara & Hampi Monuments Gateway",
      "Day 2: Spiritual Morning Prayers at Hampi Monuments",
      "Day 3: Excursion to Surrounding Landmarks of Vijayanagara",
      "Day 4: Souvenir Shopping & Onward Departure from Vijayanagara"
    ],
    "cancellationSummary": "Get a 100% full refund on cancellations made up to 15 days before the departure. Rescheduling options are fully flexible."
  },
  {
    "id": "family-hawa-mahal",
    "title": "Hawa Mahal",
    "destinationName": "Hawa Mahal",
    "destinations": "Hawa Mahal (Jaipur, Rajasthan)",
    "location": "Jaipur, Rajasthan",
    "route": [
      "Jaipur",
      "Hawa Mahal"
    ],
    "mainCategory": "Family",
    "categoryLabel": "Family Tour",
    "category": "Family",
    "region": "North India",
    "image": "/images/tourist-places/family/Hawa Mahal.jpg",
    "altText": "Hawa Mahal family tour destination in Jaipur, Rajasthan",
    "duration": "4 Days / 3 Nights",
    "bestSeason": "October–March",
    "pace": "Easy",
    "travellerType": "Family Friendly",
    "description": "A thoughtfully planned family tour offering comfort, guidance, and a memorable experience.",
    "price": 20000,
    "rating": null,
    "reviewCount": null,
    "seatsLeft": null,
    "recentBookings": null,
    "verified": null,
    "tags": [
      "Family Tour",
      "Family Friendly"
    ],
    "seniorFriendly": true,
    "wheelchairAccess": true,
    "vegMeals": false,
    "inclusions": {
      "hotel": true,
      "meals": true,
      "transit": true,
      "guide": false,
      "entryPasses": false,
      "medicalSupport": false,
      "localExperience": false
    },
    "itinerary": [
      {
        "day": 1,
        "title": "Arrival in Jaipur: Panoramic Terrace Lounge Session",
        "location": "Jaipur",
        "overview": "Arrive in vibrant Jaipur. Escorted transfer to Boutique Lakefront Haveli in Jaipur. Spend your evening relaxing and sampling authentic local dishes.",
        "schedule": {
          "morning": {
            "title": "Arrival & Escorted Transfer in Jaipur",
            "description": "Meet our local travel escort at Jaipur transit hub. Receive a traditional welcome and transfer to Boutique Lakefront Haveli in Jaipur."
          },
          "afternoon": {
            "title": "Unpack & Courtyard Leisure at Jaipur",
            "description": "Check into your sanitized room, unpack your luggage, and enjoy quiet leisure time exploring hotel gardens and facilities."
          },
          "evening": {
            "title": "Panoramic Terrace Lounge Session at Hawa Mahal",
            "description": "Stroll through the bustling neighborhood of Hawa Mahal. Watch the sunset and savor a multi-course dinner."
          }
        },
        "details": {
          "importantTimings": "Sunrise Tour: 5:45 AM | Museum Hours: 9:30 AM - 5:00 PM",
          "meals": "Welcome Drink & Lavish Regional Buffet Dinner.",
          "transport": "AC Private Chauffeur Vehicle",
          "walkingLevel": "Easy Paced (Paved walkways)",
          "stay": "Boutique Lakefront Haveli in Jaipur",
          "weather": "Warm tropical sunshine with ocean breeze 27°C",
          "dressCode": "Casual travel clothing & sunhat",
          "packingSuggestions": "Light cotton wear, camera with telephoto lens, sunscreen lotion, photo ID.",
          "accessibility": "Wheelchair ramps & low step entry vehicle",
          "visitorNote": "Escort coordinator will brief you on timing for Hawa Mahal visit.",
          "travelDuration": "Approx 1 to 2 hours transfer"
        }
      },
      {
        "day": 2,
        "title": "Architectural Tour of Hawa Mahal",
        "location": "Jaipur",
        "overview": "A deep dive into Hawa Mahal. Tour inner sanctums, historical galleries, and architectural viewpoints accompanied by an expert guide.",
        "schedule": {
          "morning": {
            "title": "Guided Tour of Hawa Mahal",
            "description": "Early morning entry to Hawa Mahal. Walk through central courtyards, ancient corridors, and historic halls."
          },
          "afternoon": {
            "title": "Excursion to Surrounding Haveli & Gardens near Jaipur",
            "description": "Taste authentic local regional cuisine. Visit local artisan markets specializing in handcrafts native to Rajasthan."
          },
          "evening": {
            "title": "Sunset Viewpoint & Cultural Evening",
            "description": "Head to the highest scenic viewpoint overlooking Hawa Mahal. Capture sunset photographs followed by evening entertainment."
          }
        },
        "details": {
          "importantTimings": "Sunrise Tour: 5:45 AM | Museum Hours: 9:30 AM - 5:00 PM",
          "meals": "Complimentary Buffet Breakfast & Traditional Cuisine Lunch.",
          "transport": "AC Private Sedan / SUV",
          "walkingLevel": "Moderate (Historical walkways & corridors)",
          "stay": "Boutique Lakefront Haveli in Jaipur",
          "weather": "Warm tropical sunshine with ocean breeze 27°C",
          "dressCode": "Comfortable daywear",
          "packingSuggestions": "Comfortable walking socks, power bank, shoulder shawl, daypack.",
          "accessibility": "Assistive ramps available at main portals",
          "visitorNote": "Follow local heritage guidelines inside Hawa Mahal.",
          "travelDuration": "Full day sightseeing approx 5 to 6 hours"
        }
      },
      {
        "day": 3,
        "title": "Excursion to Surrounding Landmarks of Jaipur",
        "location": "Rajasthan",
        "overview": "Expand your exploration with a day trip to surrounding heritage spots, sacred lakes, and craft villages near Jaipur.",
        "schedule": {
          "morning": {
            "title": "Heritage Excursion & Scenic Drive",
            "description": "Scenic drive through countryside roads surrounding Jaipur. Visit secondary monuments and historic watchtowers."
          },
          "afternoon": {
            "title": "Artisan Workshop & Traditional Lunch",
            "description": "Interact with local master craftsmen demonstrating native handloom weaving or stone carving. Enjoy traditional lunch."
          },
          "evening": {
            "title": "Twilight Promenade & Dinner",
            "description": "Enjoy a relaxed walk around the local market square. Purchase authentic local sweets and dinner."
          }
        },
        "details": {
          "importantTimings": "Excursion Departure: 9:00 AM",
          "meals": "Organic Farm-to-Table Breakfast & Seafood / Veg Dinner.",
          "transport": "AC Private Vehicle",
          "walkingLevel": "Easy Paced",
          "stay": "Boutique Lakefront Haveli in Jaipur",
          "weather": "Warm tropical sunshine with ocean breeze 27°C",
          "dressCode": "Comfortable clothing",
          "packingSuggestions": "Breathable linen wear, sunglasses, small currency notes for local shops.",
          "accessibility": "Accessible vehicles",
          "visitorNote": "Authentic souvenirs certified by local artisans.",
          "travelDuration": "Approx 4 hours excursion"
        }
      },
      {
        "day": 4,
        "title": "Souvenir Shopping & Onward Departure from Jaipur",
        "location": "Jaipur",
        "overview": "Conclude your trip to Hawa Mahal with morning shopping for local delicacies and souvenirs, followed by departure transfer.",
        "schedule": {
          "morning": {
            "title": "Handicrafts & Sweet Market Visit",
            "description": "Visit trusted local bazaar stalls to buy regional spices, handmade crafts, and traditional sweets of Jaipur."
          },
          "afternoon": {
            "title": "Hotel Checkout & Farewell Lunch",
            "description": "Return to hotel for packing and checkout. Enjoy a farewell lunch before your transfer."
          },
          "evening": {
            "title": "Outbound Departure Transfer",
            "description": "Chauffeur drop to Jaipur Airport or Railway Station for your onward journey home."
          }
        },
        "details": {
          "importantTimings": "Checkout: 12:00 PM | Transfer: As per flight/train",
          "meals": "Breakfast & Farewell Lunch included.",
          "transport": "AC Private Transfer Vehicle",
          "walkingLevel": "Easy Paced",
          "stay": "N/A (Day of departure)",
          "weather": "Warm tropical sunshine with ocean breeze 27°C",
          "dressCode": "Comfortable travel wear",
          "packingSuggestions": "Check-in luggage packed, photo ID ready.",
          "accessibility": "Accessible vehicles",
          "visitorNote": "Arrive at Jaipur station/airport 2 hours prior to departure.",
          "travelDuration": "Approx 1 hour transfer"
        }
      }
    ],
    "durationDays": 4,
    "durationLabel": "4 Days / 3 Nights",
    "travellerTypes": [
      "Families",
      "Couples"
    ],
    "accessibilityStatus": "Wheelchair Accessible",
    "childFriendly": true,
    "packageBenefits": [
      "Family Accommodation",
      "Local Sightseeing"
    ],
    "highlights": [
      "Guided heritage sightseeing of Hawa Mahal landmarks",
      "Immersive cultural show and local market visits",
      "Delight in authentic regional delicacies"
    ],
    "tips": [
      "Carry sun protection (glasses/hat) for outdoor excursions.",
      "Keep local currency handy for local markets.",
      "Follow guidelines at heritage locations."
    ],
    "itinerarySummary": [
      "Day 1: Arrival in Jaipur: Panoramic Terrace Lounge Session",
      "Day 2: Architectural Tour of Hawa Mahal",
      "Day 3: Excursion to Surrounding Landmarks of Jaipur",
      "Day 4: Souvenir Shopping & Onward Departure from Jaipur"
    ],
    "cancellationSummary": "Get a 100% full refund on cancellations made up to 15 days before the departure. Rescheduling options are fully flexible."
  },
  {
    "id": "family-leaning-tower-of-pisa",
    "title": "Leaning Tower of Pisa",
    "destinationName": "Leaning Tower of Pisa",
    "destinations": "Leaning Tower of Pisa (Pisa, Italy)",
    "location": "Pisa, Italy",
    "route": [
      "Pisa",
      "Leaning Tower of Pisa"
    ],
    "mainCategory": "Family",
    "categoryLabel": "Family Tour",
    "category": "Family",
    "region": "International",
    "image": "/images/tourist-places/family/Leaning Tower of Pisa.webp",
    "altText": "Leaning Tower of Pisa family tour destination in Pisa, Italy",
    "duration": "4 Days / 3 Nights",
    "bestSeason": "October–March",
    "pace": "Easy",
    "travellerType": "Family Friendly",
    "description": "A thoughtfully planned family tour offering comfort, guidance, and a memorable experience.",
    "price": 21500,
    "rating": null,
    "reviewCount": null,
    "seatsLeft": null,
    "recentBookings": null,
    "verified": null,
    "tags": [
      "Family Tour",
      "Family Friendly"
    ],
    "seniorFriendly": true,
    "wheelchairAccess": true,
    "vegMeals": false,
    "inclusions": {
      "hotel": true,
      "meals": true,
      "transit": true,
      "guide": false,
      "entryPasses": false,
      "medicalSupport": false,
      "localExperience": false
    },
    "itinerary": [
      {
        "day": 1,
        "title": "Spiritual Welcome to Pisa & Leaning Tower of Pisa Gateway",
        "location": "Pisa",
        "overview": "Arrive in vibrant Pisa. Escorted transfer to Royal Heritage Villa near Leaning Tower of Pisa. Spend your evening relaxing and sampling authentic local dishes.",
        "schedule": {
          "morning": {
            "title": "Arrival & Escorted Transfer in Pisa",
            "description": "Meet our local travel escort at Pisa transit hub. Receive a traditional welcome and transfer to Royal Heritage Villa near Leaning Tower of Pisa."
          },
          "afternoon": {
            "title": "Unpack & Courtyard Leisure at Pisa",
            "description": "Check into your sanitized room, unpack your luggage, and enjoy quiet leisure time exploring hotel gardens and facilities."
          },
          "evening": {
            "title": "Lakeside Stroll & Local Cuisine at Leaning Tower of Pisa",
            "description": "Stroll through the bustling neighborhood of Leaning Tower of Pisa. Watch the sunset and savor a multi-course dinner."
          }
        },
        "details": {
          "importantTimings": "Guided Walk: 9:00 AM | Sunset Point Departure: 5:15 PM",
          "meals": "Welcome Drink & Lavish Regional Buffet Dinner.",
          "transport": "AC Private Chauffeur Vehicle",
          "walkingLevel": "Easy Paced (Paved walkways)",
          "stay": "Royal Heritage Villa near Leaning Tower of Pisa",
          "weather": "Crisp mountain climate, clear blue skies 19°C",
          "dressCode": "Casual travel clothing & sunhat",
          "packingSuggestions": "Comfortable walking socks, power bank, shoulder shawl, daypack.",
          "accessibility": "Wheelchair ramps & low step entry vehicle",
          "visitorNote": "Escort coordinator will brief you on timing for Leaning Tower of Pisa visit.",
          "travelDuration": "Approx 1 to 2 hours transfer"
        }
      },
      {
        "day": 2,
        "title": "Dawn Guided Expedition of Leaning Tower of Pisa",
        "location": "Pisa",
        "overview": "A deep dive into Leaning Tower of Pisa. Tour inner sanctums, historical galleries, and architectural viewpoints accompanied by an expert guide.",
        "schedule": {
          "morning": {
            "title": "Guided Tour of Leaning Tower of Pisa",
            "description": "Early morning entry to Leaning Tower of Pisa. Walk through central courtyards, ancient corridors, and historic halls."
          },
          "afternoon": {
            "title": "Museum Treasures & Heritage Galleries near Pisa",
            "description": "Taste authentic local regional cuisine. Visit local artisan markets specializing in handcrafts native to Italy."
          },
          "evening": {
            "title": "Sunset Viewpoint & Cultural Evening",
            "description": "Head to the highest scenic viewpoint overlooking Leaning Tower of Pisa. Capture sunset photographs followed by evening entertainment."
          }
        },
        "details": {
          "importantTimings": "Guided Walk: 9:00 AM | Sunset Point Departure: 5:15 PM",
          "meals": "Complimentary Buffet Breakfast & Traditional Cuisine Lunch.",
          "transport": "AC Private Sedan / SUV",
          "walkingLevel": "Moderate (Historical walkways & corridors)",
          "stay": "Royal Heritage Villa near Leaning Tower of Pisa",
          "weather": "Crisp mountain climate, clear blue skies 19°C",
          "dressCode": "Comfortable daywear",
          "packingSuggestions": "Breathable linen wear, sunglasses, small currency notes for local shops.",
          "accessibility": "Assistive ramps available at main portals",
          "visitorNote": "Follow local heritage guidelines inside Leaning Tower of Pisa.",
          "travelDuration": "Full day sightseeing approx 5 to 6 hours"
        }
      },
      {
        "day": 3,
        "title": "Excursion to Surrounding Landmarks of Pisa",
        "location": "Italy",
        "overview": "Expand your exploration with a day trip to surrounding heritage spots, sacred lakes, and craft villages near Pisa.",
        "schedule": {
          "morning": {
            "title": "Heritage Excursion & Scenic Drive",
            "description": "Scenic drive through countryside roads surrounding Pisa. Visit secondary monuments and historic watchtowers."
          },
          "afternoon": {
            "title": "Artisan Workshop & Traditional Lunch",
            "description": "Interact with local master craftsmen demonstrating native handloom weaving or stone carving. Enjoy traditional lunch."
          },
          "evening": {
            "title": "Twilight Promenade & Dinner",
            "description": "Enjoy a relaxed walk around the local market square. Purchase authentic local sweets and dinner."
          }
        },
        "details": {
          "importantTimings": "Excursion Departure: 9:00 AM",
          "meals": "Organic Farm-to-Table Breakfast & Seafood / Veg Dinner.",
          "transport": "AC Private Vehicle",
          "walkingLevel": "Easy Paced",
          "stay": "Royal Heritage Villa near Leaning Tower of Pisa",
          "weather": "Crisp mountain climate, clear blue skies 19°C",
          "dressCode": "Comfortable clothing",
          "packingSuggestions": "Sunhat, sunglasses, comfortable walking shoes, light jacket, camera.",
          "accessibility": "Accessible vehicles",
          "visitorNote": "Authentic souvenirs certified by local artisans.",
          "travelDuration": "Approx 4 hours excursion"
        }
      },
      {
        "day": 4,
        "title": "Souvenir Shopping & Onward Departure from Pisa",
        "location": "Pisa",
        "overview": "Conclude your trip to Leaning Tower of Pisa with morning shopping for local delicacies and souvenirs, followed by departure transfer.",
        "schedule": {
          "morning": {
            "title": "Handicrafts & Sweet Market Visit",
            "description": "Visit trusted local bazaar stalls to buy regional spices, handmade crafts, and traditional sweets of Pisa."
          },
          "afternoon": {
            "title": "Hotel Checkout & Farewell Lunch",
            "description": "Return to hotel for packing and checkout. Enjoy a farewell lunch before your transfer."
          },
          "evening": {
            "title": "Outbound Departure Transfer",
            "description": "Chauffeur drop to Pisa Airport or Railway Station for your onward journey home."
          }
        },
        "details": {
          "importantTimings": "Checkout: 12:00 PM | Transfer: As per flight/train",
          "meals": "Breakfast & Farewell Lunch included.",
          "transport": "AC Private Transfer Vehicle",
          "walkingLevel": "Easy Paced",
          "stay": "N/A (Day of departure)",
          "weather": "Crisp mountain climate, clear blue skies 19°C",
          "dressCode": "Comfortable travel wear",
          "packingSuggestions": "Check-in luggage packed, photo ID ready.",
          "accessibility": "Accessible vehicles",
          "visitorNote": "Arrive at Pisa station/airport 2 hours prior to departure.",
          "travelDuration": "Approx 1 hour transfer"
        }
      }
    ],
    "durationDays": 4,
    "durationLabel": "4 Days / 3 Nights",
    "travellerTypes": [
      "Families",
      "Couples"
    ],
    "accessibilityStatus": "Wheelchair Accessible",
    "childFriendly": true,
    "packageBenefits": [
      "Family Accommodation",
      "Local Sightseeing"
    ],
    "highlights": [
      "Guided heritage sightseeing of Leaning Tower of Pisa landmarks",
      "Immersive cultural show and local market visits",
      "Delight in authentic regional delicacies"
    ],
    "tips": [
      "Carry sun protection (glasses/hat) for outdoor excursions.",
      "Keep local currency handy for local markets.",
      "Follow guidelines at heritage locations."
    ],
    "itinerarySummary": [
      "Day 1: Spiritual Welcome to Pisa & Leaning Tower of Pisa Gateway",
      "Day 2: Dawn Guided Expedition of Leaning Tower of Pisa",
      "Day 3: Excursion to Surrounding Landmarks of Pisa",
      "Day 4: Souvenir Shopping & Onward Departure from Pisa"
    ],
    "cancellationSummary": "Get a 100% full refund on cancellations made up to 15 days before the departure. Rescheduling options are fully flexible."
  },
  {
    "id": "family-living-root-bridges",
    "title": "Living Root Bridges",
    "destinationName": "Living Root Bridges",
    "destinations": "Living Root Bridges (Cherrapunji, Meghalaya)",
    "location": "Cherrapunji, Meghalaya",
    "route": [
      "Cherrapunji",
      "Living Root Bridges"
    ],
    "mainCategory": "Family",
    "categoryLabel": "Family Tour",
    "category": "Family",
    "region": "North India",
    "image": "/images/tourist-places/family/Living Root Bridges.jpg",
    "altText": "Living Root Bridges family tour destination in Cherrapunji, Meghalaya",
    "duration": "4 Days / 3 Nights",
    "bestSeason": "October–March",
    "pace": "Easy",
    "travellerType": "Family Friendly",
    "description": "A thoughtfully planned family tour offering comfort, guidance, and a memorable experience.",
    "price": 23000,
    "rating": null,
    "reviewCount": null,
    "seatsLeft": null,
    "recentBookings": null,
    "verified": null,
    "tags": [
      "Family Tour",
      "Family Friendly"
    ],
    "seniorFriendly": true,
    "wheelchairAccess": true,
    "vegMeals": false,
    "inclusions": {
      "hotel": true,
      "meals": true,
      "transit": true,
      "guide": false,
      "entryPasses": false,
      "medicalSupport": false,
      "localExperience": false
    },
    "itinerary": [
      {
        "day": 1,
        "title": "Arrival in Cherrapunji: Traditional Ceremony & Quiet Reflection",
        "location": "Cherrapunji",
        "overview": "Arrive in vibrant Cherrapunji. Escorted transfer to Luxury Eco Lodge in Cherrapunji. Spend your evening relaxing and sampling authentic local dishes.",
        "schedule": {
          "morning": {
            "title": "Arrival & Escorted Transfer in Cherrapunji",
            "description": "Meet our local travel escort at Cherrapunji transit hub. Receive a traditional welcome and transfer to Luxury Eco Lodge in Cherrapunji."
          },
          "afternoon": {
            "title": "Unpack & Courtyard Leisure at Cherrapunji",
            "description": "Check into your sanitized room, unpack your luggage, and enjoy quiet leisure time exploring hotel gardens and facilities."
          },
          "evening": {
            "title": "Traditional Ceremony & Quiet Reflection at Living Root Bridges",
            "description": "Stroll through the bustling neighborhood of Living Root Bridges. Watch the sunset and savor a multi-course dinner."
          }
        },
        "details": {
          "importantTimings": "Boat Departure: 6:00 AM | Heritage Show: 7:00 PM",
          "meals": "Welcome Drink & Lavish Regional Buffet Dinner.",
          "transport": "AC Private Chauffeur Vehicle",
          "walkingLevel": "Easy Paced (Paved walkways)",
          "stay": "Luxury Eco Lodge in Cherrapunji",
          "weather": "Refreshing river mist with mild sun 23°C",
          "dressCode": "Casual travel clothing & sunhat",
          "packingSuggestions": "Breathable linen wear, sunglasses, small currency notes for local shops.",
          "accessibility": "Wheelchair ramps & low step entry vehicle",
          "visitorNote": "Escort coordinator will brief you on timing for Living Root Bridges visit.",
          "travelDuration": "Approx 1 to 2 hours transfer"
        }
      },
      {
        "day": 2,
        "title": "Early Sunrise Visit to Living Root Bridges",
        "location": "Cherrapunji",
        "overview": "A deep dive into Living Root Bridges. Tour inner sanctums, historical galleries, and architectural viewpoints accompanied by an expert guide.",
        "schedule": {
          "morning": {
            "title": "Guided Tour of Living Root Bridges",
            "description": "Early morning entry to Living Root Bridges. Walk through central courtyards, ancient corridors, and historic halls."
          },
          "afternoon": {
            "title": "Boat Ride & Riverfront Exploration near Cherrapunji",
            "description": "Taste authentic local regional cuisine. Visit local artisan markets specializing in handcrafts native to Meghalaya."
          },
          "evening": {
            "title": "Sunset Viewpoint & Cultural Evening",
            "description": "Head to the highest scenic viewpoint overlooking Living Root Bridges. Capture sunset photographs followed by evening entertainment."
          }
        },
        "details": {
          "importantTimings": "Boat Departure: 6:00 AM | Heritage Show: 7:00 PM",
          "meals": "Complimentary Buffet Breakfast & Traditional Cuisine Lunch.",
          "transport": "AC Private Sedan / SUV",
          "walkingLevel": "Moderate (Historical walkways & corridors)",
          "stay": "Luxury Eco Lodge in Cherrapunji",
          "weather": "Refreshing river mist with mild sun 23°C",
          "dressCode": "Comfortable daywear",
          "packingSuggestions": "Sunhat, sunglasses, comfortable walking shoes, light jacket, camera.",
          "accessibility": "Assistive ramps available at main portals",
          "visitorNote": "Follow local heritage guidelines inside Living Root Bridges.",
          "travelDuration": "Full day sightseeing approx 5 to 6 hours"
        }
      },
      {
        "day": 3,
        "title": "Excursion to Surrounding Landmarks of Cherrapunji",
        "location": "Meghalaya",
        "overview": "Expand your exploration with a day trip to surrounding heritage spots, sacred lakes, and craft villages near Cherrapunji.",
        "schedule": {
          "morning": {
            "title": "Heritage Excursion & Scenic Drive",
            "description": "Scenic drive through countryside roads surrounding Cherrapunji. Visit secondary monuments and historic watchtowers."
          },
          "afternoon": {
            "title": "Artisan Workshop & Traditional Lunch",
            "description": "Interact with local master craftsmen demonstrating native handloom weaving or stone carving. Enjoy traditional lunch."
          },
          "evening": {
            "title": "Twilight Promenade & Dinner",
            "description": "Enjoy a relaxed walk around the local market square. Purchase authentic local sweets and dinner."
          }
        },
        "details": {
          "importantTimings": "Excursion Departure: 9:00 AM",
          "meals": "Organic Farm-to-Table Breakfast & Seafood / Veg Dinner.",
          "transport": "AC Private Vehicle",
          "walkingLevel": "Easy Paced",
          "stay": "Luxury Eco Lodge in Cherrapunji",
          "weather": "Refreshing river mist with mild sun 23°C",
          "dressCode": "Comfortable clothing",
          "packingSuggestions": "Traditional headscarf, slip-on shoes, reusable water bottle, dry bag.",
          "accessibility": "Accessible vehicles",
          "visitorNote": "Authentic souvenirs certified by local artisans.",
          "travelDuration": "Approx 4 hours excursion"
        }
      },
      {
        "day": 4,
        "title": "Souvenir Shopping & Onward Departure from Cherrapunji",
        "location": "Cherrapunji",
        "overview": "Conclude your trip to Living Root Bridges with morning shopping for local delicacies and souvenirs, followed by departure transfer.",
        "schedule": {
          "morning": {
            "title": "Handicrafts & Sweet Market Visit",
            "description": "Visit trusted local bazaar stalls to buy regional spices, handmade crafts, and traditional sweets of Cherrapunji."
          },
          "afternoon": {
            "title": "Hotel Checkout & Farewell Lunch",
            "description": "Return to hotel for packing and checkout. Enjoy a farewell lunch before your transfer."
          },
          "evening": {
            "title": "Outbound Departure Transfer",
            "description": "Chauffeur drop to Cherrapunji Airport or Railway Station for your onward journey home."
          }
        },
        "details": {
          "importantTimings": "Checkout: 12:00 PM | Transfer: As per flight/train",
          "meals": "Breakfast & Farewell Lunch included.",
          "transport": "AC Private Transfer Vehicle",
          "walkingLevel": "Easy Paced",
          "stay": "N/A (Day of departure)",
          "weather": "Refreshing river mist with mild sun 23°C",
          "dressCode": "Comfortable travel wear",
          "packingSuggestions": "Check-in luggage packed, photo ID ready.",
          "accessibility": "Accessible vehicles",
          "visitorNote": "Arrive at Cherrapunji station/airport 2 hours prior to departure.",
          "travelDuration": "Approx 1 hour transfer"
        }
      }
    ],
    "durationDays": 4,
    "durationLabel": "4 Days / 3 Nights",
    "travellerTypes": [
      "Families",
      "Couples"
    ],
    "accessibilityStatus": "Wheelchair Accessible",
    "childFriendly": true,
    "packageBenefits": [
      "Family Accommodation",
      "Local Sightseeing"
    ],
    "highlights": [
      "Guided heritage sightseeing of Living Root Bridges landmarks",
      "Immersive cultural show and local market visits",
      "Delight in authentic regional delicacies"
    ],
    "tips": [
      "Carry sun protection (glasses/hat) for outdoor excursions.",
      "Keep local currency handy for local markets.",
      "Follow guidelines at heritage locations."
    ],
    "itinerarySummary": [
      "Day 1: Arrival in Cherrapunji: Traditional Ceremony & Quiet Reflection",
      "Day 2: Early Sunrise Visit to Living Root Bridges",
      "Day 3: Excursion to Surrounding Landmarks of Cherrapunji",
      "Day 4: Souvenir Shopping & Onward Departure from Cherrapunji"
    ],
    "cancellationSummary": "Get a 100% full refund on cancellations made up to 15 days before the departure. Rescheduling options are fully flexible."
  },
  {
    "id": "family-london-eye",
    "title": "London Eye",
    "destinationName": "London Eye",
    "destinations": "London Eye (London, United Kingdom)",
    "location": "London, United Kingdom",
    "route": [
      "London",
      "London Eye"
    ],
    "mainCategory": "Family",
    "categoryLabel": "Family Tour",
    "category": "Family",
    "region": "International",
    "image": "/images/tourist-places/family/London Eye.jpg",
    "altText": "London Eye family tour destination in London, United Kingdom",
    "duration": "4 Days / 3 Nights",
    "bestSeason": "Year-Round",
    "pace": "Easy",
    "travellerType": "Family Friendly",
    "description": "A thoughtfully planned family tour offering comfort, guidance, and a memorable experience.",
    "price": 24500,
    "rating": null,
    "reviewCount": null,
    "seatsLeft": null,
    "recentBookings": null,
    "verified": null,
    "tags": [
      "Family Tour",
      "Family Friendly"
    ],
    "seniorFriendly": true,
    "wheelchairAccess": true,
    "vegMeals": false,
    "inclusions": {
      "hotel": true,
      "meals": true,
      "transit": true,
      "guide": false,
      "entryPasses": false,
      "medicalSupport": false,
      "localExperience": false
    },
    "itinerary": [
      {
        "day": 1,
        "title": "Welcome & Check-in at London & London Eye Gateway",
        "location": "London",
        "overview": "Arrive in vibrant London. Escorted transfer to Grand Riverfront Resort near London Eye. Spend your evening relaxing and sampling authentic local dishes.",
        "schedule": {
          "morning": {
            "title": "Arrival & Escorted Transfer in London",
            "description": "Meet our local travel escort at London transit hub. Receive a traditional welcome and transfer to Grand Riverfront Resort near London Eye."
          },
          "afternoon": {
            "title": "Unpack & Courtyard Leisure at London",
            "description": "Check into your sanitized room, unpack your luggage, and enjoy quiet leisure time exploring hotel gardens and facilities."
          },
          "evening": {
            "title": "Sunset Walk & Local Market Flavors at London Eye",
            "description": "Stroll through the bustling neighborhood of London Eye. Watch the sunset and savor a multi-course dinner."
          }
        },
        "details": {
          "importantTimings": "Gate Entry: 8:00 AM | Evening Light Show: 6:30 PM",
          "meals": "Welcome Drink & Lavish Regional Buffet Dinner.",
          "transport": "AC Private Chauffeur Vehicle",
          "walkingLevel": "Easy Paced (Paved walkways)",
          "stay": "Grand Riverfront Resort near London Eye",
          "weather": "Pleasant breeze with sunny afternoon 24°C",
          "dressCode": "Casual travel clothing & sunhat",
          "packingSuggestions": "Sunhat, sunglasses, comfortable walking shoes, light jacket, camera.",
          "accessibility": "Wheelchair ramps & low step entry vehicle",
          "visitorNote": "Escort coordinator will brief you on timing for London Eye visit.",
          "travelDuration": "Approx 1 to 2 hours transfer"
        }
      },
      {
        "day": 2,
        "title": "Exclusive Morning Tour of London Eye",
        "location": "London",
        "overview": "A deep dive into London Eye. Tour inner sanctums, historical galleries, and architectural viewpoints accompanied by an expert guide.",
        "schedule": {
          "morning": {
            "title": "Guided Tour of London Eye",
            "description": "Early morning entry to London Eye. Walk through central courtyards, ancient corridors, and historic halls."
          },
          "afternoon": {
            "title": "Artisan Handloom Workshop & Souvenirs near London",
            "description": "Taste authentic local regional cuisine. Visit local artisan markets specializing in handcrafts native to United Kingdom."
          },
          "evening": {
            "title": "Sunset Viewpoint & Cultural Evening",
            "description": "Head to the highest scenic viewpoint overlooking London Eye. Capture sunset photographs followed by evening entertainment."
          }
        },
        "details": {
          "importantTimings": "Gate Entry: 8:00 AM | Evening Light Show: 6:30 PM",
          "meals": "Complimentary Buffet Breakfast & Traditional Cuisine Lunch.",
          "transport": "AC Private Sedan / SUV",
          "walkingLevel": "Moderate (Historical walkways & corridors)",
          "stay": "Grand Riverfront Resort near London Eye",
          "weather": "Pleasant breeze with sunny afternoon 24°C",
          "dressCode": "Comfortable daywear",
          "packingSuggestions": "Traditional headscarf, slip-on shoes, reusable water bottle, dry bag.",
          "accessibility": "Assistive ramps available at main portals",
          "visitorNote": "Follow local heritage guidelines inside London Eye.",
          "travelDuration": "Full day sightseeing approx 5 to 6 hours"
        }
      },
      {
        "day": 3,
        "title": "Excursion to Surrounding Landmarks of London",
        "location": "United Kingdom",
        "overview": "Expand your exploration with a day trip to surrounding heritage spots, sacred lakes, and craft villages near London.",
        "schedule": {
          "morning": {
            "title": "Heritage Excursion & Scenic Drive",
            "description": "Scenic drive through countryside roads surrounding London. Visit secondary monuments and historic watchtowers."
          },
          "afternoon": {
            "title": "Artisan Workshop & Traditional Lunch",
            "description": "Interact with local master craftsmen demonstrating native handloom weaving or stone carving. Enjoy traditional lunch."
          },
          "evening": {
            "title": "Twilight Promenade & Dinner",
            "description": "Enjoy a relaxed walk around the local market square. Purchase authentic local sweets and dinner."
          }
        },
        "details": {
          "importantTimings": "Excursion Departure: 9:00 AM",
          "meals": "Organic Farm-to-Table Breakfast & Seafood / Veg Dinner.",
          "transport": "AC Private Vehicle",
          "walkingLevel": "Easy Paced",
          "stay": "Grand Riverfront Resort near London Eye",
          "weather": "Pleasant breeze with sunny afternoon 24°C",
          "dressCode": "Comfortable clothing",
          "packingSuggestions": "Light cotton wear, camera with telephoto lens, sunscreen lotion, photo ID.",
          "accessibility": "Accessible vehicles",
          "visitorNote": "Authentic souvenirs certified by local artisans.",
          "travelDuration": "Approx 4 hours excursion"
        }
      },
      {
        "day": 4,
        "title": "Souvenir Shopping & Onward Departure from London",
        "location": "London",
        "overview": "Conclude your trip to London Eye with morning shopping for local delicacies and souvenirs, followed by departure transfer.",
        "schedule": {
          "morning": {
            "title": "Handicrafts & Sweet Market Visit",
            "description": "Visit trusted local bazaar stalls to buy regional spices, handmade crafts, and traditional sweets of London."
          },
          "afternoon": {
            "title": "Hotel Checkout & Farewell Lunch",
            "description": "Return to hotel for packing and checkout. Enjoy a farewell lunch before your transfer."
          },
          "evening": {
            "title": "Outbound Departure Transfer",
            "description": "Chauffeur drop to London Airport or Railway Station for your onward journey home."
          }
        },
        "details": {
          "importantTimings": "Checkout: 12:00 PM | Transfer: As per flight/train",
          "meals": "Breakfast & Farewell Lunch included.",
          "transport": "AC Private Transfer Vehicle",
          "walkingLevel": "Easy Paced",
          "stay": "N/A (Day of departure)",
          "weather": "Pleasant breeze with sunny afternoon 24°C",
          "dressCode": "Comfortable travel wear",
          "packingSuggestions": "Check-in luggage packed, photo ID ready.",
          "accessibility": "Accessible vehicles",
          "visitorNote": "Arrive at London station/airport 2 hours prior to departure.",
          "travelDuration": "Approx 1 hour transfer"
        }
      }
    ],
    "durationDays": 4,
    "durationLabel": "4 Days / 3 Nights",
    "travellerTypes": [
      "Families",
      "Couples"
    ],
    "accessibilityStatus": "Wheelchair Accessible",
    "childFriendly": true,
    "packageBenefits": [
      "Family Accommodation",
      "Local Sightseeing"
    ],
    "highlights": [
      "Guided heritage sightseeing of London Eye landmarks",
      "Immersive cultural show and local market visits",
      "Delight in authentic regional delicacies"
    ],
    "tips": [
      "Carry sun protection (glasses/hat) for outdoor excursions.",
      "Keep local currency handy for local markets.",
      "Follow guidelines at heritage locations."
    ],
    "itinerarySummary": [
      "Day 1: Welcome & Check-in at London & London Eye Gateway",
      "Day 2: Exclusive Morning Tour of London Eye",
      "Day 3: Excursion to Surrounding Landmarks of London",
      "Day 4: Souvenir Shopping & Onward Departure from London"
    ],
    "cancellationSummary": "Get a 100% full refund on cancellations made up to 15 days before the departure. Rescheduling options are fully flexible."
  },
  {
    "id": "family-marina-bay-sands-skypark",
    "title": "Marina Bay Sands SkyPark",
    "destinationName": "Marina Bay Sands SkyPark",
    "destinations": "Marina Bay Sands SkyPark (Singapore)",
    "location": "Singapore",
    "route": [
      "Singapore",
      "Marina Bay Sands SkyPark"
    ],
    "mainCategory": "Family",
    "categoryLabel": "Family Tour",
    "category": "Family",
    "region": "International",
    "image": "/images/tourist-places/family/Marina Bay Sands SkyPark.jpg",
    "altText": "Marina Bay Sands SkyPark family tour destination in Singapore",
    "duration": "4 Days / 3 Nights",
    "bestSeason": "Year-Round",
    "pace": "Easy",
    "travellerType": "Family Friendly",
    "description": "A thoughtfully planned family tour offering comfort, guidance, and a memorable experience.",
    "price": 26000,
    "rating": null,
    "reviewCount": null,
    "seatsLeft": null,
    "recentBookings": null,
    "verified": null,
    "tags": [
      "Family Tour",
      "Family Friendly"
    ],
    "seniorFriendly": true,
    "wheelchairAccess": true,
    "vegMeals": false,
    "inclusions": {
      "hotel": true,
      "meals": true,
      "transit": true,
      "guide": false,
      "entryPasses": false,
      "medicalSupport": false,
      "localExperience": false
    },
    "itinerary": [
      {
        "day": 1,
        "title": "Arrival in Singapore: Illuminated Viewpoint & Welcome Feast",
        "location": "Singapore",
        "overview": "Arrive in vibrant Singapore. Escorted transfer to Vedic Pilgrim Ashram Stay in Singapore. Spend your evening relaxing and sampling authentic local dishes.",
        "schedule": {
          "morning": {
            "title": "Arrival & Escorted Transfer in Singapore",
            "description": "Meet our local travel escort at Singapore transit hub. Receive a traditional welcome and transfer to Vedic Pilgrim Ashram Stay in Singapore."
          },
          "afternoon": {
            "title": "Unpack & Courtyard Leisure at Singapore",
            "description": "Check into your sanitized room, unpack your luggage, and enjoy quiet leisure time exploring hotel gardens and facilities."
          },
          "evening": {
            "title": "Illuminated Viewpoint & Welcome Feast at Marina Bay Sands SkyPark",
            "description": "Stroll through the bustling neighborhood of Marina Bay Sands SkyPark. Watch the sunset and savor a multi-course dinner."
          }
        },
        "details": {
          "importantTimings": "Sanctum VIP Slot: 6:30 AM | Bazaar Hours: 4:00 PM - 8:30 PM",
          "meals": "Welcome Drink & Lavish Regional Buffet Dinner.",
          "transport": "AC Private Chauffeur Vehicle",
          "walkingLevel": "Easy Paced (Paved walkways)",
          "stay": "Vedic Pilgrim Ashram Stay in Singapore",
          "weather": "Cool crisp morning fog clearing to bright 22°C",
          "dressCode": "Casual travel clothing & sunhat",
          "packingSuggestions": "Traditional headscarf, slip-on shoes, reusable water bottle, dry bag.",
          "accessibility": "Wheelchair ramps & low step entry vehicle",
          "visitorNote": "Escort coordinator will brief you on timing for Marina Bay Sands SkyPark visit.",
          "travelDuration": "Approx 1 to 2 hours transfer"
        }
      },
      {
        "day": 2,
        "title": "VIP Access to Marina Bay Sands SkyPark",
        "location": "Singapore",
        "overview": "A deep dive into Marina Bay Sands SkyPark. Tour inner sanctums, historical galleries, and architectural viewpoints accompanied by an expert guide.",
        "schedule": {
          "morning": {
            "title": "Guided Tour of Marina Bay Sands SkyPark",
            "description": "Early morning entry to Marina Bay Sands SkyPark. Walk through central courtyards, ancient corridors, and historic halls."
          },
          "afternoon": {
            "title": "Scenic Valley Drive & Photo Stops near Singapore",
            "description": "Taste authentic local regional cuisine. Visit local artisan markets specializing in handcrafts native to Singapore."
          },
          "evening": {
            "title": "Sunset Viewpoint & Cultural Evening",
            "description": "Head to the highest scenic viewpoint overlooking Marina Bay Sands SkyPark. Capture sunset photographs followed by evening entertainment."
          }
        },
        "details": {
          "importantTimings": "Sanctum VIP Slot: 6:30 AM | Bazaar Hours: 4:00 PM - 8:30 PM",
          "meals": "Complimentary Buffet Breakfast & Traditional Cuisine Lunch.",
          "transport": "AC Private Sedan / SUV",
          "walkingLevel": "Moderate (Historical walkways & corridors)",
          "stay": "Vedic Pilgrim Ashram Stay in Singapore",
          "weather": "Cool crisp morning fog clearing to bright 22°C",
          "dressCode": "Comfortable daywear",
          "packingSuggestions": "Light cotton wear, camera with telephoto lens, sunscreen lotion, photo ID.",
          "accessibility": "Assistive ramps available at main portals",
          "visitorNote": "Follow local heritage guidelines inside Marina Bay Sands SkyPark.",
          "travelDuration": "Full day sightseeing approx 5 to 6 hours"
        }
      },
      {
        "day": 3,
        "title": "Excursion to Surrounding Landmarks of Singapore",
        "location": "Singapore",
        "overview": "Expand your exploration with a day trip to surrounding heritage spots, sacred lakes, and craft villages near Singapore.",
        "schedule": {
          "morning": {
            "title": "Heritage Excursion & Scenic Drive",
            "description": "Scenic drive through countryside roads surrounding Singapore. Visit secondary monuments and historic watchtowers."
          },
          "afternoon": {
            "title": "Artisan Workshop & Traditional Lunch",
            "description": "Interact with local master craftsmen demonstrating native handloom weaving or stone carving. Enjoy traditional lunch."
          },
          "evening": {
            "title": "Twilight Promenade & Dinner",
            "description": "Enjoy a relaxed walk around the local market square. Purchase authentic local sweets and dinner."
          }
        },
        "details": {
          "importantTimings": "Excursion Departure: 9:00 AM",
          "meals": "Organic Farm-to-Table Breakfast & Seafood / Veg Dinner.",
          "transport": "AC Private Vehicle",
          "walkingLevel": "Easy Paced",
          "stay": "Vedic Pilgrim Ashram Stay in Singapore",
          "weather": "Cool crisp morning fog clearing to bright 22°C",
          "dressCode": "Comfortable clothing",
          "packingSuggestions": "Comfortable walking socks, power bank, shoulder shawl, daypack.",
          "accessibility": "Accessible vehicles",
          "visitorNote": "Authentic souvenirs certified by local artisans.",
          "travelDuration": "Approx 4 hours excursion"
        }
      },
      {
        "day": 4,
        "title": "Souvenir Shopping & Onward Departure from Singapore",
        "location": "Singapore",
        "overview": "Conclude your trip to Marina Bay Sands SkyPark with morning shopping for local delicacies and souvenirs, followed by departure transfer.",
        "schedule": {
          "morning": {
            "title": "Handicrafts & Sweet Market Visit",
            "description": "Visit trusted local bazaar stalls to buy regional spices, handmade crafts, and traditional sweets of Singapore."
          },
          "afternoon": {
            "title": "Hotel Checkout & Farewell Lunch",
            "description": "Return to hotel for packing and checkout. Enjoy a farewell lunch before your transfer."
          },
          "evening": {
            "title": "Outbound Departure Transfer",
            "description": "Chauffeur drop to Singapore Airport or Railway Station for your onward journey home."
          }
        },
        "details": {
          "importantTimings": "Checkout: 12:00 PM | Transfer: As per flight/train",
          "meals": "Breakfast & Farewell Lunch included.",
          "transport": "AC Private Transfer Vehicle",
          "walkingLevel": "Easy Paced",
          "stay": "N/A (Day of departure)",
          "weather": "Cool crisp morning fog clearing to bright 22°C",
          "dressCode": "Comfortable travel wear",
          "packingSuggestions": "Check-in luggage packed, photo ID ready.",
          "accessibility": "Accessible vehicles",
          "visitorNote": "Arrive at Singapore station/airport 2 hours prior to departure.",
          "travelDuration": "Approx 1 hour transfer"
        }
      }
    ],
    "durationDays": 4,
    "durationLabel": "4 Days / 3 Nights",
    "travellerTypes": [
      "Families",
      "Couples"
    ],
    "accessibilityStatus": "Wheelchair Accessible",
    "childFriendly": true,
    "packageBenefits": [
      "Family Accommodation",
      "Local Sightseeing"
    ],
    "highlights": [
      "Guided heritage sightseeing of Marina Bay Sands SkyPark landmarks",
      "Immersive cultural show and local market visits",
      "Delight in authentic regional delicacies"
    ],
    "tips": [
      "Carry sun protection (glasses/hat) for outdoor excursions.",
      "Keep local currency handy for local markets.",
      "Follow guidelines at heritage locations."
    ],
    "itinerarySummary": [
      "Day 1: Arrival in Singapore: Illuminated Viewpoint & Welcome Feast",
      "Day 2: VIP Access to Marina Bay Sands SkyPark",
      "Day 3: Excursion to Surrounding Landmarks of Singapore",
      "Day 4: Souvenir Shopping & Onward Departure from Singapore"
    ],
    "cancellationSummary": "Get a 100% full refund on cancellations made up to 15 days before the departure. Rescheduling options are fully flexible."
  },
  {
    "id": "family-mehrangarh-fort",
    "title": "Mehrangarh Fort",
    "destinationName": "Mehrangarh Fort",
    "destinations": "Mehrangarh Fort (Jodhpur, Rajasthan)",
    "location": "Jodhpur, Rajasthan",
    "route": [
      "Jodhpur",
      "Mehrangarh Fort"
    ],
    "mainCategory": "Family",
    "categoryLabel": "Family Tour",
    "category": "Family",
    "region": "North India",
    "image": "/images/tourist-places/family/Mehrangarh Fort.jpg",
    "altText": "Mehrangarh Fort family tour destination in Jodhpur, Rajasthan",
    "duration": "4 Days / 3 Nights",
    "bestSeason": "October–March",
    "pace": "Moderate",
    "travellerType": "Family Friendly",
    "description": "A thoughtfully planned family tour offering comfort, guidance, and a memorable experience.",
    "price": 27500,
    "rating": null,
    "reviewCount": null,
    "seatsLeft": null,
    "recentBookings": null,
    "verified": null,
    "tags": [
      "Family Tour",
      "Family Friendly"
    ],
    "seniorFriendly": true,
    "wheelchairAccess": true,
    "vegMeals": false,
    "inclusions": {
      "hotel": true,
      "meals": true,
      "transit": true,
      "guide": true,
      "entryPasses": true,
      "medicalSupport": false,
      "localExperience": false
    },
    "itinerary": [
      {
        "day": 1,
        "title": "Escorted Arrival in Jodhpur & Mehrangarh Fort Gateway",
        "location": "Jodhpur",
        "overview": "Arrive in vibrant Jodhpur. Escorted transfer to Boutique Star Hotel in Jodhpur. Spend your evening relaxing and sampling authentic local dishes.",
        "schedule": {
          "morning": {
            "title": "Arrival & Escorted Transfer in Jodhpur",
            "description": "Meet our local travel escort at Jodhpur transit hub. Receive a traditional welcome and transfer to Boutique Star Hotel in Jodhpur."
          },
          "afternoon": {
            "title": "Unpack & Courtyard Leisure at Jodhpur",
            "description": "Check into your sanitized room, unpack your luggage, and enjoy quiet leisure time exploring hotel gardens and facilities."
          },
          "evening": {
            "title": "Cultural Folk Performance & Dinner at Mehrangarh Fort",
            "description": "Stroll through the bustling neighborhood of Mehrangarh Fort. Watch the sunset and savor a multi-course dinner."
          }
        },
        "details": {
          "importantTimings": "Sunrise Tour: 5:45 AM | Museum Hours: 9:30 AM - 5:00 PM",
          "meals": "Welcome Drink & Lavish Regional Buffet Dinner.",
          "transport": "AC Private Chauffeur Vehicle",
          "walkingLevel": "Easy Paced (Paved walkways)",
          "stay": "Boutique Star Hotel in Jodhpur",
          "weather": "Warm tropical sunshine with ocean breeze 27°C",
          "dressCode": "Casual travel clothing & sunhat",
          "packingSuggestions": "Light cotton wear, camera with telephoto lens, sunscreen lotion, photo ID.",
          "accessibility": "Wheelchair ramps & low step entry vehicle",
          "visitorNote": "Escort coordinator will brief you on timing for Mehrangarh Fort visit.",
          "travelDuration": "Approx 1 to 2 hours transfer"
        }
      },
      {
        "day": 2,
        "title": "Breakfast & Exploration of Mehrangarh Fort",
        "location": "Jodhpur",
        "overview": "A deep dive into Mehrangarh Fort. Tour inner sanctums, historical galleries, and architectural viewpoints accompanied by an expert guide.",
        "schedule": {
          "morning": {
            "title": "Guided Tour of Mehrangarh Fort",
            "description": "Early morning entry to Mehrangarh Fort. Walk through central courtyards, ancient corridors, and historic halls."
          },
          "afternoon": {
            "title": "Sacred Shrine Darshan & Temple Complex near Jodhpur",
            "description": "Taste authentic local regional cuisine. Visit local artisan markets specializing in handcrafts native to Rajasthan."
          },
          "evening": {
            "title": "Sunset Viewpoint & Cultural Evening",
            "description": "Head to the highest scenic viewpoint overlooking Mehrangarh Fort. Capture sunset photographs followed by evening entertainment."
          }
        },
        "details": {
          "importantTimings": "Sunrise Tour: 5:45 AM | Museum Hours: 9:30 AM - 5:00 PM",
          "meals": "Complimentary Buffet Breakfast & Traditional Cuisine Lunch.",
          "transport": "AC Private Sedan / SUV",
          "walkingLevel": "Moderate (Historical walkways & corridors)",
          "stay": "Boutique Star Hotel in Jodhpur",
          "weather": "Warm tropical sunshine with ocean breeze 27°C",
          "dressCode": "Comfortable daywear",
          "packingSuggestions": "Comfortable walking socks, power bank, shoulder shawl, daypack.",
          "accessibility": "Assistive ramps available at main portals",
          "visitorNote": "Follow local heritage guidelines inside Mehrangarh Fort.",
          "travelDuration": "Full day sightseeing approx 5 to 6 hours"
        }
      },
      {
        "day": 3,
        "title": "Excursion to Surrounding Landmarks of Jodhpur",
        "location": "Rajasthan",
        "overview": "Expand your exploration with a day trip to surrounding heritage spots, sacred lakes, and craft villages near Jodhpur.",
        "schedule": {
          "morning": {
            "title": "Heritage Excursion & Scenic Drive",
            "description": "Scenic drive through countryside roads surrounding Jodhpur. Visit secondary monuments and historic watchtowers."
          },
          "afternoon": {
            "title": "Artisan Workshop & Traditional Lunch",
            "description": "Interact with local master craftsmen demonstrating native handloom weaving or stone carving. Enjoy traditional lunch."
          },
          "evening": {
            "title": "Twilight Promenade & Dinner",
            "description": "Enjoy a relaxed walk around the local market square. Purchase authentic local sweets and dinner."
          }
        },
        "details": {
          "importantTimings": "Excursion Departure: 9:00 AM",
          "meals": "Organic Farm-to-Table Breakfast & Seafood / Veg Dinner.",
          "transport": "AC Private Vehicle",
          "walkingLevel": "Easy Paced",
          "stay": "Boutique Star Hotel in Jodhpur",
          "weather": "Warm tropical sunshine with ocean breeze 27°C",
          "dressCode": "Comfortable clothing",
          "packingSuggestions": "Breathable linen wear, sunglasses, small currency notes for local shops.",
          "accessibility": "Accessible vehicles",
          "visitorNote": "Authentic souvenirs certified by local artisans.",
          "travelDuration": "Approx 4 hours excursion"
        }
      },
      {
        "day": 4,
        "title": "Souvenir Shopping & Onward Departure from Jodhpur",
        "location": "Jodhpur",
        "overview": "Conclude your trip to Mehrangarh Fort with morning shopping for local delicacies and souvenirs, followed by departure transfer.",
        "schedule": {
          "morning": {
            "title": "Handicrafts & Sweet Market Visit",
            "description": "Visit trusted local bazaar stalls to buy regional spices, handmade crafts, and traditional sweets of Jodhpur."
          },
          "afternoon": {
            "title": "Hotel Checkout & Farewell Lunch",
            "description": "Return to hotel for packing and checkout. Enjoy a farewell lunch before your transfer."
          },
          "evening": {
            "title": "Outbound Departure Transfer",
            "description": "Chauffeur drop to Jodhpur Airport or Railway Station for your onward journey home."
          }
        },
        "details": {
          "importantTimings": "Checkout: 12:00 PM | Transfer: As per flight/train",
          "meals": "Breakfast & Farewell Lunch included.",
          "transport": "AC Private Transfer Vehicle",
          "walkingLevel": "Easy Paced",
          "stay": "N/A (Day of departure)",
          "weather": "Warm tropical sunshine with ocean breeze 27°C",
          "dressCode": "Comfortable travel wear",
          "packingSuggestions": "Check-in luggage packed, photo ID ready.",
          "accessibility": "Accessible vehicles",
          "visitorNote": "Arrive at Jodhpur station/airport 2 hours prior to departure.",
          "travelDuration": "Approx 1 hour transfer"
        }
      }
    ],
    "durationDays": 4,
    "durationLabel": "4 Days / 3 Nights",
    "travellerTypes": [
      "History Lovers",
      "Families"
    ],
    "accessibilityStatus": "Partial Accessibility",
    "childFriendly": true,
    "packageBenefits": [
      "Heritage Guide",
      "Monument Entry Assistance"
    ],
    "highlights": [
      "Guided heritage sightseeing of Mehrangarh Fort landmarks",
      "Immersive cultural show and local market visits",
      "Delight in authentic regional delicacies"
    ],
    "tips": [
      "Carry sun protection (glasses/hat) for outdoor excursions.",
      "Keep local currency handy for local markets.",
      "Follow guidelines at heritage locations."
    ],
    "itinerarySummary": [
      "Day 1: Escorted Arrival in Jodhpur & Mehrangarh Fort Gateway",
      "Day 2: Breakfast & Exploration of Mehrangarh Fort",
      "Day 3: Excursion to Surrounding Landmarks of Jodhpur",
      "Day 4: Souvenir Shopping & Onward Departure from Jodhpur"
    ],
    "cancellationSummary": "Get a 100% full refund on cancellations made up to 15 days before the departure. Rescheduling options are fully flexible."
  },
  {
    "id": "family-mount-fuji",
    "title": "Mount Fuji",
    "destinationName": "Mount Fuji",
    "destinations": "Mount Fuji (Honshu, Japan)",
    "location": "Honshu, Japan",
    "route": [
      "Honshu",
      "Mount Fuji"
    ],
    "mainCategory": "Family",
    "categoryLabel": "Family Tour",
    "category": "Family",
    "region": "International",
    "image": "/images/tourist-places/family/Mount Fuji.jpg",
    "altText": "Mount Fuji family tour destination in Honshu, Japan",
    "duration": "4 Days / 3 Nights",
    "bestSeason": "October–March",
    "pace": "Easy",
    "travellerType": "Family Friendly",
    "description": "A thoughtfully planned family tour offering comfort, guidance, and a memorable experience.",
    "price": 29000,
    "rating": null,
    "reviewCount": null,
    "seatsLeft": null,
    "recentBookings": null,
    "verified": null,
    "tags": [
      "Family Tour",
      "Family Friendly"
    ],
    "seniorFriendly": true,
    "wheelchairAccess": true,
    "vegMeals": false,
    "inclusions": {
      "hotel": true,
      "meals": true,
      "transit": true,
      "guide": false,
      "entryPasses": false,
      "medicalSupport": false,
      "localExperience": false
    },
    "itinerary": [
      {
        "day": 1,
        "title": "Arrival in Honshu: Riverside Aarti & Evening Tea",
        "location": "Honshu",
        "overview": "Arrive in vibrant Honshu. Escorted transfer to Hilltop Panorama Resort near Mount Fuji. Spend your evening relaxing and sampling authentic local dishes.",
        "schedule": {
          "morning": {
            "title": "Arrival & Escorted Transfer in Honshu",
            "description": "Meet our local travel escort at Honshu transit hub. Receive a traditional welcome and transfer to Hilltop Panorama Resort near Mount Fuji."
          },
          "afternoon": {
            "title": "Unpack & Courtyard Leisure at Honshu",
            "description": "Check into your sanitized room, unpack your luggage, and enjoy quiet leisure time exploring hotel gardens and facilities."
          },
          "evening": {
            "title": "Riverside Aarti & Evening Tea at Mount Fuji",
            "description": "Stroll through the bustling neighborhood of Mount Fuji. Watch the sunset and savor a multi-course dinner."
          }
        },
        "details": {
          "importantTimings": "Guided Walk: 9:00 AM | Sunset Point Departure: 5:15 PM",
          "meals": "Welcome Drink & Lavish Regional Buffet Dinner.",
          "transport": "AC Private Chauffeur Vehicle",
          "walkingLevel": "Easy Paced (Paved walkways)",
          "stay": "Hilltop Panorama Resort near Mount Fuji",
          "weather": "Crisp mountain climate, clear blue skies 19°C",
          "dressCode": "Casual travel clothing & sunhat",
          "packingSuggestions": "Comfortable walking socks, power bank, shoulder shawl, daypack.",
          "accessibility": "Wheelchair ramps & low step entry vehicle",
          "visitorNote": "Escort coordinator will brief you on timing for Mount Fuji visit.",
          "travelDuration": "Approx 1 to 2 hours transfer"
        }
      },
      {
        "day": 2,
        "title": "Panoramic Discovery of Mount Fuji",
        "location": "Honshu",
        "overview": "A deep dive into Mount Fuji. Tour inner sanctums, historical galleries, and architectural viewpoints accompanied by an expert guide.",
        "schedule": {
          "morning": {
            "title": "Guided Tour of Mount Fuji",
            "description": "Early morning entry to Mount Fuji. Walk through central courtyards, ancient corridors, and historic halls."
          },
          "afternoon": {
            "title": "Coastal Promenade & Beach Relax near Honshu",
            "description": "Taste authentic local regional cuisine. Visit local artisan markets specializing in handcrafts native to Japan."
          },
          "evening": {
            "title": "Sunset Viewpoint & Cultural Evening",
            "description": "Head to the highest scenic viewpoint overlooking Mount Fuji. Capture sunset photographs followed by evening entertainment."
          }
        },
        "details": {
          "importantTimings": "Guided Walk: 9:00 AM | Sunset Point Departure: 5:15 PM",
          "meals": "Complimentary Buffet Breakfast & Traditional Cuisine Lunch.",
          "transport": "AC Private Sedan / SUV",
          "walkingLevel": "Moderate (Historical walkways & corridors)",
          "stay": "Hilltop Panorama Resort near Mount Fuji",
          "weather": "Crisp mountain climate, clear blue skies 19°C",
          "dressCode": "Comfortable daywear",
          "packingSuggestions": "Breathable linen wear, sunglasses, small currency notes for local shops.",
          "accessibility": "Assistive ramps available at main portals",
          "visitorNote": "Follow local heritage guidelines inside Mount Fuji.",
          "travelDuration": "Full day sightseeing approx 5 to 6 hours"
        }
      },
      {
        "day": 3,
        "title": "Excursion to Surrounding Landmarks of Honshu",
        "location": "Japan",
        "overview": "Expand your exploration with a day trip to surrounding heritage spots, sacred lakes, and craft villages near Honshu.",
        "schedule": {
          "morning": {
            "title": "Heritage Excursion & Scenic Drive",
            "description": "Scenic drive through countryside roads surrounding Honshu. Visit secondary monuments and historic watchtowers."
          },
          "afternoon": {
            "title": "Artisan Workshop & Traditional Lunch",
            "description": "Interact with local master craftsmen demonstrating native handloom weaving or stone carving. Enjoy traditional lunch."
          },
          "evening": {
            "title": "Twilight Promenade & Dinner",
            "description": "Enjoy a relaxed walk around the local market square. Purchase authentic local sweets and dinner."
          }
        },
        "details": {
          "importantTimings": "Excursion Departure: 9:00 AM",
          "meals": "Organic Farm-to-Table Breakfast & Seafood / Veg Dinner.",
          "transport": "AC Private Vehicle",
          "walkingLevel": "Easy Paced",
          "stay": "Hilltop Panorama Resort near Mount Fuji",
          "weather": "Crisp mountain climate, clear blue skies 19°C",
          "dressCode": "Comfortable clothing",
          "packingSuggestions": "Sunhat, sunglasses, comfortable walking shoes, light jacket, camera.",
          "accessibility": "Accessible vehicles",
          "visitorNote": "Authentic souvenirs certified by local artisans.",
          "travelDuration": "Approx 4 hours excursion"
        }
      },
      {
        "day": 4,
        "title": "Souvenir Shopping & Onward Departure from Honshu",
        "location": "Honshu",
        "overview": "Conclude your trip to Mount Fuji with morning shopping for local delicacies and souvenirs, followed by departure transfer.",
        "schedule": {
          "morning": {
            "title": "Handicrafts & Sweet Market Visit",
            "description": "Visit trusted local bazaar stalls to buy regional spices, handmade crafts, and traditional sweets of Honshu."
          },
          "afternoon": {
            "title": "Hotel Checkout & Farewell Lunch",
            "description": "Return to hotel for packing and checkout. Enjoy a farewell lunch before your transfer."
          },
          "evening": {
            "title": "Outbound Departure Transfer",
            "description": "Chauffeur drop to Honshu Airport or Railway Station for your onward journey home."
          }
        },
        "details": {
          "importantTimings": "Checkout: 12:00 PM | Transfer: As per flight/train",
          "meals": "Breakfast & Farewell Lunch included.",
          "transport": "AC Private Transfer Vehicle",
          "walkingLevel": "Easy Paced",
          "stay": "N/A (Day of departure)",
          "weather": "Crisp mountain climate, clear blue skies 19°C",
          "dressCode": "Comfortable travel wear",
          "packingSuggestions": "Check-in luggage packed, photo ID ready.",
          "accessibility": "Accessible vehicles",
          "visitorNote": "Arrive at Honshu station/airport 2 hours prior to departure.",
          "travelDuration": "Approx 1 hour transfer"
        }
      }
    ],
    "durationDays": 4,
    "durationLabel": "4 Days / 3 Nights",
    "travellerTypes": [
      "Families",
      "Couples"
    ],
    "accessibilityStatus": "Wheelchair Accessible",
    "childFriendly": true,
    "packageBenefits": [
      "Family Accommodation",
      "Local Sightseeing"
    ],
    "highlights": [
      "Guided heritage sightseeing of Mount Fuji landmarks",
      "Immersive cultural show and local market visits",
      "Delight in authentic regional delicacies"
    ],
    "tips": [
      "Carry sun protection (glasses/hat) for outdoor excursions.",
      "Keep local currency handy for local markets.",
      "Follow guidelines at heritage locations."
    ],
    "itinerarySummary": [
      "Day 1: Arrival in Honshu: Riverside Aarti & Evening Tea",
      "Day 2: Panoramic Discovery of Mount Fuji",
      "Day 3: Excursion to Surrounding Landmarks of Honshu",
      "Day 4: Souvenir Shopping & Onward Departure from Honshu"
    ],
    "cancellationSummary": "Get a 100% full refund on cancellations made up to 15 days before the departure. Rescheduling options are fully flexible."
  },
  {
    "id": "family-mount-titlis",
    "title": "Mount Titlis",
    "destinationName": "Mount Titlis",
    "destinations": "Mount Titlis (Engelberg, Switzerland)",
    "location": "Engelberg, Switzerland",
    "route": [
      "Engelberg",
      "Mount Titlis"
    ],
    "mainCategory": "Family",
    "categoryLabel": "Family Tour",
    "category": "Family",
    "region": "International",
    "image": "/images/tourist-places/family/Mount Titlis.jpg",
    "altText": "Mount Titlis family tour destination in Engelberg, Switzerland",
    "duration": "4 Days / 3 Nights",
    "bestSeason": "October–March",
    "pace": "Easy",
    "travellerType": "Family Friendly",
    "description": "A thoughtfully planned family tour offering comfort, guidance, and a memorable experience.",
    "price": 18500,
    "rating": null,
    "reviewCount": null,
    "seatsLeft": null,
    "recentBookings": null,
    "verified": null,
    "tags": [
      "Family Tour",
      "Family Friendly"
    ],
    "seniorFriendly": true,
    "wheelchairAccess": true,
    "vegMeals": false,
    "inclusions": {
      "hotel": true,
      "meals": true,
      "transit": true,
      "guide": false,
      "entryPasses": false,
      "medicalSupport": false,
      "localExperience": false
    },
    "itinerary": [
      {
        "day": 1,
        "title": "Scenic Drive to Engelberg & Mount Titlis Gateway",
        "location": "Engelberg",
        "overview": "Arrive in vibrant Engelberg. Escorted transfer to Heritage Palace Resort overlooking Mount Titlis. Spend your evening relaxing and sampling authentic local dishes.",
        "schedule": {
          "morning": {
            "title": "Arrival & Escorted Transfer in Engelberg",
            "description": "Meet our local travel escort at Engelberg transit hub. Receive a traditional welcome and transfer to Heritage Palace Resort overlooking Mount Titlis."
          },
          "afternoon": {
            "title": "Unpack & Courtyard Leisure at Engelberg",
            "description": "Check into your sanitized room, unpack your luggage, and enjoy quiet leisure time exploring hotel gardens and facilities."
          },
          "evening": {
            "title": "Skyline Sunset & Regional Delicacies at Mount Titlis",
            "description": "Stroll through the bustling neighborhood of Mount Titlis. Watch the sunset and savor a multi-course dinner."
          }
        },
        "details": {
          "importantTimings": "Boat Departure: 6:00 AM | Heritage Show: 7:00 PM",
          "meals": "Welcome Drink & Lavish Regional Buffet Dinner.",
          "transport": "AC Private Chauffeur Vehicle",
          "walkingLevel": "Easy Paced (Paved walkways)",
          "stay": "Heritage Palace Resort overlooking Mount Titlis",
          "weather": "Refreshing river mist with mild sun 23°C",
          "dressCode": "Casual travel clothing & sunhat",
          "packingSuggestions": "Breathable linen wear, sunglasses, small currency notes for local shops.",
          "accessibility": "Wheelchair ramps & low step entry vehicle",
          "visitorNote": "Escort coordinator will brief you on timing for Mount Titlis visit.",
          "travelDuration": "Approx 1 to 2 hours transfer"
        }
      },
      {
        "day": 2,
        "title": "Uncovering the Secrets of Mount Titlis",
        "location": "Engelberg",
        "overview": "A deep dive into Mount Titlis. Tour inner sanctums, historical galleries, and architectural viewpoints accompanied by an expert guide.",
        "schedule": {
          "morning": {
            "title": "Guided Tour of Mount Titlis",
            "description": "Early morning entry to Mount Titlis. Walk through central courtyards, ancient corridors, and historic halls."
          },
          "afternoon": {
            "title": "Culinary Tasting & Local Artisan Crafts near Engelberg",
            "description": "Taste authentic local regional cuisine. Visit local artisan markets specializing in handcrafts native to Switzerland."
          },
          "evening": {
            "title": "Sunset Viewpoint & Cultural Evening",
            "description": "Head to the highest scenic viewpoint overlooking Mount Titlis. Capture sunset photographs followed by evening entertainment."
          }
        },
        "details": {
          "importantTimings": "Boat Departure: 6:00 AM | Heritage Show: 7:00 PM",
          "meals": "Complimentary Buffet Breakfast & Traditional Cuisine Lunch.",
          "transport": "AC Private Sedan / SUV",
          "walkingLevel": "Moderate (Historical walkways & corridors)",
          "stay": "Heritage Palace Resort overlooking Mount Titlis",
          "weather": "Refreshing river mist with mild sun 23°C",
          "dressCode": "Comfortable daywear",
          "packingSuggestions": "Sunhat, sunglasses, comfortable walking shoes, light jacket, camera.",
          "accessibility": "Assistive ramps available at main portals",
          "visitorNote": "Follow local heritage guidelines inside Mount Titlis.",
          "travelDuration": "Full day sightseeing approx 5 to 6 hours"
        }
      },
      {
        "day": 3,
        "title": "Excursion to Surrounding Landmarks of Engelberg",
        "location": "Switzerland",
        "overview": "Expand your exploration with a day trip to surrounding heritage spots, sacred lakes, and craft villages near Engelberg.",
        "schedule": {
          "morning": {
            "title": "Heritage Excursion & Scenic Drive",
            "description": "Scenic drive through countryside roads surrounding Engelberg. Visit secondary monuments and historic watchtowers."
          },
          "afternoon": {
            "title": "Artisan Workshop & Traditional Lunch",
            "description": "Interact with local master craftsmen demonstrating native handloom weaving or stone carving. Enjoy traditional lunch."
          },
          "evening": {
            "title": "Twilight Promenade & Dinner",
            "description": "Enjoy a relaxed walk around the local market square. Purchase authentic local sweets and dinner."
          }
        },
        "details": {
          "importantTimings": "Excursion Departure: 9:00 AM",
          "meals": "Organic Farm-to-Table Breakfast & Seafood / Veg Dinner.",
          "transport": "AC Private Vehicle",
          "walkingLevel": "Easy Paced",
          "stay": "Heritage Palace Resort overlooking Mount Titlis",
          "weather": "Refreshing river mist with mild sun 23°C",
          "dressCode": "Comfortable clothing",
          "packingSuggestions": "Traditional headscarf, slip-on shoes, reusable water bottle, dry bag.",
          "accessibility": "Accessible vehicles",
          "visitorNote": "Authentic souvenirs certified by local artisans.",
          "travelDuration": "Approx 4 hours excursion"
        }
      },
      {
        "day": 4,
        "title": "Souvenir Shopping & Onward Departure from Engelberg",
        "location": "Engelberg",
        "overview": "Conclude your trip to Mount Titlis with morning shopping for local delicacies and souvenirs, followed by departure transfer.",
        "schedule": {
          "morning": {
            "title": "Handicrafts & Sweet Market Visit",
            "description": "Visit trusted local bazaar stalls to buy regional spices, handmade crafts, and traditional sweets of Engelberg."
          },
          "afternoon": {
            "title": "Hotel Checkout & Farewell Lunch",
            "description": "Return to hotel for packing and checkout. Enjoy a farewell lunch before your transfer."
          },
          "evening": {
            "title": "Outbound Departure Transfer",
            "description": "Chauffeur drop to Engelberg Airport or Railway Station for your onward journey home."
          }
        },
        "details": {
          "importantTimings": "Checkout: 12:00 PM | Transfer: As per flight/train",
          "meals": "Breakfast & Farewell Lunch included.",
          "transport": "AC Private Transfer Vehicle",
          "walkingLevel": "Easy Paced",
          "stay": "N/A (Day of departure)",
          "weather": "Refreshing river mist with mild sun 23°C",
          "dressCode": "Comfortable travel wear",
          "packingSuggestions": "Check-in luggage packed, photo ID ready.",
          "accessibility": "Accessible vehicles",
          "visitorNote": "Arrive at Engelberg station/airport 2 hours prior to departure.",
          "travelDuration": "Approx 1 hour transfer"
        }
      }
    ],
    "durationDays": 4,
    "durationLabel": "4 Days / 3 Nights",
    "travellerTypes": [
      "Families",
      "Couples"
    ],
    "accessibilityStatus": "Wheelchair Accessible",
    "childFriendly": true,
    "packageBenefits": [
      "Family Accommodation",
      "Local Sightseeing"
    ],
    "highlights": [
      "Guided heritage sightseeing of Mount Titlis landmarks",
      "Immersive cultural show and local market visits",
      "Delight in authentic regional delicacies"
    ],
    "tips": [
      "Carry sun protection (glasses/hat) for outdoor excursions.",
      "Keep local currency handy for local markets.",
      "Follow guidelines at heritage locations."
    ],
    "itinerarySummary": [
      "Day 1: Scenic Drive to Engelberg & Mount Titlis Gateway",
      "Day 2: Uncovering the Secrets of Mount Titlis",
      "Day 3: Excursion to Surrounding Landmarks of Engelberg",
      "Day 4: Souvenir Shopping & Onward Departure from Engelberg"
    ],
    "cancellationSummary": "Get a 100% full refund on cancellations made up to 15 days before the departure. Rescheduling options are fully flexible."
  },
  {
    "id": "family-munnar-tea-gardens",
    "title": "Munnar Tea Gardens",
    "destinationName": "Munnar Tea Gardens",
    "destinations": "Munnar Tea Gardens (Munnar, Kerala)",
    "location": "Munnar, Kerala",
    "route": [
      "Munnar",
      "Munnar Tea Gardens"
    ],
    "mainCategory": "Family",
    "categoryLabel": "Family Tour",
    "category": "Family",
    "region": "South India",
    "image": "/images/tourist-places/family/Munnar Tea Gardens.jpg",
    "altText": "Munnar Tea Gardens family tour destination in Munnar, Kerala",
    "duration": "4 Days / 3 Nights",
    "bestSeason": "November–February",
    "pace": "Easy",
    "travellerType": "Family Friendly",
    "description": "A thoughtfully planned family tour offering comfort, guidance, and a memorable experience.",
    "price": 20000,
    "rating": null,
    "reviewCount": null,
    "seatsLeft": null,
    "recentBookings": null,
    "verified": null,
    "tags": [
      "Family Tour",
      "Family Friendly"
    ],
    "seniorFriendly": true,
    "wheelchairAccess": true,
    "vegMeals": false,
    "inclusions": {
      "hotel": true,
      "meals": true,
      "transit": true,
      "guide": false,
      "entryPasses": false,
      "medicalSupport": false,
      "localExperience": true
    },
    "itinerary": [
      {
        "day": 1,
        "title": "Arrival in Munnar: Candlelight Dinner & Courtyard Music",
        "location": "Munnar",
        "overview": "Arrive in vibrant Munnar. Escorted transfer to Boutique Lakefront Haveli in Munnar. Spend your evening relaxing and sampling authentic local dishes.",
        "schedule": {
          "morning": {
            "title": "Arrival & Escorted Transfer in Munnar",
            "description": "Meet our local travel escort at Munnar transit hub. Receive a traditional welcome and transfer to Boutique Lakefront Haveli in Munnar."
          },
          "afternoon": {
            "title": "Unpack & Courtyard Leisure at Munnar",
            "description": "Check into your sanitized room, unpack your luggage, and enjoy quiet leisure time exploring hotel gardens and facilities."
          },
          "evening": {
            "title": "Candlelight Dinner & Courtyard Music at Munnar Tea Gardens",
            "description": "Stroll through the bustling neighborhood of Munnar Tea Gardens. Watch the sunset and savor a multi-course dinner."
          }
        },
        "details": {
          "importantTimings": "Gate Entry: 8:00 AM | Evening Light Show: 6:30 PM",
          "meals": "Welcome Drink & Lavish Regional Buffet Dinner.",
          "transport": "AC Private Chauffeur Vehicle",
          "walkingLevel": "Easy Paced (Paved walkways)",
          "stay": "Boutique Lakefront Haveli in Munnar",
          "weather": "Pleasant breeze with sunny afternoon 24°C",
          "dressCode": "Casual travel clothing & sunhat",
          "packingSuggestions": "Sunhat, sunglasses, comfortable walking shoes, light jacket, camera.",
          "accessibility": "Wheelchair ramps & low step entry vehicle",
          "visitorNote": "Escort coordinator will brief you on timing for Munnar Tea Gardens visit.",
          "travelDuration": "Approx 1 to 2 hours transfer"
        }
      },
      {
        "day": 2,
        "title": "Spiritual Morning Prayers at Munnar Tea Gardens",
        "location": "Munnar",
        "overview": "A deep dive into Munnar Tea Gardens. Tour inner sanctums, historical galleries, and architectural viewpoints accompanied by an expert guide.",
        "schedule": {
          "morning": {
            "title": "Guided Tour of Munnar Tea Gardens",
            "description": "Early morning entry to Munnar Tea Gardens. Walk through central courtyards, ancient corridors, and historic halls."
          },
          "afternoon": {
            "title": "Excursion to Surrounding Haveli & Gardens near Munnar",
            "description": "Taste authentic local regional cuisine. Visit local artisan markets specializing in handcrafts native to Kerala."
          },
          "evening": {
            "title": "Sunset Viewpoint & Cultural Evening",
            "description": "Head to the highest scenic viewpoint overlooking Munnar Tea Gardens. Capture sunset photographs followed by evening entertainment."
          }
        },
        "details": {
          "importantTimings": "Gate Entry: 8:00 AM | Evening Light Show: 6:30 PM",
          "meals": "Complimentary Buffet Breakfast & Traditional Cuisine Lunch.",
          "transport": "AC Private Sedan / SUV",
          "walkingLevel": "Moderate (Historical walkways & corridors)",
          "stay": "Boutique Lakefront Haveli in Munnar",
          "weather": "Pleasant breeze with sunny afternoon 24°C",
          "dressCode": "Comfortable daywear",
          "packingSuggestions": "Traditional headscarf, slip-on shoes, reusable water bottle, dry bag.",
          "accessibility": "Assistive ramps available at main portals",
          "visitorNote": "Follow local heritage guidelines inside Munnar Tea Gardens.",
          "travelDuration": "Full day sightseeing approx 5 to 6 hours"
        }
      },
      {
        "day": 3,
        "title": "Excursion to Surrounding Landmarks of Munnar",
        "location": "Kerala",
        "overview": "Expand your exploration with a day trip to surrounding heritage spots, sacred lakes, and craft villages near Munnar.",
        "schedule": {
          "morning": {
            "title": "Heritage Excursion & Scenic Drive",
            "description": "Scenic drive through countryside roads surrounding Munnar. Visit secondary monuments and historic watchtowers."
          },
          "afternoon": {
            "title": "Artisan Workshop & Traditional Lunch",
            "description": "Interact with local master craftsmen demonstrating native handloom weaving or stone carving. Enjoy traditional lunch."
          },
          "evening": {
            "title": "Twilight Promenade & Dinner",
            "description": "Enjoy a relaxed walk around the local market square. Purchase authentic local sweets and dinner."
          }
        },
        "details": {
          "importantTimings": "Excursion Departure: 9:00 AM",
          "meals": "Organic Farm-to-Table Breakfast & Seafood / Veg Dinner.",
          "transport": "AC Private Vehicle",
          "walkingLevel": "Easy Paced",
          "stay": "Boutique Lakefront Haveli in Munnar",
          "weather": "Pleasant breeze with sunny afternoon 24°C",
          "dressCode": "Comfortable clothing",
          "packingSuggestions": "Light cotton wear, camera with telephoto lens, sunscreen lotion, photo ID.",
          "accessibility": "Accessible vehicles",
          "visitorNote": "Authentic souvenirs certified by local artisans.",
          "travelDuration": "Approx 4 hours excursion"
        }
      },
      {
        "day": 4,
        "title": "Souvenir Shopping & Onward Departure from Munnar",
        "location": "Munnar",
        "overview": "Conclude your trip to Munnar Tea Gardens with morning shopping for local delicacies and souvenirs, followed by departure transfer.",
        "schedule": {
          "morning": {
            "title": "Handicrafts & Sweet Market Visit",
            "description": "Visit trusted local bazaar stalls to buy regional spices, handmade crafts, and traditional sweets of Munnar."
          },
          "afternoon": {
            "title": "Hotel Checkout & Farewell Lunch",
            "description": "Return to hotel for packing and checkout. Enjoy a farewell lunch before your transfer."
          },
          "evening": {
            "title": "Outbound Departure Transfer",
            "description": "Chauffeur drop to Munnar Airport or Railway Station for your onward journey home."
          }
        },
        "details": {
          "importantTimings": "Checkout: 12:00 PM | Transfer: As per flight/train",
          "meals": "Breakfast & Farewell Lunch included.",
          "transport": "AC Private Transfer Vehicle",
          "walkingLevel": "Easy Paced",
          "stay": "N/A (Day of departure)",
          "weather": "Pleasant breeze with sunny afternoon 24°C",
          "dressCode": "Comfortable travel wear",
          "packingSuggestions": "Check-in luggage packed, photo ID ready.",
          "accessibility": "Accessible vehicles",
          "visitorNote": "Arrive at Munnar station/airport 2 hours prior to departure.",
          "travelDuration": "Approx 1 hour transfer"
        }
      }
    ],
    "durationDays": 4,
    "durationLabel": "4 Days / 3 Nights",
    "travellerTypes": [
      "Families",
      "Couples"
    ],
    "accessibilityStatus": "Wheelchair Accessible",
    "childFriendly": true,
    "packageBenefits": [
      "Family Accommodation",
      "Local Sightseeing"
    ],
    "highlights": [
      "Guided heritage sightseeing of Munnar Tea Gardens landmarks",
      "Immersive cultural show and local market visits",
      "Delight in authentic regional delicacies"
    ],
    "tips": [
      "Carry sun protection (glasses/hat) for outdoor excursions.",
      "Keep local currency handy for local markets.",
      "Follow guidelines at heritage locations."
    ],
    "itinerarySummary": [
      "Day 1: Arrival in Munnar: Candlelight Dinner & Courtyard Music",
      "Day 2: Spiritual Morning Prayers at Munnar Tea Gardens",
      "Day 3: Excursion to Surrounding Landmarks of Munnar",
      "Day 4: Souvenir Shopping & Onward Departure from Munnar"
    ],
    "cancellationSummary": "Get a 100% full refund on cancellations made up to 15 days before the departure. Rescheduling options are fully flexible."
  },
  {
    "id": "family-museum-of-the-future",
    "title": "Museum of the Future",
    "destinationName": "Museum of the Future",
    "destinations": "Museum of the Future (Dubai, United Arab Emirates)",
    "location": "Dubai, United Arab Emirates",
    "route": [
      "Dubai",
      "Museum of the Future"
    ],
    "mainCategory": "Family",
    "categoryLabel": "Family Tour",
    "category": "Family",
    "region": "International",
    "image": "/images/tourist-places/family/Museum of the Future.jpeg",
    "altText": "Museum of the Future family tour destination in Dubai, United Arab Emirates",
    "duration": "4 Days / 3 Nights",
    "bestSeason": "Year-Round",
    "pace": "Easy",
    "travellerType": "Family Friendly",
    "description": "A thoughtfully planned family tour offering comfort, guidance, and a memorable experience.",
    "price": 21500,
    "rating": null,
    "reviewCount": null,
    "seatsLeft": null,
    "recentBookings": null,
    "verified": null,
    "tags": [
      "Family Tour",
      "Family Friendly"
    ],
    "seniorFriendly": true,
    "wheelchairAccess": true,
    "vegMeals": false,
    "inclusions": {
      "hotel": true,
      "meals": true,
      "transit": true,
      "guide": false,
      "entryPasses": false,
      "medicalSupport": false,
      "localExperience": false
    },
    "itinerary": [
      {
        "day": 1,
        "title": "Beginning Your Journey in Dubai & Museum of the Future Gateway",
        "location": "Dubai",
        "overview": "Arrive in vibrant Dubai. Escorted transfer to Royal Heritage Villa near Museum of the Future. Spend your evening relaxing and sampling authentic local dishes.",
        "schedule": {
          "morning": {
            "title": "Arrival & Escorted Transfer in Dubai",
            "description": "Meet our local travel escort at Dubai transit hub. Receive a traditional welcome and transfer to Royal Heritage Villa near Museum of the Future."
          },
          "afternoon": {
            "title": "Unpack & Courtyard Leisure at Dubai",
            "description": "Check into your sanitized room, unpack your luggage, and enjoy quiet leisure time exploring hotel gardens and facilities."
          },
          "evening": {
            "title": "Heritage Bazaar Promenade at Museum of the Future",
            "description": "Stroll through the bustling neighborhood of Museum of the Future. Watch the sunset and savor a multi-course dinner."
          }
        },
        "details": {
          "importantTimings": "Sanctum VIP Slot: 6:30 AM | Bazaar Hours: 4:00 PM - 8:30 PM",
          "meals": "Welcome Drink & Lavish Regional Buffet Dinner.",
          "transport": "AC Private Chauffeur Vehicle",
          "walkingLevel": "Easy Paced (Paved walkways)",
          "stay": "Royal Heritage Villa near Museum of the Future",
          "weather": "Cool crisp morning fog clearing to bright 22°C",
          "dressCode": "Casual travel clothing & sunhat",
          "packingSuggestions": "Traditional headscarf, slip-on shoes, reusable water bottle, dry bag.",
          "accessibility": "Wheelchair ramps & low step entry vehicle",
          "visitorNote": "Escort coordinator will brief you on timing for Museum of the Future visit.",
          "travelDuration": "Approx 1 to 2 hours transfer"
        }
      },
      {
        "day": 2,
        "title": "Architectural Tour of Museum of the Future",
        "location": "Dubai",
        "overview": "A deep dive into Museum of the Future. Tour inner sanctums, historical galleries, and architectural viewpoints accompanied by an expert guide.",
        "schedule": {
          "morning": {
            "title": "Guided Tour of Museum of the Future",
            "description": "Early morning entry to Museum of the Future. Walk through central courtyards, ancient corridors, and historic halls."
          },
          "afternoon": {
            "title": "Museum Treasures & Heritage Galleries near Dubai",
            "description": "Taste authentic local regional cuisine. Visit local artisan markets specializing in handcrafts native to United Arab Emirates."
          },
          "evening": {
            "title": "Sunset Viewpoint & Cultural Evening",
            "description": "Head to the highest scenic viewpoint overlooking Museum of the Future. Capture sunset photographs followed by evening entertainment."
          }
        },
        "details": {
          "importantTimings": "Sanctum VIP Slot: 6:30 AM | Bazaar Hours: 4:00 PM - 8:30 PM",
          "meals": "Complimentary Buffet Breakfast & Traditional Cuisine Lunch.",
          "transport": "AC Private Sedan / SUV",
          "walkingLevel": "Moderate (Historical walkways & corridors)",
          "stay": "Royal Heritage Villa near Museum of the Future",
          "weather": "Cool crisp morning fog clearing to bright 22°C",
          "dressCode": "Comfortable daywear",
          "packingSuggestions": "Light cotton wear, camera with telephoto lens, sunscreen lotion, photo ID.",
          "accessibility": "Assistive ramps available at main portals",
          "visitorNote": "Follow local heritage guidelines inside Museum of the Future.",
          "travelDuration": "Full day sightseeing approx 5 to 6 hours"
        }
      },
      {
        "day": 3,
        "title": "Excursion to Surrounding Landmarks of Dubai",
        "location": "United Arab Emirates",
        "overview": "Expand your exploration with a day trip to surrounding heritage spots, sacred lakes, and craft villages near Dubai.",
        "schedule": {
          "morning": {
            "title": "Heritage Excursion & Scenic Drive",
            "description": "Scenic drive through countryside roads surrounding Dubai. Visit secondary monuments and historic watchtowers."
          },
          "afternoon": {
            "title": "Artisan Workshop & Traditional Lunch",
            "description": "Interact with local master craftsmen demonstrating native handloom weaving or stone carving. Enjoy traditional lunch."
          },
          "evening": {
            "title": "Twilight Promenade & Dinner",
            "description": "Enjoy a relaxed walk around the local market square. Purchase authentic local sweets and dinner."
          }
        },
        "details": {
          "importantTimings": "Excursion Departure: 9:00 AM",
          "meals": "Organic Farm-to-Table Breakfast & Seafood / Veg Dinner.",
          "transport": "AC Private Vehicle",
          "walkingLevel": "Easy Paced",
          "stay": "Royal Heritage Villa near Museum of the Future",
          "weather": "Cool crisp morning fog clearing to bright 22°C",
          "dressCode": "Comfortable clothing",
          "packingSuggestions": "Comfortable walking socks, power bank, shoulder shawl, daypack.",
          "accessibility": "Accessible vehicles",
          "visitorNote": "Authentic souvenirs certified by local artisans.",
          "travelDuration": "Approx 4 hours excursion"
        }
      },
      {
        "day": 4,
        "title": "Souvenir Shopping & Onward Departure from Dubai",
        "location": "Dubai",
        "overview": "Conclude your trip to Museum of the Future with morning shopping for local delicacies and souvenirs, followed by departure transfer.",
        "schedule": {
          "morning": {
            "title": "Handicrafts & Sweet Market Visit",
            "description": "Visit trusted local bazaar stalls to buy regional spices, handmade crafts, and traditional sweets of Dubai."
          },
          "afternoon": {
            "title": "Hotel Checkout & Farewell Lunch",
            "description": "Return to hotel for packing and checkout. Enjoy a farewell lunch before your transfer."
          },
          "evening": {
            "title": "Outbound Departure Transfer",
            "description": "Chauffeur drop to Dubai Airport or Railway Station for your onward journey home."
          }
        },
        "details": {
          "importantTimings": "Checkout: 12:00 PM | Transfer: As per flight/train",
          "meals": "Breakfast & Farewell Lunch included.",
          "transport": "AC Private Transfer Vehicle",
          "walkingLevel": "Easy Paced",
          "stay": "N/A (Day of departure)",
          "weather": "Cool crisp morning fog clearing to bright 22°C",
          "dressCode": "Comfortable travel wear",
          "packingSuggestions": "Check-in luggage packed, photo ID ready.",
          "accessibility": "Accessible vehicles",
          "visitorNote": "Arrive at Dubai station/airport 2 hours prior to departure.",
          "travelDuration": "Approx 1 hour transfer"
        }
      }
    ],
    "durationDays": 4,
    "durationLabel": "4 Days / 3 Nights",
    "travellerTypes": [
      "Families",
      "Couples"
    ],
    "accessibilityStatus": "Wheelchair Accessible",
    "childFriendly": true,
    "packageBenefits": [
      "Family Accommodation",
      "Local Sightseeing"
    ],
    "highlights": [
      "Guided heritage sightseeing of Museum of the Future landmarks",
      "Immersive cultural show and local market visits",
      "Delight in authentic regional delicacies"
    ],
    "tips": [
      "Carry sun protection (glasses/hat) for outdoor excursions.",
      "Keep local currency handy for local markets.",
      "Follow guidelines at heritage locations."
    ],
    "itinerarySummary": [
      "Day 1: Beginning Your Journey in Dubai & Museum of the Future Gateway",
      "Day 2: Architectural Tour of Museum of the Future",
      "Day 3: Excursion to Surrounding Landmarks of Dubai",
      "Day 4: Souvenir Shopping & Onward Departure from Dubai"
    ],
    "cancellationSummary": "Get a 100% full refund on cancellations made up to 15 days before the departure. Rescheduling options are fully flexible."
  },
  {
    "id": "family-mysore-palace",
    "title": "Mysore Palace",
    "destinationName": "Mysore Palace",
    "destinations": "Mysore Palace (Mysore, Karnataka)",
    "location": "Mysore, Karnataka",
    "route": [
      "Mysore",
      "Mysore Palace"
    ],
    "mainCategory": "Family",
    "categoryLabel": "Family Tour",
    "category": "Family",
    "region": "South India",
    "image": "/images/tourist-places/family/Mysore Palace.jpg",
    "altText": "Mysore Palace family tour destination in Mysore, Karnataka",
    "duration": "4 Days / 3 Nights",
    "bestSeason": "November–February",
    "pace": "Moderate",
    "travellerType": "Family Friendly",
    "description": "A thoughtfully planned family tour offering comfort, guidance, and a memorable experience.",
    "price": 23000,
    "rating": null,
    "reviewCount": null,
    "seatsLeft": null,
    "recentBookings": null,
    "verified": null,
    "tags": [
      "Family Tour",
      "Family Friendly"
    ],
    "seniorFriendly": true,
    "wheelchairAccess": true,
    "vegMeals": false,
    "inclusions": {
      "hotel": true,
      "meals": true,
      "transit": true,
      "guide": true,
      "entryPasses": true,
      "medicalSupport": false,
      "localExperience": false
    },
    "itinerary": [
      {
        "day": 1,
        "title": "Arrival in Mysore: Panoramic Terrace Lounge Session",
        "location": "Mysore",
        "overview": "Arrive in vibrant Mysore. Escorted transfer to Luxury Eco Lodge in Mysore. Spend your evening relaxing and sampling authentic local dishes.",
        "schedule": {
          "morning": {
            "title": "Arrival & Escorted Transfer in Mysore",
            "description": "Meet our local travel escort at Mysore transit hub. Receive a traditional welcome and transfer to Luxury Eco Lodge in Mysore."
          },
          "afternoon": {
            "title": "Unpack & Courtyard Leisure at Mysore",
            "description": "Check into your sanitized room, unpack your luggage, and enjoy quiet leisure time exploring hotel gardens and facilities."
          },
          "evening": {
            "title": "Panoramic Terrace Lounge Session at Mysore Palace",
            "description": "Stroll through the bustling neighborhood of Mysore Palace. Watch the sunset and savor a multi-course dinner."
          }
        },
        "details": {
          "importantTimings": "Sunrise Tour: 5:45 AM | Museum Hours: 9:30 AM - 5:00 PM",
          "meals": "Welcome Drink & Lavish Regional Buffet Dinner.",
          "transport": "AC Private Chauffeur Vehicle",
          "walkingLevel": "Easy Paced (Paved walkways)",
          "stay": "Luxury Eco Lodge in Mysore",
          "weather": "Warm tropical sunshine with ocean breeze 27°C",
          "dressCode": "Casual travel clothing & sunhat",
          "packingSuggestions": "Light cotton wear, camera with telephoto lens, sunscreen lotion, photo ID.",
          "accessibility": "Wheelchair ramps & low step entry vehicle",
          "visitorNote": "Escort coordinator will brief you on timing for Mysore Palace visit.",
          "travelDuration": "Approx 1 to 2 hours transfer"
        }
      },
      {
        "day": 2,
        "title": "Dawn Guided Expedition of Mysore Palace",
        "location": "Mysore",
        "overview": "A deep dive into Mysore Palace. Tour inner sanctums, historical galleries, and architectural viewpoints accompanied by an expert guide.",
        "schedule": {
          "morning": {
            "title": "Guided Tour of Mysore Palace",
            "description": "Early morning entry to Mysore Palace. Walk through central courtyards, ancient corridors, and historic halls."
          },
          "afternoon": {
            "title": "Boat Ride & Riverfront Exploration near Mysore",
            "description": "Taste authentic local regional cuisine. Visit local artisan markets specializing in handcrafts native to Karnataka."
          },
          "evening": {
            "title": "Sunset Viewpoint & Cultural Evening",
            "description": "Head to the highest scenic viewpoint overlooking Mysore Palace. Capture sunset photographs followed by evening entertainment."
          }
        },
        "details": {
          "importantTimings": "Sunrise Tour: 5:45 AM | Museum Hours: 9:30 AM - 5:00 PM",
          "meals": "Complimentary Buffet Breakfast & Traditional Cuisine Lunch.",
          "transport": "AC Private Sedan / SUV",
          "walkingLevel": "Moderate (Historical walkways & corridors)",
          "stay": "Luxury Eco Lodge in Mysore",
          "weather": "Warm tropical sunshine with ocean breeze 27°C",
          "dressCode": "Comfortable daywear",
          "packingSuggestions": "Comfortable walking socks, power bank, shoulder shawl, daypack.",
          "accessibility": "Assistive ramps available at main portals",
          "visitorNote": "Follow local heritage guidelines inside Mysore Palace.",
          "travelDuration": "Full day sightseeing approx 5 to 6 hours"
        }
      },
      {
        "day": 3,
        "title": "Excursion to Surrounding Landmarks of Mysore",
        "location": "Karnataka",
        "overview": "Expand your exploration with a day trip to surrounding heritage spots, sacred lakes, and craft villages near Mysore.",
        "schedule": {
          "morning": {
            "title": "Heritage Excursion & Scenic Drive",
            "description": "Scenic drive through countryside roads surrounding Mysore. Visit secondary monuments and historic watchtowers."
          },
          "afternoon": {
            "title": "Artisan Workshop & Traditional Lunch",
            "description": "Interact with local master craftsmen demonstrating native handloom weaving or stone carving. Enjoy traditional lunch."
          },
          "evening": {
            "title": "Twilight Promenade & Dinner",
            "description": "Enjoy a relaxed walk around the local market square. Purchase authentic local sweets and dinner."
          }
        },
        "details": {
          "importantTimings": "Excursion Departure: 9:00 AM",
          "meals": "Organic Farm-to-Table Breakfast & Seafood / Veg Dinner.",
          "transport": "AC Private Vehicle",
          "walkingLevel": "Easy Paced",
          "stay": "Luxury Eco Lodge in Mysore",
          "weather": "Warm tropical sunshine with ocean breeze 27°C",
          "dressCode": "Comfortable clothing",
          "packingSuggestions": "Breathable linen wear, sunglasses, small currency notes for local shops.",
          "accessibility": "Accessible vehicles",
          "visitorNote": "Authentic souvenirs certified by local artisans.",
          "travelDuration": "Approx 4 hours excursion"
        }
      },
      {
        "day": 4,
        "title": "Souvenir Shopping & Onward Departure from Mysore",
        "location": "Mysore",
        "overview": "Conclude your trip to Mysore Palace with morning shopping for local delicacies and souvenirs, followed by departure transfer.",
        "schedule": {
          "morning": {
            "title": "Handicrafts & Sweet Market Visit",
            "description": "Visit trusted local bazaar stalls to buy regional spices, handmade crafts, and traditional sweets of Mysore."
          },
          "afternoon": {
            "title": "Hotel Checkout & Farewell Lunch",
            "description": "Return to hotel for packing and checkout. Enjoy a farewell lunch before your transfer."
          },
          "evening": {
            "title": "Outbound Departure Transfer",
            "description": "Chauffeur drop to Mysore Airport or Railway Station for your onward journey home."
          }
        },
        "details": {
          "importantTimings": "Checkout: 12:00 PM | Transfer: As per flight/train",
          "meals": "Breakfast & Farewell Lunch included.",
          "transport": "AC Private Transfer Vehicle",
          "walkingLevel": "Easy Paced",
          "stay": "N/A (Day of departure)",
          "weather": "Warm tropical sunshine with ocean breeze 27°C",
          "dressCode": "Comfortable travel wear",
          "packingSuggestions": "Check-in luggage packed, photo ID ready.",
          "accessibility": "Accessible vehicles",
          "visitorNote": "Arrive at Mysore station/airport 2 hours prior to departure.",
          "travelDuration": "Approx 1 hour transfer"
        }
      }
    ],
    "durationDays": 4,
    "durationLabel": "4 Days / 3 Nights",
    "travellerTypes": [
      "History Lovers",
      "Families"
    ],
    "accessibilityStatus": "Partial Accessibility",
    "childFriendly": true,
    "packageBenefits": [
      "Heritage Guide",
      "Monument Entry Assistance"
    ],
    "highlights": [
      "Guided heritage sightseeing of Mysore Palace landmarks",
      "Immersive cultural show and local market visits",
      "Delight in authentic regional delicacies"
    ],
    "tips": [
      "Carry sun protection (glasses/hat) for outdoor excursions.",
      "Keep local currency handy for local markets.",
      "Follow guidelines at heritage locations."
    ],
    "itinerarySummary": [
      "Day 1: Arrival in Mysore: Panoramic Terrace Lounge Session",
      "Day 2: Dawn Guided Expedition of Mysore Palace",
      "Day 3: Excursion to Surrounding Landmarks of Mysore",
      "Day 4: Souvenir Shopping & Onward Departure from Mysore"
    ],
    "cancellationSummary": "Get a 100% full refund on cancellations made up to 15 days before the departure. Rescheduling options are fully flexible."
  },
  {
    "id": "family-niagara-falls",
    "title": "Niagara Falls",
    "destinationName": "Niagara Falls",
    "destinations": "Niagara Falls (Ontario, Canada / New York, USA)",
    "location": "Ontario, Canada / New York, USA",
    "route": [
      "Ontario",
      "Niagara Falls"
    ],
    "mainCategory": "Family",
    "categoryLabel": "Family Tour",
    "category": "Family",
    "region": "International",
    "image": "/images/tourist-places/family/Niagara Falls.jpg",
    "altText": "Niagara Falls family tour destination in Ontario, Canada / New York, USA",
    "duration": "4 Days / 3 Nights",
    "bestSeason": "July–September",
    "pace": "Active",
    "travellerType": "Family Friendly",
    "description": "A thoughtfully planned family tour offering comfort, guidance, and a memorable experience.",
    "price": 24500,
    "rating": null,
    "reviewCount": null,
    "seatsLeft": null,
    "recentBookings": null,
    "verified": null,
    "tags": [
      "Family Tour",
      "Family Friendly"
    ],
    "seniorFriendly": false,
    "wheelchairAccess": false,
    "vegMeals": false,
    "inclusions": {
      "hotel": true,
      "meals": true,
      "transit": true,
      "guide": true,
      "entryPasses": false,
      "medicalSupport": true,
      "localExperience": true
    },
    "itinerary": [
      {
        "day": 1,
        "title": "Spiritual Welcome to Ontario & Niagara Falls Gateway",
        "location": "Ontario",
        "overview": "Arrive in vibrant Ontario. Escorted transfer to Grand Riverfront Resort near Niagara Falls. Spend your evening relaxing and sampling authentic local dishes.",
        "schedule": {
          "morning": {
            "title": "Arrival & Escorted Transfer in Ontario",
            "description": "Meet our local travel escort at Ontario transit hub. Receive a traditional welcome and transfer to Grand Riverfront Resort near Niagara Falls."
          },
          "afternoon": {
            "title": "Unpack & Courtyard Leisure at Ontario",
            "description": "Check into your sanitized room, unpack your luggage, and enjoy quiet leisure time exploring hotel gardens and facilities."
          },
          "evening": {
            "title": "Lakeside Stroll & Local Cuisine at Niagara Falls",
            "description": "Stroll through the bustling neighborhood of Niagara Falls. Watch the sunset and savor a multi-course dinner."
          }
        },
        "details": {
          "importantTimings": "Guided Walk: 9:00 AM | Sunset Point Departure: 5:15 PM",
          "meals": "Welcome Drink & Lavish Regional Buffet Dinner.",
          "transport": "AC Private Chauffeur Vehicle",
          "walkingLevel": "Easy Paced (Paved walkways)",
          "stay": "Grand Riverfront Resort near Niagara Falls",
          "weather": "Crisp mountain climate, clear blue skies 19°C",
          "dressCode": "Casual travel clothing & sunhat",
          "packingSuggestions": "Comfortable walking socks, power bank, shoulder shawl, daypack.",
          "accessibility": "Wheelchair ramps & low step entry vehicle",
          "visitorNote": "Escort coordinator will brief you on timing for Niagara Falls visit.",
          "travelDuration": "Approx 1 to 2 hours transfer"
        }
      },
      {
        "day": 2,
        "title": "Early Sunrise Visit to Niagara Falls",
        "location": "Ontario",
        "overview": "A deep dive into Niagara Falls. Tour inner sanctums, historical galleries, and architectural viewpoints accompanied by an expert guide.",
        "schedule": {
          "morning": {
            "title": "Guided Tour of Niagara Falls",
            "description": "Early morning entry to Niagara Falls. Walk through central courtyards, ancient corridors, and historic halls."
          },
          "afternoon": {
            "title": "Artisan Handloom Workshop & Souvenirs near Ontario",
            "description": "Taste authentic local regional cuisine. Visit local artisan markets specializing in handcrafts native to Canada / New York, USA."
          },
          "evening": {
            "title": "Sunset Viewpoint & Cultural Evening",
            "description": "Head to the highest scenic viewpoint overlooking Niagara Falls. Capture sunset photographs followed by evening entertainment."
          }
        },
        "details": {
          "importantTimings": "Guided Walk: 9:00 AM | Sunset Point Departure: 5:15 PM",
          "meals": "Complimentary Buffet Breakfast & Traditional Cuisine Lunch.",
          "transport": "AC Private Sedan / SUV",
          "walkingLevel": "Moderate (Historical walkways & corridors)",
          "stay": "Grand Riverfront Resort near Niagara Falls",
          "weather": "Crisp mountain climate, clear blue skies 19°C",
          "dressCode": "Comfortable daywear",
          "packingSuggestions": "Breathable linen wear, sunglasses, small currency notes for local shops.",
          "accessibility": "Assistive ramps available at main portals",
          "visitorNote": "Follow local heritage guidelines inside Niagara Falls.",
          "travelDuration": "Full day sightseeing approx 5 to 6 hours"
        }
      },
      {
        "day": 3,
        "title": "Excursion to Surrounding Landmarks of Ontario",
        "location": "Canada / New York, USA",
        "overview": "Expand your exploration with a day trip to surrounding heritage spots, sacred lakes, and craft villages near Ontario.",
        "schedule": {
          "morning": {
            "title": "Heritage Excursion & Scenic Drive",
            "description": "Scenic drive through countryside roads surrounding Ontario. Visit secondary monuments and historic watchtowers."
          },
          "afternoon": {
            "title": "Artisan Workshop & Traditional Lunch",
            "description": "Interact with local master craftsmen demonstrating native handloom weaving or stone carving. Enjoy traditional lunch."
          },
          "evening": {
            "title": "Twilight Promenade & Dinner",
            "description": "Enjoy a relaxed walk around the local market square. Purchase authentic local sweets and dinner."
          }
        },
        "details": {
          "importantTimings": "Excursion Departure: 9:00 AM",
          "meals": "Organic Farm-to-Table Breakfast & Seafood / Veg Dinner.",
          "transport": "AC Private Vehicle",
          "walkingLevel": "Easy Paced",
          "stay": "Grand Riverfront Resort near Niagara Falls",
          "weather": "Crisp mountain climate, clear blue skies 19°C",
          "dressCode": "Comfortable clothing",
          "packingSuggestions": "Sunhat, sunglasses, comfortable walking shoes, light jacket, camera.",
          "accessibility": "Accessible vehicles",
          "visitorNote": "Authentic souvenirs certified by local artisans.",
          "travelDuration": "Approx 4 hours excursion"
        }
      },
      {
        "day": 4,
        "title": "Souvenir Shopping & Onward Departure from Ontario",
        "location": "Ontario",
        "overview": "Conclude your trip to Niagara Falls with morning shopping for local delicacies and souvenirs, followed by departure transfer.",
        "schedule": {
          "morning": {
            "title": "Handicrafts & Sweet Market Visit",
            "description": "Visit trusted local bazaar stalls to buy regional spices, handmade crafts, and traditional sweets of Ontario."
          },
          "afternoon": {
            "title": "Hotel Checkout & Farewell Lunch",
            "description": "Return to hotel for packing and checkout. Enjoy a farewell lunch before your transfer."
          },
          "evening": {
            "title": "Outbound Departure Transfer",
            "description": "Chauffeur drop to Ontario Airport or Railway Station for your onward journey home."
          }
        },
        "details": {
          "importantTimings": "Checkout: 12:00 PM | Transfer: As per flight/train",
          "meals": "Breakfast & Farewell Lunch included.",
          "transport": "AC Private Transfer Vehicle",
          "walkingLevel": "Easy Paced",
          "stay": "N/A (Day of departure)",
          "weather": "Crisp mountain climate, clear blue skies 19°C",
          "dressCode": "Comfortable travel wear",
          "packingSuggestions": "Check-in luggage packed, photo ID ready.",
          "accessibility": "Accessible vehicles",
          "visitorNote": "Arrive at Ontario station/airport 2 hours prior to departure.",
          "travelDuration": "Approx 1 hour transfer"
        }
      }
    ],
    "durationDays": 4,
    "durationLabel": "4 Days / 3 Nights",
    "travellerTypes": [
      "Nature Lovers",
      "Adventure Travellers"
    ],
    "accessibilityStatus": "Not Wheelchair Accessible",
    "childFriendly": false,
    "packageBenefits": [
      "Nature Guide",
      "Viewpoint Access"
    ],
    "highlights": [
      "Explore the scenic nature trails and waterfall routes in Niagara Falls",
      "Breathtaking viewpoints and photo opportunities",
      "Guided trekking and outdoor activities"
    ],
    "tips": [
      "Wear sturdy, non-slip walking shoes.",
      "Carry a light raincoat or umbrella depending on the season.",
      "Stay well-hydrated during the walk."
    ],
    "itinerarySummary": [
      "Day 1: Spiritual Welcome to Ontario & Niagara Falls Gateway",
      "Day 2: Early Sunrise Visit to Niagara Falls",
      "Day 3: Excursion to Surrounding Landmarks of Ontario",
      "Day 4: Souvenir Shopping & Onward Departure from Ontario"
    ],
    "cancellationSummary": "Get a 100% full refund on cancellations made up to 15 days before the departure. Rescheduling options are fully flexible."
  },
  {
    "id": "family-nubra-valley",
    "title": "Nubra Valley",
    "destinationName": "Nubra Valley",
    "destinations": "Nubra Valley (Ladakh)",
    "location": "Ladakh",
    "route": [
      "Ladakh",
      "Nubra Valley"
    ],
    "mainCategory": "Family",
    "categoryLabel": "Family Tour",
    "category": "Family",
    "region": "North India",
    "image": "/images/tourist-places/family/Nubra Valley.jpg",
    "altText": "Nubra Valley family tour destination in Ladakh",
    "duration": "4 Days / 3 Nights",
    "bestSeason": "March–June",
    "pace": "Active",
    "travellerType": "Family Friendly",
    "description": "A thoughtfully planned family tour offering comfort, guidance, and a memorable experience.",
    "price": 26000,
    "rating": null,
    "reviewCount": null,
    "seatsLeft": null,
    "recentBookings": null,
    "verified": null,
    "tags": [
      "Family Tour",
      "Family Friendly"
    ],
    "seniorFriendly": false,
    "wheelchairAccess": false,
    "vegMeals": false,
    "inclusions": {
      "hotel": true,
      "meals": true,
      "transit": true,
      "guide": true,
      "entryPasses": false,
      "medicalSupport": true,
      "localExperience": false
    },
    "itinerary": [
      {
        "day": 1,
        "title": "Arrival in Ladakh: Traditional Ceremony & Quiet Reflection",
        "location": "Ladakh",
        "overview": "Arrive in vibrant Ladakh. Escorted transfer to Vedic Pilgrim Ashram Stay in Ladakh. Spend your evening relaxing and sampling authentic local dishes.",
        "schedule": {
          "morning": {
            "title": "Arrival & Escorted Transfer in Ladakh",
            "description": "Meet our local travel escort at Ladakh transit hub. Receive a traditional welcome and transfer to Vedic Pilgrim Ashram Stay in Ladakh."
          },
          "afternoon": {
            "title": "Unpack & Courtyard Leisure at Ladakh",
            "description": "Check into your sanitized room, unpack your luggage, and enjoy quiet leisure time exploring hotel gardens and facilities."
          },
          "evening": {
            "title": "Traditional Ceremony & Quiet Reflection at Nubra Valley",
            "description": "Stroll through the bustling neighborhood of Nubra Valley. Watch the sunset and savor a multi-course dinner."
          }
        },
        "details": {
          "importantTimings": "Boat Departure: 6:00 AM | Heritage Show: 7:00 PM",
          "meals": "Welcome Drink & Lavish Regional Buffet Dinner.",
          "transport": "AC Private Chauffeur Vehicle",
          "walkingLevel": "Easy Paced (Paved walkways)",
          "stay": "Vedic Pilgrim Ashram Stay in Ladakh",
          "weather": "Refreshing river mist with mild sun 23°C",
          "dressCode": "Casual travel clothing & sunhat",
          "packingSuggestions": "Breathable linen wear, sunglasses, small currency notes for local shops.",
          "accessibility": "Wheelchair ramps & low step entry vehicle",
          "visitorNote": "Escort coordinator will brief you on timing for Nubra Valley visit.",
          "travelDuration": "Approx 1 to 2 hours transfer"
        }
      },
      {
        "day": 2,
        "title": "Exclusive Morning Tour of Nubra Valley",
        "location": "Ladakh",
        "overview": "A deep dive into Nubra Valley. Tour inner sanctums, historical galleries, and architectural viewpoints accompanied by an expert guide.",
        "schedule": {
          "morning": {
            "title": "Guided Tour of Nubra Valley",
            "description": "Early morning entry to Nubra Valley. Walk through central courtyards, ancient corridors, and historic halls."
          },
          "afternoon": {
            "title": "Scenic Valley Drive & Photo Stops near Ladakh",
            "description": "Taste authentic local regional cuisine. Visit local artisan markets specializing in handcrafts native to Ladakh."
          },
          "evening": {
            "title": "Sunset Viewpoint & Cultural Evening",
            "description": "Head to the highest scenic viewpoint overlooking Nubra Valley. Capture sunset photographs followed by evening entertainment."
          }
        },
        "details": {
          "importantTimings": "Boat Departure: 6:00 AM | Heritage Show: 7:00 PM",
          "meals": "Complimentary Buffet Breakfast & Traditional Cuisine Lunch.",
          "transport": "AC Private Sedan / SUV",
          "walkingLevel": "Moderate (Historical walkways & corridors)",
          "stay": "Vedic Pilgrim Ashram Stay in Ladakh",
          "weather": "Refreshing river mist with mild sun 23°C",
          "dressCode": "Comfortable daywear",
          "packingSuggestions": "Sunhat, sunglasses, comfortable walking shoes, light jacket, camera.",
          "accessibility": "Assistive ramps available at main portals",
          "visitorNote": "Follow local heritage guidelines inside Nubra Valley.",
          "travelDuration": "Full day sightseeing approx 5 to 6 hours"
        }
      },
      {
        "day": 3,
        "title": "Excursion to Surrounding Landmarks of Ladakh",
        "location": "Ladakh",
        "overview": "Expand your exploration with a day trip to surrounding heritage spots, sacred lakes, and craft villages near Ladakh.",
        "schedule": {
          "morning": {
            "title": "Heritage Excursion & Scenic Drive",
            "description": "Scenic drive through countryside roads surrounding Ladakh. Visit secondary monuments and historic watchtowers."
          },
          "afternoon": {
            "title": "Artisan Workshop & Traditional Lunch",
            "description": "Interact with local master craftsmen demonstrating native handloom weaving or stone carving. Enjoy traditional lunch."
          },
          "evening": {
            "title": "Twilight Promenade & Dinner",
            "description": "Enjoy a relaxed walk around the local market square. Purchase authentic local sweets and dinner."
          }
        },
        "details": {
          "importantTimings": "Excursion Departure: 9:00 AM",
          "meals": "Organic Farm-to-Table Breakfast & Seafood / Veg Dinner.",
          "transport": "AC Private Vehicle",
          "walkingLevel": "Easy Paced",
          "stay": "Vedic Pilgrim Ashram Stay in Ladakh",
          "weather": "Refreshing river mist with mild sun 23°C",
          "dressCode": "Comfortable clothing",
          "packingSuggestions": "Traditional headscarf, slip-on shoes, reusable water bottle, dry bag.",
          "accessibility": "Accessible vehicles",
          "visitorNote": "Authentic souvenirs certified by local artisans.",
          "travelDuration": "Approx 4 hours excursion"
        }
      },
      {
        "day": 4,
        "title": "Souvenir Shopping & Onward Departure from Ladakh",
        "location": "Ladakh",
        "overview": "Conclude your trip to Nubra Valley with morning shopping for local delicacies and souvenirs, followed by departure transfer.",
        "schedule": {
          "morning": {
            "title": "Handicrafts & Sweet Market Visit",
            "description": "Visit trusted local bazaar stalls to buy regional spices, handmade crafts, and traditional sweets of Ladakh."
          },
          "afternoon": {
            "title": "Hotel Checkout & Farewell Lunch",
            "description": "Return to hotel for packing and checkout. Enjoy a farewell lunch before your transfer."
          },
          "evening": {
            "title": "Outbound Departure Transfer",
            "description": "Chauffeur drop to Ladakh Airport or Railway Station for your onward journey home."
          }
        },
        "details": {
          "importantTimings": "Checkout: 12:00 PM | Transfer: As per flight/train",
          "meals": "Breakfast & Farewell Lunch included.",
          "transport": "AC Private Transfer Vehicle",
          "walkingLevel": "Easy Paced",
          "stay": "N/A (Day of departure)",
          "weather": "Refreshing river mist with mild sun 23°C",
          "dressCode": "Comfortable travel wear",
          "packingSuggestions": "Check-in luggage packed, photo ID ready.",
          "accessibility": "Accessible vehicles",
          "visitorNote": "Arrive at Ladakh station/airport 2 hours prior to departure.",
          "travelDuration": "Approx 1 hour transfer"
        }
      }
    ],
    "durationDays": 4,
    "durationLabel": "4 Days / 3 Nights",
    "travellerTypes": [
      "Nature Lovers",
      "Adventure Travellers"
    ],
    "accessibilityStatus": "Not Wheelchair Accessible",
    "childFriendly": false,
    "packageBenefits": [
      "Nature Guide",
      "Viewpoint Access"
    ],
    "highlights": [
      "Explore the scenic nature trails and waterfall routes in Nubra Valley",
      "Breathtaking viewpoints and photo opportunities",
      "Guided trekking and outdoor activities"
    ],
    "tips": [
      "Wear sturdy, non-slip walking shoes.",
      "Carry a light raincoat or umbrella depending on the season.",
      "Stay well-hydrated during the walk."
    ],
    "itinerarySummary": [
      "Day 1: Arrival in Ladakh: Traditional Ceremony & Quiet Reflection",
      "Day 2: Exclusive Morning Tour of Nubra Valley",
      "Day 3: Excursion to Surrounding Landmarks of Ladakh",
      "Day 4: Souvenir Shopping & Onward Departure from Ladakh"
    ],
    "cancellationSummary": "Get a 100% full refund on cancellations made up to 15 days before the departure. Rescheduling options are fully flexible."
  },
  {
    "id": "family-palm-jumeirah",
    "title": "Palm Jumeirah",
    "destinationName": "Palm Jumeirah",
    "destinations": "Palm Jumeirah (Dubai, United Arab Emirates)",
    "location": "Dubai, United Arab Emirates",
    "route": [
      "Dubai",
      "Palm Jumeirah"
    ],
    "mainCategory": "Family",
    "categoryLabel": "Family Tour",
    "category": "Family",
    "region": "International",
    "image": "/images/tourist-places/family/Palm Jumeirah.jpg",
    "altText": "Palm Jumeirah family tour destination in Dubai, United Arab Emirates",
    "duration": "4 Days / 3 Nights",
    "bestSeason": "Year-Round",
    "pace": "Easy",
    "travellerType": "Family Friendly",
    "description": "A thoughtfully planned family tour offering comfort, guidance, and a memorable experience.",
    "price": 27500,
    "rating": null,
    "reviewCount": null,
    "seatsLeft": null,
    "recentBookings": null,
    "verified": null,
    "tags": [
      "Family Tour",
      "Family Friendly"
    ],
    "seniorFriendly": true,
    "wheelchairAccess": true,
    "vegMeals": false,
    "inclusions": {
      "hotel": true,
      "meals": true,
      "transit": true,
      "guide": false,
      "entryPasses": false,
      "medicalSupport": false,
      "localExperience": false
    },
    "itinerary": [
      {
        "day": 1,
        "title": "Welcome & Check-in at Dubai & Palm Jumeirah Gateway",
        "location": "Dubai",
        "overview": "Arrive in vibrant Dubai. Escorted transfer to Boutique Star Hotel in Dubai. Spend your evening relaxing and sampling authentic local dishes.",
        "schedule": {
          "morning": {
            "title": "Arrival & Escorted Transfer in Dubai",
            "description": "Meet our local travel escort at Dubai transit hub. Receive a traditional welcome and transfer to Boutique Star Hotel in Dubai."
          },
          "afternoon": {
            "title": "Unpack & Courtyard Leisure at Dubai",
            "description": "Check into your sanitized room, unpack your luggage, and enjoy quiet leisure time exploring hotel gardens and facilities."
          },
          "evening": {
            "title": "Sunset Walk & Local Market Flavors at Palm Jumeirah",
            "description": "Stroll through the bustling neighborhood of Palm Jumeirah. Watch the sunset and savor a multi-course dinner."
          }
        },
        "details": {
          "importantTimings": "Gate Entry: 8:00 AM | Evening Light Show: 6:30 PM",
          "meals": "Welcome Drink & Lavish Regional Buffet Dinner.",
          "transport": "AC Private Chauffeur Vehicle",
          "walkingLevel": "Easy Paced (Paved walkways)",
          "stay": "Boutique Star Hotel in Dubai",
          "weather": "Pleasant breeze with sunny afternoon 24°C",
          "dressCode": "Casual travel clothing & sunhat",
          "packingSuggestions": "Sunhat, sunglasses, comfortable walking shoes, light jacket, camera.",
          "accessibility": "Wheelchair ramps & low step entry vehicle",
          "visitorNote": "Escort coordinator will brief you on timing for Palm Jumeirah visit.",
          "travelDuration": "Approx 1 to 2 hours transfer"
        }
      },
      {
        "day": 2,
        "title": "VIP Access to Palm Jumeirah",
        "location": "Dubai",
        "overview": "A deep dive into Palm Jumeirah. Tour inner sanctums, historical galleries, and architectural viewpoints accompanied by an expert guide.",
        "schedule": {
          "morning": {
            "title": "Guided Tour of Palm Jumeirah",
            "description": "Early morning entry to Palm Jumeirah. Walk through central courtyards, ancient corridors, and historic halls."
          },
          "afternoon": {
            "title": "Sacred Shrine Darshan & Temple Complex near Dubai",
            "description": "Taste authentic local regional cuisine. Visit local artisan markets specializing in handcrafts native to United Arab Emirates."
          },
          "evening": {
            "title": "Sunset Viewpoint & Cultural Evening",
            "description": "Head to the highest scenic viewpoint overlooking Palm Jumeirah. Capture sunset photographs followed by evening entertainment."
          }
        },
        "details": {
          "importantTimings": "Gate Entry: 8:00 AM | Evening Light Show: 6:30 PM",
          "meals": "Complimentary Buffet Breakfast & Traditional Cuisine Lunch.",
          "transport": "AC Private Sedan / SUV",
          "walkingLevel": "Moderate (Historical walkways & corridors)",
          "stay": "Boutique Star Hotel in Dubai",
          "weather": "Pleasant breeze with sunny afternoon 24°C",
          "dressCode": "Comfortable daywear",
          "packingSuggestions": "Traditional headscarf, slip-on shoes, reusable water bottle, dry bag.",
          "accessibility": "Assistive ramps available at main portals",
          "visitorNote": "Follow local heritage guidelines inside Palm Jumeirah.",
          "travelDuration": "Full day sightseeing approx 5 to 6 hours"
        }
      },
      {
        "day": 3,
        "title": "Excursion to Surrounding Landmarks of Dubai",
        "location": "United Arab Emirates",
        "overview": "Expand your exploration with a day trip to surrounding heritage spots, sacred lakes, and craft villages near Dubai.",
        "schedule": {
          "morning": {
            "title": "Heritage Excursion & Scenic Drive",
            "description": "Scenic drive through countryside roads surrounding Dubai. Visit secondary monuments and historic watchtowers."
          },
          "afternoon": {
            "title": "Artisan Workshop & Traditional Lunch",
            "description": "Interact with local master craftsmen demonstrating native handloom weaving or stone carving. Enjoy traditional lunch."
          },
          "evening": {
            "title": "Twilight Promenade & Dinner",
            "description": "Enjoy a relaxed walk around the local market square. Purchase authentic local sweets and dinner."
          }
        },
        "details": {
          "importantTimings": "Excursion Departure: 9:00 AM",
          "meals": "Organic Farm-to-Table Breakfast & Seafood / Veg Dinner.",
          "transport": "AC Private Vehicle",
          "walkingLevel": "Easy Paced",
          "stay": "Boutique Star Hotel in Dubai",
          "weather": "Pleasant breeze with sunny afternoon 24°C",
          "dressCode": "Comfortable clothing",
          "packingSuggestions": "Light cotton wear, camera with telephoto lens, sunscreen lotion, photo ID.",
          "accessibility": "Accessible vehicles",
          "visitorNote": "Authentic souvenirs certified by local artisans.",
          "travelDuration": "Approx 4 hours excursion"
        }
      },
      {
        "day": 4,
        "title": "Souvenir Shopping & Onward Departure from Dubai",
        "location": "Dubai",
        "overview": "Conclude your trip to Palm Jumeirah with morning shopping for local delicacies and souvenirs, followed by departure transfer.",
        "schedule": {
          "morning": {
            "title": "Handicrafts & Sweet Market Visit",
            "description": "Visit trusted local bazaar stalls to buy regional spices, handmade crafts, and traditional sweets of Dubai."
          },
          "afternoon": {
            "title": "Hotel Checkout & Farewell Lunch",
            "description": "Return to hotel for packing and checkout. Enjoy a farewell lunch before your transfer."
          },
          "evening": {
            "title": "Outbound Departure Transfer",
            "description": "Chauffeur drop to Dubai Airport or Railway Station for your onward journey home."
          }
        },
        "details": {
          "importantTimings": "Checkout: 12:00 PM | Transfer: As per flight/train",
          "meals": "Breakfast & Farewell Lunch included.",
          "transport": "AC Private Transfer Vehicle",
          "walkingLevel": "Easy Paced",
          "stay": "N/A (Day of departure)",
          "weather": "Pleasant breeze with sunny afternoon 24°C",
          "dressCode": "Comfortable travel wear",
          "packingSuggestions": "Check-in luggage packed, photo ID ready.",
          "accessibility": "Accessible vehicles",
          "visitorNote": "Arrive at Dubai station/airport 2 hours prior to departure.",
          "travelDuration": "Approx 1 hour transfer"
        }
      }
    ],
    "durationDays": 4,
    "durationLabel": "4 Days / 3 Nights",
    "travellerTypes": [
      "Families",
      "Couples"
    ],
    "accessibilityStatus": "Wheelchair Accessible",
    "childFriendly": true,
    "packageBenefits": [
      "Family Accommodation",
      "Local Sightseeing"
    ],
    "highlights": [
      "Guided heritage sightseeing of Palm Jumeirah landmarks",
      "Immersive cultural show and local market visits",
      "Delight in authentic regional delicacies"
    ],
    "tips": [
      "Carry sun protection (glasses/hat) for outdoor excursions.",
      "Keep local currency handy for local markets.",
      "Follow guidelines at heritage locations."
    ],
    "itinerarySummary": [
      "Day 1: Welcome & Check-in at Dubai & Palm Jumeirah Gateway",
      "Day 2: VIP Access to Palm Jumeirah",
      "Day 3: Excursion to Surrounding Landmarks of Dubai",
      "Day 4: Souvenir Shopping & Onward Departure from Dubai"
    ],
    "cancellationSummary": "Get a 100% full refund on cancellations made up to 15 days before the departure. Rescheduling options are fully flexible."
  },
  {
    "id": "family-pangong-lake",
    "title": "Pangong Lake",
    "destinationName": "Pangong Lake",
    "destinations": "Pangong Lake (Ladakh)",
    "location": "Ladakh",
    "route": [
      "Ladakh",
      "Pangong Lake"
    ],
    "mainCategory": "Family",
    "categoryLabel": "Family Tour",
    "category": "Family",
    "region": "North India",
    "image": "/images/tourist-places/family/Pangong Lake.jpg",
    "altText": "Pangong Lake family tour destination in Ladakh",
    "duration": "4 Days / 3 Nights",
    "bestSeason": "March–June",
    "pace": "Active",
    "travellerType": "Family Friendly",
    "description": "A thoughtfully planned family tour offering comfort, guidance, and a memorable experience.",
    "price": 29000,
    "rating": null,
    "reviewCount": null,
    "seatsLeft": null,
    "recentBookings": null,
    "verified": null,
    "tags": [
      "Family Tour",
      "Family Friendly"
    ],
    "seniorFriendly": false,
    "wheelchairAccess": false,
    "vegMeals": false,
    "inclusions": {
      "hotel": true,
      "meals": true,
      "transit": true,
      "guide": true,
      "entryPasses": false,
      "medicalSupport": true,
      "localExperience": false
    },
    "itinerary": [
      {
        "day": 1,
        "title": "Arrival in Ladakh: Illuminated Viewpoint & Welcome Feast",
        "location": "Ladakh",
        "overview": "Arrive in vibrant Ladakh. Escorted transfer to Hilltop Panorama Resort near Pangong Lake. Spend your evening relaxing and sampling authentic local dishes.",
        "schedule": {
          "morning": {
            "title": "Arrival & Escorted Transfer in Ladakh",
            "description": "Meet our local travel escort at Ladakh transit hub. Receive a traditional welcome and transfer to Hilltop Panorama Resort near Pangong Lake."
          },
          "afternoon": {
            "title": "Unpack & Courtyard Leisure at Ladakh",
            "description": "Check into your sanitized room, unpack your luggage, and enjoy quiet leisure time exploring hotel gardens and facilities."
          },
          "evening": {
            "title": "Illuminated Viewpoint & Welcome Feast at Pangong Lake",
            "description": "Stroll through the bustling neighborhood of Pangong Lake. Watch the sunset and savor a multi-course dinner."
          }
        },
        "details": {
          "importantTimings": "Sanctum VIP Slot: 6:30 AM | Bazaar Hours: 4:00 PM - 8:30 PM",
          "meals": "Welcome Drink & Lavish Regional Buffet Dinner.",
          "transport": "AC Private Chauffeur Vehicle",
          "walkingLevel": "Easy Paced (Paved walkways)",
          "stay": "Hilltop Panorama Resort near Pangong Lake",
          "weather": "Cool crisp morning fog clearing to bright 22°C",
          "dressCode": "Casual travel clothing & sunhat",
          "packingSuggestions": "Traditional headscarf, slip-on shoes, reusable water bottle, dry bag.",
          "accessibility": "Wheelchair ramps & low step entry vehicle",
          "visitorNote": "Escort coordinator will brief you on timing for Pangong Lake visit.",
          "travelDuration": "Approx 1 to 2 hours transfer"
        }
      },
      {
        "day": 2,
        "title": "Breakfast & Exploration of Pangong Lake",
        "location": "Ladakh",
        "overview": "A deep dive into Pangong Lake. Tour inner sanctums, historical galleries, and architectural viewpoints accompanied by an expert guide.",
        "schedule": {
          "morning": {
            "title": "Guided Tour of Pangong Lake",
            "description": "Early morning entry to Pangong Lake. Walk through central courtyards, ancient corridors, and historic halls."
          },
          "afternoon": {
            "title": "Coastal Promenade & Beach Relax near Ladakh",
            "description": "Taste authentic local regional cuisine. Visit local artisan markets specializing in handcrafts native to Ladakh."
          },
          "evening": {
            "title": "Sunset Viewpoint & Cultural Evening",
            "description": "Head to the highest scenic viewpoint overlooking Pangong Lake. Capture sunset photographs followed by evening entertainment."
          }
        },
        "details": {
          "importantTimings": "Sanctum VIP Slot: 6:30 AM | Bazaar Hours: 4:00 PM - 8:30 PM",
          "meals": "Complimentary Buffet Breakfast & Traditional Cuisine Lunch.",
          "transport": "AC Private Sedan / SUV",
          "walkingLevel": "Moderate (Historical walkways & corridors)",
          "stay": "Hilltop Panorama Resort near Pangong Lake",
          "weather": "Cool crisp morning fog clearing to bright 22°C",
          "dressCode": "Comfortable daywear",
          "packingSuggestions": "Light cotton wear, camera with telephoto lens, sunscreen lotion, photo ID.",
          "accessibility": "Assistive ramps available at main portals",
          "visitorNote": "Follow local heritage guidelines inside Pangong Lake.",
          "travelDuration": "Full day sightseeing approx 5 to 6 hours"
        }
      },
      {
        "day": 3,
        "title": "Excursion to Surrounding Landmarks of Ladakh",
        "location": "Ladakh",
        "overview": "Expand your exploration with a day trip to surrounding heritage spots, sacred lakes, and craft villages near Ladakh.",
        "schedule": {
          "morning": {
            "title": "Heritage Excursion & Scenic Drive",
            "description": "Scenic drive through countryside roads surrounding Ladakh. Visit secondary monuments and historic watchtowers."
          },
          "afternoon": {
            "title": "Artisan Workshop & Traditional Lunch",
            "description": "Interact with local master craftsmen demonstrating native handloom weaving or stone carving. Enjoy traditional lunch."
          },
          "evening": {
            "title": "Twilight Promenade & Dinner",
            "description": "Enjoy a relaxed walk around the local market square. Purchase authentic local sweets and dinner."
          }
        },
        "details": {
          "importantTimings": "Excursion Departure: 9:00 AM",
          "meals": "Organic Farm-to-Table Breakfast & Seafood / Veg Dinner.",
          "transport": "AC Private Vehicle",
          "walkingLevel": "Easy Paced",
          "stay": "Hilltop Panorama Resort near Pangong Lake",
          "weather": "Cool crisp morning fog clearing to bright 22°C",
          "dressCode": "Comfortable clothing",
          "packingSuggestions": "Comfortable walking socks, power bank, shoulder shawl, daypack.",
          "accessibility": "Accessible vehicles",
          "visitorNote": "Authentic souvenirs certified by local artisans.",
          "travelDuration": "Approx 4 hours excursion"
        }
      },
      {
        "day": 4,
        "title": "Souvenir Shopping & Onward Departure from Ladakh",
        "location": "Ladakh",
        "overview": "Conclude your trip to Pangong Lake with morning shopping for local delicacies and souvenirs, followed by departure transfer.",
        "schedule": {
          "morning": {
            "title": "Handicrafts & Sweet Market Visit",
            "description": "Visit trusted local bazaar stalls to buy regional spices, handmade crafts, and traditional sweets of Ladakh."
          },
          "afternoon": {
            "title": "Hotel Checkout & Farewell Lunch",
            "description": "Return to hotel for packing and checkout. Enjoy a farewell lunch before your transfer."
          },
          "evening": {
            "title": "Outbound Departure Transfer",
            "description": "Chauffeur drop to Ladakh Airport or Railway Station for your onward journey home."
          }
        },
        "details": {
          "importantTimings": "Checkout: 12:00 PM | Transfer: As per flight/train",
          "meals": "Breakfast & Farewell Lunch included.",
          "transport": "AC Private Transfer Vehicle",
          "walkingLevel": "Easy Paced",
          "stay": "N/A (Day of departure)",
          "weather": "Cool crisp morning fog clearing to bright 22°C",
          "dressCode": "Comfortable travel wear",
          "packingSuggestions": "Check-in luggage packed, photo ID ready.",
          "accessibility": "Accessible vehicles",
          "visitorNote": "Arrive at Ladakh station/airport 2 hours prior to departure.",
          "travelDuration": "Approx 1 hour transfer"
        }
      }
    ],
    "durationDays": 4,
    "durationLabel": "4 Days / 3 Nights",
    "travellerTypes": [
      "Nature Lovers",
      "Adventure Travellers"
    ],
    "accessibilityStatus": "Not Wheelchair Accessible",
    "childFriendly": false,
    "packageBenefits": [
      "Nature Guide",
      "Viewpoint Access"
    ],
    "highlights": [
      "Explore the scenic nature trails and waterfall routes in Pangong Lake",
      "Breathtaking viewpoints and photo opportunities",
      "Guided trekking and outdoor activities"
    ],
    "tips": [
      "Wear sturdy, non-slip walking shoes.",
      "Carry a light raincoat or umbrella depending on the season.",
      "Stay well-hydrated during the walk."
    ],
    "itinerarySummary": [
      "Day 1: Arrival in Ladakh: Illuminated Viewpoint & Welcome Feast",
      "Day 2: Breakfast & Exploration of Pangong Lake",
      "Day 3: Excursion to Surrounding Landmarks of Ladakh",
      "Day 4: Souvenir Shopping & Onward Departure from Ladakh"
    ],
    "cancellationSummary": "Get a 100% full refund on cancellations made up to 15 days before the departure. Rescheduling options are fully flexible."
  },
  {
    "id": "family-radhanagar-beach",
    "title": "Radhanagar Beach",
    "destinationName": "Radhanagar Beach",
    "destinations": "Radhanagar Beach (Andaman & Nicobar Islands)",
    "location": "Andaman & Nicobar Islands",
    "route": [
      "Andaman & Nicobar Islands",
      "Radhanagar Beach"
    ],
    "mainCategory": "Family",
    "categoryLabel": "Family Tour",
    "category": "Family",
    "region": "South India",
    "image": "/images/tourist-places/family/Radhanagar Beach.jpg",
    "altText": "Radhanagar Beach family tour destination in Andaman & Nicobar Islands",
    "duration": "4 Days / 3 Nights",
    "bestSeason": "November–February",
    "pace": "Relaxed",
    "travellerType": "Family Friendly",
    "description": "A thoughtfully planned family tour offering comfort, guidance, and a memorable experience.",
    "price": 18500,
    "rating": null,
    "reviewCount": null,
    "seatsLeft": null,
    "recentBookings": null,
    "verified": null,
    "tags": [
      "Family Tour",
      "Family Friendly"
    ],
    "seniorFriendly": true,
    "wheelchairAccess": true,
    "vegMeals": false,
    "inclusions": {
      "hotel": true,
      "meals": true,
      "transit": true,
      "guide": false,
      "entryPasses": false,
      "medicalSupport": false,
      "localExperience": true
    },
    "itinerary": [
      {
        "day": 1,
        "title": "Escorted Arrival in Andaman & Nicobar Islands & Radhanagar Beach Gateway",
        "location": "Andaman & Nicobar Islands",
        "overview": "Arrive in vibrant Andaman & Nicobar Islands. Escorted transfer to Heritage Palace Resort overlooking Radhanagar Beach. Spend your evening relaxing and sampling authentic local dishes.",
        "schedule": {
          "morning": {
            "title": "Arrival & Escorted Transfer in Andaman & Nicobar Islands",
            "description": "Meet our local travel escort at Andaman & Nicobar Islands transit hub. Receive a traditional welcome and transfer to Heritage Palace Resort overlooking Radhanagar Beach."
          },
          "afternoon": {
            "title": "Unpack & Courtyard Leisure at Andaman & Nicobar Islands",
            "description": "Check into your sanitized room, unpack your luggage, and enjoy quiet leisure time exploring hotel gardens and facilities."
          },
          "evening": {
            "title": "Cultural Folk Performance & Dinner at Radhanagar Beach",
            "description": "Stroll through the bustling neighborhood of Radhanagar Beach. Watch the sunset and savor a multi-course dinner."
          }
        },
        "details": {
          "importantTimings": "Sunrise Tour: 5:45 AM | Museum Hours: 9:30 AM - 5:00 PM",
          "meals": "Welcome Drink & Lavish Regional Buffet Dinner.",
          "transport": "AC Private Chauffeur Vehicle",
          "walkingLevel": "Easy Paced (Paved walkways)",
          "stay": "Heritage Palace Resort overlooking Radhanagar Beach",
          "weather": "Warm tropical sunshine with ocean breeze 27°C",
          "dressCode": "Casual travel clothing & sunhat",
          "packingSuggestions": "Light cotton wear, camera with telephoto lens, sunscreen lotion, photo ID.",
          "accessibility": "Wheelchair ramps & low step entry vehicle",
          "visitorNote": "Escort coordinator will brief you on timing for Radhanagar Beach visit.",
          "travelDuration": "Approx 1 to 2 hours transfer"
        }
      },
      {
        "day": 2,
        "title": "Panoramic Discovery of Radhanagar Beach",
        "location": "Andaman & Nicobar Islands",
        "overview": "A deep dive into Radhanagar Beach. Tour inner sanctums, historical galleries, and architectural viewpoints accompanied by an expert guide.",
        "schedule": {
          "morning": {
            "title": "Guided Tour of Radhanagar Beach",
            "description": "Early morning entry to Radhanagar Beach. Walk through central courtyards, ancient corridors, and historic halls."
          },
          "afternoon": {
            "title": "Culinary Tasting & Local Artisan Crafts near Andaman & Nicobar Islands",
            "description": "Taste authentic local regional cuisine. Visit local artisan markets specializing in handcrafts native to Andaman & Nicobar Islands."
          },
          "evening": {
            "title": "Sunset Viewpoint & Cultural Evening",
            "description": "Head to the highest scenic viewpoint overlooking Radhanagar Beach. Capture sunset photographs followed by evening entertainment."
          }
        },
        "details": {
          "importantTimings": "Sunrise Tour: 5:45 AM | Museum Hours: 9:30 AM - 5:00 PM",
          "meals": "Complimentary Buffet Breakfast & Traditional Cuisine Lunch.",
          "transport": "AC Private Sedan / SUV",
          "walkingLevel": "Moderate (Historical walkways & corridors)",
          "stay": "Heritage Palace Resort overlooking Radhanagar Beach",
          "weather": "Warm tropical sunshine with ocean breeze 27°C",
          "dressCode": "Comfortable daywear",
          "packingSuggestions": "Comfortable walking socks, power bank, shoulder shawl, daypack.",
          "accessibility": "Assistive ramps available at main portals",
          "visitorNote": "Follow local heritage guidelines inside Radhanagar Beach.",
          "travelDuration": "Full day sightseeing approx 5 to 6 hours"
        }
      },
      {
        "day": 3,
        "title": "Excursion to Surrounding Landmarks of Andaman & Nicobar Islands",
        "location": "Andaman & Nicobar Islands",
        "overview": "Expand your exploration with a day trip to surrounding heritage spots, sacred lakes, and craft villages near Andaman & Nicobar Islands.",
        "schedule": {
          "morning": {
            "title": "Heritage Excursion & Scenic Drive",
            "description": "Scenic drive through countryside roads surrounding Andaman & Nicobar Islands. Visit secondary monuments and historic watchtowers."
          },
          "afternoon": {
            "title": "Artisan Workshop & Traditional Lunch",
            "description": "Interact with local master craftsmen demonstrating native handloom weaving or stone carving. Enjoy traditional lunch."
          },
          "evening": {
            "title": "Twilight Promenade & Dinner",
            "description": "Enjoy a relaxed walk around the local market square. Purchase authentic local sweets and dinner."
          }
        },
        "details": {
          "importantTimings": "Excursion Departure: 9:00 AM",
          "meals": "Organic Farm-to-Table Breakfast & Seafood / Veg Dinner.",
          "transport": "AC Private Vehicle",
          "walkingLevel": "Easy Paced",
          "stay": "Heritage Palace Resort overlooking Radhanagar Beach",
          "weather": "Warm tropical sunshine with ocean breeze 27°C",
          "dressCode": "Comfortable clothing",
          "packingSuggestions": "Breathable linen wear, sunglasses, small currency notes for local shops.",
          "accessibility": "Accessible vehicles",
          "visitorNote": "Authentic souvenirs certified by local artisans.",
          "travelDuration": "Approx 4 hours excursion"
        }
      },
      {
        "day": 4,
        "title": "Souvenir Shopping & Onward Departure from Andaman & Nicobar Islands",
        "location": "Andaman & Nicobar Islands",
        "overview": "Conclude your trip to Radhanagar Beach with morning shopping for local delicacies and souvenirs, followed by departure transfer.",
        "schedule": {
          "morning": {
            "title": "Handicrafts & Sweet Market Visit",
            "description": "Visit trusted local bazaar stalls to buy regional spices, handmade crafts, and traditional sweets of Andaman & Nicobar Islands."
          },
          "afternoon": {
            "title": "Hotel Checkout & Farewell Lunch",
            "description": "Return to hotel for packing and checkout. Enjoy a farewell lunch before your transfer."
          },
          "evening": {
            "title": "Outbound Departure Transfer",
            "description": "Chauffeur drop to Andaman & Nicobar Islands Airport or Railway Station for your onward journey home."
          }
        },
        "details": {
          "importantTimings": "Checkout: 12:00 PM | Transfer: As per flight/train",
          "meals": "Breakfast & Farewell Lunch included.",
          "transport": "AC Private Transfer Vehicle",
          "walkingLevel": "Easy Paced",
          "stay": "N/A (Day of departure)",
          "weather": "Warm tropical sunshine with ocean breeze 27°C",
          "dressCode": "Comfortable travel wear",
          "packingSuggestions": "Check-in luggage packed, photo ID ready.",
          "accessibility": "Accessible vehicles",
          "visitorNote": "Arrive at Andaman & Nicobar Islands station/airport 2 hours prior to departure.",
          "travelDuration": "Approx 1 hour transfer"
        }
      }
    ],
    "durationDays": 4,
    "durationLabel": "4 Days / 3 Nights",
    "travellerTypes": [
      "Couples",
      "Seniors"
    ],
    "accessibilityStatus": "Wheelchair Accessible",
    "childFriendly": true,
    "packageBenefits": [
      "Scenic Accommodation",
      "Breakfast Included"
    ],
    "highlights": [
      "Relaxing stay and leisure exploration in Radhanagar Beach",
      "Scenic beauty and local dining experiences",
      "Private luxury transfers for ultimate comfort"
    ],
    "tips": [
      "Carry sun protection (glasses/hat) for outdoor excursions.",
      "Keep local currency handy for local markets.",
      "Follow guidelines at heritage locations."
    ],
    "itinerarySummary": [
      "Day 1: Escorted Arrival in Andaman & Nicobar Islands & Radhanagar Beach Gateway",
      "Day 2: Panoramic Discovery of Radhanagar Beach",
      "Day 3: Excursion to Surrounding Landmarks of Andaman & Nicobar Islands",
      "Day 4: Souvenir Shopping & Onward Departure from Andaman & Nicobar Islands"
    ],
    "cancellationSummary": "Get a 100% full refund on cancellations made up to 15 days before the departure. Rescheduling options are fully flexible."
  },
  {
    "id": "family-rohtang-pass",
    "title": "Rohtang Pass",
    "destinationName": "Rohtang Pass",
    "destinations": "Rohtang Pass (Manali, Himachal Pradesh)",
    "location": "Manali, Himachal Pradesh",
    "route": [
      "Manali",
      "Rohtang Pass"
    ],
    "mainCategory": "Family",
    "categoryLabel": "Family Tour",
    "category": "Family",
    "region": "North India",
    "image": "/images/tourist-places/family/Rohtang-Pass.jpg",
    "altText": "Rohtang Pass family tour destination in Manali, Himachal Pradesh",
    "duration": "4 Days / 3 Nights",
    "bestSeason": "March–June",
    "pace": "Easy",
    "travellerType": "Family Friendly",
    "description": "A thoughtfully planned family tour offering comfort, guidance, and a memorable experience.",
    "price": 20000,
    "rating": null,
    "reviewCount": null,
    "seatsLeft": null,
    "recentBookings": null,
    "verified": null,
    "tags": [
      "Family Tour",
      "Family Friendly"
    ],
    "seniorFriendly": true,
    "wheelchairAccess": true,
    "vegMeals": false,
    "inclusions": {
      "hotel": true,
      "meals": true,
      "transit": true,
      "guide": false,
      "entryPasses": false,
      "medicalSupport": false,
      "localExperience": false
    },
    "itinerary": [
      {
        "day": 1,
        "title": "Arrival in Manali: Riverside Aarti & Evening Tea",
        "location": "Manali",
        "overview": "Arrive in vibrant Manali. Escorted transfer to Boutique Lakefront Haveli in Manali. Spend your evening relaxing and sampling authentic local dishes.",
        "schedule": {
          "morning": {
            "title": "Arrival & Escorted Transfer in Manali",
            "description": "Meet our local travel escort at Manali transit hub. Receive a traditional welcome and transfer to Boutique Lakefront Haveli in Manali."
          },
          "afternoon": {
            "title": "Unpack & Courtyard Leisure at Manali",
            "description": "Check into your sanitized room, unpack your luggage, and enjoy quiet leisure time exploring hotel gardens and facilities."
          },
          "evening": {
            "title": "Riverside Aarti & Evening Tea at Rohtang Pass",
            "description": "Stroll through the bustling neighborhood of Rohtang Pass. Watch the sunset and savor a multi-course dinner."
          }
        },
        "details": {
          "importantTimings": "Guided Walk: 9:00 AM | Sunset Point Departure: 5:15 PM",
          "meals": "Welcome Drink & Lavish Regional Buffet Dinner.",
          "transport": "AC Private Chauffeur Vehicle",
          "walkingLevel": "Easy Paced (Paved walkways)",
          "stay": "Boutique Lakefront Haveli in Manali",
          "weather": "Crisp mountain climate, clear blue skies 19°C",
          "dressCode": "Casual travel clothing & sunhat",
          "packingSuggestions": "Comfortable walking socks, power bank, shoulder shawl, daypack.",
          "accessibility": "Wheelchair ramps & low step entry vehicle",
          "visitorNote": "Escort coordinator will brief you on timing for Rohtang Pass visit.",
          "travelDuration": "Approx 1 to 2 hours transfer"
        }
      },
      {
        "day": 2,
        "title": "Uncovering the Secrets of Rohtang Pass",
        "location": "Manali",
        "overview": "A deep dive into Rohtang Pass. Tour inner sanctums, historical galleries, and architectural viewpoints accompanied by an expert guide.",
        "schedule": {
          "morning": {
            "title": "Guided Tour of Rohtang Pass",
            "description": "Early morning entry to Rohtang Pass. Walk through central courtyards, ancient corridors, and historic halls."
          },
          "afternoon": {
            "title": "Excursion to Surrounding Haveli & Gardens near Manali",
            "description": "Taste authentic local regional cuisine. Visit local artisan markets specializing in handcrafts native to Himachal Pradesh."
          },
          "evening": {
            "title": "Sunset Viewpoint & Cultural Evening",
            "description": "Head to the highest scenic viewpoint overlooking Rohtang Pass. Capture sunset photographs followed by evening entertainment."
          }
        },
        "details": {
          "importantTimings": "Guided Walk: 9:00 AM | Sunset Point Departure: 5:15 PM",
          "meals": "Complimentary Buffet Breakfast & Traditional Cuisine Lunch.",
          "transport": "AC Private Sedan / SUV",
          "walkingLevel": "Moderate (Historical walkways & corridors)",
          "stay": "Boutique Lakefront Haveli in Manali",
          "weather": "Crisp mountain climate, clear blue skies 19°C",
          "dressCode": "Comfortable daywear",
          "packingSuggestions": "Breathable linen wear, sunglasses, small currency notes for local shops.",
          "accessibility": "Assistive ramps available at main portals",
          "visitorNote": "Follow local heritage guidelines inside Rohtang Pass.",
          "travelDuration": "Full day sightseeing approx 5 to 6 hours"
        }
      },
      {
        "day": 3,
        "title": "Excursion to Surrounding Landmarks of Manali",
        "location": "Himachal Pradesh",
        "overview": "Expand your exploration with a day trip to surrounding heritage spots, sacred lakes, and craft villages near Manali.",
        "schedule": {
          "morning": {
            "title": "Heritage Excursion & Scenic Drive",
            "description": "Scenic drive through countryside roads surrounding Manali. Visit secondary monuments and historic watchtowers."
          },
          "afternoon": {
            "title": "Artisan Workshop & Traditional Lunch",
            "description": "Interact with local master craftsmen demonstrating native handloom weaving or stone carving. Enjoy traditional lunch."
          },
          "evening": {
            "title": "Twilight Promenade & Dinner",
            "description": "Enjoy a relaxed walk around the local market square. Purchase authentic local sweets and dinner."
          }
        },
        "details": {
          "importantTimings": "Excursion Departure: 9:00 AM",
          "meals": "Organic Farm-to-Table Breakfast & Seafood / Veg Dinner.",
          "transport": "AC Private Vehicle",
          "walkingLevel": "Easy Paced",
          "stay": "Boutique Lakefront Haveli in Manali",
          "weather": "Crisp mountain climate, clear blue skies 19°C",
          "dressCode": "Comfortable clothing",
          "packingSuggestions": "Sunhat, sunglasses, comfortable walking shoes, light jacket, camera.",
          "accessibility": "Accessible vehicles",
          "visitorNote": "Authentic souvenirs certified by local artisans.",
          "travelDuration": "Approx 4 hours excursion"
        }
      },
      {
        "day": 4,
        "title": "Souvenir Shopping & Onward Departure from Manali",
        "location": "Manali",
        "overview": "Conclude your trip to Rohtang Pass with morning shopping for local delicacies and souvenirs, followed by departure transfer.",
        "schedule": {
          "morning": {
            "title": "Handicrafts & Sweet Market Visit",
            "description": "Visit trusted local bazaar stalls to buy regional spices, handmade crafts, and traditional sweets of Manali."
          },
          "afternoon": {
            "title": "Hotel Checkout & Farewell Lunch",
            "description": "Return to hotel for packing and checkout. Enjoy a farewell lunch before your transfer."
          },
          "evening": {
            "title": "Outbound Departure Transfer",
            "description": "Chauffeur drop to Manali Airport or Railway Station for your onward journey home."
          }
        },
        "details": {
          "importantTimings": "Checkout: 12:00 PM | Transfer: As per flight/train",
          "meals": "Breakfast & Farewell Lunch included.",
          "transport": "AC Private Transfer Vehicle",
          "walkingLevel": "Easy Paced",
          "stay": "N/A (Day of departure)",
          "weather": "Crisp mountain climate, clear blue skies 19°C",
          "dressCode": "Comfortable travel wear",
          "packingSuggestions": "Check-in luggage packed, photo ID ready.",
          "accessibility": "Accessible vehicles",
          "visitorNote": "Arrive at Manali station/airport 2 hours prior to departure.",
          "travelDuration": "Approx 1 hour transfer"
        }
      }
    ],
    "durationDays": 4,
    "durationLabel": "4 Days / 3 Nights",
    "travellerTypes": [
      "Families",
      "Couples"
    ],
    "accessibilityStatus": "Wheelchair Accessible",
    "childFriendly": true,
    "packageBenefits": [
      "Family Accommodation",
      "Local Sightseeing"
    ],
    "highlights": [
      "Guided heritage sightseeing of Rohtang Pass landmarks",
      "Immersive cultural show and local market visits",
      "Delight in authentic regional delicacies"
    ],
    "tips": [
      "Carry sun protection (glasses/hat) for outdoor excursions.",
      "Keep local currency handy for local markets.",
      "Follow guidelines at heritage locations."
    ],
    "itinerarySummary": [
      "Day 1: Arrival in Manali: Riverside Aarti & Evening Tea",
      "Day 2: Uncovering the Secrets of Rohtang Pass",
      "Day 3: Excursion to Surrounding Landmarks of Manali",
      "Day 4: Souvenir Shopping & Onward Departure from Manali"
    ],
    "cancellationSummary": "Get a 100% full refund on cancellations made up to 15 days before the departure. Rescheduling options are fully flexible."
  },
  {
    "id": "family-sentosa-island",
    "title": "Sentosa Island",
    "destinationName": "Sentosa Island",
    "destinations": "Sentosa Island (Singapore)",
    "location": "Singapore",
    "route": [
      "Singapore",
      "Sentosa Island"
    ],
    "mainCategory": "Family",
    "categoryLabel": "Family Tour",
    "category": "Family",
    "region": "International",
    "image": "/images/tourist-places/family/Sentosa Island.jpg",
    "altText": "Sentosa Island family tour destination in Singapore",
    "duration": "4 Days / 3 Nights",
    "bestSeason": "Year-Round",
    "pace": "Easy",
    "travellerType": "Family Friendly",
    "description": "A thoughtfully planned family tour offering comfort, guidance, and a memorable experience.",
    "price": 21500,
    "rating": null,
    "reviewCount": null,
    "seatsLeft": null,
    "recentBookings": null,
    "verified": null,
    "tags": [
      "Family Tour",
      "Family Friendly"
    ],
    "seniorFriendly": true,
    "wheelchairAccess": true,
    "vegMeals": false,
    "inclusions": {
      "hotel": true,
      "meals": true,
      "transit": true,
      "guide": false,
      "entryPasses": false,
      "medicalSupport": false,
      "localExperience": false
    },
    "itinerary": [
      {
        "day": 1,
        "title": "Scenic Drive to Singapore & Sentosa Island Gateway",
        "location": "Singapore",
        "overview": "Arrive in vibrant Singapore. Escorted transfer to Royal Heritage Villa near Sentosa Island. Spend your evening relaxing and sampling authentic local dishes.",
        "schedule": {
          "morning": {
            "title": "Arrival & Escorted Transfer in Singapore",
            "description": "Meet our local travel escort at Singapore transit hub. Receive a traditional welcome and transfer to Royal Heritage Villa near Sentosa Island."
          },
          "afternoon": {
            "title": "Unpack & Courtyard Leisure at Singapore",
            "description": "Check into your sanitized room, unpack your luggage, and enjoy quiet leisure time exploring hotel gardens and facilities."
          },
          "evening": {
            "title": "Skyline Sunset & Regional Delicacies at Sentosa Island",
            "description": "Stroll through the bustling neighborhood of Sentosa Island. Watch the sunset and savor a multi-course dinner."
          }
        },
        "details": {
          "importantTimings": "Boat Departure: 6:00 AM | Heritage Show: 7:00 PM",
          "meals": "Welcome Drink & Lavish Regional Buffet Dinner.",
          "transport": "AC Private Chauffeur Vehicle",
          "walkingLevel": "Easy Paced (Paved walkways)",
          "stay": "Royal Heritage Villa near Sentosa Island",
          "weather": "Refreshing river mist with mild sun 23°C",
          "dressCode": "Casual travel clothing & sunhat",
          "packingSuggestions": "Breathable linen wear, sunglasses, small currency notes for local shops.",
          "accessibility": "Wheelchair ramps & low step entry vehicle",
          "visitorNote": "Escort coordinator will brief you on timing for Sentosa Island visit.",
          "travelDuration": "Approx 1 to 2 hours transfer"
        }
      },
      {
        "day": 2,
        "title": "Spiritual Morning Prayers at Sentosa Island",
        "location": "Singapore",
        "overview": "A deep dive into Sentosa Island. Tour inner sanctums, historical galleries, and architectural viewpoints accompanied by an expert guide.",
        "schedule": {
          "morning": {
            "title": "Guided Tour of Sentosa Island",
            "description": "Early morning entry to Sentosa Island. Walk through central courtyards, ancient corridors, and historic halls."
          },
          "afternoon": {
            "title": "Museum Treasures & Heritage Galleries near Singapore",
            "description": "Taste authentic local regional cuisine. Visit local artisan markets specializing in handcrafts native to Singapore."
          },
          "evening": {
            "title": "Sunset Viewpoint & Cultural Evening",
            "description": "Head to the highest scenic viewpoint overlooking Sentosa Island. Capture sunset photographs followed by evening entertainment."
          }
        },
        "details": {
          "importantTimings": "Boat Departure: 6:00 AM | Heritage Show: 7:00 PM",
          "meals": "Complimentary Buffet Breakfast & Traditional Cuisine Lunch.",
          "transport": "AC Private Sedan / SUV",
          "walkingLevel": "Moderate (Historical walkways & corridors)",
          "stay": "Royal Heritage Villa near Sentosa Island",
          "weather": "Refreshing river mist with mild sun 23°C",
          "dressCode": "Comfortable daywear",
          "packingSuggestions": "Sunhat, sunglasses, comfortable walking shoes, light jacket, camera.",
          "accessibility": "Assistive ramps available at main portals",
          "visitorNote": "Follow local heritage guidelines inside Sentosa Island.",
          "travelDuration": "Full day sightseeing approx 5 to 6 hours"
        }
      },
      {
        "day": 3,
        "title": "Excursion to Surrounding Landmarks of Singapore",
        "location": "Singapore",
        "overview": "Expand your exploration with a day trip to surrounding heritage spots, sacred lakes, and craft villages near Singapore.",
        "schedule": {
          "morning": {
            "title": "Heritage Excursion & Scenic Drive",
            "description": "Scenic drive through countryside roads surrounding Singapore. Visit secondary monuments and historic watchtowers."
          },
          "afternoon": {
            "title": "Artisan Workshop & Traditional Lunch",
            "description": "Interact with local master craftsmen demonstrating native handloom weaving or stone carving. Enjoy traditional lunch."
          },
          "evening": {
            "title": "Twilight Promenade & Dinner",
            "description": "Enjoy a relaxed walk around the local market square. Purchase authentic local sweets and dinner."
          }
        },
        "details": {
          "importantTimings": "Excursion Departure: 9:00 AM",
          "meals": "Organic Farm-to-Table Breakfast & Seafood / Veg Dinner.",
          "transport": "AC Private Vehicle",
          "walkingLevel": "Easy Paced",
          "stay": "Royal Heritage Villa near Sentosa Island",
          "weather": "Refreshing river mist with mild sun 23°C",
          "dressCode": "Comfortable clothing",
          "packingSuggestions": "Traditional headscarf, slip-on shoes, reusable water bottle, dry bag.",
          "accessibility": "Accessible vehicles",
          "visitorNote": "Authentic souvenirs certified by local artisans.",
          "travelDuration": "Approx 4 hours excursion"
        }
      },
      {
        "day": 4,
        "title": "Souvenir Shopping & Onward Departure from Singapore",
        "location": "Singapore",
        "overview": "Conclude your trip to Sentosa Island with morning shopping for local delicacies and souvenirs, followed by departure transfer.",
        "schedule": {
          "morning": {
            "title": "Handicrafts & Sweet Market Visit",
            "description": "Visit trusted local bazaar stalls to buy regional spices, handmade crafts, and traditional sweets of Singapore."
          },
          "afternoon": {
            "title": "Hotel Checkout & Farewell Lunch",
            "description": "Return to hotel for packing and checkout. Enjoy a farewell lunch before your transfer."
          },
          "evening": {
            "title": "Outbound Departure Transfer",
            "description": "Chauffeur drop to Singapore Airport or Railway Station for your onward journey home."
          }
        },
        "details": {
          "importantTimings": "Checkout: 12:00 PM | Transfer: As per flight/train",
          "meals": "Breakfast & Farewell Lunch included.",
          "transport": "AC Private Transfer Vehicle",
          "walkingLevel": "Easy Paced",
          "stay": "N/A (Day of departure)",
          "weather": "Refreshing river mist with mild sun 23°C",
          "dressCode": "Comfortable travel wear",
          "packingSuggestions": "Check-in luggage packed, photo ID ready.",
          "accessibility": "Accessible vehicles",
          "visitorNote": "Arrive at Singapore station/airport 2 hours prior to departure.",
          "travelDuration": "Approx 1 hour transfer"
        }
      }
    ],
    "durationDays": 4,
    "durationLabel": "4 Days / 3 Nights",
    "travellerTypes": [
      "Families",
      "Couples"
    ],
    "accessibilityStatus": "Wheelchair Accessible",
    "childFriendly": true,
    "packageBenefits": [
      "Family Accommodation",
      "Local Sightseeing"
    ],
    "highlights": [
      "Guided heritage sightseeing of Sentosa Island landmarks",
      "Immersive cultural show and local market visits",
      "Delight in authentic regional delicacies"
    ],
    "tips": [
      "Carry sun protection (glasses/hat) for outdoor excursions.",
      "Keep local currency handy for local markets.",
      "Follow guidelines at heritage locations."
    ],
    "itinerarySummary": [
      "Day 1: Scenic Drive to Singapore & Sentosa Island Gateway",
      "Day 2: Spiritual Morning Prayers at Sentosa Island",
      "Day 3: Excursion to Surrounding Landmarks of Singapore",
      "Day 4: Souvenir Shopping & Onward Departure from Singapore"
    ],
    "cancellationSummary": "Get a 100% full refund on cancellations made up to 15 days before the departure. Rescheduling options are fully flexible."
  },
  {
    "id": "family-swiss-alps-jungfraujoch",
    "title": "Swiss Alps",
    "destinationName": "Swiss Alps",
    "destinations": "Swiss Alps (Bernese Oberland, Switzerland)",
    "location": "Bernese Oberland, Switzerland",
    "route": [
      "Bernese Oberland",
      "Swiss Alps"
    ],
    "mainCategory": "Family",
    "categoryLabel": "Family Tour",
    "category": "Family",
    "region": "International",
    "image": "/images/tourist-places/family/Swiss Alps (Jungfraujoch).webp",
    "altText": "Swiss Alps family tour destination in Bernese Oberland, Switzerland",
    "duration": "4 Days / 3 Nights",
    "bestSeason": "October–March",
    "pace": "Easy",
    "travellerType": "Family Friendly",
    "description": "A thoughtfully planned family tour offering comfort, guidance, and a memorable experience.",
    "price": 23000,
    "rating": null,
    "reviewCount": null,
    "seatsLeft": null,
    "recentBookings": null,
    "verified": null,
    "tags": [
      "Family Tour",
      "Family Friendly"
    ],
    "seniorFriendly": true,
    "wheelchairAccess": true,
    "vegMeals": false,
    "inclusions": {
      "hotel": true,
      "meals": true,
      "transit": true,
      "guide": false,
      "entryPasses": false,
      "medicalSupport": false,
      "localExperience": false
    },
    "itinerary": [
      {
        "day": 1,
        "title": "Arrival in Bernese Oberland: Candlelight Dinner & Courtyard Music",
        "location": "Bernese Oberland",
        "overview": "Arrive in vibrant Bernese Oberland. Escorted transfer to Luxury Eco Lodge in Bernese Oberland. Spend your evening relaxing and sampling authentic local dishes.",
        "schedule": {
          "morning": {
            "title": "Arrival & Escorted Transfer in Bernese Oberland",
            "description": "Meet our local travel escort at Bernese Oberland transit hub. Receive a traditional welcome and transfer to Luxury Eco Lodge in Bernese Oberland."
          },
          "afternoon": {
            "title": "Unpack & Courtyard Leisure at Bernese Oberland",
            "description": "Check into your sanitized room, unpack your luggage, and enjoy quiet leisure time exploring hotel gardens and facilities."
          },
          "evening": {
            "title": "Candlelight Dinner & Courtyard Music at Swiss Alps",
            "description": "Stroll through the bustling neighborhood of Swiss Alps. Watch the sunset and savor a multi-course dinner."
          }
        },
        "details": {
          "importantTimings": "Gate Entry: 8:00 AM | Evening Light Show: 6:30 PM",
          "meals": "Welcome Drink & Lavish Regional Buffet Dinner.",
          "transport": "AC Private Chauffeur Vehicle",
          "walkingLevel": "Easy Paced (Paved walkways)",
          "stay": "Luxury Eco Lodge in Bernese Oberland",
          "weather": "Pleasant breeze with sunny afternoon 24°C",
          "dressCode": "Casual travel clothing & sunhat",
          "packingSuggestions": "Sunhat, sunglasses, comfortable walking shoes, light jacket, camera.",
          "accessibility": "Wheelchair ramps & low step entry vehicle",
          "visitorNote": "Escort coordinator will brief you on timing for Swiss Alps visit.",
          "travelDuration": "Approx 1 to 2 hours transfer"
        }
      },
      {
        "day": 2,
        "title": "Architectural Tour of Swiss Alps",
        "location": "Bernese Oberland",
        "overview": "A deep dive into Swiss Alps. Tour inner sanctums, historical galleries, and architectural viewpoints accompanied by an expert guide.",
        "schedule": {
          "morning": {
            "title": "Guided Tour of Swiss Alps",
            "description": "Early morning entry to Swiss Alps. Walk through central courtyards, ancient corridors, and historic halls."
          },
          "afternoon": {
            "title": "Boat Ride & Riverfront Exploration near Bernese Oberland",
            "description": "Taste authentic local regional cuisine. Visit local artisan markets specializing in handcrafts native to Switzerland."
          },
          "evening": {
            "title": "Sunset Viewpoint & Cultural Evening",
            "description": "Head to the highest scenic viewpoint overlooking Swiss Alps. Capture sunset photographs followed by evening entertainment."
          }
        },
        "details": {
          "importantTimings": "Gate Entry: 8:00 AM | Evening Light Show: 6:30 PM",
          "meals": "Complimentary Buffet Breakfast & Traditional Cuisine Lunch.",
          "transport": "AC Private Sedan / SUV",
          "walkingLevel": "Moderate (Historical walkways & corridors)",
          "stay": "Luxury Eco Lodge in Bernese Oberland",
          "weather": "Pleasant breeze with sunny afternoon 24°C",
          "dressCode": "Comfortable daywear",
          "packingSuggestions": "Traditional headscarf, slip-on shoes, reusable water bottle, dry bag.",
          "accessibility": "Assistive ramps available at main portals",
          "visitorNote": "Follow local heritage guidelines inside Swiss Alps.",
          "travelDuration": "Full day sightseeing approx 5 to 6 hours"
        }
      },
      {
        "day": 3,
        "title": "Excursion to Surrounding Landmarks of Bernese Oberland",
        "location": "Switzerland",
        "overview": "Expand your exploration with a day trip to surrounding heritage spots, sacred lakes, and craft villages near Bernese Oberland.",
        "schedule": {
          "morning": {
            "title": "Heritage Excursion & Scenic Drive",
            "description": "Scenic drive through countryside roads surrounding Bernese Oberland. Visit secondary monuments and historic watchtowers."
          },
          "afternoon": {
            "title": "Artisan Workshop & Traditional Lunch",
            "description": "Interact with local master craftsmen demonstrating native handloom weaving or stone carving. Enjoy traditional lunch."
          },
          "evening": {
            "title": "Twilight Promenade & Dinner",
            "description": "Enjoy a relaxed walk around the local market square. Purchase authentic local sweets and dinner."
          }
        },
        "details": {
          "importantTimings": "Excursion Departure: 9:00 AM",
          "meals": "Organic Farm-to-Table Breakfast & Seafood / Veg Dinner.",
          "transport": "AC Private Vehicle",
          "walkingLevel": "Easy Paced",
          "stay": "Luxury Eco Lodge in Bernese Oberland",
          "weather": "Pleasant breeze with sunny afternoon 24°C",
          "dressCode": "Comfortable clothing",
          "packingSuggestions": "Light cotton wear, camera with telephoto lens, sunscreen lotion, photo ID.",
          "accessibility": "Accessible vehicles",
          "visitorNote": "Authentic souvenirs certified by local artisans.",
          "travelDuration": "Approx 4 hours excursion"
        }
      },
      {
        "day": 4,
        "title": "Souvenir Shopping & Onward Departure from Bernese Oberland",
        "location": "Bernese Oberland",
        "overview": "Conclude your trip to Swiss Alps with morning shopping for local delicacies and souvenirs, followed by departure transfer.",
        "schedule": {
          "morning": {
            "title": "Handicrafts & Sweet Market Visit",
            "description": "Visit trusted local bazaar stalls to buy regional spices, handmade crafts, and traditional sweets of Bernese Oberland."
          },
          "afternoon": {
            "title": "Hotel Checkout & Farewell Lunch",
            "description": "Return to hotel for packing and checkout. Enjoy a farewell lunch before your transfer."
          },
          "evening": {
            "title": "Outbound Departure Transfer",
            "description": "Chauffeur drop to Bernese Oberland Airport or Railway Station for your onward journey home."
          }
        },
        "details": {
          "importantTimings": "Checkout: 12:00 PM | Transfer: As per flight/train",
          "meals": "Breakfast & Farewell Lunch included.",
          "transport": "AC Private Transfer Vehicle",
          "walkingLevel": "Easy Paced",
          "stay": "N/A (Day of departure)",
          "weather": "Pleasant breeze with sunny afternoon 24°C",
          "dressCode": "Comfortable travel wear",
          "packingSuggestions": "Check-in luggage packed, photo ID ready.",
          "accessibility": "Accessible vehicles",
          "visitorNote": "Arrive at Bernese Oberland station/airport 2 hours prior to departure.",
          "travelDuration": "Approx 1 hour transfer"
        }
      }
    ],
    "durationDays": 4,
    "durationLabel": "4 Days / 3 Nights",
    "travellerTypes": [
      "Families",
      "Couples"
    ],
    "accessibilityStatus": "Wheelchair Accessible",
    "childFriendly": true,
    "packageBenefits": [
      "Family Accommodation",
      "Local Sightseeing"
    ],
    "highlights": [
      "Guided heritage sightseeing of Swiss Alps landmarks",
      "Immersive cultural show and local market visits",
      "Delight in authentic regional delicacies"
    ],
    "tips": [
      "Carry sun protection (glasses/hat) for outdoor excursions.",
      "Keep local currency handy for local markets.",
      "Follow guidelines at heritage locations."
    ],
    "itinerarySummary": [
      "Day 1: Arrival in Bernese Oberland: Candlelight Dinner & Courtyard Music",
      "Day 2: Architectural Tour of Swiss Alps",
      "Day 3: Excursion to Surrounding Landmarks of Bernese Oberland",
      "Day 4: Souvenir Shopping & Onward Departure from Bernese Oberland"
    ],
    "cancellationSummary": "Get a 100% full refund on cancellations made up to 15 days before the departure. Rescheduling options are fully flexible."
  },
  {
    "id": "family-taj-mahal",
    "title": "Taj Mahal",
    "destinationName": "Taj Mahal",
    "destinations": "Taj Mahal (Agra, Uttar Pradesh)",
    "location": "Agra, Uttar Pradesh",
    "route": [
      "Agra",
      "Taj Mahal"
    ],
    "mainCategory": "Family",
    "categoryLabel": "Family Tour",
    "category": "Family",
    "region": "North India",
    "image": "/images/tourist-places/family/Taj Mahal.webp",
    "altText": "Taj Mahal family tour destination in Agra, Uttar Pradesh",
    "duration": "4 Days / 3 Nights",
    "bestSeason": "October–March",
    "pace": "Easy",
    "travellerType": "Family Friendly",
    "description": "A thoughtfully planned family tour offering comfort, guidance, and a memorable experience.",
    "price": 24500,
    "rating": null,
    "reviewCount": null,
    "seatsLeft": null,
    "recentBookings": null,
    "verified": null,
    "tags": [
      "Family Tour",
      "Family Friendly"
    ],
    "seniorFriendly": true,
    "wheelchairAccess": true,
    "vegMeals": false,
    "inclusions": {
      "hotel": true,
      "meals": true,
      "transit": true,
      "guide": false,
      "entryPasses": false,
      "medicalSupport": false,
      "localExperience": false
    },
    "itinerary": [
      {
        "day": 1,
        "title": "Arrival in Agra & Mehtab Bagh Sunset",
        "location": "Agra",
        "overview": "Arrive in Agra and witness the majestic Taj Mahal from Mehtab Bagh garden across Yamuna River.",
        "schedule": {
          "morning": {
            "title": "Arrival & Hotel Check-in",
            "description": "Arrive in Agra via Yamuna Expressway. Check into your hotel with Taj view rooms."
          },
          "afternoon": {
            "title": "Agra Fort Red Sandstone Citadel",
            "description": "Tour the massive Agra Fort, Diwan-i-Khas, and Shah Jahan's prison tower looking out at the Taj."
          },
          "evening": {
            "title": "Mehtab Bagh Sunset View",
            "description": "Enjoy quiet sunset views of the Taj Mahal reflected across Yamuna River waters."
          }
        },
        "details": {
          "importantTimings": "Agra Fort: 8:00 AM - 5:00 PM | Mehtab Bagh Sunset: 5:30 PM",
          "meals": "Welcome Drink & Mughlai Buffet Dinner.",
          "transport": "AC Private Sedan.",
          "walkingLevel": "Easy Paced (Fort paved paths)",
          "stay": "Luxury Taj View Hotel (Room with Taj Mahal view, rooftop pool)",
          "weather": "Pleasant evening 23°C.",
          "dressCode": "Smart casuals, comfortable footwear.",
          "packingSuggestions": "Camera with telephoto lens, light shawl.",
          "accessibility": "Wheelchair ramps in Agra Fort and Mehtab Bagh.",
          "visitorNote": "Battery golf carts available at monument gates.",
          "travelDuration": "Approx 3.5 hours drive from Delhi or local arrival"
        }
      },
      {
        "day": 2,
        "title": "Sunrise Taj Mahal VIP Tour & Marble Craft",
        "location": "Agra",
        "overview": "Experience the mesmerizing sunrise over the white marble dome of the Taj Mahal.",
        "schedule": {
          "morning": {
            "title": "Sunrise at Taj Mahal",
            "description": "Early morning entry to Taj Mahal. Guided tour of the central mausoleum, mosque, and gardens."
          },
          "afternoon": {
            "title": "Mughlai Culinary Lunch & Marble Inlay",
            "description": "Relish Mughlai delicacies. Watch master inlay artisans crafting Pietra Dura marble souvenirs."
          },
          "evening": {
            "title": "Kalakriti Cultural Show",
            "description": "Watch 'Mohabbat-the-Taj' live dance drama telling the legendary love story of Shah Jahan and Mumtaz."
          }
        },
        "details": {
          "importantTimings": "Sunrise Taj Entry: 5:45 AM | Show: 6:30 PM",
          "meals": "Breakfast & Mughlai Special Lunch.",
          "transport": "Electric Eco-Bus + AC Sedan.",
          "walkingLevel": "Moderate (Marble grounds walk)",
          "stay": "Luxury Taj View Hotel",
          "weather": "Crisp cool morning 18°C, warming up to 26°C.",
          "dressCode": "Modest attire covering shoulders and knees for mausoleum entry.",
          "packingSuggestions": "Shoe covers provided at gate, camera (no tripods allowed).",
          "accessibility": "Wheelchairs permitted on main mausoleum podium via ramp.",
          "visitorNote": "Taj Mahal is closed on Fridays.",
          "travelDuration": "Approx 4 hours morning tour"
        }
      },
      {
        "day": 3,
        "title": "Fatehpur Sikri & Itmad-ud-Daulah",
        "location": "Fatehpur Sikri / Agra",
        "overview": "Day trip to Emperor Akbar's deserted red sandstone city Fatehpur Sikri and the exquisite 'Baby Taj'.",
        "schedule": {
          "morning": {
            "title": "Fatehpur Sikri & Buland Darwaza",
            "description": "Guided tour of Akbar's capital, Jama Masjid, Salim Chishti Dargah, and 54-meter Buland Darwaza."
          },
          "afternoon": {
            "title": "Itmad-ud-Daulah (Baby Taj)",
            "description": "Visit the delicate marble tomb of Itmad-ud-Daulah adorned with fine lattice screens."
          },
          "evening": {
            "title": "Agra Sadar Bazaar Market",
            "description": "Shop for famous Agra Petha sweets, leather goods, and brassware."
          }
        },
        "details": {
          "importantTimings": "Fatehpur Sikri: 9:00 AM - 1:00 PM",
          "meals": "Breakfast & Traditional North Indian Lunch.",
          "transport": "AC Private Sedan.",
          "walkingLevel": "Moderate (Historical courtyard walks)",
          "stay": "Luxury Taj View Hotel",
          "weather": "Sunny 25°C.",
          "dressCode": "Comfortable walking shoes, headscarf for Salim Chishti Dargah.",
          "packingSuggestions": "Head covering scarf, water bottle, cash for sweets.",
          "accessibility": "Assistive ramps at main court entrances.",
          "visitorNote": "Offer silk thread at Salim Chishti Dargah for blessings.",
          "travelDuration": "Fatehpur Sikri is 40 km from Agra (approx 1 hour drive)"
        }
      },
      {
        "day": 4,
        "title": "Petha Sweet Shopping & Departure",
        "location": "Agra",
        "overview": "Conclude your Agra heritage yatra with sweet shopping and outbound departure.",
        "schedule": {
          "morning": {
            "title": "Pancha Petha Tasting & Checkout",
            "description": "Visit famous Panchhi Petha store to taste saffron, paan, and chocolate Petha sweets."
          },
          "afternoon": {
            "title": "Departure Transfer",
            "description": "Chauffeur transfer to Agra Cantt Railway Station or Delhi Airport via Yamuna Expressway."
          },
          "evening": {
            "title": "Departure & Return Journey",
            "description": "Board your return flight or train for your onward journey home."
          }
        },
        "details": {
          "importantTimings": "Checkout: 11:30 AM | Transfer: As per flight/train",
          "meals": "Breakfast included.",
          "transport": "AC Private Sedan.",
          "walkingLevel": "Easy Paced",
          "stay": "N/A (Departure day)",
          "weather": "Sunny 26°C.",
          "dressCode": "Travel attire.",
          "packingSuggestions": "Sealed Petha boxes packed in luggage.",
          "accessibility": "Accessible vehicle.",
          "visitorNote": "Reach station 45 mins prior to train departure.",
          "travelDuration": "Approx 3 hours to Delhi Airport"
        }
      }
    ],
    "durationDays": 4,
    "durationLabel": "4 Days / 3 Nights",
    "travellerTypes": [
      "Families",
      "Couples"
    ],
    "accessibilityStatus": "Wheelchair Accessible",
    "childFriendly": true,
    "packageBenefits": [
      "Family Accommodation",
      "Local Sightseeing"
    ],
    "highlights": [
      "Guided heritage sightseeing of Taj Mahal landmarks",
      "Immersive cultural show and local market visits",
      "Delight in authentic regional delicacies"
    ],
    "tips": [
      "Carry sun protection (glasses/hat) for outdoor excursions.",
      "Keep local currency handy for local markets.",
      "Follow guidelines at heritage locations."
    ],
    "itinerarySummary": [
      "Day 1: Arrival in Agra & Mehtab Bagh Sunset",
      "Day 2: Sunrise Taj Mahal VIP Tour & Marble Craft",
      "Day 3: Fatehpur Sikri & Itmad-ud-Daulah",
      "Day 4: Petha Sweet Shopping & Departure"
    ],
    "cancellationSummary": "Get a 100% full refund on cancellations made up to 15 days before the departure. Rescheduling options are fully flexible."
  },
  {
    "id": "family-tokyo-disneyland",
    "title": "Tokyo Disneyland",
    "destinationName": "Tokyo Disneyland",
    "destinations": "Tokyo Disneyland (Tokyo, Japan)",
    "location": "Tokyo, Japan",
    "route": [
      "Tokyo",
      "Tokyo Disneyland"
    ],
    "mainCategory": "Family",
    "categoryLabel": "Family Tour",
    "category": "Family",
    "region": "International",
    "image": "/images/tourist-places/family/Tokyo Disneyland.jpg",
    "altText": "Tokyo Disneyland family tour destination in Tokyo, Japan",
    "duration": "4 Days / 3 Nights",
    "bestSeason": "Year-Round",
    "pace": "Easy",
    "travellerType": "Family Friendly",
    "description": "A thoughtfully planned family tour offering comfort, guidance, and a memorable experience.",
    "price": 26000,
    "rating": null,
    "reviewCount": null,
    "seatsLeft": null,
    "recentBookings": null,
    "verified": null,
    "tags": [
      "Family Tour",
      "Family Friendly"
    ],
    "seniorFriendly": true,
    "wheelchairAccess": true,
    "vegMeals": false,
    "inclusions": {
      "hotel": true,
      "meals": true,
      "transit": true,
      "guide": false,
      "entryPasses": false,
      "medicalSupport": false,
      "localExperience": false
    },
    "itinerary": [
      {
        "day": 1,
        "title": "Arrival in Tokyo: Panoramic Terrace Lounge Session",
        "location": "Tokyo",
        "overview": "Arrive in vibrant Tokyo. Escorted transfer to Vedic Pilgrim Ashram Stay in Tokyo. Spend your evening relaxing and sampling authentic local dishes.",
        "schedule": {
          "morning": {
            "title": "Arrival & Escorted Transfer in Tokyo",
            "description": "Meet our local travel escort at Tokyo transit hub. Receive a traditional welcome and transfer to Vedic Pilgrim Ashram Stay in Tokyo."
          },
          "afternoon": {
            "title": "Unpack & Courtyard Leisure at Tokyo",
            "description": "Check into your sanitized room, unpack your luggage, and enjoy quiet leisure time exploring hotel gardens and facilities."
          },
          "evening": {
            "title": "Panoramic Terrace Lounge Session at Tokyo Disneyland",
            "description": "Stroll through the bustling neighborhood of Tokyo Disneyland. Watch the sunset and savor a multi-course dinner."
          }
        },
        "details": {
          "importantTimings": "Sunrise Tour: 5:45 AM | Museum Hours: 9:30 AM - 5:00 PM",
          "meals": "Welcome Drink & Lavish Regional Buffet Dinner.",
          "transport": "AC Private Chauffeur Vehicle",
          "walkingLevel": "Easy Paced (Paved walkways)",
          "stay": "Vedic Pilgrim Ashram Stay in Tokyo",
          "weather": "Warm tropical sunshine with ocean breeze 27°C",
          "dressCode": "Casual travel clothing & sunhat",
          "packingSuggestions": "Light cotton wear, camera with telephoto lens, sunscreen lotion, photo ID.",
          "accessibility": "Wheelchair ramps & low step entry vehicle",
          "visitorNote": "Escort coordinator will brief you on timing for Tokyo Disneyland visit.",
          "travelDuration": "Approx 1 to 2 hours transfer"
        }
      },
      {
        "day": 2,
        "title": "Early Sunrise Visit to Tokyo Disneyland",
        "location": "Tokyo",
        "overview": "A deep dive into Tokyo Disneyland. Tour inner sanctums, historical galleries, and architectural viewpoints accompanied by an expert guide.",
        "schedule": {
          "morning": {
            "title": "Guided Tour of Tokyo Disneyland",
            "description": "Early morning entry to Tokyo Disneyland. Walk through central courtyards, ancient corridors, and historic halls."
          },
          "afternoon": {
            "title": "Scenic Valley Drive & Photo Stops near Tokyo",
            "description": "Taste authentic local regional cuisine. Visit local artisan markets specializing in handcrafts native to Japan."
          },
          "evening": {
            "title": "Sunset Viewpoint & Cultural Evening",
            "description": "Head to the highest scenic viewpoint overlooking Tokyo Disneyland. Capture sunset photographs followed by evening entertainment."
          }
        },
        "details": {
          "importantTimings": "Sunrise Tour: 5:45 AM | Museum Hours: 9:30 AM - 5:00 PM",
          "meals": "Complimentary Buffet Breakfast & Traditional Cuisine Lunch.",
          "transport": "AC Private Sedan / SUV",
          "walkingLevel": "Moderate (Historical walkways & corridors)",
          "stay": "Vedic Pilgrim Ashram Stay in Tokyo",
          "weather": "Warm tropical sunshine with ocean breeze 27°C",
          "dressCode": "Comfortable daywear",
          "packingSuggestions": "Comfortable walking socks, power bank, shoulder shawl, daypack.",
          "accessibility": "Assistive ramps available at main portals",
          "visitorNote": "Follow local heritage guidelines inside Tokyo Disneyland.",
          "travelDuration": "Full day sightseeing approx 5 to 6 hours"
        }
      },
      {
        "day": 3,
        "title": "Excursion to Surrounding Landmarks of Tokyo",
        "location": "Japan",
        "overview": "Expand your exploration with a day trip to surrounding heritage spots, sacred lakes, and craft villages near Tokyo.",
        "schedule": {
          "morning": {
            "title": "Heritage Excursion & Scenic Drive",
            "description": "Scenic drive through countryside roads surrounding Tokyo. Visit secondary monuments and historic watchtowers."
          },
          "afternoon": {
            "title": "Artisan Workshop & Traditional Lunch",
            "description": "Interact with local master craftsmen demonstrating native handloom weaving or stone carving. Enjoy traditional lunch."
          },
          "evening": {
            "title": "Twilight Promenade & Dinner",
            "description": "Enjoy a relaxed walk around the local market square. Purchase authentic local sweets and dinner."
          }
        },
        "details": {
          "importantTimings": "Excursion Departure: 9:00 AM",
          "meals": "Organic Farm-to-Table Breakfast & Seafood / Veg Dinner.",
          "transport": "AC Private Vehicle",
          "walkingLevel": "Easy Paced",
          "stay": "Vedic Pilgrim Ashram Stay in Tokyo",
          "weather": "Warm tropical sunshine with ocean breeze 27°C",
          "dressCode": "Comfortable clothing",
          "packingSuggestions": "Breathable linen wear, sunglasses, small currency notes for local shops.",
          "accessibility": "Accessible vehicles",
          "visitorNote": "Authentic souvenirs certified by local artisans.",
          "travelDuration": "Approx 4 hours excursion"
        }
      },
      {
        "day": 4,
        "title": "Souvenir Shopping & Onward Departure from Tokyo",
        "location": "Tokyo",
        "overview": "Conclude your trip to Tokyo Disneyland with morning shopping for local delicacies and souvenirs, followed by departure transfer.",
        "schedule": {
          "morning": {
            "title": "Handicrafts & Sweet Market Visit",
            "description": "Visit trusted local bazaar stalls to buy regional spices, handmade crafts, and traditional sweets of Tokyo."
          },
          "afternoon": {
            "title": "Hotel Checkout & Farewell Lunch",
            "description": "Return to hotel for packing and checkout. Enjoy a farewell lunch before your transfer."
          },
          "evening": {
            "title": "Outbound Departure Transfer",
            "description": "Chauffeur drop to Tokyo Airport or Railway Station for your onward journey home."
          }
        },
        "details": {
          "importantTimings": "Checkout: 12:00 PM | Transfer: As per flight/train",
          "meals": "Breakfast & Farewell Lunch included.",
          "transport": "AC Private Transfer Vehicle",
          "walkingLevel": "Easy Paced",
          "stay": "N/A (Day of departure)",
          "weather": "Warm tropical sunshine with ocean breeze 27°C",
          "dressCode": "Comfortable travel wear",
          "packingSuggestions": "Check-in luggage packed, photo ID ready.",
          "accessibility": "Accessible vehicles",
          "visitorNote": "Arrive at Tokyo station/airport 2 hours prior to departure.",
          "travelDuration": "Approx 1 hour transfer"
        }
      }
    ],
    "durationDays": 4,
    "durationLabel": "4 Days / 3 Nights",
    "travellerTypes": [
      "Families",
      "Couples"
    ],
    "accessibilityStatus": "Wheelchair Accessible",
    "childFriendly": true,
    "packageBenefits": [
      "Family Accommodation",
      "Local Sightseeing"
    ],
    "highlights": [
      "Guided heritage sightseeing of Tokyo Disneyland landmarks",
      "Immersive cultural show and local market visits",
      "Delight in authentic regional delicacies"
    ],
    "tips": [
      "Carry sun protection (glasses/hat) for outdoor excursions.",
      "Keep local currency handy for local markets.",
      "Follow guidelines at heritage locations."
    ],
    "itinerarySummary": [
      "Day 1: Arrival in Tokyo: Panoramic Terrace Lounge Session",
      "Day 2: Early Sunrise Visit to Tokyo Disneyland",
      "Day 3: Excursion to Surrounding Landmarks of Tokyo",
      "Day 4: Souvenir Shopping & Onward Departure from Tokyo"
    ],
    "cancellationSummary": "Get a 100% full refund on cancellations made up to 15 days before the departure. Rescheduling options are fully flexible."
  },
  {
    "id": "family-universal-studios-japan",
    "title": "Universal Studios Japan",
    "destinationName": "Universal Studios Japan",
    "destinations": "Universal Studios Japan (Osaka, Japan)",
    "location": "Osaka, Japan",
    "route": [
      "Osaka",
      "Universal Studios Japan"
    ],
    "mainCategory": "Family",
    "categoryLabel": "Family Tour",
    "category": "Family",
    "region": "International",
    "image": "/images/tourist-places/family/Universal Studios Japan.jpg",
    "altText": "Universal Studios Japan family tour destination in Osaka, Japan",
    "duration": "4 Days / 3 Nights",
    "bestSeason": "October–March",
    "pace": "Easy",
    "travellerType": "Family Friendly",
    "description": "A thoughtfully planned family tour offering comfort, guidance, and a memorable experience.",
    "price": 27500,
    "rating": null,
    "reviewCount": null,
    "seatsLeft": null,
    "recentBookings": null,
    "verified": null,
    "tags": [
      "Family Tour",
      "Family Friendly"
    ],
    "seniorFriendly": true,
    "wheelchairAccess": true,
    "vegMeals": false,
    "inclusions": {
      "hotel": true,
      "meals": true,
      "transit": true,
      "guide": false,
      "entryPasses": false,
      "medicalSupport": false,
      "localExperience": false
    },
    "itinerary": [
      {
        "day": 1,
        "title": "Spiritual Welcome to Osaka & Universal Studios Japan Gateway",
        "location": "Osaka",
        "overview": "Arrive in vibrant Osaka. Escorted transfer to Boutique Star Hotel in Osaka. Spend your evening relaxing and sampling authentic local dishes.",
        "schedule": {
          "morning": {
            "title": "Arrival & Escorted Transfer in Osaka",
            "description": "Meet our local travel escort at Osaka transit hub. Receive a traditional welcome and transfer to Boutique Star Hotel in Osaka."
          },
          "afternoon": {
            "title": "Unpack & Courtyard Leisure at Osaka",
            "description": "Check into your sanitized room, unpack your luggage, and enjoy quiet leisure time exploring hotel gardens and facilities."
          },
          "evening": {
            "title": "Lakeside Stroll & Local Cuisine at Universal Studios Japan",
            "description": "Stroll through the bustling neighborhood of Universal Studios Japan. Watch the sunset and savor a multi-course dinner."
          }
        },
        "details": {
          "importantTimings": "Guided Walk: 9:00 AM | Sunset Point Departure: 5:15 PM",
          "meals": "Welcome Drink & Lavish Regional Buffet Dinner.",
          "transport": "AC Private Chauffeur Vehicle",
          "walkingLevel": "Easy Paced (Paved walkways)",
          "stay": "Boutique Star Hotel in Osaka",
          "weather": "Crisp mountain climate, clear blue skies 19°C",
          "dressCode": "Casual travel clothing & sunhat",
          "packingSuggestions": "Comfortable walking socks, power bank, shoulder shawl, daypack.",
          "accessibility": "Wheelchair ramps & low step entry vehicle",
          "visitorNote": "Escort coordinator will brief you on timing for Universal Studios Japan visit.",
          "travelDuration": "Approx 1 to 2 hours transfer"
        }
      },
      {
        "day": 2,
        "title": "Exclusive Morning Tour of Universal Studios Japan",
        "location": "Osaka",
        "overview": "A deep dive into Universal Studios Japan. Tour inner sanctums, historical galleries, and architectural viewpoints accompanied by an expert guide.",
        "schedule": {
          "morning": {
            "title": "Guided Tour of Universal Studios Japan",
            "description": "Early morning entry to Universal Studios Japan. Walk through central courtyards, ancient corridors, and historic halls."
          },
          "afternoon": {
            "title": "Sacred Shrine Darshan & Temple Complex near Osaka",
            "description": "Taste authentic local regional cuisine. Visit local artisan markets specializing in handcrafts native to Japan."
          },
          "evening": {
            "title": "Sunset Viewpoint & Cultural Evening",
            "description": "Head to the highest scenic viewpoint overlooking Universal Studios Japan. Capture sunset photographs followed by evening entertainment."
          }
        },
        "details": {
          "importantTimings": "Guided Walk: 9:00 AM | Sunset Point Departure: 5:15 PM",
          "meals": "Complimentary Buffet Breakfast & Traditional Cuisine Lunch.",
          "transport": "AC Private Sedan / SUV",
          "walkingLevel": "Moderate (Historical walkways & corridors)",
          "stay": "Boutique Star Hotel in Osaka",
          "weather": "Crisp mountain climate, clear blue skies 19°C",
          "dressCode": "Comfortable daywear",
          "packingSuggestions": "Breathable linen wear, sunglasses, small currency notes for local shops.",
          "accessibility": "Assistive ramps available at main portals",
          "visitorNote": "Follow local heritage guidelines inside Universal Studios Japan.",
          "travelDuration": "Full day sightseeing approx 5 to 6 hours"
        }
      },
      {
        "day": 3,
        "title": "Excursion to Surrounding Landmarks of Osaka",
        "location": "Japan",
        "overview": "Expand your exploration with a day trip to surrounding heritage spots, sacred lakes, and craft villages near Osaka.",
        "schedule": {
          "morning": {
            "title": "Heritage Excursion & Scenic Drive",
            "description": "Scenic drive through countryside roads surrounding Osaka. Visit secondary monuments and historic watchtowers."
          },
          "afternoon": {
            "title": "Artisan Workshop & Traditional Lunch",
            "description": "Interact with local master craftsmen demonstrating native handloom weaving or stone carving. Enjoy traditional lunch."
          },
          "evening": {
            "title": "Twilight Promenade & Dinner",
            "description": "Enjoy a relaxed walk around the local market square. Purchase authentic local sweets and dinner."
          }
        },
        "details": {
          "importantTimings": "Excursion Departure: 9:00 AM",
          "meals": "Organic Farm-to-Table Breakfast & Seafood / Veg Dinner.",
          "transport": "AC Private Vehicle",
          "walkingLevel": "Easy Paced",
          "stay": "Boutique Star Hotel in Osaka",
          "weather": "Crisp mountain climate, clear blue skies 19°C",
          "dressCode": "Comfortable clothing",
          "packingSuggestions": "Sunhat, sunglasses, comfortable walking shoes, light jacket, camera.",
          "accessibility": "Accessible vehicles",
          "visitorNote": "Authentic souvenirs certified by local artisans.",
          "travelDuration": "Approx 4 hours excursion"
        }
      },
      {
        "day": 4,
        "title": "Souvenir Shopping & Onward Departure from Osaka",
        "location": "Osaka",
        "overview": "Conclude your trip to Universal Studios Japan with morning shopping for local delicacies and souvenirs, followed by departure transfer.",
        "schedule": {
          "morning": {
            "title": "Handicrafts & Sweet Market Visit",
            "description": "Visit trusted local bazaar stalls to buy regional spices, handmade crafts, and traditional sweets of Osaka."
          },
          "afternoon": {
            "title": "Hotel Checkout & Farewell Lunch",
            "description": "Return to hotel for packing and checkout. Enjoy a farewell lunch before your transfer."
          },
          "evening": {
            "title": "Outbound Departure Transfer",
            "description": "Chauffeur drop to Osaka Airport or Railway Station for your onward journey home."
          }
        },
        "details": {
          "importantTimings": "Checkout: 12:00 PM | Transfer: As per flight/train",
          "meals": "Breakfast & Farewell Lunch included.",
          "transport": "AC Private Transfer Vehicle",
          "walkingLevel": "Easy Paced",
          "stay": "N/A (Day of departure)",
          "weather": "Crisp mountain climate, clear blue skies 19°C",
          "dressCode": "Comfortable travel wear",
          "packingSuggestions": "Check-in luggage packed, photo ID ready.",
          "accessibility": "Accessible vehicles",
          "visitorNote": "Arrive at Osaka station/airport 2 hours prior to departure.",
          "travelDuration": "Approx 1 hour transfer"
        }
      }
    ],
    "durationDays": 4,
    "durationLabel": "4 Days / 3 Nights",
    "travellerTypes": [
      "Families",
      "Couples"
    ],
    "accessibilityStatus": "Wheelchair Accessible",
    "childFriendly": true,
    "packageBenefits": [
      "Family Accommodation",
      "Local Sightseeing"
    ],
    "highlights": [
      "Guided heritage sightseeing of Universal Studios Japan landmarks",
      "Immersive cultural show and local market visits",
      "Delight in authentic regional delicacies"
    ],
    "tips": [
      "Carry sun protection (glasses/hat) for outdoor excursions.",
      "Keep local currency handy for local markets.",
      "Follow guidelines at heritage locations."
    ],
    "itinerarySummary": [
      "Day 1: Spiritual Welcome to Osaka & Universal Studios Japan Gateway",
      "Day 2: Exclusive Morning Tour of Universal Studios Japan",
      "Day 3: Excursion to Surrounding Landmarks of Osaka",
      "Day 4: Souvenir Shopping & Onward Departure from Osaka"
    ],
    "cancellationSummary": "Get a 100% full refund on cancellations made up to 15 days before the departure. Rescheduling options are fully flexible."
  },
  {
    "id": "family-venice-grand-canal",
    "title": "Venice Grand Canal",
    "destinationName": "Venice Grand Canal",
    "destinations": "Venice Grand Canal (Venice, Italy)",
    "location": "Venice, Italy",
    "route": [
      "Venice",
      "Venice Grand Canal"
    ],
    "mainCategory": "Family",
    "categoryLabel": "Family Tour",
    "category": "Family",
    "region": "International",
    "image": "/images/tourist-places/family/Venice Grand Canal.jpg",
    "altText": "Venice Grand Canal family tour destination in Venice, Italy",
    "duration": "4 Days / 3 Nights",
    "bestSeason": "October–March",
    "pace": "Easy",
    "travellerType": "Family Friendly",
    "description": "A thoughtfully planned family tour offering comfort, guidance, and a memorable experience.",
    "price": 29000,
    "rating": null,
    "reviewCount": null,
    "seatsLeft": null,
    "recentBookings": null,
    "verified": null,
    "tags": [
      "Family Tour",
      "Family Friendly"
    ],
    "seniorFriendly": true,
    "wheelchairAccess": true,
    "vegMeals": false,
    "inclusions": {
      "hotel": true,
      "meals": true,
      "transit": true,
      "guide": false,
      "entryPasses": false,
      "medicalSupport": false,
      "localExperience": false
    },
    "itinerary": [
      {
        "day": 1,
        "title": "Arrival in Venice: Traditional Ceremony & Quiet Reflection",
        "location": "Venice",
        "overview": "Arrive in vibrant Venice. Escorted transfer to Hilltop Panorama Resort near Venice Grand Canal. Spend your evening relaxing and sampling authentic local dishes.",
        "schedule": {
          "morning": {
            "title": "Arrival & Escorted Transfer in Venice",
            "description": "Meet our local travel escort at Venice transit hub. Receive a traditional welcome and transfer to Hilltop Panorama Resort near Venice Grand Canal."
          },
          "afternoon": {
            "title": "Unpack & Courtyard Leisure at Venice",
            "description": "Check into your sanitized room, unpack your luggage, and enjoy quiet leisure time exploring hotel gardens and facilities."
          },
          "evening": {
            "title": "Traditional Ceremony & Quiet Reflection at Venice Grand Canal",
            "description": "Stroll through the bustling neighborhood of Venice Grand Canal. Watch the sunset and savor a multi-course dinner."
          }
        },
        "details": {
          "importantTimings": "Boat Departure: 6:00 AM | Heritage Show: 7:00 PM",
          "meals": "Welcome Drink & Lavish Regional Buffet Dinner.",
          "transport": "AC Private Chauffeur Vehicle",
          "walkingLevel": "Easy Paced (Paved walkways)",
          "stay": "Hilltop Panorama Resort near Venice Grand Canal",
          "weather": "Refreshing river mist with mild sun 23°C",
          "dressCode": "Casual travel clothing & sunhat",
          "packingSuggestions": "Breathable linen wear, sunglasses, small currency notes for local shops.",
          "accessibility": "Wheelchair ramps & low step entry vehicle",
          "visitorNote": "Escort coordinator will brief you on timing for Venice Grand Canal visit.",
          "travelDuration": "Approx 1 to 2 hours transfer"
        }
      },
      {
        "day": 2,
        "title": "VIP Access to Venice Grand Canal",
        "location": "Venice",
        "overview": "A deep dive into Venice Grand Canal. Tour inner sanctums, historical galleries, and architectural viewpoints accompanied by an expert guide.",
        "schedule": {
          "morning": {
            "title": "Guided Tour of Venice Grand Canal",
            "description": "Early morning entry to Venice Grand Canal. Walk through central courtyards, ancient corridors, and historic halls."
          },
          "afternoon": {
            "title": "Coastal Promenade & Beach Relax near Venice",
            "description": "Taste authentic local regional cuisine. Visit local artisan markets specializing in handcrafts native to Italy."
          },
          "evening": {
            "title": "Sunset Viewpoint & Cultural Evening",
            "description": "Head to the highest scenic viewpoint overlooking Venice Grand Canal. Capture sunset photographs followed by evening entertainment."
          }
        },
        "details": {
          "importantTimings": "Boat Departure: 6:00 AM | Heritage Show: 7:00 PM",
          "meals": "Complimentary Buffet Breakfast & Traditional Cuisine Lunch.",
          "transport": "AC Private Sedan / SUV",
          "walkingLevel": "Moderate (Historical walkways & corridors)",
          "stay": "Hilltop Panorama Resort near Venice Grand Canal",
          "weather": "Refreshing river mist with mild sun 23°C",
          "dressCode": "Comfortable daywear",
          "packingSuggestions": "Sunhat, sunglasses, comfortable walking shoes, light jacket, camera.",
          "accessibility": "Assistive ramps available at main portals",
          "visitorNote": "Follow local heritage guidelines inside Venice Grand Canal.",
          "travelDuration": "Full day sightseeing approx 5 to 6 hours"
        }
      },
      {
        "day": 3,
        "title": "Excursion to Surrounding Landmarks of Venice",
        "location": "Italy",
        "overview": "Expand your exploration with a day trip to surrounding heritage spots, sacred lakes, and craft villages near Venice.",
        "schedule": {
          "morning": {
            "title": "Heritage Excursion & Scenic Drive",
            "description": "Scenic drive through countryside roads surrounding Venice. Visit secondary monuments and historic watchtowers."
          },
          "afternoon": {
            "title": "Artisan Workshop & Traditional Lunch",
            "description": "Interact with local master craftsmen demonstrating native handloom weaving or stone carving. Enjoy traditional lunch."
          },
          "evening": {
            "title": "Twilight Promenade & Dinner",
            "description": "Enjoy a relaxed walk around the local market square. Purchase authentic local sweets and dinner."
          }
        },
        "details": {
          "importantTimings": "Excursion Departure: 9:00 AM",
          "meals": "Organic Farm-to-Table Breakfast & Seafood / Veg Dinner.",
          "transport": "AC Private Vehicle",
          "walkingLevel": "Easy Paced",
          "stay": "Hilltop Panorama Resort near Venice Grand Canal",
          "weather": "Refreshing river mist with mild sun 23°C",
          "dressCode": "Comfortable clothing",
          "packingSuggestions": "Traditional headscarf, slip-on shoes, reusable water bottle, dry bag.",
          "accessibility": "Accessible vehicles",
          "visitorNote": "Authentic souvenirs certified by local artisans.",
          "travelDuration": "Approx 4 hours excursion"
        }
      },
      {
        "day": 4,
        "title": "Souvenir Shopping & Onward Departure from Venice",
        "location": "Venice",
        "overview": "Conclude your trip to Venice Grand Canal with morning shopping for local delicacies and souvenirs, followed by departure transfer.",
        "schedule": {
          "morning": {
            "title": "Handicrafts & Sweet Market Visit",
            "description": "Visit trusted local bazaar stalls to buy regional spices, handmade crafts, and traditional sweets of Venice."
          },
          "afternoon": {
            "title": "Hotel Checkout & Farewell Lunch",
            "description": "Return to hotel for packing and checkout. Enjoy a farewell lunch before your transfer."
          },
          "evening": {
            "title": "Outbound Departure Transfer",
            "description": "Chauffeur drop to Venice Airport or Railway Station for your onward journey home."
          }
        },
        "details": {
          "importantTimings": "Checkout: 12:00 PM | Transfer: As per flight/train",
          "meals": "Breakfast & Farewell Lunch included.",
          "transport": "AC Private Transfer Vehicle",
          "walkingLevel": "Easy Paced",
          "stay": "N/A (Day of departure)",
          "weather": "Refreshing river mist with mild sun 23°C",
          "dressCode": "Comfortable travel wear",
          "packingSuggestions": "Check-in luggage packed, photo ID ready.",
          "accessibility": "Accessible vehicles",
          "visitorNote": "Arrive at Venice station/airport 2 hours prior to departure.",
          "travelDuration": "Approx 1 hour transfer"
        }
      }
    ],
    "durationDays": 4,
    "durationLabel": "4 Days / 3 Nights",
    "travellerTypes": [
      "Families",
      "Couples"
    ],
    "accessibilityStatus": "Wheelchair Accessible",
    "childFriendly": true,
    "packageBenefits": [
      "Family Accommodation",
      "Local Sightseeing"
    ],
    "highlights": [
      "Guided heritage sightseeing of Venice Grand Canal landmarks",
      "Immersive cultural show and local market visits",
      "Delight in authentic regional delicacies"
    ],
    "tips": [
      "Carry sun protection (glasses/hat) for outdoor excursions.",
      "Keep local currency handy for local markets.",
      "Follow guidelines at heritage locations."
    ],
    "itinerarySummary": [
      "Day 1: Arrival in Venice: Traditional Ceremony & Quiet Reflection",
      "Day 2: VIP Access to Venice Grand Canal",
      "Day 3: Excursion to Surrounding Landmarks of Venice",
      "Day 4: Souvenir Shopping & Onward Departure from Venice"
    ],
    "cancellationSummary": "Get a 100% full refund on cancellations made up to 15 days before the departure. Rescheduling options are fully flexible."
  },
  {
    "id": "hinduism-adam-s-peak-sri-pada-sri-lanka",
    "title": "Adam’s Peak (Sri Pada) Journey",
    "destinationName": "Adam’s Peak (Sri Pada)",
    "destinations": "Adam’s Peak (Sri Pada) (Ratnapura, Sri Lanka)",
    "location": "Ratnapura, Sri Lanka",
    "route": [
      "Ratnapura",
      "Adam’s Peak (Sri Pada)"
    ],
    "mainCategory": "Pilgrimage",
    "subCategory": "Hinduism",
    "categoryLabel": "Pilgrimage",
    "category": "Pilgrimage",
    "region": "International",
    "image": "/images/tourist-places/pilgrimage/Hinduism/Adam’s Peak (Sri Pada), Sri Lanka.jpg",
    "altText": "Adam’s Peak (Sri Pada) hindu pilgrimage destination in Ratnapura, Sri Lanka",
    "duration": "3 Days / 2 Nights",
    "bestSeason": "October–March",
    "pace": "Easy",
    "travellerType": "Senior Friendly",
    "description": "A thoughtfully planned hindu pilgrimage offering comfort, guidance, and a memorable experience.",
    "price": 21700,
    "rating": null,
    "reviewCount": null,
    "seatsLeft": null,
    "recentBookings": null,
    "verified": null,
    "tags": [
      "Pilgrimage",
      "Curated Journey"
    ],
    "seniorFriendly": true,
    "wheelchairAccess": true,
    "vegMeals": true,
    "inclusions": {
      "hotel": true,
      "meals": true,
      "transit": true,
      "guide": true,
      "entryPasses": true,
      "medicalSupport": false,
      "localExperience": false
    },
    "itinerary": [
      {
        "day": 1,
        "title": "Welcome & Check-in at Ratnapura & Adam’s Peak (Sri Pada) Gateway",
        "location": "Ratnapura",
        "overview": "Begin your sacred yatra as you arrive in Ratnapura. Check into your room at Heritage Palace Resort overlooking Adam’s Peak (Sri Pada) and receive a brief orientation before evening prayers.",
        "schedule": {
          "morning": {
            "title": "Arrival & Escorted Transfer in Ratnapura",
            "description": "Meet our local travel escort at Ratnapura transit hub. Receive a traditional welcome and transfer to Heritage Palace Resort overlooking Adam’s Peak (Sri Pada)."
          },
          "afternoon": {
            "title": "Unpack & Courtyard Leisure at Ratnapura",
            "description": "Check into your sanitized room, unpack your luggage, and enjoy quiet leisure time exploring hotel gardens and facilities."
          },
          "evening": {
            "title": "Sunset Walk & Local Market Flavors at Adam’s Peak (Sri Pada)",
            "description": "Attend solemn evening prayer assembly near Adam’s Peak (Sri Pada). Float earthen lamps and soak in peaceful chanting."
          }
        },
        "details": {
          "importantTimings": "Gate Entry: 8:00 AM | Evening Light Show: 6:30 PM",
          "meals": "100% Satvik Pure Veg Breakfast & Temple Prasadam Dinner.",
          "transport": "AC Private Chauffeur Vehicle",
          "walkingLevel": "Easy Paced (Flat temple paths, seating available)",
          "stay": "Heritage Palace Resort overlooking Adam’s Peak (Sri Pada)",
          "weather": "Pleasant breeze with sunny afternoon 24°C",
          "dressCode": "Modest traditional attire (shoulders & knees covered)",
          "packingSuggestions": "Sunhat, sunglasses, comfortable walking shoes, light jacket, camera.",
          "accessibility": "Wheelchair ramps & low step entry vehicle",
          "visitorNote": "Escort coordinator will brief you on timing for Adam’s Peak (Sri Pada) visit.",
          "travelDuration": "Approx 1 to 2 hours transfer"
        }
      },
      {
        "day": 2,
        "title": "Breakfast & Exploration of Adam’s Peak (Sri Pada)",
        "location": "Ratnapura",
        "overview": "A deep dive into Adam’s Peak (Sri Pada). Tour inner sanctums, historical galleries, and architectural viewpoints accompanied by an expert guide.",
        "schedule": {
          "morning": {
            "title": "Guided Tour of Adam’s Peak (Sri Pada)",
            "description": "Early morning entry to Adam’s Peak (Sri Pada). Walk through central courtyards, ancient corridors, and historic halls."
          },
          "afternoon": {
            "title": "Culinary Tasting & Local Artisan Crafts near Ratnapura",
            "description": "Taste authentic local regional cuisine. Visit local artisan markets specializing in handcrafts native to Sri Lanka."
          },
          "evening": {
            "title": "Sunset Viewpoint & Cultural Evening",
            "description": "Head to the highest scenic viewpoint overlooking Adam’s Peak (Sri Pada). Capture sunset photographs followed by evening entertainment."
          }
        },
        "details": {
          "importantTimings": "Gate Entry: 8:00 AM | Evening Light Show: 6:30 PM",
          "meals": "Welcome Tender Coconut & Traditional Satvik Thali.",
          "transport": "AC Private Sedan / SUV",
          "walkingLevel": "Moderate (Historical walkways & corridors)",
          "stay": "Heritage Palace Resort overlooking Adam’s Peak (Sri Pada)",
          "weather": "Pleasant breeze with sunny afternoon 24°C",
          "dressCode": "Traditional attire",
          "packingSuggestions": "Traditional headscarf, slip-on shoes, reusable water bottle, dry bag.",
          "accessibility": "Assistive ramps available at main portals",
          "visitorNote": "Follow local heritage guidelines inside Adam’s Peak (Sri Pada).",
          "travelDuration": "Full day sightseeing approx 5 to 6 hours"
        }
      },
      {
        "day": 3,
        "title": "Souvenir Shopping & Onward Departure from Ratnapura",
        "location": "Ratnapura",
        "overview": "Conclude your trip to Adam’s Peak (Sri Pada) with morning shopping for local delicacies and souvenirs, followed by departure transfer.",
        "schedule": {
          "morning": {
            "title": "Handicrafts & Sweet Market Visit",
            "description": "Visit trusted local bazaar stalls to buy regional spices, handmade crafts, and traditional sweets of Ratnapura."
          },
          "afternoon": {
            "title": "Hotel Checkout & Farewell Lunch",
            "description": "Return to hotel for packing and checkout. Enjoy a farewell lunch before your transfer."
          },
          "evening": {
            "title": "Outbound Departure Transfer",
            "description": "Chauffeur drop to Ratnapura Airport or Railway Station for your onward journey home."
          }
        },
        "details": {
          "importantTimings": "Checkout: 12:00 PM | Transfer: As per flight/train",
          "meals": "Breakfast & Farewell Lunch included.",
          "transport": "AC Private Transfer Vehicle",
          "walkingLevel": "Easy Paced",
          "stay": "N/A (Day of departure)",
          "weather": "Pleasant breeze with sunny afternoon 24°C",
          "dressCode": "Comfortable travel wear",
          "packingSuggestions": "Check-in luggage packed, photo ID ready.",
          "accessibility": "Accessible vehicles",
          "visitorNote": "Arrive at Ratnapura station/airport 2 hours prior to departure.",
          "travelDuration": "Approx 1 hour transfer"
        }
      }
    ],
    "durationDays": 3,
    "durationLabel": "3 Days / 2 Nights",
    "travellerTypes": [
      "Pilgrims",
      "Seniors"
    ],
    "accessibilityStatus": "Wheelchair Accessible",
    "childFriendly": true,
    "packageBenefits": [
      "Darshan Assistance",
      "Satvik Meal Option"
    ],
    "highlights": [
      "Spiritual darshan and guided temple tour in Adam’s Peak (Sri Pada)",
      "Experience peaceful aarti assemblies and sacred rituals",
      "Comfortable transfers to all holy sites"
    ],
    "tips": [
      "Carry valid government ID cards for verification.",
      "Traditional decency wear is recommended inside temple corridors.",
      "Avoid carrying electronics inside the inner sanctum."
    ],
    "itinerarySummary": [
      "Day 1: Welcome & Check-in at Ratnapura & Adam’s Peak (Sri Pada) Gateway",
      "Day 2: Breakfast & Exploration of Adam’s Peak (Sri Pada)",
      "Day 3: Souvenir Shopping & Onward Departure from Ratnapura"
    ],
    "cancellationSummary": "Get a 100% full refund on cancellations made up to 15 days before the departure. Rescheduling options are fully flexible."
  },
  {
    "id": "hinduism-badrinath-india",
    "title": "Badrinath Journey",
    "destinationName": "Badrinath",
    "destinations": "Badrinath (Chamoli, Uttarakhand, India)",
    "location": "Chamoli, Uttarakhand, India",
    "route": [
      "Chamoli",
      "Badrinath"
    ],
    "mainCategory": "Pilgrimage",
    "subCategory": "Hinduism",
    "categoryLabel": "Pilgrimage",
    "category": "Pilgrimage",
    "region": "Char Dham",
    "image": "/images/tourist-places/pilgrimage/Hinduism/Badrinath, India.jpg",
    "altText": "Badrinath hindu pilgrimage destination in Chamoli, Uttarakhand, India",
    "duration": "3 Days / 2 Nights",
    "bestSeason": "May–October",
    "pace": "Moderate",
    "travellerType": "Senior Friendly",
    "description": "A thoughtfully planned hindu pilgrimage offering comfort, guidance, and a memorable experience.",
    "price": 22900,
    "rating": null,
    "reviewCount": null,
    "seatsLeft": null,
    "recentBookings": null,
    "verified": null,
    "tags": [
      "Pilgrimage",
      "Curated Journey"
    ],
    "seniorFriendly": true,
    "wheelchairAccess": true,
    "vegMeals": true,
    "inclusions": {
      "hotel": true,
      "meals": true,
      "transit": true,
      "guide": true,
      "entryPasses": true,
      "medicalSupport": true,
      "localExperience": false
    },
    "itinerary": [
      {
        "day": 1,
        "title": "Arrival in Chamoli: Illuminated Viewpoint & Welcome Feast",
        "location": "Chamoli",
        "overview": "Begin your sacred yatra as you arrive in Chamoli. Check into your room at Boutique Lakefront Haveli in Chamoli and receive a brief orientation before evening prayers.",
        "schedule": {
          "morning": {
            "title": "Arrival & Escorted Transfer in Chamoli",
            "description": "Meet our local travel escort at Chamoli transit hub. Receive a traditional welcome and transfer to Boutique Lakefront Haveli in Chamoli."
          },
          "afternoon": {
            "title": "Unpack & Courtyard Leisure at Chamoli",
            "description": "Check into your sanitized room, unpack your luggage, and enjoy quiet leisure time exploring hotel gardens and facilities."
          },
          "evening": {
            "title": "Illuminated Viewpoint & Welcome Feast at Badrinath",
            "description": "Attend solemn evening prayer assembly near Badrinath. Float earthen lamps and soak in peaceful chanting."
          }
        },
        "details": {
          "importantTimings": "Sanctum VIP Slot: 6:30 AM | Bazaar Hours: 4:00 PM - 8:30 PM",
          "meals": "100% Satvik Pure Veg Breakfast & Temple Prasadam Dinner.",
          "transport": "AC Private Chauffeur Vehicle",
          "walkingLevel": "Easy Paced (Flat temple paths, seating available)",
          "stay": "Boutique Lakefront Haveli in Chamoli",
          "weather": "Cool crisp morning fog clearing to bright 22°C",
          "dressCode": "Modest traditional attire (shoulders & knees covered)",
          "packingSuggestions": "Traditional headscarf, slip-on shoes, reusable water bottle, dry bag.",
          "accessibility": "Wheelchair ramps & low step entry vehicle",
          "visitorNote": "Escort coordinator will brief you on timing for Badrinath visit.",
          "travelDuration": "Approx 1 to 2 hours transfer"
        }
      },
      {
        "day": 2,
        "title": "Panoramic Discovery of Badrinath",
        "location": "Chamoli",
        "overview": "A deep dive into Badrinath. Tour inner sanctums, historical galleries, and architectural viewpoints accompanied by an expert guide.",
        "schedule": {
          "morning": {
            "title": "Guided Tour of Badrinath",
            "description": "Early morning entry to Badrinath. Walk through central courtyards, ancient corridors, and historic halls."
          },
          "afternoon": {
            "title": "Excursion to Surrounding Haveli & Gardens near Chamoli",
            "description": "Taste authentic local regional cuisine. Visit local artisan markets specializing in handcrafts native to Uttarakhand, India."
          },
          "evening": {
            "title": "Sunset Viewpoint & Cultural Evening",
            "description": "Head to the highest scenic viewpoint overlooking Badrinath. Capture sunset photographs followed by evening entertainment."
          }
        },
        "details": {
          "importantTimings": "Sanctum VIP Slot: 6:30 AM | Bazaar Hours: 4:00 PM - 8:30 PM",
          "meals": "Welcome Tender Coconut & Traditional Satvik Thali.",
          "transport": "AC Private Sedan / SUV",
          "walkingLevel": "Moderate (Historical walkways & corridors)",
          "stay": "Boutique Lakefront Haveli in Chamoli",
          "weather": "Cool crisp morning fog clearing to bright 22°C",
          "dressCode": "Traditional attire",
          "packingSuggestions": "Light cotton wear, camera with telephoto lens, sunscreen lotion, photo ID.",
          "accessibility": "Assistive ramps available at main portals",
          "visitorNote": "Follow local heritage guidelines inside Badrinath.",
          "travelDuration": "Full day sightseeing approx 5 to 6 hours"
        }
      },
      {
        "day": 3,
        "title": "Souvenir Shopping & Onward Departure from Chamoli",
        "location": "Chamoli",
        "overview": "Conclude your trip to Badrinath with morning shopping for local delicacies and souvenirs, followed by departure transfer.",
        "schedule": {
          "morning": {
            "title": "Handicrafts & Sweet Market Visit",
            "description": "Visit trusted local bazaar stalls to buy regional spices, handmade crafts, and traditional sweets of Chamoli."
          },
          "afternoon": {
            "title": "Hotel Checkout & Farewell Lunch",
            "description": "Return to hotel for packing and checkout. Enjoy a farewell lunch before your transfer."
          },
          "evening": {
            "title": "Outbound Departure Transfer",
            "description": "Chauffeur drop to Chamoli Airport or Railway Station for your onward journey home."
          }
        },
        "details": {
          "importantTimings": "Checkout: 12:00 PM | Transfer: As per flight/train",
          "meals": "Breakfast & Farewell Lunch included.",
          "transport": "AC Private Transfer Vehicle",
          "walkingLevel": "Easy Paced",
          "stay": "N/A (Day of departure)",
          "weather": "Cool crisp morning fog clearing to bright 22°C",
          "dressCode": "Comfortable travel wear",
          "packingSuggestions": "Check-in luggage packed, photo ID ready.",
          "accessibility": "Accessible vehicles",
          "visitorNote": "Arrive at Chamoli station/airport 2 hours prior to departure.",
          "travelDuration": "Approx 1 hour transfer"
        }
      }
    ],
    "durationDays": 3,
    "durationLabel": "3 Days / 2 Nights",
    "travellerTypes": [
      "Pilgrims",
      "Seniors"
    ],
    "accessibilityStatus": "Partial Accessibility",
    "childFriendly": true,
    "packageBenefits": [
      "Darshan Assistance",
      "Satvik Meal Option"
    ],
    "highlights": [
      "Spiritual darshan and guided temple tour in Badrinath",
      "Experience peaceful aarti assemblies and sacred rituals",
      "Comfortable transfers to all holy sites"
    ],
    "tips": [
      "Carry valid government ID cards for verification.",
      "Traditional decency wear is recommended inside temple corridors.",
      "Avoid carrying electronics inside the inner sanctum."
    ],
    "itinerarySummary": [
      "Day 1: Arrival in Chamoli: Illuminated Viewpoint & Welcome Feast",
      "Day 2: Panoramic Discovery of Badrinath",
      "Day 3: Souvenir Shopping & Onward Departure from Chamoli"
    ],
    "cancellationSummary": "Get a 100% full refund on cancellations made up to 15 days before the departure. Rescheduling options are fully flexible."
  },
  {
    "id": "hinduism-dwarkadhish-temple-dwarka-india",
    "title": "Dwarkadhish Temple Journey",
    "destinationName": "Dwarkadhish Temple",
    "destinations": "Dwarkadhish Temple (Dwarka, Gujarat, India)",
    "location": "Dwarka, Gujarat, India",
    "route": [
      "Dwarka",
      "Dwarkadhish Temple"
    ],
    "mainCategory": "Pilgrimage",
    "subCategory": "Hinduism",
    "categoryLabel": "Pilgrimage",
    "category": "Pilgrimage",
    "region": "North India",
    "image": "/images/tourist-places/pilgrimage/Hinduism/Dwarkadhish Temple (Dwarka), India.jpg",
    "altText": "Dwarkadhish Temple hindu pilgrimage destination in Dwarka, Gujarat, India",
    "duration": "3 Days / 2 Nights",
    "bestSeason": "October–March",
    "pace": "Easy",
    "travellerType": "Senior Friendly",
    "description": "A thoughtfully planned hindu pilgrimage offering comfort, guidance, and a memorable experience.",
    "price": 14500,
    "rating": null,
    "reviewCount": null,
    "seatsLeft": null,
    "recentBookings": null,
    "verified": null,
    "tags": [
      "Pilgrimage",
      "Curated Journey"
    ],
    "seniorFriendly": true,
    "wheelchairAccess": true,
    "vegMeals": true,
    "inclusions": {
      "hotel": true,
      "meals": true,
      "transit": true,
      "guide": true,
      "entryPasses": true,
      "medicalSupport": false,
      "localExperience": false
    },
    "itinerary": [
      {
        "day": 1,
        "title": "Escorted Arrival in Dwarka & Dwarkadhish Temple Gateway",
        "location": "Dwarka",
        "overview": "Begin your sacred yatra as you arrive in Dwarka. Check into your room at Royal Heritage Villa near Dwarkadhish Temple and receive a brief orientation before evening prayers.",
        "schedule": {
          "morning": {
            "title": "Arrival & Escorted Transfer in Dwarka",
            "description": "Meet our local travel escort at Dwarka transit hub. Receive a traditional welcome and transfer to Royal Heritage Villa near Dwarkadhish Temple."
          },
          "afternoon": {
            "title": "Unpack & Courtyard Leisure at Dwarka",
            "description": "Check into your sanitized room, unpack your luggage, and enjoy quiet leisure time exploring hotel gardens and facilities."
          },
          "evening": {
            "title": "Cultural Folk Performance & Dinner at Dwarkadhish Temple",
            "description": "Attend solemn evening prayer assembly near Dwarkadhish Temple. Float earthen lamps and soak in peaceful chanting."
          }
        },
        "details": {
          "importantTimings": "Sunrise Tour: 5:45 AM | Museum Hours: 9:30 AM - 5:00 PM",
          "meals": "100% Satvik Pure Veg Breakfast & Temple Prasadam Dinner.",
          "transport": "AC Private Chauffeur Vehicle",
          "walkingLevel": "Easy Paced (Flat temple paths, seating available)",
          "stay": "Royal Heritage Villa near Dwarkadhish Temple",
          "weather": "Warm tropical sunshine with ocean breeze 27°C",
          "dressCode": "Modest traditional attire (shoulders & knees covered)",
          "packingSuggestions": "Light cotton wear, camera with telephoto lens, sunscreen lotion, photo ID.",
          "accessibility": "Wheelchair ramps & low step entry vehicle",
          "visitorNote": "Escort coordinator will brief you on timing for Dwarkadhish Temple visit.",
          "travelDuration": "Approx 1 to 2 hours transfer"
        }
      },
      {
        "day": 2,
        "title": "Uncovering the Secrets of Dwarkadhish Temple",
        "location": "Dwarka",
        "overview": "A deep dive into Dwarkadhish Temple. Tour inner sanctums, historical galleries, and architectural viewpoints accompanied by an expert guide.",
        "schedule": {
          "morning": {
            "title": "Guided Tour of Dwarkadhish Temple",
            "description": "Early morning entry to Dwarkadhish Temple. Walk through central courtyards, ancient corridors, and historic halls."
          },
          "afternoon": {
            "title": "Museum Treasures & Heritage Galleries near Dwarka",
            "description": "Taste authentic local regional cuisine. Visit local artisan markets specializing in handcrafts native to Gujarat, India."
          },
          "evening": {
            "title": "Sunset Viewpoint & Cultural Evening",
            "description": "Head to the highest scenic viewpoint overlooking Dwarkadhish Temple. Capture sunset photographs followed by evening entertainment."
          }
        },
        "details": {
          "importantTimings": "Sunrise Tour: 5:45 AM | Museum Hours: 9:30 AM - 5:00 PM",
          "meals": "Welcome Tender Coconut & Traditional Satvik Thali.",
          "transport": "AC Private Sedan / SUV",
          "walkingLevel": "Moderate (Historical walkways & corridors)",
          "stay": "Royal Heritage Villa near Dwarkadhish Temple",
          "weather": "Warm tropical sunshine with ocean breeze 27°C",
          "dressCode": "Traditional attire",
          "packingSuggestions": "Comfortable walking socks, power bank, shoulder shawl, daypack.",
          "accessibility": "Assistive ramps available at main portals",
          "visitorNote": "Follow local heritage guidelines inside Dwarkadhish Temple.",
          "travelDuration": "Full day sightseeing approx 5 to 6 hours"
        }
      },
      {
        "day": 3,
        "title": "Souvenir Shopping & Onward Departure from Dwarka",
        "location": "Dwarka",
        "overview": "Conclude your trip to Dwarkadhish Temple with morning shopping for local delicacies and souvenirs, followed by departure transfer.",
        "schedule": {
          "morning": {
            "title": "Handicrafts & Sweet Market Visit",
            "description": "Visit trusted local bazaar stalls to buy regional spices, handmade crafts, and traditional sweets of Dwarka."
          },
          "afternoon": {
            "title": "Hotel Checkout & Farewell Lunch",
            "description": "Return to hotel for packing and checkout. Enjoy a farewell lunch before your transfer."
          },
          "evening": {
            "title": "Outbound Departure Transfer",
            "description": "Chauffeur drop to Dwarka Airport or Railway Station for your onward journey home."
          }
        },
        "details": {
          "importantTimings": "Checkout: 12:00 PM | Transfer: As per flight/train",
          "meals": "Breakfast & Farewell Lunch included.",
          "transport": "AC Private Transfer Vehicle",
          "walkingLevel": "Easy Paced",
          "stay": "N/A (Day of departure)",
          "weather": "Warm tropical sunshine with ocean breeze 27°C",
          "dressCode": "Comfortable travel wear",
          "packingSuggestions": "Check-in luggage packed, photo ID ready.",
          "accessibility": "Accessible vehicles",
          "visitorNote": "Arrive at Dwarka station/airport 2 hours prior to departure.",
          "travelDuration": "Approx 1 hour transfer"
        }
      }
    ],
    "durationDays": 3,
    "durationLabel": "3 Days / 2 Nights",
    "travellerTypes": [
      "Pilgrims",
      "Seniors"
    ],
    "accessibilityStatus": "Wheelchair Accessible",
    "childFriendly": true,
    "packageBenefits": [
      "Darshan Assistance",
      "Satvik Meal Option"
    ],
    "highlights": [
      "Spiritual darshan and guided temple tour in Dwarkadhish Temple",
      "Experience peaceful aarti assemblies and sacred rituals",
      "Comfortable transfers to all holy sites"
    ],
    "tips": [
      "Carry valid government ID cards for verification.",
      "Traditional decency wear is recommended inside temple corridors.",
      "Avoid carrying electronics inside the inner sanctum."
    ],
    "itinerarySummary": [
      "Day 1: Escorted Arrival in Dwarka & Dwarkadhish Temple Gateway",
      "Day 2: Uncovering the Secrets of Dwarkadhish Temple",
      "Day 3: Souvenir Shopping & Onward Departure from Dwarka"
    ],
    "cancellationSummary": "Get a 100% full refund on cancellations made up to 15 days before the departure. Rescheduling options are fully flexible."
  },
  {
    "id": "hinduism-golden-temple-harmandir-sahib-amritsar-india",
    "title": "Golden Temple Journey",
    "destinationName": "Golden Temple",
    "destinations": "Golden Temple (Amritsar, Punjab, India)",
    "location": "Amritsar, Punjab, India",
    "route": [
      "Amritsar",
      "Golden Temple"
    ],
    "mainCategory": "Pilgrimage",
    "subCategory": "Hinduism",
    "categoryLabel": "Pilgrimage",
    "category": "Pilgrimage",
    "region": "North India",
    "image": "/images/tourist-places/pilgrimage/Hinduism/Golden Temple (Harmandir Sahib), Amritsar, India.jpg",
    "altText": "Golden Temple hindu pilgrimage destination in Amritsar, Punjab, India",
    "duration": "3 Days / 2 Nights",
    "bestSeason": "October–March",
    "pace": "Easy",
    "travellerType": "Senior Friendly",
    "description": "A thoughtfully planned hindu pilgrimage offering comfort, guidance, and a memorable experience.",
    "price": 15700,
    "rating": null,
    "reviewCount": null,
    "seatsLeft": null,
    "recentBookings": null,
    "verified": null,
    "tags": [
      "Pilgrimage",
      "Curated Journey"
    ],
    "seniorFriendly": true,
    "wheelchairAccess": true,
    "vegMeals": true,
    "inclusions": {
      "hotel": true,
      "meals": true,
      "transit": true,
      "guide": true,
      "entryPasses": true,
      "medicalSupport": false,
      "localExperience": false
    },
    "itinerary": [
      {
        "day": 1,
        "title": "Arrival in Amritsar: Riverside Aarti & Evening Tea",
        "location": "Amritsar",
        "overview": "Begin your sacred yatra as you arrive in Amritsar. Check into your room at Luxury Eco Lodge in Amritsar and receive a brief orientation before evening prayers.",
        "schedule": {
          "morning": {
            "title": "Arrival & Escorted Transfer in Amritsar",
            "description": "Meet our local travel escort at Amritsar transit hub. Receive a traditional welcome and transfer to Luxury Eco Lodge in Amritsar."
          },
          "afternoon": {
            "title": "Unpack & Courtyard Leisure at Amritsar",
            "description": "Check into your sanitized room, unpack your luggage, and enjoy quiet leisure time exploring hotel gardens and facilities."
          },
          "evening": {
            "title": "Riverside Aarti & Evening Tea at Golden Temple",
            "description": "Attend solemn evening prayer assembly near Golden Temple. Float earthen lamps and soak in peaceful chanting."
          }
        },
        "details": {
          "importantTimings": "Guided Walk: 9:00 AM | Sunset Point Departure: 5:15 PM",
          "meals": "100% Satvik Pure Veg Breakfast & Temple Prasadam Dinner.",
          "transport": "AC Private Chauffeur Vehicle",
          "walkingLevel": "Easy Paced (Flat temple paths, seating available)",
          "stay": "Luxury Eco Lodge in Amritsar",
          "weather": "Crisp mountain climate, clear blue skies 19°C",
          "dressCode": "Modest traditional attire (shoulders & knees covered)",
          "packingSuggestions": "Comfortable walking socks, power bank, shoulder shawl, daypack.",
          "accessibility": "Wheelchair ramps & low step entry vehicle",
          "visitorNote": "Escort coordinator will brief you on timing for Golden Temple visit.",
          "travelDuration": "Approx 1 to 2 hours transfer"
        }
      },
      {
        "day": 2,
        "title": "Spiritual Morning Prayers at Golden Temple",
        "location": "Amritsar",
        "overview": "A deep dive into Golden Temple. Tour inner sanctums, historical galleries, and architectural viewpoints accompanied by an expert guide.",
        "schedule": {
          "morning": {
            "title": "Guided Tour of Golden Temple",
            "description": "Early morning entry to Golden Temple. Walk through central courtyards, ancient corridors, and historic halls."
          },
          "afternoon": {
            "title": "Boat Ride & Riverfront Exploration near Amritsar",
            "description": "Taste authentic local regional cuisine. Visit local artisan markets specializing in handcrafts native to Punjab, India."
          },
          "evening": {
            "title": "Sunset Viewpoint & Cultural Evening",
            "description": "Head to the highest scenic viewpoint overlooking Golden Temple. Capture sunset photographs followed by evening entertainment."
          }
        },
        "details": {
          "importantTimings": "Guided Walk: 9:00 AM | Sunset Point Departure: 5:15 PM",
          "meals": "Welcome Tender Coconut & Traditional Satvik Thali.",
          "transport": "AC Private Sedan / SUV",
          "walkingLevel": "Moderate (Historical walkways & corridors)",
          "stay": "Luxury Eco Lodge in Amritsar",
          "weather": "Crisp mountain climate, clear blue skies 19°C",
          "dressCode": "Traditional attire",
          "packingSuggestions": "Breathable linen wear, sunglasses, small currency notes for local shops.",
          "accessibility": "Assistive ramps available at main portals",
          "visitorNote": "Follow local heritage guidelines inside Golden Temple.",
          "travelDuration": "Full day sightseeing approx 5 to 6 hours"
        }
      },
      {
        "day": 3,
        "title": "Souvenir Shopping & Onward Departure from Amritsar",
        "location": "Amritsar",
        "overview": "Conclude your trip to Golden Temple with morning shopping for local delicacies and souvenirs, followed by departure transfer.",
        "schedule": {
          "morning": {
            "title": "Handicrafts & Sweet Market Visit",
            "description": "Visit trusted local bazaar stalls to buy regional spices, handmade crafts, and traditional sweets of Amritsar."
          },
          "afternoon": {
            "title": "Hotel Checkout & Farewell Lunch",
            "description": "Return to hotel for packing and checkout. Enjoy a farewell lunch before your transfer."
          },
          "evening": {
            "title": "Outbound Departure Transfer",
            "description": "Chauffeur drop to Amritsar Airport or Railway Station for your onward journey home."
          }
        },
        "details": {
          "importantTimings": "Checkout: 12:00 PM | Transfer: As per flight/train",
          "meals": "Breakfast & Farewell Lunch included.",
          "transport": "AC Private Transfer Vehicle",
          "walkingLevel": "Easy Paced",
          "stay": "N/A (Day of departure)",
          "weather": "Crisp mountain climate, clear blue skies 19°C",
          "dressCode": "Comfortable travel wear",
          "packingSuggestions": "Check-in luggage packed, photo ID ready.",
          "accessibility": "Accessible vehicles",
          "visitorNote": "Arrive at Amritsar station/airport 2 hours prior to departure.",
          "travelDuration": "Approx 1 hour transfer"
        }
      }
    ],
    "durationDays": 3,
    "durationLabel": "3 Days / 2 Nights",
    "travellerTypes": [
      "Pilgrims",
      "Seniors"
    ],
    "accessibilityStatus": "Wheelchair Accessible",
    "childFriendly": true,
    "packageBenefits": [
      "Darshan Assistance",
      "Satvik Meal Option"
    ],
    "highlights": [
      "Spiritual darshan and guided temple tour in Golden Temple",
      "Experience peaceful aarti assemblies and sacred rituals",
      "Comfortable transfers to all holy sites"
    ],
    "tips": [
      "Carry valid government ID cards for verification.",
      "Traditional decency wear is recommended inside temple corridors.",
      "Avoid carrying electronics inside the inner sanctum."
    ],
    "itinerarySummary": [
      "Day 1: Arrival in Amritsar: Riverside Aarti & Evening Tea",
      "Day 2: Spiritual Morning Prayers at Golden Temple",
      "Day 3: Souvenir Shopping & Onward Departure from Amritsar"
    ],
    "cancellationSummary": "Get a 100% full refund on cancellations made up to 15 days before the departure. Rescheduling options are fully flexible."
  },
  {
    "id": "hinduism-haridwar-rishikesh-india",
    "title": "Haridwar & Rishikesh Journey",
    "destinationName": "Haridwar & Rishikesh",
    "destinations": "Haridwar & Rishikesh (Uttarakhand, India)",
    "location": "Uttarakhand, India",
    "route": [
      "Uttarakhand",
      "Haridwar & Rishikesh"
    ],
    "mainCategory": "Pilgrimage",
    "subCategory": "Hinduism",
    "categoryLabel": "Pilgrimage",
    "category": "Pilgrimage",
    "region": "Char Dham",
    "image": "/images/tourist-places/pilgrimage/Hinduism/Haridwar & Rishikesh, India.jpg",
    "altText": "Haridwar & Rishikesh hindu pilgrimage destination in Uttarakhand, India",
    "duration": "3 Days / 2 Nights",
    "bestSeason": "October–March",
    "pace": "Active",
    "travellerType": "Senior Friendly",
    "description": "A thoughtfully planned hindu pilgrimage offering comfort, guidance, and a memorable experience.",
    "price": 16900,
    "rating": null,
    "reviewCount": null,
    "seatsLeft": null,
    "recentBookings": null,
    "verified": null,
    "tags": [
      "Pilgrimage",
      "Curated Journey"
    ],
    "seniorFriendly": false,
    "wheelchairAccess": false,
    "vegMeals": true,
    "inclusions": {
      "hotel": true,
      "meals": true,
      "transit": true,
      "guide": true,
      "entryPasses": true,
      "medicalSupport": true,
      "localExperience": false
    },
    "itinerary": [
      {
        "day": 1,
        "title": "Scenic Drive to Uttarakhand & Haridwar & Rishikesh Gateway",
        "location": "Uttarakhand",
        "overview": "Begin your sacred yatra as you arrive in Uttarakhand. Check into your room at Grand Riverfront Resort near Haridwar & Rishikesh and receive a brief orientation before evening prayers.",
        "schedule": {
          "morning": {
            "title": "Arrival & Escorted Transfer in Uttarakhand",
            "description": "Meet our local travel escort at Uttarakhand transit hub. Receive a traditional welcome and transfer to Grand Riverfront Resort near Haridwar & Rishikesh."
          },
          "afternoon": {
            "title": "Unpack & Courtyard Leisure at Uttarakhand",
            "description": "Check into your sanitized room, unpack your luggage, and enjoy quiet leisure time exploring hotel gardens and facilities."
          },
          "evening": {
            "title": "Skyline Sunset & Regional Delicacies at Haridwar & Rishikesh",
            "description": "Attend solemn evening prayer assembly near Haridwar & Rishikesh. Float earthen lamps and soak in peaceful chanting."
          }
        },
        "details": {
          "importantTimings": "Boat Departure: 6:00 AM | Heritage Show: 7:00 PM",
          "meals": "100% Satvik Pure Veg Breakfast & Temple Prasadam Dinner.",
          "transport": "AC Private Chauffeur Vehicle",
          "walkingLevel": "Easy Paced (Flat temple paths, seating available)",
          "stay": "Grand Riverfront Resort near Haridwar & Rishikesh",
          "weather": "Refreshing river mist with mild sun 23°C",
          "dressCode": "Modest traditional attire (shoulders & knees covered)",
          "packingSuggestions": "Breathable linen wear, sunglasses, small currency notes for local shops.",
          "accessibility": "Wheelchair ramps & low step entry vehicle",
          "visitorNote": "Escort coordinator will brief you on timing for Haridwar & Rishikesh visit.",
          "travelDuration": "Approx 1 to 2 hours transfer"
        }
      },
      {
        "day": 2,
        "title": "Architectural Tour of Haridwar & Rishikesh",
        "location": "Uttarakhand",
        "overview": "A deep dive into Haridwar & Rishikesh. Tour inner sanctums, historical galleries, and architectural viewpoints accompanied by an expert guide.",
        "schedule": {
          "morning": {
            "title": "Guided Tour of Haridwar & Rishikesh",
            "description": "Early morning entry to Haridwar & Rishikesh. Walk through central courtyards, ancient corridors, and historic halls."
          },
          "afternoon": {
            "title": "Artisan Handloom Workshop & Souvenirs near Uttarakhand",
            "description": "Taste authentic local regional cuisine. Visit local artisan markets specializing in handcrafts native to India."
          },
          "evening": {
            "title": "Sunset Viewpoint & Cultural Evening",
            "description": "Head to the highest scenic viewpoint overlooking Haridwar & Rishikesh. Capture sunset photographs followed by evening entertainment."
          }
        },
        "details": {
          "importantTimings": "Boat Departure: 6:00 AM | Heritage Show: 7:00 PM",
          "meals": "Welcome Tender Coconut & Traditional Satvik Thali.",
          "transport": "AC Private Sedan / SUV",
          "walkingLevel": "Moderate (Historical walkways & corridors)",
          "stay": "Grand Riverfront Resort near Haridwar & Rishikesh",
          "weather": "Refreshing river mist with mild sun 23°C",
          "dressCode": "Traditional attire",
          "packingSuggestions": "Sunhat, sunglasses, comfortable walking shoes, light jacket, camera.",
          "accessibility": "Assistive ramps available at main portals",
          "visitorNote": "Follow local heritage guidelines inside Haridwar & Rishikesh.",
          "travelDuration": "Full day sightseeing approx 5 to 6 hours"
        }
      },
      {
        "day": 3,
        "title": "Souvenir Shopping & Onward Departure from Uttarakhand",
        "location": "Uttarakhand",
        "overview": "Conclude your trip to Haridwar & Rishikesh with morning shopping for local delicacies and souvenirs, followed by departure transfer.",
        "schedule": {
          "morning": {
            "title": "Handicrafts & Sweet Market Visit",
            "description": "Visit trusted local bazaar stalls to buy regional spices, handmade crafts, and traditional sweets of Uttarakhand."
          },
          "afternoon": {
            "title": "Hotel Checkout & Farewell Lunch",
            "description": "Return to hotel for packing and checkout. Enjoy a farewell lunch before your transfer."
          },
          "evening": {
            "title": "Outbound Departure Transfer",
            "description": "Chauffeur drop to Uttarakhand Airport or Railway Station for your onward journey home."
          }
        },
        "details": {
          "importantTimings": "Checkout: 12:00 PM | Transfer: As per flight/train",
          "meals": "Breakfast & Farewell Lunch included.",
          "transport": "AC Private Transfer Vehicle",
          "walkingLevel": "Easy Paced",
          "stay": "N/A (Day of departure)",
          "weather": "Refreshing river mist with mild sun 23°C",
          "dressCode": "Comfortable travel wear",
          "packingSuggestions": "Check-in luggage packed, photo ID ready.",
          "accessibility": "Accessible vehicles",
          "visitorNote": "Arrive at Uttarakhand station/airport 2 hours prior to departure.",
          "travelDuration": "Approx 1 hour transfer"
        }
      }
    ],
    "durationDays": 3,
    "durationLabel": "3 Days / 2 Nights",
    "travellerTypes": [
      "Pilgrims",
      "Seniors"
    ],
    "accessibilityStatus": "Not Wheelchair Accessible",
    "childFriendly": false,
    "packageBenefits": [
      "Darshan Assistance",
      "Satvik Meal Option"
    ],
    "highlights": [
      "Spiritual darshan and guided temple tour in Haridwar & Rishikesh",
      "Experience peaceful aarti assemblies and sacred rituals",
      "Comfortable transfers to all holy sites"
    ],
    "tips": [
      "Carry valid government ID cards for verification.",
      "Traditional decency wear is recommended inside temple corridors.",
      "Avoid carrying electronics inside the inner sanctum."
    ],
    "itinerarySummary": [
      "Day 1: Scenic Drive to Uttarakhand & Haridwar & Rishikesh Gateway",
      "Day 2: Architectural Tour of Haridwar & Rishikesh",
      "Day 3: Souvenir Shopping & Onward Departure from Uttarakhand"
    ],
    "cancellationSummary": "Get a 100% full refund on cancellations made up to 15 days before the departure. Rescheduling options are fully flexible."
  },
  {
    "id": "hinduism-jagannath-temple-puri-india",
    "title": "Jagannath Temple Journey",
    "destinationName": "Jagannath Temple",
    "destinations": "Jagannath Temple (Puri, Odisha, India)",
    "location": "Puri, Odisha, India",
    "route": [
      "Puri",
      "Jagannath Temple"
    ],
    "mainCategory": "Pilgrimage",
    "subCategory": "Hinduism",
    "categoryLabel": "Pilgrimage",
    "category": "Pilgrimage",
    "region": "North India",
    "image": "/images/tourist-places/pilgrimage/Hinduism/Jagannath Temple (Puri), India.jpg",
    "altText": "Jagannath Temple hindu pilgrimage destination in Puri, Odisha, India",
    "duration": "3 Days / 2 Nights",
    "bestSeason": "October–March",
    "pace": "Easy",
    "travellerType": "Senior Friendly",
    "description": "A thoughtfully planned hindu pilgrimage offering comfort, guidance, and a memorable experience.",
    "price": 18100,
    "rating": null,
    "reviewCount": null,
    "seatsLeft": null,
    "recentBookings": null,
    "verified": null,
    "tags": [
      "Pilgrimage",
      "Curated Journey"
    ],
    "seniorFriendly": true,
    "wheelchairAccess": true,
    "vegMeals": true,
    "inclusions": {
      "hotel": true,
      "meals": true,
      "transit": true,
      "guide": true,
      "entryPasses": true,
      "medicalSupport": false,
      "localExperience": false
    },
    "itinerary": [
      {
        "day": 1,
        "title": "Arrival in Puri: Candlelight Dinner & Courtyard Music",
        "location": "Puri",
        "overview": "Begin your sacred yatra as you arrive in Puri. Check into your room at Vedic Pilgrim Ashram Stay in Puri and receive a brief orientation before evening prayers.",
        "schedule": {
          "morning": {
            "title": "Arrival & Escorted Transfer in Puri",
            "description": "Meet our local travel escort at Puri transit hub. Receive a traditional welcome and transfer to Vedic Pilgrim Ashram Stay in Puri."
          },
          "afternoon": {
            "title": "Unpack & Courtyard Leisure at Puri",
            "description": "Check into your sanitized room, unpack your luggage, and enjoy quiet leisure time exploring hotel gardens and facilities."
          },
          "evening": {
            "title": "Candlelight Dinner & Courtyard Music at Jagannath Temple",
            "description": "Attend solemn evening prayer assembly near Jagannath Temple. Float earthen lamps and soak in peaceful chanting."
          }
        },
        "details": {
          "importantTimings": "Gate Entry: 8:00 AM | Evening Light Show: 6:30 PM",
          "meals": "100% Satvik Pure Veg Breakfast & Temple Prasadam Dinner.",
          "transport": "AC Private Chauffeur Vehicle",
          "walkingLevel": "Easy Paced (Flat temple paths, seating available)",
          "stay": "Vedic Pilgrim Ashram Stay in Puri",
          "weather": "Pleasant breeze with sunny afternoon 24°C",
          "dressCode": "Modest traditional attire (shoulders & knees covered)",
          "packingSuggestions": "Sunhat, sunglasses, comfortable walking shoes, light jacket, camera.",
          "accessibility": "Wheelchair ramps & low step entry vehicle",
          "visitorNote": "Escort coordinator will brief you on timing for Jagannath Temple visit.",
          "travelDuration": "Approx 1 to 2 hours transfer"
        }
      },
      {
        "day": 2,
        "title": "Dawn Guided Expedition of Jagannath Temple",
        "location": "Puri",
        "overview": "A deep dive into Jagannath Temple. Tour inner sanctums, historical galleries, and architectural viewpoints accompanied by an expert guide.",
        "schedule": {
          "morning": {
            "title": "Guided Tour of Jagannath Temple",
            "description": "Early morning entry to Jagannath Temple. Walk through central courtyards, ancient corridors, and historic halls."
          },
          "afternoon": {
            "title": "Scenic Valley Drive & Photo Stops near Puri",
            "description": "Taste authentic local regional cuisine. Visit local artisan markets specializing in handcrafts native to Odisha, India."
          },
          "evening": {
            "title": "Sunset Viewpoint & Cultural Evening",
            "description": "Head to the highest scenic viewpoint overlooking Jagannath Temple. Capture sunset photographs followed by evening entertainment."
          }
        },
        "details": {
          "importantTimings": "Gate Entry: 8:00 AM | Evening Light Show: 6:30 PM",
          "meals": "Welcome Tender Coconut & Traditional Satvik Thali.",
          "transport": "AC Private Sedan / SUV",
          "walkingLevel": "Moderate (Historical walkways & corridors)",
          "stay": "Vedic Pilgrim Ashram Stay in Puri",
          "weather": "Pleasant breeze with sunny afternoon 24°C",
          "dressCode": "Traditional attire",
          "packingSuggestions": "Traditional headscarf, slip-on shoes, reusable water bottle, dry bag.",
          "accessibility": "Assistive ramps available at main portals",
          "visitorNote": "Follow local heritage guidelines inside Jagannath Temple.",
          "travelDuration": "Full day sightseeing approx 5 to 6 hours"
        }
      },
      {
        "day": 3,
        "title": "Souvenir Shopping & Onward Departure from Puri",
        "location": "Puri",
        "overview": "Conclude your trip to Jagannath Temple with morning shopping for local delicacies and souvenirs, followed by departure transfer.",
        "schedule": {
          "morning": {
            "title": "Handicrafts & Sweet Market Visit",
            "description": "Visit trusted local bazaar stalls to buy regional spices, handmade crafts, and traditional sweets of Puri."
          },
          "afternoon": {
            "title": "Hotel Checkout & Farewell Lunch",
            "description": "Return to hotel for packing and checkout. Enjoy a farewell lunch before your transfer."
          },
          "evening": {
            "title": "Outbound Departure Transfer",
            "description": "Chauffeur drop to Puri Airport or Railway Station for your onward journey home."
          }
        },
        "details": {
          "importantTimings": "Checkout: 12:00 PM | Transfer: As per flight/train",
          "meals": "Breakfast & Farewell Lunch included.",
          "transport": "AC Private Transfer Vehicle",
          "walkingLevel": "Easy Paced",
          "stay": "N/A (Day of departure)",
          "weather": "Pleasant breeze with sunny afternoon 24°C",
          "dressCode": "Comfortable travel wear",
          "packingSuggestions": "Check-in luggage packed, photo ID ready.",
          "accessibility": "Accessible vehicles",
          "visitorNote": "Arrive at Puri station/airport 2 hours prior to departure.",
          "travelDuration": "Approx 1 hour transfer"
        }
      }
    ],
    "durationDays": 3,
    "durationLabel": "3 Days / 2 Nights",
    "travellerTypes": [
      "Pilgrims",
      "Seniors"
    ],
    "accessibilityStatus": "Wheelchair Accessible",
    "childFriendly": true,
    "packageBenefits": [
      "Darshan Assistance",
      "Satvik Meal Option"
    ],
    "highlights": [
      "Spiritual darshan and guided temple tour in Jagannath Temple",
      "Experience peaceful aarti assemblies and sacred rituals",
      "Comfortable transfers to all holy sites"
    ],
    "tips": [
      "Carry valid government ID cards for verification.",
      "Traditional decency wear is recommended inside temple corridors.",
      "Avoid carrying electronics inside the inner sanctum."
    ],
    "itinerarySummary": [
      "Day 1: Arrival in Puri: Candlelight Dinner & Courtyard Music",
      "Day 2: Dawn Guided Expedition of Jagannath Temple",
      "Day 3: Souvenir Shopping & Onward Departure from Puri"
    ],
    "cancellationSummary": "Get a 100% full refund on cancellations made up to 15 days before the departure. Rescheduling options are fully flexible."
  },
  {
    "id": "hinduism-kashi-vishwanath-varanasi-india",
    "title": "Kashi Vishwanath Journey",
    "destinationName": "Kashi Vishwanath",
    "destinations": "Kashi Vishwanath (Varanasi, Uttar Pradesh, India)",
    "location": "Varanasi, Uttar Pradesh, India",
    "route": [
      "Varanasi",
      "Kashi Vishwanath"
    ],
    "mainCategory": "Pilgrimage",
    "subCategory": "Hinduism",
    "categoryLabel": "Pilgrimage",
    "category": "Pilgrimage",
    "region": "North India",
    "image": "/images/tourist-places/pilgrimage/Hinduism/Kashi Vishwanath (Varanasi), India.jpg",
    "altText": "Kashi Vishwanath hindu pilgrimage destination in Varanasi, Uttar Pradesh, India",
    "duration": "3 Days / 2 Nights",
    "bestSeason": "October–March",
    "pace": "Easy",
    "travellerType": "Senior Friendly",
    "description": "A thoughtfully planned hindu pilgrimage offering comfort, guidance, and a memorable experience.",
    "price": 19300,
    "rating": null,
    "reviewCount": null,
    "seatsLeft": null,
    "recentBookings": null,
    "verified": null,
    "tags": [
      "Pilgrimage",
      "Curated Journey"
    ],
    "seniorFriendly": true,
    "wheelchairAccess": true,
    "vegMeals": true,
    "inclusions": {
      "hotel": true,
      "meals": true,
      "transit": true,
      "guide": true,
      "entryPasses": true,
      "medicalSupport": false,
      "localExperience": false
    },
    "itinerary": [
      {
        "day": 1,
        "title": "Beginning Your Journey in Varanasi & Kashi Vishwanath Gateway",
        "location": "Varanasi",
        "overview": "Begin your sacred yatra as you arrive in Varanasi. Check into your room at Boutique Star Hotel in Varanasi and receive a brief orientation before evening prayers.",
        "schedule": {
          "morning": {
            "title": "Arrival & Escorted Transfer in Varanasi",
            "description": "Meet our local travel escort at Varanasi transit hub. Receive a traditional welcome and transfer to Boutique Star Hotel in Varanasi."
          },
          "afternoon": {
            "title": "Unpack & Courtyard Leisure at Varanasi",
            "description": "Check into your sanitized room, unpack your luggage, and enjoy quiet leisure time exploring hotel gardens and facilities."
          },
          "evening": {
            "title": "Heritage Bazaar Promenade at Kashi Vishwanath",
            "description": "Attend solemn evening prayer assembly near Kashi Vishwanath. Float earthen lamps and soak in peaceful chanting."
          }
        },
        "details": {
          "importantTimings": "Sanctum VIP Slot: 6:30 AM | Bazaar Hours: 4:00 PM - 8:30 PM",
          "meals": "100% Satvik Pure Veg Breakfast & Temple Prasadam Dinner.",
          "transport": "AC Private Chauffeur Vehicle",
          "walkingLevel": "Easy Paced (Flat temple paths, seating available)",
          "stay": "Boutique Star Hotel in Varanasi",
          "weather": "Cool crisp morning fog clearing to bright 22°C",
          "dressCode": "Modest traditional attire (shoulders & knees covered)",
          "packingSuggestions": "Traditional headscarf, slip-on shoes, reusable water bottle, dry bag.",
          "accessibility": "Wheelchair ramps & low step entry vehicle",
          "visitorNote": "Escort coordinator will brief you on timing for Kashi Vishwanath visit.",
          "travelDuration": "Approx 1 to 2 hours transfer"
        }
      },
      {
        "day": 2,
        "title": "Early Sunrise Visit to Kashi Vishwanath",
        "location": "Varanasi",
        "overview": "A deep dive into Kashi Vishwanath. Tour inner sanctums, historical galleries, and architectural viewpoints accompanied by an expert guide.",
        "schedule": {
          "morning": {
            "title": "Guided Tour of Kashi Vishwanath",
            "description": "Early morning entry to Kashi Vishwanath. Walk through central courtyards, ancient corridors, and historic halls."
          },
          "afternoon": {
            "title": "Sacred Shrine Darshan & Temple Complex near Varanasi",
            "description": "Taste authentic local regional cuisine. Visit local artisan markets specializing in handcrafts native to Uttar Pradesh, India."
          },
          "evening": {
            "title": "Sunset Viewpoint & Cultural Evening",
            "description": "Head to the highest scenic viewpoint overlooking Kashi Vishwanath. Capture sunset photographs followed by evening entertainment."
          }
        },
        "details": {
          "importantTimings": "Sanctum VIP Slot: 6:30 AM | Bazaar Hours: 4:00 PM - 8:30 PM",
          "meals": "Welcome Tender Coconut & Traditional Satvik Thali.",
          "transport": "AC Private Sedan / SUV",
          "walkingLevel": "Moderate (Historical walkways & corridors)",
          "stay": "Boutique Star Hotel in Varanasi",
          "weather": "Cool crisp morning fog clearing to bright 22°C",
          "dressCode": "Traditional attire",
          "packingSuggestions": "Light cotton wear, camera with telephoto lens, sunscreen lotion, photo ID.",
          "accessibility": "Assistive ramps available at main portals",
          "visitorNote": "Follow local heritage guidelines inside Kashi Vishwanath.",
          "travelDuration": "Full day sightseeing approx 5 to 6 hours"
        }
      },
      {
        "day": 3,
        "title": "Souvenir Shopping & Onward Departure from Varanasi",
        "location": "Varanasi",
        "overview": "Conclude your trip to Kashi Vishwanath with morning shopping for local delicacies and souvenirs, followed by departure transfer.",
        "schedule": {
          "morning": {
            "title": "Handicrafts & Sweet Market Visit",
            "description": "Visit trusted local bazaar stalls to buy regional spices, handmade crafts, and traditional sweets of Varanasi."
          },
          "afternoon": {
            "title": "Hotel Checkout & Farewell Lunch",
            "description": "Return to hotel for packing and checkout. Enjoy a farewell lunch before your transfer."
          },
          "evening": {
            "title": "Outbound Departure Transfer",
            "description": "Chauffeur drop to Varanasi Airport or Railway Station for your onward journey home."
          }
        },
        "details": {
          "importantTimings": "Checkout: 12:00 PM | Transfer: As per flight/train",
          "meals": "Breakfast & Farewell Lunch included.",
          "transport": "AC Private Transfer Vehicle",
          "walkingLevel": "Easy Paced",
          "stay": "N/A (Day of departure)",
          "weather": "Cool crisp morning fog clearing to bright 22°C",
          "dressCode": "Comfortable travel wear",
          "packingSuggestions": "Check-in luggage packed, photo ID ready.",
          "accessibility": "Accessible vehicles",
          "visitorNote": "Arrive at Varanasi station/airport 2 hours prior to departure.",
          "travelDuration": "Approx 1 hour transfer"
        }
      }
    ],
    "durationDays": 3,
    "durationLabel": "3 Days / 2 Nights",
    "travellerTypes": [
      "Pilgrims",
      "Seniors"
    ],
    "accessibilityStatus": "Wheelchair Accessible",
    "childFriendly": true,
    "packageBenefits": [
      "Darshan Assistance",
      "Satvik Meal Option"
    ],
    "highlights": [
      "Spiritual darshan and guided temple tour in Kashi Vishwanath",
      "Experience peaceful aarti assemblies and sacred rituals",
      "Comfortable transfers to all holy sites"
    ],
    "tips": [
      "Carry valid government ID cards for verification.",
      "Traditional decency wear is recommended inside temple corridors.",
      "Avoid carrying electronics inside the inner sanctum."
    ],
    "itinerarySummary": [
      "Day 1: Beginning Your Journey in Varanasi & Kashi Vishwanath Gateway",
      "Day 2: Early Sunrise Visit to Kashi Vishwanath",
      "Day 3: Souvenir Shopping & Onward Departure from Varanasi"
    ],
    "cancellationSummary": "Get a 100% full refund on cancellations made up to 15 days before the departure. Rescheduling options are fully flexible."
  },
  {
    "id": "hinduism-kedarnath-india",
    "title": "Kedarnath Journey",
    "destinationName": "Kedarnath",
    "destinations": "Kedarnath (Rudraprayag, Uttarakhand, India)",
    "location": "Rudraprayag, Uttarakhand, India",
    "route": [
      "Rudraprayag",
      "Kedarnath"
    ],
    "mainCategory": "Pilgrimage",
    "subCategory": "Hinduism",
    "categoryLabel": "Pilgrimage",
    "category": "Pilgrimage",
    "region": "Char Dham",
    "image": "/images/tourist-places/pilgrimage/Hinduism/Kedarnath, India.jpg",
    "altText": "Kedarnath hindu pilgrimage destination in Rudraprayag, Uttarakhand, India",
    "duration": "3 Days / 2 Nights",
    "bestSeason": "May–October",
    "pace": "Active",
    "travellerType": "Senior Friendly",
    "description": "A thoughtfully planned hindu pilgrimage offering comfort, guidance, and a memorable experience.",
    "price": 20500,
    "rating": null,
    "reviewCount": null,
    "seatsLeft": null,
    "recentBookings": null,
    "verified": null,
    "tags": [
      "Pilgrimage",
      "Curated Journey"
    ],
    "seniorFriendly": false,
    "wheelchairAccess": false,
    "vegMeals": true,
    "inclusions": {
      "hotel": true,
      "meals": true,
      "transit": true,
      "guide": true,
      "entryPasses": true,
      "medicalSupport": true,
      "localExperience": false
    },
    "itinerary": [
      {
        "day": 1,
        "title": "Arrival in Rudraprayag: Panoramic Terrace Lounge Session",
        "location": "Rudraprayag",
        "overview": "Begin your sacred yatra as you arrive in Rudraprayag. Check into your room at Hilltop Panorama Resort near Kedarnath and receive a brief orientation before evening prayers.",
        "schedule": {
          "morning": {
            "title": "Arrival & Escorted Transfer in Rudraprayag",
            "description": "Meet our local travel escort at Rudraprayag transit hub. Receive a traditional welcome and transfer to Hilltop Panorama Resort near Kedarnath."
          },
          "afternoon": {
            "title": "Unpack & Courtyard Leisure at Rudraprayag",
            "description": "Check into your sanitized room, unpack your luggage, and enjoy quiet leisure time exploring hotel gardens and facilities."
          },
          "evening": {
            "title": "Panoramic Terrace Lounge Session at Kedarnath",
            "description": "Attend solemn evening prayer assembly near Kedarnath. Float earthen lamps and soak in peaceful chanting."
          }
        },
        "details": {
          "importantTimings": "Sunrise Tour: 5:45 AM | Museum Hours: 9:30 AM - 5:00 PM",
          "meals": "100% Satvik Pure Veg Breakfast & Temple Prasadam Dinner.",
          "transport": "AC Private Chauffeur Vehicle",
          "walkingLevel": "Easy Paced (Flat temple paths, seating available)",
          "stay": "Hilltop Panorama Resort near Kedarnath",
          "weather": "Warm tropical sunshine with ocean breeze 27°C",
          "dressCode": "Modest traditional attire (shoulders & knees covered)",
          "packingSuggestions": "Light cotton wear, camera with telephoto lens, sunscreen lotion, photo ID.",
          "accessibility": "Wheelchair ramps & low step entry vehicle",
          "visitorNote": "Escort coordinator will brief you on timing for Kedarnath visit.",
          "travelDuration": "Approx 1 to 2 hours transfer"
        }
      },
      {
        "day": 2,
        "title": "Exclusive Morning Tour of Kedarnath",
        "location": "Rudraprayag",
        "overview": "A deep dive into Kedarnath. Tour inner sanctums, historical galleries, and architectural viewpoints accompanied by an expert guide.",
        "schedule": {
          "morning": {
            "title": "Guided Tour of Kedarnath",
            "description": "Early morning entry to Kedarnath. Walk through central courtyards, ancient corridors, and historic halls."
          },
          "afternoon": {
            "title": "Coastal Promenade & Beach Relax near Rudraprayag",
            "description": "Taste authentic local regional cuisine. Visit local artisan markets specializing in handcrafts native to Uttarakhand, India."
          },
          "evening": {
            "title": "Sunset Viewpoint & Cultural Evening",
            "description": "Head to the highest scenic viewpoint overlooking Kedarnath. Capture sunset photographs followed by evening entertainment."
          }
        },
        "details": {
          "importantTimings": "Sunrise Tour: 5:45 AM | Museum Hours: 9:30 AM - 5:00 PM",
          "meals": "Welcome Tender Coconut & Traditional Satvik Thali.",
          "transport": "AC Private Sedan / SUV",
          "walkingLevel": "Moderate (Historical walkways & corridors)",
          "stay": "Hilltop Panorama Resort near Kedarnath",
          "weather": "Warm tropical sunshine with ocean breeze 27°C",
          "dressCode": "Traditional attire",
          "packingSuggestions": "Comfortable walking socks, power bank, shoulder shawl, daypack.",
          "accessibility": "Assistive ramps available at main portals",
          "visitorNote": "Follow local heritage guidelines inside Kedarnath.",
          "travelDuration": "Full day sightseeing approx 5 to 6 hours"
        }
      },
      {
        "day": 3,
        "title": "Souvenir Shopping & Onward Departure from Rudraprayag",
        "location": "Rudraprayag",
        "overview": "Conclude your trip to Kedarnath with morning shopping for local delicacies and souvenirs, followed by departure transfer.",
        "schedule": {
          "morning": {
            "title": "Handicrafts & Sweet Market Visit",
            "description": "Visit trusted local bazaar stalls to buy regional spices, handmade crafts, and traditional sweets of Rudraprayag."
          },
          "afternoon": {
            "title": "Hotel Checkout & Farewell Lunch",
            "description": "Return to hotel for packing and checkout. Enjoy a farewell lunch before your transfer."
          },
          "evening": {
            "title": "Outbound Departure Transfer",
            "description": "Chauffeur drop to Rudraprayag Airport or Railway Station for your onward journey home."
          }
        },
        "details": {
          "importantTimings": "Checkout: 12:00 PM | Transfer: As per flight/train",
          "meals": "Breakfast & Farewell Lunch included.",
          "transport": "AC Private Transfer Vehicle",
          "walkingLevel": "Easy Paced",
          "stay": "N/A (Day of departure)",
          "weather": "Warm tropical sunshine with ocean breeze 27°C",
          "dressCode": "Comfortable travel wear",
          "packingSuggestions": "Check-in luggage packed, photo ID ready.",
          "accessibility": "Accessible vehicles",
          "visitorNote": "Arrive at Rudraprayag station/airport 2 hours prior to departure.",
          "travelDuration": "Approx 1 hour transfer"
        }
      }
    ],
    "durationDays": 3,
    "durationLabel": "3 Days / 2 Nights",
    "travellerTypes": [
      "Pilgrims",
      "Seniors"
    ],
    "accessibilityStatus": "Not Wheelchair Accessible",
    "childFriendly": false,
    "packageBenefits": [
      "Darshan Assistance",
      "Satvik Meal Option"
    ],
    "highlights": [
      "Spiritual darshan and guided temple tour in Kedarnath",
      "Experience peaceful aarti assemblies and sacred rituals",
      "Comfortable transfers to all holy sites"
    ],
    "tips": [
      "Carry valid government ID cards for verification.",
      "Traditional decency wear is recommended inside temple corridors.",
      "Avoid carrying electronics inside the inner sanctum."
    ],
    "itinerarySummary": [
      "Day 1: Arrival in Rudraprayag: Panoramic Terrace Lounge Session",
      "Day 2: Exclusive Morning Tour of Kedarnath",
      "Day 3: Souvenir Shopping & Onward Departure from Rudraprayag"
    ],
    "cancellationSummary": "Get a 100% full refund on cancellations made up to 15 days before the departure. Rescheduling options are fully flexible."
  },
  {
    "id": "hinduism-mahakaleshwar-temple-ujjain-india",
    "title": "Mahakaleshwar Temple Journey",
    "destinationName": "Mahakaleshwar Temple",
    "destinations": "Mahakaleshwar Temple (Ujjain, Madhya Pradesh, India)",
    "location": "Ujjain, Madhya Pradesh, India",
    "route": [
      "Ujjain",
      "Mahakaleshwar Temple"
    ],
    "mainCategory": "Pilgrimage",
    "subCategory": "Hinduism",
    "categoryLabel": "Pilgrimage",
    "category": "Pilgrimage",
    "region": "North India",
    "image": "/images/tourist-places/pilgrimage/Hinduism/Mahakaleshwar Temple (Ujjain), India.jpg",
    "altText": "Mahakaleshwar Temple hindu pilgrimage destination in Ujjain, Madhya Pradesh, India",
    "duration": "3 Days / 2 Nights",
    "bestSeason": "October–March",
    "pace": "Easy",
    "travellerType": "Senior Friendly",
    "description": "A thoughtfully planned hindu pilgrimage offering comfort, guidance, and a memorable experience.",
    "price": 21700,
    "rating": null,
    "reviewCount": null,
    "seatsLeft": null,
    "recentBookings": null,
    "verified": null,
    "tags": [
      "Pilgrimage",
      "Curated Journey"
    ],
    "seniorFriendly": true,
    "wheelchairAccess": true,
    "vegMeals": true,
    "inclusions": {
      "hotel": true,
      "meals": true,
      "transit": true,
      "guide": true,
      "entryPasses": true,
      "medicalSupport": false,
      "localExperience": false
    },
    "itinerary": [
      {
        "day": 1,
        "title": "Spiritual Welcome to Ujjain & Mahakaleshwar Temple Gateway",
        "location": "Ujjain",
        "overview": "Begin your sacred yatra as you arrive in Ujjain. Check into your room at Heritage Palace Resort overlooking Mahakaleshwar Temple and receive a brief orientation before evening prayers.",
        "schedule": {
          "morning": {
            "title": "Arrival & Escorted Transfer in Ujjain",
            "description": "Meet our local travel escort at Ujjain transit hub. Receive a traditional welcome and transfer to Heritage Palace Resort overlooking Mahakaleshwar Temple."
          },
          "afternoon": {
            "title": "Unpack & Courtyard Leisure at Ujjain",
            "description": "Check into your sanitized room, unpack your luggage, and enjoy quiet leisure time exploring hotel gardens and facilities."
          },
          "evening": {
            "title": "Lakeside Stroll & Local Cuisine at Mahakaleshwar Temple",
            "description": "Attend solemn evening prayer assembly near Mahakaleshwar Temple. Float earthen lamps and soak in peaceful chanting."
          }
        },
        "details": {
          "importantTimings": "Guided Walk: 9:00 AM | Sunset Point Departure: 5:15 PM",
          "meals": "100% Satvik Pure Veg Breakfast & Temple Prasadam Dinner.",
          "transport": "AC Private Chauffeur Vehicle",
          "walkingLevel": "Easy Paced (Flat temple paths, seating available)",
          "stay": "Heritage Palace Resort overlooking Mahakaleshwar Temple",
          "weather": "Crisp mountain climate, clear blue skies 19°C",
          "dressCode": "Modest traditional attire (shoulders & knees covered)",
          "packingSuggestions": "Comfortable walking socks, power bank, shoulder shawl, daypack.",
          "accessibility": "Wheelchair ramps & low step entry vehicle",
          "visitorNote": "Escort coordinator will brief you on timing for Mahakaleshwar Temple visit.",
          "travelDuration": "Approx 1 to 2 hours transfer"
        }
      },
      {
        "day": 2,
        "title": "VIP Access to Mahakaleshwar Temple",
        "location": "Ujjain",
        "overview": "A deep dive into Mahakaleshwar Temple. Tour inner sanctums, historical galleries, and architectural viewpoints accompanied by an expert guide.",
        "schedule": {
          "morning": {
            "title": "Guided Tour of Mahakaleshwar Temple",
            "description": "Early morning entry to Mahakaleshwar Temple. Walk through central courtyards, ancient corridors, and historic halls."
          },
          "afternoon": {
            "title": "Culinary Tasting & Local Artisan Crafts near Ujjain",
            "description": "Taste authentic local regional cuisine. Visit local artisan markets specializing in handcrafts native to Madhya Pradesh, India."
          },
          "evening": {
            "title": "Sunset Viewpoint & Cultural Evening",
            "description": "Head to the highest scenic viewpoint overlooking Mahakaleshwar Temple. Capture sunset photographs followed by evening entertainment."
          }
        },
        "details": {
          "importantTimings": "Guided Walk: 9:00 AM | Sunset Point Departure: 5:15 PM",
          "meals": "Welcome Tender Coconut & Traditional Satvik Thali.",
          "transport": "AC Private Sedan / SUV",
          "walkingLevel": "Moderate (Historical walkways & corridors)",
          "stay": "Heritage Palace Resort overlooking Mahakaleshwar Temple",
          "weather": "Crisp mountain climate, clear blue skies 19°C",
          "dressCode": "Traditional attire",
          "packingSuggestions": "Breathable linen wear, sunglasses, small currency notes for local shops.",
          "accessibility": "Assistive ramps available at main portals",
          "visitorNote": "Follow local heritage guidelines inside Mahakaleshwar Temple.",
          "travelDuration": "Full day sightseeing approx 5 to 6 hours"
        }
      },
      {
        "day": 3,
        "title": "Souvenir Shopping & Onward Departure from Ujjain",
        "location": "Ujjain",
        "overview": "Conclude your trip to Mahakaleshwar Temple with morning shopping for local delicacies and souvenirs, followed by departure transfer.",
        "schedule": {
          "morning": {
            "title": "Handicrafts & Sweet Market Visit",
            "description": "Visit trusted local bazaar stalls to buy regional spices, handmade crafts, and traditional sweets of Ujjain."
          },
          "afternoon": {
            "title": "Hotel Checkout & Farewell Lunch",
            "description": "Return to hotel for packing and checkout. Enjoy a farewell lunch before your transfer."
          },
          "evening": {
            "title": "Outbound Departure Transfer",
            "description": "Chauffeur drop to Ujjain Airport or Railway Station for your onward journey home."
          }
        },
        "details": {
          "importantTimings": "Checkout: 12:00 PM | Transfer: As per flight/train",
          "meals": "Breakfast & Farewell Lunch included.",
          "transport": "AC Private Transfer Vehicle",
          "walkingLevel": "Easy Paced",
          "stay": "N/A (Day of departure)",
          "weather": "Crisp mountain climate, clear blue skies 19°C",
          "dressCode": "Comfortable travel wear",
          "packingSuggestions": "Check-in luggage packed, photo ID ready.",
          "accessibility": "Accessible vehicles",
          "visitorNote": "Arrive at Ujjain station/airport 2 hours prior to departure.",
          "travelDuration": "Approx 1 hour transfer"
        }
      }
    ],
    "durationDays": 3,
    "durationLabel": "3 Days / 2 Nights",
    "travellerTypes": [
      "Pilgrims",
      "Seniors"
    ],
    "accessibilityStatus": "Wheelchair Accessible",
    "childFriendly": true,
    "packageBenefits": [
      "Darshan Assistance",
      "Satvik Meal Option"
    ],
    "highlights": [
      "Spiritual darshan and guided temple tour in Mahakaleshwar Temple",
      "Experience peaceful aarti assemblies and sacred rituals",
      "Comfortable transfers to all holy sites"
    ],
    "tips": [
      "Carry valid government ID cards for verification.",
      "Traditional decency wear is recommended inside temple corridors.",
      "Avoid carrying electronics inside the inner sanctum."
    ],
    "itinerarySummary": [
      "Day 1: Spiritual Welcome to Ujjain & Mahakaleshwar Temple Gateway",
      "Day 2: VIP Access to Mahakaleshwar Temple",
      "Day 3: Souvenir Shopping & Onward Departure from Ujjain"
    ],
    "cancellationSummary": "Get a 100% full refund on cancellations made up to 15 days before the departure. Rescheduling options are fully flexible."
  },
  {
    "id": "hinduism-mount-kailash-tibet",
    "title": "Mount Kailash Journey",
    "destinationName": "Mount Kailash",
    "destinations": "Mount Kailash (Ngari, Tibet)",
    "location": "Ngari, Tibet",
    "route": [
      "Ngari",
      "Mount Kailash"
    ],
    "mainCategory": "Pilgrimage",
    "subCategory": "Hinduism",
    "categoryLabel": "Pilgrimage",
    "category": "Pilgrimage",
    "region": "International",
    "image": "/images/tourist-places/pilgrimage/Hinduism/Mount Kailash, Tibet.webp",
    "altText": "Mount Kailash hindu pilgrimage destination in Ngari, Tibet",
    "duration": "3 Days / 2 Nights",
    "bestSeason": "October–March",
    "pace": "Moderate",
    "travellerType": "Senior Friendly",
    "description": "A thoughtfully planned hindu pilgrimage offering comfort, guidance, and a memorable experience.",
    "price": 22900,
    "rating": null,
    "reviewCount": null,
    "seatsLeft": null,
    "recentBookings": null,
    "verified": null,
    "tags": [
      "Pilgrimage",
      "Curated Journey"
    ],
    "seniorFriendly": true,
    "wheelchairAccess": true,
    "vegMeals": true,
    "inclusions": {
      "hotel": true,
      "meals": true,
      "transit": true,
      "guide": true,
      "entryPasses": true,
      "medicalSupport": false,
      "localExperience": false
    },
    "itinerary": [
      {
        "day": 1,
        "title": "Arrival in Ngari: Traditional Ceremony & Quiet Reflection",
        "location": "Ngari",
        "overview": "Begin your sacred yatra as you arrive in Ngari. Check into your room at Boutique Lakefront Haveli in Ngari and receive a brief orientation before evening prayers.",
        "schedule": {
          "morning": {
            "title": "Arrival & Escorted Transfer in Ngari",
            "description": "Meet our local travel escort at Ngari transit hub. Receive a traditional welcome and transfer to Boutique Lakefront Haveli in Ngari."
          },
          "afternoon": {
            "title": "Unpack & Courtyard Leisure at Ngari",
            "description": "Check into your sanitized room, unpack your luggage, and enjoy quiet leisure time exploring hotel gardens and facilities."
          },
          "evening": {
            "title": "Traditional Ceremony & Quiet Reflection at Mount Kailash",
            "description": "Attend solemn evening prayer assembly near Mount Kailash. Float earthen lamps and soak in peaceful chanting."
          }
        },
        "details": {
          "importantTimings": "Boat Departure: 6:00 AM | Heritage Show: 7:00 PM",
          "meals": "100% Satvik Pure Veg Breakfast & Temple Prasadam Dinner.",
          "transport": "AC Private Chauffeur Vehicle",
          "walkingLevel": "Easy Paced (Flat temple paths, seating available)",
          "stay": "Boutique Lakefront Haveli in Ngari",
          "weather": "Refreshing river mist with mild sun 23°C",
          "dressCode": "Modest traditional attire (shoulders & knees covered)",
          "packingSuggestions": "Breathable linen wear, sunglasses, small currency notes for local shops.",
          "accessibility": "Wheelchair ramps & low step entry vehicle",
          "visitorNote": "Escort coordinator will brief you on timing for Mount Kailash visit.",
          "travelDuration": "Approx 1 to 2 hours transfer"
        }
      },
      {
        "day": 2,
        "title": "Breakfast & Exploration of Mount Kailash",
        "location": "Ngari",
        "overview": "A deep dive into Mount Kailash. Tour inner sanctums, historical galleries, and architectural viewpoints accompanied by an expert guide.",
        "schedule": {
          "morning": {
            "title": "Guided Tour of Mount Kailash",
            "description": "Early morning entry to Mount Kailash. Walk through central courtyards, ancient corridors, and historic halls."
          },
          "afternoon": {
            "title": "Excursion to Surrounding Haveli & Gardens near Ngari",
            "description": "Taste authentic local regional cuisine. Visit local artisan markets specializing in handcrafts native to Tibet."
          },
          "evening": {
            "title": "Sunset Viewpoint & Cultural Evening",
            "description": "Head to the highest scenic viewpoint overlooking Mount Kailash. Capture sunset photographs followed by evening entertainment."
          }
        },
        "details": {
          "importantTimings": "Boat Departure: 6:00 AM | Heritage Show: 7:00 PM",
          "meals": "Welcome Tender Coconut & Traditional Satvik Thali.",
          "transport": "AC Private Sedan / SUV",
          "walkingLevel": "Moderate (Historical walkways & corridors)",
          "stay": "Boutique Lakefront Haveli in Ngari",
          "weather": "Refreshing river mist with mild sun 23°C",
          "dressCode": "Traditional attire",
          "packingSuggestions": "Sunhat, sunglasses, comfortable walking shoes, light jacket, camera.",
          "accessibility": "Assistive ramps available at main portals",
          "visitorNote": "Follow local heritage guidelines inside Mount Kailash.",
          "travelDuration": "Full day sightseeing approx 5 to 6 hours"
        }
      },
      {
        "day": 3,
        "title": "Souvenir Shopping & Onward Departure from Ngari",
        "location": "Ngari",
        "overview": "Conclude your trip to Mount Kailash with morning shopping for local delicacies and souvenirs, followed by departure transfer.",
        "schedule": {
          "morning": {
            "title": "Handicrafts & Sweet Market Visit",
            "description": "Visit trusted local bazaar stalls to buy regional spices, handmade crafts, and traditional sweets of Ngari."
          },
          "afternoon": {
            "title": "Hotel Checkout & Farewell Lunch",
            "description": "Return to hotel for packing and checkout. Enjoy a farewell lunch before your transfer."
          },
          "evening": {
            "title": "Outbound Departure Transfer",
            "description": "Chauffeur drop to Ngari Airport or Railway Station for your onward journey home."
          }
        },
        "details": {
          "importantTimings": "Checkout: 12:00 PM | Transfer: As per flight/train",
          "meals": "Breakfast & Farewell Lunch included.",
          "transport": "AC Private Transfer Vehicle",
          "walkingLevel": "Easy Paced",
          "stay": "N/A (Day of departure)",
          "weather": "Refreshing river mist with mild sun 23°C",
          "dressCode": "Comfortable travel wear",
          "packingSuggestions": "Check-in luggage packed, photo ID ready.",
          "accessibility": "Accessible vehicles",
          "visitorNote": "Arrive at Ngari station/airport 2 hours prior to departure.",
          "travelDuration": "Approx 1 hour transfer"
        }
      }
    ],
    "durationDays": 3,
    "durationLabel": "3 Days / 2 Nights",
    "travellerTypes": [
      "Pilgrims",
      "Seniors"
    ],
    "accessibilityStatus": "Partial Accessibility",
    "childFriendly": true,
    "packageBenefits": [
      "Darshan Assistance",
      "Satvik Meal Option"
    ],
    "highlights": [
      "Spiritual darshan and guided temple tour in Mount Kailash",
      "Experience peaceful aarti assemblies and sacred rituals",
      "Comfortable transfers to all holy sites"
    ],
    "tips": [
      "Carry valid government ID cards for verification.",
      "Traditional decency wear is recommended inside temple corridors.",
      "Avoid carrying electronics inside the inner sanctum."
    ],
    "itinerarySummary": [
      "Day 1: Arrival in Ngari: Traditional Ceremony & Quiet Reflection",
      "Day 2: Breakfast & Exploration of Mount Kailash",
      "Day 3: Souvenir Shopping & Onward Departure from Ngari"
    ],
    "cancellationSummary": "Get a 100% full refund on cancellations made up to 15 days before the departure. Rescheduling options are fully flexible."
  },
  {
    "id": "hinduism-rameswaram-india",
    "title": "Rameswaram Journey",
    "destinationName": "Rameswaram",
    "destinations": "Rameswaram (Ramanathapuram, Tamil Nadu, India)",
    "location": "Ramanathapuram, Tamil Nadu, India",
    "route": [
      "Ramanathapuram",
      "Rameswaram"
    ],
    "mainCategory": "Pilgrimage",
    "subCategory": "Hinduism",
    "categoryLabel": "Pilgrimage",
    "category": "Pilgrimage",
    "region": "South India",
    "image": "/images/tourist-places/pilgrimage/Hinduism/Rameswaram, India.jpg",
    "altText": "Rameswaram hindu pilgrimage destination in Ramanathapuram, Tamil Nadu, India",
    "duration": "3 Days / 2 Nights",
    "bestSeason": "November–February",
    "pace": "Easy",
    "travellerType": "Senior Friendly",
    "description": "A thoughtfully planned hindu pilgrimage offering comfort, guidance, and a memorable experience.",
    "price": 14500,
    "rating": null,
    "reviewCount": null,
    "seatsLeft": null,
    "recentBookings": null,
    "verified": null,
    "tags": [
      "Pilgrimage",
      "Curated Journey"
    ],
    "seniorFriendly": true,
    "wheelchairAccess": true,
    "vegMeals": true,
    "inclusions": {
      "hotel": true,
      "meals": true,
      "transit": true,
      "guide": true,
      "entryPasses": true,
      "medicalSupport": false,
      "localExperience": false
    },
    "itinerary": [
      {
        "day": 1,
        "title": "Arrival in Ramanathapuram & Settle-In Tour",
        "location": "Ramanathapuram",
        "overview": "Welcome to Rameswaram! Arrive in Ramanathapuram, check into your accommodation, and enjoy an orientation walk.",
        "schedule": {
          "morning": {
            "title": "Arrival & Escorted Transfer",
            "description": "Arrive at the nearest transit hub in Ramanathapuram. Meet our coordinator and transfer to your hotel."
          },
          "afternoon": {
            "title": "Check-in & Rest",
            "description": "Unpack, freshen up, and relax after your journey in comfortable AC rooms."
          },
          "evening": {
            "title": "Orientation Walk & Welcome Dinner",
            "description": "Stroll through the local neighborhood around Rameswaram and enjoy a fresh welcome dinner."
          }
        },
        "details": {
          "importantTimings": "Check-in: 12:00 PM | Evening Walk: 5:00 PM - 7:00 PM",
          "meals": "Welcome Satvik Drink & Pure Veg Dinner.",
          "transport": "AC Private Transfer Vehicle.",
          "walkingLevel": "Easy Paced (Flat paths, elevator access)",
          "stay": "Pilgrim Comfort Stay near Ramanathapuram",
          "weather": "Pleasant climate 23°C.",
          "dressCode": "Modest clothing covering shoulders and knees.",
          "packingSuggestions": "Comfortable walking shoes, ID card, personal medicine, camera.",
          "accessibility": "Elevator access and flat floor tiles.",
          "visitorNote": "Local coordinator will brief you on timing for tomorrow's main visit.",
          "travelDuration": "Approx 1 to 2 hours transfer"
        }
      },
      {
        "day": 2,
        "title": "Guided Tour of Rameswaram & Holy Temple",
        "location": "Ramanathapuram",
        "overview": "Dedicated exploration day at Rameswaram with expert guided insights into its history, architecture, and significance.",
        "schedule": {
          "morning": {
            "title": "Guided Tour of Rameswaram",
            "description": "Morning visit to Rameswaram to avoid peak crowds. Tour main pavilions, inner courts, and view points."
          },
          "afternoon": {
            "title": "Local Regional Culinary Lunch",
            "description": "Relish authentic regional cuisine at a top-rated local restaurant."
          },
          "evening": {
            "title": "Sunset Viewpoint & Cultural Stroll",
            "description": "Visit the nearby scenic viewpoint over Rameswaram for sunset photos."
          }
        },
        "details": {
          "importantTimings": "Visiting Hours: 8:30 AM - 5:00 PM",
          "meals": "Complimentary Breakfast & Satvik Lunch.",
          "transport": "AC Private Sedan with professional driver.",
          "walkingLevel": "Easy Paced (Guided walking paths)",
          "stay": "Pilgrim Comfort Stay near Ramanathapuram",
          "weather": "Sunny and clear 24°C.",
          "dressCode": "Traditional dress code.",
          "packingSuggestions": "Sunhat, sunglasses, reusable water bottle, camera.",
          "accessibility": "Ramp entry available at main entrance portals.",
          "visitorNote": "Follow local heritage guidelines and photography rules.",
          "travelDuration": "Approx 4 to 5 hours sightseeing"
        }
      },
      {
        "day": 3,
        "title": "Souvenir Shopping & Onward Departure from Ramanathapuram",
        "location": "Tamil Nadu, India",
        "overview": "Conclude your journey at Rameswaram with morning souvenir shopping, checkout, and transfer to airport/station.",
        "schedule": {
          "morning": {
            "title": "Heritage & Nature Excursion",
            "description": "Guided scenic excursion around Ramanathapuram visiting local lakes, gardens, or historical sites."
          },
          "afternoon": {
            "title": "Artisan Workshop & Handloom Visit",
            "description": "Visit native craft centers to see local artisans at work and buy authentic souvenirs."
          },
          "evening": {
            "title": "Outbound Departure Transfer",
            "description": "Chauffeur transfer to airport or railway station for your onward return journey home."
          }
        },
        "details": {
          "importantTimings": "Excursion Departure: 9:00 AM",
          "meals": "Breakfast & Dinner included.",
          "transport": "AC Sightseeing Coach / Sedan.",
          "walkingLevel": "Easy Paced",
          "stay": "Pilgrim Comfort Stay near Ramanathapuram",
          "weather": "Pleasant afternoon 22°C.",
          "dressCode": "Comfortable clothing.",
          "packingSuggestions": "Shopping tote bag, camera, light jacket.",
          "accessibility": "Accessible vehicles.",
          "visitorNote": "Craft items are certified authentic by local co-operatives.",
          "travelDuration": "Approx 4 hours excursion"
        }
      }
    ],
    "durationDays": 3,
    "durationLabel": "3 Days / 2 Nights",
    "travellerTypes": [
      "Pilgrims",
      "Seniors"
    ],
    "accessibilityStatus": "Wheelchair Accessible",
    "childFriendly": true,
    "packageBenefits": [
      "Darshan Assistance",
      "Satvik Meal Option"
    ],
    "highlights": [
      "Spiritual darshan and guided temple tour in Rameswaram",
      "Experience peaceful aarti assemblies and sacred rituals",
      "Comfortable transfers to all holy sites"
    ],
    "tips": [
      "Carry valid government ID cards for verification.",
      "Traditional decency wear is recommended inside temple corridors.",
      "Avoid carrying electronics inside the inner sanctum."
    ],
    "itinerarySummary": [
      "Day 1: Arrival in Ramanathapuram & Settle-In Tour",
      "Day 2: Guided Tour of Rameswaram & Holy Temple",
      "Day 3: Souvenir Shopping & Onward Departure from Ramanathapuram"
    ],
    "cancellationSummary": "Get a 100% full refund on cancellations made up to 15 days before the departure. Rescheduling options are fully flexible."
  },
  {
    "id": "hinduism-somnath-temple-india",
    "title": "Somnath Temple Journey",
    "destinationName": "Somnath Temple",
    "destinations": "Somnath Temple (Prabhas Patan, Gujarat, India)",
    "location": "Prabhas Patan, Gujarat, India",
    "route": [
      "Prabhas Patan",
      "Somnath Temple"
    ],
    "mainCategory": "Pilgrimage",
    "subCategory": "Hinduism",
    "categoryLabel": "Pilgrimage",
    "category": "Pilgrimage",
    "region": "North India",
    "image": "/images/tourist-places/pilgrimage/Hinduism/Somnath Temple, India.jpg",
    "altText": "Somnath Temple hindu pilgrimage destination in Prabhas Patan, Gujarat, India",
    "duration": "3 Days / 2 Nights",
    "bestSeason": "October–March",
    "pace": "Easy",
    "travellerType": "Senior Friendly",
    "description": "A thoughtfully planned hindu pilgrimage offering comfort, guidance, and a memorable experience.",
    "price": 15700,
    "rating": null,
    "reviewCount": null,
    "seatsLeft": null,
    "recentBookings": null,
    "verified": null,
    "tags": [
      "Pilgrimage",
      "Curated Journey"
    ],
    "seniorFriendly": true,
    "wheelchairAccess": true,
    "vegMeals": true,
    "inclusions": {
      "hotel": true,
      "meals": true,
      "transit": true,
      "guide": true,
      "entryPasses": true,
      "medicalSupport": false,
      "localExperience": false
    },
    "itinerary": [
      {
        "day": 1,
        "title": "Arrival in Prabhas Patan: Illuminated Viewpoint & Welcome Feast",
        "location": "Prabhas Patan",
        "overview": "Begin your sacred yatra as you arrive in Prabhas Patan. Check into your room at Luxury Eco Lodge in Prabhas Patan and receive a brief orientation before evening prayers.",
        "schedule": {
          "morning": {
            "title": "Arrival & Escorted Transfer in Prabhas Patan",
            "description": "Meet our local travel escort at Prabhas Patan transit hub. Receive a traditional welcome and transfer to Luxury Eco Lodge in Prabhas Patan."
          },
          "afternoon": {
            "title": "Unpack & Courtyard Leisure at Prabhas Patan",
            "description": "Check into your sanitized room, unpack your luggage, and enjoy quiet leisure time exploring hotel gardens and facilities."
          },
          "evening": {
            "title": "Illuminated Viewpoint & Welcome Feast at Somnath Temple",
            "description": "Attend solemn evening prayer assembly near Somnath Temple. Float earthen lamps and soak in peaceful chanting."
          }
        },
        "details": {
          "importantTimings": "Sanctum VIP Slot: 6:30 AM | Bazaar Hours: 4:00 PM - 8:30 PM",
          "meals": "100% Satvik Pure Veg Breakfast & Temple Prasadam Dinner.",
          "transport": "AC Private Chauffeur Vehicle",
          "walkingLevel": "Easy Paced (Flat temple paths, seating available)",
          "stay": "Luxury Eco Lodge in Prabhas Patan",
          "weather": "Cool crisp morning fog clearing to bright 22°C",
          "dressCode": "Modest traditional attire (shoulders & knees covered)",
          "packingSuggestions": "Traditional headscarf, slip-on shoes, reusable water bottle, dry bag.",
          "accessibility": "Wheelchair ramps & low step entry vehicle",
          "visitorNote": "Escort coordinator will brief you on timing for Somnath Temple visit.",
          "travelDuration": "Approx 1 to 2 hours transfer"
        }
      },
      {
        "day": 2,
        "title": "Uncovering the Secrets of Somnath Temple",
        "location": "Prabhas Patan",
        "overview": "A deep dive into Somnath Temple. Tour inner sanctums, historical galleries, and architectural viewpoints accompanied by an expert guide.",
        "schedule": {
          "morning": {
            "title": "Guided Tour of Somnath Temple",
            "description": "Early morning entry to Somnath Temple. Walk through central courtyards, ancient corridors, and historic halls."
          },
          "afternoon": {
            "title": "Boat Ride & Riverfront Exploration near Prabhas Patan",
            "description": "Taste authentic local regional cuisine. Visit local artisan markets specializing in handcrafts native to Gujarat, India."
          },
          "evening": {
            "title": "Sunset Viewpoint & Cultural Evening",
            "description": "Head to the highest scenic viewpoint overlooking Somnath Temple. Capture sunset photographs followed by evening entertainment."
          }
        },
        "details": {
          "importantTimings": "Sanctum VIP Slot: 6:30 AM | Bazaar Hours: 4:00 PM - 8:30 PM",
          "meals": "Welcome Tender Coconut & Traditional Satvik Thali.",
          "transport": "AC Private Sedan / SUV",
          "walkingLevel": "Moderate (Historical walkways & corridors)",
          "stay": "Luxury Eco Lodge in Prabhas Patan",
          "weather": "Cool crisp morning fog clearing to bright 22°C",
          "dressCode": "Traditional attire",
          "packingSuggestions": "Light cotton wear, camera with telephoto lens, sunscreen lotion, photo ID.",
          "accessibility": "Assistive ramps available at main portals",
          "visitorNote": "Follow local heritage guidelines inside Somnath Temple.",
          "travelDuration": "Full day sightseeing approx 5 to 6 hours"
        }
      },
      {
        "day": 3,
        "title": "Souvenir Shopping & Onward Departure from Prabhas Patan",
        "location": "Prabhas Patan",
        "overview": "Conclude your trip to Somnath Temple with morning shopping for local delicacies and souvenirs, followed by departure transfer.",
        "schedule": {
          "morning": {
            "title": "Handicrafts & Sweet Market Visit",
            "description": "Visit trusted local bazaar stalls to buy regional spices, handmade crafts, and traditional sweets of Prabhas Patan."
          },
          "afternoon": {
            "title": "Hotel Checkout & Farewell Lunch",
            "description": "Return to hotel for packing and checkout. Enjoy a farewell lunch before your transfer."
          },
          "evening": {
            "title": "Outbound Departure Transfer",
            "description": "Chauffeur drop to Prabhas Patan Airport or Railway Station for your onward journey home."
          }
        },
        "details": {
          "importantTimings": "Checkout: 12:00 PM | Transfer: As per flight/train",
          "meals": "Breakfast & Farewell Lunch included.",
          "transport": "AC Private Transfer Vehicle",
          "walkingLevel": "Easy Paced",
          "stay": "N/A (Day of departure)",
          "weather": "Cool crisp morning fog clearing to bright 22°C",
          "dressCode": "Comfortable travel wear",
          "packingSuggestions": "Check-in luggage packed, photo ID ready.",
          "accessibility": "Accessible vehicles",
          "visitorNote": "Arrive at Prabhas Patan station/airport 2 hours prior to departure.",
          "travelDuration": "Approx 1 hour transfer"
        }
      }
    ],
    "durationDays": 3,
    "durationLabel": "3 Days / 2 Nights",
    "travellerTypes": [
      "Pilgrims",
      "Seniors"
    ],
    "accessibilityStatus": "Wheelchair Accessible",
    "childFriendly": true,
    "packageBenefits": [
      "Darshan Assistance",
      "Satvik Meal Option"
    ],
    "highlights": [
      "Spiritual darshan and guided temple tour in Somnath Temple",
      "Experience peaceful aarti assemblies and sacred rituals",
      "Comfortable transfers to all holy sites"
    ],
    "tips": [
      "Carry valid government ID cards for verification.",
      "Traditional decency wear is recommended inside temple corridors.",
      "Avoid carrying electronics inside the inner sanctum."
    ],
    "itinerarySummary": [
      "Day 1: Arrival in Prabhas Patan: Illuminated Viewpoint & Welcome Feast",
      "Day 2: Uncovering the Secrets of Somnath Temple",
      "Day 3: Souvenir Shopping & Onward Departure from Prabhas Patan"
    ],
    "cancellationSummary": "Get a 100% full refund on cancellations made up to 15 days before the departure. Rescheduling options are fully flexible."
  },
  {
    "id": "hinduism-tirupati-balaji-temple-india",
    "title": "Tirupati Balaji Temple Journey",
    "destinationName": "Tirupati Balaji Temple",
    "destinations": "Tirupati Balaji Temple (Tirupati, Andhra Pradesh, India)",
    "location": "Tirupati, Andhra Pradesh, India",
    "route": [
      "Tirupati",
      "Tirupati Balaji Temple"
    ],
    "mainCategory": "Pilgrimage",
    "subCategory": "Hinduism",
    "categoryLabel": "Pilgrimage",
    "category": "Pilgrimage",
    "region": "South India",
    "image": "/images/tourist-places/pilgrimage/Hinduism/Tirupati Balaji Temple, India.webp",
    "altText": "Tirupati Balaji Temple hindu pilgrimage destination in Tirupati, Andhra Pradesh, India",
    "duration": "3 Days / 2 Nights",
    "bestSeason": "November–February",
    "pace": "Easy",
    "travellerType": "Senior Friendly",
    "description": "A thoughtfully planned hindu pilgrimage offering comfort, guidance, and a memorable experience.",
    "price": 16900,
    "rating": null,
    "reviewCount": null,
    "seatsLeft": null,
    "recentBookings": null,
    "verified": null,
    "tags": [
      "Pilgrimage",
      "Curated Journey"
    ],
    "seniorFriendly": true,
    "wheelchairAccess": true,
    "vegMeals": true,
    "inclusions": {
      "hotel": true,
      "meals": true,
      "transit": true,
      "guide": true,
      "entryPasses": true,
      "medicalSupport": false,
      "localExperience": false
    },
    "itinerary": [
      {
        "day": 1,
        "title": "Escorted Arrival in Tirupati & Tirupati Balaji Temple Gateway",
        "location": "Tirupati",
        "overview": "Begin your sacred yatra as you arrive in Tirupati. Check into your room at Grand Riverfront Resort near Tirupati Balaji Temple and receive a brief orientation before evening prayers.",
        "schedule": {
          "morning": {
            "title": "Arrival & Escorted Transfer in Tirupati",
            "description": "Meet our local travel escort at Tirupati transit hub. Receive a traditional welcome and transfer to Grand Riverfront Resort near Tirupati Balaji Temple."
          },
          "afternoon": {
            "title": "Unpack & Courtyard Leisure at Tirupati",
            "description": "Check into your sanitized room, unpack your luggage, and enjoy quiet leisure time exploring hotel gardens and facilities."
          },
          "evening": {
            "title": "Cultural Folk Performance & Dinner at Tirupati Balaji Temple",
            "description": "Attend solemn evening prayer assembly near Tirupati Balaji Temple. Float earthen lamps and soak in peaceful chanting."
          }
        },
        "details": {
          "importantTimings": "Sunrise Tour: 5:45 AM | Museum Hours: 9:30 AM - 5:00 PM",
          "meals": "100% Satvik Pure Veg Breakfast & Temple Prasadam Dinner.",
          "transport": "AC Private Chauffeur Vehicle",
          "walkingLevel": "Easy Paced (Flat temple paths, seating available)",
          "stay": "Grand Riverfront Resort near Tirupati Balaji Temple",
          "weather": "Warm tropical sunshine with ocean breeze 27°C",
          "dressCode": "Modest traditional attire (shoulders & knees covered)",
          "packingSuggestions": "Light cotton wear, camera with telephoto lens, sunscreen lotion, photo ID.",
          "accessibility": "Wheelchair ramps & low step entry vehicle",
          "visitorNote": "Escort coordinator will brief you on timing for Tirupati Balaji Temple visit.",
          "travelDuration": "Approx 1 to 2 hours transfer"
        }
      },
      {
        "day": 2,
        "title": "Spiritual Morning Prayers at Tirupati Balaji Temple",
        "location": "Tirupati",
        "overview": "A deep dive into Tirupati Balaji Temple. Tour inner sanctums, historical galleries, and architectural viewpoints accompanied by an expert guide.",
        "schedule": {
          "morning": {
            "title": "Guided Tour of Tirupati Balaji Temple",
            "description": "Early morning entry to Tirupati Balaji Temple. Walk through central courtyards, ancient corridors, and historic halls."
          },
          "afternoon": {
            "title": "Artisan Handloom Workshop & Souvenirs near Tirupati",
            "description": "Taste authentic local regional cuisine. Visit local artisan markets specializing in handcrafts native to Andhra Pradesh, India."
          },
          "evening": {
            "title": "Sunset Viewpoint & Cultural Evening",
            "description": "Head to the highest scenic viewpoint overlooking Tirupati Balaji Temple. Capture sunset photographs followed by evening entertainment."
          }
        },
        "details": {
          "importantTimings": "Sunrise Tour: 5:45 AM | Museum Hours: 9:30 AM - 5:00 PM",
          "meals": "Welcome Tender Coconut & Traditional Satvik Thali.",
          "transport": "AC Private Sedan / SUV",
          "walkingLevel": "Moderate (Historical walkways & corridors)",
          "stay": "Grand Riverfront Resort near Tirupati Balaji Temple",
          "weather": "Warm tropical sunshine with ocean breeze 27°C",
          "dressCode": "Traditional attire",
          "packingSuggestions": "Comfortable walking socks, power bank, shoulder shawl, daypack.",
          "accessibility": "Assistive ramps available at main portals",
          "visitorNote": "Follow local heritage guidelines inside Tirupati Balaji Temple.",
          "travelDuration": "Full day sightseeing approx 5 to 6 hours"
        }
      },
      {
        "day": 3,
        "title": "Souvenir Shopping & Onward Departure from Tirupati",
        "location": "Tirupati",
        "overview": "Conclude your trip to Tirupati Balaji Temple with morning shopping for local delicacies and souvenirs, followed by departure transfer.",
        "schedule": {
          "morning": {
            "title": "Handicrafts & Sweet Market Visit",
            "description": "Visit trusted local bazaar stalls to buy regional spices, handmade crafts, and traditional sweets of Tirupati."
          },
          "afternoon": {
            "title": "Hotel Checkout & Farewell Lunch",
            "description": "Return to hotel for packing and checkout. Enjoy a farewell lunch before your transfer."
          },
          "evening": {
            "title": "Outbound Departure Transfer",
            "description": "Chauffeur drop to Tirupati Airport or Railway Station for your onward journey home."
          }
        },
        "details": {
          "importantTimings": "Checkout: 12:00 PM | Transfer: As per flight/train",
          "meals": "Breakfast & Farewell Lunch included.",
          "transport": "AC Private Transfer Vehicle",
          "walkingLevel": "Easy Paced",
          "stay": "N/A (Day of departure)",
          "weather": "Warm tropical sunshine with ocean breeze 27°C",
          "dressCode": "Comfortable travel wear",
          "packingSuggestions": "Check-in luggage packed, photo ID ready.",
          "accessibility": "Accessible vehicles",
          "visitorNote": "Arrive at Tirupati station/airport 2 hours prior to departure.",
          "travelDuration": "Approx 1 hour transfer"
        }
      }
    ],
    "durationDays": 3,
    "durationLabel": "3 Days / 2 Nights",
    "travellerTypes": [
      "Pilgrims",
      "Seniors"
    ],
    "accessibilityStatus": "Wheelchair Accessible",
    "childFriendly": true,
    "packageBenefits": [
      "Darshan Assistance",
      "Satvik Meal Option"
    ],
    "highlights": [
      "Spiritual darshan and guided temple tour in Tirupati Balaji Temple",
      "Experience peaceful aarti assemblies and sacred rituals",
      "Comfortable transfers to all holy sites"
    ],
    "tips": [
      "Carry valid government ID cards for verification.",
      "Traditional decency wear is recommended inside temple corridors.",
      "Avoid carrying electronics inside the inner sanctum."
    ],
    "itinerarySummary": [
      "Day 1: Escorted Arrival in Tirupati & Tirupati Balaji Temple Gateway",
      "Day 2: Spiritual Morning Prayers at Tirupati Balaji Temple",
      "Day 3: Souvenir Shopping & Onward Departure from Tirupati"
    ],
    "cancellationSummary": "Get a 100% full refund on cancellations made up to 15 days before the departure. Rescheduling options are fully flexible."
  },
  {
    "id": "hinduism-trimbakeshwar-temple-nashik-india",
    "title": "Trimbakeshwar Temple Journey",
    "destinationName": "Trimbakeshwar Temple",
    "destinations": "Trimbakeshwar Temple (Nashik, Maharashtra, India)",
    "location": "Nashik, Maharashtra, India",
    "route": [
      "Nashik",
      "Trimbakeshwar Temple"
    ],
    "mainCategory": "Pilgrimage",
    "subCategory": "Hinduism",
    "categoryLabel": "Pilgrimage",
    "category": "Pilgrimage",
    "region": "Maharashtra",
    "image": "/images/tourist-places/pilgrimage/Hinduism/Trimbakeshwar Temple (Nashik), India.jpg",
    "altText": "Trimbakeshwar Temple hindu pilgrimage destination in Nashik, Maharashtra, India",
    "duration": "3 Days / 2 Nights",
    "bestSeason": "October–March",
    "pace": "Easy",
    "travellerType": "Senior Friendly",
    "description": "A thoughtfully planned hindu pilgrimage offering comfort, guidance, and a memorable experience.",
    "price": 18100,
    "rating": null,
    "reviewCount": null,
    "seatsLeft": null,
    "recentBookings": null,
    "verified": null,
    "tags": [
      "Pilgrimage",
      "Curated Journey"
    ],
    "seniorFriendly": true,
    "wheelchairAccess": true,
    "vegMeals": true,
    "inclusions": {
      "hotel": true,
      "meals": true,
      "transit": true,
      "guide": true,
      "entryPasses": true,
      "medicalSupport": false,
      "localExperience": false
    },
    "itinerary": [
      {
        "day": 1,
        "title": "Arrival in Nashik: Riverside Aarti & Evening Tea",
        "location": "Nashik",
        "overview": "Begin your sacred yatra as you arrive in Nashik. Check into your room at Vedic Pilgrim Ashram Stay in Nashik and receive a brief orientation before evening prayers.",
        "schedule": {
          "morning": {
            "title": "Arrival & Escorted Transfer in Nashik",
            "description": "Meet our local travel escort at Nashik transit hub. Receive a traditional welcome and transfer to Vedic Pilgrim Ashram Stay in Nashik."
          },
          "afternoon": {
            "title": "Unpack & Courtyard Leisure at Nashik",
            "description": "Check into your sanitized room, unpack your luggage, and enjoy quiet leisure time exploring hotel gardens and facilities."
          },
          "evening": {
            "title": "Riverside Aarti & Evening Tea at Trimbakeshwar Temple",
            "description": "Attend solemn evening prayer assembly near Trimbakeshwar Temple. Float earthen lamps and soak in peaceful chanting."
          }
        },
        "details": {
          "importantTimings": "Guided Walk: 9:00 AM | Sunset Point Departure: 5:15 PM",
          "meals": "100% Satvik Pure Veg Breakfast & Temple Prasadam Dinner.",
          "transport": "AC Private Chauffeur Vehicle",
          "walkingLevel": "Easy Paced (Flat temple paths, seating available)",
          "stay": "Vedic Pilgrim Ashram Stay in Nashik",
          "weather": "Crisp mountain climate, clear blue skies 19°C",
          "dressCode": "Modest traditional attire (shoulders & knees covered)",
          "packingSuggestions": "Comfortable walking socks, power bank, shoulder shawl, daypack.",
          "accessibility": "Wheelchair ramps & low step entry vehicle",
          "visitorNote": "Escort coordinator will brief you on timing for Trimbakeshwar Temple visit.",
          "travelDuration": "Approx 1 to 2 hours transfer"
        }
      },
      {
        "day": 2,
        "title": "Architectural Tour of Trimbakeshwar Temple",
        "location": "Nashik",
        "overview": "A deep dive into Trimbakeshwar Temple. Tour inner sanctums, historical galleries, and architectural viewpoints accompanied by an expert guide.",
        "schedule": {
          "morning": {
            "title": "Guided Tour of Trimbakeshwar Temple",
            "description": "Early morning entry to Trimbakeshwar Temple. Walk through central courtyards, ancient corridors, and historic halls."
          },
          "afternoon": {
            "title": "Scenic Valley Drive & Photo Stops near Nashik",
            "description": "Taste authentic local regional cuisine. Visit local artisan markets specializing in handcrafts native to Maharashtra, India."
          },
          "evening": {
            "title": "Sunset Viewpoint & Cultural Evening",
            "description": "Head to the highest scenic viewpoint overlooking Trimbakeshwar Temple. Capture sunset photographs followed by evening entertainment."
          }
        },
        "details": {
          "importantTimings": "Guided Walk: 9:00 AM | Sunset Point Departure: 5:15 PM",
          "meals": "Welcome Tender Coconut & Traditional Satvik Thali.",
          "transport": "AC Private Sedan / SUV",
          "walkingLevel": "Moderate (Historical walkways & corridors)",
          "stay": "Vedic Pilgrim Ashram Stay in Nashik",
          "weather": "Crisp mountain climate, clear blue skies 19°C",
          "dressCode": "Traditional attire",
          "packingSuggestions": "Breathable linen wear, sunglasses, small currency notes for local shops.",
          "accessibility": "Assistive ramps available at main portals",
          "visitorNote": "Follow local heritage guidelines inside Trimbakeshwar Temple.",
          "travelDuration": "Full day sightseeing approx 5 to 6 hours"
        }
      },
      {
        "day": 3,
        "title": "Souvenir Shopping & Onward Departure from Nashik",
        "location": "Nashik",
        "overview": "Conclude your trip to Trimbakeshwar Temple with morning shopping for local delicacies and souvenirs, followed by departure transfer.",
        "schedule": {
          "morning": {
            "title": "Handicrafts & Sweet Market Visit",
            "description": "Visit trusted local bazaar stalls to buy regional spices, handmade crafts, and traditional sweets of Nashik."
          },
          "afternoon": {
            "title": "Hotel Checkout & Farewell Lunch",
            "description": "Return to hotel for packing and checkout. Enjoy a farewell lunch before your transfer."
          },
          "evening": {
            "title": "Outbound Departure Transfer",
            "description": "Chauffeur drop to Nashik Airport or Railway Station for your onward journey home."
          }
        },
        "details": {
          "importantTimings": "Checkout: 12:00 PM | Transfer: As per flight/train",
          "meals": "Breakfast & Farewell Lunch included.",
          "transport": "AC Private Transfer Vehicle",
          "walkingLevel": "Easy Paced",
          "stay": "N/A (Day of departure)",
          "weather": "Crisp mountain climate, clear blue skies 19°C",
          "dressCode": "Comfortable travel wear",
          "packingSuggestions": "Check-in luggage packed, photo ID ready.",
          "accessibility": "Accessible vehicles",
          "visitorNote": "Arrive at Nashik station/airport 2 hours prior to departure.",
          "travelDuration": "Approx 1 hour transfer"
        }
      }
    ],
    "durationDays": 3,
    "durationLabel": "3 Days / 2 Nights",
    "travellerTypes": [
      "Pilgrims",
      "Seniors"
    ],
    "accessibilityStatus": "Wheelchair Accessible",
    "childFriendly": true,
    "packageBenefits": [
      "Darshan Assistance",
      "Satvik Meal Option"
    ],
    "highlights": [
      "Spiritual darshan and guided temple tour in Trimbakeshwar Temple",
      "Experience peaceful aarti assemblies and sacred rituals",
      "Comfortable transfers to all holy sites"
    ],
    "tips": [
      "Carry valid government ID cards for verification.",
      "Traditional decency wear is recommended inside temple corridors.",
      "Avoid carrying electronics inside the inner sanctum."
    ],
    "itinerarySummary": [
      "Day 1: Arrival in Nashik: Riverside Aarti & Evening Tea",
      "Day 2: Architectural Tour of Trimbakeshwar Temple",
      "Day 3: Souvenir Shopping & Onward Departure from Nashik"
    ],
    "cancellationSummary": "Get a 100% full refund on cancellations made up to 15 days before the departure. Rescheduling options are fully flexible."
  },
  {
    "id": "hinduism-vaishno-devi-india",
    "title": "Vaishno Devi Journey",
    "destinationName": "Vaishno Devi",
    "destinations": "Vaishno Devi (Katra, Jammu & Kashmir, India)",
    "location": "Katra, Jammu & Kashmir, India",
    "route": [
      "Katra",
      "Vaishno Devi"
    ],
    "mainCategory": "Pilgrimage",
    "subCategory": "Hinduism",
    "categoryLabel": "Pilgrimage",
    "category": "Pilgrimage",
    "region": "North India",
    "image": "/images/tourist-places/pilgrimage/Hinduism/Vaishno Devi, India.jpg",
    "altText": "Vaishno Devi hindu pilgrimage destination in Katra, Jammu & Kashmir, India",
    "duration": "3 Days / 2 Nights",
    "bestSeason": "March–June",
    "pace": "Active",
    "travellerType": "Senior Friendly",
    "description": "A thoughtfully planned hindu pilgrimage offering comfort, guidance, and a memorable experience.",
    "price": 19300,
    "rating": null,
    "reviewCount": null,
    "seatsLeft": null,
    "recentBookings": null,
    "verified": null,
    "tags": [
      "Pilgrimage",
      "Curated Journey"
    ],
    "seniorFriendly": false,
    "wheelchairAccess": false,
    "vegMeals": true,
    "inclusions": {
      "hotel": true,
      "meals": true,
      "transit": true,
      "guide": true,
      "entryPasses": true,
      "medicalSupport": true,
      "localExperience": false
    },
    "itinerary": [
      {
        "day": 1,
        "title": "Scenic Drive to Katra & Vaishno Devi Gateway",
        "location": "Katra",
        "overview": "Begin your sacred yatra as you arrive in Katra. Check into your room at Boutique Star Hotel in Katra and receive a brief orientation before evening prayers.",
        "schedule": {
          "morning": {
            "title": "Arrival & Escorted Transfer in Katra",
            "description": "Meet our local travel escort at Katra transit hub. Receive a traditional welcome and transfer to Boutique Star Hotel in Katra."
          },
          "afternoon": {
            "title": "Unpack & Courtyard Leisure at Katra",
            "description": "Check into your sanitized room, unpack your luggage, and enjoy quiet leisure time exploring hotel gardens and facilities."
          },
          "evening": {
            "title": "Skyline Sunset & Regional Delicacies at Vaishno Devi",
            "description": "Attend solemn evening prayer assembly near Vaishno Devi. Float earthen lamps and soak in peaceful chanting."
          }
        },
        "details": {
          "importantTimings": "Boat Departure: 6:00 AM | Heritage Show: 7:00 PM",
          "meals": "100% Satvik Pure Veg Breakfast & Temple Prasadam Dinner.",
          "transport": "AC Private Chauffeur Vehicle",
          "walkingLevel": "Easy Paced (Flat temple paths, seating available)",
          "stay": "Boutique Star Hotel in Katra",
          "weather": "Refreshing river mist with mild sun 23°C",
          "dressCode": "Modest traditional attire (shoulders & knees covered)",
          "packingSuggestions": "Breathable linen wear, sunglasses, small currency notes for local shops.",
          "accessibility": "Wheelchair ramps & low step entry vehicle",
          "visitorNote": "Escort coordinator will brief you on timing for Vaishno Devi visit.",
          "travelDuration": "Approx 1 to 2 hours transfer"
        }
      },
      {
        "day": 2,
        "title": "Dawn Guided Expedition of Vaishno Devi",
        "location": "Katra",
        "overview": "A deep dive into Vaishno Devi. Tour inner sanctums, historical galleries, and architectural viewpoints accompanied by an expert guide.",
        "schedule": {
          "morning": {
            "title": "Guided Tour of Vaishno Devi",
            "description": "Early morning entry to Vaishno Devi. Walk through central courtyards, ancient corridors, and historic halls."
          },
          "afternoon": {
            "title": "Sacred Shrine Darshan & Temple Complex near Katra",
            "description": "Taste authentic local regional cuisine. Visit local artisan markets specializing in handcrafts native to Jammu & Kashmir, India."
          },
          "evening": {
            "title": "Sunset Viewpoint & Cultural Evening",
            "description": "Head to the highest scenic viewpoint overlooking Vaishno Devi. Capture sunset photographs followed by evening entertainment."
          }
        },
        "details": {
          "importantTimings": "Boat Departure: 6:00 AM | Heritage Show: 7:00 PM",
          "meals": "Welcome Tender Coconut & Traditional Satvik Thali.",
          "transport": "AC Private Sedan / SUV",
          "walkingLevel": "Moderate (Historical walkways & corridors)",
          "stay": "Boutique Star Hotel in Katra",
          "weather": "Refreshing river mist with mild sun 23°C",
          "dressCode": "Traditional attire",
          "packingSuggestions": "Sunhat, sunglasses, comfortable walking shoes, light jacket, camera.",
          "accessibility": "Assistive ramps available at main portals",
          "visitorNote": "Follow local heritage guidelines inside Vaishno Devi.",
          "travelDuration": "Full day sightseeing approx 5 to 6 hours"
        }
      },
      {
        "day": 3,
        "title": "Souvenir Shopping & Onward Departure from Katra",
        "location": "Katra",
        "overview": "Conclude your trip to Vaishno Devi with morning shopping for local delicacies and souvenirs, followed by departure transfer.",
        "schedule": {
          "morning": {
            "title": "Handicrafts & Sweet Market Visit",
            "description": "Visit trusted local bazaar stalls to buy regional spices, handmade crafts, and traditional sweets of Katra."
          },
          "afternoon": {
            "title": "Hotel Checkout & Farewell Lunch",
            "description": "Return to hotel for packing and checkout. Enjoy a farewell lunch before your transfer."
          },
          "evening": {
            "title": "Outbound Departure Transfer",
            "description": "Chauffeur drop to Katra Airport or Railway Station for your onward journey home."
          }
        },
        "details": {
          "importantTimings": "Checkout: 12:00 PM | Transfer: As per flight/train",
          "meals": "Breakfast & Farewell Lunch included.",
          "transport": "AC Private Transfer Vehicle",
          "walkingLevel": "Easy Paced",
          "stay": "N/A (Day of departure)",
          "weather": "Refreshing river mist with mild sun 23°C",
          "dressCode": "Comfortable travel wear",
          "packingSuggestions": "Check-in luggage packed, photo ID ready.",
          "accessibility": "Accessible vehicles",
          "visitorNote": "Arrive at Katra station/airport 2 hours prior to departure.",
          "travelDuration": "Approx 1 hour transfer"
        }
      }
    ],
    "durationDays": 3,
    "durationLabel": "3 Days / 2 Nights",
    "travellerTypes": [
      "Pilgrims",
      "Seniors"
    ],
    "accessibilityStatus": "Not Wheelchair Accessible",
    "childFriendly": false,
    "packageBenefits": [
      "Darshan Assistance",
      "Satvik Meal Option"
    ],
    "highlights": [
      "Spiritual darshan and guided temple tour in Vaishno Devi",
      "Experience peaceful aarti assemblies and sacred rituals",
      "Comfortable transfers to all holy sites"
    ],
    "tips": [
      "Carry valid government ID cards for verification.",
      "Traditional decency wear is recommended inside temple corridors.",
      "Avoid carrying electronics inside the inner sanctum."
    ],
    "itinerarySummary": [
      "Day 1: Scenic Drive to Katra & Vaishno Devi Gateway",
      "Day 2: Dawn Guided Expedition of Vaishno Devi",
      "Day 3: Souvenir Shopping & Onward Departure from Katra"
    ],
    "cancellationSummary": "Get a 100% full refund on cancellations made up to 15 days before the departure. Rescheduling options are fully flexible."
  },
  {
    "id": "buddhism-adam-s-peak-sri-pada-sri-lanka",
    "title": "Adam’s Peak (Sri Pada) Journey",
    "destinationName": "Adam’s Peak (Sri Pada)",
    "destinations": "Adam’s Peak (Sri Pada) (Ratnapura, Sri Lanka)",
    "location": "Ratnapura, Sri Lanka",
    "route": [
      "Ratnapura",
      "Adam’s Peak (Sri Pada)"
    ],
    "mainCategory": "Pilgrimage",
    "subCategory": "Buddhism",
    "categoryLabel": "Pilgrimage",
    "category": "Pilgrimage",
    "region": "International",
    "image": "/images/tourist-places/pilgrimage/Buddhism/Adam’s Peak (Sri Pada), Sri Lanka.jpg",
    "altText": "Adam’s Peak (Sri Pada) buddhist pilgrimage destination in Ratnapura, Sri Lanka",
    "duration": "3 Days / 2 Nights",
    "bestSeason": "October–March",
    "pace": "Easy",
    "travellerType": "Senior Friendly",
    "description": "A thoughtfully planned buddhist pilgrimage offering comfort, guidance, and a memorable experience.",
    "price": 14500,
    "rating": null,
    "reviewCount": null,
    "seatsLeft": null,
    "recentBookings": null,
    "verified": null,
    "tags": [
      "Pilgrimage",
      "Curated Journey"
    ],
    "seniorFriendly": true,
    "wheelchairAccess": true,
    "vegMeals": true,
    "inclusions": {
      "hotel": true,
      "meals": true,
      "transit": true,
      "guide": true,
      "entryPasses": true,
      "medicalSupport": false,
      "localExperience": false
    },
    "itinerary": [
      {
        "day": 1,
        "title": "Arrival in Ratnapura: Candlelight Dinner & Courtyard Music",
        "location": "Ratnapura",
        "overview": "Begin your sacred yatra as you arrive in Ratnapura. Check into your room at Hilltop Panorama Resort near Adam’s Peak (Sri Pada) and receive a brief orientation before evening prayers.",
        "schedule": {
          "morning": {
            "title": "Arrival & Escorted Transfer in Ratnapura",
            "description": "Meet our local travel escort at Ratnapura transit hub. Receive a traditional welcome and transfer to Hilltop Panorama Resort near Adam’s Peak (Sri Pada)."
          },
          "afternoon": {
            "title": "Unpack & Courtyard Leisure at Ratnapura",
            "description": "Check into your sanitized room, unpack your luggage, and enjoy quiet leisure time exploring hotel gardens and facilities."
          },
          "evening": {
            "title": "Candlelight Dinner & Courtyard Music at Adam’s Peak (Sri Pada)",
            "description": "Attend solemn evening prayer assembly near Adam’s Peak (Sri Pada). Float earthen lamps and soak in peaceful chanting."
          }
        },
        "details": {
          "importantTimings": "Gate Entry: 8:00 AM | Evening Light Show: 6:30 PM",
          "meals": "100% Satvik Pure Veg Breakfast & Temple Prasadam Dinner.",
          "transport": "AC Private Chauffeur Vehicle",
          "walkingLevel": "Easy Paced (Flat temple paths, seating available)",
          "stay": "Hilltop Panorama Resort near Adam’s Peak (Sri Pada)",
          "weather": "Pleasant breeze with sunny afternoon 24°C",
          "dressCode": "Modest traditional attire (shoulders & knees covered)",
          "packingSuggestions": "Sunhat, sunglasses, comfortable walking shoes, light jacket, camera.",
          "accessibility": "Wheelchair ramps & low step entry vehicle",
          "visitorNote": "Escort coordinator will brief you on timing for Adam’s Peak (Sri Pada) visit.",
          "travelDuration": "Approx 1 to 2 hours transfer"
        }
      },
      {
        "day": 2,
        "title": "Early Sunrise Visit to Adam’s Peak (Sri Pada)",
        "location": "Ratnapura",
        "overview": "A deep dive into Adam’s Peak (Sri Pada). Tour inner sanctums, historical galleries, and architectural viewpoints accompanied by an expert guide.",
        "schedule": {
          "morning": {
            "title": "Guided Tour of Adam’s Peak (Sri Pada)",
            "description": "Early morning entry to Adam’s Peak (Sri Pada). Walk through central courtyards, ancient corridors, and historic halls."
          },
          "afternoon": {
            "title": "Coastal Promenade & Beach Relax near Ratnapura",
            "description": "Taste authentic local regional cuisine. Visit local artisan markets specializing in handcrafts native to Sri Lanka."
          },
          "evening": {
            "title": "Sunset Viewpoint & Cultural Evening",
            "description": "Head to the highest scenic viewpoint overlooking Adam’s Peak (Sri Pada). Capture sunset photographs followed by evening entertainment."
          }
        },
        "details": {
          "importantTimings": "Gate Entry: 8:00 AM | Evening Light Show: 6:30 PM",
          "meals": "Welcome Tender Coconut & Traditional Satvik Thali.",
          "transport": "AC Private Sedan / SUV",
          "walkingLevel": "Moderate (Historical walkways & corridors)",
          "stay": "Hilltop Panorama Resort near Adam’s Peak (Sri Pada)",
          "weather": "Pleasant breeze with sunny afternoon 24°C",
          "dressCode": "Traditional attire",
          "packingSuggestions": "Traditional headscarf, slip-on shoes, reusable water bottle, dry bag.",
          "accessibility": "Assistive ramps available at main portals",
          "visitorNote": "Follow local heritage guidelines inside Adam’s Peak (Sri Pada).",
          "travelDuration": "Full day sightseeing approx 5 to 6 hours"
        }
      },
      {
        "day": 3,
        "title": "Souvenir Shopping & Onward Departure from Ratnapura",
        "location": "Ratnapura",
        "overview": "Conclude your trip to Adam’s Peak (Sri Pada) with morning shopping for local delicacies and souvenirs, followed by departure transfer.",
        "schedule": {
          "morning": {
            "title": "Handicrafts & Sweet Market Visit",
            "description": "Visit trusted local bazaar stalls to buy regional spices, handmade crafts, and traditional sweets of Ratnapura."
          },
          "afternoon": {
            "title": "Hotel Checkout & Farewell Lunch",
            "description": "Return to hotel for packing and checkout. Enjoy a farewell lunch before your transfer."
          },
          "evening": {
            "title": "Outbound Departure Transfer",
            "description": "Chauffeur drop to Ratnapura Airport or Railway Station for your onward journey home."
          }
        },
        "details": {
          "importantTimings": "Checkout: 12:00 PM | Transfer: As per flight/train",
          "meals": "Breakfast & Farewell Lunch included.",
          "transport": "AC Private Transfer Vehicle",
          "walkingLevel": "Easy Paced",
          "stay": "N/A (Day of departure)",
          "weather": "Pleasant breeze with sunny afternoon 24°C",
          "dressCode": "Comfortable travel wear",
          "packingSuggestions": "Check-in luggage packed, photo ID ready.",
          "accessibility": "Accessible vehicles",
          "visitorNote": "Arrive at Ratnapura station/airport 2 hours prior to departure.",
          "travelDuration": "Approx 1 hour transfer"
        }
      }
    ],
    "durationDays": 3,
    "durationLabel": "3 Days / 2 Nights",
    "travellerTypes": [
      "Pilgrims",
      "Seniors"
    ],
    "accessibilityStatus": "Wheelchair Accessible",
    "childFriendly": true,
    "packageBenefits": [
      "Pilgrimage Guide",
      "Senior Rest Support"
    ],
    "highlights": [
      "Spiritual darshan and guided temple tour in Adam’s Peak (Sri Pada)",
      "Experience peaceful aarti assemblies and sacred rituals",
      "Comfortable transfers to all holy sites"
    ],
    "tips": [
      "Carry valid government ID cards for verification.",
      "Traditional decency wear is recommended inside temple corridors.",
      "Avoid carrying electronics inside the inner sanctum."
    ],
    "itinerarySummary": [
      "Day 1: Arrival in Ratnapura: Candlelight Dinner & Courtyard Music",
      "Day 2: Early Sunrise Visit to Adam’s Peak (Sri Pada)",
      "Day 3: Souvenir Shopping & Onward Departure from Ratnapura"
    ],
    "cancellationSummary": "Get a 100% full refund on cancellations made up to 15 days before the departure. Rescheduling options are fully flexible."
  },
  {
    "id": "buddhism-bodh-gaya-india",
    "title": "Bodh Gaya Journey",
    "destinationName": "Bodh Gaya",
    "destinations": "Bodh Gaya (Gaya, Bihar, India)",
    "location": "Gaya, Bihar, India",
    "route": [
      "Gaya",
      "Bodh Gaya"
    ],
    "mainCategory": "Pilgrimage",
    "subCategory": "Buddhism",
    "categoryLabel": "Pilgrimage",
    "category": "Pilgrimage",
    "region": "North India",
    "image": "/images/tourist-places/pilgrimage/Buddhism/Bodh Gaya, India.jpg",
    "altText": "Bodh Gaya buddhist pilgrimage destination in Gaya, Bihar, India",
    "duration": "3 Days / 2 Nights",
    "bestSeason": "October–March",
    "pace": "Easy",
    "travellerType": "Senior Friendly",
    "description": "A thoughtfully planned buddhist pilgrimage offering comfort, guidance, and a memorable experience.",
    "price": 15700,
    "rating": null,
    "reviewCount": null,
    "seatsLeft": null,
    "recentBookings": null,
    "verified": null,
    "tags": [
      "Pilgrimage",
      "Curated Journey"
    ],
    "seniorFriendly": true,
    "wheelchairAccess": true,
    "vegMeals": true,
    "inclusions": {
      "hotel": true,
      "meals": true,
      "transit": true,
      "guide": true,
      "entryPasses": true,
      "medicalSupport": false,
      "localExperience": false
    },
    "itinerary": [
      {
        "day": 1,
        "title": "Beginning Your Journey in Gaya & Bodh Gaya Gateway",
        "location": "Gaya",
        "overview": "Begin your sacred yatra as you arrive in Gaya. Check into your room at Heritage Palace Resort overlooking Bodh Gaya and receive a brief orientation before evening prayers.",
        "schedule": {
          "morning": {
            "title": "Arrival & Escorted Transfer in Gaya",
            "description": "Meet our local travel escort at Gaya transit hub. Receive a traditional welcome and transfer to Heritage Palace Resort overlooking Bodh Gaya."
          },
          "afternoon": {
            "title": "Unpack & Courtyard Leisure at Gaya",
            "description": "Check into your sanitized room, unpack your luggage, and enjoy quiet leisure time exploring hotel gardens and facilities."
          },
          "evening": {
            "title": "Heritage Bazaar Promenade at Bodh Gaya",
            "description": "Attend solemn evening prayer assembly near Bodh Gaya. Float earthen lamps and soak in peaceful chanting."
          }
        },
        "details": {
          "importantTimings": "Sanctum VIP Slot: 6:30 AM | Bazaar Hours: 4:00 PM - 8:30 PM",
          "meals": "100% Satvik Pure Veg Breakfast & Temple Prasadam Dinner.",
          "transport": "AC Private Chauffeur Vehicle",
          "walkingLevel": "Easy Paced (Flat temple paths, seating available)",
          "stay": "Heritage Palace Resort overlooking Bodh Gaya",
          "weather": "Cool crisp morning fog clearing to bright 22°C",
          "dressCode": "Modest traditional attire (shoulders & knees covered)",
          "packingSuggestions": "Traditional headscarf, slip-on shoes, reusable water bottle, dry bag.",
          "accessibility": "Wheelchair ramps & low step entry vehicle",
          "visitorNote": "Escort coordinator will brief you on timing for Bodh Gaya visit.",
          "travelDuration": "Approx 1 to 2 hours transfer"
        }
      },
      {
        "day": 2,
        "title": "Exclusive Morning Tour of Bodh Gaya",
        "location": "Gaya",
        "overview": "A deep dive into Bodh Gaya. Tour inner sanctums, historical galleries, and architectural viewpoints accompanied by an expert guide.",
        "schedule": {
          "morning": {
            "title": "Guided Tour of Bodh Gaya",
            "description": "Early morning entry to Bodh Gaya. Walk through central courtyards, ancient corridors, and historic halls."
          },
          "afternoon": {
            "title": "Culinary Tasting & Local Artisan Crafts near Gaya",
            "description": "Taste authentic local regional cuisine. Visit local artisan markets specializing in handcrafts native to Bihar, India."
          },
          "evening": {
            "title": "Sunset Viewpoint & Cultural Evening",
            "description": "Head to the highest scenic viewpoint overlooking Bodh Gaya. Capture sunset photographs followed by evening entertainment."
          }
        },
        "details": {
          "importantTimings": "Sanctum VIP Slot: 6:30 AM | Bazaar Hours: 4:00 PM - 8:30 PM",
          "meals": "Welcome Tender Coconut & Traditional Satvik Thali.",
          "transport": "AC Private Sedan / SUV",
          "walkingLevel": "Moderate (Historical walkways & corridors)",
          "stay": "Heritage Palace Resort overlooking Bodh Gaya",
          "weather": "Cool crisp morning fog clearing to bright 22°C",
          "dressCode": "Traditional attire",
          "packingSuggestions": "Light cotton wear, camera with telephoto lens, sunscreen lotion, photo ID.",
          "accessibility": "Assistive ramps available at main portals",
          "visitorNote": "Follow local heritage guidelines inside Bodh Gaya.",
          "travelDuration": "Full day sightseeing approx 5 to 6 hours"
        }
      },
      {
        "day": 3,
        "title": "Souvenir Shopping & Onward Departure from Gaya",
        "location": "Gaya",
        "overview": "Conclude your trip to Bodh Gaya with morning shopping for local delicacies and souvenirs, followed by departure transfer.",
        "schedule": {
          "morning": {
            "title": "Handicrafts & Sweet Market Visit",
            "description": "Visit trusted local bazaar stalls to buy regional spices, handmade crafts, and traditional sweets of Gaya."
          },
          "afternoon": {
            "title": "Hotel Checkout & Farewell Lunch",
            "description": "Return to hotel for packing and checkout. Enjoy a farewell lunch before your transfer."
          },
          "evening": {
            "title": "Outbound Departure Transfer",
            "description": "Chauffeur drop to Gaya Airport or Railway Station for your onward journey home."
          }
        },
        "details": {
          "importantTimings": "Checkout: 12:00 PM | Transfer: As per flight/train",
          "meals": "Breakfast & Farewell Lunch included.",
          "transport": "AC Private Transfer Vehicle",
          "walkingLevel": "Easy Paced",
          "stay": "N/A (Day of departure)",
          "weather": "Cool crisp morning fog clearing to bright 22°C",
          "dressCode": "Comfortable travel wear",
          "packingSuggestions": "Check-in luggage packed, photo ID ready.",
          "accessibility": "Accessible vehicles",
          "visitorNote": "Arrive at Gaya station/airport 2 hours prior to departure.",
          "travelDuration": "Approx 1 hour transfer"
        }
      }
    ],
    "durationDays": 3,
    "durationLabel": "3 Days / 2 Nights",
    "travellerTypes": [
      "Pilgrims",
      "Seniors"
    ],
    "accessibilityStatus": "Wheelchair Accessible",
    "childFriendly": true,
    "packageBenefits": [
      "Pilgrimage Guide",
      "Senior Rest Support"
    ],
    "highlights": [
      "Spiritual darshan and guided temple tour in Bodh Gaya",
      "Experience peaceful aarti assemblies and sacred rituals",
      "Comfortable transfers to all holy sites"
    ],
    "tips": [
      "Carry valid government ID cards for verification.",
      "Traditional decency wear is recommended inside temple corridors.",
      "Avoid carrying electronics inside the inner sanctum."
    ],
    "itinerarySummary": [
      "Day 1: Beginning Your Journey in Gaya & Bodh Gaya Gateway",
      "Day 2: Exclusive Morning Tour of Bodh Gaya",
      "Day 3: Souvenir Shopping & Onward Departure from Gaya"
    ],
    "cancellationSummary": "Get a 100% full refund on cancellations made up to 15 days before the departure. Rescheduling options are fully flexible."
  },
  {
    "id": "buddhism-borobudur-temple-indonesia",
    "title": "Borobudur Temple Journey",
    "destinationName": "Borobudur Temple",
    "destinations": "Borobudur Temple (Magelang, Indonesia)",
    "location": "Magelang, Indonesia",
    "route": [
      "Magelang",
      "Borobudur Temple"
    ],
    "mainCategory": "Pilgrimage",
    "subCategory": "Buddhism",
    "categoryLabel": "Pilgrimage",
    "category": "Pilgrimage",
    "region": "International",
    "image": "/images/tourist-places/pilgrimage/Buddhism/Borobudur Temple, Indonesia.jpg",
    "altText": "Borobudur Temple buddhist pilgrimage destination in Magelang, Indonesia",
    "duration": "3 Days / 2 Nights",
    "bestSeason": "October–March",
    "pace": "Easy",
    "travellerType": "Senior Friendly",
    "description": "A thoughtfully planned buddhist pilgrimage offering comfort, guidance, and a memorable experience.",
    "price": 16900,
    "rating": null,
    "reviewCount": null,
    "seatsLeft": null,
    "recentBookings": null,
    "verified": null,
    "tags": [
      "Pilgrimage",
      "Curated Journey"
    ],
    "seniorFriendly": true,
    "wheelchairAccess": true,
    "vegMeals": true,
    "inclusions": {
      "hotel": true,
      "meals": true,
      "transit": true,
      "guide": true,
      "entryPasses": true,
      "medicalSupport": false,
      "localExperience": false
    },
    "itinerary": [
      {
        "day": 1,
        "title": "Arrival in Magelang: Panoramic Terrace Lounge Session",
        "location": "Magelang",
        "overview": "Begin your sacred yatra as you arrive in Magelang. Check into your room at Boutique Lakefront Haveli in Magelang and receive a brief orientation before evening prayers.",
        "schedule": {
          "morning": {
            "title": "Arrival & Escorted Transfer in Magelang",
            "description": "Meet our local travel escort at Magelang transit hub. Receive a traditional welcome and transfer to Boutique Lakefront Haveli in Magelang."
          },
          "afternoon": {
            "title": "Unpack & Courtyard Leisure at Magelang",
            "description": "Check into your sanitized room, unpack your luggage, and enjoy quiet leisure time exploring hotel gardens and facilities."
          },
          "evening": {
            "title": "Panoramic Terrace Lounge Session at Borobudur Temple",
            "description": "Attend solemn evening prayer assembly near Borobudur Temple. Float earthen lamps and soak in peaceful chanting."
          }
        },
        "details": {
          "importantTimings": "Sunrise Tour: 5:45 AM | Museum Hours: 9:30 AM - 5:00 PM",
          "meals": "100% Satvik Pure Veg Breakfast & Temple Prasadam Dinner.",
          "transport": "AC Private Chauffeur Vehicle",
          "walkingLevel": "Easy Paced (Flat temple paths, seating available)",
          "stay": "Boutique Lakefront Haveli in Magelang",
          "weather": "Warm tropical sunshine with ocean breeze 27°C",
          "dressCode": "Modest traditional attire (shoulders & knees covered)",
          "packingSuggestions": "Light cotton wear, camera with telephoto lens, sunscreen lotion, photo ID.",
          "accessibility": "Wheelchair ramps & low step entry vehicle",
          "visitorNote": "Escort coordinator will brief you on timing for Borobudur Temple visit.",
          "travelDuration": "Approx 1 to 2 hours transfer"
        }
      },
      {
        "day": 2,
        "title": "VIP Access to Borobudur Temple",
        "location": "Magelang",
        "overview": "A deep dive into Borobudur Temple. Tour inner sanctums, historical galleries, and architectural viewpoints accompanied by an expert guide.",
        "schedule": {
          "morning": {
            "title": "Guided Tour of Borobudur Temple",
            "description": "Early morning entry to Borobudur Temple. Walk through central courtyards, ancient corridors, and historic halls."
          },
          "afternoon": {
            "title": "Excursion to Surrounding Haveli & Gardens near Magelang",
            "description": "Taste authentic local regional cuisine. Visit local artisan markets specializing in handcrafts native to Indonesia."
          },
          "evening": {
            "title": "Sunset Viewpoint & Cultural Evening",
            "description": "Head to the highest scenic viewpoint overlooking Borobudur Temple. Capture sunset photographs followed by evening entertainment."
          }
        },
        "details": {
          "importantTimings": "Sunrise Tour: 5:45 AM | Museum Hours: 9:30 AM - 5:00 PM",
          "meals": "Welcome Tender Coconut & Traditional Satvik Thali.",
          "transport": "AC Private Sedan / SUV",
          "walkingLevel": "Moderate (Historical walkways & corridors)",
          "stay": "Boutique Lakefront Haveli in Magelang",
          "weather": "Warm tropical sunshine with ocean breeze 27°C",
          "dressCode": "Traditional attire",
          "packingSuggestions": "Comfortable walking socks, power bank, shoulder shawl, daypack.",
          "accessibility": "Assistive ramps available at main portals",
          "visitorNote": "Follow local heritage guidelines inside Borobudur Temple.",
          "travelDuration": "Full day sightseeing approx 5 to 6 hours"
        }
      },
      {
        "day": 3,
        "title": "Souvenir Shopping & Onward Departure from Magelang",
        "location": "Magelang",
        "overview": "Conclude your trip to Borobudur Temple with morning shopping for local delicacies and souvenirs, followed by departure transfer.",
        "schedule": {
          "morning": {
            "title": "Handicrafts & Sweet Market Visit",
            "description": "Visit trusted local bazaar stalls to buy regional spices, handmade crafts, and traditional sweets of Magelang."
          },
          "afternoon": {
            "title": "Hotel Checkout & Farewell Lunch",
            "description": "Return to hotel for packing and checkout. Enjoy a farewell lunch before your transfer."
          },
          "evening": {
            "title": "Outbound Departure Transfer",
            "description": "Chauffeur drop to Magelang Airport or Railway Station for your onward journey home."
          }
        },
        "details": {
          "importantTimings": "Checkout: 12:00 PM | Transfer: As per flight/train",
          "meals": "Breakfast & Farewell Lunch included.",
          "transport": "AC Private Transfer Vehicle",
          "walkingLevel": "Easy Paced",
          "stay": "N/A (Day of departure)",
          "weather": "Warm tropical sunshine with ocean breeze 27°C",
          "dressCode": "Comfortable travel wear",
          "packingSuggestions": "Check-in luggage packed, photo ID ready.",
          "accessibility": "Accessible vehicles",
          "visitorNote": "Arrive at Magelang station/airport 2 hours prior to departure.",
          "travelDuration": "Approx 1 hour transfer"
        }
      }
    ],
    "durationDays": 3,
    "durationLabel": "3 Days / 2 Nights",
    "travellerTypes": [
      "Pilgrims",
      "Seniors"
    ],
    "accessibilityStatus": "Wheelchair Accessible",
    "childFriendly": true,
    "packageBenefits": [
      "Pilgrimage Guide",
      "Senior Rest Support"
    ],
    "highlights": [
      "Spiritual darshan and guided temple tour in Borobudur Temple",
      "Experience peaceful aarti assemblies and sacred rituals",
      "Comfortable transfers to all holy sites"
    ],
    "tips": [
      "Carry valid government ID cards for verification.",
      "Traditional decency wear is recommended inside temple corridors.",
      "Avoid carrying electronics inside the inner sanctum."
    ],
    "itinerarySummary": [
      "Day 1: Arrival in Magelang: Panoramic Terrace Lounge Session",
      "Day 2: VIP Access to Borobudur Temple",
      "Day 3: Souvenir Shopping & Onward Departure from Magelang"
    ],
    "cancellationSummary": "Get a 100% full refund on cancellations made up to 15 days before the departure. Rescheduling options are fully flexible."
  },
  {
    "id": "buddhism-dambulla-cave-temple-sri-lanka",
    "title": "Dambulla Cave Temple Journey",
    "destinationName": "Dambulla Cave Temple",
    "destinations": "Dambulla Cave Temple (Matale, Sri Lanka)",
    "location": "Matale, Sri Lanka",
    "route": [
      "Matale",
      "Dambulla Cave Temple"
    ],
    "mainCategory": "Pilgrimage",
    "subCategory": "Buddhism",
    "categoryLabel": "Pilgrimage",
    "category": "Pilgrimage",
    "region": "International",
    "image": "/images/tourist-places/pilgrimage/Buddhism/Dambulla Cave Temple, Sri Lanka.jpg",
    "altText": "Dambulla Cave Temple buddhist pilgrimage destination in Matale, Sri Lanka",
    "duration": "3 Days / 2 Nights",
    "bestSeason": "October–March",
    "pace": "Easy",
    "travellerType": "Senior Friendly",
    "description": "A thoughtfully planned buddhist pilgrimage offering comfort, guidance, and a memorable experience.",
    "price": 18100,
    "rating": null,
    "reviewCount": null,
    "seatsLeft": null,
    "recentBookings": null,
    "verified": null,
    "tags": [
      "Pilgrimage",
      "Curated Journey"
    ],
    "seniorFriendly": true,
    "wheelchairAccess": true,
    "vegMeals": true,
    "inclusions": {
      "hotel": true,
      "meals": true,
      "transit": true,
      "guide": true,
      "entryPasses": true,
      "medicalSupport": false,
      "localExperience": false
    },
    "itinerary": [
      {
        "day": 1,
        "title": "Spiritual Welcome to Matale & Dambulla Cave Temple Gateway",
        "location": "Matale",
        "overview": "Begin your sacred yatra as you arrive in Matale. Check into your room at Royal Heritage Villa near Dambulla Cave Temple and receive a brief orientation before evening prayers.",
        "schedule": {
          "morning": {
            "title": "Arrival & Escorted Transfer in Matale",
            "description": "Meet our local travel escort at Matale transit hub. Receive a traditional welcome and transfer to Royal Heritage Villa near Dambulla Cave Temple."
          },
          "afternoon": {
            "title": "Unpack & Courtyard Leisure at Matale",
            "description": "Check into your sanitized room, unpack your luggage, and enjoy quiet leisure time exploring hotel gardens and facilities."
          },
          "evening": {
            "title": "Lakeside Stroll & Local Cuisine at Dambulla Cave Temple",
            "description": "Attend solemn evening prayer assembly near Dambulla Cave Temple. Float earthen lamps and soak in peaceful chanting."
          }
        },
        "details": {
          "importantTimings": "Guided Walk: 9:00 AM | Sunset Point Departure: 5:15 PM",
          "meals": "100% Satvik Pure Veg Breakfast & Temple Prasadam Dinner.",
          "transport": "AC Private Chauffeur Vehicle",
          "walkingLevel": "Easy Paced (Flat temple paths, seating available)",
          "stay": "Royal Heritage Villa near Dambulla Cave Temple",
          "weather": "Crisp mountain climate, clear blue skies 19°C",
          "dressCode": "Modest traditional attire (shoulders & knees covered)",
          "packingSuggestions": "Comfortable walking socks, power bank, shoulder shawl, daypack.",
          "accessibility": "Wheelchair ramps & low step entry vehicle",
          "visitorNote": "Escort coordinator will brief you on timing for Dambulla Cave Temple visit.",
          "travelDuration": "Approx 1 to 2 hours transfer"
        }
      },
      {
        "day": 2,
        "title": "Breakfast & Exploration of Dambulla Cave Temple",
        "location": "Matale",
        "overview": "A deep dive into Dambulla Cave Temple. Tour inner sanctums, historical galleries, and architectural viewpoints accompanied by an expert guide.",
        "schedule": {
          "morning": {
            "title": "Guided Tour of Dambulla Cave Temple",
            "description": "Early morning entry to Dambulla Cave Temple. Walk through central courtyards, ancient corridors, and historic halls."
          },
          "afternoon": {
            "title": "Museum Treasures & Heritage Galleries near Matale",
            "description": "Taste authentic local regional cuisine. Visit local artisan markets specializing in handcrafts native to Sri Lanka."
          },
          "evening": {
            "title": "Sunset Viewpoint & Cultural Evening",
            "description": "Head to the highest scenic viewpoint overlooking Dambulla Cave Temple. Capture sunset photographs followed by evening entertainment."
          }
        },
        "details": {
          "importantTimings": "Guided Walk: 9:00 AM | Sunset Point Departure: 5:15 PM",
          "meals": "Welcome Tender Coconut & Traditional Satvik Thali.",
          "transport": "AC Private Sedan / SUV",
          "walkingLevel": "Moderate (Historical walkways & corridors)",
          "stay": "Royal Heritage Villa near Dambulla Cave Temple",
          "weather": "Crisp mountain climate, clear blue skies 19°C",
          "dressCode": "Traditional attire",
          "packingSuggestions": "Breathable linen wear, sunglasses, small currency notes for local shops.",
          "accessibility": "Assistive ramps available at main portals",
          "visitorNote": "Follow local heritage guidelines inside Dambulla Cave Temple.",
          "travelDuration": "Full day sightseeing approx 5 to 6 hours"
        }
      },
      {
        "day": 3,
        "title": "Souvenir Shopping & Onward Departure from Matale",
        "location": "Matale",
        "overview": "Conclude your trip to Dambulla Cave Temple with morning shopping for local delicacies and souvenirs, followed by departure transfer.",
        "schedule": {
          "morning": {
            "title": "Handicrafts & Sweet Market Visit",
            "description": "Visit trusted local bazaar stalls to buy regional spices, handmade crafts, and traditional sweets of Matale."
          },
          "afternoon": {
            "title": "Hotel Checkout & Farewell Lunch",
            "description": "Return to hotel for packing and checkout. Enjoy a farewell lunch before your transfer."
          },
          "evening": {
            "title": "Outbound Departure Transfer",
            "description": "Chauffeur drop to Matale Airport or Railway Station for your onward journey home."
          }
        },
        "details": {
          "importantTimings": "Checkout: 12:00 PM | Transfer: As per flight/train",
          "meals": "Breakfast & Farewell Lunch included.",
          "transport": "AC Private Transfer Vehicle",
          "walkingLevel": "Easy Paced",
          "stay": "N/A (Day of departure)",
          "weather": "Crisp mountain climate, clear blue skies 19°C",
          "dressCode": "Comfortable travel wear",
          "packingSuggestions": "Check-in luggage packed, photo ID ready.",
          "accessibility": "Accessible vehicles",
          "visitorNote": "Arrive at Matale station/airport 2 hours prior to departure.",
          "travelDuration": "Approx 1 hour transfer"
        }
      }
    ],
    "durationDays": 3,
    "durationLabel": "3 Days / 2 Nights",
    "travellerTypes": [
      "Pilgrims",
      "Seniors"
    ],
    "accessibilityStatus": "Wheelchair Accessible",
    "childFriendly": true,
    "packageBenefits": [
      "Pilgrimage Guide",
      "Senior Rest Support"
    ],
    "highlights": [
      "Spiritual darshan and guided temple tour in Dambulla Cave Temple",
      "Experience peaceful aarti assemblies and sacred rituals",
      "Comfortable transfers to all holy sites"
    ],
    "tips": [
      "Carry valid government ID cards for verification.",
      "Traditional decency wear is recommended inside temple corridors.",
      "Avoid carrying electronics inside the inner sanctum."
    ],
    "itinerarySummary": [
      "Day 1: Spiritual Welcome to Matale & Dambulla Cave Temple Gateway",
      "Day 2: Breakfast & Exploration of Dambulla Cave Temple",
      "Day 3: Souvenir Shopping & Onward Departure from Matale"
    ],
    "cancellationSummary": "Get a 100% full refund on cancellations made up to 15 days before the departure. Rescheduling options are fully flexible."
  },
  {
    "id": "buddhism-jokhang-temple-lhasa-tibet",
    "title": "Jokhang Temple, Lhasa Journey",
    "destinationName": "Jokhang Temple, Lhasa",
    "destinations": "Jokhang Temple, Lhasa (Lhasa, Tibet)",
    "location": "Lhasa, Tibet",
    "route": [
      "Lhasa",
      "Jokhang Temple, Lhasa"
    ],
    "mainCategory": "Pilgrimage",
    "subCategory": "Buddhism",
    "categoryLabel": "Pilgrimage",
    "category": "Pilgrimage",
    "region": "International",
    "image": "/images/tourist-places/pilgrimage/Buddhism/Jokhang Temple, Lhasa, Tibet.jpg",
    "altText": "Jokhang Temple, Lhasa buddhist pilgrimage destination in Lhasa, Tibet",
    "duration": "3 Days / 2 Nights",
    "bestSeason": "October–March",
    "pace": "Easy",
    "travellerType": "Senior Friendly",
    "description": "A thoughtfully planned buddhist pilgrimage offering comfort, guidance, and a memorable experience.",
    "price": 19300,
    "rating": null,
    "reviewCount": null,
    "seatsLeft": null,
    "recentBookings": null,
    "verified": null,
    "tags": [
      "Pilgrimage",
      "Curated Journey"
    ],
    "seniorFriendly": true,
    "wheelchairAccess": true,
    "vegMeals": true,
    "inclusions": {
      "hotel": true,
      "meals": true,
      "transit": true,
      "guide": true,
      "entryPasses": true,
      "medicalSupport": false,
      "localExperience": false
    },
    "itinerary": [
      {
        "day": 1,
        "title": "Arrival in Lhasa: Traditional Ceremony & Quiet Reflection",
        "location": "Lhasa",
        "overview": "Begin your sacred yatra as you arrive in Lhasa. Check into your room at Luxury Eco Lodge in Lhasa and receive a brief orientation before evening prayers.",
        "schedule": {
          "morning": {
            "title": "Arrival & Escorted Transfer in Lhasa",
            "description": "Meet our local travel escort at Lhasa transit hub. Receive a traditional welcome and transfer to Luxury Eco Lodge in Lhasa."
          },
          "afternoon": {
            "title": "Unpack & Courtyard Leisure at Lhasa",
            "description": "Check into your sanitized room, unpack your luggage, and enjoy quiet leisure time exploring hotel gardens and facilities."
          },
          "evening": {
            "title": "Traditional Ceremony & Quiet Reflection at Jokhang Temple, Lhasa",
            "description": "Attend solemn evening prayer assembly near Jokhang Temple, Lhasa. Float earthen lamps and soak in peaceful chanting."
          }
        },
        "details": {
          "importantTimings": "Boat Departure: 6:00 AM | Heritage Show: 7:00 PM",
          "meals": "100% Satvik Pure Veg Breakfast & Temple Prasadam Dinner.",
          "transport": "AC Private Chauffeur Vehicle",
          "walkingLevel": "Easy Paced (Flat temple paths, seating available)",
          "stay": "Luxury Eco Lodge in Lhasa",
          "weather": "Refreshing river mist with mild sun 23°C",
          "dressCode": "Modest traditional attire (shoulders & knees covered)",
          "packingSuggestions": "Breathable linen wear, sunglasses, small currency notes for local shops.",
          "accessibility": "Wheelchair ramps & low step entry vehicle",
          "visitorNote": "Escort coordinator will brief you on timing for Jokhang Temple, Lhasa visit.",
          "travelDuration": "Approx 1 to 2 hours transfer"
        }
      },
      {
        "day": 2,
        "title": "Panoramic Discovery of Jokhang Temple, Lhasa",
        "location": "Lhasa",
        "overview": "A deep dive into Jokhang Temple, Lhasa. Tour inner sanctums, historical galleries, and architectural viewpoints accompanied by an expert guide.",
        "schedule": {
          "morning": {
            "title": "Guided Tour of Jokhang Temple, Lhasa",
            "description": "Early morning entry to Jokhang Temple, Lhasa. Walk through central courtyards, ancient corridors, and historic halls."
          },
          "afternoon": {
            "title": "Boat Ride & Riverfront Exploration near Lhasa",
            "description": "Taste authentic local regional cuisine. Visit local artisan markets specializing in handcrafts native to Tibet."
          },
          "evening": {
            "title": "Sunset Viewpoint & Cultural Evening",
            "description": "Head to the highest scenic viewpoint overlooking Jokhang Temple, Lhasa. Capture sunset photographs followed by evening entertainment."
          }
        },
        "details": {
          "importantTimings": "Boat Departure: 6:00 AM | Heritage Show: 7:00 PM",
          "meals": "Welcome Tender Coconut & Traditional Satvik Thali.",
          "transport": "AC Private Sedan / SUV",
          "walkingLevel": "Moderate (Historical walkways & corridors)",
          "stay": "Luxury Eco Lodge in Lhasa",
          "weather": "Refreshing river mist with mild sun 23°C",
          "dressCode": "Traditional attire",
          "packingSuggestions": "Sunhat, sunglasses, comfortable walking shoes, light jacket, camera.",
          "accessibility": "Assistive ramps available at main portals",
          "visitorNote": "Follow local heritage guidelines inside Jokhang Temple, Lhasa.",
          "travelDuration": "Full day sightseeing approx 5 to 6 hours"
        }
      },
      {
        "day": 3,
        "title": "Souvenir Shopping & Onward Departure from Lhasa",
        "location": "Lhasa",
        "overview": "Conclude your trip to Jokhang Temple, Lhasa with morning shopping for local delicacies and souvenirs, followed by departure transfer.",
        "schedule": {
          "morning": {
            "title": "Handicrafts & Sweet Market Visit",
            "description": "Visit trusted local bazaar stalls to buy regional spices, handmade crafts, and traditional sweets of Lhasa."
          },
          "afternoon": {
            "title": "Hotel Checkout & Farewell Lunch",
            "description": "Return to hotel for packing and checkout. Enjoy a farewell lunch before your transfer."
          },
          "evening": {
            "title": "Outbound Departure Transfer",
            "description": "Chauffeur drop to Lhasa Airport or Railway Station for your onward journey home."
          }
        },
        "details": {
          "importantTimings": "Checkout: 12:00 PM | Transfer: As per flight/train",
          "meals": "Breakfast & Farewell Lunch included.",
          "transport": "AC Private Transfer Vehicle",
          "walkingLevel": "Easy Paced",
          "stay": "N/A (Day of departure)",
          "weather": "Refreshing river mist with mild sun 23°C",
          "dressCode": "Comfortable travel wear",
          "packingSuggestions": "Check-in luggage packed, photo ID ready.",
          "accessibility": "Accessible vehicles",
          "visitorNote": "Arrive at Lhasa station/airport 2 hours prior to departure.",
          "travelDuration": "Approx 1 hour transfer"
        }
      }
    ],
    "durationDays": 3,
    "durationLabel": "3 Days / 2 Nights",
    "travellerTypes": [
      "Pilgrims",
      "Seniors"
    ],
    "accessibilityStatus": "Wheelchair Accessible",
    "childFriendly": true,
    "packageBenefits": [
      "Pilgrimage Guide",
      "Senior Rest Support"
    ],
    "highlights": [
      "Spiritual darshan and guided temple tour in Jokhang Temple, Lhasa",
      "Experience peaceful aarti assemblies and sacred rituals",
      "Comfortable transfers to all holy sites"
    ],
    "tips": [
      "Carry valid government ID cards for verification.",
      "Traditional decency wear is recommended inside temple corridors.",
      "Avoid carrying electronics inside the inner sanctum."
    ],
    "itinerarySummary": [
      "Day 1: Arrival in Lhasa: Traditional Ceremony & Quiet Reflection",
      "Day 2: Panoramic Discovery of Jokhang Temple, Lhasa",
      "Day 3: Souvenir Shopping & Onward Departure from Lhasa"
    ],
    "cancellationSummary": "Get a 100% full refund on cancellations made up to 15 days before the departure. Rescheduling options are fully flexible."
  },
  {
    "id": "buddhism-kumano-kodo-japan",
    "title": "Kumano Kodo Journey",
    "destinationName": "Kumano Kodo",
    "destinations": "Kumano Kodo (Wakayama, Japan)",
    "location": "Wakayama, Japan",
    "route": [
      "Wakayama",
      "Kumano Kodo"
    ],
    "mainCategory": "Pilgrimage",
    "subCategory": "Buddhism",
    "categoryLabel": "Pilgrimage",
    "category": "Pilgrimage",
    "region": "International",
    "image": "/images/tourist-places/pilgrimage/Buddhism/Kumano Kodo, Japan.jpg",
    "altText": "Kumano Kodo buddhist pilgrimage destination in Wakayama, Japan",
    "duration": "3 Days / 2 Nights",
    "bestSeason": "October–March",
    "pace": "Easy",
    "travellerType": "Senior Friendly",
    "description": "A thoughtfully planned buddhist pilgrimage offering comfort, guidance, and a memorable experience.",
    "price": 20500,
    "rating": null,
    "reviewCount": null,
    "seatsLeft": null,
    "recentBookings": null,
    "verified": null,
    "tags": [
      "Pilgrimage",
      "Curated Journey"
    ],
    "seniorFriendly": true,
    "wheelchairAccess": true,
    "vegMeals": true,
    "inclusions": {
      "hotel": true,
      "meals": true,
      "transit": true,
      "guide": true,
      "entryPasses": true,
      "medicalSupport": false,
      "localExperience": false
    },
    "itinerary": [
      {
        "day": 1,
        "title": "Welcome & Check-in at Wakayama & Kumano Kodo Gateway",
        "location": "Wakayama",
        "overview": "Begin your sacred yatra as you arrive in Wakayama. Check into your room at Grand Riverfront Resort near Kumano Kodo and receive a brief orientation before evening prayers.",
        "schedule": {
          "morning": {
            "title": "Arrival & Escorted Transfer in Wakayama",
            "description": "Meet our local travel escort at Wakayama transit hub. Receive a traditional welcome and transfer to Grand Riverfront Resort near Kumano Kodo."
          },
          "afternoon": {
            "title": "Unpack & Courtyard Leisure at Wakayama",
            "description": "Check into your sanitized room, unpack your luggage, and enjoy quiet leisure time exploring hotel gardens and facilities."
          },
          "evening": {
            "title": "Sunset Walk & Local Market Flavors at Kumano Kodo",
            "description": "Attend solemn evening prayer assembly near Kumano Kodo. Float earthen lamps and soak in peaceful chanting."
          }
        },
        "details": {
          "importantTimings": "Gate Entry: 8:00 AM | Evening Light Show: 6:30 PM",
          "meals": "100% Satvik Pure Veg Breakfast & Temple Prasadam Dinner.",
          "transport": "AC Private Chauffeur Vehicle",
          "walkingLevel": "Easy Paced (Flat temple paths, seating available)",
          "stay": "Grand Riverfront Resort near Kumano Kodo",
          "weather": "Pleasant breeze with sunny afternoon 24°C",
          "dressCode": "Modest traditional attire (shoulders & knees covered)",
          "packingSuggestions": "Sunhat, sunglasses, comfortable walking shoes, light jacket, camera.",
          "accessibility": "Wheelchair ramps & low step entry vehicle",
          "visitorNote": "Escort coordinator will brief you on timing for Kumano Kodo visit.",
          "travelDuration": "Approx 1 to 2 hours transfer"
        }
      },
      {
        "day": 2,
        "title": "Uncovering the Secrets of Kumano Kodo",
        "location": "Wakayama",
        "overview": "A deep dive into Kumano Kodo. Tour inner sanctums, historical galleries, and architectural viewpoints accompanied by an expert guide.",
        "schedule": {
          "morning": {
            "title": "Guided Tour of Kumano Kodo",
            "description": "Early morning entry to Kumano Kodo. Walk through central courtyards, ancient corridors, and historic halls."
          },
          "afternoon": {
            "title": "Artisan Handloom Workshop & Souvenirs near Wakayama",
            "description": "Taste authentic local regional cuisine. Visit local artisan markets specializing in handcrafts native to Japan."
          },
          "evening": {
            "title": "Sunset Viewpoint & Cultural Evening",
            "description": "Head to the highest scenic viewpoint overlooking Kumano Kodo. Capture sunset photographs followed by evening entertainment."
          }
        },
        "details": {
          "importantTimings": "Gate Entry: 8:00 AM | Evening Light Show: 6:30 PM",
          "meals": "Welcome Tender Coconut & Traditional Satvik Thali.",
          "transport": "AC Private Sedan / SUV",
          "walkingLevel": "Moderate (Historical walkways & corridors)",
          "stay": "Grand Riverfront Resort near Kumano Kodo",
          "weather": "Pleasant breeze with sunny afternoon 24°C",
          "dressCode": "Traditional attire",
          "packingSuggestions": "Traditional headscarf, slip-on shoes, reusable water bottle, dry bag.",
          "accessibility": "Assistive ramps available at main portals",
          "visitorNote": "Follow local heritage guidelines inside Kumano Kodo.",
          "travelDuration": "Full day sightseeing approx 5 to 6 hours"
        }
      },
      {
        "day": 3,
        "title": "Souvenir Shopping & Onward Departure from Wakayama",
        "location": "Wakayama",
        "overview": "Conclude your trip to Kumano Kodo with morning shopping for local delicacies and souvenirs, followed by departure transfer.",
        "schedule": {
          "morning": {
            "title": "Handicrafts & Sweet Market Visit",
            "description": "Visit trusted local bazaar stalls to buy regional spices, handmade crafts, and traditional sweets of Wakayama."
          },
          "afternoon": {
            "title": "Hotel Checkout & Farewell Lunch",
            "description": "Return to hotel for packing and checkout. Enjoy a farewell lunch before your transfer."
          },
          "evening": {
            "title": "Outbound Departure Transfer",
            "description": "Chauffeur drop to Wakayama Airport or Railway Station for your onward journey home."
          }
        },
        "details": {
          "importantTimings": "Checkout: 12:00 PM | Transfer: As per flight/train",
          "meals": "Breakfast & Farewell Lunch included.",
          "transport": "AC Private Transfer Vehicle",
          "walkingLevel": "Easy Paced",
          "stay": "N/A (Day of departure)",
          "weather": "Pleasant breeze with sunny afternoon 24°C",
          "dressCode": "Comfortable travel wear",
          "packingSuggestions": "Check-in luggage packed, photo ID ready.",
          "accessibility": "Accessible vehicles",
          "visitorNote": "Arrive at Wakayama station/airport 2 hours prior to departure.",
          "travelDuration": "Approx 1 hour transfer"
        }
      }
    ],
    "durationDays": 3,
    "durationLabel": "3 Days / 2 Nights",
    "travellerTypes": [
      "Pilgrims",
      "Seniors"
    ],
    "accessibilityStatus": "Wheelchair Accessible",
    "childFriendly": true,
    "packageBenefits": [
      "Pilgrimage Guide",
      "Senior Rest Support"
    ],
    "highlights": [
      "Spiritual darshan and guided temple tour in Kumano Kodo",
      "Experience peaceful aarti assemblies and sacred rituals",
      "Comfortable transfers to all holy sites"
    ],
    "tips": [
      "Carry valid government ID cards for verification.",
      "Traditional decency wear is recommended inside temple corridors.",
      "Avoid carrying electronics inside the inner sanctum."
    ],
    "itinerarySummary": [
      "Day 1: Welcome & Check-in at Wakayama & Kumano Kodo Gateway",
      "Day 2: Uncovering the Secrets of Kumano Kodo",
      "Day 3: Souvenir Shopping & Onward Departure from Wakayama"
    ],
    "cancellationSummary": "Get a 100% full refund on cancellations made up to 15 days before the departure. Rescheduling options are fully flexible."
  },
  {
    "id": "buddhism-kushinagar-india",
    "title": "Kushinagar Journey",
    "destinationName": "Kushinagar",
    "destinations": "Kushinagar (Kushinagar, Uttar Pradesh, India)",
    "location": "Kushinagar, Uttar Pradesh, India",
    "route": [
      "Kushinagar",
      "Kushinagar"
    ],
    "mainCategory": "Pilgrimage",
    "subCategory": "Buddhism",
    "categoryLabel": "Pilgrimage",
    "category": "Pilgrimage",
    "region": "North India",
    "image": "/images/tourist-places/pilgrimage/Buddhism/Kushinagar, India.webp",
    "altText": "Kushinagar buddhist pilgrimage destination in Kushinagar, Uttar Pradesh, India",
    "duration": "3 Days / 2 Nights",
    "bestSeason": "October–March",
    "pace": "Easy",
    "travellerType": "Senior Friendly",
    "description": "A thoughtfully planned buddhist pilgrimage offering comfort, guidance, and a memorable experience.",
    "price": 21700,
    "rating": null,
    "reviewCount": null,
    "seatsLeft": null,
    "recentBookings": null,
    "verified": null,
    "tags": [
      "Pilgrimage",
      "Curated Journey"
    ],
    "seniorFriendly": true,
    "wheelchairAccess": true,
    "vegMeals": true,
    "inclusions": {
      "hotel": true,
      "meals": true,
      "transit": true,
      "guide": true,
      "entryPasses": true,
      "medicalSupport": false,
      "localExperience": false
    },
    "itinerary": [
      {
        "day": 1,
        "title": "Arrival in Kushinagar: Illuminated Viewpoint & Welcome Feast",
        "location": "Kushinagar",
        "overview": "Begin your sacred yatra as you arrive in Kushinagar. Check into your room at Vedic Pilgrim Ashram Stay in Kushinagar and receive a brief orientation before evening prayers.",
        "schedule": {
          "morning": {
            "title": "Arrival & Escorted Transfer in Kushinagar",
            "description": "Meet our local travel escort at Kushinagar transit hub. Receive a traditional welcome and transfer to Vedic Pilgrim Ashram Stay in Kushinagar."
          },
          "afternoon": {
            "title": "Unpack & Courtyard Leisure at Kushinagar",
            "description": "Check into your sanitized room, unpack your luggage, and enjoy quiet leisure time exploring hotel gardens and facilities."
          },
          "evening": {
            "title": "Illuminated Viewpoint & Welcome Feast at Kushinagar",
            "description": "Attend solemn evening prayer assembly near Kushinagar. Float earthen lamps and soak in peaceful chanting."
          }
        },
        "details": {
          "importantTimings": "Sanctum VIP Slot: 6:30 AM | Bazaar Hours: 4:00 PM - 8:30 PM",
          "meals": "100% Satvik Pure Veg Breakfast & Temple Prasadam Dinner.",
          "transport": "AC Private Chauffeur Vehicle",
          "walkingLevel": "Easy Paced (Flat temple paths, seating available)",
          "stay": "Vedic Pilgrim Ashram Stay in Kushinagar",
          "weather": "Cool crisp morning fog clearing to bright 22°C",
          "dressCode": "Modest traditional attire (shoulders & knees covered)",
          "packingSuggestions": "Traditional headscarf, slip-on shoes, reusable water bottle, dry bag.",
          "accessibility": "Wheelchair ramps & low step entry vehicle",
          "visitorNote": "Escort coordinator will brief you on timing for Kushinagar visit.",
          "travelDuration": "Approx 1 to 2 hours transfer"
        }
      },
      {
        "day": 2,
        "title": "Spiritual Morning Prayers at Kushinagar",
        "location": "Kushinagar",
        "overview": "A deep dive into Kushinagar. Tour inner sanctums, historical galleries, and architectural viewpoints accompanied by an expert guide.",
        "schedule": {
          "morning": {
            "title": "Guided Tour of Kushinagar",
            "description": "Early morning entry to Kushinagar. Walk through central courtyards, ancient corridors, and historic halls."
          },
          "afternoon": {
            "title": "Scenic Valley Drive & Photo Stops near Kushinagar",
            "description": "Taste authentic local regional cuisine. Visit local artisan markets specializing in handcrafts native to Uttar Pradesh, India."
          },
          "evening": {
            "title": "Sunset Viewpoint & Cultural Evening",
            "description": "Head to the highest scenic viewpoint overlooking Kushinagar. Capture sunset photographs followed by evening entertainment."
          }
        },
        "details": {
          "importantTimings": "Sanctum VIP Slot: 6:30 AM | Bazaar Hours: 4:00 PM - 8:30 PM",
          "meals": "Welcome Tender Coconut & Traditional Satvik Thali.",
          "transport": "AC Private Sedan / SUV",
          "walkingLevel": "Moderate (Historical walkways & corridors)",
          "stay": "Vedic Pilgrim Ashram Stay in Kushinagar",
          "weather": "Cool crisp morning fog clearing to bright 22°C",
          "dressCode": "Traditional attire",
          "packingSuggestions": "Light cotton wear, camera with telephoto lens, sunscreen lotion, photo ID.",
          "accessibility": "Assistive ramps available at main portals",
          "visitorNote": "Follow local heritage guidelines inside Kushinagar.",
          "travelDuration": "Full day sightseeing approx 5 to 6 hours"
        }
      },
      {
        "day": 3,
        "title": "Souvenir Shopping & Onward Departure from Kushinagar",
        "location": "Kushinagar",
        "overview": "Conclude your trip to Kushinagar with morning shopping for local delicacies and souvenirs, followed by departure transfer.",
        "schedule": {
          "morning": {
            "title": "Handicrafts & Sweet Market Visit",
            "description": "Visit trusted local bazaar stalls to buy regional spices, handmade crafts, and traditional sweets of Kushinagar."
          },
          "afternoon": {
            "title": "Hotel Checkout & Farewell Lunch",
            "description": "Return to hotel for packing and checkout. Enjoy a farewell lunch before your transfer."
          },
          "evening": {
            "title": "Outbound Departure Transfer",
            "description": "Chauffeur drop to Kushinagar Airport or Railway Station for your onward journey home."
          }
        },
        "details": {
          "importantTimings": "Checkout: 12:00 PM | Transfer: As per flight/train",
          "meals": "Breakfast & Farewell Lunch included.",
          "transport": "AC Private Transfer Vehicle",
          "walkingLevel": "Easy Paced",
          "stay": "N/A (Day of departure)",
          "weather": "Cool crisp morning fog clearing to bright 22°C",
          "dressCode": "Comfortable travel wear",
          "packingSuggestions": "Check-in luggage packed, photo ID ready.",
          "accessibility": "Accessible vehicles",
          "visitorNote": "Arrive at Kushinagar station/airport 2 hours prior to departure.",
          "travelDuration": "Approx 1 hour transfer"
        }
      }
    ],
    "durationDays": 3,
    "durationLabel": "3 Days / 2 Nights",
    "travellerTypes": [
      "Pilgrims",
      "Seniors"
    ],
    "accessibilityStatus": "Wheelchair Accessible",
    "childFriendly": true,
    "packageBenefits": [
      "Pilgrimage Guide",
      "Senior Rest Support"
    ],
    "highlights": [
      "Spiritual darshan and guided temple tour in Kushinagar",
      "Experience peaceful aarti assemblies and sacred rituals",
      "Comfortable transfers to all holy sites"
    ],
    "tips": [
      "Carry valid government ID cards for verification.",
      "Traditional decency wear is recommended inside temple corridors.",
      "Avoid carrying electronics inside the inner sanctum."
    ],
    "itinerarySummary": [
      "Day 1: Arrival in Kushinagar: Illuminated Viewpoint & Welcome Feast",
      "Day 2: Spiritual Morning Prayers at Kushinagar",
      "Day 3: Souvenir Shopping & Onward Departure from Kushinagar"
    ],
    "cancellationSummary": "Get a 100% full refund on cancellations made up to 15 days before the departure. Rescheduling options are fully flexible."
  },
  {
    "id": "buddhism-lumbini-nepal",
    "title": "Lumbini Journey",
    "destinationName": "Lumbini",
    "destinations": "Lumbini (Rupandehi, Nepal)",
    "location": "Rupandehi, Nepal",
    "route": [
      "Rupandehi",
      "Lumbini"
    ],
    "mainCategory": "Pilgrimage",
    "subCategory": "Buddhism",
    "categoryLabel": "Pilgrimage",
    "category": "Pilgrimage",
    "region": "International",
    "image": "/images/tourist-places/pilgrimage/Buddhism/Lumbini, Nepal.jpg",
    "altText": "Lumbini buddhist pilgrimage destination in Rupandehi, Nepal",
    "duration": "3 Days / 2 Nights",
    "bestSeason": "October–March",
    "pace": "Easy",
    "travellerType": "Senior Friendly",
    "description": "A thoughtfully planned buddhist pilgrimage offering comfort, guidance, and a memorable experience.",
    "price": 22900,
    "rating": null,
    "reviewCount": null,
    "seatsLeft": null,
    "recentBookings": null,
    "verified": null,
    "tags": [
      "Pilgrimage",
      "Curated Journey"
    ],
    "seniorFriendly": true,
    "wheelchairAccess": true,
    "vegMeals": true,
    "inclusions": {
      "hotel": true,
      "meals": true,
      "transit": true,
      "guide": true,
      "entryPasses": true,
      "medicalSupport": false,
      "localExperience": false
    },
    "itinerary": [
      {
        "day": 1,
        "title": "Escorted Arrival in Rupandehi & Lumbini Gateway",
        "location": "Rupandehi",
        "overview": "Begin your sacred yatra as you arrive in Rupandehi. Check into your room at Boutique Star Hotel in Rupandehi and receive a brief orientation before evening prayers.",
        "schedule": {
          "morning": {
            "title": "Arrival & Escorted Transfer in Rupandehi",
            "description": "Meet our local travel escort at Rupandehi transit hub. Receive a traditional welcome and transfer to Boutique Star Hotel in Rupandehi."
          },
          "afternoon": {
            "title": "Unpack & Courtyard Leisure at Rupandehi",
            "description": "Check into your sanitized room, unpack your luggage, and enjoy quiet leisure time exploring hotel gardens and facilities."
          },
          "evening": {
            "title": "Cultural Folk Performance & Dinner at Lumbini",
            "description": "Attend solemn evening prayer assembly near Lumbini. Float earthen lamps and soak in peaceful chanting."
          }
        },
        "details": {
          "importantTimings": "Sunrise Tour: 5:45 AM | Museum Hours: 9:30 AM - 5:00 PM",
          "meals": "100% Satvik Pure Veg Breakfast & Temple Prasadam Dinner.",
          "transport": "AC Private Chauffeur Vehicle",
          "walkingLevel": "Easy Paced (Flat temple paths, seating available)",
          "stay": "Boutique Star Hotel in Rupandehi",
          "weather": "Warm tropical sunshine with ocean breeze 27°C",
          "dressCode": "Modest traditional attire (shoulders & knees covered)",
          "packingSuggestions": "Light cotton wear, camera with telephoto lens, sunscreen lotion, photo ID.",
          "accessibility": "Wheelchair ramps & low step entry vehicle",
          "visitorNote": "Escort coordinator will brief you on timing for Lumbini visit.",
          "travelDuration": "Approx 1 to 2 hours transfer"
        }
      },
      {
        "day": 2,
        "title": "Architectural Tour of Lumbini",
        "location": "Rupandehi",
        "overview": "A deep dive into Lumbini. Tour inner sanctums, historical galleries, and architectural viewpoints accompanied by an expert guide.",
        "schedule": {
          "morning": {
            "title": "Guided Tour of Lumbini",
            "description": "Early morning entry to Lumbini. Walk through central courtyards, ancient corridors, and historic halls."
          },
          "afternoon": {
            "title": "Sacred Shrine Darshan & Temple Complex near Rupandehi",
            "description": "Taste authentic local regional cuisine. Visit local artisan markets specializing in handcrafts native to Nepal."
          },
          "evening": {
            "title": "Sunset Viewpoint & Cultural Evening",
            "description": "Head to the highest scenic viewpoint overlooking Lumbini. Capture sunset photographs followed by evening entertainment."
          }
        },
        "details": {
          "importantTimings": "Sunrise Tour: 5:45 AM | Museum Hours: 9:30 AM - 5:00 PM",
          "meals": "Welcome Tender Coconut & Traditional Satvik Thali.",
          "transport": "AC Private Sedan / SUV",
          "walkingLevel": "Moderate (Historical walkways & corridors)",
          "stay": "Boutique Star Hotel in Rupandehi",
          "weather": "Warm tropical sunshine with ocean breeze 27°C",
          "dressCode": "Traditional attire",
          "packingSuggestions": "Comfortable walking socks, power bank, shoulder shawl, daypack.",
          "accessibility": "Assistive ramps available at main portals",
          "visitorNote": "Follow local heritage guidelines inside Lumbini.",
          "travelDuration": "Full day sightseeing approx 5 to 6 hours"
        }
      },
      {
        "day": 3,
        "title": "Souvenir Shopping & Onward Departure from Rupandehi",
        "location": "Rupandehi",
        "overview": "Conclude your trip to Lumbini with morning shopping for local delicacies and souvenirs, followed by departure transfer.",
        "schedule": {
          "morning": {
            "title": "Handicrafts & Sweet Market Visit",
            "description": "Visit trusted local bazaar stalls to buy regional spices, handmade crafts, and traditional sweets of Rupandehi."
          },
          "afternoon": {
            "title": "Hotel Checkout & Farewell Lunch",
            "description": "Return to hotel for packing and checkout. Enjoy a farewell lunch before your transfer."
          },
          "evening": {
            "title": "Outbound Departure Transfer",
            "description": "Chauffeur drop to Rupandehi Airport or Railway Station for your onward journey home."
          }
        },
        "details": {
          "importantTimings": "Checkout: 12:00 PM | Transfer: As per flight/train",
          "meals": "Breakfast & Farewell Lunch included.",
          "transport": "AC Private Transfer Vehicle",
          "walkingLevel": "Easy Paced",
          "stay": "N/A (Day of departure)",
          "weather": "Warm tropical sunshine with ocean breeze 27°C",
          "dressCode": "Comfortable travel wear",
          "packingSuggestions": "Check-in luggage packed, photo ID ready.",
          "accessibility": "Accessible vehicles",
          "visitorNote": "Arrive at Rupandehi station/airport 2 hours prior to departure.",
          "travelDuration": "Approx 1 hour transfer"
        }
      }
    ],
    "durationDays": 3,
    "durationLabel": "3 Days / 2 Nights",
    "travellerTypes": [
      "Pilgrims",
      "Seniors"
    ],
    "accessibilityStatus": "Wheelchair Accessible",
    "childFriendly": true,
    "packageBenefits": [
      "Pilgrimage Guide",
      "Senior Rest Support"
    ],
    "highlights": [
      "Spiritual darshan and guided temple tour in Lumbini",
      "Experience peaceful aarti assemblies and sacred rituals",
      "Comfortable transfers to all holy sites"
    ],
    "tips": [
      "Carry valid government ID cards for verification.",
      "Traditional decency wear is recommended inside temple corridors.",
      "Avoid carrying electronics inside the inner sanctum."
    ],
    "itinerarySummary": [
      "Day 1: Escorted Arrival in Rupandehi & Lumbini Gateway",
      "Day 2: Architectural Tour of Lumbini",
      "Day 3: Souvenir Shopping & Onward Departure from Rupandehi"
    ],
    "cancellationSummary": "Get a 100% full refund on cancellations made up to 15 days before the departure. Rescheduling options are fully flexible."
  },
  {
    "id": "buddhism-mahabodhi-temple-bagan-myanmar",
    "title": "Mahabodhi Temple, Bagan Journey",
    "destinationName": "Mahabodhi Temple, Bagan",
    "destinations": "Mahabodhi Temple, Bagan (Bagan, Myanmar)",
    "location": "Bagan, Myanmar",
    "route": [
      "Bagan",
      "Mahabodhi Temple, Bagan"
    ],
    "mainCategory": "Pilgrimage",
    "subCategory": "Buddhism",
    "categoryLabel": "Pilgrimage",
    "category": "Pilgrimage",
    "region": "International",
    "image": "/images/tourist-places/pilgrimage/Buddhism/Mahabodhi Temple, Bagan, Myanmar.jpg",
    "altText": "Mahabodhi Temple, Bagan buddhist pilgrimage destination in Bagan, Myanmar",
    "duration": "3 Days / 2 Nights",
    "bestSeason": "October–March",
    "pace": "Easy",
    "travellerType": "Senior Friendly",
    "description": "A thoughtfully planned buddhist pilgrimage offering comfort, guidance, and a memorable experience.",
    "price": 14500,
    "rating": null,
    "reviewCount": null,
    "seatsLeft": null,
    "recentBookings": null,
    "verified": null,
    "tags": [
      "Pilgrimage",
      "Curated Journey"
    ],
    "seniorFriendly": true,
    "wheelchairAccess": true,
    "vegMeals": true,
    "inclusions": {
      "hotel": true,
      "meals": true,
      "transit": true,
      "guide": true,
      "entryPasses": true,
      "medicalSupport": false,
      "localExperience": false
    },
    "itinerary": [
      {
        "day": 1,
        "title": "Arrival in Bagan: Riverside Aarti & Evening Tea",
        "location": "Bagan",
        "overview": "Begin your sacred yatra as you arrive in Bagan. Check into your room at Hilltop Panorama Resort near Mahabodhi Temple, Bagan and receive a brief orientation before evening prayers.",
        "schedule": {
          "morning": {
            "title": "Arrival & Escorted Transfer in Bagan",
            "description": "Meet our local travel escort at Bagan transit hub. Receive a traditional welcome and transfer to Hilltop Panorama Resort near Mahabodhi Temple, Bagan."
          },
          "afternoon": {
            "title": "Unpack & Courtyard Leisure at Bagan",
            "description": "Check into your sanitized room, unpack your luggage, and enjoy quiet leisure time exploring hotel gardens and facilities."
          },
          "evening": {
            "title": "Riverside Aarti & Evening Tea at Mahabodhi Temple, Bagan",
            "description": "Attend solemn evening prayer assembly near Mahabodhi Temple, Bagan. Float earthen lamps and soak in peaceful chanting."
          }
        },
        "details": {
          "importantTimings": "Guided Walk: 9:00 AM | Sunset Point Departure: 5:15 PM",
          "meals": "100% Satvik Pure Veg Breakfast & Temple Prasadam Dinner.",
          "transport": "AC Private Chauffeur Vehicle",
          "walkingLevel": "Easy Paced (Flat temple paths, seating available)",
          "stay": "Hilltop Panorama Resort near Mahabodhi Temple, Bagan",
          "weather": "Crisp mountain climate, clear blue skies 19°C",
          "dressCode": "Modest traditional attire (shoulders & knees covered)",
          "packingSuggestions": "Comfortable walking socks, power bank, shoulder shawl, daypack.",
          "accessibility": "Wheelchair ramps & low step entry vehicle",
          "visitorNote": "Escort coordinator will brief you on timing for Mahabodhi Temple, Bagan visit.",
          "travelDuration": "Approx 1 to 2 hours transfer"
        }
      },
      {
        "day": 2,
        "title": "Dawn Guided Expedition of Mahabodhi Temple, Bagan",
        "location": "Bagan",
        "overview": "A deep dive into Mahabodhi Temple, Bagan. Tour inner sanctums, historical galleries, and architectural viewpoints accompanied by an expert guide.",
        "schedule": {
          "morning": {
            "title": "Guided Tour of Mahabodhi Temple, Bagan",
            "description": "Early morning entry to Mahabodhi Temple, Bagan. Walk through central courtyards, ancient corridors, and historic halls."
          },
          "afternoon": {
            "title": "Coastal Promenade & Beach Relax near Bagan",
            "description": "Taste authentic local regional cuisine. Visit local artisan markets specializing in handcrafts native to Myanmar."
          },
          "evening": {
            "title": "Sunset Viewpoint & Cultural Evening",
            "description": "Head to the highest scenic viewpoint overlooking Mahabodhi Temple, Bagan. Capture sunset photographs followed by evening entertainment."
          }
        },
        "details": {
          "importantTimings": "Guided Walk: 9:00 AM | Sunset Point Departure: 5:15 PM",
          "meals": "Welcome Tender Coconut & Traditional Satvik Thali.",
          "transport": "AC Private Sedan / SUV",
          "walkingLevel": "Moderate (Historical walkways & corridors)",
          "stay": "Hilltop Panorama Resort near Mahabodhi Temple, Bagan",
          "weather": "Crisp mountain climate, clear blue skies 19°C",
          "dressCode": "Traditional attire",
          "packingSuggestions": "Breathable linen wear, sunglasses, small currency notes for local shops.",
          "accessibility": "Assistive ramps available at main portals",
          "visitorNote": "Follow local heritage guidelines inside Mahabodhi Temple, Bagan.",
          "travelDuration": "Full day sightseeing approx 5 to 6 hours"
        }
      },
      {
        "day": 3,
        "title": "Souvenir Shopping & Onward Departure from Bagan",
        "location": "Bagan",
        "overview": "Conclude your trip to Mahabodhi Temple, Bagan with morning shopping for local delicacies and souvenirs, followed by departure transfer.",
        "schedule": {
          "morning": {
            "title": "Handicrafts & Sweet Market Visit",
            "description": "Visit trusted local bazaar stalls to buy regional spices, handmade crafts, and traditional sweets of Bagan."
          },
          "afternoon": {
            "title": "Hotel Checkout & Farewell Lunch",
            "description": "Return to hotel for packing and checkout. Enjoy a farewell lunch before your transfer."
          },
          "evening": {
            "title": "Outbound Departure Transfer",
            "description": "Chauffeur drop to Bagan Airport or Railway Station for your onward journey home."
          }
        },
        "details": {
          "importantTimings": "Checkout: 12:00 PM | Transfer: As per flight/train",
          "meals": "Breakfast & Farewell Lunch included.",
          "transport": "AC Private Transfer Vehicle",
          "walkingLevel": "Easy Paced",
          "stay": "N/A (Day of departure)",
          "weather": "Crisp mountain climate, clear blue skies 19°C",
          "dressCode": "Comfortable travel wear",
          "packingSuggestions": "Check-in luggage packed, photo ID ready.",
          "accessibility": "Accessible vehicles",
          "visitorNote": "Arrive at Bagan station/airport 2 hours prior to departure.",
          "travelDuration": "Approx 1 hour transfer"
        }
      }
    ],
    "durationDays": 3,
    "durationLabel": "3 Days / 2 Nights",
    "travellerTypes": [
      "Pilgrims",
      "Seniors"
    ],
    "accessibilityStatus": "Wheelchair Accessible",
    "childFriendly": true,
    "packageBenefits": [
      "Pilgrimage Guide",
      "Senior Rest Support"
    ],
    "highlights": [
      "Spiritual darshan and guided temple tour in Mahabodhi Temple, Bagan",
      "Experience peaceful aarti assemblies and sacred rituals",
      "Comfortable transfers to all holy sites"
    ],
    "tips": [
      "Carry valid government ID cards for verification.",
      "Traditional decency wear is recommended inside temple corridors.",
      "Avoid carrying electronics inside the inner sanctum."
    ],
    "itinerarySummary": [
      "Day 1: Arrival in Bagan: Riverside Aarti & Evening Tea",
      "Day 2: Dawn Guided Expedition of Mahabodhi Temple, Bagan",
      "Day 3: Souvenir Shopping & Onward Departure from Bagan"
    ],
    "cancellationSummary": "Get a 100% full refund on cancellations made up to 15 days before the departure. Rescheduling options are fully flexible."
  },
  {
    "id": "buddhism-mount-kailash-tibet",
    "title": "Mount Kailash Journey",
    "destinationName": "Mount Kailash",
    "destinations": "Mount Kailash (Ngari, Tibet)",
    "location": "Ngari, Tibet",
    "route": [
      "Ngari",
      "Mount Kailash"
    ],
    "mainCategory": "Pilgrimage",
    "subCategory": "Buddhism",
    "categoryLabel": "Pilgrimage",
    "category": "Pilgrimage",
    "region": "International",
    "image": "/images/tourist-places/pilgrimage/Buddhism/Mount Kailash, Tibet.webp",
    "altText": "Mount Kailash buddhist pilgrimage destination in Ngari, Tibet",
    "duration": "3 Days / 2 Nights",
    "bestSeason": "October–March",
    "pace": "Moderate",
    "travellerType": "Senior Friendly",
    "description": "A thoughtfully planned buddhist pilgrimage offering comfort, guidance, and a memorable experience.",
    "price": 15700,
    "rating": null,
    "reviewCount": null,
    "seatsLeft": null,
    "recentBookings": null,
    "verified": null,
    "tags": [
      "Pilgrimage",
      "Curated Journey"
    ],
    "seniorFriendly": true,
    "wheelchairAccess": true,
    "vegMeals": true,
    "inclusions": {
      "hotel": true,
      "meals": true,
      "transit": true,
      "guide": true,
      "entryPasses": true,
      "medicalSupport": false,
      "localExperience": false
    },
    "itinerary": [
      {
        "day": 1,
        "title": "Scenic Drive to Ngari & Mount Kailash Gateway",
        "location": "Ngari",
        "overview": "Begin your sacred yatra as you arrive in Ngari. Check into your room at Heritage Palace Resort overlooking Mount Kailash and receive a brief orientation before evening prayers.",
        "schedule": {
          "morning": {
            "title": "Arrival & Escorted Transfer in Ngari",
            "description": "Meet our local travel escort at Ngari transit hub. Receive a traditional welcome and transfer to Heritage Palace Resort overlooking Mount Kailash."
          },
          "afternoon": {
            "title": "Unpack & Courtyard Leisure at Ngari",
            "description": "Check into your sanitized room, unpack your luggage, and enjoy quiet leisure time exploring hotel gardens and facilities."
          },
          "evening": {
            "title": "Skyline Sunset & Regional Delicacies at Mount Kailash",
            "description": "Attend solemn evening prayer assembly near Mount Kailash. Float earthen lamps and soak in peaceful chanting."
          }
        },
        "details": {
          "importantTimings": "Boat Departure: 6:00 AM | Heritage Show: 7:00 PM",
          "meals": "100% Satvik Pure Veg Breakfast & Temple Prasadam Dinner.",
          "transport": "AC Private Chauffeur Vehicle",
          "walkingLevel": "Easy Paced (Flat temple paths, seating available)",
          "stay": "Heritage Palace Resort overlooking Mount Kailash",
          "weather": "Refreshing river mist with mild sun 23°C",
          "dressCode": "Modest traditional attire (shoulders & knees covered)",
          "packingSuggestions": "Breathable linen wear, sunglasses, small currency notes for local shops.",
          "accessibility": "Wheelchair ramps & low step entry vehicle",
          "visitorNote": "Escort coordinator will brief you on timing for Mount Kailash visit.",
          "travelDuration": "Approx 1 to 2 hours transfer"
        }
      },
      {
        "day": 2,
        "title": "Early Sunrise Visit to Mount Kailash",
        "location": "Ngari",
        "overview": "A deep dive into Mount Kailash. Tour inner sanctums, historical galleries, and architectural viewpoints accompanied by an expert guide.",
        "schedule": {
          "morning": {
            "title": "Guided Tour of Mount Kailash",
            "description": "Early morning entry to Mount Kailash. Walk through central courtyards, ancient corridors, and historic halls."
          },
          "afternoon": {
            "title": "Culinary Tasting & Local Artisan Crafts near Ngari",
            "description": "Taste authentic local regional cuisine. Visit local artisan markets specializing in handcrafts native to Tibet."
          },
          "evening": {
            "title": "Sunset Viewpoint & Cultural Evening",
            "description": "Head to the highest scenic viewpoint overlooking Mount Kailash. Capture sunset photographs followed by evening entertainment."
          }
        },
        "details": {
          "importantTimings": "Boat Departure: 6:00 AM | Heritage Show: 7:00 PM",
          "meals": "Welcome Tender Coconut & Traditional Satvik Thali.",
          "transport": "AC Private Sedan / SUV",
          "walkingLevel": "Moderate (Historical walkways & corridors)",
          "stay": "Heritage Palace Resort overlooking Mount Kailash",
          "weather": "Refreshing river mist with mild sun 23°C",
          "dressCode": "Traditional attire",
          "packingSuggestions": "Sunhat, sunglasses, comfortable walking shoes, light jacket, camera.",
          "accessibility": "Assistive ramps available at main portals",
          "visitorNote": "Follow local heritage guidelines inside Mount Kailash.",
          "travelDuration": "Full day sightseeing approx 5 to 6 hours"
        }
      },
      {
        "day": 3,
        "title": "Souvenir Shopping & Onward Departure from Ngari",
        "location": "Ngari",
        "overview": "Conclude your trip to Mount Kailash with morning shopping for local delicacies and souvenirs, followed by departure transfer.",
        "schedule": {
          "morning": {
            "title": "Handicrafts & Sweet Market Visit",
            "description": "Visit trusted local bazaar stalls to buy regional spices, handmade crafts, and traditional sweets of Ngari."
          },
          "afternoon": {
            "title": "Hotel Checkout & Farewell Lunch",
            "description": "Return to hotel for packing and checkout. Enjoy a farewell lunch before your transfer."
          },
          "evening": {
            "title": "Outbound Departure Transfer",
            "description": "Chauffeur drop to Ngari Airport or Railway Station for your onward journey home."
          }
        },
        "details": {
          "importantTimings": "Checkout: 12:00 PM | Transfer: As per flight/train",
          "meals": "Breakfast & Farewell Lunch included.",
          "transport": "AC Private Transfer Vehicle",
          "walkingLevel": "Easy Paced",
          "stay": "N/A (Day of departure)",
          "weather": "Refreshing river mist with mild sun 23°C",
          "dressCode": "Comfortable travel wear",
          "packingSuggestions": "Check-in luggage packed, photo ID ready.",
          "accessibility": "Accessible vehicles",
          "visitorNote": "Arrive at Ngari station/airport 2 hours prior to departure.",
          "travelDuration": "Approx 1 hour transfer"
        }
      }
    ],
    "durationDays": 3,
    "durationLabel": "3 Days / 2 Nights",
    "travellerTypes": [
      "Pilgrims",
      "Seniors"
    ],
    "accessibilityStatus": "Partial Accessibility",
    "childFriendly": true,
    "packageBenefits": [
      "Pilgrimage Guide",
      "Senior Rest Support"
    ],
    "highlights": [
      "Spiritual darshan and guided temple tour in Mount Kailash",
      "Experience peaceful aarti assemblies and sacred rituals",
      "Comfortable transfers to all holy sites"
    ],
    "tips": [
      "Carry valid government ID cards for verification.",
      "Traditional decency wear is recommended inside temple corridors.",
      "Avoid carrying electronics inside the inner sanctum."
    ],
    "itinerarySummary": [
      "Day 1: Scenic Drive to Ngari & Mount Kailash Gateway",
      "Day 2: Early Sunrise Visit to Mount Kailash",
      "Day 3: Souvenir Shopping & Onward Departure from Ngari"
    ],
    "cancellationSummary": "Get a 100% full refund on cancellations made up to 15 days before the departure. Rescheduling options are fully flexible."
  },
  {
    "id": "buddhism-nalanda-india",
    "title": "Nalanda Journey",
    "destinationName": "Nalanda",
    "destinations": "Nalanda (Nalanda, Bihar, India)",
    "location": "Nalanda, Bihar, India",
    "route": [
      "Nalanda",
      "Nalanda"
    ],
    "mainCategory": "Pilgrimage",
    "subCategory": "Buddhism",
    "categoryLabel": "Pilgrimage",
    "category": "Pilgrimage",
    "region": "North India",
    "image": "/images/tourist-places/pilgrimage/Buddhism/Nalanda, India.jpg",
    "altText": "Nalanda buddhist pilgrimage destination in Nalanda, Bihar, India",
    "duration": "3 Days / 2 Nights",
    "bestSeason": "October–March",
    "pace": "Easy",
    "travellerType": "Senior Friendly",
    "description": "A thoughtfully planned buddhist pilgrimage offering comfort, guidance, and a memorable experience.",
    "price": 16900,
    "rating": null,
    "reviewCount": null,
    "seatsLeft": null,
    "recentBookings": null,
    "verified": null,
    "tags": [
      "Pilgrimage",
      "Curated Journey"
    ],
    "seniorFriendly": true,
    "wheelchairAccess": true,
    "vegMeals": true,
    "inclusions": {
      "hotel": true,
      "meals": true,
      "transit": true,
      "guide": true,
      "entryPasses": true,
      "medicalSupport": false,
      "localExperience": false
    },
    "itinerary": [
      {
        "day": 1,
        "title": "Arrival in Nalanda: Candlelight Dinner & Courtyard Music",
        "location": "Nalanda",
        "overview": "Begin your sacred yatra as you arrive in Nalanda. Check into your room at Boutique Lakefront Haveli in Nalanda and receive a brief orientation before evening prayers.",
        "schedule": {
          "morning": {
            "title": "Arrival & Escorted Transfer in Nalanda",
            "description": "Meet our local travel escort at Nalanda transit hub. Receive a traditional welcome and transfer to Boutique Lakefront Haveli in Nalanda."
          },
          "afternoon": {
            "title": "Unpack & Courtyard Leisure at Nalanda",
            "description": "Check into your sanitized room, unpack your luggage, and enjoy quiet leisure time exploring hotel gardens and facilities."
          },
          "evening": {
            "title": "Candlelight Dinner & Courtyard Music at Nalanda",
            "description": "Attend solemn evening prayer assembly near Nalanda. Float earthen lamps and soak in peaceful chanting."
          }
        },
        "details": {
          "importantTimings": "Gate Entry: 8:00 AM | Evening Light Show: 6:30 PM",
          "meals": "100% Satvik Pure Veg Breakfast & Temple Prasadam Dinner.",
          "transport": "AC Private Chauffeur Vehicle",
          "walkingLevel": "Easy Paced (Flat temple paths, seating available)",
          "stay": "Boutique Lakefront Haveli in Nalanda",
          "weather": "Pleasant breeze with sunny afternoon 24°C",
          "dressCode": "Modest traditional attire (shoulders & knees covered)",
          "packingSuggestions": "Sunhat, sunglasses, comfortable walking shoes, light jacket, camera.",
          "accessibility": "Wheelchair ramps & low step entry vehicle",
          "visitorNote": "Escort coordinator will brief you on timing for Nalanda visit.",
          "travelDuration": "Approx 1 to 2 hours transfer"
        }
      },
      {
        "day": 2,
        "title": "Exclusive Morning Tour of Nalanda",
        "location": "Nalanda",
        "overview": "A deep dive into Nalanda. Tour inner sanctums, historical galleries, and architectural viewpoints accompanied by an expert guide.",
        "schedule": {
          "morning": {
            "title": "Guided Tour of Nalanda",
            "description": "Early morning entry to Nalanda. Walk through central courtyards, ancient corridors, and historic halls."
          },
          "afternoon": {
            "title": "Excursion to Surrounding Haveli & Gardens near Nalanda",
            "description": "Taste authentic local regional cuisine. Visit local artisan markets specializing in handcrafts native to Bihar, India."
          },
          "evening": {
            "title": "Sunset Viewpoint & Cultural Evening",
            "description": "Head to the highest scenic viewpoint overlooking Nalanda. Capture sunset photographs followed by evening entertainment."
          }
        },
        "details": {
          "importantTimings": "Gate Entry: 8:00 AM | Evening Light Show: 6:30 PM",
          "meals": "Welcome Tender Coconut & Traditional Satvik Thali.",
          "transport": "AC Private Sedan / SUV",
          "walkingLevel": "Moderate (Historical walkways & corridors)",
          "stay": "Boutique Lakefront Haveli in Nalanda",
          "weather": "Pleasant breeze with sunny afternoon 24°C",
          "dressCode": "Traditional attire",
          "packingSuggestions": "Traditional headscarf, slip-on shoes, reusable water bottle, dry bag.",
          "accessibility": "Assistive ramps available at main portals",
          "visitorNote": "Follow local heritage guidelines inside Nalanda.",
          "travelDuration": "Full day sightseeing approx 5 to 6 hours"
        }
      },
      {
        "day": 3,
        "title": "Souvenir Shopping & Onward Departure from Nalanda",
        "location": "Nalanda",
        "overview": "Conclude your trip to Nalanda with morning shopping for local delicacies and souvenirs, followed by departure transfer.",
        "schedule": {
          "morning": {
            "title": "Handicrafts & Sweet Market Visit",
            "description": "Visit trusted local bazaar stalls to buy regional spices, handmade crafts, and traditional sweets of Nalanda."
          },
          "afternoon": {
            "title": "Hotel Checkout & Farewell Lunch",
            "description": "Return to hotel for packing and checkout. Enjoy a farewell lunch before your transfer."
          },
          "evening": {
            "title": "Outbound Departure Transfer",
            "description": "Chauffeur drop to Nalanda Airport or Railway Station for your onward journey home."
          }
        },
        "details": {
          "importantTimings": "Checkout: 12:00 PM | Transfer: As per flight/train",
          "meals": "Breakfast & Farewell Lunch included.",
          "transport": "AC Private Transfer Vehicle",
          "walkingLevel": "Easy Paced",
          "stay": "N/A (Day of departure)",
          "weather": "Pleasant breeze with sunny afternoon 24°C",
          "dressCode": "Comfortable travel wear",
          "packingSuggestions": "Check-in luggage packed, photo ID ready.",
          "accessibility": "Accessible vehicles",
          "visitorNote": "Arrive at Nalanda station/airport 2 hours prior to departure.",
          "travelDuration": "Approx 1 hour transfer"
        }
      }
    ],
    "durationDays": 3,
    "durationLabel": "3 Days / 2 Nights",
    "travellerTypes": [
      "Pilgrims",
      "Seniors"
    ],
    "accessibilityStatus": "Wheelchair Accessible",
    "childFriendly": true,
    "packageBenefits": [
      "Pilgrimage Guide",
      "Senior Rest Support"
    ],
    "highlights": [
      "Spiritual darshan and guided temple tour in Nalanda",
      "Experience peaceful aarti assemblies and sacred rituals",
      "Comfortable transfers to all holy sites"
    ],
    "tips": [
      "Carry valid government ID cards for verification.",
      "Traditional decency wear is recommended inside temple corridors.",
      "Avoid carrying electronics inside the inner sanctum."
    ],
    "itinerarySummary": [
      "Day 1: Arrival in Nalanda: Candlelight Dinner & Courtyard Music",
      "Day 2: Exclusive Morning Tour of Nalanda",
      "Day 3: Souvenir Shopping & Onward Departure from Nalanda"
    ],
    "cancellationSummary": "Get a 100% full refund on cancellations made up to 15 days before the departure. Rescheduling options are fully flexible."
  },
  {
    "id": "buddhism-rajgir-india",
    "title": "Rajgir Journey",
    "destinationName": "Rajgir",
    "destinations": "Rajgir (Nalanda, Bihar, India)",
    "location": "Nalanda, Bihar, India",
    "route": [
      "Nalanda",
      "Rajgir"
    ],
    "mainCategory": "Pilgrimage",
    "subCategory": "Buddhism",
    "categoryLabel": "Pilgrimage",
    "category": "Pilgrimage",
    "region": "North India",
    "image": "/images/tourist-places/pilgrimage/Buddhism/Rajgir, India.jpg",
    "altText": "Rajgir buddhist pilgrimage destination in Nalanda, Bihar, India",
    "duration": "3 Days / 2 Nights",
    "bestSeason": "October–March",
    "pace": "Easy",
    "travellerType": "Senior Friendly",
    "description": "A thoughtfully planned buddhist pilgrimage offering comfort, guidance, and a memorable experience.",
    "price": 18100,
    "rating": null,
    "reviewCount": null,
    "seatsLeft": null,
    "recentBookings": null,
    "verified": null,
    "tags": [
      "Pilgrimage",
      "Curated Journey"
    ],
    "seniorFriendly": true,
    "wheelchairAccess": true,
    "vegMeals": true,
    "inclusions": {
      "hotel": true,
      "meals": true,
      "transit": true,
      "guide": true,
      "entryPasses": true,
      "medicalSupport": false,
      "localExperience": false
    },
    "itinerary": [
      {
        "day": 1,
        "title": "Beginning Your Journey in Nalanda & Rajgir Gateway",
        "location": "Nalanda",
        "overview": "Begin your sacred yatra as you arrive in Nalanda. Check into your room at Royal Heritage Villa near Rajgir and receive a brief orientation before evening prayers.",
        "schedule": {
          "morning": {
            "title": "Arrival & Escorted Transfer in Nalanda",
            "description": "Meet our local travel escort at Nalanda transit hub. Receive a traditional welcome and transfer to Royal Heritage Villa near Rajgir."
          },
          "afternoon": {
            "title": "Unpack & Courtyard Leisure at Nalanda",
            "description": "Check into your sanitized room, unpack your luggage, and enjoy quiet leisure time exploring hotel gardens and facilities."
          },
          "evening": {
            "title": "Heritage Bazaar Promenade at Rajgir",
            "description": "Attend solemn evening prayer assembly near Rajgir. Float earthen lamps and soak in peaceful chanting."
          }
        },
        "details": {
          "importantTimings": "Sanctum VIP Slot: 6:30 AM | Bazaar Hours: 4:00 PM - 8:30 PM",
          "meals": "100% Satvik Pure Veg Breakfast & Temple Prasadam Dinner.",
          "transport": "AC Private Chauffeur Vehicle",
          "walkingLevel": "Easy Paced (Flat temple paths, seating available)",
          "stay": "Royal Heritage Villa near Rajgir",
          "weather": "Cool crisp morning fog clearing to bright 22°C",
          "dressCode": "Modest traditional attire (shoulders & knees covered)",
          "packingSuggestions": "Traditional headscarf, slip-on shoes, reusable water bottle, dry bag.",
          "accessibility": "Wheelchair ramps & low step entry vehicle",
          "visitorNote": "Escort coordinator will brief you on timing for Rajgir visit.",
          "travelDuration": "Approx 1 to 2 hours transfer"
        }
      },
      {
        "day": 2,
        "title": "VIP Access to Rajgir",
        "location": "Nalanda",
        "overview": "A deep dive into Rajgir. Tour inner sanctums, historical galleries, and architectural viewpoints accompanied by an expert guide.",
        "schedule": {
          "morning": {
            "title": "Guided Tour of Rajgir",
            "description": "Early morning entry to Rajgir. Walk through central courtyards, ancient corridors, and historic halls."
          },
          "afternoon": {
            "title": "Museum Treasures & Heritage Galleries near Nalanda",
            "description": "Taste authentic local regional cuisine. Visit local artisan markets specializing in handcrafts native to Bihar, India."
          },
          "evening": {
            "title": "Sunset Viewpoint & Cultural Evening",
            "description": "Head to the highest scenic viewpoint overlooking Rajgir. Capture sunset photographs followed by evening entertainment."
          }
        },
        "details": {
          "importantTimings": "Sanctum VIP Slot: 6:30 AM | Bazaar Hours: 4:00 PM - 8:30 PM",
          "meals": "Welcome Tender Coconut & Traditional Satvik Thali.",
          "transport": "AC Private Sedan / SUV",
          "walkingLevel": "Moderate (Historical walkways & corridors)",
          "stay": "Royal Heritage Villa near Rajgir",
          "weather": "Cool crisp morning fog clearing to bright 22°C",
          "dressCode": "Traditional attire",
          "packingSuggestions": "Light cotton wear, camera with telephoto lens, sunscreen lotion, photo ID.",
          "accessibility": "Assistive ramps available at main portals",
          "visitorNote": "Follow local heritage guidelines inside Rajgir.",
          "travelDuration": "Full day sightseeing approx 5 to 6 hours"
        }
      },
      {
        "day": 3,
        "title": "Souvenir Shopping & Onward Departure from Nalanda",
        "location": "Nalanda",
        "overview": "Conclude your trip to Rajgir with morning shopping for local delicacies and souvenirs, followed by departure transfer.",
        "schedule": {
          "morning": {
            "title": "Handicrafts & Sweet Market Visit",
            "description": "Visit trusted local bazaar stalls to buy regional spices, handmade crafts, and traditional sweets of Nalanda."
          },
          "afternoon": {
            "title": "Hotel Checkout & Farewell Lunch",
            "description": "Return to hotel for packing and checkout. Enjoy a farewell lunch before your transfer."
          },
          "evening": {
            "title": "Outbound Departure Transfer",
            "description": "Chauffeur drop to Nalanda Airport or Railway Station for your onward journey home."
          }
        },
        "details": {
          "importantTimings": "Checkout: 12:00 PM | Transfer: As per flight/train",
          "meals": "Breakfast & Farewell Lunch included.",
          "transport": "AC Private Transfer Vehicle",
          "walkingLevel": "Easy Paced",
          "stay": "N/A (Day of departure)",
          "weather": "Cool crisp morning fog clearing to bright 22°C",
          "dressCode": "Comfortable travel wear",
          "packingSuggestions": "Check-in luggage packed, photo ID ready.",
          "accessibility": "Accessible vehicles",
          "visitorNote": "Arrive at Nalanda station/airport 2 hours prior to departure.",
          "travelDuration": "Approx 1 hour transfer"
        }
      }
    ],
    "durationDays": 3,
    "durationLabel": "3 Days / 2 Nights",
    "travellerTypes": [
      "Pilgrims",
      "Seniors"
    ],
    "accessibilityStatus": "Wheelchair Accessible",
    "childFriendly": true,
    "packageBenefits": [
      "Pilgrimage Guide",
      "Senior Rest Support"
    ],
    "highlights": [
      "Spiritual darshan and guided temple tour in Rajgir",
      "Experience peaceful aarti assemblies and sacred rituals",
      "Comfortable transfers to all holy sites"
    ],
    "tips": [
      "Carry valid government ID cards for verification.",
      "Traditional decency wear is recommended inside temple corridors.",
      "Avoid carrying electronics inside the inner sanctum."
    ],
    "itinerarySummary": [
      "Day 1: Beginning Your Journey in Nalanda & Rajgir Gateway",
      "Day 2: VIP Access to Rajgir",
      "Day 3: Souvenir Shopping & Onward Departure from Nalanda"
    ],
    "cancellationSummary": "Get a 100% full refund on cancellations made up to 15 days before the departure. Rescheduling options are fully flexible."
  },
  {
    "id": "buddhism-sarnath-india",
    "title": "Sarnath Journey",
    "destinationName": "Sarnath",
    "destinations": "Sarnath (Varanasi, Uttar Pradesh, India)",
    "location": "Varanasi, Uttar Pradesh, India",
    "route": [
      "Varanasi",
      "Sarnath"
    ],
    "mainCategory": "Pilgrimage",
    "subCategory": "Buddhism",
    "categoryLabel": "Pilgrimage",
    "category": "Pilgrimage",
    "region": "North India",
    "image": "/images/tourist-places/pilgrimage/Buddhism/Sarnath, India.jpg",
    "altText": "Sarnath buddhist pilgrimage destination in Varanasi, Uttar Pradesh, India",
    "duration": "3 Days / 2 Nights",
    "bestSeason": "October–March",
    "pace": "Easy",
    "travellerType": "Senior Friendly",
    "description": "A thoughtfully planned buddhist pilgrimage offering comfort, guidance, and a memorable experience.",
    "price": 19300,
    "rating": null,
    "reviewCount": null,
    "seatsLeft": null,
    "recentBookings": null,
    "verified": null,
    "tags": [
      "Pilgrimage",
      "Curated Journey"
    ],
    "seniorFriendly": true,
    "wheelchairAccess": true,
    "vegMeals": true,
    "inclusions": {
      "hotel": true,
      "meals": true,
      "transit": true,
      "guide": true,
      "entryPasses": true,
      "medicalSupport": false,
      "localExperience": false
    },
    "itinerary": [
      {
        "day": 1,
        "title": "Arrival in Varanasi: Panoramic Terrace Lounge Session",
        "location": "Varanasi",
        "overview": "Begin your sacred yatra as you arrive in Varanasi. Check into your room at Luxury Eco Lodge in Varanasi and receive a brief orientation before evening prayers.",
        "schedule": {
          "morning": {
            "title": "Arrival & Escorted Transfer in Varanasi",
            "description": "Meet our local travel escort at Varanasi transit hub. Receive a traditional welcome and transfer to Luxury Eco Lodge in Varanasi."
          },
          "afternoon": {
            "title": "Unpack & Courtyard Leisure at Varanasi",
            "description": "Check into your sanitized room, unpack your luggage, and enjoy quiet leisure time exploring hotel gardens and facilities."
          },
          "evening": {
            "title": "Panoramic Terrace Lounge Session at Sarnath",
            "description": "Attend solemn evening prayer assembly near Sarnath. Float earthen lamps and soak in peaceful chanting."
          }
        },
        "details": {
          "importantTimings": "Sunrise Tour: 5:45 AM | Museum Hours: 9:30 AM - 5:00 PM",
          "meals": "100% Satvik Pure Veg Breakfast & Temple Prasadam Dinner.",
          "transport": "AC Private Chauffeur Vehicle",
          "walkingLevel": "Easy Paced (Flat temple paths, seating available)",
          "stay": "Luxury Eco Lodge in Varanasi",
          "weather": "Warm tropical sunshine with ocean breeze 27°C",
          "dressCode": "Modest traditional attire (shoulders & knees covered)",
          "packingSuggestions": "Light cotton wear, camera with telephoto lens, sunscreen lotion, photo ID.",
          "accessibility": "Wheelchair ramps & low step entry vehicle",
          "visitorNote": "Escort coordinator will brief you on timing for Sarnath visit.",
          "travelDuration": "Approx 1 to 2 hours transfer"
        }
      },
      {
        "day": 2,
        "title": "Breakfast & Exploration of Sarnath",
        "location": "Varanasi",
        "overview": "A deep dive into Sarnath. Tour inner sanctums, historical galleries, and architectural viewpoints accompanied by an expert guide.",
        "schedule": {
          "morning": {
            "title": "Guided Tour of Sarnath",
            "description": "Early morning entry to Sarnath. Walk through central courtyards, ancient corridors, and historic halls."
          },
          "afternoon": {
            "title": "Boat Ride & Riverfront Exploration near Varanasi",
            "description": "Taste authentic local regional cuisine. Visit local artisan markets specializing in handcrafts native to Uttar Pradesh, India."
          },
          "evening": {
            "title": "Sunset Viewpoint & Cultural Evening",
            "description": "Head to the highest scenic viewpoint overlooking Sarnath. Capture sunset photographs followed by evening entertainment."
          }
        },
        "details": {
          "importantTimings": "Sunrise Tour: 5:45 AM | Museum Hours: 9:30 AM - 5:00 PM",
          "meals": "Welcome Tender Coconut & Traditional Satvik Thali.",
          "transport": "AC Private Sedan / SUV",
          "walkingLevel": "Moderate (Historical walkways & corridors)",
          "stay": "Luxury Eco Lodge in Varanasi",
          "weather": "Warm tropical sunshine with ocean breeze 27°C",
          "dressCode": "Traditional attire",
          "packingSuggestions": "Comfortable walking socks, power bank, shoulder shawl, daypack.",
          "accessibility": "Assistive ramps available at main portals",
          "visitorNote": "Follow local heritage guidelines inside Sarnath.",
          "travelDuration": "Full day sightseeing approx 5 to 6 hours"
        }
      },
      {
        "day": 3,
        "title": "Souvenir Shopping & Onward Departure from Varanasi",
        "location": "Varanasi",
        "overview": "Conclude your trip to Sarnath with morning shopping for local delicacies and souvenirs, followed by departure transfer.",
        "schedule": {
          "morning": {
            "title": "Handicrafts & Sweet Market Visit",
            "description": "Visit trusted local bazaar stalls to buy regional spices, handmade crafts, and traditional sweets of Varanasi."
          },
          "afternoon": {
            "title": "Hotel Checkout & Farewell Lunch",
            "description": "Return to hotel for packing and checkout. Enjoy a farewell lunch before your transfer."
          },
          "evening": {
            "title": "Outbound Departure Transfer",
            "description": "Chauffeur drop to Varanasi Airport or Railway Station for your onward journey home."
          }
        },
        "details": {
          "importantTimings": "Checkout: 12:00 PM | Transfer: As per flight/train",
          "meals": "Breakfast & Farewell Lunch included.",
          "transport": "AC Private Transfer Vehicle",
          "walkingLevel": "Easy Paced",
          "stay": "N/A (Day of departure)",
          "weather": "Warm tropical sunshine with ocean breeze 27°C",
          "dressCode": "Comfortable travel wear",
          "packingSuggestions": "Check-in luggage packed, photo ID ready.",
          "accessibility": "Accessible vehicles",
          "visitorNote": "Arrive at Varanasi station/airport 2 hours prior to departure.",
          "travelDuration": "Approx 1 hour transfer"
        }
      }
    ],
    "durationDays": 3,
    "durationLabel": "3 Days / 2 Nights",
    "travellerTypes": [
      "Pilgrims",
      "Seniors"
    ],
    "accessibilityStatus": "Wheelchair Accessible",
    "childFriendly": true,
    "packageBenefits": [
      "Pilgrimage Guide",
      "Senior Rest Support"
    ],
    "highlights": [
      "Spiritual darshan and guided temple tour in Sarnath",
      "Experience peaceful aarti assemblies and sacred rituals",
      "Comfortable transfers to all holy sites"
    ],
    "tips": [
      "Carry valid government ID cards for verification.",
      "Traditional decency wear is recommended inside temple corridors.",
      "Avoid carrying electronics inside the inner sanctum."
    ],
    "itinerarySummary": [
      "Day 1: Arrival in Varanasi: Panoramic Terrace Lounge Session",
      "Day 2: Breakfast & Exploration of Sarnath",
      "Day 3: Souvenir Shopping & Onward Departure from Varanasi"
    ],
    "cancellationSummary": "Get a 100% full refund on cancellations made up to 15 days before the departure. Rescheduling options are fully flexible."
  },
  {
    "id": "buddhism-shwedagon-pagoda-myanmar",
    "title": "Shwedagon Pagoda Journey",
    "destinationName": "Shwedagon Pagoda",
    "destinations": "Shwedagon Pagoda (Yangon, Myanmar)",
    "location": "Yangon, Myanmar",
    "route": [
      "Yangon",
      "Shwedagon Pagoda"
    ],
    "mainCategory": "Pilgrimage",
    "subCategory": "Buddhism",
    "categoryLabel": "Pilgrimage",
    "category": "Pilgrimage",
    "region": "International",
    "image": "/images/tourist-places/pilgrimage/Buddhism/Shwedagon Pagoda, Myanmar.jpg",
    "altText": "Shwedagon Pagoda buddhist pilgrimage destination in Yangon, Myanmar",
    "duration": "3 Days / 2 Nights",
    "bestSeason": "October–March",
    "pace": "Easy",
    "travellerType": "Senior Friendly",
    "description": "A thoughtfully planned buddhist pilgrimage offering comfort, guidance, and a memorable experience.",
    "price": 20500,
    "rating": null,
    "reviewCount": null,
    "seatsLeft": null,
    "recentBookings": null,
    "verified": null,
    "tags": [
      "Pilgrimage",
      "Curated Journey"
    ],
    "seniorFriendly": true,
    "wheelchairAccess": true,
    "vegMeals": true,
    "inclusions": {
      "hotel": true,
      "meals": true,
      "transit": true,
      "guide": true,
      "entryPasses": true,
      "medicalSupport": false,
      "localExperience": false
    },
    "itinerary": [
      {
        "day": 1,
        "title": "Spiritual Welcome to Yangon & Shwedagon Pagoda Gateway",
        "location": "Yangon",
        "overview": "Begin your sacred yatra as you arrive in Yangon. Check into your room at Grand Riverfront Resort near Shwedagon Pagoda and receive a brief orientation before evening prayers.",
        "schedule": {
          "morning": {
            "title": "Arrival & Escorted Transfer in Yangon",
            "description": "Meet our local travel escort at Yangon transit hub. Receive a traditional welcome and transfer to Grand Riverfront Resort near Shwedagon Pagoda."
          },
          "afternoon": {
            "title": "Unpack & Courtyard Leisure at Yangon",
            "description": "Check into your sanitized room, unpack your luggage, and enjoy quiet leisure time exploring hotel gardens and facilities."
          },
          "evening": {
            "title": "Lakeside Stroll & Local Cuisine at Shwedagon Pagoda",
            "description": "Attend solemn evening prayer assembly near Shwedagon Pagoda. Float earthen lamps and soak in peaceful chanting."
          }
        },
        "details": {
          "importantTimings": "Guided Walk: 9:00 AM | Sunset Point Departure: 5:15 PM",
          "meals": "100% Satvik Pure Veg Breakfast & Temple Prasadam Dinner.",
          "transport": "AC Private Chauffeur Vehicle",
          "walkingLevel": "Easy Paced (Flat temple paths, seating available)",
          "stay": "Grand Riverfront Resort near Shwedagon Pagoda",
          "weather": "Crisp mountain climate, clear blue skies 19°C",
          "dressCode": "Modest traditional attire (shoulders & knees covered)",
          "packingSuggestions": "Comfortable walking socks, power bank, shoulder shawl, daypack.",
          "accessibility": "Wheelchair ramps & low step entry vehicle",
          "visitorNote": "Escort coordinator will brief you on timing for Shwedagon Pagoda visit.",
          "travelDuration": "Approx 1 to 2 hours transfer"
        }
      },
      {
        "day": 2,
        "title": "Panoramic Discovery of Shwedagon Pagoda",
        "location": "Yangon",
        "overview": "A deep dive into Shwedagon Pagoda. Tour inner sanctums, historical galleries, and architectural viewpoints accompanied by an expert guide.",
        "schedule": {
          "morning": {
            "title": "Guided Tour of Shwedagon Pagoda",
            "description": "Early morning entry to Shwedagon Pagoda. Walk through central courtyards, ancient corridors, and historic halls."
          },
          "afternoon": {
            "title": "Artisan Handloom Workshop & Souvenirs near Yangon",
            "description": "Taste authentic local regional cuisine. Visit local artisan markets specializing in handcrafts native to Myanmar."
          },
          "evening": {
            "title": "Sunset Viewpoint & Cultural Evening",
            "description": "Head to the highest scenic viewpoint overlooking Shwedagon Pagoda. Capture sunset photographs followed by evening entertainment."
          }
        },
        "details": {
          "importantTimings": "Guided Walk: 9:00 AM | Sunset Point Departure: 5:15 PM",
          "meals": "Welcome Tender Coconut & Traditional Satvik Thali.",
          "transport": "AC Private Sedan / SUV",
          "walkingLevel": "Moderate (Historical walkways & corridors)",
          "stay": "Grand Riverfront Resort near Shwedagon Pagoda",
          "weather": "Crisp mountain climate, clear blue skies 19°C",
          "dressCode": "Traditional attire",
          "packingSuggestions": "Breathable linen wear, sunglasses, small currency notes for local shops.",
          "accessibility": "Assistive ramps available at main portals",
          "visitorNote": "Follow local heritage guidelines inside Shwedagon Pagoda.",
          "travelDuration": "Full day sightseeing approx 5 to 6 hours"
        }
      },
      {
        "day": 3,
        "title": "Souvenir Shopping & Onward Departure from Yangon",
        "location": "Yangon",
        "overview": "Conclude your trip to Shwedagon Pagoda with morning shopping for local delicacies and souvenirs, followed by departure transfer.",
        "schedule": {
          "morning": {
            "title": "Handicrafts & Sweet Market Visit",
            "description": "Visit trusted local bazaar stalls to buy regional spices, handmade crafts, and traditional sweets of Yangon."
          },
          "afternoon": {
            "title": "Hotel Checkout & Farewell Lunch",
            "description": "Return to hotel for packing and checkout. Enjoy a farewell lunch before your transfer."
          },
          "evening": {
            "title": "Outbound Departure Transfer",
            "description": "Chauffeur drop to Yangon Airport or Railway Station for your onward journey home."
          }
        },
        "details": {
          "importantTimings": "Checkout: 12:00 PM | Transfer: As per flight/train",
          "meals": "Breakfast & Farewell Lunch included.",
          "transport": "AC Private Transfer Vehicle",
          "walkingLevel": "Easy Paced",
          "stay": "N/A (Day of departure)",
          "weather": "Crisp mountain climate, clear blue skies 19°C",
          "dressCode": "Comfortable travel wear",
          "packingSuggestions": "Check-in luggage packed, photo ID ready.",
          "accessibility": "Accessible vehicles",
          "visitorNote": "Arrive at Yangon station/airport 2 hours prior to departure.",
          "travelDuration": "Approx 1 hour transfer"
        }
      }
    ],
    "durationDays": 3,
    "durationLabel": "3 Days / 2 Nights",
    "travellerTypes": [
      "Pilgrims",
      "Seniors"
    ],
    "accessibilityStatus": "Wheelchair Accessible",
    "childFriendly": true,
    "packageBenefits": [
      "Pilgrimage Guide",
      "Senior Rest Support"
    ],
    "highlights": [
      "Spiritual darshan and guided temple tour in Shwedagon Pagoda",
      "Experience peaceful aarti assemblies and sacred rituals",
      "Comfortable transfers to all holy sites"
    ],
    "tips": [
      "Carry valid government ID cards for verification.",
      "Traditional decency wear is recommended inside temple corridors.",
      "Avoid carrying electronics inside the inner sanctum."
    ],
    "itinerarySummary": [
      "Day 1: Spiritual Welcome to Yangon & Shwedagon Pagoda Gateway",
      "Day 2: Panoramic Discovery of Shwedagon Pagoda",
      "Day 3: Souvenir Shopping & Onward Departure from Yangon"
    ],
    "cancellationSummary": "Get a 100% full refund on cancellations made up to 15 days before the departure. Rescheduling options are fully flexible."
  },
  {
    "id": "buddhism-tiger-s-nest-monastery-paro-taktsang-bhutan",
    "title": "Tiger’s Nest Monastery Journey",
    "destinationName": "Tiger’s Nest Monastery",
    "destinations": "Tiger’s Nest Monastery (Paro, Bhutan)",
    "location": "Paro, Bhutan",
    "route": [
      "Paro",
      "Tiger’s Nest Monastery"
    ],
    "mainCategory": "Pilgrimage",
    "subCategory": "Buddhism",
    "categoryLabel": "Pilgrimage",
    "category": "Pilgrimage",
    "region": "International",
    "image": "/images/tourist-places/pilgrimage/Buddhism/Tiger’s Nest Monastery (Paro Taktsang), Bhutan.jpg",
    "altText": "Tiger’s Nest Monastery buddhist pilgrimage destination in Paro, Bhutan",
    "duration": "3 Days / 2 Nights",
    "bestSeason": "October–March",
    "pace": "Easy",
    "travellerType": "Senior Friendly",
    "description": "A thoughtfully planned buddhist pilgrimage offering comfort, guidance, and a memorable experience.",
    "price": 21700,
    "rating": null,
    "reviewCount": null,
    "seatsLeft": null,
    "recentBookings": null,
    "verified": null,
    "tags": [
      "Pilgrimage",
      "Curated Journey"
    ],
    "seniorFriendly": true,
    "wheelchairAccess": true,
    "vegMeals": true,
    "inclusions": {
      "hotel": true,
      "meals": true,
      "transit": true,
      "guide": true,
      "entryPasses": true,
      "medicalSupport": false,
      "localExperience": false
    },
    "itinerary": [
      {
        "day": 1,
        "title": "Arrival in Paro: Traditional Ceremony & Quiet Reflection",
        "location": "Paro",
        "overview": "Begin your sacred yatra as you arrive in Paro. Check into your room at Vedic Pilgrim Ashram Stay in Paro and receive a brief orientation before evening prayers.",
        "schedule": {
          "morning": {
            "title": "Arrival & Escorted Transfer in Paro",
            "description": "Meet our local travel escort at Paro transit hub. Receive a traditional welcome and transfer to Vedic Pilgrim Ashram Stay in Paro."
          },
          "afternoon": {
            "title": "Unpack & Courtyard Leisure at Paro",
            "description": "Check into your sanitized room, unpack your luggage, and enjoy quiet leisure time exploring hotel gardens and facilities."
          },
          "evening": {
            "title": "Traditional Ceremony & Quiet Reflection at Tiger’s Nest Monastery",
            "description": "Attend solemn evening prayer assembly near Tiger’s Nest Monastery. Float earthen lamps and soak in peaceful chanting."
          }
        },
        "details": {
          "importantTimings": "Boat Departure: 6:00 AM | Heritage Show: 7:00 PM",
          "meals": "100% Satvik Pure Veg Breakfast & Temple Prasadam Dinner.",
          "transport": "AC Private Chauffeur Vehicle",
          "walkingLevel": "Easy Paced (Flat temple paths, seating available)",
          "stay": "Vedic Pilgrim Ashram Stay in Paro",
          "weather": "Refreshing river mist with mild sun 23°C",
          "dressCode": "Modest traditional attire (shoulders & knees covered)",
          "packingSuggestions": "Breathable linen wear, sunglasses, small currency notes for local shops.",
          "accessibility": "Wheelchair ramps & low step entry vehicle",
          "visitorNote": "Escort coordinator will brief you on timing for Tiger’s Nest Monastery visit.",
          "travelDuration": "Approx 1 to 2 hours transfer"
        }
      },
      {
        "day": 2,
        "title": "Uncovering the Secrets of Tiger’s Nest Monastery",
        "location": "Paro",
        "overview": "A deep dive into Tiger’s Nest Monastery. Tour inner sanctums, historical galleries, and architectural viewpoints accompanied by an expert guide.",
        "schedule": {
          "morning": {
            "title": "Guided Tour of Tiger’s Nest Monastery",
            "description": "Early morning entry to Tiger’s Nest Monastery. Walk through central courtyards, ancient corridors, and historic halls."
          },
          "afternoon": {
            "title": "Scenic Valley Drive & Photo Stops near Paro",
            "description": "Taste authentic local regional cuisine. Visit local artisan markets specializing in handcrafts native to Bhutan."
          },
          "evening": {
            "title": "Sunset Viewpoint & Cultural Evening",
            "description": "Head to the highest scenic viewpoint overlooking Tiger’s Nest Monastery. Capture sunset photographs followed by evening entertainment."
          }
        },
        "details": {
          "importantTimings": "Boat Departure: 6:00 AM | Heritage Show: 7:00 PM",
          "meals": "Welcome Tender Coconut & Traditional Satvik Thali.",
          "transport": "AC Private Sedan / SUV",
          "walkingLevel": "Moderate (Historical walkways & corridors)",
          "stay": "Vedic Pilgrim Ashram Stay in Paro",
          "weather": "Refreshing river mist with mild sun 23°C",
          "dressCode": "Traditional attire",
          "packingSuggestions": "Sunhat, sunglasses, comfortable walking shoes, light jacket, camera.",
          "accessibility": "Assistive ramps available at main portals",
          "visitorNote": "Follow local heritage guidelines inside Tiger’s Nest Monastery.",
          "travelDuration": "Full day sightseeing approx 5 to 6 hours"
        }
      },
      {
        "day": 3,
        "title": "Souvenir Shopping & Onward Departure from Paro",
        "location": "Paro",
        "overview": "Conclude your trip to Tiger’s Nest Monastery with morning shopping for local delicacies and souvenirs, followed by departure transfer.",
        "schedule": {
          "morning": {
            "title": "Handicrafts & Sweet Market Visit",
            "description": "Visit trusted local bazaar stalls to buy regional spices, handmade crafts, and traditional sweets of Paro."
          },
          "afternoon": {
            "title": "Hotel Checkout & Farewell Lunch",
            "description": "Return to hotel for packing and checkout. Enjoy a farewell lunch before your transfer."
          },
          "evening": {
            "title": "Outbound Departure Transfer",
            "description": "Chauffeur drop to Paro Airport or Railway Station for your onward journey home."
          }
        },
        "details": {
          "importantTimings": "Checkout: 12:00 PM | Transfer: As per flight/train",
          "meals": "Breakfast & Farewell Lunch included.",
          "transport": "AC Private Transfer Vehicle",
          "walkingLevel": "Easy Paced",
          "stay": "N/A (Day of departure)",
          "weather": "Refreshing river mist with mild sun 23°C",
          "dressCode": "Comfortable travel wear",
          "packingSuggestions": "Check-in luggage packed, photo ID ready.",
          "accessibility": "Accessible vehicles",
          "visitorNote": "Arrive at Paro station/airport 2 hours prior to departure.",
          "travelDuration": "Approx 1 hour transfer"
        }
      }
    ],
    "durationDays": 3,
    "durationLabel": "3 Days / 2 Nights",
    "travellerTypes": [
      "Pilgrims",
      "Seniors"
    ],
    "accessibilityStatus": "Wheelchair Accessible",
    "childFriendly": true,
    "packageBenefits": [
      "Pilgrimage Guide",
      "Senior Rest Support"
    ],
    "highlights": [
      "Spiritual darshan and guided temple tour in Tiger’s Nest Monastery",
      "Experience peaceful aarti assemblies and sacred rituals",
      "Comfortable transfers to all holy sites"
    ],
    "tips": [
      "Carry valid government ID cards for verification.",
      "Traditional decency wear is recommended inside temple corridors.",
      "Avoid carrying electronics inside the inner sanctum."
    ],
    "itinerarySummary": [
      "Day 1: Arrival in Paro: Traditional Ceremony & Quiet Reflection",
      "Day 2: Uncovering the Secrets of Tiger’s Nest Monastery",
      "Day 3: Souvenir Shopping & Onward Departure from Paro"
    ],
    "cancellationSummary": "Get a 100% full refund on cancellations made up to 15 days before the departure. Rescheduling options are fully flexible."
  },
  {
    "id": "christianity-basilica-of-our-lady-of-guadalupe-mexico",
    "title": "Basilica of Our Lady of Guadalupe Journey",
    "destinationName": "Basilica of Our Lady of Guadalupe",
    "destinations": "Basilica of Our Lady of Guadalupe (Mexico City, Mexico)",
    "location": "Mexico City, Mexico",
    "route": [
      "Mexico City",
      "Basilica of Our Lady of Guadalupe"
    ],
    "mainCategory": "Pilgrimage",
    "subCategory": "Christianity",
    "categoryLabel": "Pilgrimage",
    "category": "Pilgrimage",
    "region": "International",
    "image": "/images/tourist-places/pilgrimage/Christianity/Basilica of Our Lady of Guadalupe, Mexico.jpg",
    "altText": "Basilica of Our Lady of Guadalupe christian pilgrimage destination in Mexico City, Mexico",
    "duration": "3 Days / 2 Nights",
    "bestSeason": "October–March",
    "pace": "Easy",
    "travellerType": "Senior Friendly",
    "description": "A thoughtfully planned christian pilgrimage offering comfort, guidance, and a memorable experience.",
    "price": 22900,
    "rating": null,
    "reviewCount": null,
    "seatsLeft": null,
    "recentBookings": null,
    "verified": null,
    "tags": [
      "Pilgrimage",
      "Curated Journey"
    ],
    "seniorFriendly": true,
    "wheelchairAccess": true,
    "vegMeals": true,
    "inclusions": {
      "hotel": true,
      "meals": true,
      "transit": true,
      "guide": true,
      "entryPasses": true,
      "medicalSupport": false,
      "localExperience": false
    },
    "itinerary": [
      {
        "day": 1,
        "title": "Welcome & Check-in at Mexico City & Basilica of Our Lady of Guadalupe Gateway",
        "location": "Mexico City",
        "overview": "Begin your sacred yatra as you arrive in Mexico City. Check into your room at Boutique Star Hotel in Mexico City and receive a brief orientation before evening prayers.",
        "schedule": {
          "morning": {
            "title": "Arrival & Escorted Transfer in Mexico City",
            "description": "Meet our local travel escort at Mexico City transit hub. Receive a traditional welcome and transfer to Boutique Star Hotel in Mexico City."
          },
          "afternoon": {
            "title": "Unpack & Courtyard Leisure at Mexico City",
            "description": "Check into your sanitized room, unpack your luggage, and enjoy quiet leisure time exploring hotel gardens and facilities."
          },
          "evening": {
            "title": "Sunset Walk & Local Market Flavors at Basilica of Our Lady of Guadalupe",
            "description": "Attend solemn evening prayer assembly near Basilica of Our Lady of Guadalupe. Float earthen lamps and soak in peaceful chanting."
          }
        },
        "details": {
          "importantTimings": "Gate Entry: 8:00 AM | Evening Light Show: 6:30 PM",
          "meals": "100% Satvik Pure Veg Breakfast & Temple Prasadam Dinner.",
          "transport": "AC Private Chauffeur Vehicle",
          "walkingLevel": "Easy Paced (Flat temple paths, seating available)",
          "stay": "Boutique Star Hotel in Mexico City",
          "weather": "Pleasant breeze with sunny afternoon 24°C",
          "dressCode": "Modest traditional attire (shoulders & knees covered)",
          "packingSuggestions": "Sunhat, sunglasses, comfortable walking shoes, light jacket, camera.",
          "accessibility": "Wheelchair ramps & low step entry vehicle",
          "visitorNote": "Escort coordinator will brief you on timing for Basilica of Our Lady of Guadalupe visit.",
          "travelDuration": "Approx 1 to 2 hours transfer"
        }
      },
      {
        "day": 2,
        "title": "Spiritual Morning Prayers at Basilica of Our Lady of Guadalupe",
        "location": "Mexico City",
        "overview": "A deep dive into Basilica of Our Lady of Guadalupe. Tour inner sanctums, historical galleries, and architectural viewpoints accompanied by an expert guide.",
        "schedule": {
          "morning": {
            "title": "Guided Tour of Basilica of Our Lady of Guadalupe",
            "description": "Early morning entry to Basilica of Our Lady of Guadalupe. Walk through central courtyards, ancient corridors, and historic halls."
          },
          "afternoon": {
            "title": "Sacred Shrine Darshan & Temple Complex near Mexico City",
            "description": "Taste authentic local regional cuisine. Visit local artisan markets specializing in handcrafts native to Mexico."
          },
          "evening": {
            "title": "Sunset Viewpoint & Cultural Evening",
            "description": "Head to the highest scenic viewpoint overlooking Basilica of Our Lady of Guadalupe. Capture sunset photographs followed by evening entertainment."
          }
        },
        "details": {
          "importantTimings": "Gate Entry: 8:00 AM | Evening Light Show: 6:30 PM",
          "meals": "Welcome Tender Coconut & Traditional Satvik Thali.",
          "transport": "AC Private Sedan / SUV",
          "walkingLevel": "Moderate (Historical walkways & corridors)",
          "stay": "Boutique Star Hotel in Mexico City",
          "weather": "Pleasant breeze with sunny afternoon 24°C",
          "dressCode": "Traditional attire",
          "packingSuggestions": "Traditional headscarf, slip-on shoes, reusable water bottle, dry bag.",
          "accessibility": "Assistive ramps available at main portals",
          "visitorNote": "Follow local heritage guidelines inside Basilica of Our Lady of Guadalupe.",
          "travelDuration": "Full day sightseeing approx 5 to 6 hours"
        }
      },
      {
        "day": 3,
        "title": "Souvenir Shopping & Onward Departure from Mexico City",
        "location": "Mexico City",
        "overview": "Conclude your trip to Basilica of Our Lady of Guadalupe with morning shopping for local delicacies and souvenirs, followed by departure transfer.",
        "schedule": {
          "morning": {
            "title": "Handicrafts & Sweet Market Visit",
            "description": "Visit trusted local bazaar stalls to buy regional spices, handmade crafts, and traditional sweets of Mexico City."
          },
          "afternoon": {
            "title": "Hotel Checkout & Farewell Lunch",
            "description": "Return to hotel for packing and checkout. Enjoy a farewell lunch before your transfer."
          },
          "evening": {
            "title": "Outbound Departure Transfer",
            "description": "Chauffeur drop to Mexico City Airport or Railway Station for your onward journey home."
          }
        },
        "details": {
          "importantTimings": "Checkout: 12:00 PM | Transfer: As per flight/train",
          "meals": "Breakfast & Farewell Lunch included.",
          "transport": "AC Private Transfer Vehicle",
          "walkingLevel": "Easy Paced",
          "stay": "N/A (Day of departure)",
          "weather": "Pleasant breeze with sunny afternoon 24°C",
          "dressCode": "Comfortable travel wear",
          "packingSuggestions": "Check-in luggage packed, photo ID ready.",
          "accessibility": "Accessible vehicles",
          "visitorNote": "Arrive at Mexico City station/airport 2 hours prior to departure.",
          "travelDuration": "Approx 1 hour transfer"
        }
      }
    ],
    "durationDays": 3,
    "durationLabel": "3 Days / 2 Nights",
    "travellerTypes": [
      "Pilgrims",
      "Seniors"
    ],
    "accessibilityStatus": "Wheelchair Accessible",
    "childFriendly": true,
    "packageBenefits": [
      "Pilgrimage Guide",
      "Senior Rest Support"
    ],
    "highlights": [
      "Spiritual darshan and guided temple tour in Basilica of Our Lady of Guadalupe",
      "Experience peaceful aarti assemblies and sacred rituals",
      "Comfortable transfers to all holy sites"
    ],
    "tips": [
      "Carry valid government ID cards for verification.",
      "Traditional decency wear is recommended inside temple corridors.",
      "Avoid carrying electronics inside the inner sanctum."
    ],
    "itinerarySummary": [
      "Day 1: Welcome & Check-in at Mexico City & Basilica of Our Lady of Guadalupe Gateway",
      "Day 2: Spiritual Morning Prayers at Basilica of Our Lady of Guadalupe",
      "Day 3: Souvenir Shopping & Onward Departure from Mexico City"
    ],
    "cancellationSummary": "Get a 100% full refund on cancellations made up to 15 days before the departure. Rescheduling options are fully flexible."
  },
  {
    "id": "christianity-basilica-of-saint-peter-vatican-city",
    "title": "Basilica of Saint Peter, Vatican City Journey",
    "destinationName": "Basilica of Saint Peter, Vatican City",
    "destinations": "Basilica of Saint Peter, Vatican City (Vatican City)",
    "location": "Vatican City",
    "route": [
      "Vatican City",
      "Basilica of Saint Peter, Vatican City"
    ],
    "mainCategory": "Pilgrimage",
    "subCategory": "Christianity",
    "categoryLabel": "Pilgrimage",
    "category": "Pilgrimage",
    "region": "International",
    "image": "/images/tourist-places/pilgrimage/Christianity/Basilica of Saint Peter, Vatican City.jpg",
    "altText": "Basilica of Saint Peter, Vatican City christian pilgrimage destination in Vatican City",
    "duration": "3 Days / 2 Nights",
    "bestSeason": "October–March",
    "pace": "Easy",
    "travellerType": "Senior Friendly",
    "description": "A thoughtfully planned christian pilgrimage offering comfort, guidance, and a memorable experience.",
    "price": 14500,
    "rating": null,
    "reviewCount": null,
    "seatsLeft": null,
    "recentBookings": null,
    "verified": null,
    "tags": [
      "Pilgrimage",
      "Curated Journey"
    ],
    "seniorFriendly": true,
    "wheelchairAccess": true,
    "vegMeals": true,
    "inclusions": {
      "hotel": true,
      "meals": true,
      "transit": true,
      "guide": true,
      "entryPasses": true,
      "medicalSupport": false,
      "localExperience": false
    },
    "itinerary": [
      {
        "day": 1,
        "title": "Arrival in Vatican City: Illuminated Viewpoint & Welcome Feast",
        "location": "Vatican City",
        "overview": "Begin your sacred yatra as you arrive in Vatican City. Check into your room at Hilltop Panorama Resort near Basilica of Saint Peter, Vatican City and receive a brief orientation before evening prayers.",
        "schedule": {
          "morning": {
            "title": "Arrival & Escorted Transfer in Vatican City",
            "description": "Meet our local travel escort at Vatican City transit hub. Receive a traditional welcome and transfer to Hilltop Panorama Resort near Basilica of Saint Peter, Vatican City."
          },
          "afternoon": {
            "title": "Unpack & Courtyard Leisure at Vatican City",
            "description": "Check into your sanitized room, unpack your luggage, and enjoy quiet leisure time exploring hotel gardens and facilities."
          },
          "evening": {
            "title": "Illuminated Viewpoint & Welcome Feast at Basilica of Saint Peter, Vatican City",
            "description": "Attend solemn evening prayer assembly near Basilica of Saint Peter, Vatican City. Float earthen lamps and soak in peaceful chanting."
          }
        },
        "details": {
          "importantTimings": "Sanctum VIP Slot: 6:30 AM | Bazaar Hours: 4:00 PM - 8:30 PM",
          "meals": "100% Satvik Pure Veg Breakfast & Temple Prasadam Dinner.",
          "transport": "AC Private Chauffeur Vehicle",
          "walkingLevel": "Easy Paced (Flat temple paths, seating available)",
          "stay": "Hilltop Panorama Resort near Basilica of Saint Peter, Vatican City",
          "weather": "Cool crisp morning fog clearing to bright 22°C",
          "dressCode": "Modest traditional attire (shoulders & knees covered)",
          "packingSuggestions": "Traditional headscarf, slip-on shoes, reusable water bottle, dry bag.",
          "accessibility": "Wheelchair ramps & low step entry vehicle",
          "visitorNote": "Escort coordinator will brief you on timing for Basilica of Saint Peter, Vatican City visit.",
          "travelDuration": "Approx 1 to 2 hours transfer"
        }
      },
      {
        "day": 2,
        "title": "Architectural Tour of Basilica of Saint Peter, Vatican City",
        "location": "Vatican City",
        "overview": "A deep dive into Basilica of Saint Peter, Vatican City. Tour inner sanctums, historical galleries, and architectural viewpoints accompanied by an expert guide.",
        "schedule": {
          "morning": {
            "title": "Guided Tour of Basilica of Saint Peter, Vatican City",
            "description": "Early morning entry to Basilica of Saint Peter, Vatican City. Walk through central courtyards, ancient corridors, and historic halls."
          },
          "afternoon": {
            "title": "Coastal Promenade & Beach Relax near Vatican City",
            "description": "Taste authentic local regional cuisine. Visit local artisan markets specializing in handcrafts native to Vatican City."
          },
          "evening": {
            "title": "Sunset Viewpoint & Cultural Evening",
            "description": "Head to the highest scenic viewpoint overlooking Basilica of Saint Peter, Vatican City. Capture sunset photographs followed by evening entertainment."
          }
        },
        "details": {
          "importantTimings": "Sanctum VIP Slot: 6:30 AM | Bazaar Hours: 4:00 PM - 8:30 PM",
          "meals": "Welcome Tender Coconut & Traditional Satvik Thali.",
          "transport": "AC Private Sedan / SUV",
          "walkingLevel": "Moderate (Historical walkways & corridors)",
          "stay": "Hilltop Panorama Resort near Basilica of Saint Peter, Vatican City",
          "weather": "Cool crisp morning fog clearing to bright 22°C",
          "dressCode": "Traditional attire",
          "packingSuggestions": "Light cotton wear, camera with telephoto lens, sunscreen lotion, photo ID.",
          "accessibility": "Assistive ramps available at main portals",
          "visitorNote": "Follow local heritage guidelines inside Basilica of Saint Peter, Vatican City.",
          "travelDuration": "Full day sightseeing approx 5 to 6 hours"
        }
      },
      {
        "day": 3,
        "title": "Souvenir Shopping & Onward Departure from Vatican City",
        "location": "Vatican City",
        "overview": "Conclude your trip to Basilica of Saint Peter, Vatican City with morning shopping for local delicacies and souvenirs, followed by departure transfer.",
        "schedule": {
          "morning": {
            "title": "Handicrafts & Sweet Market Visit",
            "description": "Visit trusted local bazaar stalls to buy regional spices, handmade crafts, and traditional sweets of Vatican City."
          },
          "afternoon": {
            "title": "Hotel Checkout & Farewell Lunch",
            "description": "Return to hotel for packing and checkout. Enjoy a farewell lunch before your transfer."
          },
          "evening": {
            "title": "Outbound Departure Transfer",
            "description": "Chauffeur drop to Vatican City Airport or Railway Station for your onward journey home."
          }
        },
        "details": {
          "importantTimings": "Checkout: 12:00 PM | Transfer: As per flight/train",
          "meals": "Breakfast & Farewell Lunch included.",
          "transport": "AC Private Transfer Vehicle",
          "walkingLevel": "Easy Paced",
          "stay": "N/A (Day of departure)",
          "weather": "Cool crisp morning fog clearing to bright 22°C",
          "dressCode": "Comfortable travel wear",
          "packingSuggestions": "Check-in luggage packed, photo ID ready.",
          "accessibility": "Accessible vehicles",
          "visitorNote": "Arrive at Vatican City station/airport 2 hours prior to departure.",
          "travelDuration": "Approx 1 hour transfer"
        }
      }
    ],
    "durationDays": 3,
    "durationLabel": "3 Days / 2 Nights",
    "travellerTypes": [
      "Pilgrims",
      "Seniors"
    ],
    "accessibilityStatus": "Wheelchair Accessible",
    "childFriendly": true,
    "packageBenefits": [
      "Pilgrimage Guide",
      "Senior Rest Support"
    ],
    "highlights": [
      "Spiritual darshan and guided temple tour in Basilica of Saint Peter, Vatican City",
      "Experience peaceful aarti assemblies and sacred rituals",
      "Comfortable transfers to all holy sites"
    ],
    "tips": [
      "Carry valid government ID cards for verification.",
      "Traditional decency wear is recommended inside temple corridors.",
      "Avoid carrying electronics inside the inner sanctum."
    ],
    "itinerarySummary": [
      "Day 1: Arrival in Vatican City: Illuminated Viewpoint & Welcome Feast",
      "Day 2: Architectural Tour of Basilica of Saint Peter, Vatican City",
      "Day 3: Souvenir Shopping & Onward Departure from Vatican City"
    ],
    "cancellationSummary": "Get a 100% full refund on cancellations made up to 15 days before the departure. Rescheduling options are fully flexible."
  },
  {
    "id": "christianity-bethlehem-palestine",
    "title": "Bethlehem Journey",
    "destinationName": "Bethlehem",
    "destinations": "Bethlehem (West Bank, Palestine)",
    "location": "West Bank, Palestine",
    "route": [
      "West Bank",
      "Bethlehem"
    ],
    "mainCategory": "Pilgrimage",
    "subCategory": "Christianity",
    "categoryLabel": "Pilgrimage",
    "category": "Pilgrimage",
    "region": "International",
    "image": "/images/tourist-places/pilgrimage/Christianity/Bethlehem, Palestine.jpg",
    "altText": "Bethlehem christian pilgrimage destination in West Bank, Palestine",
    "duration": "3 Days / 2 Nights",
    "bestSeason": "October–March",
    "pace": "Easy",
    "travellerType": "Senior Friendly",
    "description": "A thoughtfully planned christian pilgrimage offering comfort, guidance, and a memorable experience.",
    "price": 15700,
    "rating": null,
    "reviewCount": null,
    "seatsLeft": null,
    "recentBookings": null,
    "verified": null,
    "tags": [
      "Pilgrimage",
      "Curated Journey"
    ],
    "seniorFriendly": true,
    "wheelchairAccess": true,
    "vegMeals": true,
    "inclusions": {
      "hotel": true,
      "meals": true,
      "transit": true,
      "guide": true,
      "entryPasses": true,
      "medicalSupport": false,
      "localExperience": false
    },
    "itinerary": [
      {
        "day": 1,
        "title": "Escorted Arrival in West Bank & Bethlehem Gateway",
        "location": "West Bank",
        "overview": "Begin your sacred yatra as you arrive in West Bank. Check into your room at Heritage Palace Resort overlooking Bethlehem and receive a brief orientation before evening prayers.",
        "schedule": {
          "morning": {
            "title": "Arrival & Escorted Transfer in West Bank",
            "description": "Meet our local travel escort at West Bank transit hub. Receive a traditional welcome and transfer to Heritage Palace Resort overlooking Bethlehem."
          },
          "afternoon": {
            "title": "Unpack & Courtyard Leisure at West Bank",
            "description": "Check into your sanitized room, unpack your luggage, and enjoy quiet leisure time exploring hotel gardens and facilities."
          },
          "evening": {
            "title": "Cultural Folk Performance & Dinner at Bethlehem",
            "description": "Attend solemn evening prayer assembly near Bethlehem. Float earthen lamps and soak in peaceful chanting."
          }
        },
        "details": {
          "importantTimings": "Sunrise Tour: 5:45 AM | Museum Hours: 9:30 AM - 5:00 PM",
          "meals": "100% Satvik Pure Veg Breakfast & Temple Prasadam Dinner.",
          "transport": "AC Private Chauffeur Vehicle",
          "walkingLevel": "Easy Paced (Flat temple paths, seating available)",
          "stay": "Heritage Palace Resort overlooking Bethlehem",
          "weather": "Warm tropical sunshine with ocean breeze 27°C",
          "dressCode": "Modest traditional attire (shoulders & knees covered)",
          "packingSuggestions": "Light cotton wear, camera with telephoto lens, sunscreen lotion, photo ID.",
          "accessibility": "Wheelchair ramps & low step entry vehicle",
          "visitorNote": "Escort coordinator will brief you on timing for Bethlehem visit.",
          "travelDuration": "Approx 1 to 2 hours transfer"
        }
      },
      {
        "day": 2,
        "title": "Dawn Guided Expedition of Bethlehem",
        "location": "West Bank",
        "overview": "A deep dive into Bethlehem. Tour inner sanctums, historical galleries, and architectural viewpoints accompanied by an expert guide.",
        "schedule": {
          "morning": {
            "title": "Guided Tour of Bethlehem",
            "description": "Early morning entry to Bethlehem. Walk through central courtyards, ancient corridors, and historic halls."
          },
          "afternoon": {
            "title": "Culinary Tasting & Local Artisan Crafts near West Bank",
            "description": "Taste authentic local regional cuisine. Visit local artisan markets specializing in handcrafts native to Palestine."
          },
          "evening": {
            "title": "Sunset Viewpoint & Cultural Evening",
            "description": "Head to the highest scenic viewpoint overlooking Bethlehem. Capture sunset photographs followed by evening entertainment."
          }
        },
        "details": {
          "importantTimings": "Sunrise Tour: 5:45 AM | Museum Hours: 9:30 AM - 5:00 PM",
          "meals": "Welcome Tender Coconut & Traditional Satvik Thali.",
          "transport": "AC Private Sedan / SUV",
          "walkingLevel": "Moderate (Historical walkways & corridors)",
          "stay": "Heritage Palace Resort overlooking Bethlehem",
          "weather": "Warm tropical sunshine with ocean breeze 27°C",
          "dressCode": "Traditional attire",
          "packingSuggestions": "Comfortable walking socks, power bank, shoulder shawl, daypack.",
          "accessibility": "Assistive ramps available at main portals",
          "visitorNote": "Follow local heritage guidelines inside Bethlehem.",
          "travelDuration": "Full day sightseeing approx 5 to 6 hours"
        }
      },
      {
        "day": 3,
        "title": "Souvenir Shopping & Onward Departure from West Bank",
        "location": "West Bank",
        "overview": "Conclude your trip to Bethlehem with morning shopping for local delicacies and souvenirs, followed by departure transfer.",
        "schedule": {
          "morning": {
            "title": "Handicrafts & Sweet Market Visit",
            "description": "Visit trusted local bazaar stalls to buy regional spices, handmade crafts, and traditional sweets of West Bank."
          },
          "afternoon": {
            "title": "Hotel Checkout & Farewell Lunch",
            "description": "Return to hotel for packing and checkout. Enjoy a farewell lunch before your transfer."
          },
          "evening": {
            "title": "Outbound Departure Transfer",
            "description": "Chauffeur drop to West Bank Airport or Railway Station for your onward journey home."
          }
        },
        "details": {
          "importantTimings": "Checkout: 12:00 PM | Transfer: As per flight/train",
          "meals": "Breakfast & Farewell Lunch included.",
          "transport": "AC Private Transfer Vehicle",
          "walkingLevel": "Easy Paced",
          "stay": "N/A (Day of departure)",
          "weather": "Warm tropical sunshine with ocean breeze 27°C",
          "dressCode": "Comfortable travel wear",
          "packingSuggestions": "Check-in luggage packed, photo ID ready.",
          "accessibility": "Accessible vehicles",
          "visitorNote": "Arrive at West Bank station/airport 2 hours prior to departure.",
          "travelDuration": "Approx 1 hour transfer"
        }
      }
    ],
    "durationDays": 3,
    "durationLabel": "3 Days / 2 Nights",
    "travellerTypes": [
      "Pilgrims",
      "Seniors"
    ],
    "accessibilityStatus": "Wheelchair Accessible",
    "childFriendly": true,
    "packageBenefits": [
      "Pilgrimage Guide",
      "Senior Rest Support"
    ],
    "highlights": [
      "Spiritual darshan and guided temple tour in Bethlehem",
      "Experience peaceful aarti assemblies and sacred rituals",
      "Comfortable transfers to all holy sites"
    ],
    "tips": [
      "Carry valid government ID cards for verification.",
      "Traditional decency wear is recommended inside temple corridors.",
      "Avoid carrying electronics inside the inner sanctum."
    ],
    "itinerarySummary": [
      "Day 1: Escorted Arrival in West Bank & Bethlehem Gateway",
      "Day 2: Dawn Guided Expedition of Bethlehem",
      "Day 3: Souvenir Shopping & Onward Departure from West Bank"
    ],
    "cancellationSummary": "Get a 100% full refund on cancellations made up to 15 days before the departure. Rescheduling options are fully flexible."
  },
  {
    "id": "christianity-camino-de-santiago-spain",
    "title": "Camino de Santiago, Spain Journey",
    "destinationName": "Camino de Santiago, Spain",
    "destinations": "Camino de Santiago, Spain (Galicia, Spain)",
    "location": "Galicia, Spain",
    "route": [
      "Galicia",
      "Camino de Santiago, Spain"
    ],
    "mainCategory": "Pilgrimage",
    "subCategory": "Christianity",
    "categoryLabel": "Pilgrimage",
    "category": "Pilgrimage",
    "region": "International",
    "image": "/images/tourist-places/pilgrimage/Christianity/Camino de Santiago, Spain.jpg",
    "altText": "Camino de Santiago, Spain christian pilgrimage destination in Galicia, Spain",
    "duration": "3 Days / 2 Nights",
    "bestSeason": "October–March",
    "pace": "Easy",
    "travellerType": "Senior Friendly",
    "description": "A thoughtfully planned christian pilgrimage offering comfort, guidance, and a memorable experience.",
    "price": 16900,
    "rating": null,
    "reviewCount": null,
    "seatsLeft": null,
    "recentBookings": null,
    "verified": null,
    "tags": [
      "Pilgrimage",
      "Curated Journey"
    ],
    "seniorFriendly": true,
    "wheelchairAccess": true,
    "vegMeals": true,
    "inclusions": {
      "hotel": true,
      "meals": true,
      "transit": true,
      "guide": true,
      "entryPasses": true,
      "medicalSupport": false,
      "localExperience": false
    },
    "itinerary": [
      {
        "day": 1,
        "title": "Arrival in Galicia: Riverside Aarti & Evening Tea",
        "location": "Galicia",
        "overview": "Begin your sacred yatra as you arrive in Galicia. Check into your room at Boutique Lakefront Haveli in Galicia and receive a brief orientation before evening prayers.",
        "schedule": {
          "morning": {
            "title": "Arrival & Escorted Transfer in Galicia",
            "description": "Meet our local travel escort at Galicia transit hub. Receive a traditional welcome and transfer to Boutique Lakefront Haveli in Galicia."
          },
          "afternoon": {
            "title": "Unpack & Courtyard Leisure at Galicia",
            "description": "Check into your sanitized room, unpack your luggage, and enjoy quiet leisure time exploring hotel gardens and facilities."
          },
          "evening": {
            "title": "Riverside Aarti & Evening Tea at Camino de Santiago, Spain",
            "description": "Attend solemn evening prayer assembly near Camino de Santiago, Spain. Float earthen lamps and soak in peaceful chanting."
          }
        },
        "details": {
          "importantTimings": "Guided Walk: 9:00 AM | Sunset Point Departure: 5:15 PM",
          "meals": "100% Satvik Pure Veg Breakfast & Temple Prasadam Dinner.",
          "transport": "AC Private Chauffeur Vehicle",
          "walkingLevel": "Easy Paced (Flat temple paths, seating available)",
          "stay": "Boutique Lakefront Haveli in Galicia",
          "weather": "Crisp mountain climate, clear blue skies 19°C",
          "dressCode": "Modest traditional attire (shoulders & knees covered)",
          "packingSuggestions": "Comfortable walking socks, power bank, shoulder shawl, daypack.",
          "accessibility": "Wheelchair ramps & low step entry vehicle",
          "visitorNote": "Escort coordinator will brief you on timing for Camino de Santiago, Spain visit.",
          "travelDuration": "Approx 1 to 2 hours transfer"
        }
      },
      {
        "day": 2,
        "title": "Early Sunrise Visit to Camino de Santiago, Spain",
        "location": "Galicia",
        "overview": "A deep dive into Camino de Santiago, Spain. Tour inner sanctums, historical galleries, and architectural viewpoints accompanied by an expert guide.",
        "schedule": {
          "morning": {
            "title": "Guided Tour of Camino de Santiago, Spain",
            "description": "Early morning entry to Camino de Santiago, Spain. Walk through central courtyards, ancient corridors, and historic halls."
          },
          "afternoon": {
            "title": "Excursion to Surrounding Haveli & Gardens near Galicia",
            "description": "Taste authentic local regional cuisine. Visit local artisan markets specializing in handcrafts native to Spain."
          },
          "evening": {
            "title": "Sunset Viewpoint & Cultural Evening",
            "description": "Head to the highest scenic viewpoint overlooking Camino de Santiago, Spain. Capture sunset photographs followed by evening entertainment."
          }
        },
        "details": {
          "importantTimings": "Guided Walk: 9:00 AM | Sunset Point Departure: 5:15 PM",
          "meals": "Welcome Tender Coconut & Traditional Satvik Thali.",
          "transport": "AC Private Sedan / SUV",
          "walkingLevel": "Moderate (Historical walkways & corridors)",
          "stay": "Boutique Lakefront Haveli in Galicia",
          "weather": "Crisp mountain climate, clear blue skies 19°C",
          "dressCode": "Traditional attire",
          "packingSuggestions": "Breathable linen wear, sunglasses, small currency notes for local shops.",
          "accessibility": "Assistive ramps available at main portals",
          "visitorNote": "Follow local heritage guidelines inside Camino de Santiago, Spain.",
          "travelDuration": "Full day sightseeing approx 5 to 6 hours"
        }
      },
      {
        "day": 3,
        "title": "Souvenir Shopping & Onward Departure from Galicia",
        "location": "Galicia",
        "overview": "Conclude your trip to Camino de Santiago, Spain with morning shopping for local delicacies and souvenirs, followed by departure transfer.",
        "schedule": {
          "morning": {
            "title": "Handicrafts & Sweet Market Visit",
            "description": "Visit trusted local bazaar stalls to buy regional spices, handmade crafts, and traditional sweets of Galicia."
          },
          "afternoon": {
            "title": "Hotel Checkout & Farewell Lunch",
            "description": "Return to hotel for packing and checkout. Enjoy a farewell lunch before your transfer."
          },
          "evening": {
            "title": "Outbound Departure Transfer",
            "description": "Chauffeur drop to Galicia Airport or Railway Station for your onward journey home."
          }
        },
        "details": {
          "importantTimings": "Checkout: 12:00 PM | Transfer: As per flight/train",
          "meals": "Breakfast & Farewell Lunch included.",
          "transport": "AC Private Transfer Vehicle",
          "walkingLevel": "Easy Paced",
          "stay": "N/A (Day of departure)",
          "weather": "Crisp mountain climate, clear blue skies 19°C",
          "dressCode": "Comfortable travel wear",
          "packingSuggestions": "Check-in luggage packed, photo ID ready.",
          "accessibility": "Accessible vehicles",
          "visitorNote": "Arrive at Galicia station/airport 2 hours prior to departure.",
          "travelDuration": "Approx 1 hour transfer"
        }
      }
    ],
    "durationDays": 3,
    "durationLabel": "3 Days / 2 Nights",
    "travellerTypes": [
      "Pilgrims",
      "Seniors"
    ],
    "accessibilityStatus": "Wheelchair Accessible",
    "childFriendly": true,
    "packageBenefits": [
      "Pilgrimage Guide",
      "Senior Rest Support"
    ],
    "highlights": [
      "Spiritual darshan and guided temple tour in Camino de Santiago, Spain",
      "Experience peaceful aarti assemblies and sacred rituals",
      "Comfortable transfers to all holy sites"
    ],
    "tips": [
      "Carry valid government ID cards for verification.",
      "Traditional decency wear is recommended inside temple corridors.",
      "Avoid carrying electronics inside the inner sanctum."
    ],
    "itinerarySummary": [
      "Day 1: Arrival in Galicia: Riverside Aarti & Evening Tea",
      "Day 2: Early Sunrise Visit to Camino de Santiago, Spain",
      "Day 3: Souvenir Shopping & Onward Departure from Galicia"
    ],
    "cancellationSummary": "Get a 100% full refund on cancellations made up to 15 days before the departure. Rescheduling options are fully flexible."
  },
  {
    "id": "christianity-canterbury-cathedral-england",
    "title": "Canterbury Cathedral Journey",
    "destinationName": "Canterbury Cathedral",
    "destinations": "Canterbury Cathedral (Kent, England)",
    "location": "Kent, England",
    "route": [
      "Kent",
      "Canterbury Cathedral"
    ],
    "mainCategory": "Pilgrimage",
    "subCategory": "Christianity",
    "categoryLabel": "Pilgrimage",
    "category": "Pilgrimage",
    "region": "International",
    "image": "/images/tourist-places/pilgrimage/Christianity/Canterbury Cathedral, England.jpg",
    "altText": "Canterbury Cathedral christian pilgrimage destination in Kent, England",
    "duration": "3 Days / 2 Nights",
    "bestSeason": "October–March",
    "pace": "Easy",
    "travellerType": "Senior Friendly",
    "description": "A thoughtfully planned christian pilgrimage offering comfort, guidance, and a memorable experience.",
    "price": 18100,
    "rating": null,
    "reviewCount": null,
    "seatsLeft": null,
    "recentBookings": null,
    "verified": null,
    "tags": [
      "Pilgrimage",
      "Curated Journey"
    ],
    "seniorFriendly": true,
    "wheelchairAccess": true,
    "vegMeals": true,
    "inclusions": {
      "hotel": true,
      "meals": true,
      "transit": true,
      "guide": true,
      "entryPasses": true,
      "medicalSupport": false,
      "localExperience": false
    },
    "itinerary": [
      {
        "day": 1,
        "title": "Scenic Drive to Kent & Canterbury Cathedral Gateway",
        "location": "Kent",
        "overview": "Begin your sacred yatra as you arrive in Kent. Check into your room at Royal Heritage Villa near Canterbury Cathedral and receive a brief orientation before evening prayers.",
        "schedule": {
          "morning": {
            "title": "Arrival & Escorted Transfer in Kent",
            "description": "Meet our local travel escort at Kent transit hub. Receive a traditional welcome and transfer to Royal Heritage Villa near Canterbury Cathedral."
          },
          "afternoon": {
            "title": "Unpack & Courtyard Leisure at Kent",
            "description": "Check into your sanitized room, unpack your luggage, and enjoy quiet leisure time exploring hotel gardens and facilities."
          },
          "evening": {
            "title": "Skyline Sunset & Regional Delicacies at Canterbury Cathedral",
            "description": "Attend solemn evening prayer assembly near Canterbury Cathedral. Float earthen lamps and soak in peaceful chanting."
          }
        },
        "details": {
          "importantTimings": "Boat Departure: 6:00 AM | Heritage Show: 7:00 PM",
          "meals": "100% Satvik Pure Veg Breakfast & Temple Prasadam Dinner.",
          "transport": "AC Private Chauffeur Vehicle",
          "walkingLevel": "Easy Paced (Flat temple paths, seating available)",
          "stay": "Royal Heritage Villa near Canterbury Cathedral",
          "weather": "Refreshing river mist with mild sun 23°C",
          "dressCode": "Modest traditional attire (shoulders & knees covered)",
          "packingSuggestions": "Breathable linen wear, sunglasses, small currency notes for local shops.",
          "accessibility": "Wheelchair ramps & low step entry vehicle",
          "visitorNote": "Escort coordinator will brief you on timing for Canterbury Cathedral visit.",
          "travelDuration": "Approx 1 to 2 hours transfer"
        }
      },
      {
        "day": 2,
        "title": "Exclusive Morning Tour of Canterbury Cathedral",
        "location": "Kent",
        "overview": "A deep dive into Canterbury Cathedral. Tour inner sanctums, historical galleries, and architectural viewpoints accompanied by an expert guide.",
        "schedule": {
          "morning": {
            "title": "Guided Tour of Canterbury Cathedral",
            "description": "Early morning entry to Canterbury Cathedral. Walk through central courtyards, ancient corridors, and historic halls."
          },
          "afternoon": {
            "title": "Museum Treasures & Heritage Galleries near Kent",
            "description": "Taste authentic local regional cuisine. Visit local artisan markets specializing in handcrafts native to England."
          },
          "evening": {
            "title": "Sunset Viewpoint & Cultural Evening",
            "description": "Head to the highest scenic viewpoint overlooking Canterbury Cathedral. Capture sunset photographs followed by evening entertainment."
          }
        },
        "details": {
          "importantTimings": "Boat Departure: 6:00 AM | Heritage Show: 7:00 PM",
          "meals": "Welcome Tender Coconut & Traditional Satvik Thali.",
          "transport": "AC Private Sedan / SUV",
          "walkingLevel": "Moderate (Historical walkways & corridors)",
          "stay": "Royal Heritage Villa near Canterbury Cathedral",
          "weather": "Refreshing river mist with mild sun 23°C",
          "dressCode": "Traditional attire",
          "packingSuggestions": "Sunhat, sunglasses, comfortable walking shoes, light jacket, camera.",
          "accessibility": "Assistive ramps available at main portals",
          "visitorNote": "Follow local heritage guidelines inside Canterbury Cathedral.",
          "travelDuration": "Full day sightseeing approx 5 to 6 hours"
        }
      },
      {
        "day": 3,
        "title": "Souvenir Shopping & Onward Departure from Kent",
        "location": "Kent",
        "overview": "Conclude your trip to Canterbury Cathedral with morning shopping for local delicacies and souvenirs, followed by departure transfer.",
        "schedule": {
          "morning": {
            "title": "Handicrafts & Sweet Market Visit",
            "description": "Visit trusted local bazaar stalls to buy regional spices, handmade crafts, and traditional sweets of Kent."
          },
          "afternoon": {
            "title": "Hotel Checkout & Farewell Lunch",
            "description": "Return to hotel for packing and checkout. Enjoy a farewell lunch before your transfer."
          },
          "evening": {
            "title": "Outbound Departure Transfer",
            "description": "Chauffeur drop to Kent Airport or Railway Station for your onward journey home."
          }
        },
        "details": {
          "importantTimings": "Checkout: 12:00 PM | Transfer: As per flight/train",
          "meals": "Breakfast & Farewell Lunch included.",
          "transport": "AC Private Transfer Vehicle",
          "walkingLevel": "Easy Paced",
          "stay": "N/A (Day of departure)",
          "weather": "Refreshing river mist with mild sun 23°C",
          "dressCode": "Comfortable travel wear",
          "packingSuggestions": "Check-in luggage packed, photo ID ready.",
          "accessibility": "Accessible vehicles",
          "visitorNote": "Arrive at Kent station/airport 2 hours prior to departure.",
          "travelDuration": "Approx 1 hour transfer"
        }
      }
    ],
    "durationDays": 3,
    "durationLabel": "3 Days / 2 Nights",
    "travellerTypes": [
      "Pilgrims",
      "Seniors"
    ],
    "accessibilityStatus": "Wheelchair Accessible",
    "childFriendly": true,
    "packageBenefits": [
      "Pilgrimage Guide",
      "Senior Rest Support"
    ],
    "highlights": [
      "Spiritual darshan and guided temple tour in Canterbury Cathedral",
      "Experience peaceful aarti assemblies and sacred rituals",
      "Comfortable transfers to all holy sites"
    ],
    "tips": [
      "Carry valid government ID cards for verification.",
      "Traditional decency wear is recommended inside temple corridors.",
      "Avoid carrying electronics inside the inner sanctum."
    ],
    "itinerarySummary": [
      "Day 1: Scenic Drive to Kent & Canterbury Cathedral Gateway",
      "Day 2: Exclusive Morning Tour of Canterbury Cathedral",
      "Day 3: Souvenir Shopping & Onward Departure from Kent"
    ],
    "cancellationSummary": "Get a 100% full refund on cancellations made up to 15 days before the departure. Rescheduling options are fully flexible."
  },
  {
    "id": "christianity-church-of-the-holy-sepulchre-jerusalem-israel",
    "title": "Church of the Holy Sepulchre, Jerusalem Journey",
    "destinationName": "Church of the Holy Sepulchre, Jerusalem",
    "destinations": "Church of the Holy Sepulchre, Jerusalem (Jerusalem, Israel)",
    "location": "Jerusalem, Israel",
    "route": [
      "Jerusalem",
      "Church of the Holy Sepulchre, Jerusalem"
    ],
    "mainCategory": "Pilgrimage",
    "subCategory": "Christianity",
    "categoryLabel": "Pilgrimage",
    "category": "Pilgrimage",
    "region": "International",
    "image": "/images/tourist-places/pilgrimage/Christianity/Church of the Holy Sepulchre, Jerusalem, Israel.jpg",
    "altText": "Church of the Holy Sepulchre, Jerusalem christian pilgrimage destination in Jerusalem, Israel",
    "duration": "3 Days / 2 Nights",
    "bestSeason": "October–March",
    "pace": "Easy",
    "travellerType": "Senior Friendly",
    "description": "A thoughtfully planned christian pilgrimage offering comfort, guidance, and a memorable experience.",
    "price": 19300,
    "rating": null,
    "reviewCount": null,
    "seatsLeft": null,
    "recentBookings": null,
    "verified": null,
    "tags": [
      "Pilgrimage",
      "Curated Journey"
    ],
    "seniorFriendly": true,
    "wheelchairAccess": true,
    "vegMeals": true,
    "inclusions": {
      "hotel": true,
      "meals": true,
      "transit": true,
      "guide": true,
      "entryPasses": true,
      "medicalSupport": false,
      "localExperience": false
    },
    "itinerary": [
      {
        "day": 1,
        "title": "Arrival in Jerusalem: Candlelight Dinner & Courtyard Music",
        "location": "Jerusalem",
        "overview": "Begin your sacred yatra as you arrive in Jerusalem. Check into your room at Luxury Eco Lodge in Jerusalem and receive a brief orientation before evening prayers.",
        "schedule": {
          "morning": {
            "title": "Arrival & Escorted Transfer in Jerusalem",
            "description": "Meet our local travel escort at Jerusalem transit hub. Receive a traditional welcome and transfer to Luxury Eco Lodge in Jerusalem."
          },
          "afternoon": {
            "title": "Unpack & Courtyard Leisure at Jerusalem",
            "description": "Check into your sanitized room, unpack your luggage, and enjoy quiet leisure time exploring hotel gardens and facilities."
          },
          "evening": {
            "title": "Candlelight Dinner & Courtyard Music at Church of the Holy Sepulchre, Jerusalem",
            "description": "Attend solemn evening prayer assembly near Church of the Holy Sepulchre, Jerusalem. Float earthen lamps and soak in peaceful chanting."
          }
        },
        "details": {
          "importantTimings": "Gate Entry: 8:00 AM | Evening Light Show: 6:30 PM",
          "meals": "100% Satvik Pure Veg Breakfast & Temple Prasadam Dinner.",
          "transport": "AC Private Chauffeur Vehicle",
          "walkingLevel": "Easy Paced (Flat temple paths, seating available)",
          "stay": "Luxury Eco Lodge in Jerusalem",
          "weather": "Pleasant breeze with sunny afternoon 24°C",
          "dressCode": "Modest traditional attire (shoulders & knees covered)",
          "packingSuggestions": "Sunhat, sunglasses, comfortable walking shoes, light jacket, camera.",
          "accessibility": "Wheelchair ramps & low step entry vehicle",
          "visitorNote": "Escort coordinator will brief you on timing for Church of the Holy Sepulchre, Jerusalem visit.",
          "travelDuration": "Approx 1 to 2 hours transfer"
        }
      },
      {
        "day": 2,
        "title": "VIP Access to Church of the Holy Sepulchre, Jerusalem",
        "location": "Jerusalem",
        "overview": "A deep dive into Church of the Holy Sepulchre, Jerusalem. Tour inner sanctums, historical galleries, and architectural viewpoints accompanied by an expert guide.",
        "schedule": {
          "morning": {
            "title": "Guided Tour of Church of the Holy Sepulchre, Jerusalem",
            "description": "Early morning entry to Church of the Holy Sepulchre, Jerusalem. Walk through central courtyards, ancient corridors, and historic halls."
          },
          "afternoon": {
            "title": "Boat Ride & Riverfront Exploration near Jerusalem",
            "description": "Taste authentic local regional cuisine. Visit local artisan markets specializing in handcrafts native to Israel."
          },
          "evening": {
            "title": "Sunset Viewpoint & Cultural Evening",
            "description": "Head to the highest scenic viewpoint overlooking Church of the Holy Sepulchre, Jerusalem. Capture sunset photographs followed by evening entertainment."
          }
        },
        "details": {
          "importantTimings": "Gate Entry: 8:00 AM | Evening Light Show: 6:30 PM",
          "meals": "Welcome Tender Coconut & Traditional Satvik Thali.",
          "transport": "AC Private Sedan / SUV",
          "walkingLevel": "Moderate (Historical walkways & corridors)",
          "stay": "Luxury Eco Lodge in Jerusalem",
          "weather": "Pleasant breeze with sunny afternoon 24°C",
          "dressCode": "Traditional attire",
          "packingSuggestions": "Traditional headscarf, slip-on shoes, reusable water bottle, dry bag.",
          "accessibility": "Assistive ramps available at main portals",
          "visitorNote": "Follow local heritage guidelines inside Church of the Holy Sepulchre, Jerusalem.",
          "travelDuration": "Full day sightseeing approx 5 to 6 hours"
        }
      },
      {
        "day": 3,
        "title": "Souvenir Shopping & Onward Departure from Jerusalem",
        "location": "Jerusalem",
        "overview": "Conclude your trip to Church of the Holy Sepulchre, Jerusalem with morning shopping for local delicacies and souvenirs, followed by departure transfer.",
        "schedule": {
          "morning": {
            "title": "Handicrafts & Sweet Market Visit",
            "description": "Visit trusted local bazaar stalls to buy regional spices, handmade crafts, and traditional sweets of Jerusalem."
          },
          "afternoon": {
            "title": "Hotel Checkout & Farewell Lunch",
            "description": "Return to hotel for packing and checkout. Enjoy a farewell lunch before your transfer."
          },
          "evening": {
            "title": "Outbound Departure Transfer",
            "description": "Chauffeur drop to Jerusalem Airport or Railway Station for your onward journey home."
          }
        },
        "details": {
          "importantTimings": "Checkout: 12:00 PM | Transfer: As per flight/train",
          "meals": "Breakfast & Farewell Lunch included.",
          "transport": "AC Private Transfer Vehicle",
          "walkingLevel": "Easy Paced",
          "stay": "N/A (Day of departure)",
          "weather": "Pleasant breeze with sunny afternoon 24°C",
          "dressCode": "Comfortable travel wear",
          "packingSuggestions": "Check-in luggage packed, photo ID ready.",
          "accessibility": "Accessible vehicles",
          "visitorNote": "Arrive at Jerusalem station/airport 2 hours prior to departure.",
          "travelDuration": "Approx 1 hour transfer"
        }
      }
    ],
    "durationDays": 3,
    "durationLabel": "3 Days / 2 Nights",
    "travellerTypes": [
      "Pilgrims",
      "Seniors"
    ],
    "accessibilityStatus": "Wheelchair Accessible",
    "childFriendly": true,
    "packageBenefits": [
      "Pilgrimage Guide",
      "Senior Rest Support"
    ],
    "highlights": [
      "Spiritual darshan and guided temple tour in Church of the Holy Sepulchre, Jerusalem",
      "Experience peaceful aarti assemblies and sacred rituals",
      "Comfortable transfers to all holy sites"
    ],
    "tips": [
      "Carry valid government ID cards for verification.",
      "Traditional decency wear is recommended inside temple corridors.",
      "Avoid carrying electronics inside the inner sanctum."
    ],
    "itinerarySummary": [
      "Day 1: Arrival in Jerusalem: Candlelight Dinner & Courtyard Music",
      "Day 2: VIP Access to Church of the Holy Sepulchre, Jerusalem",
      "Day 3: Souvenir Shopping & Onward Departure from Jerusalem"
    ],
    "cancellationSummary": "Get a 100% full refund on cancellations made up to 15 days before the departure. Rescheduling options are fully flexible."
  },
  {
    "id": "christianity-el-santuario-de-chimayo-new-mexico-usa",
    "title": "El Santuario de Chimayo Journey",
    "destinationName": "El Santuario de Chimayo",
    "destinations": "El Santuario de Chimayo (New Mexico, USA)",
    "location": "New Mexico, USA",
    "route": [
      "New Mexico",
      "El Santuario de Chimayo"
    ],
    "mainCategory": "Pilgrimage",
    "subCategory": "Christianity",
    "categoryLabel": "Pilgrimage",
    "category": "Pilgrimage",
    "region": "International",
    "image": "/images/tourist-places/pilgrimage/Christianity/El Santuario de Chimayo, New Mexico, USA.jpg",
    "altText": "El Santuario de Chimayo christian pilgrimage destination in New Mexico, USA",
    "duration": "3 Days / 2 Nights",
    "bestSeason": "October–March",
    "pace": "Easy",
    "travellerType": "Senior Friendly",
    "description": "A thoughtfully planned christian pilgrimage offering comfort, guidance, and a memorable experience.",
    "price": 20500,
    "rating": null,
    "reviewCount": null,
    "seatsLeft": null,
    "recentBookings": null,
    "verified": null,
    "tags": [
      "Pilgrimage",
      "Curated Journey"
    ],
    "seniorFriendly": true,
    "wheelchairAccess": true,
    "vegMeals": true,
    "inclusions": {
      "hotel": true,
      "meals": true,
      "transit": true,
      "guide": true,
      "entryPasses": true,
      "medicalSupport": false,
      "localExperience": false
    },
    "itinerary": [
      {
        "day": 1,
        "title": "Beginning Your Journey in New Mexico & El Santuario de Chimayo Gateway",
        "location": "New Mexico",
        "overview": "Begin your sacred yatra as you arrive in New Mexico. Check into your room at Grand Riverfront Resort near El Santuario de Chimayo and receive a brief orientation before evening prayers.",
        "schedule": {
          "morning": {
            "title": "Arrival & Escorted Transfer in New Mexico",
            "description": "Meet our local travel escort at New Mexico transit hub. Receive a traditional welcome and transfer to Grand Riverfront Resort near El Santuario de Chimayo."
          },
          "afternoon": {
            "title": "Unpack & Courtyard Leisure at New Mexico",
            "description": "Check into your sanitized room, unpack your luggage, and enjoy quiet leisure time exploring hotel gardens and facilities."
          },
          "evening": {
            "title": "Heritage Bazaar Promenade at El Santuario de Chimayo",
            "description": "Attend solemn evening prayer assembly near El Santuario de Chimayo. Float earthen lamps and soak in peaceful chanting."
          }
        },
        "details": {
          "importantTimings": "Sanctum VIP Slot: 6:30 AM | Bazaar Hours: 4:00 PM - 8:30 PM",
          "meals": "100% Satvik Pure Veg Breakfast & Temple Prasadam Dinner.",
          "transport": "AC Private Chauffeur Vehicle",
          "walkingLevel": "Easy Paced (Flat temple paths, seating available)",
          "stay": "Grand Riverfront Resort near El Santuario de Chimayo",
          "weather": "Cool crisp morning fog clearing to bright 22°C",
          "dressCode": "Modest traditional attire (shoulders & knees covered)",
          "packingSuggestions": "Traditional headscarf, slip-on shoes, reusable water bottle, dry bag.",
          "accessibility": "Wheelchair ramps & low step entry vehicle",
          "visitorNote": "Escort coordinator will brief you on timing for El Santuario de Chimayo visit.",
          "travelDuration": "Approx 1 to 2 hours transfer"
        }
      },
      {
        "day": 2,
        "title": "Breakfast & Exploration of El Santuario de Chimayo",
        "location": "New Mexico",
        "overview": "A deep dive into El Santuario de Chimayo. Tour inner sanctums, historical galleries, and architectural viewpoints accompanied by an expert guide.",
        "schedule": {
          "morning": {
            "title": "Guided Tour of El Santuario de Chimayo",
            "description": "Early morning entry to El Santuario de Chimayo. Walk through central courtyards, ancient corridors, and historic halls."
          },
          "afternoon": {
            "title": "Artisan Handloom Workshop & Souvenirs near New Mexico",
            "description": "Taste authentic local regional cuisine. Visit local artisan markets specializing in handcrafts native to USA."
          },
          "evening": {
            "title": "Sunset Viewpoint & Cultural Evening",
            "description": "Head to the highest scenic viewpoint overlooking El Santuario de Chimayo. Capture sunset photographs followed by evening entertainment."
          }
        },
        "details": {
          "importantTimings": "Sanctum VIP Slot: 6:30 AM | Bazaar Hours: 4:00 PM - 8:30 PM",
          "meals": "Welcome Tender Coconut & Traditional Satvik Thali.",
          "transport": "AC Private Sedan / SUV",
          "walkingLevel": "Moderate (Historical walkways & corridors)",
          "stay": "Grand Riverfront Resort near El Santuario de Chimayo",
          "weather": "Cool crisp morning fog clearing to bright 22°C",
          "dressCode": "Traditional attire",
          "packingSuggestions": "Light cotton wear, camera with telephoto lens, sunscreen lotion, photo ID.",
          "accessibility": "Assistive ramps available at main portals",
          "visitorNote": "Follow local heritage guidelines inside El Santuario de Chimayo.",
          "travelDuration": "Full day sightseeing approx 5 to 6 hours"
        }
      },
      {
        "day": 3,
        "title": "Souvenir Shopping & Onward Departure from New Mexico",
        "location": "New Mexico",
        "overview": "Conclude your trip to El Santuario de Chimayo with morning shopping for local delicacies and souvenirs, followed by departure transfer.",
        "schedule": {
          "morning": {
            "title": "Handicrafts & Sweet Market Visit",
            "description": "Visit trusted local bazaar stalls to buy regional spices, handmade crafts, and traditional sweets of New Mexico."
          },
          "afternoon": {
            "title": "Hotel Checkout & Farewell Lunch",
            "description": "Return to hotel for packing and checkout. Enjoy a farewell lunch before your transfer."
          },
          "evening": {
            "title": "Outbound Departure Transfer",
            "description": "Chauffeur drop to New Mexico Airport or Railway Station for your onward journey home."
          }
        },
        "details": {
          "importantTimings": "Checkout: 12:00 PM | Transfer: As per flight/train",
          "meals": "Breakfast & Farewell Lunch included.",
          "transport": "AC Private Transfer Vehicle",
          "walkingLevel": "Easy Paced",
          "stay": "N/A (Day of departure)",
          "weather": "Cool crisp morning fog clearing to bright 22°C",
          "dressCode": "Comfortable travel wear",
          "packingSuggestions": "Check-in luggage packed, photo ID ready.",
          "accessibility": "Accessible vehicles",
          "visitorNote": "Arrive at New Mexico station/airport 2 hours prior to departure.",
          "travelDuration": "Approx 1 hour transfer"
        }
      }
    ],
    "durationDays": 3,
    "durationLabel": "3 Days / 2 Nights",
    "travellerTypes": [
      "Pilgrims",
      "Seniors"
    ],
    "accessibilityStatus": "Wheelchair Accessible",
    "childFriendly": true,
    "packageBenefits": [
      "Pilgrimage Guide",
      "Senior Rest Support"
    ],
    "highlights": [
      "Spiritual darshan and guided temple tour in El Santuario de Chimayo",
      "Experience peaceful aarti assemblies and sacred rituals",
      "Comfortable transfers to all holy sites"
    ],
    "tips": [
      "Carry valid government ID cards for verification.",
      "Traditional decency wear is recommended inside temple corridors.",
      "Avoid carrying electronics inside the inner sanctum."
    ],
    "itinerarySummary": [
      "Day 1: Beginning Your Journey in New Mexico & El Santuario de Chimayo Gateway",
      "Day 2: Breakfast & Exploration of El Santuario de Chimayo",
      "Day 3: Souvenir Shopping & Onward Departure from New Mexico"
    ],
    "cancellationSummary": "Get a 100% full refund on cancellations made up to 15 days before the departure. Rescheduling options are fully flexible."
  },
  {
    "id": "christianity-f-tima-portugal",
    "title": "Fátima Journey",
    "destinationName": "Fátima",
    "destinations": "Fátima (Santarém, Portugal)",
    "location": "Santarém, Portugal",
    "route": [
      "Santarém",
      "Fátima"
    ],
    "mainCategory": "Pilgrimage",
    "subCategory": "Christianity",
    "categoryLabel": "Pilgrimage",
    "category": "Pilgrimage",
    "region": "International",
    "image": "/images/tourist-places/pilgrimage/Christianity/Fátima, Portugal.jpg",
    "altText": "Fátima christian pilgrimage destination in Santarém, Portugal",
    "duration": "3 Days / 2 Nights",
    "bestSeason": "October–March",
    "pace": "Easy",
    "travellerType": "Senior Friendly",
    "description": "A thoughtfully planned christian pilgrimage offering comfort, guidance, and a memorable experience.",
    "price": 21700,
    "rating": null,
    "reviewCount": null,
    "seatsLeft": null,
    "recentBookings": null,
    "verified": null,
    "tags": [
      "Pilgrimage",
      "Curated Journey"
    ],
    "seniorFriendly": true,
    "wheelchairAccess": true,
    "vegMeals": true,
    "inclusions": {
      "hotel": true,
      "meals": true,
      "transit": true,
      "guide": true,
      "entryPasses": true,
      "medicalSupport": false,
      "localExperience": false
    },
    "itinerary": [
      {
        "day": 1,
        "title": "Arrival in Santarém: Panoramic Terrace Lounge Session",
        "location": "Santarém",
        "overview": "Begin your sacred yatra as you arrive in Santarém. Check into your room at Vedic Pilgrim Ashram Stay in Santarém and receive a brief orientation before evening prayers.",
        "schedule": {
          "morning": {
            "title": "Arrival & Escorted Transfer in Santarém",
            "description": "Meet our local travel escort at Santarém transit hub. Receive a traditional welcome and transfer to Vedic Pilgrim Ashram Stay in Santarém."
          },
          "afternoon": {
            "title": "Unpack & Courtyard Leisure at Santarém",
            "description": "Check into your sanitized room, unpack your luggage, and enjoy quiet leisure time exploring hotel gardens and facilities."
          },
          "evening": {
            "title": "Panoramic Terrace Lounge Session at Fátima",
            "description": "Attend solemn evening prayer assembly near Fátima. Float earthen lamps and soak in peaceful chanting."
          }
        },
        "details": {
          "importantTimings": "Sunrise Tour: 5:45 AM | Museum Hours: 9:30 AM - 5:00 PM",
          "meals": "100% Satvik Pure Veg Breakfast & Temple Prasadam Dinner.",
          "transport": "AC Private Chauffeur Vehicle",
          "walkingLevel": "Easy Paced (Flat temple paths, seating available)",
          "stay": "Vedic Pilgrim Ashram Stay in Santarém",
          "weather": "Warm tropical sunshine with ocean breeze 27°C",
          "dressCode": "Modest traditional attire (shoulders & knees covered)",
          "packingSuggestions": "Light cotton wear, camera with telephoto lens, sunscreen lotion, photo ID.",
          "accessibility": "Wheelchair ramps & low step entry vehicle",
          "visitorNote": "Escort coordinator will brief you on timing for Fátima visit.",
          "travelDuration": "Approx 1 to 2 hours transfer"
        }
      },
      {
        "day": 2,
        "title": "Panoramic Discovery of Fátima",
        "location": "Santarém",
        "overview": "A deep dive into Fátima. Tour inner sanctums, historical galleries, and architectural viewpoints accompanied by an expert guide.",
        "schedule": {
          "morning": {
            "title": "Guided Tour of Fátima",
            "description": "Early morning entry to Fátima. Walk through central courtyards, ancient corridors, and historic halls."
          },
          "afternoon": {
            "title": "Scenic Valley Drive & Photo Stops near Santarém",
            "description": "Taste authentic local regional cuisine. Visit local artisan markets specializing in handcrafts native to Portugal."
          },
          "evening": {
            "title": "Sunset Viewpoint & Cultural Evening",
            "description": "Head to the highest scenic viewpoint overlooking Fátima. Capture sunset photographs followed by evening entertainment."
          }
        },
        "details": {
          "importantTimings": "Sunrise Tour: 5:45 AM | Museum Hours: 9:30 AM - 5:00 PM",
          "meals": "Welcome Tender Coconut & Traditional Satvik Thali.",
          "transport": "AC Private Sedan / SUV",
          "walkingLevel": "Moderate (Historical walkways & corridors)",
          "stay": "Vedic Pilgrim Ashram Stay in Santarém",
          "weather": "Warm tropical sunshine with ocean breeze 27°C",
          "dressCode": "Traditional attire",
          "packingSuggestions": "Comfortable walking socks, power bank, shoulder shawl, daypack.",
          "accessibility": "Assistive ramps available at main portals",
          "visitorNote": "Follow local heritage guidelines inside Fátima.",
          "travelDuration": "Full day sightseeing approx 5 to 6 hours"
        }
      },
      {
        "day": 3,
        "title": "Souvenir Shopping & Onward Departure from Santarém",
        "location": "Santarém",
        "overview": "Conclude your trip to Fátima with morning shopping for local delicacies and souvenirs, followed by departure transfer.",
        "schedule": {
          "morning": {
            "title": "Handicrafts & Sweet Market Visit",
            "description": "Visit trusted local bazaar stalls to buy regional spices, handmade crafts, and traditional sweets of Santarém."
          },
          "afternoon": {
            "title": "Hotel Checkout & Farewell Lunch",
            "description": "Return to hotel for packing and checkout. Enjoy a farewell lunch before your transfer."
          },
          "evening": {
            "title": "Outbound Departure Transfer",
            "description": "Chauffeur drop to Santarém Airport or Railway Station for your onward journey home."
          }
        },
        "details": {
          "importantTimings": "Checkout: 12:00 PM | Transfer: As per flight/train",
          "meals": "Breakfast & Farewell Lunch included.",
          "transport": "AC Private Transfer Vehicle",
          "walkingLevel": "Easy Paced",
          "stay": "N/A (Day of departure)",
          "weather": "Warm tropical sunshine with ocean breeze 27°C",
          "dressCode": "Comfortable travel wear",
          "packingSuggestions": "Check-in luggage packed, photo ID ready.",
          "accessibility": "Accessible vehicles",
          "visitorNote": "Arrive at Santarém station/airport 2 hours prior to departure.",
          "travelDuration": "Approx 1 hour transfer"
        }
      }
    ],
    "durationDays": 3,
    "durationLabel": "3 Days / 2 Nights",
    "travellerTypes": [
      "Pilgrims",
      "Seniors"
    ],
    "accessibilityStatus": "Wheelchair Accessible",
    "childFriendly": true,
    "packageBenefits": [
      "Pilgrimage Guide",
      "Senior Rest Support"
    ],
    "highlights": [
      "Spiritual darshan and guided temple tour in Fátima",
      "Experience peaceful aarti assemblies and sacred rituals",
      "Comfortable transfers to all holy sites"
    ],
    "tips": [
      "Carry valid government ID cards for verification.",
      "Traditional decency wear is recommended inside temple corridors.",
      "Avoid carrying electronics inside the inner sanctum."
    ],
    "itinerarySummary": [
      "Day 1: Arrival in Santarém: Panoramic Terrace Lounge Session",
      "Day 2: Panoramic Discovery of Fátima",
      "Day 3: Souvenir Shopping & Onward Departure from Santarém"
    ],
    "cancellationSummary": "Get a 100% full refund on cancellations made up to 15 days before the departure. Rescheduling options are fully flexible."
  },
  {
    "id": "christianity-lalibela-ethiopia",
    "title": "Lalibela Journey",
    "destinationName": "Lalibela",
    "destinations": "Lalibela (Amhara, Ethiopia)",
    "location": "Amhara, Ethiopia",
    "route": [
      "Amhara",
      "Lalibela"
    ],
    "mainCategory": "Pilgrimage",
    "subCategory": "Christianity",
    "categoryLabel": "Pilgrimage",
    "category": "Pilgrimage",
    "region": "International",
    "image": "/images/tourist-places/pilgrimage/Christianity/Lalibela, Ethiopia.webp",
    "altText": "Lalibela christian pilgrimage destination in Amhara, Ethiopia",
    "duration": "3 Days / 2 Nights",
    "bestSeason": "October–March",
    "pace": "Easy",
    "travellerType": "Senior Friendly",
    "description": "A thoughtfully planned christian pilgrimage offering comfort, guidance, and a memorable experience.",
    "price": 22900,
    "rating": null,
    "reviewCount": null,
    "seatsLeft": null,
    "recentBookings": null,
    "verified": null,
    "tags": [
      "Pilgrimage",
      "Curated Journey"
    ],
    "seniorFriendly": true,
    "wheelchairAccess": true,
    "vegMeals": true,
    "inclusions": {
      "hotel": true,
      "meals": true,
      "transit": true,
      "guide": true,
      "entryPasses": true,
      "medicalSupport": false,
      "localExperience": false
    },
    "itinerary": [
      {
        "day": 1,
        "title": "Spiritual Welcome to Amhara & Lalibela Gateway",
        "location": "Amhara",
        "overview": "Begin your sacred yatra as you arrive in Amhara. Check into your room at Boutique Star Hotel in Amhara and receive a brief orientation before evening prayers.",
        "schedule": {
          "morning": {
            "title": "Arrival & Escorted Transfer in Amhara",
            "description": "Meet our local travel escort at Amhara transit hub. Receive a traditional welcome and transfer to Boutique Star Hotel in Amhara."
          },
          "afternoon": {
            "title": "Unpack & Courtyard Leisure at Amhara",
            "description": "Check into your sanitized room, unpack your luggage, and enjoy quiet leisure time exploring hotel gardens and facilities."
          },
          "evening": {
            "title": "Lakeside Stroll & Local Cuisine at Lalibela",
            "description": "Attend solemn evening prayer assembly near Lalibela. Float earthen lamps and soak in peaceful chanting."
          }
        },
        "details": {
          "importantTimings": "Guided Walk: 9:00 AM | Sunset Point Departure: 5:15 PM",
          "meals": "100% Satvik Pure Veg Breakfast & Temple Prasadam Dinner.",
          "transport": "AC Private Chauffeur Vehicle",
          "walkingLevel": "Easy Paced (Flat temple paths, seating available)",
          "stay": "Boutique Star Hotel in Amhara",
          "weather": "Crisp mountain climate, clear blue skies 19°C",
          "dressCode": "Modest traditional attire (shoulders & knees covered)",
          "packingSuggestions": "Comfortable walking socks, power bank, shoulder shawl, daypack.",
          "accessibility": "Wheelchair ramps & low step entry vehicle",
          "visitorNote": "Escort coordinator will brief you on timing for Lalibela visit.",
          "travelDuration": "Approx 1 to 2 hours transfer"
        }
      },
      {
        "day": 2,
        "title": "Uncovering the Secrets of Lalibela",
        "location": "Amhara",
        "overview": "A deep dive into Lalibela. Tour inner sanctums, historical galleries, and architectural viewpoints accompanied by an expert guide.",
        "schedule": {
          "morning": {
            "title": "Guided Tour of Lalibela",
            "description": "Early morning entry to Lalibela. Walk through central courtyards, ancient corridors, and historic halls."
          },
          "afternoon": {
            "title": "Sacred Shrine Darshan & Temple Complex near Amhara",
            "description": "Taste authentic local regional cuisine. Visit local artisan markets specializing in handcrafts native to Ethiopia."
          },
          "evening": {
            "title": "Sunset Viewpoint & Cultural Evening",
            "description": "Head to the highest scenic viewpoint overlooking Lalibela. Capture sunset photographs followed by evening entertainment."
          }
        },
        "details": {
          "importantTimings": "Guided Walk: 9:00 AM | Sunset Point Departure: 5:15 PM",
          "meals": "Welcome Tender Coconut & Traditional Satvik Thali.",
          "transport": "AC Private Sedan / SUV",
          "walkingLevel": "Moderate (Historical walkways & corridors)",
          "stay": "Boutique Star Hotel in Amhara",
          "weather": "Crisp mountain climate, clear blue skies 19°C",
          "dressCode": "Traditional attire",
          "packingSuggestions": "Breathable linen wear, sunglasses, small currency notes for local shops.",
          "accessibility": "Assistive ramps available at main portals",
          "visitorNote": "Follow local heritage guidelines inside Lalibela.",
          "travelDuration": "Full day sightseeing approx 5 to 6 hours"
        }
      },
      {
        "day": 3,
        "title": "Souvenir Shopping & Onward Departure from Amhara",
        "location": "Amhara",
        "overview": "Conclude your trip to Lalibela with morning shopping for local delicacies and souvenirs, followed by departure transfer.",
        "schedule": {
          "morning": {
            "title": "Handicrafts & Sweet Market Visit",
            "description": "Visit trusted local bazaar stalls to buy regional spices, handmade crafts, and traditional sweets of Amhara."
          },
          "afternoon": {
            "title": "Hotel Checkout & Farewell Lunch",
            "description": "Return to hotel for packing and checkout. Enjoy a farewell lunch before your transfer."
          },
          "evening": {
            "title": "Outbound Departure Transfer",
            "description": "Chauffeur drop to Amhara Airport or Railway Station for your onward journey home."
          }
        },
        "details": {
          "importantTimings": "Checkout: 12:00 PM | Transfer: As per flight/train",
          "meals": "Breakfast & Farewell Lunch included.",
          "transport": "AC Private Transfer Vehicle",
          "walkingLevel": "Easy Paced",
          "stay": "N/A (Day of departure)",
          "weather": "Crisp mountain climate, clear blue skies 19°C",
          "dressCode": "Comfortable travel wear",
          "packingSuggestions": "Check-in luggage packed, photo ID ready.",
          "accessibility": "Accessible vehicles",
          "visitorNote": "Arrive at Amhara station/airport 2 hours prior to departure.",
          "travelDuration": "Approx 1 hour transfer"
        }
      }
    ],
    "durationDays": 3,
    "durationLabel": "3 Days / 2 Nights",
    "travellerTypes": [
      "Pilgrims",
      "Seniors"
    ],
    "accessibilityStatus": "Wheelchair Accessible",
    "childFriendly": true,
    "packageBenefits": [
      "Pilgrimage Guide",
      "Senior Rest Support"
    ],
    "highlights": [
      "Spiritual darshan and guided temple tour in Lalibela",
      "Experience peaceful aarti assemblies and sacred rituals",
      "Comfortable transfers to all holy sites"
    ],
    "tips": [
      "Carry valid government ID cards for verification.",
      "Traditional decency wear is recommended inside temple corridors.",
      "Avoid carrying electronics inside the inner sanctum."
    ],
    "itinerarySummary": [
      "Day 1: Spiritual Welcome to Amhara & Lalibela Gateway",
      "Day 2: Uncovering the Secrets of Lalibela",
      "Day 3: Souvenir Shopping & Onward Departure from Amhara"
    ],
    "cancellationSummary": "Get a 100% full refund on cancellations made up to 15 days before the departure. Rescheduling options are fully flexible."
  },
  {
    "id": "christianity-mount-athos-greece",
    "title": "Mount Athos Journey",
    "destinationName": "Mount Athos",
    "destinations": "Mount Athos (Chalkidiki, Greece)",
    "location": "Chalkidiki, Greece",
    "route": [
      "Chalkidiki",
      "Mount Athos"
    ],
    "mainCategory": "Pilgrimage",
    "subCategory": "Christianity",
    "categoryLabel": "Pilgrimage",
    "category": "Pilgrimage",
    "region": "International",
    "image": "/images/tourist-places/pilgrimage/Christianity/Mount Athos, Greece.jpg",
    "altText": "Mount Athos christian pilgrimage destination in Chalkidiki, Greece",
    "duration": "3 Days / 2 Nights",
    "bestSeason": "October–March",
    "pace": "Easy",
    "travellerType": "Senior Friendly",
    "description": "A thoughtfully planned christian pilgrimage offering comfort, guidance, and a memorable experience.",
    "price": 14500,
    "rating": null,
    "reviewCount": null,
    "seatsLeft": null,
    "recentBookings": null,
    "verified": null,
    "tags": [
      "Pilgrimage",
      "Curated Journey"
    ],
    "seniorFriendly": true,
    "wheelchairAccess": true,
    "vegMeals": true,
    "inclusions": {
      "hotel": true,
      "meals": true,
      "transit": true,
      "guide": true,
      "entryPasses": true,
      "medicalSupport": false,
      "localExperience": false
    },
    "itinerary": [
      {
        "day": 1,
        "title": "Arrival in Chalkidiki: Traditional Ceremony & Quiet Reflection",
        "location": "Chalkidiki",
        "overview": "Begin your sacred yatra as you arrive in Chalkidiki. Check into your room at Hilltop Panorama Resort near Mount Athos and receive a brief orientation before evening prayers.",
        "schedule": {
          "morning": {
            "title": "Arrival & Escorted Transfer in Chalkidiki",
            "description": "Meet our local travel escort at Chalkidiki transit hub. Receive a traditional welcome and transfer to Hilltop Panorama Resort near Mount Athos."
          },
          "afternoon": {
            "title": "Unpack & Courtyard Leisure at Chalkidiki",
            "description": "Check into your sanitized room, unpack your luggage, and enjoy quiet leisure time exploring hotel gardens and facilities."
          },
          "evening": {
            "title": "Traditional Ceremony & Quiet Reflection at Mount Athos",
            "description": "Attend solemn evening prayer assembly near Mount Athos. Float earthen lamps and soak in peaceful chanting."
          }
        },
        "details": {
          "importantTimings": "Boat Departure: 6:00 AM | Heritage Show: 7:00 PM",
          "meals": "100% Satvik Pure Veg Breakfast & Temple Prasadam Dinner.",
          "transport": "AC Private Chauffeur Vehicle",
          "walkingLevel": "Easy Paced (Flat temple paths, seating available)",
          "stay": "Hilltop Panorama Resort near Mount Athos",
          "weather": "Refreshing river mist with mild sun 23°C",
          "dressCode": "Modest traditional attire (shoulders & knees covered)",
          "packingSuggestions": "Breathable linen wear, sunglasses, small currency notes for local shops.",
          "accessibility": "Wheelchair ramps & low step entry vehicle",
          "visitorNote": "Escort coordinator will brief you on timing for Mount Athos visit.",
          "travelDuration": "Approx 1 to 2 hours transfer"
        }
      },
      {
        "day": 2,
        "title": "Spiritual Morning Prayers at Mount Athos",
        "location": "Chalkidiki",
        "overview": "A deep dive into Mount Athos. Tour inner sanctums, historical galleries, and architectural viewpoints accompanied by an expert guide.",
        "schedule": {
          "morning": {
            "title": "Guided Tour of Mount Athos",
            "description": "Early morning entry to Mount Athos. Walk through central courtyards, ancient corridors, and historic halls."
          },
          "afternoon": {
            "title": "Coastal Promenade & Beach Relax near Chalkidiki",
            "description": "Taste authentic local regional cuisine. Visit local artisan markets specializing in handcrafts native to Greece."
          },
          "evening": {
            "title": "Sunset Viewpoint & Cultural Evening",
            "description": "Head to the highest scenic viewpoint overlooking Mount Athos. Capture sunset photographs followed by evening entertainment."
          }
        },
        "details": {
          "importantTimings": "Boat Departure: 6:00 AM | Heritage Show: 7:00 PM",
          "meals": "Welcome Tender Coconut & Traditional Satvik Thali.",
          "transport": "AC Private Sedan / SUV",
          "walkingLevel": "Moderate (Historical walkways & corridors)",
          "stay": "Hilltop Panorama Resort near Mount Athos",
          "weather": "Refreshing river mist with mild sun 23°C",
          "dressCode": "Traditional attire",
          "packingSuggestions": "Sunhat, sunglasses, comfortable walking shoes, light jacket, camera.",
          "accessibility": "Assistive ramps available at main portals",
          "visitorNote": "Follow local heritage guidelines inside Mount Athos.",
          "travelDuration": "Full day sightseeing approx 5 to 6 hours"
        }
      },
      {
        "day": 3,
        "title": "Souvenir Shopping & Onward Departure from Chalkidiki",
        "location": "Chalkidiki",
        "overview": "Conclude your trip to Mount Athos with morning shopping for local delicacies and souvenirs, followed by departure transfer.",
        "schedule": {
          "morning": {
            "title": "Handicrafts & Sweet Market Visit",
            "description": "Visit trusted local bazaar stalls to buy regional spices, handmade crafts, and traditional sweets of Chalkidiki."
          },
          "afternoon": {
            "title": "Hotel Checkout & Farewell Lunch",
            "description": "Return to hotel for packing and checkout. Enjoy a farewell lunch before your transfer."
          },
          "evening": {
            "title": "Outbound Departure Transfer",
            "description": "Chauffeur drop to Chalkidiki Airport or Railway Station for your onward journey home."
          }
        },
        "details": {
          "importantTimings": "Checkout: 12:00 PM | Transfer: As per flight/train",
          "meals": "Breakfast & Farewell Lunch included.",
          "transport": "AC Private Transfer Vehicle",
          "walkingLevel": "Easy Paced",
          "stay": "N/A (Day of departure)",
          "weather": "Refreshing river mist with mild sun 23°C",
          "dressCode": "Comfortable travel wear",
          "packingSuggestions": "Check-in luggage packed, photo ID ready.",
          "accessibility": "Accessible vehicles",
          "visitorNote": "Arrive at Chalkidiki station/airport 2 hours prior to departure.",
          "travelDuration": "Approx 1 hour transfer"
        }
      }
    ],
    "durationDays": 3,
    "durationLabel": "3 Days / 2 Nights",
    "travellerTypes": [
      "Pilgrims",
      "Seniors"
    ],
    "accessibilityStatus": "Wheelchair Accessible",
    "childFriendly": true,
    "packageBenefits": [
      "Pilgrimage Guide",
      "Senior Rest Support"
    ],
    "highlights": [
      "Spiritual darshan and guided temple tour in Mount Athos",
      "Experience peaceful aarti assemblies and sacred rituals",
      "Comfortable transfers to all holy sites"
    ],
    "tips": [
      "Carry valid government ID cards for verification.",
      "Traditional decency wear is recommended inside temple corridors.",
      "Avoid carrying electronics inside the inner sanctum."
    ],
    "itinerarySummary": [
      "Day 1: Arrival in Chalkidiki: Traditional Ceremony & Quiet Reflection",
      "Day 2: Spiritual Morning Prayers at Mount Athos",
      "Day 3: Souvenir Shopping & Onward Departure from Chalkidiki"
    ],
    "cancellationSummary": "Get a 100% full refund on cancellations made up to 15 days before the departure. Rescheduling options are fully flexible."
  },
  {
    "id": "christianity-old-city-jerusalem-israel",
    "title": "Old City Jerusalem Journey",
    "destinationName": "Old City Jerusalem",
    "destinations": "Old City Jerusalem (Jerusalem, Israel)",
    "location": "Jerusalem, Israel",
    "route": [
      "Jerusalem",
      "Old City Jerusalem"
    ],
    "mainCategory": "Pilgrimage",
    "subCategory": "Christianity",
    "categoryLabel": "Pilgrimage",
    "category": "Pilgrimage",
    "region": "International",
    "image": "/images/tourist-places/pilgrimage/Christianity/Old City Jerusalem, Israel.jpg",
    "altText": "Old City Jerusalem christian pilgrimage destination in Jerusalem, Israel",
    "duration": "3 Days / 2 Nights",
    "bestSeason": "October–March",
    "pace": "Easy",
    "travellerType": "Senior Friendly",
    "description": "A thoughtfully planned christian pilgrimage offering comfort, guidance, and a memorable experience.",
    "price": 15700,
    "rating": null,
    "reviewCount": null,
    "seatsLeft": null,
    "recentBookings": null,
    "verified": null,
    "tags": [
      "Pilgrimage",
      "Curated Journey"
    ],
    "seniorFriendly": true,
    "wheelchairAccess": true,
    "vegMeals": true,
    "inclusions": {
      "hotel": true,
      "meals": true,
      "transit": true,
      "guide": true,
      "entryPasses": true,
      "medicalSupport": false,
      "localExperience": false
    },
    "itinerary": [
      {
        "day": 1,
        "title": "Welcome & Check-in at Jerusalem & Old City Jerusalem Gateway",
        "location": "Jerusalem",
        "overview": "Begin your sacred yatra as you arrive in Jerusalem. Check into your room at Heritage Palace Resort overlooking Old City Jerusalem and receive a brief orientation before evening prayers.",
        "schedule": {
          "morning": {
            "title": "Arrival & Escorted Transfer in Jerusalem",
            "description": "Meet our local travel escort at Jerusalem transit hub. Receive a traditional welcome and transfer to Heritage Palace Resort overlooking Old City Jerusalem."
          },
          "afternoon": {
            "title": "Unpack & Courtyard Leisure at Jerusalem",
            "description": "Check into your sanitized room, unpack your luggage, and enjoy quiet leisure time exploring hotel gardens and facilities."
          },
          "evening": {
            "title": "Sunset Walk & Local Market Flavors at Old City Jerusalem",
            "description": "Attend solemn evening prayer assembly near Old City Jerusalem. Float earthen lamps and soak in peaceful chanting."
          }
        },
        "details": {
          "importantTimings": "Gate Entry: 8:00 AM | Evening Light Show: 6:30 PM",
          "meals": "100% Satvik Pure Veg Breakfast & Temple Prasadam Dinner.",
          "transport": "AC Private Chauffeur Vehicle",
          "walkingLevel": "Easy Paced (Flat temple paths, seating available)",
          "stay": "Heritage Palace Resort overlooking Old City Jerusalem",
          "weather": "Pleasant breeze with sunny afternoon 24°C",
          "dressCode": "Modest traditional attire (shoulders & knees covered)",
          "packingSuggestions": "Sunhat, sunglasses, comfortable walking shoes, light jacket, camera.",
          "accessibility": "Wheelchair ramps & low step entry vehicle",
          "visitorNote": "Escort coordinator will brief you on timing for Old City Jerusalem visit.",
          "travelDuration": "Approx 1 to 2 hours transfer"
        }
      },
      {
        "day": 2,
        "title": "Architectural Tour of Old City Jerusalem",
        "location": "Jerusalem",
        "overview": "A deep dive into Old City Jerusalem. Tour inner sanctums, historical galleries, and architectural viewpoints accompanied by an expert guide.",
        "schedule": {
          "morning": {
            "title": "Guided Tour of Old City Jerusalem",
            "description": "Early morning entry to Old City Jerusalem. Walk through central courtyards, ancient corridors, and historic halls."
          },
          "afternoon": {
            "title": "Culinary Tasting & Local Artisan Crafts near Jerusalem",
            "description": "Taste authentic local regional cuisine. Visit local artisan markets specializing in handcrafts native to Israel."
          },
          "evening": {
            "title": "Sunset Viewpoint & Cultural Evening",
            "description": "Head to the highest scenic viewpoint overlooking Old City Jerusalem. Capture sunset photographs followed by evening entertainment."
          }
        },
        "details": {
          "importantTimings": "Gate Entry: 8:00 AM | Evening Light Show: 6:30 PM",
          "meals": "Welcome Tender Coconut & Traditional Satvik Thali.",
          "transport": "AC Private Sedan / SUV",
          "walkingLevel": "Moderate (Historical walkways & corridors)",
          "stay": "Heritage Palace Resort overlooking Old City Jerusalem",
          "weather": "Pleasant breeze with sunny afternoon 24°C",
          "dressCode": "Traditional attire",
          "packingSuggestions": "Traditional headscarf, slip-on shoes, reusable water bottle, dry bag.",
          "accessibility": "Assistive ramps available at main portals",
          "visitorNote": "Follow local heritage guidelines inside Old City Jerusalem.",
          "travelDuration": "Full day sightseeing approx 5 to 6 hours"
        }
      },
      {
        "day": 3,
        "title": "Souvenir Shopping & Onward Departure from Jerusalem",
        "location": "Jerusalem",
        "overview": "Conclude your trip to Old City Jerusalem with morning shopping for local delicacies and souvenirs, followed by departure transfer.",
        "schedule": {
          "morning": {
            "title": "Handicrafts & Sweet Market Visit",
            "description": "Visit trusted local bazaar stalls to buy regional spices, handmade crafts, and traditional sweets of Jerusalem."
          },
          "afternoon": {
            "title": "Hotel Checkout & Farewell Lunch",
            "description": "Return to hotel for packing and checkout. Enjoy a farewell lunch before your transfer."
          },
          "evening": {
            "title": "Outbound Departure Transfer",
            "description": "Chauffeur drop to Jerusalem Airport or Railway Station for your onward journey home."
          }
        },
        "details": {
          "importantTimings": "Checkout: 12:00 PM | Transfer: As per flight/train",
          "meals": "Breakfast & Farewell Lunch included.",
          "transport": "AC Private Transfer Vehicle",
          "walkingLevel": "Easy Paced",
          "stay": "N/A (Day of departure)",
          "weather": "Pleasant breeze with sunny afternoon 24°C",
          "dressCode": "Comfortable travel wear",
          "packingSuggestions": "Check-in luggage packed, photo ID ready.",
          "accessibility": "Accessible vehicles",
          "visitorNote": "Arrive at Jerusalem station/airport 2 hours prior to departure.",
          "travelDuration": "Approx 1 hour transfer"
        }
      }
    ],
    "durationDays": 3,
    "durationLabel": "3 Days / 2 Nights",
    "travellerTypes": [
      "Pilgrims",
      "Seniors"
    ],
    "accessibilityStatus": "Wheelchair Accessible",
    "childFriendly": true,
    "packageBenefits": [
      "Pilgrimage Guide",
      "Senior Rest Support"
    ],
    "highlights": [
      "Spiritual darshan and guided temple tour in Old City Jerusalem",
      "Experience peaceful aarti assemblies and sacred rituals",
      "Comfortable transfers to all holy sites"
    ],
    "tips": [
      "Carry valid government ID cards for verification.",
      "Traditional decency wear is recommended inside temple corridors.",
      "Avoid carrying electronics inside the inner sanctum."
    ],
    "itinerarySummary": [
      "Day 1: Welcome & Check-in at Jerusalem & Old City Jerusalem Gateway",
      "Day 2: Architectural Tour of Old City Jerusalem",
      "Day 3: Souvenir Shopping & Onward Departure from Jerusalem"
    ],
    "cancellationSummary": "Get a 100% full refund on cancellations made up to 15 days before the departure. Rescheduling options are fully flexible."
  },
  {
    "id": "christianity-sanctuary-of-our-lady-of-lourdes-france",
    "title": "Sanctuary of Our Lady of Lourdes Journey",
    "destinationName": "Sanctuary of Our Lady of Lourdes",
    "destinations": "Sanctuary of Our Lady of Lourdes (Hautes-Pyrénées, France)",
    "location": "Hautes-Pyrénées, France",
    "route": [
      "Hautes-Pyrénées",
      "Sanctuary of Our Lady of Lourdes"
    ],
    "mainCategory": "Pilgrimage",
    "subCategory": "Christianity",
    "categoryLabel": "Pilgrimage",
    "category": "Pilgrimage",
    "region": "International",
    "image": "/images/tourist-places/pilgrimage/Christianity/Sanctuary of Our Lady of Lourdes, France.jpg",
    "altText": "Sanctuary of Our Lady of Lourdes christian pilgrimage destination in Hautes-Pyrénées, France",
    "duration": "3 Days / 2 Nights",
    "bestSeason": "October–March",
    "pace": "Easy",
    "travellerType": "Senior Friendly",
    "description": "A thoughtfully planned christian pilgrimage offering comfort, guidance, and a memorable experience.",
    "price": 16900,
    "rating": null,
    "reviewCount": null,
    "seatsLeft": null,
    "recentBookings": null,
    "verified": null,
    "tags": [
      "Pilgrimage",
      "Curated Journey"
    ],
    "seniorFriendly": true,
    "wheelchairAccess": true,
    "vegMeals": true,
    "inclusions": {
      "hotel": true,
      "meals": true,
      "transit": true,
      "guide": true,
      "entryPasses": true,
      "medicalSupport": false,
      "localExperience": false
    },
    "itinerary": [
      {
        "day": 1,
        "title": "Arrival in Hautes-Pyrénées: Illuminated Viewpoint & Welcome Feast",
        "location": "Hautes-Pyrénées",
        "overview": "Begin your sacred yatra as you arrive in Hautes-Pyrénées. Check into your room at Boutique Lakefront Haveli in Hautes-Pyrénées and receive a brief orientation before evening prayers.",
        "schedule": {
          "morning": {
            "title": "Arrival & Escorted Transfer in Hautes-Pyrénées",
            "description": "Meet our local travel escort at Hautes-Pyrénées transit hub. Receive a traditional welcome and transfer to Boutique Lakefront Haveli in Hautes-Pyrénées."
          },
          "afternoon": {
            "title": "Unpack & Courtyard Leisure at Hautes-Pyrénées",
            "description": "Check into your sanitized room, unpack your luggage, and enjoy quiet leisure time exploring hotel gardens and facilities."
          },
          "evening": {
            "title": "Illuminated Viewpoint & Welcome Feast at Sanctuary of Our Lady of Lourdes",
            "description": "Attend solemn evening prayer assembly near Sanctuary of Our Lady of Lourdes. Float earthen lamps and soak in peaceful chanting."
          }
        },
        "details": {
          "importantTimings": "Sanctum VIP Slot: 6:30 AM | Bazaar Hours: 4:00 PM - 8:30 PM",
          "meals": "100% Satvik Pure Veg Breakfast & Temple Prasadam Dinner.",
          "transport": "AC Private Chauffeur Vehicle",
          "walkingLevel": "Easy Paced (Flat temple paths, seating available)",
          "stay": "Boutique Lakefront Haveli in Hautes-Pyrénées",
          "weather": "Cool crisp morning fog clearing to bright 22°C",
          "dressCode": "Modest traditional attire (shoulders & knees covered)",
          "packingSuggestions": "Traditional headscarf, slip-on shoes, reusable water bottle, dry bag.",
          "accessibility": "Wheelchair ramps & low step entry vehicle",
          "visitorNote": "Escort coordinator will brief you on timing for Sanctuary of Our Lady of Lourdes visit.",
          "travelDuration": "Approx 1 to 2 hours transfer"
        }
      },
      {
        "day": 2,
        "title": "Dawn Guided Expedition of Sanctuary of Our Lady of Lourdes",
        "location": "Hautes-Pyrénées",
        "overview": "A deep dive into Sanctuary of Our Lady of Lourdes. Tour inner sanctums, historical galleries, and architectural viewpoints accompanied by an expert guide.",
        "schedule": {
          "morning": {
            "title": "Guided Tour of Sanctuary of Our Lady of Lourdes",
            "description": "Early morning entry to Sanctuary of Our Lady of Lourdes. Walk through central courtyards, ancient corridors, and historic halls."
          },
          "afternoon": {
            "title": "Excursion to Surrounding Haveli & Gardens near Hautes-Pyrénées",
            "description": "Taste authentic local regional cuisine. Visit local artisan markets specializing in handcrafts native to France."
          },
          "evening": {
            "title": "Sunset Viewpoint & Cultural Evening",
            "description": "Head to the highest scenic viewpoint overlooking Sanctuary of Our Lady of Lourdes. Capture sunset photographs followed by evening entertainment."
          }
        },
        "details": {
          "importantTimings": "Sanctum VIP Slot: 6:30 AM | Bazaar Hours: 4:00 PM - 8:30 PM",
          "meals": "Welcome Tender Coconut & Traditional Satvik Thali.",
          "transport": "AC Private Sedan / SUV",
          "walkingLevel": "Moderate (Historical walkways & corridors)",
          "stay": "Boutique Lakefront Haveli in Hautes-Pyrénées",
          "weather": "Cool crisp morning fog clearing to bright 22°C",
          "dressCode": "Traditional attire",
          "packingSuggestions": "Light cotton wear, camera with telephoto lens, sunscreen lotion, photo ID.",
          "accessibility": "Assistive ramps available at main portals",
          "visitorNote": "Follow local heritage guidelines inside Sanctuary of Our Lady of Lourdes.",
          "travelDuration": "Full day sightseeing approx 5 to 6 hours"
        }
      },
      {
        "day": 3,
        "title": "Souvenir Shopping & Onward Departure from Hautes-Pyrénées",
        "location": "Hautes-Pyrénées",
        "overview": "Conclude your trip to Sanctuary of Our Lady of Lourdes with morning shopping for local delicacies and souvenirs, followed by departure transfer.",
        "schedule": {
          "morning": {
            "title": "Handicrafts & Sweet Market Visit",
            "description": "Visit trusted local bazaar stalls to buy regional spices, handmade crafts, and traditional sweets of Hautes-Pyrénées."
          },
          "afternoon": {
            "title": "Hotel Checkout & Farewell Lunch",
            "description": "Return to hotel for packing and checkout. Enjoy a farewell lunch before your transfer."
          },
          "evening": {
            "title": "Outbound Departure Transfer",
            "description": "Chauffeur drop to Hautes-Pyrénées Airport or Railway Station for your onward journey home."
          }
        },
        "details": {
          "importantTimings": "Checkout: 12:00 PM | Transfer: As per flight/train",
          "meals": "Breakfast & Farewell Lunch included.",
          "transport": "AC Private Transfer Vehicle",
          "walkingLevel": "Easy Paced",
          "stay": "N/A (Day of departure)",
          "weather": "Cool crisp morning fog clearing to bright 22°C",
          "dressCode": "Comfortable travel wear",
          "packingSuggestions": "Check-in luggage packed, photo ID ready.",
          "accessibility": "Accessible vehicles",
          "visitorNote": "Arrive at Hautes-Pyrénées station/airport 2 hours prior to departure.",
          "travelDuration": "Approx 1 hour transfer"
        }
      }
    ],
    "durationDays": 3,
    "durationLabel": "3 Days / 2 Nights",
    "travellerTypes": [
      "Pilgrims",
      "Seniors"
    ],
    "accessibilityStatus": "Wheelchair Accessible",
    "childFriendly": true,
    "packageBenefits": [
      "Pilgrimage Guide",
      "Senior Rest Support"
    ],
    "highlights": [
      "Spiritual darshan and guided temple tour in Sanctuary of Our Lady of Lourdes",
      "Experience peaceful aarti assemblies and sacred rituals",
      "Comfortable transfers to all holy sites"
    ],
    "tips": [
      "Carry valid government ID cards for verification.",
      "Traditional decency wear is recommended inside temple corridors.",
      "Avoid carrying electronics inside the inner sanctum."
    ],
    "itinerarySummary": [
      "Day 1: Arrival in Hautes-Pyrénées: Illuminated Viewpoint & Welcome Feast",
      "Day 2: Dawn Guided Expedition of Sanctuary of Our Lady of Lourdes",
      "Day 3: Souvenir Shopping & Onward Departure from Hautes-Pyrénées"
    ],
    "cancellationSummary": "Get a 100% full refund on cancellations made up to 15 days before the departure. Rescheduling options are fully flexible."
  },
  {
    "id": "christianity-santiago-atitl-n-guatemala",
    "title": "Santiago Atitlán Journey",
    "destinationName": "Santiago Atitlán",
    "destinations": "Santiago Atitlán (Sololá, Guatemala)",
    "location": "Sololá, Guatemala",
    "route": [
      "Sololá",
      "Santiago Atitlán"
    ],
    "mainCategory": "Pilgrimage",
    "subCategory": "Christianity",
    "categoryLabel": "Pilgrimage",
    "category": "Pilgrimage",
    "region": "International",
    "image": "/images/tourist-places/pilgrimage/Christianity/Santiago Atitlán, Guatemala.jpg",
    "altText": "Santiago Atitlán christian pilgrimage destination in Sololá, Guatemala",
    "duration": "3 Days / 2 Nights",
    "bestSeason": "October–March",
    "pace": "Easy",
    "travellerType": "Senior Friendly",
    "description": "A thoughtfully planned christian pilgrimage offering comfort, guidance, and a memorable experience.",
    "price": 18100,
    "rating": null,
    "reviewCount": null,
    "seatsLeft": null,
    "recentBookings": null,
    "verified": null,
    "tags": [
      "Pilgrimage",
      "Curated Journey"
    ],
    "seniorFriendly": true,
    "wheelchairAccess": true,
    "vegMeals": true,
    "inclusions": {
      "hotel": true,
      "meals": true,
      "transit": true,
      "guide": true,
      "entryPasses": true,
      "medicalSupport": false,
      "localExperience": false
    },
    "itinerary": [
      {
        "day": 1,
        "title": "Escorted Arrival in Sololá & Santiago Atitlán Gateway",
        "location": "Sololá",
        "overview": "Begin your sacred yatra as you arrive in Sololá. Check into your room at Royal Heritage Villa near Santiago Atitlán and receive a brief orientation before evening prayers.",
        "schedule": {
          "morning": {
            "title": "Arrival & Escorted Transfer in Sololá",
            "description": "Meet our local travel escort at Sololá transit hub. Receive a traditional welcome and transfer to Royal Heritage Villa near Santiago Atitlán."
          },
          "afternoon": {
            "title": "Unpack & Courtyard Leisure at Sololá",
            "description": "Check into your sanitized room, unpack your luggage, and enjoy quiet leisure time exploring hotel gardens and facilities."
          },
          "evening": {
            "title": "Cultural Folk Performance & Dinner at Santiago Atitlán",
            "description": "Attend solemn evening prayer assembly near Santiago Atitlán. Float earthen lamps and soak in peaceful chanting."
          }
        },
        "details": {
          "importantTimings": "Sunrise Tour: 5:45 AM | Museum Hours: 9:30 AM - 5:00 PM",
          "meals": "100% Satvik Pure Veg Breakfast & Temple Prasadam Dinner.",
          "transport": "AC Private Chauffeur Vehicle",
          "walkingLevel": "Easy Paced (Flat temple paths, seating available)",
          "stay": "Royal Heritage Villa near Santiago Atitlán",
          "weather": "Warm tropical sunshine with ocean breeze 27°C",
          "dressCode": "Modest traditional attire (shoulders & knees covered)",
          "packingSuggestions": "Light cotton wear, camera with telephoto lens, sunscreen lotion, photo ID.",
          "accessibility": "Wheelchair ramps & low step entry vehicle",
          "visitorNote": "Escort coordinator will brief you on timing for Santiago Atitlán visit.",
          "travelDuration": "Approx 1 to 2 hours transfer"
        }
      },
      {
        "day": 2,
        "title": "Early Sunrise Visit to Santiago Atitlán",
        "location": "Sololá",
        "overview": "A deep dive into Santiago Atitlán. Tour inner sanctums, historical galleries, and architectural viewpoints accompanied by an expert guide.",
        "schedule": {
          "morning": {
            "title": "Guided Tour of Santiago Atitlán",
            "description": "Early morning entry to Santiago Atitlán. Walk through central courtyards, ancient corridors, and historic halls."
          },
          "afternoon": {
            "title": "Museum Treasures & Heritage Galleries near Sololá",
            "description": "Taste authentic local regional cuisine. Visit local artisan markets specializing in handcrafts native to Guatemala."
          },
          "evening": {
            "title": "Sunset Viewpoint & Cultural Evening",
            "description": "Head to the highest scenic viewpoint overlooking Santiago Atitlán. Capture sunset photographs followed by evening entertainment."
          }
        },
        "details": {
          "importantTimings": "Sunrise Tour: 5:45 AM | Museum Hours: 9:30 AM - 5:00 PM",
          "meals": "Welcome Tender Coconut & Traditional Satvik Thali.",
          "transport": "AC Private Sedan / SUV",
          "walkingLevel": "Moderate (Historical walkways & corridors)",
          "stay": "Royal Heritage Villa near Santiago Atitlán",
          "weather": "Warm tropical sunshine with ocean breeze 27°C",
          "dressCode": "Traditional attire",
          "packingSuggestions": "Comfortable walking socks, power bank, shoulder shawl, daypack.",
          "accessibility": "Assistive ramps available at main portals",
          "visitorNote": "Follow local heritage guidelines inside Santiago Atitlán.",
          "travelDuration": "Full day sightseeing approx 5 to 6 hours"
        }
      },
      {
        "day": 3,
        "title": "Souvenir Shopping & Onward Departure from Sololá",
        "location": "Sololá",
        "overview": "Conclude your trip to Santiago Atitlán with morning shopping for local delicacies and souvenirs, followed by departure transfer.",
        "schedule": {
          "morning": {
            "title": "Handicrafts & Sweet Market Visit",
            "description": "Visit trusted local bazaar stalls to buy regional spices, handmade crafts, and traditional sweets of Sololá."
          },
          "afternoon": {
            "title": "Hotel Checkout & Farewell Lunch",
            "description": "Return to hotel for packing and checkout. Enjoy a farewell lunch before your transfer."
          },
          "evening": {
            "title": "Outbound Departure Transfer",
            "description": "Chauffeur drop to Sololá Airport or Railway Station for your onward journey home."
          }
        },
        "details": {
          "importantTimings": "Checkout: 12:00 PM | Transfer: As per flight/train",
          "meals": "Breakfast & Farewell Lunch included.",
          "transport": "AC Private Transfer Vehicle",
          "walkingLevel": "Easy Paced",
          "stay": "N/A (Day of departure)",
          "weather": "Warm tropical sunshine with ocean breeze 27°C",
          "dressCode": "Comfortable travel wear",
          "packingSuggestions": "Check-in luggage packed, photo ID ready.",
          "accessibility": "Accessible vehicles",
          "visitorNote": "Arrive at Sololá station/airport 2 hours prior to departure.",
          "travelDuration": "Approx 1 hour transfer"
        }
      }
    ],
    "durationDays": 3,
    "durationLabel": "3 Days / 2 Nights",
    "travellerTypes": [
      "Pilgrims",
      "Seniors"
    ],
    "accessibilityStatus": "Wheelchair Accessible",
    "childFriendly": true,
    "packageBenefits": [
      "Pilgrimage Guide",
      "Senior Rest Support"
    ],
    "highlights": [
      "Spiritual darshan and guided temple tour in Santiago Atitlán",
      "Experience peaceful aarti assemblies and sacred rituals",
      "Comfortable transfers to all holy sites"
    ],
    "tips": [
      "Carry valid government ID cards for verification.",
      "Traditional decency wear is recommended inside temple corridors.",
      "Avoid carrying electronics inside the inner sanctum."
    ],
    "itinerarySummary": [
      "Day 1: Escorted Arrival in Sololá & Santiago Atitlán Gateway",
      "Day 2: Early Sunrise Visit to Santiago Atitlán",
      "Day 3: Souvenir Shopping & Onward Departure from Sololá"
    ],
    "cancellationSummary": "Get a 100% full refund on cancellations made up to 15 days before the departure. Rescheduling options are fully flexible."
  },
  {
    "id": "christianity-santu-rio-de-nossa-senhora-aparecida-brazil",
    "title": "Santuário de Nossa Senhora Aparecida Journey",
    "destinationName": "Santuário de Nossa Senhora Aparecida",
    "destinations": "Santuário de Nossa Senhora Aparecida (São Paulo, Brazil)",
    "location": "São Paulo, Brazil",
    "route": [
      "São Paulo",
      "Santuário de Nossa Senhora Aparecida"
    ],
    "mainCategory": "Pilgrimage",
    "subCategory": "Christianity",
    "categoryLabel": "Pilgrimage",
    "category": "Pilgrimage",
    "region": "International",
    "image": "/images/tourist-places/pilgrimage/Christianity/Santuário de Nossa Senhora Aparecida, Brazil.jpg",
    "altText": "Santuário de Nossa Senhora Aparecida christian pilgrimage destination in São Paulo, Brazil",
    "duration": "3 Days / 2 Nights",
    "bestSeason": "October–March",
    "pace": "Easy",
    "travellerType": "Senior Friendly",
    "description": "A thoughtfully planned christian pilgrimage offering comfort, guidance, and a memorable experience.",
    "price": 19300,
    "rating": null,
    "reviewCount": null,
    "seatsLeft": null,
    "recentBookings": null,
    "verified": null,
    "tags": [
      "Pilgrimage",
      "Curated Journey"
    ],
    "seniorFriendly": true,
    "wheelchairAccess": true,
    "vegMeals": true,
    "inclusions": {
      "hotel": true,
      "meals": true,
      "transit": true,
      "guide": true,
      "entryPasses": true,
      "medicalSupport": false,
      "localExperience": false
    },
    "itinerary": [
      {
        "day": 1,
        "title": "Arrival in São Paulo: Riverside Aarti & Evening Tea",
        "location": "São Paulo",
        "overview": "Begin your sacred yatra as you arrive in São Paulo. Check into your room at Luxury Eco Lodge in São Paulo and receive a brief orientation before evening prayers.",
        "schedule": {
          "morning": {
            "title": "Arrival & Escorted Transfer in São Paulo",
            "description": "Meet our local travel escort at São Paulo transit hub. Receive a traditional welcome and transfer to Luxury Eco Lodge in São Paulo."
          },
          "afternoon": {
            "title": "Unpack & Courtyard Leisure at São Paulo",
            "description": "Check into your sanitized room, unpack your luggage, and enjoy quiet leisure time exploring hotel gardens and facilities."
          },
          "evening": {
            "title": "Riverside Aarti & Evening Tea at Santuário de Nossa Senhora Aparecida",
            "description": "Attend solemn evening prayer assembly near Santuário de Nossa Senhora Aparecida. Float earthen lamps and soak in peaceful chanting."
          }
        },
        "details": {
          "importantTimings": "Guided Walk: 9:00 AM | Sunset Point Departure: 5:15 PM",
          "meals": "100% Satvik Pure Veg Breakfast & Temple Prasadam Dinner.",
          "transport": "AC Private Chauffeur Vehicle",
          "walkingLevel": "Easy Paced (Flat temple paths, seating available)",
          "stay": "Luxury Eco Lodge in São Paulo",
          "weather": "Crisp mountain climate, clear blue skies 19°C",
          "dressCode": "Modest traditional attire (shoulders & knees covered)",
          "packingSuggestions": "Comfortable walking socks, power bank, shoulder shawl, daypack.",
          "accessibility": "Wheelchair ramps & low step entry vehicle",
          "visitorNote": "Escort coordinator will brief you on timing for Santuário de Nossa Senhora Aparecida visit.",
          "travelDuration": "Approx 1 to 2 hours transfer"
        }
      },
      {
        "day": 2,
        "title": "Exclusive Morning Tour of Santuário de Nossa Senhora Aparecida",
        "location": "São Paulo",
        "overview": "A deep dive into Santuário de Nossa Senhora Aparecida. Tour inner sanctums, historical galleries, and architectural viewpoints accompanied by an expert guide.",
        "schedule": {
          "morning": {
            "title": "Guided Tour of Santuário de Nossa Senhora Aparecida",
            "description": "Early morning entry to Santuário de Nossa Senhora Aparecida. Walk through central courtyards, ancient corridors, and historic halls."
          },
          "afternoon": {
            "title": "Boat Ride & Riverfront Exploration near São Paulo",
            "description": "Taste authentic local regional cuisine. Visit local artisan markets specializing in handcrafts native to Brazil."
          },
          "evening": {
            "title": "Sunset Viewpoint & Cultural Evening",
            "description": "Head to the highest scenic viewpoint overlooking Santuário de Nossa Senhora Aparecida. Capture sunset photographs followed by evening entertainment."
          }
        },
        "details": {
          "importantTimings": "Guided Walk: 9:00 AM | Sunset Point Departure: 5:15 PM",
          "meals": "Welcome Tender Coconut & Traditional Satvik Thali.",
          "transport": "AC Private Sedan / SUV",
          "walkingLevel": "Moderate (Historical walkways & corridors)",
          "stay": "Luxury Eco Lodge in São Paulo",
          "weather": "Crisp mountain climate, clear blue skies 19°C",
          "dressCode": "Traditional attire",
          "packingSuggestions": "Breathable linen wear, sunglasses, small currency notes for local shops.",
          "accessibility": "Assistive ramps available at main portals",
          "visitorNote": "Follow local heritage guidelines inside Santuário de Nossa Senhora Aparecida.",
          "travelDuration": "Full day sightseeing approx 5 to 6 hours"
        }
      },
      {
        "day": 3,
        "title": "Souvenir Shopping & Onward Departure from São Paulo",
        "location": "São Paulo",
        "overview": "Conclude your trip to Santuário de Nossa Senhora Aparecida with morning shopping for local delicacies and souvenirs, followed by departure transfer.",
        "schedule": {
          "morning": {
            "title": "Handicrafts & Sweet Market Visit",
            "description": "Visit trusted local bazaar stalls to buy regional spices, handmade crafts, and traditional sweets of São Paulo."
          },
          "afternoon": {
            "title": "Hotel Checkout & Farewell Lunch",
            "description": "Return to hotel for packing and checkout. Enjoy a farewell lunch before your transfer."
          },
          "evening": {
            "title": "Outbound Departure Transfer",
            "description": "Chauffeur drop to São Paulo Airport or Railway Station for your onward journey home."
          }
        },
        "details": {
          "importantTimings": "Checkout: 12:00 PM | Transfer: As per flight/train",
          "meals": "Breakfast & Farewell Lunch included.",
          "transport": "AC Private Transfer Vehicle",
          "walkingLevel": "Easy Paced",
          "stay": "N/A (Day of departure)",
          "weather": "Crisp mountain climate, clear blue skies 19°C",
          "dressCode": "Comfortable travel wear",
          "packingSuggestions": "Check-in luggage packed, photo ID ready.",
          "accessibility": "Accessible vehicles",
          "visitorNote": "Arrive at São Paulo station/airport 2 hours prior to departure.",
          "travelDuration": "Approx 1 hour transfer"
        }
      }
    ],
    "durationDays": 3,
    "durationLabel": "3 Days / 2 Nights",
    "travellerTypes": [
      "Pilgrims",
      "Seniors"
    ],
    "accessibilityStatus": "Wheelchair Accessible",
    "childFriendly": true,
    "packageBenefits": [
      "Pilgrimage Guide",
      "Senior Rest Support"
    ],
    "highlights": [
      "Spiritual darshan and guided temple tour in Santuário de Nossa Senhora Aparecida",
      "Experience peaceful aarti assemblies and sacred rituals",
      "Comfortable transfers to all holy sites"
    ],
    "tips": [
      "Carry valid government ID cards for verification.",
      "Traditional decency wear is recommended inside temple corridors.",
      "Avoid carrying electronics inside the inner sanctum."
    ],
    "itinerarySummary": [
      "Day 1: Arrival in São Paulo: Riverside Aarti & Evening Tea",
      "Day 2: Exclusive Morning Tour of Santuário de Nossa Senhora Aparecida",
      "Day 3: Souvenir Shopping & Onward Departure from São Paulo"
    ],
    "cancellationSummary": "Get a 100% full refund on cancellations made up to 15 days before the departure. Rescheduling options are fully flexible."
  },
  {
    "id": "christianity-vatican-city-italy",
    "title": "Vatican City Journey",
    "destinationName": "Vatican City",
    "destinations": "Vatican City (Vatican City, Italy)",
    "location": "Vatican City, Italy",
    "route": [
      "Vatican City",
      "Vatican City"
    ],
    "mainCategory": "Pilgrimage",
    "subCategory": "Christianity",
    "categoryLabel": "Pilgrimage",
    "category": "Pilgrimage",
    "region": "International",
    "image": "/images/tourist-places/pilgrimage/Christianity/Vatican City, Italy.jpg",
    "altText": "Vatican City christian pilgrimage destination in Vatican City, Italy",
    "duration": "3 Days / 2 Nights",
    "bestSeason": "October–March",
    "pace": "Easy",
    "travellerType": "Senior Friendly",
    "description": "A thoughtfully planned christian pilgrimage offering comfort, guidance, and a memorable experience.",
    "price": 20500,
    "rating": null,
    "reviewCount": null,
    "seatsLeft": null,
    "recentBookings": null,
    "verified": null,
    "tags": [
      "Pilgrimage",
      "Curated Journey"
    ],
    "seniorFriendly": true,
    "wheelchairAccess": true,
    "vegMeals": true,
    "inclusions": {
      "hotel": true,
      "meals": true,
      "transit": true,
      "guide": true,
      "entryPasses": true,
      "medicalSupport": false,
      "localExperience": false
    },
    "itinerary": [
      {
        "day": 1,
        "title": "Scenic Drive to Vatican City & Vatican City Gateway",
        "location": "Vatican City",
        "overview": "Begin your sacred yatra as you arrive in Vatican City. Check into your room at Grand Riverfront Resort near Vatican City and receive a brief orientation before evening prayers.",
        "schedule": {
          "morning": {
            "title": "Arrival & Escorted Transfer in Vatican City",
            "description": "Meet our local travel escort at Vatican City transit hub. Receive a traditional welcome and transfer to Grand Riverfront Resort near Vatican City."
          },
          "afternoon": {
            "title": "Unpack & Courtyard Leisure at Vatican City",
            "description": "Check into your sanitized room, unpack your luggage, and enjoy quiet leisure time exploring hotel gardens and facilities."
          },
          "evening": {
            "title": "Skyline Sunset & Regional Delicacies at Vatican City",
            "description": "Attend solemn evening prayer assembly near Vatican City. Float earthen lamps and soak in peaceful chanting."
          }
        },
        "details": {
          "importantTimings": "Boat Departure: 6:00 AM | Heritage Show: 7:00 PM",
          "meals": "100% Satvik Pure Veg Breakfast & Temple Prasadam Dinner.",
          "transport": "AC Private Chauffeur Vehicle",
          "walkingLevel": "Easy Paced (Flat temple paths, seating available)",
          "stay": "Grand Riverfront Resort near Vatican City",
          "weather": "Refreshing river mist with mild sun 23°C",
          "dressCode": "Modest traditional attire (shoulders & knees covered)",
          "packingSuggestions": "Breathable linen wear, sunglasses, small currency notes for local shops.",
          "accessibility": "Wheelchair ramps & low step entry vehicle",
          "visitorNote": "Escort coordinator will brief you on timing for Vatican City visit.",
          "travelDuration": "Approx 1 to 2 hours transfer"
        }
      },
      {
        "day": 2,
        "title": "VIP Access to Vatican City",
        "location": "Vatican City",
        "overview": "A deep dive into Vatican City. Tour inner sanctums, historical galleries, and architectural viewpoints accompanied by an expert guide.",
        "schedule": {
          "morning": {
            "title": "Guided Tour of Vatican City",
            "description": "Early morning entry to Vatican City. Walk through central courtyards, ancient corridors, and historic halls."
          },
          "afternoon": {
            "title": "Artisan Handloom Workshop & Souvenirs near Vatican City",
            "description": "Taste authentic local regional cuisine. Visit local artisan markets specializing in handcrafts native to Italy."
          },
          "evening": {
            "title": "Sunset Viewpoint & Cultural Evening",
            "description": "Head to the highest scenic viewpoint overlooking Vatican City. Capture sunset photographs followed by evening entertainment."
          }
        },
        "details": {
          "importantTimings": "Boat Departure: 6:00 AM | Heritage Show: 7:00 PM",
          "meals": "Welcome Tender Coconut & Traditional Satvik Thali.",
          "transport": "AC Private Sedan / SUV",
          "walkingLevel": "Moderate (Historical walkways & corridors)",
          "stay": "Grand Riverfront Resort near Vatican City",
          "weather": "Refreshing river mist with mild sun 23°C",
          "dressCode": "Traditional attire",
          "packingSuggestions": "Sunhat, sunglasses, comfortable walking shoes, light jacket, camera.",
          "accessibility": "Assistive ramps available at main portals",
          "visitorNote": "Follow local heritage guidelines inside Vatican City.",
          "travelDuration": "Full day sightseeing approx 5 to 6 hours"
        }
      },
      {
        "day": 3,
        "title": "Souvenir Shopping & Onward Departure from Vatican City",
        "location": "Vatican City",
        "overview": "Conclude your trip to Vatican City with morning shopping for local delicacies and souvenirs, followed by departure transfer.",
        "schedule": {
          "morning": {
            "title": "Handicrafts & Sweet Market Visit",
            "description": "Visit trusted local bazaar stalls to buy regional spices, handmade crafts, and traditional sweets of Vatican City."
          },
          "afternoon": {
            "title": "Hotel Checkout & Farewell Lunch",
            "description": "Return to hotel for packing and checkout. Enjoy a farewell lunch before your transfer."
          },
          "evening": {
            "title": "Outbound Departure Transfer",
            "description": "Chauffeur drop to Vatican City Airport or Railway Station for your onward journey home."
          }
        },
        "details": {
          "importantTimings": "Checkout: 12:00 PM | Transfer: As per flight/train",
          "meals": "Breakfast & Farewell Lunch included.",
          "transport": "AC Private Transfer Vehicle",
          "walkingLevel": "Easy Paced",
          "stay": "N/A (Day of departure)",
          "weather": "Refreshing river mist with mild sun 23°C",
          "dressCode": "Comfortable travel wear",
          "packingSuggestions": "Check-in luggage packed, photo ID ready.",
          "accessibility": "Accessible vehicles",
          "visitorNote": "Arrive at Vatican City station/airport 2 hours prior to departure.",
          "travelDuration": "Approx 1 hour transfer"
        }
      }
    ],
    "durationDays": 3,
    "durationLabel": "3 Days / 2 Nights",
    "travellerTypes": [
      "Pilgrims",
      "Seniors"
    ],
    "accessibilityStatus": "Wheelchair Accessible",
    "childFriendly": true,
    "packageBenefits": [
      "Pilgrimage Guide",
      "Senior Rest Support"
    ],
    "highlights": [
      "Spiritual darshan and guided temple tour in Vatican City",
      "Experience peaceful aarti assemblies and sacred rituals",
      "Comfortable transfers to all holy sites"
    ],
    "tips": [
      "Carry valid government ID cards for verification.",
      "Traditional decency wear is recommended inside temple corridors.",
      "Avoid carrying electronics inside the inner sanctum."
    ],
    "itinerarySummary": [
      "Day 1: Scenic Drive to Vatican City & Vatican City Gateway",
      "Day 2: VIP Access to Vatican City",
      "Day 3: Souvenir Shopping & Onward Departure from Vatican City"
    ],
    "cancellationSummary": "Get a 100% full refund on cancellations made up to 15 days before the departure. Rescheduling options are fully flexible."
  },
  {
    "id": "islam-ajmer-sharif-dargah-india",
    "title": "Ajmer Sharif Dargah Journey",
    "destinationName": "Ajmer Sharif Dargah",
    "destinations": "Ajmer Sharif Dargah (Ajmer, Rajasthan, India)",
    "location": "Ajmer, Rajasthan, India",
    "route": [
      "Ajmer",
      "Ajmer Sharif Dargah"
    ],
    "mainCategory": "Pilgrimage",
    "subCategory": "Islam",
    "categoryLabel": "Pilgrimage",
    "category": "Pilgrimage",
    "region": "North India",
    "image": "/images/tourist-places/pilgrimage/Islam/Ajmer Sharif Dargah, India.jpg",
    "altText": "Ajmer Sharif Dargah islamic pilgrimage destination in Ajmer, Rajasthan, India",
    "duration": "3 Days / 2 Nights",
    "bestSeason": "October–March",
    "pace": "Easy",
    "travellerType": "Senior Friendly",
    "description": "A thoughtfully planned islamic pilgrimage offering comfort, guidance, and a memorable experience.",
    "price": 20500,
    "rating": null,
    "reviewCount": null,
    "seatsLeft": null,
    "recentBookings": null,
    "verified": null,
    "tags": [
      "Pilgrimage",
      "Curated Journey"
    ],
    "seniorFriendly": true,
    "wheelchairAccess": true,
    "vegMeals": true,
    "inclusions": {
      "hotel": true,
      "meals": true,
      "transit": true,
      "guide": true,
      "entryPasses": true,
      "medicalSupport": false,
      "localExperience": false
    },
    "itinerary": [
      {
        "day": 1,
        "title": "Arrival in Ajmer: Candlelight Dinner & Courtyard Music",
        "location": "Ajmer",
        "overview": "Begin your sacred yatra as you arrive in Ajmer. Check into your room at Vedic Pilgrim Ashram Stay in Ajmer and receive a brief orientation before evening prayers.",
        "schedule": {
          "morning": {
            "title": "Arrival & Escorted Transfer in Ajmer",
            "description": "Meet our local travel escort at Ajmer transit hub. Receive a traditional welcome and transfer to Vedic Pilgrim Ashram Stay in Ajmer."
          },
          "afternoon": {
            "title": "Unpack & Courtyard Leisure at Ajmer",
            "description": "Check into your sanitized room, unpack your luggage, and enjoy quiet leisure time exploring hotel gardens and facilities."
          },
          "evening": {
            "title": "Candlelight Dinner & Courtyard Music at Ajmer Sharif Dargah",
            "description": "Attend solemn evening prayer assembly near Ajmer Sharif Dargah. Float earthen lamps and soak in peaceful chanting."
          }
        },
        "details": {
          "importantTimings": "Gate Entry: 8:00 AM | Evening Light Show: 6:30 PM",
          "meals": "100% Satvik Pure Veg Breakfast & Temple Prasadam Dinner.",
          "transport": "AC Private Chauffeur Vehicle",
          "walkingLevel": "Easy Paced (Flat temple paths, seating available)",
          "stay": "Vedic Pilgrim Ashram Stay in Ajmer",
          "weather": "Pleasant breeze with sunny afternoon 24°C",
          "dressCode": "Modest traditional attire (shoulders & knees covered)",
          "packingSuggestions": "Sunhat, sunglasses, comfortable walking shoes, light jacket, camera.",
          "accessibility": "Wheelchair ramps & low step entry vehicle",
          "visitorNote": "Escort coordinator will brief you on timing for Ajmer Sharif Dargah visit.",
          "travelDuration": "Approx 1 to 2 hours transfer"
        }
      },
      {
        "day": 2,
        "title": "Breakfast & Exploration of Ajmer Sharif Dargah",
        "location": "Ajmer",
        "overview": "A deep dive into Ajmer Sharif Dargah. Tour inner sanctums, historical galleries, and architectural viewpoints accompanied by an expert guide.",
        "schedule": {
          "morning": {
            "title": "Guided Tour of Ajmer Sharif Dargah",
            "description": "Early morning entry to Ajmer Sharif Dargah. Walk through central courtyards, ancient corridors, and historic halls."
          },
          "afternoon": {
            "title": "Scenic Valley Drive & Photo Stops near Ajmer",
            "description": "Taste authentic local regional cuisine. Visit local artisan markets specializing in handcrafts native to Rajasthan, India."
          },
          "evening": {
            "title": "Sunset Viewpoint & Cultural Evening",
            "description": "Head to the highest scenic viewpoint overlooking Ajmer Sharif Dargah. Capture sunset photographs followed by evening entertainment."
          }
        },
        "details": {
          "importantTimings": "Gate Entry: 8:00 AM | Evening Light Show: 6:30 PM",
          "meals": "Welcome Tender Coconut & Traditional Satvik Thali.",
          "transport": "AC Private Sedan / SUV",
          "walkingLevel": "Moderate (Historical walkways & corridors)",
          "stay": "Vedic Pilgrim Ashram Stay in Ajmer",
          "weather": "Pleasant breeze with sunny afternoon 24°C",
          "dressCode": "Traditional attire",
          "packingSuggestions": "Traditional headscarf, slip-on shoes, reusable water bottle, dry bag.",
          "accessibility": "Assistive ramps available at main portals",
          "visitorNote": "Follow local heritage guidelines inside Ajmer Sharif Dargah.",
          "travelDuration": "Full day sightseeing approx 5 to 6 hours"
        }
      },
      {
        "day": 3,
        "title": "Souvenir Shopping & Onward Departure from Ajmer",
        "location": "Ajmer",
        "overview": "Conclude your trip to Ajmer Sharif Dargah with morning shopping for local delicacies and souvenirs, followed by departure transfer.",
        "schedule": {
          "morning": {
            "title": "Handicrafts & Sweet Market Visit",
            "description": "Visit trusted local bazaar stalls to buy regional spices, handmade crafts, and traditional sweets of Ajmer."
          },
          "afternoon": {
            "title": "Hotel Checkout & Farewell Lunch",
            "description": "Return to hotel for packing and checkout. Enjoy a farewell lunch before your transfer."
          },
          "evening": {
            "title": "Outbound Departure Transfer",
            "description": "Chauffeur drop to Ajmer Airport or Railway Station for your onward journey home."
          }
        },
        "details": {
          "importantTimings": "Checkout: 12:00 PM | Transfer: As per flight/train",
          "meals": "Breakfast & Farewell Lunch included.",
          "transport": "AC Private Transfer Vehicle",
          "walkingLevel": "Easy Paced",
          "stay": "N/A (Day of departure)",
          "weather": "Pleasant breeze with sunny afternoon 24°C",
          "dressCode": "Comfortable travel wear",
          "packingSuggestions": "Check-in luggage packed, photo ID ready.",
          "accessibility": "Accessible vehicles",
          "visitorNote": "Arrive at Ajmer station/airport 2 hours prior to departure.",
          "travelDuration": "Approx 1 hour transfer"
        }
      }
    ],
    "durationDays": 3,
    "durationLabel": "3 Days / 2 Nights",
    "travellerTypes": [
      "Pilgrims",
      "Seniors"
    ],
    "accessibilityStatus": "Wheelchair Accessible",
    "childFriendly": true,
    "packageBenefits": [
      "Pilgrimage Guide",
      "Senior Rest Support"
    ],
    "highlights": [
      "Spiritual darshan and guided temple tour in Ajmer Sharif Dargah",
      "Experience peaceful aarti assemblies and sacred rituals",
      "Comfortable transfers to all holy sites"
    ],
    "tips": [
      "Carry valid government ID cards for verification.",
      "Traditional decency wear is recommended inside temple corridors.",
      "Avoid carrying electronics inside the inner sanctum."
    ],
    "itinerarySummary": [
      "Day 1: Arrival in Ajmer: Candlelight Dinner & Courtyard Music",
      "Day 2: Breakfast & Exploration of Ajmer Sharif Dargah",
      "Day 3: Souvenir Shopping & Onward Departure from Ajmer"
    ],
    "cancellationSummary": "Get a 100% full refund on cancellations made up to 15 days before the departure. Rescheduling options are fully flexible."
  },
  {
    "id": "islam-al-aqsa-mosque-jerusalem-israel",
    "title": "Al Aqsa Mosque, Jerusalem Journey",
    "destinationName": "Al Aqsa Mosque, Jerusalem",
    "destinations": "Al Aqsa Mosque, Jerusalem (Jerusalem, Israel)",
    "location": "Jerusalem, Israel",
    "route": [
      "Jerusalem",
      "Al Aqsa Mosque, Jerusalem"
    ],
    "mainCategory": "Pilgrimage",
    "subCategory": "Islam",
    "categoryLabel": "Pilgrimage",
    "category": "Pilgrimage",
    "region": "International",
    "image": "/images/tourist-places/pilgrimage/Islam/Al-Aqsa Mosque, Jerusalem, Israel.jpg",
    "altText": "Al Aqsa Mosque, Jerusalem islamic pilgrimage destination in Jerusalem, Israel",
    "duration": "3 Days / 2 Nights",
    "bestSeason": "October–March",
    "pace": "Easy",
    "travellerType": "Senior Friendly",
    "description": "A thoughtfully planned islamic pilgrimage offering comfort, guidance, and a memorable experience.",
    "price": 21700,
    "rating": null,
    "reviewCount": null,
    "seatsLeft": null,
    "recentBookings": null,
    "verified": null,
    "tags": [
      "Pilgrimage",
      "Curated Journey"
    ],
    "seniorFriendly": true,
    "wheelchairAccess": true,
    "vegMeals": true,
    "inclusions": {
      "hotel": true,
      "meals": true,
      "transit": true,
      "guide": true,
      "entryPasses": true,
      "medicalSupport": false,
      "localExperience": false
    },
    "itinerary": [
      {
        "day": 1,
        "title": "Beginning Your Journey in Jerusalem & Al Aqsa Mosque, Jerusalem Gateway",
        "location": "Jerusalem",
        "overview": "Begin your sacred yatra as you arrive in Jerusalem. Check into your room at Boutique Star Hotel in Jerusalem and receive a brief orientation before evening prayers.",
        "schedule": {
          "morning": {
            "title": "Arrival & Escorted Transfer in Jerusalem",
            "description": "Meet our local travel escort at Jerusalem transit hub. Receive a traditional welcome and transfer to Boutique Star Hotel in Jerusalem."
          },
          "afternoon": {
            "title": "Unpack & Courtyard Leisure at Jerusalem",
            "description": "Check into your sanitized room, unpack your luggage, and enjoy quiet leisure time exploring hotel gardens and facilities."
          },
          "evening": {
            "title": "Heritage Bazaar Promenade at Al Aqsa Mosque, Jerusalem",
            "description": "Attend solemn evening prayer assembly near Al Aqsa Mosque, Jerusalem. Float earthen lamps and soak in peaceful chanting."
          }
        },
        "details": {
          "importantTimings": "Sanctum VIP Slot: 6:30 AM | Bazaar Hours: 4:00 PM - 8:30 PM",
          "meals": "100% Satvik Pure Veg Breakfast & Temple Prasadam Dinner.",
          "transport": "AC Private Chauffeur Vehicle",
          "walkingLevel": "Easy Paced (Flat temple paths, seating available)",
          "stay": "Boutique Star Hotel in Jerusalem",
          "weather": "Cool crisp morning fog clearing to bright 22°C",
          "dressCode": "Modest traditional attire (shoulders & knees covered)",
          "packingSuggestions": "Traditional headscarf, slip-on shoes, reusable water bottle, dry bag.",
          "accessibility": "Wheelchair ramps & low step entry vehicle",
          "visitorNote": "Escort coordinator will brief you on timing for Al Aqsa Mosque, Jerusalem visit.",
          "travelDuration": "Approx 1 to 2 hours transfer"
        }
      },
      {
        "day": 2,
        "title": "Panoramic Discovery of Al Aqsa Mosque, Jerusalem",
        "location": "Jerusalem",
        "overview": "A deep dive into Al Aqsa Mosque, Jerusalem. Tour inner sanctums, historical galleries, and architectural viewpoints accompanied by an expert guide.",
        "schedule": {
          "morning": {
            "title": "Guided Tour of Al Aqsa Mosque, Jerusalem",
            "description": "Early morning entry to Al Aqsa Mosque, Jerusalem. Walk through central courtyards, ancient corridors, and historic halls."
          },
          "afternoon": {
            "title": "Sacred Shrine Darshan & Temple Complex near Jerusalem",
            "description": "Taste authentic local regional cuisine. Visit local artisan markets specializing in handcrafts native to Israel."
          },
          "evening": {
            "title": "Sunset Viewpoint & Cultural Evening",
            "description": "Head to the highest scenic viewpoint overlooking Al Aqsa Mosque, Jerusalem. Capture sunset photographs followed by evening entertainment."
          }
        },
        "details": {
          "importantTimings": "Sanctum VIP Slot: 6:30 AM | Bazaar Hours: 4:00 PM - 8:30 PM",
          "meals": "Welcome Tender Coconut & Traditional Satvik Thali.",
          "transport": "AC Private Sedan / SUV",
          "walkingLevel": "Moderate (Historical walkways & corridors)",
          "stay": "Boutique Star Hotel in Jerusalem",
          "weather": "Cool crisp morning fog clearing to bright 22°C",
          "dressCode": "Traditional attire",
          "packingSuggestions": "Light cotton wear, camera with telephoto lens, sunscreen lotion, photo ID.",
          "accessibility": "Assistive ramps available at main portals",
          "visitorNote": "Follow local heritage guidelines inside Al Aqsa Mosque, Jerusalem.",
          "travelDuration": "Full day sightseeing approx 5 to 6 hours"
        }
      },
      {
        "day": 3,
        "title": "Souvenir Shopping & Onward Departure from Jerusalem",
        "location": "Jerusalem",
        "overview": "Conclude your trip to Al Aqsa Mosque, Jerusalem with morning shopping for local delicacies and souvenirs, followed by departure transfer.",
        "schedule": {
          "morning": {
            "title": "Handicrafts & Sweet Market Visit",
            "description": "Visit trusted local bazaar stalls to buy regional spices, handmade crafts, and traditional sweets of Jerusalem."
          },
          "afternoon": {
            "title": "Hotel Checkout & Farewell Lunch",
            "description": "Return to hotel for packing and checkout. Enjoy a farewell lunch before your transfer."
          },
          "evening": {
            "title": "Outbound Departure Transfer",
            "description": "Chauffeur drop to Jerusalem Airport or Railway Station for your onward journey home."
          }
        },
        "details": {
          "importantTimings": "Checkout: 12:00 PM | Transfer: As per flight/train",
          "meals": "Breakfast & Farewell Lunch included.",
          "transport": "AC Private Transfer Vehicle",
          "walkingLevel": "Easy Paced",
          "stay": "N/A (Day of departure)",
          "weather": "Cool crisp morning fog clearing to bright 22°C",
          "dressCode": "Comfortable travel wear",
          "packingSuggestions": "Check-in luggage packed, photo ID ready.",
          "accessibility": "Accessible vehicles",
          "visitorNote": "Arrive at Jerusalem station/airport 2 hours prior to departure.",
          "travelDuration": "Approx 1 hour transfer"
        }
      }
    ],
    "durationDays": 3,
    "durationLabel": "3 Days / 2 Nights",
    "travellerTypes": [
      "Pilgrims",
      "Seniors"
    ],
    "accessibilityStatus": "Wheelchair Accessible",
    "childFriendly": true,
    "packageBenefits": [
      "Pilgrimage Guide",
      "Senior Rest Support"
    ],
    "highlights": [
      "Spiritual darshan and guided temple tour in Al Aqsa Mosque, Jerusalem",
      "Experience peaceful aarti assemblies and sacred rituals",
      "Comfortable transfers to all holy sites"
    ],
    "tips": [
      "Carry valid government ID cards for verification.",
      "Traditional decency wear is recommended inside temple corridors.",
      "Avoid carrying electronics inside the inner sanctum."
    ],
    "itinerarySummary": [
      "Day 1: Beginning Your Journey in Jerusalem & Al Aqsa Mosque, Jerusalem Gateway",
      "Day 2: Panoramic Discovery of Al Aqsa Mosque, Jerusalem",
      "Day 3: Souvenir Shopping & Onward Departure from Jerusalem"
    ],
    "cancellationSummary": "Get a 100% full refund on cancellations made up to 15 days before the departure. Rescheduling options are fully flexible."
  },
  {
    "id": "islam-al-azhar-mosque-cairo-egypt",
    "title": "Al Azhar Mosque, Cairo Journey",
    "destinationName": "Al Azhar Mosque, Cairo",
    "destinations": "Al Azhar Mosque, Cairo (Cairo, Egypt)",
    "location": "Cairo, Egypt",
    "route": [
      "Cairo",
      "Al Azhar Mosque, Cairo"
    ],
    "mainCategory": "Pilgrimage",
    "subCategory": "Islam",
    "categoryLabel": "Pilgrimage",
    "category": "Pilgrimage",
    "region": "International",
    "image": "/images/tourist-places/pilgrimage/Islam/Al-Azhar Mosque, Cairo, Egypt.jpg",
    "altText": "Al Azhar Mosque, Cairo islamic pilgrimage destination in Cairo, Egypt",
    "duration": "3 Days / 2 Nights",
    "bestSeason": "October–March",
    "pace": "Easy",
    "travellerType": "Senior Friendly",
    "description": "A thoughtfully planned islamic pilgrimage offering comfort, guidance, and a memorable experience.",
    "price": 22900,
    "rating": null,
    "reviewCount": null,
    "seatsLeft": null,
    "recentBookings": null,
    "verified": null,
    "tags": [
      "Pilgrimage",
      "Curated Journey"
    ],
    "seniorFriendly": true,
    "wheelchairAccess": true,
    "vegMeals": true,
    "inclusions": {
      "hotel": true,
      "meals": true,
      "transit": true,
      "guide": true,
      "entryPasses": true,
      "medicalSupport": false,
      "localExperience": false
    },
    "itinerary": [
      {
        "day": 1,
        "title": "Arrival in Cairo: Panoramic Terrace Lounge Session",
        "location": "Cairo",
        "overview": "Begin your sacred yatra as you arrive in Cairo. Check into your room at Hilltop Panorama Resort near Al Azhar Mosque, Cairo and receive a brief orientation before evening prayers.",
        "schedule": {
          "morning": {
            "title": "Arrival & Escorted Transfer in Cairo",
            "description": "Meet our local travel escort at Cairo transit hub. Receive a traditional welcome and transfer to Hilltop Panorama Resort near Al Azhar Mosque, Cairo."
          },
          "afternoon": {
            "title": "Unpack & Courtyard Leisure at Cairo",
            "description": "Check into your sanitized room, unpack your luggage, and enjoy quiet leisure time exploring hotel gardens and facilities."
          },
          "evening": {
            "title": "Panoramic Terrace Lounge Session at Al Azhar Mosque, Cairo",
            "description": "Attend solemn evening prayer assembly near Al Azhar Mosque, Cairo. Float earthen lamps and soak in peaceful chanting."
          }
        },
        "details": {
          "importantTimings": "Sunrise Tour: 5:45 AM | Museum Hours: 9:30 AM - 5:00 PM",
          "meals": "100% Satvik Pure Veg Breakfast & Temple Prasadam Dinner.",
          "transport": "AC Private Chauffeur Vehicle",
          "walkingLevel": "Easy Paced (Flat temple paths, seating available)",
          "stay": "Hilltop Panorama Resort near Al Azhar Mosque, Cairo",
          "weather": "Warm tropical sunshine with ocean breeze 27°C",
          "dressCode": "Modest traditional attire (shoulders & knees covered)",
          "packingSuggestions": "Light cotton wear, camera with telephoto lens, sunscreen lotion, photo ID.",
          "accessibility": "Wheelchair ramps & low step entry vehicle",
          "visitorNote": "Escort coordinator will brief you on timing for Al Azhar Mosque, Cairo visit.",
          "travelDuration": "Approx 1 to 2 hours transfer"
        }
      },
      {
        "day": 2,
        "title": "Uncovering the Secrets of Al Azhar Mosque, Cairo",
        "location": "Cairo",
        "overview": "A deep dive into Al Azhar Mosque, Cairo. Tour inner sanctums, historical galleries, and architectural viewpoints accompanied by an expert guide.",
        "schedule": {
          "morning": {
            "title": "Guided Tour of Al Azhar Mosque, Cairo",
            "description": "Early morning entry to Al Azhar Mosque, Cairo. Walk through central courtyards, ancient corridors, and historic halls."
          },
          "afternoon": {
            "title": "Coastal Promenade & Beach Relax near Cairo",
            "description": "Taste authentic local regional cuisine. Visit local artisan markets specializing in handcrafts native to Egypt."
          },
          "evening": {
            "title": "Sunset Viewpoint & Cultural Evening",
            "description": "Head to the highest scenic viewpoint overlooking Al Azhar Mosque, Cairo. Capture sunset photographs followed by evening entertainment."
          }
        },
        "details": {
          "importantTimings": "Sunrise Tour: 5:45 AM | Museum Hours: 9:30 AM - 5:00 PM",
          "meals": "Welcome Tender Coconut & Traditional Satvik Thali.",
          "transport": "AC Private Sedan / SUV",
          "walkingLevel": "Moderate (Historical walkways & corridors)",
          "stay": "Hilltop Panorama Resort near Al Azhar Mosque, Cairo",
          "weather": "Warm tropical sunshine with ocean breeze 27°C",
          "dressCode": "Traditional attire",
          "packingSuggestions": "Comfortable walking socks, power bank, shoulder shawl, daypack.",
          "accessibility": "Assistive ramps available at main portals",
          "visitorNote": "Follow local heritage guidelines inside Al Azhar Mosque, Cairo.",
          "travelDuration": "Full day sightseeing approx 5 to 6 hours"
        }
      },
      {
        "day": 3,
        "title": "Souvenir Shopping & Onward Departure from Cairo",
        "location": "Cairo",
        "overview": "Conclude your trip to Al Azhar Mosque, Cairo with morning shopping for local delicacies and souvenirs, followed by departure transfer.",
        "schedule": {
          "morning": {
            "title": "Handicrafts & Sweet Market Visit",
            "description": "Visit trusted local bazaar stalls to buy regional spices, handmade crafts, and traditional sweets of Cairo."
          },
          "afternoon": {
            "title": "Hotel Checkout & Farewell Lunch",
            "description": "Return to hotel for packing and checkout. Enjoy a farewell lunch before your transfer."
          },
          "evening": {
            "title": "Outbound Departure Transfer",
            "description": "Chauffeur drop to Cairo Airport or Railway Station for your onward journey home."
          }
        },
        "details": {
          "importantTimings": "Checkout: 12:00 PM | Transfer: As per flight/train",
          "meals": "Breakfast & Farewell Lunch included.",
          "transport": "AC Private Transfer Vehicle",
          "walkingLevel": "Easy Paced",
          "stay": "N/A (Day of departure)",
          "weather": "Warm tropical sunshine with ocean breeze 27°C",
          "dressCode": "Comfortable travel wear",
          "packingSuggestions": "Check-in luggage packed, photo ID ready.",
          "accessibility": "Accessible vehicles",
          "visitorNote": "Arrive at Cairo station/airport 2 hours prior to departure.",
          "travelDuration": "Approx 1 hour transfer"
        }
      }
    ],
    "durationDays": 3,
    "durationLabel": "3 Days / 2 Nights",
    "travellerTypes": [
      "Pilgrims",
      "Seniors"
    ],
    "accessibilityStatus": "Wheelchair Accessible",
    "childFriendly": true,
    "packageBenefits": [
      "Pilgrimage Guide",
      "Senior Rest Support"
    ],
    "highlights": [
      "Spiritual darshan and guided temple tour in Al Azhar Mosque, Cairo",
      "Experience peaceful aarti assemblies and sacred rituals",
      "Comfortable transfers to all holy sites"
    ],
    "tips": [
      "Carry valid government ID cards for verification.",
      "Traditional decency wear is recommended inside temple corridors.",
      "Avoid carrying electronics inside the inner sanctum."
    ],
    "itinerarySummary": [
      "Day 1: Arrival in Cairo: Panoramic Terrace Lounge Session",
      "Day 2: Uncovering the Secrets of Al Azhar Mosque, Cairo",
      "Day 3: Souvenir Shopping & Onward Departure from Cairo"
    ],
    "cancellationSummary": "Get a 100% full refund on cancellations made up to 15 days before the departure. Rescheduling options are fully flexible."
  },
  {
    "id": "islam-al-masjid-al-qiblatayn-medina-saudi-arabia",
    "title": "Al Masjid al Qiblatayn, Medina Journey",
    "destinationName": "Al Masjid al Qiblatayn, Medina",
    "destinations": "Al Masjid al Qiblatayn, Medina (Medina, Saudi Arabia)",
    "location": "Medina, Saudi Arabia",
    "route": [
      "Medina",
      "Al Masjid al Qiblatayn, Medina"
    ],
    "mainCategory": "Pilgrimage",
    "subCategory": "Islam",
    "categoryLabel": "Pilgrimage",
    "category": "Pilgrimage",
    "region": "International",
    "image": "/images/tourist-places/pilgrimage/Islam/Al-Masjid al-Qiblatayn, Medina, Saudi Arabia.jpg",
    "altText": "Al Masjid al Qiblatayn, Medina islamic pilgrimage destination in Medina, Saudi Arabia",
    "duration": "3 Days / 2 Nights",
    "bestSeason": "October–March",
    "pace": "Easy",
    "travellerType": "Senior Friendly",
    "description": "A thoughtfully planned islamic pilgrimage offering comfort, guidance, and a memorable experience.",
    "price": 14500,
    "rating": null,
    "reviewCount": null,
    "seatsLeft": null,
    "recentBookings": null,
    "verified": null,
    "tags": [
      "Pilgrimage",
      "Curated Journey"
    ],
    "seniorFriendly": true,
    "wheelchairAccess": true,
    "vegMeals": true,
    "inclusions": {
      "hotel": true,
      "meals": true,
      "transit": true,
      "guide": true,
      "entryPasses": true,
      "medicalSupport": false,
      "localExperience": false
    },
    "itinerary": [
      {
        "day": 1,
        "title": "Spiritual Welcome to Medina & Al Masjid al Qiblatayn, Medina Gateway",
        "location": "Medina",
        "overview": "Begin your sacred yatra as you arrive in Medina. Check into your room at Heritage Palace Resort overlooking Al Masjid al Qiblatayn, Medina and receive a brief orientation before evening prayers.",
        "schedule": {
          "morning": {
            "title": "Arrival & Escorted Transfer in Medina",
            "description": "Meet our local travel escort at Medina transit hub. Receive a traditional welcome and transfer to Heritage Palace Resort overlooking Al Masjid al Qiblatayn, Medina."
          },
          "afternoon": {
            "title": "Unpack & Courtyard Leisure at Medina",
            "description": "Check into your sanitized room, unpack your luggage, and enjoy quiet leisure time exploring hotel gardens and facilities."
          },
          "evening": {
            "title": "Lakeside Stroll & Local Cuisine at Al Masjid al Qiblatayn, Medina",
            "description": "Attend solemn evening prayer assembly near Al Masjid al Qiblatayn, Medina. Float earthen lamps and soak in peaceful chanting."
          }
        },
        "details": {
          "importantTimings": "Guided Walk: 9:00 AM | Sunset Point Departure: 5:15 PM",
          "meals": "100% Satvik Pure Veg Breakfast & Temple Prasadam Dinner.",
          "transport": "AC Private Chauffeur Vehicle",
          "walkingLevel": "Easy Paced (Flat temple paths, seating available)",
          "stay": "Heritage Palace Resort overlooking Al Masjid al Qiblatayn, Medina",
          "weather": "Crisp mountain climate, clear blue skies 19°C",
          "dressCode": "Modest traditional attire (shoulders & knees covered)",
          "packingSuggestions": "Comfortable walking socks, power bank, shoulder shawl, daypack.",
          "accessibility": "Wheelchair ramps & low step entry vehicle",
          "visitorNote": "Escort coordinator will brief you on timing for Al Masjid al Qiblatayn, Medina visit.",
          "travelDuration": "Approx 1 to 2 hours transfer"
        }
      },
      {
        "day": 2,
        "title": "Spiritual Morning Prayers at Al Masjid al Qiblatayn, Medina",
        "location": "Medina",
        "overview": "A deep dive into Al Masjid al Qiblatayn, Medina. Tour inner sanctums, historical galleries, and architectural viewpoints accompanied by an expert guide.",
        "schedule": {
          "morning": {
            "title": "Guided Tour of Al Masjid al Qiblatayn, Medina",
            "description": "Early morning entry to Al Masjid al Qiblatayn, Medina. Walk through central courtyards, ancient corridors, and historic halls."
          },
          "afternoon": {
            "title": "Culinary Tasting & Local Artisan Crafts near Medina",
            "description": "Taste authentic local regional cuisine. Visit local artisan markets specializing in handcrafts native to Saudi Arabia."
          },
          "evening": {
            "title": "Sunset Viewpoint & Cultural Evening",
            "description": "Head to the highest scenic viewpoint overlooking Al Masjid al Qiblatayn, Medina. Capture sunset photographs followed by evening entertainment."
          }
        },
        "details": {
          "importantTimings": "Guided Walk: 9:00 AM | Sunset Point Departure: 5:15 PM",
          "meals": "Welcome Tender Coconut & Traditional Satvik Thali.",
          "transport": "AC Private Sedan / SUV",
          "walkingLevel": "Moderate (Historical walkways & corridors)",
          "stay": "Heritage Palace Resort overlooking Al Masjid al Qiblatayn, Medina",
          "weather": "Crisp mountain climate, clear blue skies 19°C",
          "dressCode": "Traditional attire",
          "packingSuggestions": "Breathable linen wear, sunglasses, small currency notes for local shops.",
          "accessibility": "Assistive ramps available at main portals",
          "visitorNote": "Follow local heritage guidelines inside Al Masjid al Qiblatayn, Medina.",
          "travelDuration": "Full day sightseeing approx 5 to 6 hours"
        }
      },
      {
        "day": 3,
        "title": "Souvenir Shopping & Onward Departure from Medina",
        "location": "Medina",
        "overview": "Conclude your trip to Al Masjid al Qiblatayn, Medina with morning shopping for local delicacies and souvenirs, followed by departure transfer.",
        "schedule": {
          "morning": {
            "title": "Handicrafts & Sweet Market Visit",
            "description": "Visit trusted local bazaar stalls to buy regional spices, handmade crafts, and traditional sweets of Medina."
          },
          "afternoon": {
            "title": "Hotel Checkout & Farewell Lunch",
            "description": "Return to hotel for packing and checkout. Enjoy a farewell lunch before your transfer."
          },
          "evening": {
            "title": "Outbound Departure Transfer",
            "description": "Chauffeur drop to Medina Airport or Railway Station for your onward journey home."
          }
        },
        "details": {
          "importantTimings": "Checkout: 12:00 PM | Transfer: As per flight/train",
          "meals": "Breakfast & Farewell Lunch included.",
          "transport": "AC Private Transfer Vehicle",
          "walkingLevel": "Easy Paced",
          "stay": "N/A (Day of departure)",
          "weather": "Crisp mountain climate, clear blue skies 19°C",
          "dressCode": "Comfortable travel wear",
          "packingSuggestions": "Check-in luggage packed, photo ID ready.",
          "accessibility": "Accessible vehicles",
          "visitorNote": "Arrive at Medina station/airport 2 hours prior to departure.",
          "travelDuration": "Approx 1 hour transfer"
        }
      }
    ],
    "durationDays": 3,
    "durationLabel": "3 Days / 2 Nights",
    "travellerTypes": [
      "Pilgrims",
      "Seniors"
    ],
    "accessibilityStatus": "Wheelchair Accessible",
    "childFriendly": true,
    "packageBenefits": [
      "Pilgrimage Guide",
      "Senior Rest Support"
    ],
    "highlights": [
      "Spiritual darshan and guided temple tour in Al Masjid al Qiblatayn, Medina",
      "Experience peaceful aarti assemblies and sacred rituals",
      "Comfortable transfers to all holy sites"
    ],
    "tips": [
      "Carry valid government ID cards for verification.",
      "Traditional decency wear is recommended inside temple corridors.",
      "Avoid carrying electronics inside the inner sanctum."
    ],
    "itinerarySummary": [
      "Day 1: Spiritual Welcome to Medina & Al Masjid al Qiblatayn, Medina Gateway",
      "Day 2: Spiritual Morning Prayers at Al Masjid al Qiblatayn, Medina",
      "Day 3: Souvenir Shopping & Onward Departure from Medina"
    ],
    "cancellationSummary": "Get a 100% full refund on cancellations made up to 15 days before the departure. Rescheduling options are fully flexible."
  },
  {
    "id": "islam-data-darbar-lahore-pakistan",
    "title": "Data Darbar, Lahore Journey",
    "destinationName": "Data Darbar, Lahore",
    "destinations": "Data Darbar, Lahore (Lahore, Pakistan)",
    "location": "Lahore, Pakistan",
    "route": [
      "Lahore",
      "Data Darbar, Lahore"
    ],
    "mainCategory": "Pilgrimage",
    "subCategory": "Islam",
    "categoryLabel": "Pilgrimage",
    "category": "Pilgrimage",
    "region": "International",
    "image": "/images/tourist-places/pilgrimage/Islam/Data Darbar, Lahore, Pakistan.jpg",
    "altText": "Data Darbar, Lahore islamic pilgrimage destination in Lahore, Pakistan",
    "duration": "3 Days / 2 Nights",
    "bestSeason": "October–March",
    "pace": "Easy",
    "travellerType": "Senior Friendly",
    "description": "A thoughtfully planned islamic pilgrimage offering comfort, guidance, and a memorable experience.",
    "price": 15700,
    "rating": null,
    "reviewCount": null,
    "seatsLeft": null,
    "recentBookings": null,
    "verified": null,
    "tags": [
      "Pilgrimage",
      "Curated Journey"
    ],
    "seniorFriendly": true,
    "wheelchairAccess": true,
    "vegMeals": true,
    "inclusions": {
      "hotel": true,
      "meals": true,
      "transit": true,
      "guide": true,
      "entryPasses": true,
      "medicalSupport": false,
      "localExperience": false
    },
    "itinerary": [
      {
        "day": 1,
        "title": "Arrival in Lahore: Traditional Ceremony & Quiet Reflection",
        "location": "Lahore",
        "overview": "Begin your sacred yatra as you arrive in Lahore. Check into your room at Boutique Lakefront Haveli in Lahore and receive a brief orientation before evening prayers.",
        "schedule": {
          "morning": {
            "title": "Arrival & Escorted Transfer in Lahore",
            "description": "Meet our local travel escort at Lahore transit hub. Receive a traditional welcome and transfer to Boutique Lakefront Haveli in Lahore."
          },
          "afternoon": {
            "title": "Unpack & Courtyard Leisure at Lahore",
            "description": "Check into your sanitized room, unpack your luggage, and enjoy quiet leisure time exploring hotel gardens and facilities."
          },
          "evening": {
            "title": "Traditional Ceremony & Quiet Reflection at Data Darbar, Lahore",
            "description": "Attend solemn evening prayer assembly near Data Darbar, Lahore. Float earthen lamps and soak in peaceful chanting."
          }
        },
        "details": {
          "importantTimings": "Boat Departure: 6:00 AM | Heritage Show: 7:00 PM",
          "meals": "100% Satvik Pure Veg Breakfast & Temple Prasadam Dinner.",
          "transport": "AC Private Chauffeur Vehicle",
          "walkingLevel": "Easy Paced (Flat temple paths, seating available)",
          "stay": "Boutique Lakefront Haveli in Lahore",
          "weather": "Refreshing river mist with mild sun 23°C",
          "dressCode": "Modest traditional attire (shoulders & knees covered)",
          "packingSuggestions": "Breathable linen wear, sunglasses, small currency notes for local shops.",
          "accessibility": "Wheelchair ramps & low step entry vehicle",
          "visitorNote": "Escort coordinator will brief you on timing for Data Darbar, Lahore visit.",
          "travelDuration": "Approx 1 to 2 hours transfer"
        }
      },
      {
        "day": 2,
        "title": "Architectural Tour of Data Darbar, Lahore",
        "location": "Lahore",
        "overview": "A deep dive into Data Darbar, Lahore. Tour inner sanctums, historical galleries, and architectural viewpoints accompanied by an expert guide.",
        "schedule": {
          "morning": {
            "title": "Guided Tour of Data Darbar, Lahore",
            "description": "Early morning entry to Data Darbar, Lahore. Walk through central courtyards, ancient corridors, and historic halls."
          },
          "afternoon": {
            "title": "Excursion to Surrounding Haveli & Gardens near Lahore",
            "description": "Taste authentic local regional cuisine. Visit local artisan markets specializing in handcrafts native to Pakistan."
          },
          "evening": {
            "title": "Sunset Viewpoint & Cultural Evening",
            "description": "Head to the highest scenic viewpoint overlooking Data Darbar, Lahore. Capture sunset photographs followed by evening entertainment."
          }
        },
        "details": {
          "importantTimings": "Boat Departure: 6:00 AM | Heritage Show: 7:00 PM",
          "meals": "Welcome Tender Coconut & Traditional Satvik Thali.",
          "transport": "AC Private Sedan / SUV",
          "walkingLevel": "Moderate (Historical walkways & corridors)",
          "stay": "Boutique Lakefront Haveli in Lahore",
          "weather": "Refreshing river mist with mild sun 23°C",
          "dressCode": "Traditional attire",
          "packingSuggestions": "Sunhat, sunglasses, comfortable walking shoes, light jacket, camera.",
          "accessibility": "Assistive ramps available at main portals",
          "visitorNote": "Follow local heritage guidelines inside Data Darbar, Lahore.",
          "travelDuration": "Full day sightseeing approx 5 to 6 hours"
        }
      },
      {
        "day": 3,
        "title": "Souvenir Shopping & Onward Departure from Lahore",
        "location": "Lahore",
        "overview": "Conclude your trip to Data Darbar, Lahore with morning shopping for local delicacies and souvenirs, followed by departure transfer.",
        "schedule": {
          "morning": {
            "title": "Handicrafts & Sweet Market Visit",
            "description": "Visit trusted local bazaar stalls to buy regional spices, handmade crafts, and traditional sweets of Lahore."
          },
          "afternoon": {
            "title": "Hotel Checkout & Farewell Lunch",
            "description": "Return to hotel for packing and checkout. Enjoy a farewell lunch before your transfer."
          },
          "evening": {
            "title": "Outbound Departure Transfer",
            "description": "Chauffeur drop to Lahore Airport or Railway Station for your onward journey home."
          }
        },
        "details": {
          "importantTimings": "Checkout: 12:00 PM | Transfer: As per flight/train",
          "meals": "Breakfast & Farewell Lunch included.",
          "transport": "AC Private Transfer Vehicle",
          "walkingLevel": "Easy Paced",
          "stay": "N/A (Day of departure)",
          "weather": "Refreshing river mist with mild sun 23°C",
          "dressCode": "Comfortable travel wear",
          "packingSuggestions": "Check-in luggage packed, photo ID ready.",
          "accessibility": "Accessible vehicles",
          "visitorNote": "Arrive at Lahore station/airport 2 hours prior to departure.",
          "travelDuration": "Approx 1 hour transfer"
        }
      }
    ],
    "durationDays": 3,
    "durationLabel": "3 Days / 2 Nights",
    "travellerTypes": [
      "Pilgrims",
      "Seniors"
    ],
    "accessibilityStatus": "Wheelchair Accessible",
    "childFriendly": true,
    "packageBenefits": [
      "Pilgrimage Guide",
      "Senior Rest Support"
    ],
    "highlights": [
      "Spiritual darshan and guided temple tour in Data Darbar, Lahore",
      "Experience peaceful aarti assemblies and sacred rituals",
      "Comfortable transfers to all holy sites"
    ],
    "tips": [
      "Carry valid government ID cards for verification.",
      "Traditional decency wear is recommended inside temple corridors.",
      "Avoid carrying electronics inside the inner sanctum."
    ],
    "itinerarySummary": [
      "Day 1: Arrival in Lahore: Traditional Ceremony & Quiet Reflection",
      "Day 2: Architectural Tour of Data Darbar, Lahore",
      "Day 3: Souvenir Shopping & Onward Departure from Lahore"
    ],
    "cancellationSummary": "Get a 100% full refund on cancellations made up to 15 days before the departure. Rescheduling options are fully flexible."
  },
  {
    "id": "islam-dome-of-the-rock-jerusalem-israel",
    "title": "Dome of the Rock, Jerusalem Journey",
    "destinationName": "Dome of the Rock, Jerusalem",
    "destinations": "Dome of the Rock, Jerusalem (Jerusalem, Israel)",
    "location": "Jerusalem, Israel",
    "route": [
      "Jerusalem",
      "Dome of the Rock, Jerusalem"
    ],
    "mainCategory": "Pilgrimage",
    "subCategory": "Islam",
    "categoryLabel": "Pilgrimage",
    "category": "Pilgrimage",
    "region": "International",
    "image": "/images/tourist-places/pilgrimage/Islam/Dome of the Rock, Jerusalem, Israel.jpg",
    "altText": "Dome of the Rock, Jerusalem islamic pilgrimage destination in Jerusalem, Israel",
    "duration": "3 Days / 2 Nights",
    "bestSeason": "October–March",
    "pace": "Easy",
    "travellerType": "Senior Friendly",
    "description": "A thoughtfully planned islamic pilgrimage offering comfort, guidance, and a memorable experience.",
    "price": 16900,
    "rating": null,
    "reviewCount": null,
    "seatsLeft": null,
    "recentBookings": null,
    "verified": null,
    "tags": [
      "Pilgrimage",
      "Curated Journey"
    ],
    "seniorFriendly": true,
    "wheelchairAccess": true,
    "vegMeals": true,
    "inclusions": {
      "hotel": true,
      "meals": true,
      "transit": true,
      "guide": true,
      "entryPasses": true,
      "medicalSupport": false,
      "localExperience": false
    },
    "itinerary": [
      {
        "day": 1,
        "title": "Welcome & Check-in at Jerusalem & Dome of the Rock, Jerusalem Gateway",
        "location": "Jerusalem",
        "overview": "Begin your sacred yatra as you arrive in Jerusalem. Check into your room at Royal Heritage Villa near Dome of the Rock, Jerusalem and receive a brief orientation before evening prayers.",
        "schedule": {
          "morning": {
            "title": "Arrival & Escorted Transfer in Jerusalem",
            "description": "Meet our local travel escort at Jerusalem transit hub. Receive a traditional welcome and transfer to Royal Heritage Villa near Dome of the Rock, Jerusalem."
          },
          "afternoon": {
            "title": "Unpack & Courtyard Leisure at Jerusalem",
            "description": "Check into your sanitized room, unpack your luggage, and enjoy quiet leisure time exploring hotel gardens and facilities."
          },
          "evening": {
            "title": "Sunset Walk & Local Market Flavors at Dome of the Rock, Jerusalem",
            "description": "Attend solemn evening prayer assembly near Dome of the Rock, Jerusalem. Float earthen lamps and soak in peaceful chanting."
          }
        },
        "details": {
          "importantTimings": "Gate Entry: 8:00 AM | Evening Light Show: 6:30 PM",
          "meals": "100% Satvik Pure Veg Breakfast & Temple Prasadam Dinner.",
          "transport": "AC Private Chauffeur Vehicle",
          "walkingLevel": "Easy Paced (Flat temple paths, seating available)",
          "stay": "Royal Heritage Villa near Dome of the Rock, Jerusalem",
          "weather": "Pleasant breeze with sunny afternoon 24°C",
          "dressCode": "Modest traditional attire (shoulders & knees covered)",
          "packingSuggestions": "Sunhat, sunglasses, comfortable walking shoes, light jacket, camera.",
          "accessibility": "Wheelchair ramps & low step entry vehicle",
          "visitorNote": "Escort coordinator will brief you on timing for Dome of the Rock, Jerusalem visit.",
          "travelDuration": "Approx 1 to 2 hours transfer"
        }
      },
      {
        "day": 2,
        "title": "Dawn Guided Expedition of Dome of the Rock, Jerusalem",
        "location": "Jerusalem",
        "overview": "A deep dive into Dome of the Rock, Jerusalem. Tour inner sanctums, historical galleries, and architectural viewpoints accompanied by an expert guide.",
        "schedule": {
          "morning": {
            "title": "Guided Tour of Dome of the Rock, Jerusalem",
            "description": "Early morning entry to Dome of the Rock, Jerusalem. Walk through central courtyards, ancient corridors, and historic halls."
          },
          "afternoon": {
            "title": "Museum Treasures & Heritage Galleries near Jerusalem",
            "description": "Taste authentic local regional cuisine. Visit local artisan markets specializing in handcrafts native to Israel."
          },
          "evening": {
            "title": "Sunset Viewpoint & Cultural Evening",
            "description": "Head to the highest scenic viewpoint overlooking Dome of the Rock, Jerusalem. Capture sunset photographs followed by evening entertainment."
          }
        },
        "details": {
          "importantTimings": "Gate Entry: 8:00 AM | Evening Light Show: 6:30 PM",
          "meals": "Welcome Tender Coconut & Traditional Satvik Thali.",
          "transport": "AC Private Sedan / SUV",
          "walkingLevel": "Moderate (Historical walkways & corridors)",
          "stay": "Royal Heritage Villa near Dome of the Rock, Jerusalem",
          "weather": "Pleasant breeze with sunny afternoon 24°C",
          "dressCode": "Traditional attire",
          "packingSuggestions": "Traditional headscarf, slip-on shoes, reusable water bottle, dry bag.",
          "accessibility": "Assistive ramps available at main portals",
          "visitorNote": "Follow local heritage guidelines inside Dome of the Rock, Jerusalem.",
          "travelDuration": "Full day sightseeing approx 5 to 6 hours"
        }
      },
      {
        "day": 3,
        "title": "Souvenir Shopping & Onward Departure from Jerusalem",
        "location": "Jerusalem",
        "overview": "Conclude your trip to Dome of the Rock, Jerusalem with morning shopping for local delicacies and souvenirs, followed by departure transfer.",
        "schedule": {
          "morning": {
            "title": "Handicrafts & Sweet Market Visit",
            "description": "Visit trusted local bazaar stalls to buy regional spices, handmade crafts, and traditional sweets of Jerusalem."
          },
          "afternoon": {
            "title": "Hotel Checkout & Farewell Lunch",
            "description": "Return to hotel for packing and checkout. Enjoy a farewell lunch before your transfer."
          },
          "evening": {
            "title": "Outbound Departure Transfer",
            "description": "Chauffeur drop to Jerusalem Airport or Railway Station for your onward journey home."
          }
        },
        "details": {
          "importantTimings": "Checkout: 12:00 PM | Transfer: As per flight/train",
          "meals": "Breakfast & Farewell Lunch included.",
          "transport": "AC Private Transfer Vehicle",
          "walkingLevel": "Easy Paced",
          "stay": "N/A (Day of departure)",
          "weather": "Pleasant breeze with sunny afternoon 24°C",
          "dressCode": "Comfortable travel wear",
          "packingSuggestions": "Check-in luggage packed, photo ID ready.",
          "accessibility": "Accessible vehicles",
          "visitorNote": "Arrive at Jerusalem station/airport 2 hours prior to departure.",
          "travelDuration": "Approx 1 hour transfer"
        }
      }
    ],
    "durationDays": 3,
    "durationLabel": "3 Days / 2 Nights",
    "travellerTypes": [
      "Pilgrims",
      "Seniors"
    ],
    "accessibilityStatus": "Wheelchair Accessible",
    "childFriendly": true,
    "packageBenefits": [
      "Pilgrimage Guide",
      "Senior Rest Support"
    ],
    "highlights": [
      "Spiritual darshan and guided temple tour in Dome of the Rock, Jerusalem",
      "Experience peaceful aarti assemblies and sacred rituals",
      "Comfortable transfers to all holy sites"
    ],
    "tips": [
      "Carry valid government ID cards for verification.",
      "Traditional decency wear is recommended inside temple corridors.",
      "Avoid carrying electronics inside the inner sanctum."
    ],
    "itinerarySummary": [
      "Day 1: Welcome & Check-in at Jerusalem & Dome of the Rock, Jerusalem Gateway",
      "Day 2: Dawn Guided Expedition of Dome of the Rock, Jerusalem",
      "Day 3: Souvenir Shopping & Onward Departure from Jerusalem"
    ],
    "cancellationSummary": "Get a 100% full refund on cancellations made up to 15 days before the departure. Rescheduling options are fully flexible."
  },
  {
    "id": "islam-imam-ali-shrine-najaf-iraq",
    "title": "Imam Ali Shrine, Najaf Journey",
    "destinationName": "Imam Ali Shrine, Najaf",
    "destinations": "Imam Ali Shrine, Najaf (Najaf, Iraq)",
    "location": "Najaf, Iraq",
    "route": [
      "Najaf",
      "Imam Ali Shrine, Najaf"
    ],
    "mainCategory": "Pilgrimage",
    "subCategory": "Islam",
    "categoryLabel": "Pilgrimage",
    "category": "Pilgrimage",
    "region": "International",
    "image": "/images/tourist-places/pilgrimage/Islam/Imam Ali Shrine, Najaf, Iraq.jpg",
    "altText": "Imam Ali Shrine, Najaf islamic pilgrimage destination in Najaf, Iraq",
    "duration": "3 Days / 2 Nights",
    "bestSeason": "October–March",
    "pace": "Easy",
    "travellerType": "Senior Friendly",
    "description": "A thoughtfully planned islamic pilgrimage offering comfort, guidance, and a memorable experience.",
    "price": 18100,
    "rating": null,
    "reviewCount": null,
    "seatsLeft": null,
    "recentBookings": null,
    "verified": null,
    "tags": [
      "Pilgrimage",
      "Curated Journey"
    ],
    "seniorFriendly": true,
    "wheelchairAccess": true,
    "vegMeals": true,
    "inclusions": {
      "hotel": true,
      "meals": true,
      "transit": true,
      "guide": true,
      "entryPasses": true,
      "medicalSupport": false,
      "localExperience": false
    },
    "itinerary": [
      {
        "day": 1,
        "title": "Arrival in Najaf: Illuminated Viewpoint & Welcome Feast",
        "location": "Najaf",
        "overview": "Begin your sacred yatra as you arrive in Najaf. Check into your room at Luxury Eco Lodge in Najaf and receive a brief orientation before evening prayers.",
        "schedule": {
          "morning": {
            "title": "Arrival & Escorted Transfer in Najaf",
            "description": "Meet our local travel escort at Najaf transit hub. Receive a traditional welcome and transfer to Luxury Eco Lodge in Najaf."
          },
          "afternoon": {
            "title": "Unpack & Courtyard Leisure at Najaf",
            "description": "Check into your sanitized room, unpack your luggage, and enjoy quiet leisure time exploring hotel gardens and facilities."
          },
          "evening": {
            "title": "Illuminated Viewpoint & Welcome Feast at Imam Ali Shrine, Najaf",
            "description": "Attend solemn evening prayer assembly near Imam Ali Shrine, Najaf. Float earthen lamps and soak in peaceful chanting."
          }
        },
        "details": {
          "importantTimings": "Sanctum VIP Slot: 6:30 AM | Bazaar Hours: 4:00 PM - 8:30 PM",
          "meals": "100% Satvik Pure Veg Breakfast & Temple Prasadam Dinner.",
          "transport": "AC Private Chauffeur Vehicle",
          "walkingLevel": "Easy Paced (Flat temple paths, seating available)",
          "stay": "Luxury Eco Lodge in Najaf",
          "weather": "Cool crisp morning fog clearing to bright 22°C",
          "dressCode": "Modest traditional attire (shoulders & knees covered)",
          "packingSuggestions": "Traditional headscarf, slip-on shoes, reusable water bottle, dry bag.",
          "accessibility": "Wheelchair ramps & low step entry vehicle",
          "visitorNote": "Escort coordinator will brief you on timing for Imam Ali Shrine, Najaf visit.",
          "travelDuration": "Approx 1 to 2 hours transfer"
        }
      },
      {
        "day": 2,
        "title": "Early Sunrise Visit to Imam Ali Shrine, Najaf",
        "location": "Najaf",
        "overview": "A deep dive into Imam Ali Shrine, Najaf. Tour inner sanctums, historical galleries, and architectural viewpoints accompanied by an expert guide.",
        "schedule": {
          "morning": {
            "title": "Guided Tour of Imam Ali Shrine, Najaf",
            "description": "Early morning entry to Imam Ali Shrine, Najaf. Walk through central courtyards, ancient corridors, and historic halls."
          },
          "afternoon": {
            "title": "Boat Ride & Riverfront Exploration near Najaf",
            "description": "Taste authentic local regional cuisine. Visit local artisan markets specializing in handcrafts native to Iraq."
          },
          "evening": {
            "title": "Sunset Viewpoint & Cultural Evening",
            "description": "Head to the highest scenic viewpoint overlooking Imam Ali Shrine, Najaf. Capture sunset photographs followed by evening entertainment."
          }
        },
        "details": {
          "importantTimings": "Sanctum VIP Slot: 6:30 AM | Bazaar Hours: 4:00 PM - 8:30 PM",
          "meals": "Welcome Tender Coconut & Traditional Satvik Thali.",
          "transport": "AC Private Sedan / SUV",
          "walkingLevel": "Moderate (Historical walkways & corridors)",
          "stay": "Luxury Eco Lodge in Najaf",
          "weather": "Cool crisp morning fog clearing to bright 22°C",
          "dressCode": "Traditional attire",
          "packingSuggestions": "Light cotton wear, camera with telephoto lens, sunscreen lotion, photo ID.",
          "accessibility": "Assistive ramps available at main portals",
          "visitorNote": "Follow local heritage guidelines inside Imam Ali Shrine, Najaf.",
          "travelDuration": "Full day sightseeing approx 5 to 6 hours"
        }
      },
      {
        "day": 3,
        "title": "Souvenir Shopping & Onward Departure from Najaf",
        "location": "Najaf",
        "overview": "Conclude your trip to Imam Ali Shrine, Najaf with morning shopping for local delicacies and souvenirs, followed by departure transfer.",
        "schedule": {
          "morning": {
            "title": "Handicrafts & Sweet Market Visit",
            "description": "Visit trusted local bazaar stalls to buy regional spices, handmade crafts, and traditional sweets of Najaf."
          },
          "afternoon": {
            "title": "Hotel Checkout & Farewell Lunch",
            "description": "Return to hotel for packing and checkout. Enjoy a farewell lunch before your transfer."
          },
          "evening": {
            "title": "Outbound Departure Transfer",
            "description": "Chauffeur drop to Najaf Airport or Railway Station for your onward journey home."
          }
        },
        "details": {
          "importantTimings": "Checkout: 12:00 PM | Transfer: As per flight/train",
          "meals": "Breakfast & Farewell Lunch included.",
          "transport": "AC Private Transfer Vehicle",
          "walkingLevel": "Easy Paced",
          "stay": "N/A (Day of departure)",
          "weather": "Cool crisp morning fog clearing to bright 22°C",
          "dressCode": "Comfortable travel wear",
          "packingSuggestions": "Check-in luggage packed, photo ID ready.",
          "accessibility": "Accessible vehicles",
          "visitorNote": "Arrive at Najaf station/airport 2 hours prior to departure.",
          "travelDuration": "Approx 1 hour transfer"
        }
      }
    ],
    "durationDays": 3,
    "durationLabel": "3 Days / 2 Nights",
    "travellerTypes": [
      "Pilgrims",
      "Seniors"
    ],
    "accessibilityStatus": "Wheelchair Accessible",
    "childFriendly": true,
    "packageBenefits": [
      "Pilgrimage Guide",
      "Senior Rest Support"
    ],
    "highlights": [
      "Spiritual darshan and guided temple tour in Imam Ali Shrine, Najaf",
      "Experience peaceful aarti assemblies and sacred rituals",
      "Comfortable transfers to all holy sites"
    ],
    "tips": [
      "Carry valid government ID cards for verification.",
      "Traditional decency wear is recommended inside temple corridors.",
      "Avoid carrying electronics inside the inner sanctum."
    ],
    "itinerarySummary": [
      "Day 1: Arrival in Najaf: Illuminated Viewpoint & Welcome Feast",
      "Day 2: Early Sunrise Visit to Imam Ali Shrine, Najaf",
      "Day 3: Souvenir Shopping & Onward Departure from Najaf"
    ],
    "cancellationSummary": "Get a 100% full refund on cancellations made up to 15 days before the departure. Rescheduling options are fully flexible."
  },
  {
    "id": "islam-imam-husayn-shrine-karbala-iraq",
    "title": "Imam Husayn Shrine, Karbala Journey",
    "destinationName": "Imam Husayn Shrine, Karbala",
    "destinations": "Imam Husayn Shrine, Karbala (Karbala, Iraq)",
    "location": "Karbala, Iraq",
    "route": [
      "Karbala",
      "Imam Husayn Shrine, Karbala"
    ],
    "mainCategory": "Pilgrimage",
    "subCategory": "Islam",
    "categoryLabel": "Pilgrimage",
    "category": "Pilgrimage",
    "region": "International",
    "image": "/images/tourist-places/pilgrimage/Islam/Imam Husayn Shrine, Karbala, Iraq.jpg",
    "altText": "Imam Husayn Shrine, Karbala islamic pilgrimage destination in Karbala, Iraq",
    "duration": "3 Days / 2 Nights",
    "bestSeason": "October–March",
    "pace": "Easy",
    "travellerType": "Senior Friendly",
    "description": "A thoughtfully planned islamic pilgrimage offering comfort, guidance, and a memorable experience.",
    "price": 19300,
    "rating": null,
    "reviewCount": null,
    "seatsLeft": null,
    "recentBookings": null,
    "verified": null,
    "tags": [
      "Pilgrimage",
      "Curated Journey"
    ],
    "seniorFriendly": true,
    "wheelchairAccess": true,
    "vegMeals": true,
    "inclusions": {
      "hotel": true,
      "meals": true,
      "transit": true,
      "guide": true,
      "entryPasses": true,
      "medicalSupport": false,
      "localExperience": false
    },
    "itinerary": [
      {
        "day": 1,
        "title": "Escorted Arrival in Karbala & Imam Husayn Shrine, Karbala Gateway",
        "location": "Karbala",
        "overview": "Begin your sacred yatra as you arrive in Karbala. Check into your room at Grand Riverfront Resort near Imam Husayn Shrine, Karbala and receive a brief orientation before evening prayers.",
        "schedule": {
          "morning": {
            "title": "Arrival & Escorted Transfer in Karbala",
            "description": "Meet our local travel escort at Karbala transit hub. Receive a traditional welcome and transfer to Grand Riverfront Resort near Imam Husayn Shrine, Karbala."
          },
          "afternoon": {
            "title": "Unpack & Courtyard Leisure at Karbala",
            "description": "Check into your sanitized room, unpack your luggage, and enjoy quiet leisure time exploring hotel gardens and facilities."
          },
          "evening": {
            "title": "Cultural Folk Performance & Dinner at Imam Husayn Shrine, Karbala",
            "description": "Attend solemn evening prayer assembly near Imam Husayn Shrine, Karbala. Float earthen lamps and soak in peaceful chanting."
          }
        },
        "details": {
          "importantTimings": "Sunrise Tour: 5:45 AM | Museum Hours: 9:30 AM - 5:00 PM",
          "meals": "100% Satvik Pure Veg Breakfast & Temple Prasadam Dinner.",
          "transport": "AC Private Chauffeur Vehicle",
          "walkingLevel": "Easy Paced (Flat temple paths, seating available)",
          "stay": "Grand Riverfront Resort near Imam Husayn Shrine, Karbala",
          "weather": "Warm tropical sunshine with ocean breeze 27°C",
          "dressCode": "Modest traditional attire (shoulders & knees covered)",
          "packingSuggestions": "Light cotton wear, camera with telephoto lens, sunscreen lotion, photo ID.",
          "accessibility": "Wheelchair ramps & low step entry vehicle",
          "visitorNote": "Escort coordinator will brief you on timing for Imam Husayn Shrine, Karbala visit.",
          "travelDuration": "Approx 1 to 2 hours transfer"
        }
      },
      {
        "day": 2,
        "title": "Exclusive Morning Tour of Imam Husayn Shrine, Karbala",
        "location": "Karbala",
        "overview": "A deep dive into Imam Husayn Shrine, Karbala. Tour inner sanctums, historical galleries, and architectural viewpoints accompanied by an expert guide.",
        "schedule": {
          "morning": {
            "title": "Guided Tour of Imam Husayn Shrine, Karbala",
            "description": "Early morning entry to Imam Husayn Shrine, Karbala. Walk through central courtyards, ancient corridors, and historic halls."
          },
          "afternoon": {
            "title": "Artisan Handloom Workshop & Souvenirs near Karbala",
            "description": "Taste authentic local regional cuisine. Visit local artisan markets specializing in handcrafts native to Iraq."
          },
          "evening": {
            "title": "Sunset Viewpoint & Cultural Evening",
            "description": "Head to the highest scenic viewpoint overlooking Imam Husayn Shrine, Karbala. Capture sunset photographs followed by evening entertainment."
          }
        },
        "details": {
          "importantTimings": "Sunrise Tour: 5:45 AM | Museum Hours: 9:30 AM - 5:00 PM",
          "meals": "Welcome Tender Coconut & Traditional Satvik Thali.",
          "transport": "AC Private Sedan / SUV",
          "walkingLevel": "Moderate (Historical walkways & corridors)",
          "stay": "Grand Riverfront Resort near Imam Husayn Shrine, Karbala",
          "weather": "Warm tropical sunshine with ocean breeze 27°C",
          "dressCode": "Traditional attire",
          "packingSuggestions": "Comfortable walking socks, power bank, shoulder shawl, daypack.",
          "accessibility": "Assistive ramps available at main portals",
          "visitorNote": "Follow local heritage guidelines inside Imam Husayn Shrine, Karbala.",
          "travelDuration": "Full day sightseeing approx 5 to 6 hours"
        }
      },
      {
        "day": 3,
        "title": "Souvenir Shopping & Onward Departure from Karbala",
        "location": "Karbala",
        "overview": "Conclude your trip to Imam Husayn Shrine, Karbala with morning shopping for local delicacies and souvenirs, followed by departure transfer.",
        "schedule": {
          "morning": {
            "title": "Handicrafts & Sweet Market Visit",
            "description": "Visit trusted local bazaar stalls to buy regional spices, handmade crafts, and traditional sweets of Karbala."
          },
          "afternoon": {
            "title": "Hotel Checkout & Farewell Lunch",
            "description": "Return to hotel for packing and checkout. Enjoy a farewell lunch before your transfer."
          },
          "evening": {
            "title": "Outbound Departure Transfer",
            "description": "Chauffeur drop to Karbala Airport or Railway Station for your onward journey home."
          }
        },
        "details": {
          "importantTimings": "Checkout: 12:00 PM | Transfer: As per flight/train",
          "meals": "Breakfast & Farewell Lunch included.",
          "transport": "AC Private Transfer Vehicle",
          "walkingLevel": "Easy Paced",
          "stay": "N/A (Day of departure)",
          "weather": "Warm tropical sunshine with ocean breeze 27°C",
          "dressCode": "Comfortable travel wear",
          "packingSuggestions": "Check-in luggage packed, photo ID ready.",
          "accessibility": "Accessible vehicles",
          "visitorNote": "Arrive at Karbala station/airport 2 hours prior to departure.",
          "travelDuration": "Approx 1 hour transfer"
        }
      }
    ],
    "durationDays": 3,
    "durationLabel": "3 Days / 2 Nights",
    "travellerTypes": [
      "Pilgrims",
      "Seniors"
    ],
    "accessibilityStatus": "Wheelchair Accessible",
    "childFriendly": true,
    "packageBenefits": [
      "Pilgrimage Guide",
      "Senior Rest Support"
    ],
    "highlights": [
      "Spiritual darshan and guided temple tour in Imam Husayn Shrine, Karbala",
      "Experience peaceful aarti assemblies and sacred rituals",
      "Comfortable transfers to all holy sites"
    ],
    "tips": [
      "Carry valid government ID cards for verification.",
      "Traditional decency wear is recommended inside temple corridors.",
      "Avoid carrying electronics inside the inner sanctum."
    ],
    "itinerarySummary": [
      "Day 1: Escorted Arrival in Karbala & Imam Husayn Shrine, Karbala Gateway",
      "Day 2: Exclusive Morning Tour of Imam Husayn Shrine, Karbala",
      "Day 3: Souvenir Shopping & Onward Departure from Karbala"
    ],
    "cancellationSummary": "Get a 100% full refund on cancellations made up to 15 days before the departure. Rescheduling options are fully flexible."
  },
  {
    "id": "islam-imam-reza-shrine-mashhad-iran",
    "title": "Imam Reza Shrine, Mashhad Journey",
    "destinationName": "Imam Reza Shrine, Mashhad",
    "destinations": "Imam Reza Shrine, Mashhad (Mashhad, Iran)",
    "location": "Mashhad, Iran",
    "route": [
      "Mashhad",
      "Imam Reza Shrine, Mashhad"
    ],
    "mainCategory": "Pilgrimage",
    "subCategory": "Islam",
    "categoryLabel": "Pilgrimage",
    "category": "Pilgrimage",
    "region": "International",
    "image": "/images/tourist-places/pilgrimage/Islam/Imam Reza Shrine, Mashhad, Iran.jpg",
    "altText": "Imam Reza Shrine, Mashhad islamic pilgrimage destination in Mashhad, Iran",
    "duration": "3 Days / 2 Nights",
    "bestSeason": "October–March",
    "pace": "Easy",
    "travellerType": "Senior Friendly",
    "description": "A thoughtfully planned islamic pilgrimage offering comfort, guidance, and a memorable experience.",
    "price": 20500,
    "rating": null,
    "reviewCount": null,
    "seatsLeft": null,
    "recentBookings": null,
    "verified": null,
    "tags": [
      "Pilgrimage",
      "Curated Journey"
    ],
    "seniorFriendly": true,
    "wheelchairAccess": true,
    "vegMeals": true,
    "inclusions": {
      "hotel": true,
      "meals": true,
      "transit": true,
      "guide": true,
      "entryPasses": true,
      "medicalSupport": false,
      "localExperience": false
    },
    "itinerary": [
      {
        "day": 1,
        "title": "Arrival in Mashhad: Riverside Aarti & Evening Tea",
        "location": "Mashhad",
        "overview": "Begin your sacred yatra as you arrive in Mashhad. Check into your room at Vedic Pilgrim Ashram Stay in Mashhad and receive a brief orientation before evening prayers.",
        "schedule": {
          "morning": {
            "title": "Arrival & Escorted Transfer in Mashhad",
            "description": "Meet our local travel escort at Mashhad transit hub. Receive a traditional welcome and transfer to Vedic Pilgrim Ashram Stay in Mashhad."
          },
          "afternoon": {
            "title": "Unpack & Courtyard Leisure at Mashhad",
            "description": "Check into your sanitized room, unpack your luggage, and enjoy quiet leisure time exploring hotel gardens and facilities."
          },
          "evening": {
            "title": "Riverside Aarti & Evening Tea at Imam Reza Shrine, Mashhad",
            "description": "Attend solemn evening prayer assembly near Imam Reza Shrine, Mashhad. Float earthen lamps and soak in peaceful chanting."
          }
        },
        "details": {
          "importantTimings": "Guided Walk: 9:00 AM | Sunset Point Departure: 5:15 PM",
          "meals": "100% Satvik Pure Veg Breakfast & Temple Prasadam Dinner.",
          "transport": "AC Private Chauffeur Vehicle",
          "walkingLevel": "Easy Paced (Flat temple paths, seating available)",
          "stay": "Vedic Pilgrim Ashram Stay in Mashhad",
          "weather": "Crisp mountain climate, clear blue skies 19°C",
          "dressCode": "Modest traditional attire (shoulders & knees covered)",
          "packingSuggestions": "Comfortable walking socks, power bank, shoulder shawl, daypack.",
          "accessibility": "Wheelchair ramps & low step entry vehicle",
          "visitorNote": "Escort coordinator will brief you on timing for Imam Reza Shrine, Mashhad visit.",
          "travelDuration": "Approx 1 to 2 hours transfer"
        }
      },
      {
        "day": 2,
        "title": "VIP Access to Imam Reza Shrine, Mashhad",
        "location": "Mashhad",
        "overview": "A deep dive into Imam Reza Shrine, Mashhad. Tour inner sanctums, historical galleries, and architectural viewpoints accompanied by an expert guide.",
        "schedule": {
          "morning": {
            "title": "Guided Tour of Imam Reza Shrine, Mashhad",
            "description": "Early morning entry to Imam Reza Shrine, Mashhad. Walk through central courtyards, ancient corridors, and historic halls."
          },
          "afternoon": {
            "title": "Scenic Valley Drive & Photo Stops near Mashhad",
            "description": "Taste authentic local regional cuisine. Visit local artisan markets specializing in handcrafts native to Iran."
          },
          "evening": {
            "title": "Sunset Viewpoint & Cultural Evening",
            "description": "Head to the highest scenic viewpoint overlooking Imam Reza Shrine, Mashhad. Capture sunset photographs followed by evening entertainment."
          }
        },
        "details": {
          "importantTimings": "Guided Walk: 9:00 AM | Sunset Point Departure: 5:15 PM",
          "meals": "Welcome Tender Coconut & Traditional Satvik Thali.",
          "transport": "AC Private Sedan / SUV",
          "walkingLevel": "Moderate (Historical walkways & corridors)",
          "stay": "Vedic Pilgrim Ashram Stay in Mashhad",
          "weather": "Crisp mountain climate, clear blue skies 19°C",
          "dressCode": "Traditional attire",
          "packingSuggestions": "Breathable linen wear, sunglasses, small currency notes for local shops.",
          "accessibility": "Assistive ramps available at main portals",
          "visitorNote": "Follow local heritage guidelines inside Imam Reza Shrine, Mashhad.",
          "travelDuration": "Full day sightseeing approx 5 to 6 hours"
        }
      },
      {
        "day": 3,
        "title": "Souvenir Shopping & Onward Departure from Mashhad",
        "location": "Mashhad",
        "overview": "Conclude your trip to Imam Reza Shrine, Mashhad with morning shopping for local delicacies and souvenirs, followed by departure transfer.",
        "schedule": {
          "morning": {
            "title": "Handicrafts & Sweet Market Visit",
            "description": "Visit trusted local bazaar stalls to buy regional spices, handmade crafts, and traditional sweets of Mashhad."
          },
          "afternoon": {
            "title": "Hotel Checkout & Farewell Lunch",
            "description": "Return to hotel for packing and checkout. Enjoy a farewell lunch before your transfer."
          },
          "evening": {
            "title": "Outbound Departure Transfer",
            "description": "Chauffeur drop to Mashhad Airport or Railway Station for your onward journey home."
          }
        },
        "details": {
          "importantTimings": "Checkout: 12:00 PM | Transfer: As per flight/train",
          "meals": "Breakfast & Farewell Lunch included.",
          "transport": "AC Private Transfer Vehicle",
          "walkingLevel": "Easy Paced",
          "stay": "N/A (Day of departure)",
          "weather": "Crisp mountain climate, clear blue skies 19°C",
          "dressCode": "Comfortable travel wear",
          "packingSuggestions": "Check-in luggage packed, photo ID ready.",
          "accessibility": "Accessible vehicles",
          "visitorNote": "Arrive at Mashhad station/airport 2 hours prior to departure.",
          "travelDuration": "Approx 1 hour transfer"
        }
      }
    ],
    "durationDays": 3,
    "durationLabel": "3 Days / 2 Nights",
    "travellerTypes": [
      "Pilgrims",
      "Seniors"
    ],
    "accessibilityStatus": "Wheelchair Accessible",
    "childFriendly": true,
    "packageBenefits": [
      "Pilgrimage Guide",
      "Senior Rest Support"
    ],
    "highlights": [
      "Spiritual darshan and guided temple tour in Imam Reza Shrine, Mashhad",
      "Experience peaceful aarti assemblies and sacred rituals",
      "Comfortable transfers to all holy sites"
    ],
    "tips": [
      "Carry valid government ID cards for verification.",
      "Traditional decency wear is recommended inside temple corridors.",
      "Avoid carrying electronics inside the inner sanctum."
    ],
    "itinerarySummary": [
      "Day 1: Arrival in Mashhad: Riverside Aarti & Evening Tea",
      "Day 2: VIP Access to Imam Reza Shrine, Mashhad",
      "Day 3: Souvenir Shopping & Onward Departure from Mashhad"
    ],
    "cancellationSummary": "Get a 100% full refund on cancellations made up to 15 days before the departure. Rescheduling options are fully flexible."
  },
  {
    "id": "islam-mecca-saudi-arabia",
    "title": "Mecca Journey",
    "destinationName": "Mecca",
    "destinations": "Mecca (Makkah, Saudi Arabia)",
    "location": "Makkah, Saudi Arabia",
    "route": [
      "Makkah",
      "Mecca"
    ],
    "mainCategory": "Pilgrimage",
    "subCategory": "Islam",
    "categoryLabel": "Pilgrimage",
    "category": "Pilgrimage",
    "region": "International",
    "image": "/images/tourist-places/pilgrimage/Islam/Mecca, Saudi Arabia.jpg",
    "altText": "Mecca islamic pilgrimage destination in Makkah, Saudi Arabia",
    "duration": "3 Days / 2 Nights",
    "bestSeason": "October–March",
    "pace": "Easy",
    "travellerType": "Senior Friendly",
    "description": "A thoughtfully planned islamic pilgrimage offering comfort, guidance, and a memorable experience.",
    "price": 21700,
    "rating": null,
    "reviewCount": null,
    "seatsLeft": null,
    "recentBookings": null,
    "verified": null,
    "tags": [
      "Pilgrimage",
      "Curated Journey"
    ],
    "seniorFriendly": true,
    "wheelchairAccess": true,
    "vegMeals": true,
    "inclusions": {
      "hotel": true,
      "meals": true,
      "transit": true,
      "guide": true,
      "entryPasses": true,
      "medicalSupport": false,
      "localExperience": false
    },
    "itinerary": [
      {
        "day": 1,
        "title": "Scenic Drive to Makkah & Mecca Gateway",
        "location": "Makkah",
        "overview": "Begin your sacred yatra as you arrive in Makkah. Check into your room at Boutique Star Hotel in Makkah and receive a brief orientation before evening prayers.",
        "schedule": {
          "morning": {
            "title": "Arrival & Escorted Transfer in Makkah",
            "description": "Meet our local travel escort at Makkah transit hub. Receive a traditional welcome and transfer to Boutique Star Hotel in Makkah."
          },
          "afternoon": {
            "title": "Unpack & Courtyard Leisure at Makkah",
            "description": "Check into your sanitized room, unpack your luggage, and enjoy quiet leisure time exploring hotel gardens and facilities."
          },
          "evening": {
            "title": "Skyline Sunset & Regional Delicacies at Mecca",
            "description": "Attend solemn evening prayer assembly near Mecca. Float earthen lamps and soak in peaceful chanting."
          }
        },
        "details": {
          "importantTimings": "Boat Departure: 6:00 AM | Heritage Show: 7:00 PM",
          "meals": "100% Satvik Pure Veg Breakfast & Temple Prasadam Dinner.",
          "transport": "AC Private Chauffeur Vehicle",
          "walkingLevel": "Easy Paced (Flat temple paths, seating available)",
          "stay": "Boutique Star Hotel in Makkah",
          "weather": "Refreshing river mist with mild sun 23°C",
          "dressCode": "Modest traditional attire (shoulders & knees covered)",
          "packingSuggestions": "Breathable linen wear, sunglasses, small currency notes for local shops.",
          "accessibility": "Wheelchair ramps & low step entry vehicle",
          "visitorNote": "Escort coordinator will brief you on timing for Mecca visit.",
          "travelDuration": "Approx 1 to 2 hours transfer"
        }
      },
      {
        "day": 2,
        "title": "Breakfast & Exploration of Mecca",
        "location": "Makkah",
        "overview": "A deep dive into Mecca. Tour inner sanctums, historical galleries, and architectural viewpoints accompanied by an expert guide.",
        "schedule": {
          "morning": {
            "title": "Guided Tour of Mecca",
            "description": "Early morning entry to Mecca. Walk through central courtyards, ancient corridors, and historic halls."
          },
          "afternoon": {
            "title": "Sacred Shrine Darshan & Temple Complex near Makkah",
            "description": "Taste authentic local regional cuisine. Visit local artisan markets specializing in handcrafts native to Saudi Arabia."
          },
          "evening": {
            "title": "Sunset Viewpoint & Cultural Evening",
            "description": "Head to the highest scenic viewpoint overlooking Mecca. Capture sunset photographs followed by evening entertainment."
          }
        },
        "details": {
          "importantTimings": "Boat Departure: 6:00 AM | Heritage Show: 7:00 PM",
          "meals": "Welcome Tender Coconut & Traditional Satvik Thali.",
          "transport": "AC Private Sedan / SUV",
          "walkingLevel": "Moderate (Historical walkways & corridors)",
          "stay": "Boutique Star Hotel in Makkah",
          "weather": "Refreshing river mist with mild sun 23°C",
          "dressCode": "Traditional attire",
          "packingSuggestions": "Sunhat, sunglasses, comfortable walking shoes, light jacket, camera.",
          "accessibility": "Assistive ramps available at main portals",
          "visitorNote": "Follow local heritage guidelines inside Mecca.",
          "travelDuration": "Full day sightseeing approx 5 to 6 hours"
        }
      },
      {
        "day": 3,
        "title": "Souvenir Shopping & Onward Departure from Makkah",
        "location": "Makkah",
        "overview": "Conclude your trip to Mecca with morning shopping for local delicacies and souvenirs, followed by departure transfer.",
        "schedule": {
          "morning": {
            "title": "Handicrafts & Sweet Market Visit",
            "description": "Visit trusted local bazaar stalls to buy regional spices, handmade crafts, and traditional sweets of Makkah."
          },
          "afternoon": {
            "title": "Hotel Checkout & Farewell Lunch",
            "description": "Return to hotel for packing and checkout. Enjoy a farewell lunch before your transfer."
          },
          "evening": {
            "title": "Outbound Departure Transfer",
            "description": "Chauffeur drop to Makkah Airport or Railway Station for your onward journey home."
          }
        },
        "details": {
          "importantTimings": "Checkout: 12:00 PM | Transfer: As per flight/train",
          "meals": "Breakfast & Farewell Lunch included.",
          "transport": "AC Private Transfer Vehicle",
          "walkingLevel": "Easy Paced",
          "stay": "N/A (Day of departure)",
          "weather": "Refreshing river mist with mild sun 23°C",
          "dressCode": "Comfortable travel wear",
          "packingSuggestions": "Check-in luggage packed, photo ID ready.",
          "accessibility": "Accessible vehicles",
          "visitorNote": "Arrive at Makkah station/airport 2 hours prior to departure.",
          "travelDuration": "Approx 1 hour transfer"
        }
      }
    ],
    "durationDays": 3,
    "durationLabel": "3 Days / 2 Nights",
    "travellerTypes": [
      "Pilgrims",
      "Seniors"
    ],
    "accessibilityStatus": "Wheelchair Accessible",
    "childFriendly": true,
    "packageBenefits": [
      "Pilgrimage Guide",
      "Senior Rest Support"
    ],
    "highlights": [
      "Spiritual darshan and guided temple tour in Mecca",
      "Experience peaceful aarti assemblies and sacred rituals",
      "Comfortable transfers to all holy sites"
    ],
    "tips": [
      "Carry valid government ID cards for verification.",
      "Traditional decency wear is recommended inside temple corridors.",
      "Avoid carrying electronics inside the inner sanctum."
    ],
    "itinerarySummary": [
      "Day 1: Scenic Drive to Makkah & Mecca Gateway",
      "Day 2: Breakfast & Exploration of Mecca",
      "Day 3: Souvenir Shopping & Onward Departure from Makkah"
    ],
    "cancellationSummary": "Get a 100% full refund on cancellations made up to 15 days before the departure. Rescheduling options are fully flexible."
  },
  {
    "id": "islam-medina-saudi-arabia",
    "title": "Medina Journey",
    "destinationName": "Medina",
    "destinations": "Medina (Saudi Arabia)",
    "location": "Saudi Arabia",
    "route": [
      "Saudi Arabia",
      "Medina"
    ],
    "mainCategory": "Pilgrimage",
    "subCategory": "Islam",
    "categoryLabel": "Pilgrimage",
    "category": "Pilgrimage",
    "region": "International",
    "image": "/images/tourist-places/pilgrimage/Islam/Medina, Saudi Arabia.jpg",
    "altText": "Medina islamic pilgrimage destination in Saudi Arabia",
    "duration": "3 Days / 2 Nights",
    "bestSeason": "October–March",
    "pace": "Easy",
    "travellerType": "Senior Friendly",
    "description": "A thoughtfully planned islamic pilgrimage offering comfort, guidance, and a memorable experience.",
    "price": 22900,
    "rating": null,
    "reviewCount": null,
    "seatsLeft": null,
    "recentBookings": null,
    "verified": null,
    "tags": [
      "Pilgrimage",
      "Curated Journey"
    ],
    "seniorFriendly": true,
    "wheelchairAccess": true,
    "vegMeals": true,
    "inclusions": {
      "hotel": true,
      "meals": true,
      "transit": true,
      "guide": true,
      "entryPasses": true,
      "medicalSupport": false,
      "localExperience": false
    },
    "itinerary": [
      {
        "day": 1,
        "title": "Arrival in Saudi Arabia: Candlelight Dinner & Courtyard Music",
        "location": "Saudi Arabia",
        "overview": "Begin your sacred yatra as you arrive in Saudi Arabia. Check into your room at Hilltop Panorama Resort near Medina and receive a brief orientation before evening prayers.",
        "schedule": {
          "morning": {
            "title": "Arrival & Escorted Transfer in Saudi Arabia",
            "description": "Meet our local travel escort at Saudi Arabia transit hub. Receive a traditional welcome and transfer to Hilltop Panorama Resort near Medina."
          },
          "afternoon": {
            "title": "Unpack & Courtyard Leisure at Saudi Arabia",
            "description": "Check into your sanitized room, unpack your luggage, and enjoy quiet leisure time exploring hotel gardens and facilities."
          },
          "evening": {
            "title": "Candlelight Dinner & Courtyard Music at Medina",
            "description": "Attend solemn evening prayer assembly near Medina. Float earthen lamps and soak in peaceful chanting."
          }
        },
        "details": {
          "importantTimings": "Gate Entry: 8:00 AM | Evening Light Show: 6:30 PM",
          "meals": "100% Satvik Pure Veg Breakfast & Temple Prasadam Dinner.",
          "transport": "AC Private Chauffeur Vehicle",
          "walkingLevel": "Easy Paced (Flat temple paths, seating available)",
          "stay": "Hilltop Panorama Resort near Medina",
          "weather": "Pleasant breeze with sunny afternoon 24°C",
          "dressCode": "Modest traditional attire (shoulders & knees covered)",
          "packingSuggestions": "Sunhat, sunglasses, comfortable walking shoes, light jacket, camera.",
          "accessibility": "Wheelchair ramps & low step entry vehicle",
          "visitorNote": "Escort coordinator will brief you on timing for Medina visit.",
          "travelDuration": "Approx 1 to 2 hours transfer"
        }
      },
      {
        "day": 2,
        "title": "Panoramic Discovery of Medina",
        "location": "Saudi Arabia",
        "overview": "A deep dive into Medina. Tour inner sanctums, historical galleries, and architectural viewpoints accompanied by an expert guide.",
        "schedule": {
          "morning": {
            "title": "Guided Tour of Medina",
            "description": "Early morning entry to Medina. Walk through central courtyards, ancient corridors, and historic halls."
          },
          "afternoon": {
            "title": "Coastal Promenade & Beach Relax near Saudi Arabia",
            "description": "Taste authentic local regional cuisine. Visit local artisan markets specializing in handcrafts native to Saudi Arabia."
          },
          "evening": {
            "title": "Sunset Viewpoint & Cultural Evening",
            "description": "Head to the highest scenic viewpoint overlooking Medina. Capture sunset photographs followed by evening entertainment."
          }
        },
        "details": {
          "importantTimings": "Gate Entry: 8:00 AM | Evening Light Show: 6:30 PM",
          "meals": "Welcome Tender Coconut & Traditional Satvik Thali.",
          "transport": "AC Private Sedan / SUV",
          "walkingLevel": "Moderate (Historical walkways & corridors)",
          "stay": "Hilltop Panorama Resort near Medina",
          "weather": "Pleasant breeze with sunny afternoon 24°C",
          "dressCode": "Traditional attire",
          "packingSuggestions": "Traditional headscarf, slip-on shoes, reusable water bottle, dry bag.",
          "accessibility": "Assistive ramps available at main portals",
          "visitorNote": "Follow local heritage guidelines inside Medina.",
          "travelDuration": "Full day sightseeing approx 5 to 6 hours"
        }
      },
      {
        "day": 3,
        "title": "Souvenir Shopping & Onward Departure from Saudi Arabia",
        "location": "Saudi Arabia",
        "overview": "Conclude your trip to Medina with morning shopping for local delicacies and souvenirs, followed by departure transfer.",
        "schedule": {
          "morning": {
            "title": "Handicrafts & Sweet Market Visit",
            "description": "Visit trusted local bazaar stalls to buy regional spices, handmade crafts, and traditional sweets of Saudi Arabia."
          },
          "afternoon": {
            "title": "Hotel Checkout & Farewell Lunch",
            "description": "Return to hotel for packing and checkout. Enjoy a farewell lunch before your transfer."
          },
          "evening": {
            "title": "Outbound Departure Transfer",
            "description": "Chauffeur drop to Saudi Arabia Airport or Railway Station for your onward journey home."
          }
        },
        "details": {
          "importantTimings": "Checkout: 12:00 PM | Transfer: As per flight/train",
          "meals": "Breakfast & Farewell Lunch included.",
          "transport": "AC Private Transfer Vehicle",
          "walkingLevel": "Easy Paced",
          "stay": "N/A (Day of departure)",
          "weather": "Pleasant breeze with sunny afternoon 24°C",
          "dressCode": "Comfortable travel wear",
          "packingSuggestions": "Check-in luggage packed, photo ID ready.",
          "accessibility": "Accessible vehicles",
          "visitorNote": "Arrive at Saudi Arabia station/airport 2 hours prior to departure.",
          "travelDuration": "Approx 1 hour transfer"
        }
      }
    ],
    "durationDays": 3,
    "durationLabel": "3 Days / 2 Nights",
    "travellerTypes": [
      "Pilgrims",
      "Seniors"
    ],
    "accessibilityStatus": "Wheelchair Accessible",
    "childFriendly": true,
    "packageBenefits": [
      "Pilgrimage Guide",
      "Senior Rest Support"
    ],
    "highlights": [
      "Spiritual darshan and guided temple tour in Medina",
      "Experience peaceful aarti assemblies and sacred rituals",
      "Comfortable transfers to all holy sites"
    ],
    "tips": [
      "Carry valid government ID cards for verification.",
      "Traditional decency wear is recommended inside temple corridors.",
      "Avoid carrying electronics inside the inner sanctum."
    ],
    "itinerarySummary": [
      "Day 1: Arrival in Saudi Arabia: Candlelight Dinner & Courtyard Music",
      "Day 2: Panoramic Discovery of Medina",
      "Day 3: Souvenir Shopping & Onward Departure from Saudi Arabia"
    ],
    "cancellationSummary": "Get a 100% full refund on cancellations made up to 15 days before the departure. Rescheduling options are fully flexible."
  },
  {
    "id": "islam-old-city-jerusalem-israel",
    "title": "Old City Jerusalem Journey",
    "destinationName": "Old City Jerusalem",
    "destinations": "Old City Jerusalem (Jerusalem, Israel)",
    "location": "Jerusalem, Israel",
    "route": [
      "Jerusalem",
      "Old City Jerusalem"
    ],
    "mainCategory": "Pilgrimage",
    "subCategory": "Islam",
    "categoryLabel": "Pilgrimage",
    "category": "Pilgrimage",
    "region": "International",
    "image": "/images/tourist-places/pilgrimage/Islam/Old City Jerusalem, Israel.jpg",
    "altText": "Old City Jerusalem islamic pilgrimage destination in Jerusalem, Israel",
    "duration": "3 Days / 2 Nights",
    "bestSeason": "October–March",
    "pace": "Easy",
    "travellerType": "Senior Friendly",
    "description": "A thoughtfully planned islamic pilgrimage offering comfort, guidance, and a memorable experience.",
    "price": 14500,
    "rating": null,
    "reviewCount": null,
    "seatsLeft": null,
    "recentBookings": null,
    "verified": null,
    "tags": [
      "Pilgrimage",
      "Curated Journey"
    ],
    "seniorFriendly": true,
    "wheelchairAccess": true,
    "vegMeals": true,
    "inclusions": {
      "hotel": true,
      "meals": true,
      "transit": true,
      "guide": true,
      "entryPasses": true,
      "medicalSupport": false,
      "localExperience": false
    },
    "itinerary": [
      {
        "day": 1,
        "title": "Beginning Your Journey in Jerusalem & Old City Jerusalem Gateway",
        "location": "Jerusalem",
        "overview": "Begin your sacred yatra as you arrive in Jerusalem. Check into your room at Heritage Palace Resort overlooking Old City Jerusalem and receive a brief orientation before evening prayers.",
        "schedule": {
          "morning": {
            "title": "Arrival & Escorted Transfer in Jerusalem",
            "description": "Meet our local travel escort at Jerusalem transit hub. Receive a traditional welcome and transfer to Heritage Palace Resort overlooking Old City Jerusalem."
          },
          "afternoon": {
            "title": "Unpack & Courtyard Leisure at Jerusalem",
            "description": "Check into your sanitized room, unpack your luggage, and enjoy quiet leisure time exploring hotel gardens and facilities."
          },
          "evening": {
            "title": "Heritage Bazaar Promenade at Old City Jerusalem",
            "description": "Attend solemn evening prayer assembly near Old City Jerusalem. Float earthen lamps and soak in peaceful chanting."
          }
        },
        "details": {
          "importantTimings": "Sanctum VIP Slot: 6:30 AM | Bazaar Hours: 4:00 PM - 8:30 PM",
          "meals": "100% Satvik Pure Veg Breakfast & Temple Prasadam Dinner.",
          "transport": "AC Private Chauffeur Vehicle",
          "walkingLevel": "Easy Paced (Flat temple paths, seating available)",
          "stay": "Heritage Palace Resort overlooking Old City Jerusalem",
          "weather": "Cool crisp morning fog clearing to bright 22°C",
          "dressCode": "Modest traditional attire (shoulders & knees covered)",
          "packingSuggestions": "Traditional headscarf, slip-on shoes, reusable water bottle, dry bag.",
          "accessibility": "Wheelchair ramps & low step entry vehicle",
          "visitorNote": "Escort coordinator will brief you on timing for Old City Jerusalem visit.",
          "travelDuration": "Approx 1 to 2 hours transfer"
        }
      },
      {
        "day": 2,
        "title": "Uncovering the Secrets of Old City Jerusalem",
        "location": "Jerusalem",
        "overview": "A deep dive into Old City Jerusalem. Tour inner sanctums, historical galleries, and architectural viewpoints accompanied by an expert guide.",
        "schedule": {
          "morning": {
            "title": "Guided Tour of Old City Jerusalem",
            "description": "Early morning entry to Old City Jerusalem. Walk through central courtyards, ancient corridors, and historic halls."
          },
          "afternoon": {
            "title": "Culinary Tasting & Local Artisan Crafts near Jerusalem",
            "description": "Taste authentic local regional cuisine. Visit local artisan markets specializing in handcrafts native to Israel."
          },
          "evening": {
            "title": "Sunset Viewpoint & Cultural Evening",
            "description": "Head to the highest scenic viewpoint overlooking Old City Jerusalem. Capture sunset photographs followed by evening entertainment."
          }
        },
        "details": {
          "importantTimings": "Sanctum VIP Slot: 6:30 AM | Bazaar Hours: 4:00 PM - 8:30 PM",
          "meals": "Welcome Tender Coconut & Traditional Satvik Thali.",
          "transport": "AC Private Sedan / SUV",
          "walkingLevel": "Moderate (Historical walkways & corridors)",
          "stay": "Heritage Palace Resort overlooking Old City Jerusalem",
          "weather": "Cool crisp morning fog clearing to bright 22°C",
          "dressCode": "Traditional attire",
          "packingSuggestions": "Light cotton wear, camera with telephoto lens, sunscreen lotion, photo ID.",
          "accessibility": "Assistive ramps available at main portals",
          "visitorNote": "Follow local heritage guidelines inside Old City Jerusalem.",
          "travelDuration": "Full day sightseeing approx 5 to 6 hours"
        }
      },
      {
        "day": 3,
        "title": "Souvenir Shopping & Onward Departure from Jerusalem",
        "location": "Jerusalem",
        "overview": "Conclude your trip to Old City Jerusalem with morning shopping for local delicacies and souvenirs, followed by departure transfer.",
        "schedule": {
          "morning": {
            "title": "Handicrafts & Sweet Market Visit",
            "description": "Visit trusted local bazaar stalls to buy regional spices, handmade crafts, and traditional sweets of Jerusalem."
          },
          "afternoon": {
            "title": "Hotel Checkout & Farewell Lunch",
            "description": "Return to hotel for packing and checkout. Enjoy a farewell lunch before your transfer."
          },
          "evening": {
            "title": "Outbound Departure Transfer",
            "description": "Chauffeur drop to Jerusalem Airport or Railway Station for your onward journey home."
          }
        },
        "details": {
          "importantTimings": "Checkout: 12:00 PM | Transfer: As per flight/train",
          "meals": "Breakfast & Farewell Lunch included.",
          "transport": "AC Private Transfer Vehicle",
          "walkingLevel": "Easy Paced",
          "stay": "N/A (Day of departure)",
          "weather": "Cool crisp morning fog clearing to bright 22°C",
          "dressCode": "Comfortable travel wear",
          "packingSuggestions": "Check-in luggage packed, photo ID ready.",
          "accessibility": "Accessible vehicles",
          "visitorNote": "Arrive at Jerusalem station/airport 2 hours prior to departure.",
          "travelDuration": "Approx 1 hour transfer"
        }
      }
    ],
    "durationDays": 3,
    "durationLabel": "3 Days / 2 Nights",
    "travellerTypes": [
      "Pilgrims",
      "Seniors"
    ],
    "accessibilityStatus": "Wheelchair Accessible",
    "childFriendly": true,
    "packageBenefits": [
      "Pilgrimage Guide",
      "Senior Rest Support"
    ],
    "highlights": [
      "Spiritual darshan and guided temple tour in Old City Jerusalem",
      "Experience peaceful aarti assemblies and sacred rituals",
      "Comfortable transfers to all holy sites"
    ],
    "tips": [
      "Carry valid government ID cards for verification.",
      "Traditional decency wear is recommended inside temple corridors.",
      "Avoid carrying electronics inside the inner sanctum."
    ],
    "itinerarySummary": [
      "Day 1: Beginning Your Journey in Jerusalem & Old City Jerusalem Gateway",
      "Day 2: Uncovering the Secrets of Old City Jerusalem",
      "Day 3: Souvenir Shopping & Onward Departure from Jerusalem"
    ],
    "cancellationSummary": "Get a 100% full refund on cancellations made up to 15 days before the departure. Rescheduling options are fully flexible."
  },
  {
    "id": "islam-quba-mosque-medina-saudi-arabia",
    "title": "Quba Mosque, Medina Journey",
    "destinationName": "Quba Mosque, Medina",
    "destinations": "Quba Mosque, Medina (Medina, Saudi Arabia)",
    "location": "Medina, Saudi Arabia",
    "route": [
      "Medina",
      "Quba Mosque, Medina"
    ],
    "mainCategory": "Pilgrimage",
    "subCategory": "Islam",
    "categoryLabel": "Pilgrimage",
    "category": "Pilgrimage",
    "region": "International",
    "image": "/images/tourist-places/pilgrimage/Islam/Quba Mosque, Medina, Saudi Arabia.jpg",
    "altText": "Quba Mosque, Medina islamic pilgrimage destination in Medina, Saudi Arabia",
    "duration": "3 Days / 2 Nights",
    "bestSeason": "October–March",
    "pace": "Easy",
    "travellerType": "Senior Friendly",
    "description": "A thoughtfully planned islamic pilgrimage offering comfort, guidance, and a memorable experience.",
    "price": 15700,
    "rating": null,
    "reviewCount": null,
    "seatsLeft": null,
    "recentBookings": null,
    "verified": null,
    "tags": [
      "Pilgrimage",
      "Curated Journey"
    ],
    "seniorFriendly": true,
    "wheelchairAccess": true,
    "vegMeals": true,
    "inclusions": {
      "hotel": true,
      "meals": true,
      "transit": true,
      "guide": true,
      "entryPasses": true,
      "medicalSupport": false,
      "localExperience": false
    },
    "itinerary": [
      {
        "day": 1,
        "title": "Arrival in Medina: Panoramic Terrace Lounge Session",
        "location": "Medina",
        "overview": "Begin your sacred yatra as you arrive in Medina. Check into your room at Boutique Lakefront Haveli in Medina and receive a brief orientation before evening prayers.",
        "schedule": {
          "morning": {
            "title": "Arrival & Escorted Transfer in Medina",
            "description": "Meet our local travel escort at Medina transit hub. Receive a traditional welcome and transfer to Boutique Lakefront Haveli in Medina."
          },
          "afternoon": {
            "title": "Unpack & Courtyard Leisure at Medina",
            "description": "Check into your sanitized room, unpack your luggage, and enjoy quiet leisure time exploring hotel gardens and facilities."
          },
          "evening": {
            "title": "Panoramic Terrace Lounge Session at Quba Mosque, Medina",
            "description": "Attend solemn evening prayer assembly near Quba Mosque, Medina. Float earthen lamps and soak in peaceful chanting."
          }
        },
        "details": {
          "importantTimings": "Sunrise Tour: 5:45 AM | Museum Hours: 9:30 AM - 5:00 PM",
          "meals": "100% Satvik Pure Veg Breakfast & Temple Prasadam Dinner.",
          "transport": "AC Private Chauffeur Vehicle",
          "walkingLevel": "Easy Paced (Flat temple paths, seating available)",
          "stay": "Boutique Lakefront Haveli in Medina",
          "weather": "Warm tropical sunshine with ocean breeze 27°C",
          "dressCode": "Modest traditional attire (shoulders & knees covered)",
          "packingSuggestions": "Light cotton wear, camera with telephoto lens, sunscreen lotion, photo ID.",
          "accessibility": "Wheelchair ramps & low step entry vehicle",
          "visitorNote": "Escort coordinator will brief you on timing for Quba Mosque, Medina visit.",
          "travelDuration": "Approx 1 to 2 hours transfer"
        }
      },
      {
        "day": 2,
        "title": "Spiritual Morning Prayers at Quba Mosque, Medina",
        "location": "Medina",
        "overview": "A deep dive into Quba Mosque, Medina. Tour inner sanctums, historical galleries, and architectural viewpoints accompanied by an expert guide.",
        "schedule": {
          "morning": {
            "title": "Guided Tour of Quba Mosque, Medina",
            "description": "Early morning entry to Quba Mosque, Medina. Walk through central courtyards, ancient corridors, and historic halls."
          },
          "afternoon": {
            "title": "Excursion to Surrounding Haveli & Gardens near Medina",
            "description": "Taste authentic local regional cuisine. Visit local artisan markets specializing in handcrafts native to Saudi Arabia."
          },
          "evening": {
            "title": "Sunset Viewpoint & Cultural Evening",
            "description": "Head to the highest scenic viewpoint overlooking Quba Mosque, Medina. Capture sunset photographs followed by evening entertainment."
          }
        },
        "details": {
          "importantTimings": "Sunrise Tour: 5:45 AM | Museum Hours: 9:30 AM - 5:00 PM",
          "meals": "Welcome Tender Coconut & Traditional Satvik Thali.",
          "transport": "AC Private Sedan / SUV",
          "walkingLevel": "Moderate (Historical walkways & corridors)",
          "stay": "Boutique Lakefront Haveli in Medina",
          "weather": "Warm tropical sunshine with ocean breeze 27°C",
          "dressCode": "Traditional attire",
          "packingSuggestions": "Comfortable walking socks, power bank, shoulder shawl, daypack.",
          "accessibility": "Assistive ramps available at main portals",
          "visitorNote": "Follow local heritage guidelines inside Quba Mosque, Medina.",
          "travelDuration": "Full day sightseeing approx 5 to 6 hours"
        }
      },
      {
        "day": 3,
        "title": "Souvenir Shopping & Onward Departure from Medina",
        "location": "Medina",
        "overview": "Conclude your trip to Quba Mosque, Medina with morning shopping for local delicacies and souvenirs, followed by departure transfer.",
        "schedule": {
          "morning": {
            "title": "Handicrafts & Sweet Market Visit",
            "description": "Visit trusted local bazaar stalls to buy regional spices, handmade crafts, and traditional sweets of Medina."
          },
          "afternoon": {
            "title": "Hotel Checkout & Farewell Lunch",
            "description": "Return to hotel for packing and checkout. Enjoy a farewell lunch before your transfer."
          },
          "evening": {
            "title": "Outbound Departure Transfer",
            "description": "Chauffeur drop to Medina Airport or Railway Station for your onward journey home."
          }
        },
        "details": {
          "importantTimings": "Checkout: 12:00 PM | Transfer: As per flight/train",
          "meals": "Breakfast & Farewell Lunch included.",
          "transport": "AC Private Transfer Vehicle",
          "walkingLevel": "Easy Paced",
          "stay": "N/A (Day of departure)",
          "weather": "Warm tropical sunshine with ocean breeze 27°C",
          "dressCode": "Comfortable travel wear",
          "packingSuggestions": "Check-in luggage packed, photo ID ready.",
          "accessibility": "Accessible vehicles",
          "visitorNote": "Arrive at Medina station/airport 2 hours prior to departure.",
          "travelDuration": "Approx 1 hour transfer"
        }
      }
    ],
    "durationDays": 3,
    "durationLabel": "3 Days / 2 Nights",
    "travellerTypes": [
      "Pilgrims",
      "Seniors"
    ],
    "accessibilityStatus": "Wheelchair Accessible",
    "childFriendly": true,
    "packageBenefits": [
      "Pilgrimage Guide",
      "Senior Rest Support"
    ],
    "highlights": [
      "Spiritual darshan and guided temple tour in Quba Mosque, Medina",
      "Experience peaceful aarti assemblies and sacred rituals",
      "Comfortable transfers to all holy sites"
    ],
    "tips": [
      "Carry valid government ID cards for verification.",
      "Traditional decency wear is recommended inside temple corridors.",
      "Avoid carrying electronics inside the inner sanctum."
    ],
    "itinerarySummary": [
      "Day 1: Arrival in Medina: Panoramic Terrace Lounge Session",
      "Day 2: Spiritual Morning Prayers at Quba Mosque, Medina",
      "Day 3: Souvenir Shopping & Onward Departure from Medina"
    ],
    "cancellationSummary": "Get a 100% full refund on cancellations made up to 15 days before the departure. Rescheduling options are fully flexible."
  },
  {
    "id": "islam-touba-senegal",
    "title": "Touba Journey",
    "destinationName": "Touba",
    "destinations": "Touba (Diourbel, Senegal)",
    "location": "Diourbel, Senegal",
    "route": [
      "Diourbel",
      "Touba"
    ],
    "mainCategory": "Pilgrimage",
    "subCategory": "Islam",
    "categoryLabel": "Pilgrimage",
    "category": "Pilgrimage",
    "region": "International",
    "image": "/images/tourist-places/pilgrimage/Islam/Touba, Senegal.webp",
    "altText": "Touba islamic pilgrimage destination in Diourbel, Senegal",
    "duration": "3 Days / 2 Nights",
    "bestSeason": "October–March",
    "pace": "Easy",
    "travellerType": "Senior Friendly",
    "description": "A thoughtfully planned islamic pilgrimage offering comfort, guidance, and a memorable experience.",
    "price": 16900,
    "rating": null,
    "reviewCount": null,
    "seatsLeft": null,
    "recentBookings": null,
    "verified": null,
    "tags": [
      "Pilgrimage",
      "Curated Journey"
    ],
    "seniorFriendly": true,
    "wheelchairAccess": true,
    "vegMeals": true,
    "inclusions": {
      "hotel": true,
      "meals": true,
      "transit": true,
      "guide": true,
      "entryPasses": true,
      "medicalSupport": false,
      "localExperience": false
    },
    "itinerary": [
      {
        "day": 1,
        "title": "Spiritual Welcome to Diourbel & Touba Gateway",
        "location": "Diourbel",
        "overview": "Begin your sacred yatra as you arrive in Diourbel. Check into your room at Royal Heritage Villa near Touba and receive a brief orientation before evening prayers.",
        "schedule": {
          "morning": {
            "title": "Arrival & Escorted Transfer in Diourbel",
            "description": "Meet our local travel escort at Diourbel transit hub. Receive a traditional welcome and transfer to Royal Heritage Villa near Touba."
          },
          "afternoon": {
            "title": "Unpack & Courtyard Leisure at Diourbel",
            "description": "Check into your sanitized room, unpack your luggage, and enjoy quiet leisure time exploring hotel gardens and facilities."
          },
          "evening": {
            "title": "Lakeside Stroll & Local Cuisine at Touba",
            "description": "Attend solemn evening prayer assembly near Touba. Float earthen lamps and soak in peaceful chanting."
          }
        },
        "details": {
          "importantTimings": "Guided Walk: 9:00 AM | Sunset Point Departure: 5:15 PM",
          "meals": "100% Satvik Pure Veg Breakfast & Temple Prasadam Dinner.",
          "transport": "AC Private Chauffeur Vehicle",
          "walkingLevel": "Easy Paced (Flat temple paths, seating available)",
          "stay": "Royal Heritage Villa near Touba",
          "weather": "Crisp mountain climate, clear blue skies 19°C",
          "dressCode": "Modest traditional attire (shoulders & knees covered)",
          "packingSuggestions": "Comfortable walking socks, power bank, shoulder shawl, daypack.",
          "accessibility": "Wheelchair ramps & low step entry vehicle",
          "visitorNote": "Escort coordinator will brief you on timing for Touba visit.",
          "travelDuration": "Approx 1 to 2 hours transfer"
        }
      },
      {
        "day": 2,
        "title": "Architectural Tour of Touba",
        "location": "Diourbel",
        "overview": "A deep dive into Touba. Tour inner sanctums, historical galleries, and architectural viewpoints accompanied by an expert guide.",
        "schedule": {
          "morning": {
            "title": "Guided Tour of Touba",
            "description": "Early morning entry to Touba. Walk through central courtyards, ancient corridors, and historic halls."
          },
          "afternoon": {
            "title": "Museum Treasures & Heritage Galleries near Diourbel",
            "description": "Taste authentic local regional cuisine. Visit local artisan markets specializing in handcrafts native to Senegal."
          },
          "evening": {
            "title": "Sunset Viewpoint & Cultural Evening",
            "description": "Head to the highest scenic viewpoint overlooking Touba. Capture sunset photographs followed by evening entertainment."
          }
        },
        "details": {
          "importantTimings": "Guided Walk: 9:00 AM | Sunset Point Departure: 5:15 PM",
          "meals": "Welcome Tender Coconut & Traditional Satvik Thali.",
          "transport": "AC Private Sedan / SUV",
          "walkingLevel": "Moderate (Historical walkways & corridors)",
          "stay": "Royal Heritage Villa near Touba",
          "weather": "Crisp mountain climate, clear blue skies 19°C",
          "dressCode": "Traditional attire",
          "packingSuggestions": "Breathable linen wear, sunglasses, small currency notes for local shops.",
          "accessibility": "Assistive ramps available at main portals",
          "visitorNote": "Follow local heritage guidelines inside Touba.",
          "travelDuration": "Full day sightseeing approx 5 to 6 hours"
        }
      },
      {
        "day": 3,
        "title": "Souvenir Shopping & Onward Departure from Diourbel",
        "location": "Diourbel",
        "overview": "Conclude your trip to Touba with morning shopping for local delicacies and souvenirs, followed by departure transfer.",
        "schedule": {
          "morning": {
            "title": "Handicrafts & Sweet Market Visit",
            "description": "Visit trusted local bazaar stalls to buy regional spices, handmade crafts, and traditional sweets of Diourbel."
          },
          "afternoon": {
            "title": "Hotel Checkout & Farewell Lunch",
            "description": "Return to hotel for packing and checkout. Enjoy a farewell lunch before your transfer."
          },
          "evening": {
            "title": "Outbound Departure Transfer",
            "description": "Chauffeur drop to Diourbel Airport or Railway Station for your onward journey home."
          }
        },
        "details": {
          "importantTimings": "Checkout: 12:00 PM | Transfer: As per flight/train",
          "meals": "Breakfast & Farewell Lunch included.",
          "transport": "AC Private Transfer Vehicle",
          "walkingLevel": "Easy Paced",
          "stay": "N/A (Day of departure)",
          "weather": "Crisp mountain climate, clear blue skies 19°C",
          "dressCode": "Comfortable travel wear",
          "packingSuggestions": "Check-in luggage packed, photo ID ready.",
          "accessibility": "Accessible vehicles",
          "visitorNote": "Arrive at Diourbel station/airport 2 hours prior to departure.",
          "travelDuration": "Approx 1 hour transfer"
        }
      }
    ],
    "durationDays": 3,
    "durationLabel": "3 Days / 2 Nights",
    "travellerTypes": [
      "Pilgrims",
      "Seniors"
    ],
    "accessibilityStatus": "Wheelchair Accessible",
    "childFriendly": true,
    "packageBenefits": [
      "Pilgrimage Guide",
      "Senior Rest Support"
    ],
    "highlights": [
      "Spiritual darshan and guided temple tour in Touba",
      "Experience peaceful aarti assemblies and sacred rituals",
      "Comfortable transfers to all holy sites"
    ],
    "tips": [
      "Carry valid government ID cards for verification.",
      "Traditional decency wear is recommended inside temple corridors.",
      "Avoid carrying electronics inside the inner sanctum."
    ],
    "itinerarySummary": [
      "Day 1: Spiritual Welcome to Diourbel & Touba Gateway",
      "Day 2: Architectural Tour of Touba",
      "Day 3: Souvenir Shopping & Onward Departure from Diourbel"
    ],
    "cancellationSummary": "Get a 100% full refund on cancellations made up to 15 days before the departure. Rescheduling options are fully flexible."
  },
  {
    "id": "islam-umayyad-mosque-damascus-syria",
    "title": "Umayyad Mosque, Damascus Journey",
    "destinationName": "Umayyad Mosque, Damascus",
    "destinations": "Umayyad Mosque, Damascus (Damascus, Syria)",
    "location": "Damascus, Syria",
    "route": [
      "Damascus",
      "Umayyad Mosque, Damascus"
    ],
    "mainCategory": "Pilgrimage",
    "subCategory": "Islam",
    "categoryLabel": "Pilgrimage",
    "category": "Pilgrimage",
    "region": "International",
    "image": "/images/tourist-places/pilgrimage/Islam/Umayyad Mosque, Damascus, Syria.jpg",
    "altText": "Umayyad Mosque, Damascus islamic pilgrimage destination in Damascus, Syria",
    "duration": "3 Days / 2 Nights",
    "bestSeason": "October–March",
    "pace": "Easy",
    "travellerType": "Senior Friendly",
    "description": "A thoughtfully planned islamic pilgrimage offering comfort, guidance, and a memorable experience.",
    "price": 18100,
    "rating": null,
    "reviewCount": null,
    "seatsLeft": null,
    "recentBookings": null,
    "verified": null,
    "tags": [
      "Pilgrimage",
      "Curated Journey"
    ],
    "seniorFriendly": true,
    "wheelchairAccess": true,
    "vegMeals": true,
    "inclusions": {
      "hotel": true,
      "meals": true,
      "transit": true,
      "guide": true,
      "entryPasses": true,
      "medicalSupport": false,
      "localExperience": false
    },
    "itinerary": [
      {
        "day": 1,
        "title": "Arrival in Damascus: Traditional Ceremony & Quiet Reflection",
        "location": "Damascus",
        "overview": "Begin your sacred yatra as you arrive in Damascus. Check into your room at Luxury Eco Lodge in Damascus and receive a brief orientation before evening prayers.",
        "schedule": {
          "morning": {
            "title": "Arrival & Escorted Transfer in Damascus",
            "description": "Meet our local travel escort at Damascus transit hub. Receive a traditional welcome and transfer to Luxury Eco Lodge in Damascus."
          },
          "afternoon": {
            "title": "Unpack & Courtyard Leisure at Damascus",
            "description": "Check into your sanitized room, unpack your luggage, and enjoy quiet leisure time exploring hotel gardens and facilities."
          },
          "evening": {
            "title": "Traditional Ceremony & Quiet Reflection at Umayyad Mosque, Damascus",
            "description": "Attend solemn evening prayer assembly near Umayyad Mosque, Damascus. Float earthen lamps and soak in peaceful chanting."
          }
        },
        "details": {
          "importantTimings": "Boat Departure: 6:00 AM | Heritage Show: 7:00 PM",
          "meals": "100% Satvik Pure Veg Breakfast & Temple Prasadam Dinner.",
          "transport": "AC Private Chauffeur Vehicle",
          "walkingLevel": "Easy Paced (Flat temple paths, seating available)",
          "stay": "Luxury Eco Lodge in Damascus",
          "weather": "Refreshing river mist with mild sun 23°C",
          "dressCode": "Modest traditional attire (shoulders & knees covered)",
          "packingSuggestions": "Breathable linen wear, sunglasses, small currency notes for local shops.",
          "accessibility": "Wheelchair ramps & low step entry vehicle",
          "visitorNote": "Escort coordinator will brief you on timing for Umayyad Mosque, Damascus visit.",
          "travelDuration": "Approx 1 to 2 hours transfer"
        }
      },
      {
        "day": 2,
        "title": "Dawn Guided Expedition of Umayyad Mosque, Damascus",
        "location": "Damascus",
        "overview": "A deep dive into Umayyad Mosque, Damascus. Tour inner sanctums, historical galleries, and architectural viewpoints accompanied by an expert guide.",
        "schedule": {
          "morning": {
            "title": "Guided Tour of Umayyad Mosque, Damascus",
            "description": "Early morning entry to Umayyad Mosque, Damascus. Walk through central courtyards, ancient corridors, and historic halls."
          },
          "afternoon": {
            "title": "Boat Ride & Riverfront Exploration near Damascus",
            "description": "Taste authentic local regional cuisine. Visit local artisan markets specializing in handcrafts native to Syria."
          },
          "evening": {
            "title": "Sunset Viewpoint & Cultural Evening",
            "description": "Head to the highest scenic viewpoint overlooking Umayyad Mosque, Damascus. Capture sunset photographs followed by evening entertainment."
          }
        },
        "details": {
          "importantTimings": "Boat Departure: 6:00 AM | Heritage Show: 7:00 PM",
          "meals": "Welcome Tender Coconut & Traditional Satvik Thali.",
          "transport": "AC Private Sedan / SUV",
          "walkingLevel": "Moderate (Historical walkways & corridors)",
          "stay": "Luxury Eco Lodge in Damascus",
          "weather": "Refreshing river mist with mild sun 23°C",
          "dressCode": "Traditional attire",
          "packingSuggestions": "Sunhat, sunglasses, comfortable walking shoes, light jacket, camera.",
          "accessibility": "Assistive ramps available at main portals",
          "visitorNote": "Follow local heritage guidelines inside Umayyad Mosque, Damascus.",
          "travelDuration": "Full day sightseeing approx 5 to 6 hours"
        }
      },
      {
        "day": 3,
        "title": "Souvenir Shopping & Onward Departure from Damascus",
        "location": "Damascus",
        "overview": "Conclude your trip to Umayyad Mosque, Damascus with morning shopping for local delicacies and souvenirs, followed by departure transfer.",
        "schedule": {
          "morning": {
            "title": "Handicrafts & Sweet Market Visit",
            "description": "Visit trusted local bazaar stalls to buy regional spices, handmade crafts, and traditional sweets of Damascus."
          },
          "afternoon": {
            "title": "Hotel Checkout & Farewell Lunch",
            "description": "Return to hotel for packing and checkout. Enjoy a farewell lunch before your transfer."
          },
          "evening": {
            "title": "Outbound Departure Transfer",
            "description": "Chauffeur drop to Damascus Airport or Railway Station for your onward journey home."
          }
        },
        "details": {
          "importantTimings": "Checkout: 12:00 PM | Transfer: As per flight/train",
          "meals": "Breakfast & Farewell Lunch included.",
          "transport": "AC Private Transfer Vehicle",
          "walkingLevel": "Easy Paced",
          "stay": "N/A (Day of departure)",
          "weather": "Refreshing river mist with mild sun 23°C",
          "dressCode": "Comfortable travel wear",
          "packingSuggestions": "Check-in luggage packed, photo ID ready.",
          "accessibility": "Accessible vehicles",
          "visitorNote": "Arrive at Damascus station/airport 2 hours prior to departure.",
          "travelDuration": "Approx 1 hour transfer"
        }
      }
    ],
    "durationDays": 3,
    "durationLabel": "3 Days / 2 Nights",
    "travellerTypes": [
      "Pilgrims",
      "Seniors"
    ],
    "accessibilityStatus": "Wheelchair Accessible",
    "childFriendly": true,
    "packageBenefits": [
      "Pilgrimage Guide",
      "Senior Rest Support"
    ],
    "highlights": [
      "Spiritual darshan and guided temple tour in Umayyad Mosque, Damascus",
      "Experience peaceful aarti assemblies and sacred rituals",
      "Comfortable transfers to all holy sites"
    ],
    "tips": [
      "Carry valid government ID cards for verification.",
      "Traditional decency wear is recommended inside temple corridors.",
      "Avoid carrying electronics inside the inner sanctum."
    ],
    "itinerarySummary": [
      "Day 1: Arrival in Damascus: Traditional Ceremony & Quiet Reflection",
      "Day 2: Dawn Guided Expedition of Umayyad Mosque, Damascus",
      "Day 3: Souvenir Shopping & Onward Departure from Damascus"
    ],
    "cancellationSummary": "Get a 100% full refund on cancellations made up to 15 days before the departure. Rescheduling options are fully flexible."
  }
];
