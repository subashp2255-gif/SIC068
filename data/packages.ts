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
    "title": "Alleppey Backwaters Experience",
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
        "title": "Arrival & Settle in at Alappuzha",
        "location": "Alappuzha",
        "overview": "Welcome to your yatra. Arrive in Alappuzha, transfer to your stay, and rest before your sightseeing tour.",
        "schedule": {
          "morning": {
            "title": "Arrival & Check-in",
            "description": "Arrive at the nearest transit hub. Meet our coordinator and transfer to your pre-booked stay in Alappuzha."
          },
          "afternoon": {
            "title": "Leisure & Rest",
            "description": "Check into your hotel room, unpack your luggage, and rest to recover from your flight or train journey."
          },
          "evening": {
            "title": "Orientation Walk",
            "description": "Meet your local guide for a small walk around the neighborhood. Receive a detailed brief on local customs."
          }
        },
        "details": {
          "importantTimings": "Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM",
          "meals": "Welcome Drink & Buffet Dinner included.",
          "transport": "AC Shuttle Transit for close proximity site transfers and passenger drops.",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Heritage Boutique Resort (Comfortable rooms, garden paths, active room services)",
          "weather": "Warm and sunny afternoon, ideal for outdoor sightseeing, average temp 24°C.",
          "dressCode": "Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.",
          "packingSuggestions": "Comfortable travel footwear, photo ID, essential personal medication, daypack.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 1 to 2 hours transfer"
        }
      },
      {
        "day": 2,
        "title": "Explore Punnamada Lake Canal Cruise",
        "location": "Alappuzha",
        "overview": "Spend your day visiting Punnamada Lake Canal Cruise, the primary attraction in Alleppey Backwaters, accompanied by our expert guide.",
        "schedule": {
          "morning": {
            "title": "Guided Tour of Punnamada Lake Canal Cruise",
            "description": "Early morning visit to Punnamada Lake Canal Cruise to avoid crowds. Learn about the heritage and unique history of this landmark."
          },
          "afternoon": {
            "title": "Local Traditional Lunch",
            "description": "Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings."
          },
          "evening": {
            "title": "Evening walk at Pathiramanal Island Walk",
            "description": "Stroll around Pathiramanal Island Walk for scenic sunset views. Capture great family photos as the evening lights turn on."
          }
        },
        "details": {
          "importantTimings": "Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM",
          "meals": "Complimentary Breakfast & Traditional Lunch.",
          "transport": "AC Private Sedan with professional local driver (includes first-aid kit and bottled water).",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Lakefront Guest House (Scenic balcony views, hot water, western-style bathrooms)",
          "weather": "Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.",
          "dressCode": "Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.",
          "packingSuggestions": "Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 3 to 4 hours local tour"
        }
      },
      {
        "day": 3,
        "title": "Excursion to Champakulam Kalloorkadu Church",
        "location": "Alappuzha",
        "overview": "Excursion to Champakulam Kalloorkadu Church and surrounding craft villages to experience native arts, handlooms, and culture.",
        "schedule": {
          "morning": {
            "title": "Nature Walk at Champakulam Kalloorkadu Church",
            "description": "Guided scenic walk near the lake or parks surrounding Champakulam Kalloorkadu Church. Enjoy quiet reflection and fresh air."
          },
          "afternoon": {
            "title": "Local Handloom Visit",
            "description": "Visit local cottage industries to see artisans hand-weaving fabrics and crafting traditional wooden toys."
          },
          "evening": {
            "title": "Cultural Dance & Music Show",
            "description": "Attend a traditional cultural presentation depicting historical folk tales, followed by dinner."
          }
        },
        "details": {
          "importantTimings": "Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM",
          "meals": "Breakfast & Special Dinner Buffet.",
          "transport": "AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Premium Executive Hotel (AC rooms, elevator access, 24/7 front desk assistance)",
          "weather": "Perfect travel weather with low humidity and comfortable evening temperature 20°C.",
          "dressCode": "Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.",
          "packingSuggestions": "Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 3 to 4 hours local tour"
        }
      },
      {
        "day": 4,
        "title": "Souvenir Shopping & Onward Departure",
        "location": "Alappuzha",
        "overview": "Conclude your memorable stay in Alappuzha with local craft shopping, checkout, and outbound transfers.",
        "schedule": {
          "morning": {
            "title": "Handicrafts Shopping",
            "description": "Visit local co-operative markets to buy traditional souvenirs, regional sweets, or native organic spices."
          },
          "afternoon": {
            "title": "Check-out & Packing",
            "description": "Return to your hotel, pack your bags, clear any local incidentals, and check out from your rooms."
          },
          "evening": {
            "title": "Outbound Transfer",
            "description": "Board your private vehicle transfer to the airport or railway station for your onward return journey home."
          }
        },
        "details": {
          "importantTimings": "Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM",
          "meals": "Complimentary Healthy Breakfast included.",
          "transport": "AC Private SUV for comfortable road transfers with regular rest stops.",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Standard Comfort Hotel (Fully sanitized rooms, private bathroom, free Wi-Fi, desk space)",
          "weather": "Clear sky, comfortable morning temperature 21°C, warming up to 26°C by noon.",
          "dressCode": "Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.",
          "packingSuggestions": "Walking socks, small daypack for personal belongings, sanitizers, light jacket.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 1 to 2 hours transfer"
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
      "Day 1: Arrival & Welcome at Alleppey Backwaters",
      "Day 2: Guided Sightseeing & Exploration of Alleppey Backwaters",
      "Day 3: Departure"
    ],
    "cancellationSummary": "Get a 100% full refund on cancellations made up to 15 days before the departure. Rescheduling options are fully flexible."
  },
  {
    "id": "family-amber-fort",
    "title": "Amber Fort Experience",
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
        "title": "Arrival & Settle in at Jaipur",
        "location": "Jaipur",
        "overview": "Welcome to your yatra. Arrive in Jaipur, transfer to your stay, and rest before your sightseeing tour.",
        "schedule": {
          "morning": {
            "title": "Arrival & Check-in",
            "description": "Arrive at the nearest transit hub. Meet our coordinator and transfer to your pre-booked stay in Jaipur."
          },
          "afternoon": {
            "title": "Leisure & Rest",
            "description": "Check into your hotel room, unpack your luggage, and rest to recover from your flight or train journey."
          },
          "evening": {
            "title": "Orientation Walk",
            "description": "Meet your local guide for a small walk around the neighborhood. Receive a detailed brief on local customs."
          }
        },
        "details": {
          "importantTimings": "Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM",
          "meals": "Welcome Drink & Buffet Dinner included.",
          "transport": "AC Shuttle Transit for close proximity site transfers and passenger drops.",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Heritage Boutique Resort (Comfortable rooms, garden paths, active room services)",
          "weather": "Warm and sunny afternoon, ideal for outdoor sightseeing, average temp 24°C.",
          "dressCode": "Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.",
          "packingSuggestions": "Comfortable travel footwear, photo ID, essential personal medication, daypack.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 1 to 2 hours transfer"
        }
      },
      {
        "day": 2,
        "title": "Explore Amber Fort Sheesh Mahal",
        "location": "Jaipur",
        "overview": "Spend your day visiting Amber Fort Sheesh Mahal, the primary attraction in Amber Fort, accompanied by our expert guide.",
        "schedule": {
          "morning": {
            "title": "Guided Tour of Amber Fort Sheesh Mahal",
            "description": "Early morning visit to Amber Fort Sheesh Mahal to avoid crowds. Learn about the heritage and unique history of this landmark."
          },
          "afternoon": {
            "title": "Local Traditional Lunch",
            "description": "Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings."
          },
          "evening": {
            "title": "Evening walk at Jaigarh Fort & Jaivana Cannon",
            "description": "Stroll around Jaigarh Fort & Jaivana Cannon for scenic sunset views. Capture great family photos as the evening lights turn on."
          }
        },
        "details": {
          "importantTimings": "Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM",
          "meals": "Complimentary Breakfast & Traditional Lunch.",
          "transport": "AC Private Sedan with professional local driver (includes first-aid kit and bottled water).",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Lakefront Guest House (Scenic balcony views, hot water, western-style bathrooms)",
          "weather": "Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.",
          "dressCode": "Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.",
          "packingSuggestions": "Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 3 to 4 hours local tour"
        }
      },
      {
        "day": 3,
        "title": "Excursion to City Palace & Jantar Mantar",
        "location": "Jaipur",
        "overview": "Excursion to City Palace & Jantar Mantar and surrounding craft villages to experience native arts, handlooms, and culture.",
        "schedule": {
          "morning": {
            "title": "Nature Walk at City Palace & Jantar Mantar",
            "description": "Guided scenic walk near the lake or parks surrounding City Palace & Jantar Mantar. Enjoy quiet reflection and fresh air."
          },
          "afternoon": {
            "title": "Local Handloom Visit",
            "description": "Visit local cottage industries to see artisans hand-weaving fabrics and crafting traditional wooden toys."
          },
          "evening": {
            "title": "Cultural Dance & Music Show",
            "description": "Attend a traditional cultural presentation depicting historical folk tales, followed by dinner."
          }
        },
        "details": {
          "importantTimings": "Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM",
          "meals": "Breakfast & Special Dinner Buffet.",
          "transport": "AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Premium Executive Hotel (AC rooms, elevator access, 24/7 front desk assistance)",
          "weather": "Perfect travel weather with low humidity and comfortable evening temperature 20°C.",
          "dressCode": "Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.",
          "packingSuggestions": "Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 3 to 4 hours local tour"
        }
      },
      {
        "day": 4,
        "title": "Souvenir Shopping & Onward Departure",
        "location": "Jaipur",
        "overview": "Conclude your memorable stay in Jaipur with local craft shopping, checkout, and outbound transfers.",
        "schedule": {
          "morning": {
            "title": "Handicrafts Shopping",
            "description": "Visit local co-operative markets to buy traditional souvenirs, regional sweets, or native organic spices."
          },
          "afternoon": {
            "title": "Check-out & Packing",
            "description": "Return to your hotel, pack your bags, clear any local incidentals, and check out from your rooms."
          },
          "evening": {
            "title": "Outbound Transfer",
            "description": "Board your private vehicle transfer to the airport or railway station for your onward return journey home."
          }
        },
        "details": {
          "importantTimings": "Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM",
          "meals": "Complimentary Healthy Breakfast included.",
          "transport": "AC Private SUV for comfortable road transfers with regular rest stops.",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Standard Comfort Hotel (Fully sanitized rooms, private bathroom, free Wi-Fi, desk space)",
          "weather": "Clear sky, comfortable morning temperature 21°C, warming up to 26°C by noon.",
          "dressCode": "Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.",
          "packingSuggestions": "Walking socks, small daypack for personal belongings, sanitizers, light jacket.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 1 to 2 hours transfer"
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
      "Day 1: Arrival & Welcome at Amber Fort",
      "Day 2: Guided Sightseeing & Exploration of Amber Fort",
      "Day 3: Departure"
    ],
    "cancellationSummary": "Get a 100% full refund on cancellations made up to 15 days before the departure. Rescheduling options are fully flexible."
  },
  {
    "id": "family-athirappilly-waterfalls",
    "title": "Athirappilly Waterfalls Experience",
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
        "title": "Arrival & Settle in at Thrissur",
        "location": "Thrissur",
        "overview": "Welcome to your yatra. Arrive in Thrissur, transfer to your stay, and rest before your sightseeing tour.",
        "schedule": {
          "morning": {
            "title": "Arrival & Check-in",
            "description": "Arrive at the nearest transit hub. Meet our coordinator and transfer to your pre-booked stay in Thrissur."
          },
          "afternoon": {
            "title": "Leisure & Rest",
            "description": "Check into your hotel room, unpack your luggage, and rest to recover from your flight or train journey."
          },
          "evening": {
            "title": "Orientation Walk",
            "description": "Meet your local guide for a small walk around the neighborhood. Receive a detailed brief on local customs."
          }
        },
        "details": {
          "importantTimings": "Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM",
          "meals": "Welcome Drink & Buffet Dinner included.",
          "transport": "AC Shuttle Transit for close proximity site transfers and passenger drops.",
          "walkingLevel": "Moderate Paced (Gentle staircases, guide assistance available)",
          "stay": "Heritage Boutique Resort (Comfortable rooms, garden paths, active room services)",
          "weather": "Warm and sunny afternoon, ideal for outdoor sightseeing, average temp 24°C.",
          "dressCode": "Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.",
          "packingSuggestions": "Comfortable travel footwear, photo ID, essential personal medication, daypack.",
          "accessibility": "Not recommended for guests requiring wheelchair support due to steep stairs and terrain.",
          "visitorNote": "Expect moderate physical movement. Wear athletic shoes with excellent grip.",
          "travelDuration": "Approx. 1 to 2 hours transfer"
        }
      },
      {
        "day": 2,
        "title": "Explore Athirappilly Main Falls Trek",
        "location": "Thrissur",
        "overview": "Spend your day visiting Athirappilly Main Falls Trek, the primary attraction in Athirappilly Waterfalls, accompanied by our expert guide.",
        "schedule": {
          "morning": {
            "title": "Guided Tour of Athirappilly Main Falls Trek",
            "description": "Early morning visit to Athirappilly Main Falls Trek to avoid crowds. Learn about the heritage and unique history of this landmark."
          },
          "afternoon": {
            "title": "Local Traditional Lunch",
            "description": "Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings."
          },
          "evening": {
            "title": "Evening walk at Ezhattumugham Nature Village",
            "description": "Stroll around Ezhattumugham Nature Village for scenic sunset views. Capture great family photos as the evening lights turn on."
          }
        },
        "details": {
          "importantTimings": "Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM",
          "meals": "Complimentary Breakfast & Traditional Lunch.",
          "transport": "AC Private Sedan with professional local driver (includes first-aid kit and bottled water).",
          "walkingLevel": "Moderate Paced (Gentle staircases, guide assistance available)",
          "stay": "Lakefront Guest House (Scenic balcony views, hot water, western-style bathrooms)",
          "weather": "Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.",
          "dressCode": "Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.",
          "packingSuggestions": "Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.",
          "accessibility": "Not recommended for guests requiring wheelchair support due to steep stairs and terrain.",
          "visitorNote": "Expect moderate physical movement. Wear athletic shoes with excellent grip.",
          "travelDuration": "Approx. 3 to 4 hours local tour"
        }
      },
      {
        "day": 3,
        "title": "Excursion to Thumboormuzhi Butterfly Park",
        "location": "Thrissur",
        "overview": "Excursion to Thumboormuzhi Butterfly Park and surrounding craft villages to experience native arts, handlooms, and culture.",
        "schedule": {
          "morning": {
            "title": "Nature Walk at Thumboormuzhi Butterfly Park",
            "description": "Guided scenic walk near the lake or parks surrounding Thumboormuzhi Butterfly Park. Enjoy quiet reflection and fresh air."
          },
          "afternoon": {
            "title": "Local Handloom Visit",
            "description": "Visit local cottage industries to see artisans hand-weaving fabrics and crafting traditional wooden toys."
          },
          "evening": {
            "title": "Cultural Dance & Music Show",
            "description": "Attend a traditional cultural presentation depicting historical folk tales, followed by dinner."
          }
        },
        "details": {
          "importantTimings": "Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM",
          "meals": "Breakfast & Special Dinner Buffet.",
          "transport": "AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).",
          "walkingLevel": "Moderate Paced (Gentle staircases, guide assistance available)",
          "stay": "Premium Executive Hotel (AC rooms, elevator access, 24/7 front desk assistance)",
          "weather": "Perfect travel weather with low humidity and comfortable evening temperature 20°C.",
          "dressCode": "Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.",
          "packingSuggestions": "Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.",
          "accessibility": "Not recommended for guests requiring wheelchair support due to steep stairs and terrain.",
          "visitorNote": "Expect moderate physical movement. Wear athletic shoes with excellent grip.",
          "travelDuration": "Approx. 3 to 4 hours local tour"
        }
      },
      {
        "day": 4,
        "title": "Souvenir Shopping & Onward Departure",
        "location": "Thrissur",
        "overview": "Conclude your memorable stay in Thrissur with local craft shopping, checkout, and outbound transfers.",
        "schedule": {
          "morning": {
            "title": "Handicrafts Shopping",
            "description": "Visit local co-operative markets to buy traditional souvenirs, regional sweets, or native organic spices."
          },
          "afternoon": {
            "title": "Check-out & Packing",
            "description": "Return to your hotel, pack your bags, clear any local incidentals, and check out from your rooms."
          },
          "evening": {
            "title": "Outbound Transfer",
            "description": "Board your private vehicle transfer to the airport or railway station for your onward return journey home."
          }
        },
        "details": {
          "importantTimings": "Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM",
          "meals": "Complimentary Healthy Breakfast included.",
          "transport": "AC Private SUV for comfortable road transfers with regular rest stops.",
          "walkingLevel": "Moderate Paced (Gentle staircases, guide assistance available)",
          "stay": "Standard Comfort Hotel (Fully sanitized rooms, private bathroom, free Wi-Fi, desk space)",
          "weather": "Clear sky, comfortable morning temperature 21°C, warming up to 26°C by noon.",
          "dressCode": "Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.",
          "packingSuggestions": "Walking socks, small daypack for personal belongings, sanitizers, light jacket.",
          "accessibility": "Not recommended for guests requiring wheelchair support due to steep stairs and terrain.",
          "visitorNote": "Expect moderate physical movement. Wear athletic shoes with excellent grip.",
          "travelDuration": "Approx. 1 to 2 hours transfer"
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
      "Day 1: Arrival & Welcome at Athirappilly Waterfalls",
      "Day 2: Guided Sightseeing & Exploration of Athirappilly Waterfalls",
      "Day 3: Departure"
    ],
    "cancellationSummary": "Get a 100% full refund on cancellations made up to 15 days before the departure. Rescheduling options are fully flexible."
  },
  {
    "id": "family-big-ben",
    "title": "Big Ben Experience",
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
        "title": "Arrival & Settle in at London",
        "location": "London",
        "overview": "Welcome to your yatra. Arrive in London, transfer to your stay, and rest before your sightseeing tour.",
        "schedule": {
          "morning": {
            "title": "Arrival & Check-in",
            "description": "Arrive at the nearest transit hub. Meet our coordinator and transfer to your pre-booked stay in London."
          },
          "afternoon": {
            "title": "Leisure & Rest",
            "description": "Check into your hotel room, unpack your luggage, and rest to recover from your flight or train journey."
          },
          "evening": {
            "title": "Orientation Walk",
            "description": "Meet your local guide for a small walk around the neighborhood. Receive a detailed brief on local customs."
          }
        },
        "details": {
          "importantTimings": "Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM",
          "meals": "Welcome Drink & Buffet Dinner included.",
          "transport": "AC Shuttle Transit for close proximity site transfers and passenger drops.",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Heritage Boutique Resort (Comfortable rooms, garden paths, active room services)",
          "weather": "Warm and sunny afternoon, ideal for outdoor sightseeing, average temp 24°C.",
          "dressCode": "Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.",
          "packingSuggestions": "Comfortable travel footwear, photo ID, essential personal medication, daypack.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 1 to 2 hours transfer"
        }
      },
      {
        "day": 2,
        "title": "Explore Big Ben Heritage Centre",
        "location": "London",
        "overview": "Spend your day visiting Big Ben Heritage Centre, the primary attraction in Big Ben, accompanied by our expert guide.",
        "schedule": {
          "morning": {
            "title": "Guided Tour of Big Ben Heritage Centre",
            "description": "Early morning visit to Big Ben Heritage Centre to avoid crowds. Learn about the heritage and unique history of this landmark."
          },
          "afternoon": {
            "title": "Local Traditional Lunch",
            "description": "Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings."
          },
          "evening": {
            "title": "Evening walk at Big Ben Panoramic Viewpoint",
            "description": "Stroll around Big Ben Panoramic Viewpoint for scenic sunset views. Capture great family photos as the evening lights turn on."
          }
        },
        "details": {
          "importantTimings": "Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM",
          "meals": "Complimentary Breakfast & Traditional Lunch.",
          "transport": "AC Private Sedan with professional local driver (includes first-aid kit and bottled water).",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Lakefront Guest House (Scenic balcony views, hot water, western-style bathrooms)",
          "weather": "Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.",
          "dressCode": "Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.",
          "packingSuggestions": "Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 3 to 4 hours local tour"
        }
      },
      {
        "day": 3,
        "title": "Excursion to Big Ben Local Culture Park",
        "location": "London",
        "overview": "Excursion to Big Ben Local Culture Park and surrounding craft villages to experience native arts, handlooms, and culture.",
        "schedule": {
          "morning": {
            "title": "Nature Walk at Big Ben Local Culture Park",
            "description": "Guided scenic walk near the lake or parks surrounding Big Ben Local Culture Park. Enjoy quiet reflection and fresh air."
          },
          "afternoon": {
            "title": "Local Handloom Visit",
            "description": "Visit local cottage industries to see artisans hand-weaving fabrics and crafting traditional wooden toys."
          },
          "evening": {
            "title": "Cultural Dance & Music Show",
            "description": "Attend a traditional cultural presentation depicting historical folk tales, followed by dinner."
          }
        },
        "details": {
          "importantTimings": "Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM",
          "meals": "Breakfast & Special Dinner Buffet.",
          "transport": "AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Premium Executive Hotel (AC rooms, elevator access, 24/7 front desk assistance)",
          "weather": "Perfect travel weather with low humidity and comfortable evening temperature 20°C.",
          "dressCode": "Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.",
          "packingSuggestions": "Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 3 to 4 hours local tour"
        }
      },
      {
        "day": 4,
        "title": "Souvenir Shopping & Onward Departure",
        "location": "London",
        "overview": "Conclude your memorable stay in London with local craft shopping, checkout, and outbound transfers.",
        "schedule": {
          "morning": {
            "title": "Handicrafts Shopping",
            "description": "Visit local co-operative markets to buy traditional souvenirs, regional sweets, or native organic spices."
          },
          "afternoon": {
            "title": "Check-out & Packing",
            "description": "Return to your hotel, pack your bags, clear any local incidentals, and check out from your rooms."
          },
          "evening": {
            "title": "Outbound Transfer",
            "description": "Board your private vehicle transfer to the airport or railway station for your onward return journey home."
          }
        },
        "details": {
          "importantTimings": "Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM",
          "meals": "Complimentary Healthy Breakfast included.",
          "transport": "AC Private SUV for comfortable road transfers with regular rest stops.",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Standard Comfort Hotel (Fully sanitized rooms, private bathroom, free Wi-Fi, desk space)",
          "weather": "Clear sky, comfortable morning temperature 21°C, warming up to 26°C by noon.",
          "dressCode": "Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.",
          "packingSuggestions": "Walking socks, small daypack for personal belongings, sanitizers, light jacket.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 1 to 2 hours transfer"
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
      "Day 1: Arrival & Welcome at Big Ben",
      "Day 2: Guided Sightseeing & Exploration of Big Ben",
      "Day 3: Departure"
    ],
    "cancellationSummary": "Get a 100% full refund on cancellations made up to 15 days before the departure. Rescheduling options are fully flexible."
  },
  {
    "id": "family-burj-khalifa",
    "title": "Burj Khalifa Experience",
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
        "title": "Arrival & Settle in at Dubai",
        "location": "Dubai",
        "overview": "Welcome to your yatra. Arrive in Dubai, transfer to your stay, and rest before your sightseeing tour.",
        "schedule": {
          "morning": {
            "title": "Arrival & Check-in",
            "description": "Arrive at the nearest transit hub. Meet our coordinator and transfer to your pre-booked stay in Dubai."
          },
          "afternoon": {
            "title": "Leisure & Rest",
            "description": "Check into your hotel room, unpack your luggage, and rest to recover from your flight or train journey."
          },
          "evening": {
            "title": "Orientation Walk",
            "description": "Meet your local guide for a small walk around the neighborhood. Receive a detailed brief on local customs."
          }
        },
        "details": {
          "importantTimings": "Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM",
          "meals": "Welcome Drink & Buffet Dinner included.",
          "transport": "AC Shuttle Transit for close proximity site transfers and passenger drops.",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Heritage Boutique Resort (Comfortable rooms, garden paths, active room services)",
          "weather": "Warm and sunny afternoon, ideal for outdoor sightseeing, average temp 24°C.",
          "dressCode": "Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.",
          "packingSuggestions": "Comfortable travel footwear, photo ID, essential personal medication, daypack.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 1 to 2 hours transfer"
        }
      },
      {
        "day": 2,
        "title": "Explore Burj Khalifa Heritage Centre",
        "location": "Dubai",
        "overview": "Spend your day visiting Burj Khalifa Heritage Centre, the primary attraction in Burj Khalifa, accompanied by our expert guide.",
        "schedule": {
          "morning": {
            "title": "Guided Tour of Burj Khalifa Heritage Centre",
            "description": "Early morning visit to Burj Khalifa Heritage Centre to avoid crowds. Learn about the heritage and unique history of this landmark."
          },
          "afternoon": {
            "title": "Local Traditional Lunch",
            "description": "Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings."
          },
          "evening": {
            "title": "Evening walk at Burj Khalifa Panoramic Viewpoint",
            "description": "Stroll around Burj Khalifa Panoramic Viewpoint for scenic sunset views. Capture great family photos as the evening lights turn on."
          }
        },
        "details": {
          "importantTimings": "Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM",
          "meals": "Complimentary Breakfast & Traditional Lunch.",
          "transport": "AC Private Sedan with professional local driver (includes first-aid kit and bottled water).",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Lakefront Guest House (Scenic balcony views, hot water, western-style bathrooms)",
          "weather": "Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.",
          "dressCode": "Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.",
          "packingSuggestions": "Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 3 to 4 hours local tour"
        }
      },
      {
        "day": 3,
        "title": "Excursion to Burj Khalifa Local Culture Park",
        "location": "Dubai",
        "overview": "Excursion to Burj Khalifa Local Culture Park and surrounding craft villages to experience native arts, handlooms, and culture.",
        "schedule": {
          "morning": {
            "title": "Nature Walk at Burj Khalifa Local Culture Park",
            "description": "Guided scenic walk near the lake or parks surrounding Burj Khalifa Local Culture Park. Enjoy quiet reflection and fresh air."
          },
          "afternoon": {
            "title": "Local Handloom Visit",
            "description": "Visit local cottage industries to see artisans hand-weaving fabrics and crafting traditional wooden toys."
          },
          "evening": {
            "title": "Cultural Dance & Music Show",
            "description": "Attend a traditional cultural presentation depicting historical folk tales, followed by dinner."
          }
        },
        "details": {
          "importantTimings": "Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM",
          "meals": "Breakfast & Special Dinner Buffet.",
          "transport": "AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Premium Executive Hotel (AC rooms, elevator access, 24/7 front desk assistance)",
          "weather": "Perfect travel weather with low humidity and comfortable evening temperature 20°C.",
          "dressCode": "Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.",
          "packingSuggestions": "Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 3 to 4 hours local tour"
        }
      },
      {
        "day": 4,
        "title": "Souvenir Shopping & Onward Departure",
        "location": "Dubai",
        "overview": "Conclude your memorable stay in Dubai with local craft shopping, checkout, and outbound transfers.",
        "schedule": {
          "morning": {
            "title": "Handicrafts Shopping",
            "description": "Visit local co-operative markets to buy traditional souvenirs, regional sweets, or native organic spices."
          },
          "afternoon": {
            "title": "Check-out & Packing",
            "description": "Return to your hotel, pack your bags, clear any local incidentals, and check out from your rooms."
          },
          "evening": {
            "title": "Outbound Transfer",
            "description": "Board your private vehicle transfer to the airport or railway station for your onward return journey home."
          }
        },
        "details": {
          "importantTimings": "Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM",
          "meals": "Complimentary Healthy Breakfast included.",
          "transport": "AC Private SUV for comfortable road transfers with regular rest stops.",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Standard Comfort Hotel (Fully sanitized rooms, private bathroom, free Wi-Fi, desk space)",
          "weather": "Clear sky, comfortable morning temperature 21°C, warming up to 26°C by noon.",
          "dressCode": "Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.",
          "packingSuggestions": "Walking socks, small daypack for personal belongings, sanitizers, light jacket.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 1 to 2 hours transfer"
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
      "Day 1: Arrival & Welcome at Burj Khalifa",
      "Day 2: Guided Sightseeing & Exploration of Burj Khalifa",
      "Day 3: Departure"
    ],
    "cancellationSummary": "Get a 100% full refund on cancellations made up to 15 days before the departure. Rescheduling options are fully flexible."
  },
  {
    "id": "family-chitrakote-waterfalls",
    "title": "Chitrakote Waterfalls Experience",
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
        "title": "Arrival & Settle in at Bastar",
        "location": "Bastar",
        "overview": "Welcome to your yatra. Arrive in Bastar, transfer to your stay, and rest before your sightseeing tour.",
        "schedule": {
          "morning": {
            "title": "Arrival & Check-in",
            "description": "Arrive at the nearest transit hub. Meet our coordinator and transfer to your pre-booked stay in Bastar."
          },
          "afternoon": {
            "title": "Leisure & Rest",
            "description": "Check into your hotel room, unpack your luggage, and rest to recover from your flight or train journey."
          },
          "evening": {
            "title": "Orientation Walk",
            "description": "Meet your local guide for a small walk around the neighborhood. Receive a detailed brief on local customs."
          }
        },
        "details": {
          "importantTimings": "Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM",
          "meals": "Welcome Drink & Buffet Dinner included.",
          "transport": "AC Shuttle Transit for close proximity site transfers and passenger drops.",
          "walkingLevel": "Moderate Paced (Gentle staircases, guide assistance available)",
          "stay": "Heritage Boutique Resort (Comfortable rooms, garden paths, active room services)",
          "weather": "Warm and sunny afternoon, ideal for outdoor sightseeing, average temp 24°C.",
          "dressCode": "Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.",
          "packingSuggestions": "Comfortable travel footwear, photo ID, essential personal medication, daypack.",
          "accessibility": "Not recommended for guests requiring wheelchair support due to steep stairs and terrain.",
          "visitorNote": "Expect moderate physical movement. Wear athletic shoes with excellent grip.",
          "travelDuration": "Approx. 1 to 2 hours transfer"
        }
      },
      {
        "day": 2,
        "title": "Explore Chitrakote Waterfalls Heritage Centre",
        "location": "Bastar",
        "overview": "Spend your day visiting Chitrakote Waterfalls Heritage Centre, the primary attraction in Chitrakote Waterfalls, accompanied by our expert guide.",
        "schedule": {
          "morning": {
            "title": "Guided Tour of Chitrakote Waterfalls Heritage Centre",
            "description": "Early morning visit to Chitrakote Waterfalls Heritage Centre to avoid crowds. Learn about the heritage and unique history of this landmark."
          },
          "afternoon": {
            "title": "Local Traditional Lunch",
            "description": "Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings."
          },
          "evening": {
            "title": "Evening walk at Chitrakote Waterfalls Panoramic Viewpoint",
            "description": "Stroll around Chitrakote Waterfalls Panoramic Viewpoint for scenic sunset views. Capture great family photos as the evening lights turn on."
          }
        },
        "details": {
          "importantTimings": "Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM",
          "meals": "Complimentary Breakfast & Traditional Lunch.",
          "transport": "AC Private Sedan with professional local driver (includes first-aid kit and bottled water).",
          "walkingLevel": "Moderate Paced (Gentle staircases, guide assistance available)",
          "stay": "Lakefront Guest House (Scenic balcony views, hot water, western-style bathrooms)",
          "weather": "Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.",
          "dressCode": "Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.",
          "packingSuggestions": "Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.",
          "accessibility": "Not recommended for guests requiring wheelchair support due to steep stairs and terrain.",
          "visitorNote": "Expect moderate physical movement. Wear athletic shoes with excellent grip.",
          "travelDuration": "Approx. 3 to 4 hours local tour"
        }
      },
      {
        "day": 3,
        "title": "Excursion to Chitrakote Waterfalls Local Culture Park",
        "location": "Bastar",
        "overview": "Excursion to Chitrakote Waterfalls Local Culture Park and surrounding craft villages to experience native arts, handlooms, and culture.",
        "schedule": {
          "morning": {
            "title": "Nature Walk at Chitrakote Waterfalls Local Culture Park",
            "description": "Guided scenic walk near the lake or parks surrounding Chitrakote Waterfalls Local Culture Park. Enjoy quiet reflection and fresh air."
          },
          "afternoon": {
            "title": "Local Handloom Visit",
            "description": "Visit local cottage industries to see artisans hand-weaving fabrics and crafting traditional wooden toys."
          },
          "evening": {
            "title": "Cultural Dance & Music Show",
            "description": "Attend a traditional cultural presentation depicting historical folk tales, followed by dinner."
          }
        },
        "details": {
          "importantTimings": "Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM",
          "meals": "Breakfast & Special Dinner Buffet.",
          "transport": "AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).",
          "walkingLevel": "Moderate Paced (Gentle staircases, guide assistance available)",
          "stay": "Premium Executive Hotel (AC rooms, elevator access, 24/7 front desk assistance)",
          "weather": "Perfect travel weather with low humidity and comfortable evening temperature 20°C.",
          "dressCode": "Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.",
          "packingSuggestions": "Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.",
          "accessibility": "Not recommended for guests requiring wheelchair support due to steep stairs and terrain.",
          "visitorNote": "Expect moderate physical movement. Wear athletic shoes with excellent grip.",
          "travelDuration": "Approx. 3 to 4 hours local tour"
        }
      },
      {
        "day": 4,
        "title": "Souvenir Shopping & Onward Departure",
        "location": "Bastar",
        "overview": "Conclude your memorable stay in Bastar with local craft shopping, checkout, and outbound transfers.",
        "schedule": {
          "morning": {
            "title": "Handicrafts Shopping",
            "description": "Visit local co-operative markets to buy traditional souvenirs, regional sweets, or native organic spices."
          },
          "afternoon": {
            "title": "Check-out & Packing",
            "description": "Return to your hotel, pack your bags, clear any local incidentals, and check out from your rooms."
          },
          "evening": {
            "title": "Outbound Transfer",
            "description": "Board your private vehicle transfer to the airport or railway station for your onward return journey home."
          }
        },
        "details": {
          "importantTimings": "Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM",
          "meals": "Complimentary Healthy Breakfast included.",
          "transport": "AC Private SUV for comfortable road transfers with regular rest stops.",
          "walkingLevel": "Moderate Paced (Gentle staircases, guide assistance available)",
          "stay": "Standard Comfort Hotel (Fully sanitized rooms, private bathroom, free Wi-Fi, desk space)",
          "weather": "Clear sky, comfortable morning temperature 21°C, warming up to 26°C by noon.",
          "dressCode": "Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.",
          "packingSuggestions": "Walking socks, small daypack for personal belongings, sanitizers, light jacket.",
          "accessibility": "Not recommended for guests requiring wheelchair support due to steep stairs and terrain.",
          "visitorNote": "Expect moderate physical movement. Wear athletic shoes with excellent grip.",
          "travelDuration": "Approx. 1 to 2 hours transfer"
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
      "Day 1: Arrival & Welcome at Chitrakote Waterfalls",
      "Day 2: Guided Sightseeing & Exploration of Chitrakote Waterfalls",
      "Day 3: Departure"
    ],
    "cancellationSummary": "Get a 100% full refund on cancellations made up to 15 days before the departure. Rescheduling options are fully flexible."
  },
  {
    "id": "family-city-palace-udaipur",
    "title": "City Palace, Udaipur Experience",
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
        "title": "Arrival & Settle in at Udaipur",
        "location": "Udaipur",
        "overview": "Welcome to your yatra. Arrive in Udaipur, transfer to your stay, and rest before your sightseeing tour.",
        "schedule": {
          "morning": {
            "title": "Arrival & Check-in",
            "description": "Arrive at the nearest transit hub. Meet our coordinator and transfer to your pre-booked stay in Udaipur."
          },
          "afternoon": {
            "title": "Leisure & Rest",
            "description": "Check into your hotel room, unpack your luggage, and rest to recover from your flight or train journey."
          },
          "evening": {
            "title": "Orientation Walk",
            "description": "Meet your local guide for a small walk around the neighborhood. Receive a detailed brief on local customs."
          }
        },
        "details": {
          "importantTimings": "Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM",
          "meals": "Welcome Drink & Buffet Dinner included.",
          "transport": "AC Shuttle Transit for close proximity site transfers and passenger drops.",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Heritage Boutique Resort (Comfortable rooms, garden paths, active room services)",
          "weather": "Warm and sunny afternoon, ideal for outdoor sightseeing, average temp 24°C.",
          "dressCode": "Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.",
          "packingSuggestions": "Comfortable travel footwear, photo ID, essential personal medication, daypack.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 1 to 2 hours transfer"
        }
      },
      {
        "day": 2,
        "title": "Explore City Palace, Udaipur Heritage Centre",
        "location": "Udaipur",
        "overview": "Spend your day visiting City Palace, Udaipur Heritage Centre, the primary attraction in City Palace, Udaipur, accompanied by our expert guide.",
        "schedule": {
          "morning": {
            "title": "Guided Tour of City Palace, Udaipur Heritage Centre",
            "description": "Early morning visit to City Palace, Udaipur Heritage Centre to avoid crowds. Learn about the heritage and unique history of this landmark."
          },
          "afternoon": {
            "title": "Local Traditional Lunch",
            "description": "Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings."
          },
          "evening": {
            "title": "Evening walk at City Palace, Udaipur Panoramic Viewpoint",
            "description": "Stroll around City Palace, Udaipur Panoramic Viewpoint for scenic sunset views. Capture great family photos as the evening lights turn on."
          }
        },
        "details": {
          "importantTimings": "Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM",
          "meals": "Complimentary Breakfast & Traditional Lunch.",
          "transport": "AC Private Sedan with professional local driver (includes first-aid kit and bottled water).",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Lakefront Guest House (Scenic balcony views, hot water, western-style bathrooms)",
          "weather": "Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.",
          "dressCode": "Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.",
          "packingSuggestions": "Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 3 to 4 hours local tour"
        }
      },
      {
        "day": 3,
        "title": "Excursion to City Palace, Udaipur Local Culture Park",
        "location": "Udaipur",
        "overview": "Excursion to City Palace, Udaipur Local Culture Park and surrounding craft villages to experience native arts, handlooms, and culture.",
        "schedule": {
          "morning": {
            "title": "Nature Walk at City Palace, Udaipur Local Culture Park",
            "description": "Guided scenic walk near the lake or parks surrounding City Palace, Udaipur Local Culture Park. Enjoy quiet reflection and fresh air."
          },
          "afternoon": {
            "title": "Local Handloom Visit",
            "description": "Visit local cottage industries to see artisans hand-weaving fabrics and crafting traditional wooden toys."
          },
          "evening": {
            "title": "Cultural Dance & Music Show",
            "description": "Attend a traditional cultural presentation depicting historical folk tales, followed by dinner."
          }
        },
        "details": {
          "importantTimings": "Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM",
          "meals": "Breakfast & Special Dinner Buffet.",
          "transport": "AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Premium Executive Hotel (AC rooms, elevator access, 24/7 front desk assistance)",
          "weather": "Perfect travel weather with low humidity and comfortable evening temperature 20°C.",
          "dressCode": "Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.",
          "packingSuggestions": "Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 3 to 4 hours local tour"
        }
      },
      {
        "day": 4,
        "title": "Souvenir Shopping & Onward Departure",
        "location": "Udaipur",
        "overview": "Conclude your memorable stay in Udaipur with local craft shopping, checkout, and outbound transfers.",
        "schedule": {
          "morning": {
            "title": "Handicrafts Shopping",
            "description": "Visit local co-operative markets to buy traditional souvenirs, regional sweets, or native organic spices."
          },
          "afternoon": {
            "title": "Check-out & Packing",
            "description": "Return to your hotel, pack your bags, clear any local incidentals, and check out from your rooms."
          },
          "evening": {
            "title": "Outbound Transfer",
            "description": "Board your private vehicle transfer to the airport or railway station for your onward return journey home."
          }
        },
        "details": {
          "importantTimings": "Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM",
          "meals": "Complimentary Healthy Breakfast included.",
          "transport": "AC Private SUV for comfortable road transfers with regular rest stops.",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Standard Comfort Hotel (Fully sanitized rooms, private bathroom, free Wi-Fi, desk space)",
          "weather": "Clear sky, comfortable morning temperature 21°C, warming up to 26°C by noon.",
          "dressCode": "Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.",
          "packingSuggestions": "Walking socks, small daypack for personal belongings, sanitizers, light jacket.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 1 to 2 hours transfer"
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
      "Day 1: Arrival & Welcome at City Palace, Udaipur",
      "Day 2: Guided Sightseeing & Exploration of City Palace, Udaipur",
      "Day 3: Departure"
    ],
    "cancellationSummary": "Get a 100% full refund on cancellations made up to 15 days before the departure. Rescheduling options are fully flexible."
  },
  {
    "id": "family-colosseum",
    "title": "Colosseum Experience",
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
        "title": "Arrival & Settle in at Rome",
        "location": "Rome",
        "overview": "Welcome to your yatra. Arrive in Rome, transfer to your stay, and rest before your sightseeing tour.",
        "schedule": {
          "morning": {
            "title": "Arrival & Check-in",
            "description": "Arrive at the nearest transit hub. Meet our coordinator and transfer to your pre-booked stay in Rome."
          },
          "afternoon": {
            "title": "Leisure & Rest",
            "description": "Check into your hotel room, unpack your luggage, and rest to recover from your flight or train journey."
          },
          "evening": {
            "title": "Orientation Walk",
            "description": "Meet your local guide for a small walk around the neighborhood. Receive a detailed brief on local customs."
          }
        },
        "details": {
          "importantTimings": "Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM",
          "meals": "Welcome Drink & Buffet Dinner included.",
          "transport": "AC Shuttle Transit for close proximity site transfers and passenger drops.",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Heritage Boutique Resort (Comfortable rooms, garden paths, active room services)",
          "weather": "Warm and sunny afternoon, ideal for outdoor sightseeing, average temp 24°C.",
          "dressCode": "Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.",
          "packingSuggestions": "Comfortable travel footwear, photo ID, essential personal medication, daypack.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 1 to 2 hours transfer"
        }
      },
      {
        "day": 2,
        "title": "Explore Colosseum Heritage Centre",
        "location": "Rome",
        "overview": "Spend your day visiting Colosseum Heritage Centre, the primary attraction in Colosseum, accompanied by our expert guide.",
        "schedule": {
          "morning": {
            "title": "Guided Tour of Colosseum Heritage Centre",
            "description": "Early morning visit to Colosseum Heritage Centre to avoid crowds. Learn about the heritage and unique history of this landmark."
          },
          "afternoon": {
            "title": "Local Traditional Lunch",
            "description": "Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings."
          },
          "evening": {
            "title": "Evening walk at Colosseum Panoramic Viewpoint",
            "description": "Stroll around Colosseum Panoramic Viewpoint for scenic sunset views. Capture great family photos as the evening lights turn on."
          }
        },
        "details": {
          "importantTimings": "Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM",
          "meals": "Complimentary Breakfast & Traditional Lunch.",
          "transport": "AC Private Sedan with professional local driver (includes first-aid kit and bottled water).",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Lakefront Guest House (Scenic balcony views, hot water, western-style bathrooms)",
          "weather": "Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.",
          "dressCode": "Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.",
          "packingSuggestions": "Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 3 to 4 hours local tour"
        }
      },
      {
        "day": 3,
        "title": "Excursion to Colosseum Local Culture Park",
        "location": "Rome",
        "overview": "Excursion to Colosseum Local Culture Park and surrounding craft villages to experience native arts, handlooms, and culture.",
        "schedule": {
          "morning": {
            "title": "Nature Walk at Colosseum Local Culture Park",
            "description": "Guided scenic walk near the lake or parks surrounding Colosseum Local Culture Park. Enjoy quiet reflection and fresh air."
          },
          "afternoon": {
            "title": "Local Handloom Visit",
            "description": "Visit local cottage industries to see artisans hand-weaving fabrics and crafting traditional wooden toys."
          },
          "evening": {
            "title": "Cultural Dance & Music Show",
            "description": "Attend a traditional cultural presentation depicting historical folk tales, followed by dinner."
          }
        },
        "details": {
          "importantTimings": "Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM",
          "meals": "Breakfast & Special Dinner Buffet.",
          "transport": "AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Premium Executive Hotel (AC rooms, elevator access, 24/7 front desk assistance)",
          "weather": "Perfect travel weather with low humidity and comfortable evening temperature 20°C.",
          "dressCode": "Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.",
          "packingSuggestions": "Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 3 to 4 hours local tour"
        }
      },
      {
        "day": 4,
        "title": "Souvenir Shopping & Onward Departure",
        "location": "Rome",
        "overview": "Conclude your memorable stay in Rome with local craft shopping, checkout, and outbound transfers.",
        "schedule": {
          "morning": {
            "title": "Handicrafts Shopping",
            "description": "Visit local co-operative markets to buy traditional souvenirs, regional sweets, or native organic spices."
          },
          "afternoon": {
            "title": "Check-out & Packing",
            "description": "Return to your hotel, pack your bags, clear any local incidentals, and check out from your rooms."
          },
          "evening": {
            "title": "Outbound Transfer",
            "description": "Board your private vehicle transfer to the airport or railway station for your onward return journey home."
          }
        },
        "details": {
          "importantTimings": "Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM",
          "meals": "Complimentary Healthy Breakfast included.",
          "transport": "AC Private SUV for comfortable road transfers with regular rest stops.",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Standard Comfort Hotel (Fully sanitized rooms, private bathroom, free Wi-Fi, desk space)",
          "weather": "Clear sky, comfortable morning temperature 21°C, warming up to 26°C by noon.",
          "dressCode": "Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.",
          "packingSuggestions": "Walking socks, small daypack for personal belongings, sanitizers, light jacket.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 1 to 2 hours transfer"
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
      "Day 1: Arrival & Welcome at Colosseum",
      "Day 2: Guided Sightseeing & Exploration of Colosseum",
      "Day 3: Departure"
    ],
    "cancellationSummary": "Get a 100% full refund on cancellations made up to 15 days before the departure. Rescheduling options are fully flexible."
  },
  {
    "id": "family-dawki-river-umngot-river",
    "title": "Dawki River Experience",
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
        "title": "Arrival & Settle in at West Jaintia Hills",
        "location": "West Jaintia Hills",
        "overview": "Welcome to your yatra. Arrive in West Jaintia Hills, transfer to your stay, and rest before your sightseeing tour.",
        "schedule": {
          "morning": {
            "title": "Arrival & Check-in",
            "description": "Arrive at the nearest transit hub. Meet our coordinator and transfer to your pre-booked stay in West Jaintia Hills."
          },
          "afternoon": {
            "title": "Leisure & Rest",
            "description": "Check into your hotel room, unpack your luggage, and rest to recover from your flight or train journey."
          },
          "evening": {
            "title": "Orientation Walk",
            "description": "Meet your local guide for a small walk around the neighborhood. Receive a detailed brief on local customs."
          }
        },
        "details": {
          "importantTimings": "Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM",
          "meals": "Welcome Drink & Buffet Dinner included.",
          "transport": "AC Shuttle Transit for close proximity site transfers and passenger drops.",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Heritage Boutique Resort (Comfortable rooms, garden paths, active room services)",
          "weather": "Warm and sunny afternoon, ideal for outdoor sightseeing, average temp 24°C.",
          "dressCode": "Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.",
          "packingSuggestions": "Comfortable travel footwear, photo ID, essential personal medication, daypack.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 1 to 2 hours transfer"
        }
      },
      {
        "day": 2,
        "title": "Explore Dawki River Heritage Centre",
        "location": "West Jaintia Hills",
        "overview": "Spend your day visiting Dawki River Heritage Centre, the primary attraction in Dawki River, accompanied by our expert guide.",
        "schedule": {
          "morning": {
            "title": "Guided Tour of Dawki River Heritage Centre",
            "description": "Early morning visit to Dawki River Heritage Centre to avoid crowds. Learn about the heritage and unique history of this landmark."
          },
          "afternoon": {
            "title": "Local Traditional Lunch",
            "description": "Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings."
          },
          "evening": {
            "title": "Evening walk at Dawki River Panoramic Viewpoint",
            "description": "Stroll around Dawki River Panoramic Viewpoint for scenic sunset views. Capture great family photos as the evening lights turn on."
          }
        },
        "details": {
          "importantTimings": "Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM",
          "meals": "Complimentary Breakfast & Traditional Lunch.",
          "transport": "AC Private Sedan with professional local driver (includes first-aid kit and bottled water).",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Lakefront Guest House (Scenic balcony views, hot water, western-style bathrooms)",
          "weather": "Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.",
          "dressCode": "Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.",
          "packingSuggestions": "Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 3 to 4 hours local tour"
        }
      },
      {
        "day": 3,
        "title": "Excursion to Dawki River Local Culture Park",
        "location": "West Jaintia Hills",
        "overview": "Excursion to Dawki River Local Culture Park and surrounding craft villages to experience native arts, handlooms, and culture.",
        "schedule": {
          "morning": {
            "title": "Nature Walk at Dawki River Local Culture Park",
            "description": "Guided scenic walk near the lake or parks surrounding Dawki River Local Culture Park. Enjoy quiet reflection and fresh air."
          },
          "afternoon": {
            "title": "Local Handloom Visit",
            "description": "Visit local cottage industries to see artisans hand-weaving fabrics and crafting traditional wooden toys."
          },
          "evening": {
            "title": "Cultural Dance & Music Show",
            "description": "Attend a traditional cultural presentation depicting historical folk tales, followed by dinner."
          }
        },
        "details": {
          "importantTimings": "Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM",
          "meals": "Breakfast & Special Dinner Buffet.",
          "transport": "AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Premium Executive Hotel (AC rooms, elevator access, 24/7 front desk assistance)",
          "weather": "Perfect travel weather with low humidity and comfortable evening temperature 20°C.",
          "dressCode": "Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.",
          "packingSuggestions": "Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 3 to 4 hours local tour"
        }
      },
      {
        "day": 4,
        "title": "Souvenir Shopping & Onward Departure",
        "location": "West Jaintia Hills",
        "overview": "Conclude your memorable stay in West Jaintia Hills with local craft shopping, checkout, and outbound transfers.",
        "schedule": {
          "morning": {
            "title": "Handicrafts Shopping",
            "description": "Visit local co-operative markets to buy traditional souvenirs, regional sweets, or native organic spices."
          },
          "afternoon": {
            "title": "Check-out & Packing",
            "description": "Return to your hotel, pack your bags, clear any local incidentals, and check out from your rooms."
          },
          "evening": {
            "title": "Outbound Transfer",
            "description": "Board your private vehicle transfer to the airport or railway station for your onward return journey home."
          }
        },
        "details": {
          "importantTimings": "Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM",
          "meals": "Complimentary Healthy Breakfast included.",
          "transport": "AC Private SUV for comfortable road transfers with regular rest stops.",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Standard Comfort Hotel (Fully sanitized rooms, private bathroom, free Wi-Fi, desk space)",
          "weather": "Clear sky, comfortable morning temperature 21°C, warming up to 26°C by noon.",
          "dressCode": "Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.",
          "packingSuggestions": "Walking socks, small daypack for personal belongings, sanitizers, light jacket.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 1 to 2 hours transfer"
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
      "Day 1: Arrival & Welcome at Dawki River",
      "Day 2: Guided Sightseeing & Exploration of Dawki River",
      "Day 3: Departure"
    ],
    "cancellationSummary": "Get a 100% full refund on cancellations made up to 15 days before the departure. Rescheduling options are fully flexible."
  },
  {
    "id": "family-disneyland-paris",
    "title": "Disneyland Paris Experience",
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
        "title": "Arrival & Settle in at Marne-la-Vallée",
        "location": "Marne-la-Vallée",
        "overview": "Welcome to your yatra. Arrive in Marne-la-Vallée, transfer to your stay, and rest before your sightseeing tour.",
        "schedule": {
          "morning": {
            "title": "Arrival & Check-in",
            "description": "Arrive at the nearest transit hub. Meet our coordinator and transfer to your pre-booked stay in Marne-la-Vallée."
          },
          "afternoon": {
            "title": "Leisure & Rest",
            "description": "Check into your hotel room, unpack your luggage, and rest to recover from your flight or train journey."
          },
          "evening": {
            "title": "Orientation Walk",
            "description": "Meet your local guide for a small walk around the neighborhood. Receive a detailed brief on local customs."
          }
        },
        "details": {
          "importantTimings": "Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM",
          "meals": "Welcome Drink & Buffet Dinner included.",
          "transport": "AC Shuttle Transit for close proximity site transfers and passenger drops.",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Heritage Boutique Resort (Comfortable rooms, garden paths, active room services)",
          "weather": "Warm and sunny afternoon, ideal for outdoor sightseeing, average temp 24°C.",
          "dressCode": "Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.",
          "packingSuggestions": "Comfortable travel footwear, photo ID, essential personal medication, daypack.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 1 to 2 hours transfer"
        }
      },
      {
        "day": 2,
        "title": "Explore Disneyland Paris Heritage Centre",
        "location": "Marne-la-Vallée",
        "overview": "Spend your day visiting Disneyland Paris Heritage Centre, the primary attraction in Disneyland Paris, accompanied by our expert guide.",
        "schedule": {
          "morning": {
            "title": "Guided Tour of Disneyland Paris Heritage Centre",
            "description": "Early morning visit to Disneyland Paris Heritage Centre to avoid crowds. Learn about the heritage and unique history of this landmark."
          },
          "afternoon": {
            "title": "Local Traditional Lunch",
            "description": "Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings."
          },
          "evening": {
            "title": "Evening walk at Disneyland Paris Panoramic Viewpoint",
            "description": "Stroll around Disneyland Paris Panoramic Viewpoint for scenic sunset views. Capture great family photos as the evening lights turn on."
          }
        },
        "details": {
          "importantTimings": "Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM",
          "meals": "Complimentary Breakfast & Traditional Lunch.",
          "transport": "AC Private Sedan with professional local driver (includes first-aid kit and bottled water).",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Lakefront Guest House (Scenic balcony views, hot water, western-style bathrooms)",
          "weather": "Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.",
          "dressCode": "Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.",
          "packingSuggestions": "Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 3 to 4 hours local tour"
        }
      },
      {
        "day": 3,
        "title": "Excursion to Disneyland Paris Local Culture Park",
        "location": "Marne-la-Vallée",
        "overview": "Excursion to Disneyland Paris Local Culture Park and surrounding craft villages to experience native arts, handlooms, and culture.",
        "schedule": {
          "morning": {
            "title": "Nature Walk at Disneyland Paris Local Culture Park",
            "description": "Guided scenic walk near the lake or parks surrounding Disneyland Paris Local Culture Park. Enjoy quiet reflection and fresh air."
          },
          "afternoon": {
            "title": "Local Handloom Visit",
            "description": "Visit local cottage industries to see artisans hand-weaving fabrics and crafting traditional wooden toys."
          },
          "evening": {
            "title": "Cultural Dance & Music Show",
            "description": "Attend a traditional cultural presentation depicting historical folk tales, followed by dinner."
          }
        },
        "details": {
          "importantTimings": "Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM",
          "meals": "Breakfast & Special Dinner Buffet.",
          "transport": "AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Premium Executive Hotel (AC rooms, elevator access, 24/7 front desk assistance)",
          "weather": "Perfect travel weather with low humidity and comfortable evening temperature 20°C.",
          "dressCode": "Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.",
          "packingSuggestions": "Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 3 to 4 hours local tour"
        }
      },
      {
        "day": 4,
        "title": "Souvenir Shopping & Onward Departure",
        "location": "Marne-la-Vallée",
        "overview": "Conclude your memorable stay in Marne-la-Vallée with local craft shopping, checkout, and outbound transfers.",
        "schedule": {
          "morning": {
            "title": "Handicrafts Shopping",
            "description": "Visit local co-operative markets to buy traditional souvenirs, regional sweets, or native organic spices."
          },
          "afternoon": {
            "title": "Check-out & Packing",
            "description": "Return to your hotel, pack your bags, clear any local incidentals, and check out from your rooms."
          },
          "evening": {
            "title": "Outbound Transfer",
            "description": "Board your private vehicle transfer to the airport or railway station for your onward return journey home."
          }
        },
        "details": {
          "importantTimings": "Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM",
          "meals": "Complimentary Healthy Breakfast included.",
          "transport": "AC Private SUV for comfortable road transfers with regular rest stops.",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Standard Comfort Hotel (Fully sanitized rooms, private bathroom, free Wi-Fi, desk space)",
          "weather": "Clear sky, comfortable morning temperature 21°C, warming up to 26°C by noon.",
          "dressCode": "Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.",
          "packingSuggestions": "Walking socks, small daypack for personal belongings, sanitizers, light jacket.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 1 to 2 hours transfer"
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
      "Day 1: Arrival & Welcome at Disneyland Paris",
      "Day 2: Guided Sightseeing & Exploration of Disneyland Paris",
      "Day 3: Departure"
    ],
    "cancellationSummary": "Get a 100% full refund on cancellations made up to 15 days before the departure. Rescheduling options are fully flexible."
  },
  {
    "id": "family-dubai-miracle-garden",
    "title": "Dubai Miracle Garden Experience",
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
        "title": "Arrival & Settle in at Dubai",
        "location": "Dubai",
        "overview": "Welcome to your yatra. Arrive in Dubai, transfer to your stay, and rest before your sightseeing tour.",
        "schedule": {
          "morning": {
            "title": "Arrival & Check-in",
            "description": "Arrive at the nearest transit hub. Meet our coordinator and transfer to your pre-booked stay in Dubai."
          },
          "afternoon": {
            "title": "Leisure & Rest",
            "description": "Check into your hotel room, unpack your luggage, and rest to recover from your flight or train journey."
          },
          "evening": {
            "title": "Orientation Walk",
            "description": "Meet your local guide for a small walk around the neighborhood. Receive a detailed brief on local customs."
          }
        },
        "details": {
          "importantTimings": "Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM",
          "meals": "Welcome Drink & Buffet Dinner included.",
          "transport": "AC Shuttle Transit for close proximity site transfers and passenger drops.",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Heritage Boutique Resort (Comfortable rooms, garden paths, active room services)",
          "weather": "Warm and sunny afternoon, ideal for outdoor sightseeing, average temp 24°C.",
          "dressCode": "Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.",
          "packingSuggestions": "Comfortable travel footwear, photo ID, essential personal medication, daypack.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 1 to 2 hours transfer"
        }
      },
      {
        "day": 2,
        "title": "Explore Dubai Miracle Garden Heritage Centre",
        "location": "Dubai",
        "overview": "Spend your day visiting Dubai Miracle Garden Heritage Centre, the primary attraction in Dubai Miracle Garden, accompanied by our expert guide.",
        "schedule": {
          "morning": {
            "title": "Guided Tour of Dubai Miracle Garden Heritage Centre",
            "description": "Early morning visit to Dubai Miracle Garden Heritage Centre to avoid crowds. Learn about the heritage and unique history of this landmark."
          },
          "afternoon": {
            "title": "Local Traditional Lunch",
            "description": "Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings."
          },
          "evening": {
            "title": "Evening walk at Dubai Miracle Garden Panoramic Viewpoint",
            "description": "Stroll around Dubai Miracle Garden Panoramic Viewpoint for scenic sunset views. Capture great family photos as the evening lights turn on."
          }
        },
        "details": {
          "importantTimings": "Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM",
          "meals": "Complimentary Breakfast & Traditional Lunch.",
          "transport": "AC Private Sedan with professional local driver (includes first-aid kit and bottled water).",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Lakefront Guest House (Scenic balcony views, hot water, western-style bathrooms)",
          "weather": "Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.",
          "dressCode": "Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.",
          "packingSuggestions": "Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 3 to 4 hours local tour"
        }
      },
      {
        "day": 3,
        "title": "Excursion to Dubai Miracle Garden Local Culture Park",
        "location": "Dubai",
        "overview": "Excursion to Dubai Miracle Garden Local Culture Park and surrounding craft villages to experience native arts, handlooms, and culture.",
        "schedule": {
          "morning": {
            "title": "Nature Walk at Dubai Miracle Garden Local Culture Park",
            "description": "Guided scenic walk near the lake or parks surrounding Dubai Miracle Garden Local Culture Park. Enjoy quiet reflection and fresh air."
          },
          "afternoon": {
            "title": "Local Handloom Visit",
            "description": "Visit local cottage industries to see artisans hand-weaving fabrics and crafting traditional wooden toys."
          },
          "evening": {
            "title": "Cultural Dance & Music Show",
            "description": "Attend a traditional cultural presentation depicting historical folk tales, followed by dinner."
          }
        },
        "details": {
          "importantTimings": "Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM",
          "meals": "Breakfast & Special Dinner Buffet.",
          "transport": "AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Premium Executive Hotel (AC rooms, elevator access, 24/7 front desk assistance)",
          "weather": "Perfect travel weather with low humidity and comfortable evening temperature 20°C.",
          "dressCode": "Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.",
          "packingSuggestions": "Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 3 to 4 hours local tour"
        }
      },
      {
        "day": 4,
        "title": "Souvenir Shopping & Onward Departure",
        "location": "Dubai",
        "overview": "Conclude your memorable stay in Dubai with local craft shopping, checkout, and outbound transfers.",
        "schedule": {
          "morning": {
            "title": "Handicrafts Shopping",
            "description": "Visit local co-operative markets to buy traditional souvenirs, regional sweets, or native organic spices."
          },
          "afternoon": {
            "title": "Check-out & Packing",
            "description": "Return to your hotel, pack your bags, clear any local incidentals, and check out from your rooms."
          },
          "evening": {
            "title": "Outbound Transfer",
            "description": "Board your private vehicle transfer to the airport or railway station for your onward return journey home."
          }
        },
        "details": {
          "importantTimings": "Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM",
          "meals": "Complimentary Healthy Breakfast included.",
          "transport": "AC Private SUV for comfortable road transfers with regular rest stops.",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Standard Comfort Hotel (Fully sanitized rooms, private bathroom, free Wi-Fi, desk space)",
          "weather": "Clear sky, comfortable morning temperature 21°C, warming up to 26°C by noon.",
          "dressCode": "Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.",
          "packingSuggestions": "Walking socks, small daypack for personal belongings, sanitizers, light jacket.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 1 to 2 hours transfer"
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
      "Day 1: Arrival & Welcome at Dubai Miracle Garden",
      "Day 2: Guided Sightseeing & Exploration of Dubai Miracle Garden",
      "Day 3: Departure"
    ],
    "cancellationSummary": "Get a 100% full refund on cancellations made up to 15 days before the departure. Rescheduling options are fully flexible."
  },
  {
    "id": "family-dudhsagar-falls",
    "title": "Dudhsagar Falls Experience",
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
        "title": "Arrival & Settle in at Goa / Karnataka",
        "location": "Goa / Karnataka",
        "overview": "Welcome to your yatra. Arrive in Goa / Karnataka, transfer to your stay, and rest before your sightseeing tour.",
        "schedule": {
          "morning": {
            "title": "Arrival & Check-in",
            "description": "Arrive at the nearest transit hub. Meet our coordinator and transfer to your pre-booked stay in Goa / Karnataka."
          },
          "afternoon": {
            "title": "Leisure & Rest",
            "description": "Check into your hotel room, unpack your luggage, and rest to recover from your flight or train journey."
          },
          "evening": {
            "title": "Orientation Walk",
            "description": "Meet your local guide for a small walk around the neighborhood. Receive a detailed brief on local customs."
          }
        },
        "details": {
          "importantTimings": "Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM",
          "meals": "Welcome Drink & Buffet Dinner included.",
          "transport": "AC Shuttle Transit for close proximity site transfers and passenger drops.",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Heritage Boutique Resort (Comfortable rooms, garden paths, active room services)",
          "weather": "Warm and sunny afternoon, ideal for outdoor sightseeing, average temp 24°C.",
          "dressCode": "Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.",
          "packingSuggestions": "Comfortable travel footwear, photo ID, essential personal medication, daypack.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 1 to 2 hours transfer"
        }
      },
      {
        "day": 2,
        "title": "Explore Dudhsagar Falls Heritage Centre",
        "location": "Goa / Karnataka",
        "overview": "Spend your day visiting Dudhsagar Falls Heritage Centre, the primary attraction in Dudhsagar Falls, accompanied by our expert guide.",
        "schedule": {
          "morning": {
            "title": "Guided Tour of Dudhsagar Falls Heritage Centre",
            "description": "Early morning visit to Dudhsagar Falls Heritage Centre to avoid crowds. Learn about the heritage and unique history of this landmark."
          },
          "afternoon": {
            "title": "Local Traditional Lunch",
            "description": "Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings."
          },
          "evening": {
            "title": "Evening walk at Dudhsagar Falls Panoramic Viewpoint",
            "description": "Stroll around Dudhsagar Falls Panoramic Viewpoint for scenic sunset views. Capture great family photos as the evening lights turn on."
          }
        },
        "details": {
          "importantTimings": "Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM",
          "meals": "Complimentary Breakfast & Traditional Lunch.",
          "transport": "AC Private Sedan with professional local driver (includes first-aid kit and bottled water).",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Lakefront Guest House (Scenic balcony views, hot water, western-style bathrooms)",
          "weather": "Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.",
          "dressCode": "Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.",
          "packingSuggestions": "Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 3 to 4 hours local tour"
        }
      },
      {
        "day": 3,
        "title": "Excursion to Dudhsagar Falls Local Culture Park",
        "location": "Goa / Karnataka",
        "overview": "Excursion to Dudhsagar Falls Local Culture Park and surrounding craft villages to experience native arts, handlooms, and culture.",
        "schedule": {
          "morning": {
            "title": "Nature Walk at Dudhsagar Falls Local Culture Park",
            "description": "Guided scenic walk near the lake or parks surrounding Dudhsagar Falls Local Culture Park. Enjoy quiet reflection and fresh air."
          },
          "afternoon": {
            "title": "Local Handloom Visit",
            "description": "Visit local cottage industries to see artisans hand-weaving fabrics and crafting traditional wooden toys."
          },
          "evening": {
            "title": "Cultural Dance & Music Show",
            "description": "Attend a traditional cultural presentation depicting historical folk tales, followed by dinner."
          }
        },
        "details": {
          "importantTimings": "Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM",
          "meals": "Breakfast & Special Dinner Buffet.",
          "transport": "AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Premium Executive Hotel (AC rooms, elevator access, 24/7 front desk assistance)",
          "weather": "Perfect travel weather with low humidity and comfortable evening temperature 20°C.",
          "dressCode": "Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.",
          "packingSuggestions": "Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 3 to 4 hours local tour"
        }
      },
      {
        "day": 4,
        "title": "Souvenir Shopping & Onward Departure",
        "location": "Goa / Karnataka",
        "overview": "Conclude your memorable stay in Goa / Karnataka with local craft shopping, checkout, and outbound transfers.",
        "schedule": {
          "morning": {
            "title": "Handicrafts Shopping",
            "description": "Visit local co-operative markets to buy traditional souvenirs, regional sweets, or native organic spices."
          },
          "afternoon": {
            "title": "Check-out & Packing",
            "description": "Return to your hotel, pack your bags, clear any local incidentals, and check out from your rooms."
          },
          "evening": {
            "title": "Outbound Transfer",
            "description": "Board your private vehicle transfer to the airport or railway station for your onward return journey home."
          }
        },
        "details": {
          "importantTimings": "Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM",
          "meals": "Complimentary Healthy Breakfast included.",
          "transport": "AC Private SUV for comfortable road transfers with regular rest stops.",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Standard Comfort Hotel (Fully sanitized rooms, private bathroom, free Wi-Fi, desk space)",
          "weather": "Clear sky, comfortable morning temperature 21°C, warming up to 26°C by noon.",
          "dressCode": "Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.",
          "packingSuggestions": "Walking socks, small daypack for personal belongings, sanitizers, light jacket.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 1 to 2 hours transfer"
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
      "Day 1: Arrival & Welcome at Dudhsagar Falls",
      "Day 2: Guided Sightseeing & Exploration of Dudhsagar Falls",
      "Day 3: Departure"
    ],
    "cancellationSummary": "Get a 100% full refund on cancellations made up to 15 days before the departure. Rescheduling options are fully flexible."
  },
  {
    "id": "family-eiffel-tower",
    "title": "Eiffel Tower Experience",
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
        "title": "Arrival & Settle in at Paris",
        "location": "Paris",
        "overview": "Welcome to your yatra. Arrive in Paris, transfer to your stay, and rest before your sightseeing tour.",
        "schedule": {
          "morning": {
            "title": "Arrival & Check-in",
            "description": "Arrive at the nearest transit hub. Meet our coordinator and transfer to your pre-booked stay in Paris."
          },
          "afternoon": {
            "title": "Leisure & Rest",
            "description": "Check into your hotel room, unpack your luggage, and rest to recover from your flight or train journey."
          },
          "evening": {
            "title": "Orientation Walk",
            "description": "Meet your local guide for a small walk around the neighborhood. Receive a detailed brief on local customs."
          }
        },
        "details": {
          "importantTimings": "Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM",
          "meals": "Welcome Drink & Buffet Dinner included.",
          "transport": "AC Shuttle Transit for close proximity site transfers and passenger drops.",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Heritage Boutique Resort (Comfortable rooms, garden paths, active room services)",
          "weather": "Warm and sunny afternoon, ideal for outdoor sightseeing, average temp 24°C.",
          "dressCode": "Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.",
          "packingSuggestions": "Comfortable travel footwear, photo ID, essential personal medication, daypack.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 1 to 2 hours transfer"
        }
      },
      {
        "day": 2,
        "title": "Explore Eiffel Tower Heritage Centre",
        "location": "Paris",
        "overview": "Spend your day visiting Eiffel Tower Heritage Centre, the primary attraction in Eiffel Tower, accompanied by our expert guide.",
        "schedule": {
          "morning": {
            "title": "Guided Tour of Eiffel Tower Heritage Centre",
            "description": "Early morning visit to Eiffel Tower Heritage Centre to avoid crowds. Learn about the heritage and unique history of this landmark."
          },
          "afternoon": {
            "title": "Local Traditional Lunch",
            "description": "Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings."
          },
          "evening": {
            "title": "Evening walk at Eiffel Tower Panoramic Viewpoint",
            "description": "Stroll around Eiffel Tower Panoramic Viewpoint for scenic sunset views. Capture great family photos as the evening lights turn on."
          }
        },
        "details": {
          "importantTimings": "Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM",
          "meals": "Complimentary Breakfast & Traditional Lunch.",
          "transport": "AC Private Sedan with professional local driver (includes first-aid kit and bottled water).",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Lakefront Guest House (Scenic balcony views, hot water, western-style bathrooms)",
          "weather": "Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.",
          "dressCode": "Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.",
          "packingSuggestions": "Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 3 to 4 hours local tour"
        }
      },
      {
        "day": 3,
        "title": "Excursion to Eiffel Tower Local Culture Park",
        "location": "Paris",
        "overview": "Excursion to Eiffel Tower Local Culture Park and surrounding craft villages to experience native arts, handlooms, and culture.",
        "schedule": {
          "morning": {
            "title": "Nature Walk at Eiffel Tower Local Culture Park",
            "description": "Guided scenic walk near the lake or parks surrounding Eiffel Tower Local Culture Park. Enjoy quiet reflection and fresh air."
          },
          "afternoon": {
            "title": "Local Handloom Visit",
            "description": "Visit local cottage industries to see artisans hand-weaving fabrics and crafting traditional wooden toys."
          },
          "evening": {
            "title": "Cultural Dance & Music Show",
            "description": "Attend a traditional cultural presentation depicting historical folk tales, followed by dinner."
          }
        },
        "details": {
          "importantTimings": "Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM",
          "meals": "Breakfast & Special Dinner Buffet.",
          "transport": "AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Premium Executive Hotel (AC rooms, elevator access, 24/7 front desk assistance)",
          "weather": "Perfect travel weather with low humidity and comfortable evening temperature 20°C.",
          "dressCode": "Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.",
          "packingSuggestions": "Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 3 to 4 hours local tour"
        }
      },
      {
        "day": 4,
        "title": "Souvenir Shopping & Onward Departure",
        "location": "Paris",
        "overview": "Conclude your memorable stay in Paris with local craft shopping, checkout, and outbound transfers.",
        "schedule": {
          "morning": {
            "title": "Handicrafts Shopping",
            "description": "Visit local co-operative markets to buy traditional souvenirs, regional sweets, or native organic spices."
          },
          "afternoon": {
            "title": "Check-out & Packing",
            "description": "Return to your hotel, pack your bags, clear any local incidentals, and check out from your rooms."
          },
          "evening": {
            "title": "Outbound Transfer",
            "description": "Board your private vehicle transfer to the airport or railway station for your onward return journey home."
          }
        },
        "details": {
          "importantTimings": "Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM",
          "meals": "Complimentary Healthy Breakfast included.",
          "transport": "AC Private SUV for comfortable road transfers with regular rest stops.",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Standard Comfort Hotel (Fully sanitized rooms, private bathroom, free Wi-Fi, desk space)",
          "weather": "Clear sky, comfortable morning temperature 21°C, warming up to 26°C by noon.",
          "dressCode": "Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.",
          "packingSuggestions": "Walking socks, small daypack for personal belongings, sanitizers, light jacket.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 1 to 2 hours transfer"
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
      "Day 1: Arrival & Welcome at Eiffel Tower",
      "Day 2: Guided Sightseeing & Exploration of Eiffel Tower",
      "Day 3: Departure"
    ],
    "cancellationSummary": "Get a 100% full refund on cancellations made up to 15 days before the departure. Rescheduling options are fully flexible."
  },
  {
    "id": "family-gardens-by-the-bay",
    "title": "Gardens by the Bay Experience",
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
        "title": "Arrival & Settle in at Singapore",
        "location": "Singapore",
        "overview": "Welcome to your yatra. Arrive in Singapore, transfer to your stay, and rest before your sightseeing tour.",
        "schedule": {
          "morning": {
            "title": "Arrival & Check-in",
            "description": "Arrive at the nearest transit hub. Meet our coordinator and transfer to your pre-booked stay in Singapore."
          },
          "afternoon": {
            "title": "Leisure & Rest",
            "description": "Check into your hotel room, unpack your luggage, and rest to recover from your flight or train journey."
          },
          "evening": {
            "title": "Orientation Walk",
            "description": "Meet your local guide for a small walk around the neighborhood. Receive a detailed brief on local customs."
          }
        },
        "details": {
          "importantTimings": "Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM",
          "meals": "Welcome Drink & Buffet Dinner included.",
          "transport": "AC Shuttle Transit for close proximity site transfers and passenger drops.",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Heritage Boutique Resort (Comfortable rooms, garden paths, active room services)",
          "weather": "Warm and sunny afternoon, ideal for outdoor sightseeing, average temp 24°C.",
          "dressCode": "Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.",
          "packingSuggestions": "Comfortable travel footwear, photo ID, essential personal medication, daypack.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 1 to 2 hours transfer"
        }
      },
      {
        "day": 2,
        "title": "Explore Gardens by the Bay Heritage Centre",
        "location": "Singapore",
        "overview": "Spend your day visiting Gardens by the Bay Heritage Centre, the primary attraction in Gardens by the Bay, accompanied by our expert guide.",
        "schedule": {
          "morning": {
            "title": "Guided Tour of Gardens by the Bay Heritage Centre",
            "description": "Early morning visit to Gardens by the Bay Heritage Centre to avoid crowds. Learn about the heritage and unique history of this landmark."
          },
          "afternoon": {
            "title": "Local Traditional Lunch",
            "description": "Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings."
          },
          "evening": {
            "title": "Evening walk at Gardens by the Bay Panoramic Viewpoint",
            "description": "Stroll around Gardens by the Bay Panoramic Viewpoint for scenic sunset views. Capture great family photos as the evening lights turn on."
          }
        },
        "details": {
          "importantTimings": "Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM",
          "meals": "Complimentary Breakfast & Traditional Lunch.",
          "transport": "AC Private Sedan with professional local driver (includes first-aid kit and bottled water).",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Lakefront Guest House (Scenic balcony views, hot water, western-style bathrooms)",
          "weather": "Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.",
          "dressCode": "Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.",
          "packingSuggestions": "Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 3 to 4 hours local tour"
        }
      },
      {
        "day": 3,
        "title": "Excursion to Gardens by the Bay Local Culture Park",
        "location": "Singapore",
        "overview": "Excursion to Gardens by the Bay Local Culture Park and surrounding craft villages to experience native arts, handlooms, and culture.",
        "schedule": {
          "morning": {
            "title": "Nature Walk at Gardens by the Bay Local Culture Park",
            "description": "Guided scenic walk near the lake or parks surrounding Gardens by the Bay Local Culture Park. Enjoy quiet reflection and fresh air."
          },
          "afternoon": {
            "title": "Local Handloom Visit",
            "description": "Visit local cottage industries to see artisans hand-weaving fabrics and crafting traditional wooden toys."
          },
          "evening": {
            "title": "Cultural Dance & Music Show",
            "description": "Attend a traditional cultural presentation depicting historical folk tales, followed by dinner."
          }
        },
        "details": {
          "importantTimings": "Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM",
          "meals": "Breakfast & Special Dinner Buffet.",
          "transport": "AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Premium Executive Hotel (AC rooms, elevator access, 24/7 front desk assistance)",
          "weather": "Perfect travel weather with low humidity and comfortable evening temperature 20°C.",
          "dressCode": "Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.",
          "packingSuggestions": "Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 3 to 4 hours local tour"
        }
      },
      {
        "day": 4,
        "title": "Souvenir Shopping & Onward Departure",
        "location": "Singapore",
        "overview": "Conclude your memorable stay in Singapore with local craft shopping, checkout, and outbound transfers.",
        "schedule": {
          "morning": {
            "title": "Handicrafts Shopping",
            "description": "Visit local co-operative markets to buy traditional souvenirs, regional sweets, or native organic spices."
          },
          "afternoon": {
            "title": "Check-out & Packing",
            "description": "Return to your hotel, pack your bags, clear any local incidentals, and check out from your rooms."
          },
          "evening": {
            "title": "Outbound Transfer",
            "description": "Board your private vehicle transfer to the airport or railway station for your onward return journey home."
          }
        },
        "details": {
          "importantTimings": "Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM",
          "meals": "Complimentary Healthy Breakfast included.",
          "transport": "AC Private SUV for comfortable road transfers with regular rest stops.",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Standard Comfort Hotel (Fully sanitized rooms, private bathroom, free Wi-Fi, desk space)",
          "weather": "Clear sky, comfortable morning temperature 21°C, warming up to 26°C by noon.",
          "dressCode": "Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.",
          "packingSuggestions": "Walking socks, small daypack for personal belongings, sanitizers, light jacket.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 1 to 2 hours transfer"
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
      "Day 1: Arrival & Welcome at Gardens by the Bay",
      "Day 2: Guided Sightseeing & Exploration of Gardens by the Bay",
      "Day 3: Departure"
    ],
    "cancellationSummary": "Get a 100% full refund on cancellations made up to 15 days before the departure. Rescheduling options are fully flexible."
  },
  {
    "id": "family-glacier-3000",
    "title": "Glacier 3000 Experience",
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
        "title": "Arrival & Settle in at Les Diablerets",
        "location": "Les Diablerets",
        "overview": "Welcome to your yatra. Arrive in Les Diablerets, transfer to your stay, and rest before your sightseeing tour.",
        "schedule": {
          "morning": {
            "title": "Arrival & Check-in",
            "description": "Arrive at the nearest transit hub. Meet our coordinator and transfer to your pre-booked stay in Les Diablerets."
          },
          "afternoon": {
            "title": "Leisure & Rest",
            "description": "Check into your hotel room, unpack your luggage, and rest to recover from your flight or train journey."
          },
          "evening": {
            "title": "Orientation Walk",
            "description": "Meet your local guide for a small walk around the neighborhood. Receive a detailed brief on local customs."
          }
        },
        "details": {
          "importantTimings": "Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM",
          "meals": "Welcome Drink & Buffet Dinner included.",
          "transport": "AC Shuttle Transit for close proximity site transfers and passenger drops.",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Heritage Boutique Resort (Comfortable rooms, garden paths, active room services)",
          "weather": "Warm and sunny afternoon, ideal for outdoor sightseeing, average temp 24°C.",
          "dressCode": "Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.",
          "packingSuggestions": "Comfortable travel footwear, photo ID, essential personal medication, daypack.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 1 to 2 hours transfer"
        }
      },
      {
        "day": 2,
        "title": "Explore Glacier 3000 Heritage Centre",
        "location": "Les Diablerets",
        "overview": "Spend your day visiting Glacier 3000 Heritage Centre, the primary attraction in Glacier 3000, accompanied by our expert guide.",
        "schedule": {
          "morning": {
            "title": "Guided Tour of Glacier 3000 Heritage Centre",
            "description": "Early morning visit to Glacier 3000 Heritage Centre to avoid crowds. Learn about the heritage and unique history of this landmark."
          },
          "afternoon": {
            "title": "Local Traditional Lunch",
            "description": "Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings."
          },
          "evening": {
            "title": "Evening walk at Glacier 3000 Panoramic Viewpoint",
            "description": "Stroll around Glacier 3000 Panoramic Viewpoint for scenic sunset views. Capture great family photos as the evening lights turn on."
          }
        },
        "details": {
          "importantTimings": "Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM",
          "meals": "Complimentary Breakfast & Traditional Lunch.",
          "transport": "AC Private Sedan with professional local driver (includes first-aid kit and bottled water).",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Lakefront Guest House (Scenic balcony views, hot water, western-style bathrooms)",
          "weather": "Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.",
          "dressCode": "Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.",
          "packingSuggestions": "Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 3 to 4 hours local tour"
        }
      },
      {
        "day": 3,
        "title": "Excursion to Glacier 3000 Local Culture Park",
        "location": "Les Diablerets",
        "overview": "Excursion to Glacier 3000 Local Culture Park and surrounding craft villages to experience native arts, handlooms, and culture.",
        "schedule": {
          "morning": {
            "title": "Nature Walk at Glacier 3000 Local Culture Park",
            "description": "Guided scenic walk near the lake or parks surrounding Glacier 3000 Local Culture Park. Enjoy quiet reflection and fresh air."
          },
          "afternoon": {
            "title": "Local Handloom Visit",
            "description": "Visit local cottage industries to see artisans hand-weaving fabrics and crafting traditional wooden toys."
          },
          "evening": {
            "title": "Cultural Dance & Music Show",
            "description": "Attend a traditional cultural presentation depicting historical folk tales, followed by dinner."
          }
        },
        "details": {
          "importantTimings": "Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM",
          "meals": "Breakfast & Special Dinner Buffet.",
          "transport": "AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Premium Executive Hotel (AC rooms, elevator access, 24/7 front desk assistance)",
          "weather": "Perfect travel weather with low humidity and comfortable evening temperature 20°C.",
          "dressCode": "Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.",
          "packingSuggestions": "Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 3 to 4 hours local tour"
        }
      },
      {
        "day": 4,
        "title": "Souvenir Shopping & Onward Departure",
        "location": "Les Diablerets",
        "overview": "Conclude your memorable stay in Les Diablerets with local craft shopping, checkout, and outbound transfers.",
        "schedule": {
          "morning": {
            "title": "Handicrafts Shopping",
            "description": "Visit local co-operative markets to buy traditional souvenirs, regional sweets, or native organic spices."
          },
          "afternoon": {
            "title": "Check-out & Packing",
            "description": "Return to your hotel, pack your bags, clear any local incidentals, and check out from your rooms."
          },
          "evening": {
            "title": "Outbound Transfer",
            "description": "Board your private vehicle transfer to the airport or railway station for your onward return journey home."
          }
        },
        "details": {
          "importantTimings": "Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM",
          "meals": "Complimentary Healthy Breakfast included.",
          "transport": "AC Private SUV for comfortable road transfers with regular rest stops.",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Standard Comfort Hotel (Fully sanitized rooms, private bathroom, free Wi-Fi, desk space)",
          "weather": "Clear sky, comfortable morning temperature 21°C, warming up to 26°C by noon.",
          "dressCode": "Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.",
          "packingSuggestions": "Walking socks, small daypack for personal belongings, sanitizers, light jacket.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 1 to 2 hours transfer"
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
      "Day 1: Arrival & Welcome at Glacier 3000",
      "Day 2: Guided Sightseeing & Exploration of Glacier 3000",
      "Day 3: Departure"
    ],
    "cancellationSummary": "Get a 100% full refund on cancellations made up to 15 days before the departure. Rescheduling options are fully flexible."
  },
  {
    "id": "family-gol-gumbaz",
    "title": "Gol Gumbaz Experience",
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
        "title": "Arrival & Settle in at Vijayapura",
        "location": "Vijayapura",
        "overview": "Welcome to your yatra. Arrive in Vijayapura, transfer to your stay, and rest before your sightseeing tour.",
        "schedule": {
          "morning": {
            "title": "Arrival & Check-in",
            "description": "Arrive at the nearest transit hub. Meet our coordinator and transfer to your pre-booked stay in Vijayapura."
          },
          "afternoon": {
            "title": "Leisure & Rest",
            "description": "Check into your hotel room, unpack your luggage, and rest to recover from your flight or train journey."
          },
          "evening": {
            "title": "Orientation Walk",
            "description": "Meet your local guide for a small walk around the neighborhood. Receive a detailed brief on local customs."
          }
        },
        "details": {
          "importantTimings": "Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM",
          "meals": "Welcome Drink & Buffet Dinner included.",
          "transport": "AC Shuttle Transit for close proximity site transfers and passenger drops.",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Heritage Boutique Resort (Comfortable rooms, garden paths, active room services)",
          "weather": "Warm and sunny afternoon, ideal for outdoor sightseeing, average temp 24°C.",
          "dressCode": "Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.",
          "packingSuggestions": "Comfortable travel footwear, photo ID, essential personal medication, daypack.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 1 to 2 hours transfer"
        }
      },
      {
        "day": 2,
        "title": "Explore Gol Gumbaz Heritage Centre",
        "location": "Vijayapura",
        "overview": "Spend your day visiting Gol Gumbaz Heritage Centre, the primary attraction in Gol Gumbaz, accompanied by our expert guide.",
        "schedule": {
          "morning": {
            "title": "Guided Tour of Gol Gumbaz Heritage Centre",
            "description": "Early morning visit to Gol Gumbaz Heritage Centre to avoid crowds. Learn about the heritage and unique history of this landmark."
          },
          "afternoon": {
            "title": "Local Traditional Lunch",
            "description": "Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings."
          },
          "evening": {
            "title": "Evening walk at Gol Gumbaz Panoramic Viewpoint",
            "description": "Stroll around Gol Gumbaz Panoramic Viewpoint for scenic sunset views. Capture great family photos as the evening lights turn on."
          }
        },
        "details": {
          "importantTimings": "Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM",
          "meals": "Complimentary Breakfast & Traditional Lunch.",
          "transport": "AC Private Sedan with professional local driver (includes first-aid kit and bottled water).",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Lakefront Guest House (Scenic balcony views, hot water, western-style bathrooms)",
          "weather": "Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.",
          "dressCode": "Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.",
          "packingSuggestions": "Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 3 to 4 hours local tour"
        }
      },
      {
        "day": 3,
        "title": "Excursion to Gol Gumbaz Local Culture Park",
        "location": "Vijayapura",
        "overview": "Excursion to Gol Gumbaz Local Culture Park and surrounding craft villages to experience native arts, handlooms, and culture.",
        "schedule": {
          "morning": {
            "title": "Nature Walk at Gol Gumbaz Local Culture Park",
            "description": "Guided scenic walk near the lake or parks surrounding Gol Gumbaz Local Culture Park. Enjoy quiet reflection and fresh air."
          },
          "afternoon": {
            "title": "Local Handloom Visit",
            "description": "Visit local cottage industries to see artisans hand-weaving fabrics and crafting traditional wooden toys."
          },
          "evening": {
            "title": "Cultural Dance & Music Show",
            "description": "Attend a traditional cultural presentation depicting historical folk tales, followed by dinner."
          }
        },
        "details": {
          "importantTimings": "Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM",
          "meals": "Breakfast & Special Dinner Buffet.",
          "transport": "AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Premium Executive Hotel (AC rooms, elevator access, 24/7 front desk assistance)",
          "weather": "Perfect travel weather with low humidity and comfortable evening temperature 20°C.",
          "dressCode": "Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.",
          "packingSuggestions": "Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 3 to 4 hours local tour"
        }
      },
      {
        "day": 4,
        "title": "Souvenir Shopping & Onward Departure",
        "location": "Vijayapura",
        "overview": "Conclude your memorable stay in Vijayapura with local craft shopping, checkout, and outbound transfers.",
        "schedule": {
          "morning": {
            "title": "Handicrafts Shopping",
            "description": "Visit local co-operative markets to buy traditional souvenirs, regional sweets, or native organic spices."
          },
          "afternoon": {
            "title": "Check-out & Packing",
            "description": "Return to your hotel, pack your bags, clear any local incidentals, and check out from your rooms."
          },
          "evening": {
            "title": "Outbound Transfer",
            "description": "Board your private vehicle transfer to the airport or railway station for your onward return journey home."
          }
        },
        "details": {
          "importantTimings": "Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM",
          "meals": "Complimentary Healthy Breakfast included.",
          "transport": "AC Private SUV for comfortable road transfers with regular rest stops.",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Standard Comfort Hotel (Fully sanitized rooms, private bathroom, free Wi-Fi, desk space)",
          "weather": "Clear sky, comfortable morning temperature 21°C, warming up to 26°C by noon.",
          "dressCode": "Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.",
          "packingSuggestions": "Walking socks, small daypack for personal belongings, sanitizers, light jacket.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 1 to 2 hours transfer"
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
      "Day 1: Arrival & Welcome at Gol Gumbaz",
      "Day 2: Guided Sightseeing & Exploration of Gol Gumbaz",
      "Day 3: Departure"
    ],
    "cancellationSummary": "Get a 100% full refund on cancellations made up to 15 days before the departure. Rescheduling options are fully flexible."
  },
  {
    "id": "family-hampi-monuments",
    "title": "Hampi Monuments Experience",
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
        "title": "Arrival & Settle in at Vijayanagara",
        "location": "Vijayanagara",
        "overview": "Welcome to your yatra. Arrive in Vijayanagara, transfer to your stay, and rest before your sightseeing tour.",
        "schedule": {
          "morning": {
            "title": "Arrival & Check-in",
            "description": "Arrive at the nearest transit hub. Meet our coordinator and transfer to your pre-booked stay in Vijayanagara."
          },
          "afternoon": {
            "title": "Leisure & Rest",
            "description": "Check into your hotel room, unpack your luggage, and rest to recover from your flight or train journey."
          },
          "evening": {
            "title": "Orientation Walk",
            "description": "Meet your local guide for a small walk around the neighborhood. Receive a detailed brief on local customs."
          }
        },
        "details": {
          "importantTimings": "Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM",
          "meals": "Welcome Drink & Buffet Dinner included.",
          "transport": "AC Shuttle Transit for close proximity site transfers and passenger drops.",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Heritage Boutique Resort (Comfortable rooms, garden paths, active room services)",
          "weather": "Warm and sunny afternoon, ideal for outdoor sightseeing, average temp 24°C.",
          "dressCode": "Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.",
          "packingSuggestions": "Comfortable travel footwear, photo ID, essential personal medication, daypack.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 1 to 2 hours transfer"
        }
      },
      {
        "day": 2,
        "title": "Explore Hampi Monuments Heritage Centre",
        "location": "Vijayanagara",
        "overview": "Spend your day visiting Hampi Monuments Heritage Centre, the primary attraction in Hampi Monuments, accompanied by our expert guide.",
        "schedule": {
          "morning": {
            "title": "Guided Tour of Hampi Monuments Heritage Centre",
            "description": "Early morning visit to Hampi Monuments Heritage Centre to avoid crowds. Learn about the heritage and unique history of this landmark."
          },
          "afternoon": {
            "title": "Local Traditional Lunch",
            "description": "Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings."
          },
          "evening": {
            "title": "Evening walk at Hampi Monuments Panoramic Viewpoint",
            "description": "Stroll around Hampi Monuments Panoramic Viewpoint for scenic sunset views. Capture great family photos as the evening lights turn on."
          }
        },
        "details": {
          "importantTimings": "Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM",
          "meals": "Complimentary Breakfast & Traditional Lunch.",
          "transport": "AC Private Sedan with professional local driver (includes first-aid kit and bottled water).",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Lakefront Guest House (Scenic balcony views, hot water, western-style bathrooms)",
          "weather": "Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.",
          "dressCode": "Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.",
          "packingSuggestions": "Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 3 to 4 hours local tour"
        }
      },
      {
        "day": 3,
        "title": "Excursion to Hampi Monuments Local Culture Park",
        "location": "Vijayanagara",
        "overview": "Excursion to Hampi Monuments Local Culture Park and surrounding craft villages to experience native arts, handlooms, and culture.",
        "schedule": {
          "morning": {
            "title": "Nature Walk at Hampi Monuments Local Culture Park",
            "description": "Guided scenic walk near the lake or parks surrounding Hampi Monuments Local Culture Park. Enjoy quiet reflection and fresh air."
          },
          "afternoon": {
            "title": "Local Handloom Visit",
            "description": "Visit local cottage industries to see artisans hand-weaving fabrics and crafting traditional wooden toys."
          },
          "evening": {
            "title": "Cultural Dance & Music Show",
            "description": "Attend a traditional cultural presentation depicting historical folk tales, followed by dinner."
          }
        },
        "details": {
          "importantTimings": "Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM",
          "meals": "Breakfast & Special Dinner Buffet.",
          "transport": "AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Premium Executive Hotel (AC rooms, elevator access, 24/7 front desk assistance)",
          "weather": "Perfect travel weather with low humidity and comfortable evening temperature 20°C.",
          "dressCode": "Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.",
          "packingSuggestions": "Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 3 to 4 hours local tour"
        }
      },
      {
        "day": 4,
        "title": "Souvenir Shopping & Onward Departure",
        "location": "Vijayanagara",
        "overview": "Conclude your memorable stay in Vijayanagara with local craft shopping, checkout, and outbound transfers.",
        "schedule": {
          "morning": {
            "title": "Handicrafts Shopping",
            "description": "Visit local co-operative markets to buy traditional souvenirs, regional sweets, or native organic spices."
          },
          "afternoon": {
            "title": "Check-out & Packing",
            "description": "Return to your hotel, pack your bags, clear any local incidentals, and check out from your rooms."
          },
          "evening": {
            "title": "Outbound Transfer",
            "description": "Board your private vehicle transfer to the airport or railway station for your onward return journey home."
          }
        },
        "details": {
          "importantTimings": "Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM",
          "meals": "Complimentary Healthy Breakfast included.",
          "transport": "AC Private SUV for comfortable road transfers with regular rest stops.",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Standard Comfort Hotel (Fully sanitized rooms, private bathroom, free Wi-Fi, desk space)",
          "weather": "Clear sky, comfortable morning temperature 21°C, warming up to 26°C by noon.",
          "dressCode": "Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.",
          "packingSuggestions": "Walking socks, small daypack for personal belongings, sanitizers, light jacket.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 1 to 2 hours transfer"
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
      "Day 1: Arrival & Welcome at Hampi Monuments",
      "Day 2: Guided Sightseeing & Exploration of Hampi Monuments",
      "Day 3: Departure"
    ],
    "cancellationSummary": "Get a 100% full refund on cancellations made up to 15 days before the departure. Rescheduling options are fully flexible."
  },
  {
    "id": "family-hawa-mahal",
    "title": "Hawa Mahal Experience",
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
        "title": "Arrival & Settle in at Jaipur",
        "location": "Jaipur",
        "overview": "Welcome to your yatra. Arrive in Jaipur, transfer to your stay, and rest before your sightseeing tour.",
        "schedule": {
          "morning": {
            "title": "Arrival & Check-in",
            "description": "Arrive at the nearest transit hub. Meet our coordinator and transfer to your pre-booked stay in Jaipur."
          },
          "afternoon": {
            "title": "Leisure & Rest",
            "description": "Check into your hotel room, unpack your luggage, and rest to recover from your flight or train journey."
          },
          "evening": {
            "title": "Orientation Walk",
            "description": "Meet your local guide for a small walk around the neighborhood. Receive a detailed brief on local customs."
          }
        },
        "details": {
          "importantTimings": "Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM",
          "meals": "Welcome Drink & Buffet Dinner included.",
          "transport": "AC Shuttle Transit for close proximity site transfers and passenger drops.",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Heritage Boutique Resort (Comfortable rooms, garden paths, active room services)",
          "weather": "Warm and sunny afternoon, ideal for outdoor sightseeing, average temp 24°C.",
          "dressCode": "Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.",
          "packingSuggestions": "Comfortable travel footwear, photo ID, essential personal medication, daypack.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 1 to 2 hours transfer"
        }
      },
      {
        "day": 2,
        "title": "Explore Hawa Mahal Heritage Centre",
        "location": "Jaipur",
        "overview": "Spend your day visiting Hawa Mahal Heritage Centre, the primary attraction in Hawa Mahal, accompanied by our expert guide.",
        "schedule": {
          "morning": {
            "title": "Guided Tour of Hawa Mahal Heritage Centre",
            "description": "Early morning visit to Hawa Mahal Heritage Centre to avoid crowds. Learn about the heritage and unique history of this landmark."
          },
          "afternoon": {
            "title": "Local Traditional Lunch",
            "description": "Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings."
          },
          "evening": {
            "title": "Evening walk at Hawa Mahal Panoramic Viewpoint",
            "description": "Stroll around Hawa Mahal Panoramic Viewpoint for scenic sunset views. Capture great family photos as the evening lights turn on."
          }
        },
        "details": {
          "importantTimings": "Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM",
          "meals": "Complimentary Breakfast & Traditional Lunch.",
          "transport": "AC Private Sedan with professional local driver (includes first-aid kit and bottled water).",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Lakefront Guest House (Scenic balcony views, hot water, western-style bathrooms)",
          "weather": "Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.",
          "dressCode": "Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.",
          "packingSuggestions": "Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 3 to 4 hours local tour"
        }
      },
      {
        "day": 3,
        "title": "Excursion to Hawa Mahal Local Culture Park",
        "location": "Jaipur",
        "overview": "Excursion to Hawa Mahal Local Culture Park and surrounding craft villages to experience native arts, handlooms, and culture.",
        "schedule": {
          "morning": {
            "title": "Nature Walk at Hawa Mahal Local Culture Park",
            "description": "Guided scenic walk near the lake or parks surrounding Hawa Mahal Local Culture Park. Enjoy quiet reflection and fresh air."
          },
          "afternoon": {
            "title": "Local Handloom Visit",
            "description": "Visit local cottage industries to see artisans hand-weaving fabrics and crafting traditional wooden toys."
          },
          "evening": {
            "title": "Cultural Dance & Music Show",
            "description": "Attend a traditional cultural presentation depicting historical folk tales, followed by dinner."
          }
        },
        "details": {
          "importantTimings": "Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM",
          "meals": "Breakfast & Special Dinner Buffet.",
          "transport": "AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Premium Executive Hotel (AC rooms, elevator access, 24/7 front desk assistance)",
          "weather": "Perfect travel weather with low humidity and comfortable evening temperature 20°C.",
          "dressCode": "Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.",
          "packingSuggestions": "Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 3 to 4 hours local tour"
        }
      },
      {
        "day": 4,
        "title": "Souvenir Shopping & Onward Departure",
        "location": "Jaipur",
        "overview": "Conclude your memorable stay in Jaipur with local craft shopping, checkout, and outbound transfers.",
        "schedule": {
          "morning": {
            "title": "Handicrafts Shopping",
            "description": "Visit local co-operative markets to buy traditional souvenirs, regional sweets, or native organic spices."
          },
          "afternoon": {
            "title": "Check-out & Packing",
            "description": "Return to your hotel, pack your bags, clear any local incidentals, and check out from your rooms."
          },
          "evening": {
            "title": "Outbound Transfer",
            "description": "Board your private vehicle transfer to the airport or railway station for your onward return journey home."
          }
        },
        "details": {
          "importantTimings": "Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM",
          "meals": "Complimentary Healthy Breakfast included.",
          "transport": "AC Private SUV for comfortable road transfers with regular rest stops.",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Standard Comfort Hotel (Fully sanitized rooms, private bathroom, free Wi-Fi, desk space)",
          "weather": "Clear sky, comfortable morning temperature 21°C, warming up to 26°C by noon.",
          "dressCode": "Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.",
          "packingSuggestions": "Walking socks, small daypack for personal belongings, sanitizers, light jacket.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 1 to 2 hours transfer"
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
      "Day 1: Arrival & Welcome at Hawa Mahal",
      "Day 2: Guided Sightseeing & Exploration of Hawa Mahal",
      "Day 3: Departure"
    ],
    "cancellationSummary": "Get a 100% full refund on cancellations made up to 15 days before the departure. Rescheduling options are fully flexible."
  },
  {
    "id": "family-leaning-tower-of-pisa",
    "title": "Leaning Tower of Pisa Experience",
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
        "title": "Arrival & Settle in at Pisa",
        "location": "Pisa",
        "overview": "Welcome to your yatra. Arrive in Pisa, transfer to your stay, and rest before your sightseeing tour.",
        "schedule": {
          "morning": {
            "title": "Arrival & Check-in",
            "description": "Arrive at the nearest transit hub. Meet our coordinator and transfer to your pre-booked stay in Pisa."
          },
          "afternoon": {
            "title": "Leisure & Rest",
            "description": "Check into your hotel room, unpack your luggage, and rest to recover from your flight or train journey."
          },
          "evening": {
            "title": "Orientation Walk",
            "description": "Meet your local guide for a small walk around the neighborhood. Receive a detailed brief on local customs."
          }
        },
        "details": {
          "importantTimings": "Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM",
          "meals": "Welcome Drink & Buffet Dinner included.",
          "transport": "AC Shuttle Transit for close proximity site transfers and passenger drops.",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Heritage Boutique Resort (Comfortable rooms, garden paths, active room services)",
          "weather": "Warm and sunny afternoon, ideal for outdoor sightseeing, average temp 24°C.",
          "dressCode": "Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.",
          "packingSuggestions": "Comfortable travel footwear, photo ID, essential personal medication, daypack.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 1 to 2 hours transfer"
        }
      },
      {
        "day": 2,
        "title": "Explore Leaning Tower of Pisa Heritage Centre",
        "location": "Pisa",
        "overview": "Spend your day visiting Leaning Tower of Pisa Heritage Centre, the primary attraction in Leaning Tower of Pisa, accompanied by our expert guide.",
        "schedule": {
          "morning": {
            "title": "Guided Tour of Leaning Tower of Pisa Heritage Centre",
            "description": "Early morning visit to Leaning Tower of Pisa Heritage Centre to avoid crowds. Learn about the heritage and unique history of this landmark."
          },
          "afternoon": {
            "title": "Local Traditional Lunch",
            "description": "Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings."
          },
          "evening": {
            "title": "Evening walk at Leaning Tower of Pisa Panoramic Viewpoint",
            "description": "Stroll around Leaning Tower of Pisa Panoramic Viewpoint for scenic sunset views. Capture great family photos as the evening lights turn on."
          }
        },
        "details": {
          "importantTimings": "Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM",
          "meals": "Complimentary Breakfast & Traditional Lunch.",
          "transport": "AC Private Sedan with professional local driver (includes first-aid kit and bottled water).",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Lakefront Guest House (Scenic balcony views, hot water, western-style bathrooms)",
          "weather": "Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.",
          "dressCode": "Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.",
          "packingSuggestions": "Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 3 to 4 hours local tour"
        }
      },
      {
        "day": 3,
        "title": "Excursion to Leaning Tower of Pisa Local Culture Park",
        "location": "Pisa",
        "overview": "Excursion to Leaning Tower of Pisa Local Culture Park and surrounding craft villages to experience native arts, handlooms, and culture.",
        "schedule": {
          "morning": {
            "title": "Nature Walk at Leaning Tower of Pisa Local Culture Park",
            "description": "Guided scenic walk near the lake or parks surrounding Leaning Tower of Pisa Local Culture Park. Enjoy quiet reflection and fresh air."
          },
          "afternoon": {
            "title": "Local Handloom Visit",
            "description": "Visit local cottage industries to see artisans hand-weaving fabrics and crafting traditional wooden toys."
          },
          "evening": {
            "title": "Cultural Dance & Music Show",
            "description": "Attend a traditional cultural presentation depicting historical folk tales, followed by dinner."
          }
        },
        "details": {
          "importantTimings": "Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM",
          "meals": "Breakfast & Special Dinner Buffet.",
          "transport": "AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Premium Executive Hotel (AC rooms, elevator access, 24/7 front desk assistance)",
          "weather": "Perfect travel weather with low humidity and comfortable evening temperature 20°C.",
          "dressCode": "Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.",
          "packingSuggestions": "Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 3 to 4 hours local tour"
        }
      },
      {
        "day": 4,
        "title": "Souvenir Shopping & Onward Departure",
        "location": "Pisa",
        "overview": "Conclude your memorable stay in Pisa with local craft shopping, checkout, and outbound transfers.",
        "schedule": {
          "morning": {
            "title": "Handicrafts Shopping",
            "description": "Visit local co-operative markets to buy traditional souvenirs, regional sweets, or native organic spices."
          },
          "afternoon": {
            "title": "Check-out & Packing",
            "description": "Return to your hotel, pack your bags, clear any local incidentals, and check out from your rooms."
          },
          "evening": {
            "title": "Outbound Transfer",
            "description": "Board your private vehicle transfer to the airport or railway station for your onward return journey home."
          }
        },
        "details": {
          "importantTimings": "Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM",
          "meals": "Complimentary Healthy Breakfast included.",
          "transport": "AC Private SUV for comfortable road transfers with regular rest stops.",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Standard Comfort Hotel (Fully sanitized rooms, private bathroom, free Wi-Fi, desk space)",
          "weather": "Clear sky, comfortable morning temperature 21°C, warming up to 26°C by noon.",
          "dressCode": "Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.",
          "packingSuggestions": "Walking socks, small daypack for personal belongings, sanitizers, light jacket.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 1 to 2 hours transfer"
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
      "Day 1: Arrival & Welcome at Leaning Tower of Pisa",
      "Day 2: Guided Sightseeing & Exploration of Leaning Tower of Pisa",
      "Day 3: Departure"
    ],
    "cancellationSummary": "Get a 100% full refund on cancellations made up to 15 days before the departure. Rescheduling options are fully flexible."
  },
  {
    "id": "family-living-root-bridges",
    "title": "Living Root Bridges Experience",
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
        "title": "Arrival & Settle in at Cherrapunji",
        "location": "Cherrapunji",
        "overview": "Welcome to your yatra. Arrive in Cherrapunji, transfer to your stay, and rest before your sightseeing tour.",
        "schedule": {
          "morning": {
            "title": "Arrival & Check-in",
            "description": "Arrive at the nearest transit hub. Meet our coordinator and transfer to your pre-booked stay in Cherrapunji."
          },
          "afternoon": {
            "title": "Leisure & Rest",
            "description": "Check into your hotel room, unpack your luggage, and rest to recover from your flight or train journey."
          },
          "evening": {
            "title": "Orientation Walk",
            "description": "Meet your local guide for a small walk around the neighborhood. Receive a detailed brief on local customs."
          }
        },
        "details": {
          "importantTimings": "Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM",
          "meals": "Welcome Drink & Buffet Dinner included.",
          "transport": "AC Shuttle Transit for close proximity site transfers and passenger drops.",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Heritage Boutique Resort (Comfortable rooms, garden paths, active room services)",
          "weather": "Warm and sunny afternoon, ideal for outdoor sightseeing, average temp 24°C.",
          "dressCode": "Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.",
          "packingSuggestions": "Comfortable travel footwear, photo ID, essential personal medication, daypack.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 1 to 2 hours transfer"
        }
      },
      {
        "day": 2,
        "title": "Explore Living Root Bridges Heritage Centre",
        "location": "Cherrapunji",
        "overview": "Spend your day visiting Living Root Bridges Heritage Centre, the primary attraction in Living Root Bridges, accompanied by our expert guide.",
        "schedule": {
          "morning": {
            "title": "Guided Tour of Living Root Bridges Heritage Centre",
            "description": "Early morning visit to Living Root Bridges Heritage Centre to avoid crowds. Learn about the heritage and unique history of this landmark."
          },
          "afternoon": {
            "title": "Local Traditional Lunch",
            "description": "Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings."
          },
          "evening": {
            "title": "Evening walk at Living Root Bridges Panoramic Viewpoint",
            "description": "Stroll around Living Root Bridges Panoramic Viewpoint for scenic sunset views. Capture great family photos as the evening lights turn on."
          }
        },
        "details": {
          "importantTimings": "Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM",
          "meals": "Complimentary Breakfast & Traditional Lunch.",
          "transport": "AC Private Sedan with professional local driver (includes first-aid kit and bottled water).",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Lakefront Guest House (Scenic balcony views, hot water, western-style bathrooms)",
          "weather": "Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.",
          "dressCode": "Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.",
          "packingSuggestions": "Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 3 to 4 hours local tour"
        }
      },
      {
        "day": 3,
        "title": "Excursion to Living Root Bridges Local Culture Park",
        "location": "Cherrapunji",
        "overview": "Excursion to Living Root Bridges Local Culture Park and surrounding craft villages to experience native arts, handlooms, and culture.",
        "schedule": {
          "morning": {
            "title": "Nature Walk at Living Root Bridges Local Culture Park",
            "description": "Guided scenic walk near the lake or parks surrounding Living Root Bridges Local Culture Park. Enjoy quiet reflection and fresh air."
          },
          "afternoon": {
            "title": "Local Handloom Visit",
            "description": "Visit local cottage industries to see artisans hand-weaving fabrics and crafting traditional wooden toys."
          },
          "evening": {
            "title": "Cultural Dance & Music Show",
            "description": "Attend a traditional cultural presentation depicting historical folk tales, followed by dinner."
          }
        },
        "details": {
          "importantTimings": "Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM",
          "meals": "Breakfast & Special Dinner Buffet.",
          "transport": "AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Premium Executive Hotel (AC rooms, elevator access, 24/7 front desk assistance)",
          "weather": "Perfect travel weather with low humidity and comfortable evening temperature 20°C.",
          "dressCode": "Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.",
          "packingSuggestions": "Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 3 to 4 hours local tour"
        }
      },
      {
        "day": 4,
        "title": "Souvenir Shopping & Onward Departure",
        "location": "Cherrapunji",
        "overview": "Conclude your memorable stay in Cherrapunji with local craft shopping, checkout, and outbound transfers.",
        "schedule": {
          "morning": {
            "title": "Handicrafts Shopping",
            "description": "Visit local co-operative markets to buy traditional souvenirs, regional sweets, or native organic spices."
          },
          "afternoon": {
            "title": "Check-out & Packing",
            "description": "Return to your hotel, pack your bags, clear any local incidentals, and check out from your rooms."
          },
          "evening": {
            "title": "Outbound Transfer",
            "description": "Board your private vehicle transfer to the airport or railway station for your onward return journey home."
          }
        },
        "details": {
          "importantTimings": "Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM",
          "meals": "Complimentary Healthy Breakfast included.",
          "transport": "AC Private SUV for comfortable road transfers with regular rest stops.",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Standard Comfort Hotel (Fully sanitized rooms, private bathroom, free Wi-Fi, desk space)",
          "weather": "Clear sky, comfortable morning temperature 21°C, warming up to 26°C by noon.",
          "dressCode": "Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.",
          "packingSuggestions": "Walking socks, small daypack for personal belongings, sanitizers, light jacket.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 1 to 2 hours transfer"
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
      "Day 1: Arrival & Welcome at Living Root Bridges",
      "Day 2: Guided Sightseeing & Exploration of Living Root Bridges",
      "Day 3: Departure"
    ],
    "cancellationSummary": "Get a 100% full refund on cancellations made up to 15 days before the departure. Rescheduling options are fully flexible."
  },
  {
    "id": "family-london-eye",
    "title": "London Eye Experience",
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
        "title": "Arrival & Settle in at London",
        "location": "London",
        "overview": "Welcome to your yatra. Arrive in London, transfer to your stay, and rest before your sightseeing tour.",
        "schedule": {
          "morning": {
            "title": "Arrival & Check-in",
            "description": "Arrive at the nearest transit hub. Meet our coordinator and transfer to your pre-booked stay in London."
          },
          "afternoon": {
            "title": "Leisure & Rest",
            "description": "Check into your hotel room, unpack your luggage, and rest to recover from your flight or train journey."
          },
          "evening": {
            "title": "Orientation Walk",
            "description": "Meet your local guide for a small walk around the neighborhood. Receive a detailed brief on local customs."
          }
        },
        "details": {
          "importantTimings": "Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM",
          "meals": "Welcome Drink & Buffet Dinner included.",
          "transport": "AC Shuttle Transit for close proximity site transfers and passenger drops.",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Heritage Boutique Resort (Comfortable rooms, garden paths, active room services)",
          "weather": "Warm and sunny afternoon, ideal for outdoor sightseeing, average temp 24°C.",
          "dressCode": "Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.",
          "packingSuggestions": "Comfortable travel footwear, photo ID, essential personal medication, daypack.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 1 to 2 hours transfer"
        }
      },
      {
        "day": 2,
        "title": "Explore London Eye Heritage Centre",
        "location": "London",
        "overview": "Spend your day visiting London Eye Heritage Centre, the primary attraction in London Eye, accompanied by our expert guide.",
        "schedule": {
          "morning": {
            "title": "Guided Tour of London Eye Heritage Centre",
            "description": "Early morning visit to London Eye Heritage Centre to avoid crowds. Learn about the heritage and unique history of this landmark."
          },
          "afternoon": {
            "title": "Local Traditional Lunch",
            "description": "Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings."
          },
          "evening": {
            "title": "Evening walk at London Eye Panoramic Viewpoint",
            "description": "Stroll around London Eye Panoramic Viewpoint for scenic sunset views. Capture great family photos as the evening lights turn on."
          }
        },
        "details": {
          "importantTimings": "Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM",
          "meals": "Complimentary Breakfast & Traditional Lunch.",
          "transport": "AC Private Sedan with professional local driver (includes first-aid kit and bottled water).",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Lakefront Guest House (Scenic balcony views, hot water, western-style bathrooms)",
          "weather": "Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.",
          "dressCode": "Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.",
          "packingSuggestions": "Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 3 to 4 hours local tour"
        }
      },
      {
        "day": 3,
        "title": "Excursion to London Eye Local Culture Park",
        "location": "London",
        "overview": "Excursion to London Eye Local Culture Park and surrounding craft villages to experience native arts, handlooms, and culture.",
        "schedule": {
          "morning": {
            "title": "Nature Walk at London Eye Local Culture Park",
            "description": "Guided scenic walk near the lake or parks surrounding London Eye Local Culture Park. Enjoy quiet reflection and fresh air."
          },
          "afternoon": {
            "title": "Local Handloom Visit",
            "description": "Visit local cottage industries to see artisans hand-weaving fabrics and crafting traditional wooden toys."
          },
          "evening": {
            "title": "Cultural Dance & Music Show",
            "description": "Attend a traditional cultural presentation depicting historical folk tales, followed by dinner."
          }
        },
        "details": {
          "importantTimings": "Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM",
          "meals": "Breakfast & Special Dinner Buffet.",
          "transport": "AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Premium Executive Hotel (AC rooms, elevator access, 24/7 front desk assistance)",
          "weather": "Perfect travel weather with low humidity and comfortable evening temperature 20°C.",
          "dressCode": "Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.",
          "packingSuggestions": "Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 3 to 4 hours local tour"
        }
      },
      {
        "day": 4,
        "title": "Souvenir Shopping & Onward Departure",
        "location": "London",
        "overview": "Conclude your memorable stay in London with local craft shopping, checkout, and outbound transfers.",
        "schedule": {
          "morning": {
            "title": "Handicrafts Shopping",
            "description": "Visit local co-operative markets to buy traditional souvenirs, regional sweets, or native organic spices."
          },
          "afternoon": {
            "title": "Check-out & Packing",
            "description": "Return to your hotel, pack your bags, clear any local incidentals, and check out from your rooms."
          },
          "evening": {
            "title": "Outbound Transfer",
            "description": "Board your private vehicle transfer to the airport or railway station for your onward return journey home."
          }
        },
        "details": {
          "importantTimings": "Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM",
          "meals": "Complimentary Healthy Breakfast included.",
          "transport": "AC Private SUV for comfortable road transfers with regular rest stops.",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Standard Comfort Hotel (Fully sanitized rooms, private bathroom, free Wi-Fi, desk space)",
          "weather": "Clear sky, comfortable morning temperature 21°C, warming up to 26°C by noon.",
          "dressCode": "Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.",
          "packingSuggestions": "Walking socks, small daypack for personal belongings, sanitizers, light jacket.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 1 to 2 hours transfer"
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
      "Day 1: Arrival & Welcome at London Eye",
      "Day 2: Guided Sightseeing & Exploration of London Eye",
      "Day 3: Departure"
    ],
    "cancellationSummary": "Get a 100% full refund on cancellations made up to 15 days before the departure. Rescheduling options are fully flexible."
  },
  {
    "id": "family-marina-bay-sands-skypark",
    "title": "Marina Bay Sands SkyPark Experience",
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
        "title": "Arrival & Settle in at Singapore",
        "location": "Singapore",
        "overview": "Welcome to your yatra. Arrive in Singapore, transfer to your stay, and rest before your sightseeing tour.",
        "schedule": {
          "morning": {
            "title": "Arrival & Check-in",
            "description": "Arrive at the nearest transit hub. Meet our coordinator and transfer to your pre-booked stay in Singapore."
          },
          "afternoon": {
            "title": "Leisure & Rest",
            "description": "Check into your hotel room, unpack your luggage, and rest to recover from your flight or train journey."
          },
          "evening": {
            "title": "Orientation Walk",
            "description": "Meet your local guide for a small walk around the neighborhood. Receive a detailed brief on local customs."
          }
        },
        "details": {
          "importantTimings": "Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM",
          "meals": "Welcome Drink & Buffet Dinner included.",
          "transport": "AC Shuttle Transit for close proximity site transfers and passenger drops.",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Heritage Boutique Resort (Comfortable rooms, garden paths, active room services)",
          "weather": "Warm and sunny afternoon, ideal for outdoor sightseeing, average temp 24°C.",
          "dressCode": "Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.",
          "packingSuggestions": "Comfortable travel footwear, photo ID, essential personal medication, daypack.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 1 to 2 hours transfer"
        }
      },
      {
        "day": 2,
        "title": "Explore Marina Bay Sands SkyPark Heritage Centre",
        "location": "Singapore",
        "overview": "Spend your day visiting Marina Bay Sands SkyPark Heritage Centre, the primary attraction in Marina Bay Sands SkyPark, accompanied by our expert guide.",
        "schedule": {
          "morning": {
            "title": "Guided Tour of Marina Bay Sands SkyPark Heritage Centre",
            "description": "Early morning visit to Marina Bay Sands SkyPark Heritage Centre to avoid crowds. Learn about the heritage and unique history of this landmark."
          },
          "afternoon": {
            "title": "Local Traditional Lunch",
            "description": "Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings."
          },
          "evening": {
            "title": "Evening walk at Marina Bay Sands SkyPark Panoramic Viewpoint",
            "description": "Stroll around Marina Bay Sands SkyPark Panoramic Viewpoint for scenic sunset views. Capture great family photos as the evening lights turn on."
          }
        },
        "details": {
          "importantTimings": "Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM",
          "meals": "Complimentary Breakfast & Traditional Lunch.",
          "transport": "AC Private Sedan with professional local driver (includes first-aid kit and bottled water).",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Lakefront Guest House (Scenic balcony views, hot water, western-style bathrooms)",
          "weather": "Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.",
          "dressCode": "Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.",
          "packingSuggestions": "Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 3 to 4 hours local tour"
        }
      },
      {
        "day": 3,
        "title": "Excursion to Marina Bay Sands SkyPark Local Culture Park",
        "location": "Singapore",
        "overview": "Excursion to Marina Bay Sands SkyPark Local Culture Park and surrounding craft villages to experience native arts, handlooms, and culture.",
        "schedule": {
          "morning": {
            "title": "Nature Walk at Marina Bay Sands SkyPark Local Culture Park",
            "description": "Guided scenic walk near the lake or parks surrounding Marina Bay Sands SkyPark Local Culture Park. Enjoy quiet reflection and fresh air."
          },
          "afternoon": {
            "title": "Local Handloom Visit",
            "description": "Visit local cottage industries to see artisans hand-weaving fabrics and crafting traditional wooden toys."
          },
          "evening": {
            "title": "Cultural Dance & Music Show",
            "description": "Attend a traditional cultural presentation depicting historical folk tales, followed by dinner."
          }
        },
        "details": {
          "importantTimings": "Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM",
          "meals": "Breakfast & Special Dinner Buffet.",
          "transport": "AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Premium Executive Hotel (AC rooms, elevator access, 24/7 front desk assistance)",
          "weather": "Perfect travel weather with low humidity and comfortable evening temperature 20°C.",
          "dressCode": "Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.",
          "packingSuggestions": "Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 3 to 4 hours local tour"
        }
      },
      {
        "day": 4,
        "title": "Souvenir Shopping & Onward Departure",
        "location": "Singapore",
        "overview": "Conclude your memorable stay in Singapore with local craft shopping, checkout, and outbound transfers.",
        "schedule": {
          "morning": {
            "title": "Handicrafts Shopping",
            "description": "Visit local co-operative markets to buy traditional souvenirs, regional sweets, or native organic spices."
          },
          "afternoon": {
            "title": "Check-out & Packing",
            "description": "Return to your hotel, pack your bags, clear any local incidentals, and check out from your rooms."
          },
          "evening": {
            "title": "Outbound Transfer",
            "description": "Board your private vehicle transfer to the airport or railway station for your onward return journey home."
          }
        },
        "details": {
          "importantTimings": "Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM",
          "meals": "Complimentary Healthy Breakfast included.",
          "transport": "AC Private SUV for comfortable road transfers with regular rest stops.",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Standard Comfort Hotel (Fully sanitized rooms, private bathroom, free Wi-Fi, desk space)",
          "weather": "Clear sky, comfortable morning temperature 21°C, warming up to 26°C by noon.",
          "dressCode": "Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.",
          "packingSuggestions": "Walking socks, small daypack for personal belongings, sanitizers, light jacket.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 1 to 2 hours transfer"
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
      "Day 1: Arrival & Welcome at Marina Bay Sands SkyPark",
      "Day 2: Guided Sightseeing & Exploration of Marina Bay Sands SkyPark",
      "Day 3: Departure"
    ],
    "cancellationSummary": "Get a 100% full refund on cancellations made up to 15 days before the departure. Rescheduling options are fully flexible."
  },
  {
    "id": "family-mehrangarh-fort",
    "title": "Mehrangarh Fort Experience",
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
        "title": "Arrival & Settle in at Jodhpur",
        "location": "Jodhpur",
        "overview": "Welcome to your yatra. Arrive in Jodhpur, transfer to your stay, and rest before your sightseeing tour.",
        "schedule": {
          "morning": {
            "title": "Arrival & Check-in",
            "description": "Arrive at the nearest transit hub. Meet our coordinator and transfer to your pre-booked stay in Jodhpur."
          },
          "afternoon": {
            "title": "Leisure & Rest",
            "description": "Check into your hotel room, unpack your luggage, and rest to recover from your flight or train journey."
          },
          "evening": {
            "title": "Orientation Walk",
            "description": "Meet your local guide for a small walk around the neighborhood. Receive a detailed brief on local customs."
          }
        },
        "details": {
          "importantTimings": "Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM",
          "meals": "Welcome Drink & Buffet Dinner included.",
          "transport": "AC Shuttle Transit for close proximity site transfers and passenger drops.",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Heritage Boutique Resort (Comfortable rooms, garden paths, active room services)",
          "weather": "Warm and sunny afternoon, ideal for outdoor sightseeing, average temp 24°C.",
          "dressCode": "Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.",
          "packingSuggestions": "Comfortable travel footwear, photo ID, essential personal medication, daypack.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 1 to 2 hours transfer"
        }
      },
      {
        "day": 2,
        "title": "Explore Mehrangarh Fort Heritage Centre",
        "location": "Jodhpur",
        "overview": "Spend your day visiting Mehrangarh Fort Heritage Centre, the primary attraction in Mehrangarh Fort, accompanied by our expert guide.",
        "schedule": {
          "morning": {
            "title": "Guided Tour of Mehrangarh Fort Heritage Centre",
            "description": "Early morning visit to Mehrangarh Fort Heritage Centre to avoid crowds. Learn about the heritage and unique history of this landmark."
          },
          "afternoon": {
            "title": "Local Traditional Lunch",
            "description": "Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings."
          },
          "evening": {
            "title": "Evening walk at Mehrangarh Fort Panoramic Viewpoint",
            "description": "Stroll around Mehrangarh Fort Panoramic Viewpoint for scenic sunset views. Capture great family photos as the evening lights turn on."
          }
        },
        "details": {
          "importantTimings": "Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM",
          "meals": "Complimentary Breakfast & Traditional Lunch.",
          "transport": "AC Private Sedan with professional local driver (includes first-aid kit and bottled water).",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Lakefront Guest House (Scenic balcony views, hot water, western-style bathrooms)",
          "weather": "Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.",
          "dressCode": "Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.",
          "packingSuggestions": "Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 3 to 4 hours local tour"
        }
      },
      {
        "day": 3,
        "title": "Excursion to Mehrangarh Fort Local Culture Park",
        "location": "Jodhpur",
        "overview": "Excursion to Mehrangarh Fort Local Culture Park and surrounding craft villages to experience native arts, handlooms, and culture.",
        "schedule": {
          "morning": {
            "title": "Nature Walk at Mehrangarh Fort Local Culture Park",
            "description": "Guided scenic walk near the lake or parks surrounding Mehrangarh Fort Local Culture Park. Enjoy quiet reflection and fresh air."
          },
          "afternoon": {
            "title": "Local Handloom Visit",
            "description": "Visit local cottage industries to see artisans hand-weaving fabrics and crafting traditional wooden toys."
          },
          "evening": {
            "title": "Cultural Dance & Music Show",
            "description": "Attend a traditional cultural presentation depicting historical folk tales, followed by dinner."
          }
        },
        "details": {
          "importantTimings": "Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM",
          "meals": "Breakfast & Special Dinner Buffet.",
          "transport": "AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Premium Executive Hotel (AC rooms, elevator access, 24/7 front desk assistance)",
          "weather": "Perfect travel weather with low humidity and comfortable evening temperature 20°C.",
          "dressCode": "Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.",
          "packingSuggestions": "Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 3 to 4 hours local tour"
        }
      },
      {
        "day": 4,
        "title": "Souvenir Shopping & Onward Departure",
        "location": "Jodhpur",
        "overview": "Conclude your memorable stay in Jodhpur with local craft shopping, checkout, and outbound transfers.",
        "schedule": {
          "morning": {
            "title": "Handicrafts Shopping",
            "description": "Visit local co-operative markets to buy traditional souvenirs, regional sweets, or native organic spices."
          },
          "afternoon": {
            "title": "Check-out & Packing",
            "description": "Return to your hotel, pack your bags, clear any local incidentals, and check out from your rooms."
          },
          "evening": {
            "title": "Outbound Transfer",
            "description": "Board your private vehicle transfer to the airport or railway station for your onward return journey home."
          }
        },
        "details": {
          "importantTimings": "Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM",
          "meals": "Complimentary Healthy Breakfast included.",
          "transport": "AC Private SUV for comfortable road transfers with regular rest stops.",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Standard Comfort Hotel (Fully sanitized rooms, private bathroom, free Wi-Fi, desk space)",
          "weather": "Clear sky, comfortable morning temperature 21°C, warming up to 26°C by noon.",
          "dressCode": "Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.",
          "packingSuggestions": "Walking socks, small daypack for personal belongings, sanitizers, light jacket.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 1 to 2 hours transfer"
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
      "Day 1: Arrival & Welcome at Mehrangarh Fort",
      "Day 2: Guided Sightseeing & Exploration of Mehrangarh Fort",
      "Day 3: Departure"
    ],
    "cancellationSummary": "Get a 100% full refund on cancellations made up to 15 days before the departure. Rescheduling options are fully flexible."
  },
  {
    "id": "family-mount-fuji",
    "title": "Mount Fuji Experience",
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
        "title": "Arrival & Settle in at Honshu",
        "location": "Honshu",
        "overview": "Welcome to your yatra. Arrive in Honshu, transfer to your stay, and rest before your sightseeing tour.",
        "schedule": {
          "morning": {
            "title": "Arrival & Check-in",
            "description": "Arrive at the nearest transit hub. Meet our coordinator and transfer to your pre-booked stay in Honshu."
          },
          "afternoon": {
            "title": "Leisure & Rest",
            "description": "Check into your hotel room, unpack your luggage, and rest to recover from your flight or train journey."
          },
          "evening": {
            "title": "Orientation Walk",
            "description": "Meet your local guide for a small walk around the neighborhood. Receive a detailed brief on local customs."
          }
        },
        "details": {
          "importantTimings": "Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM",
          "meals": "Welcome Drink & Buffet Dinner included.",
          "transport": "AC Shuttle Transit for close proximity site transfers and passenger drops.",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Heritage Boutique Resort (Comfortable rooms, garden paths, active room services)",
          "weather": "Warm and sunny afternoon, ideal for outdoor sightseeing, average temp 24°C.",
          "dressCode": "Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.",
          "packingSuggestions": "Comfortable travel footwear, photo ID, essential personal medication, daypack.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 1 to 2 hours transfer"
        }
      },
      {
        "day": 2,
        "title": "Explore Mount Fuji Heritage Centre",
        "location": "Honshu",
        "overview": "Spend your day visiting Mount Fuji Heritage Centre, the primary attraction in Mount Fuji, accompanied by our expert guide.",
        "schedule": {
          "morning": {
            "title": "Guided Tour of Mount Fuji Heritage Centre",
            "description": "Early morning visit to Mount Fuji Heritage Centre to avoid crowds. Learn about the heritage and unique history of this landmark."
          },
          "afternoon": {
            "title": "Local Traditional Lunch",
            "description": "Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings."
          },
          "evening": {
            "title": "Evening walk at Mount Fuji Panoramic Viewpoint",
            "description": "Stroll around Mount Fuji Panoramic Viewpoint for scenic sunset views. Capture great family photos as the evening lights turn on."
          }
        },
        "details": {
          "importantTimings": "Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM",
          "meals": "Complimentary Breakfast & Traditional Lunch.",
          "transport": "AC Private Sedan with professional local driver (includes first-aid kit and bottled water).",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Lakefront Guest House (Scenic balcony views, hot water, western-style bathrooms)",
          "weather": "Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.",
          "dressCode": "Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.",
          "packingSuggestions": "Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 3 to 4 hours local tour"
        }
      },
      {
        "day": 3,
        "title": "Excursion to Mount Fuji Local Culture Park",
        "location": "Honshu",
        "overview": "Excursion to Mount Fuji Local Culture Park and surrounding craft villages to experience native arts, handlooms, and culture.",
        "schedule": {
          "morning": {
            "title": "Nature Walk at Mount Fuji Local Culture Park",
            "description": "Guided scenic walk near the lake or parks surrounding Mount Fuji Local Culture Park. Enjoy quiet reflection and fresh air."
          },
          "afternoon": {
            "title": "Local Handloom Visit",
            "description": "Visit local cottage industries to see artisans hand-weaving fabrics and crafting traditional wooden toys."
          },
          "evening": {
            "title": "Cultural Dance & Music Show",
            "description": "Attend a traditional cultural presentation depicting historical folk tales, followed by dinner."
          }
        },
        "details": {
          "importantTimings": "Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM",
          "meals": "Breakfast & Special Dinner Buffet.",
          "transport": "AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Premium Executive Hotel (AC rooms, elevator access, 24/7 front desk assistance)",
          "weather": "Perfect travel weather with low humidity and comfortable evening temperature 20°C.",
          "dressCode": "Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.",
          "packingSuggestions": "Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 3 to 4 hours local tour"
        }
      },
      {
        "day": 4,
        "title": "Souvenir Shopping & Onward Departure",
        "location": "Honshu",
        "overview": "Conclude your memorable stay in Honshu with local craft shopping, checkout, and outbound transfers.",
        "schedule": {
          "morning": {
            "title": "Handicrafts Shopping",
            "description": "Visit local co-operative markets to buy traditional souvenirs, regional sweets, or native organic spices."
          },
          "afternoon": {
            "title": "Check-out & Packing",
            "description": "Return to your hotel, pack your bags, clear any local incidentals, and check out from your rooms."
          },
          "evening": {
            "title": "Outbound Transfer",
            "description": "Board your private vehicle transfer to the airport or railway station for your onward return journey home."
          }
        },
        "details": {
          "importantTimings": "Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM",
          "meals": "Complimentary Healthy Breakfast included.",
          "transport": "AC Private SUV for comfortable road transfers with regular rest stops.",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Standard Comfort Hotel (Fully sanitized rooms, private bathroom, free Wi-Fi, desk space)",
          "weather": "Clear sky, comfortable morning temperature 21°C, warming up to 26°C by noon.",
          "dressCode": "Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.",
          "packingSuggestions": "Walking socks, small daypack for personal belongings, sanitizers, light jacket.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 1 to 2 hours transfer"
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
      "Day 1: Arrival & Welcome at Mount Fuji",
      "Day 2: Guided Sightseeing & Exploration of Mount Fuji",
      "Day 3: Departure"
    ],
    "cancellationSummary": "Get a 100% full refund on cancellations made up to 15 days before the departure. Rescheduling options are fully flexible."
  },
  {
    "id": "family-mount-titlis",
    "title": "Mount Titlis Experience",
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
        "title": "Arrival & Settle in at Engelberg",
        "location": "Engelberg",
        "overview": "Welcome to your yatra. Arrive in Engelberg, transfer to your stay, and rest before your sightseeing tour.",
        "schedule": {
          "morning": {
            "title": "Arrival & Check-in",
            "description": "Arrive at the nearest transit hub. Meet our coordinator and transfer to your pre-booked stay in Engelberg."
          },
          "afternoon": {
            "title": "Leisure & Rest",
            "description": "Check into your hotel room, unpack your luggage, and rest to recover from your flight or train journey."
          },
          "evening": {
            "title": "Orientation Walk",
            "description": "Meet your local guide for a small walk around the neighborhood. Receive a detailed brief on local customs."
          }
        },
        "details": {
          "importantTimings": "Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM",
          "meals": "Welcome Drink & Buffet Dinner included.",
          "transport": "AC Shuttle Transit for close proximity site transfers and passenger drops.",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Heritage Boutique Resort (Comfortable rooms, garden paths, active room services)",
          "weather": "Warm and sunny afternoon, ideal for outdoor sightseeing, average temp 24°C.",
          "dressCode": "Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.",
          "packingSuggestions": "Comfortable travel footwear, photo ID, essential personal medication, daypack.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 1 to 2 hours transfer"
        }
      },
      {
        "day": 2,
        "title": "Explore Mount Titlis Heritage Centre",
        "location": "Engelberg",
        "overview": "Spend your day visiting Mount Titlis Heritage Centre, the primary attraction in Mount Titlis, accompanied by our expert guide.",
        "schedule": {
          "morning": {
            "title": "Guided Tour of Mount Titlis Heritage Centre",
            "description": "Early morning visit to Mount Titlis Heritage Centre to avoid crowds. Learn about the heritage and unique history of this landmark."
          },
          "afternoon": {
            "title": "Local Traditional Lunch",
            "description": "Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings."
          },
          "evening": {
            "title": "Evening walk at Mount Titlis Panoramic Viewpoint",
            "description": "Stroll around Mount Titlis Panoramic Viewpoint for scenic sunset views. Capture great family photos as the evening lights turn on."
          }
        },
        "details": {
          "importantTimings": "Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM",
          "meals": "Complimentary Breakfast & Traditional Lunch.",
          "transport": "AC Private Sedan with professional local driver (includes first-aid kit and bottled water).",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Lakefront Guest House (Scenic balcony views, hot water, western-style bathrooms)",
          "weather": "Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.",
          "dressCode": "Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.",
          "packingSuggestions": "Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 3 to 4 hours local tour"
        }
      },
      {
        "day": 3,
        "title": "Excursion to Mount Titlis Local Culture Park",
        "location": "Engelberg",
        "overview": "Excursion to Mount Titlis Local Culture Park and surrounding craft villages to experience native arts, handlooms, and culture.",
        "schedule": {
          "morning": {
            "title": "Nature Walk at Mount Titlis Local Culture Park",
            "description": "Guided scenic walk near the lake or parks surrounding Mount Titlis Local Culture Park. Enjoy quiet reflection and fresh air."
          },
          "afternoon": {
            "title": "Local Handloom Visit",
            "description": "Visit local cottage industries to see artisans hand-weaving fabrics and crafting traditional wooden toys."
          },
          "evening": {
            "title": "Cultural Dance & Music Show",
            "description": "Attend a traditional cultural presentation depicting historical folk tales, followed by dinner."
          }
        },
        "details": {
          "importantTimings": "Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM",
          "meals": "Breakfast & Special Dinner Buffet.",
          "transport": "AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Premium Executive Hotel (AC rooms, elevator access, 24/7 front desk assistance)",
          "weather": "Perfect travel weather with low humidity and comfortable evening temperature 20°C.",
          "dressCode": "Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.",
          "packingSuggestions": "Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 3 to 4 hours local tour"
        }
      },
      {
        "day": 4,
        "title": "Souvenir Shopping & Onward Departure",
        "location": "Engelberg",
        "overview": "Conclude your memorable stay in Engelberg with local craft shopping, checkout, and outbound transfers.",
        "schedule": {
          "morning": {
            "title": "Handicrafts Shopping",
            "description": "Visit local co-operative markets to buy traditional souvenirs, regional sweets, or native organic spices."
          },
          "afternoon": {
            "title": "Check-out & Packing",
            "description": "Return to your hotel, pack your bags, clear any local incidentals, and check out from your rooms."
          },
          "evening": {
            "title": "Outbound Transfer",
            "description": "Board your private vehicle transfer to the airport or railway station for your onward return journey home."
          }
        },
        "details": {
          "importantTimings": "Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM",
          "meals": "Complimentary Healthy Breakfast included.",
          "transport": "AC Private SUV for comfortable road transfers with regular rest stops.",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Standard Comfort Hotel (Fully sanitized rooms, private bathroom, free Wi-Fi, desk space)",
          "weather": "Clear sky, comfortable morning temperature 21°C, warming up to 26°C by noon.",
          "dressCode": "Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.",
          "packingSuggestions": "Walking socks, small daypack for personal belongings, sanitizers, light jacket.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 1 to 2 hours transfer"
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
      "Day 1: Arrival & Welcome at Mount Titlis",
      "Day 2: Guided Sightseeing & Exploration of Mount Titlis",
      "Day 3: Departure"
    ],
    "cancellationSummary": "Get a 100% full refund on cancellations made up to 15 days before the departure. Rescheduling options are fully flexible."
  },
  {
    "id": "family-munnar-tea-gardens",
    "title": "Munnar Tea Gardens Experience",
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
        "title": "Arrival & Settle in at Munnar",
        "location": "Munnar",
        "overview": "Welcome to your yatra. Arrive in Munnar, transfer to your stay, and rest before your sightseeing tour.",
        "schedule": {
          "morning": {
            "title": "Arrival & Check-in",
            "description": "Arrive at the nearest transit hub. Meet our coordinator and transfer to your pre-booked stay in Munnar."
          },
          "afternoon": {
            "title": "Leisure & Rest",
            "description": "Check into your hotel room, unpack your luggage, and rest to recover from your flight or train journey."
          },
          "evening": {
            "title": "Orientation Walk",
            "description": "Meet your local guide for a small walk around the neighborhood. Receive a detailed brief on local customs."
          }
        },
        "details": {
          "importantTimings": "Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM",
          "meals": "Welcome Drink & Buffet Dinner included.",
          "transport": "AC Shuttle Transit for close proximity site transfers and passenger drops.",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Heritage Boutique Resort (Comfortable rooms, garden paths, active room services)",
          "weather": "Warm and sunny afternoon, ideal for outdoor sightseeing, average temp 24°C.",
          "dressCode": "Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.",
          "packingSuggestions": "Comfortable travel footwear, photo ID, essential personal medication, daypack.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 1 to 2 hours transfer"
        }
      },
      {
        "day": 2,
        "title": "Explore Munnar Tea Gardens Heritage Centre",
        "location": "Munnar",
        "overview": "Spend your day visiting Munnar Tea Gardens Heritage Centre, the primary attraction in Munnar Tea Gardens, accompanied by our expert guide.",
        "schedule": {
          "morning": {
            "title": "Guided Tour of Munnar Tea Gardens Heritage Centre",
            "description": "Early morning visit to Munnar Tea Gardens Heritage Centre to avoid crowds. Learn about the heritage and unique history of this landmark."
          },
          "afternoon": {
            "title": "Local Traditional Lunch",
            "description": "Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings."
          },
          "evening": {
            "title": "Evening walk at Munnar Tea Gardens Panoramic Viewpoint",
            "description": "Stroll around Munnar Tea Gardens Panoramic Viewpoint for scenic sunset views. Capture great family photos as the evening lights turn on."
          }
        },
        "details": {
          "importantTimings": "Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM",
          "meals": "Complimentary Breakfast & Traditional Lunch.",
          "transport": "AC Private Sedan with professional local driver (includes first-aid kit and bottled water).",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Lakefront Guest House (Scenic balcony views, hot water, western-style bathrooms)",
          "weather": "Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.",
          "dressCode": "Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.",
          "packingSuggestions": "Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 3 to 4 hours local tour"
        }
      },
      {
        "day": 3,
        "title": "Excursion to Munnar Tea Gardens Local Culture Park",
        "location": "Munnar",
        "overview": "Excursion to Munnar Tea Gardens Local Culture Park and surrounding craft villages to experience native arts, handlooms, and culture.",
        "schedule": {
          "morning": {
            "title": "Nature Walk at Munnar Tea Gardens Local Culture Park",
            "description": "Guided scenic walk near the lake or parks surrounding Munnar Tea Gardens Local Culture Park. Enjoy quiet reflection and fresh air."
          },
          "afternoon": {
            "title": "Local Handloom Visit",
            "description": "Visit local cottage industries to see artisans hand-weaving fabrics and crafting traditional wooden toys."
          },
          "evening": {
            "title": "Cultural Dance & Music Show",
            "description": "Attend a traditional cultural presentation depicting historical folk tales, followed by dinner."
          }
        },
        "details": {
          "importantTimings": "Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM",
          "meals": "Breakfast & Special Dinner Buffet.",
          "transport": "AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Premium Executive Hotel (AC rooms, elevator access, 24/7 front desk assistance)",
          "weather": "Perfect travel weather with low humidity and comfortable evening temperature 20°C.",
          "dressCode": "Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.",
          "packingSuggestions": "Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 3 to 4 hours local tour"
        }
      },
      {
        "day": 4,
        "title": "Souvenir Shopping & Onward Departure",
        "location": "Munnar",
        "overview": "Conclude your memorable stay in Munnar with local craft shopping, checkout, and outbound transfers.",
        "schedule": {
          "morning": {
            "title": "Handicrafts Shopping",
            "description": "Visit local co-operative markets to buy traditional souvenirs, regional sweets, or native organic spices."
          },
          "afternoon": {
            "title": "Check-out & Packing",
            "description": "Return to your hotel, pack your bags, clear any local incidentals, and check out from your rooms."
          },
          "evening": {
            "title": "Outbound Transfer",
            "description": "Board your private vehicle transfer to the airport or railway station for your onward return journey home."
          }
        },
        "details": {
          "importantTimings": "Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM",
          "meals": "Complimentary Healthy Breakfast included.",
          "transport": "AC Private SUV for comfortable road transfers with regular rest stops.",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Standard Comfort Hotel (Fully sanitized rooms, private bathroom, free Wi-Fi, desk space)",
          "weather": "Clear sky, comfortable morning temperature 21°C, warming up to 26°C by noon.",
          "dressCode": "Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.",
          "packingSuggestions": "Walking socks, small daypack for personal belongings, sanitizers, light jacket.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 1 to 2 hours transfer"
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
      "Day 1: Arrival & Welcome at Munnar Tea Gardens",
      "Day 2: Guided Sightseeing & Exploration of Munnar Tea Gardens",
      "Day 3: Departure"
    ],
    "cancellationSummary": "Get a 100% full refund on cancellations made up to 15 days before the departure. Rescheduling options are fully flexible."
  },
  {
    "id": "family-museum-of-the-future",
    "title": "Museum of the Future Experience",
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
        "title": "Arrival & Settle in at Dubai",
        "location": "Dubai",
        "overview": "Welcome to your yatra. Arrive in Dubai, transfer to your stay, and rest before your sightseeing tour.",
        "schedule": {
          "morning": {
            "title": "Arrival & Check-in",
            "description": "Arrive at the nearest transit hub. Meet our coordinator and transfer to your pre-booked stay in Dubai."
          },
          "afternoon": {
            "title": "Leisure & Rest",
            "description": "Check into your hotel room, unpack your luggage, and rest to recover from your flight or train journey."
          },
          "evening": {
            "title": "Orientation Walk",
            "description": "Meet your local guide for a small walk around the neighborhood. Receive a detailed brief on local customs."
          }
        },
        "details": {
          "importantTimings": "Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM",
          "meals": "Welcome Drink & Buffet Dinner included.",
          "transport": "AC Shuttle Transit for close proximity site transfers and passenger drops.",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Heritage Boutique Resort (Comfortable rooms, garden paths, active room services)",
          "weather": "Warm and sunny afternoon, ideal for outdoor sightseeing, average temp 24°C.",
          "dressCode": "Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.",
          "packingSuggestions": "Comfortable travel footwear, photo ID, essential personal medication, daypack.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 1 to 2 hours transfer"
        }
      },
      {
        "day": 2,
        "title": "Explore Museum of the Future Heritage Centre",
        "location": "Dubai",
        "overview": "Spend your day visiting Museum of the Future Heritage Centre, the primary attraction in Museum of the Future, accompanied by our expert guide.",
        "schedule": {
          "morning": {
            "title": "Guided Tour of Museum of the Future Heritage Centre",
            "description": "Early morning visit to Museum of the Future Heritage Centre to avoid crowds. Learn about the heritage and unique history of this landmark."
          },
          "afternoon": {
            "title": "Local Traditional Lunch",
            "description": "Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings."
          },
          "evening": {
            "title": "Evening walk at Museum of the Future Panoramic Viewpoint",
            "description": "Stroll around Museum of the Future Panoramic Viewpoint for scenic sunset views. Capture great family photos as the evening lights turn on."
          }
        },
        "details": {
          "importantTimings": "Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM",
          "meals": "Complimentary Breakfast & Traditional Lunch.",
          "transport": "AC Private Sedan with professional local driver (includes first-aid kit and bottled water).",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Lakefront Guest House (Scenic balcony views, hot water, western-style bathrooms)",
          "weather": "Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.",
          "dressCode": "Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.",
          "packingSuggestions": "Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 3 to 4 hours local tour"
        }
      },
      {
        "day": 3,
        "title": "Excursion to Museum of the Future Local Culture Park",
        "location": "Dubai",
        "overview": "Excursion to Museum of the Future Local Culture Park and surrounding craft villages to experience native arts, handlooms, and culture.",
        "schedule": {
          "morning": {
            "title": "Nature Walk at Museum of the Future Local Culture Park",
            "description": "Guided scenic walk near the lake or parks surrounding Museum of the Future Local Culture Park. Enjoy quiet reflection and fresh air."
          },
          "afternoon": {
            "title": "Local Handloom Visit",
            "description": "Visit local cottage industries to see artisans hand-weaving fabrics and crafting traditional wooden toys."
          },
          "evening": {
            "title": "Cultural Dance & Music Show",
            "description": "Attend a traditional cultural presentation depicting historical folk tales, followed by dinner."
          }
        },
        "details": {
          "importantTimings": "Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM",
          "meals": "Breakfast & Special Dinner Buffet.",
          "transport": "AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Premium Executive Hotel (AC rooms, elevator access, 24/7 front desk assistance)",
          "weather": "Perfect travel weather with low humidity and comfortable evening temperature 20°C.",
          "dressCode": "Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.",
          "packingSuggestions": "Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 3 to 4 hours local tour"
        }
      },
      {
        "day": 4,
        "title": "Souvenir Shopping & Onward Departure",
        "location": "Dubai",
        "overview": "Conclude your memorable stay in Dubai with local craft shopping, checkout, and outbound transfers.",
        "schedule": {
          "morning": {
            "title": "Handicrafts Shopping",
            "description": "Visit local co-operative markets to buy traditional souvenirs, regional sweets, or native organic spices."
          },
          "afternoon": {
            "title": "Check-out & Packing",
            "description": "Return to your hotel, pack your bags, clear any local incidentals, and check out from your rooms."
          },
          "evening": {
            "title": "Outbound Transfer",
            "description": "Board your private vehicle transfer to the airport or railway station for your onward return journey home."
          }
        },
        "details": {
          "importantTimings": "Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM",
          "meals": "Complimentary Healthy Breakfast included.",
          "transport": "AC Private SUV for comfortable road transfers with regular rest stops.",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Standard Comfort Hotel (Fully sanitized rooms, private bathroom, free Wi-Fi, desk space)",
          "weather": "Clear sky, comfortable morning temperature 21°C, warming up to 26°C by noon.",
          "dressCode": "Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.",
          "packingSuggestions": "Walking socks, small daypack for personal belongings, sanitizers, light jacket.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 1 to 2 hours transfer"
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
      "Day 1: Arrival & Welcome at Museum of the Future",
      "Day 2: Guided Sightseeing & Exploration of Museum of the Future",
      "Day 3: Departure"
    ],
    "cancellationSummary": "Get a 100% full refund on cancellations made up to 15 days before the departure. Rescheduling options are fully flexible."
  },
  {
    "id": "family-mysore-palace",
    "title": "Mysore Palace Experience",
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
        "title": "Arrival & Settle in at Mysore",
        "location": "Mysore",
        "overview": "Welcome to your yatra. Arrive in Mysore, transfer to your stay, and rest before your sightseeing tour.",
        "schedule": {
          "morning": {
            "title": "Arrival & Check-in",
            "description": "Arrive at the nearest transit hub. Meet our coordinator and transfer to your pre-booked stay in Mysore."
          },
          "afternoon": {
            "title": "Leisure & Rest",
            "description": "Check into your hotel room, unpack your luggage, and rest to recover from your flight or train journey."
          },
          "evening": {
            "title": "Orientation Walk",
            "description": "Meet your local guide for a small walk around the neighborhood. Receive a detailed brief on local customs."
          }
        },
        "details": {
          "importantTimings": "Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM",
          "meals": "Welcome Drink & Buffet Dinner included.",
          "transport": "AC Shuttle Transit for close proximity site transfers and passenger drops.",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Heritage Boutique Resort (Comfortable rooms, garden paths, active room services)",
          "weather": "Warm and sunny afternoon, ideal for outdoor sightseeing, average temp 24°C.",
          "dressCode": "Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.",
          "packingSuggestions": "Comfortable travel footwear, photo ID, essential personal medication, daypack.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 1 to 2 hours transfer"
        }
      },
      {
        "day": 2,
        "title": "Explore Mysore Palace Heritage Centre",
        "location": "Mysore",
        "overview": "Spend your day visiting Mysore Palace Heritage Centre, the primary attraction in Mysore Palace, accompanied by our expert guide.",
        "schedule": {
          "morning": {
            "title": "Guided Tour of Mysore Palace Heritage Centre",
            "description": "Early morning visit to Mysore Palace Heritage Centre to avoid crowds. Learn about the heritage and unique history of this landmark."
          },
          "afternoon": {
            "title": "Local Traditional Lunch",
            "description": "Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings."
          },
          "evening": {
            "title": "Evening walk at Mysore Palace Panoramic Viewpoint",
            "description": "Stroll around Mysore Palace Panoramic Viewpoint for scenic sunset views. Capture great family photos as the evening lights turn on."
          }
        },
        "details": {
          "importantTimings": "Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM",
          "meals": "Complimentary Breakfast & Traditional Lunch.",
          "transport": "AC Private Sedan with professional local driver (includes first-aid kit and bottled water).",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Lakefront Guest House (Scenic balcony views, hot water, western-style bathrooms)",
          "weather": "Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.",
          "dressCode": "Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.",
          "packingSuggestions": "Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 3 to 4 hours local tour"
        }
      },
      {
        "day": 3,
        "title": "Excursion to Mysore Palace Local Culture Park",
        "location": "Mysore",
        "overview": "Excursion to Mysore Palace Local Culture Park and surrounding craft villages to experience native arts, handlooms, and culture.",
        "schedule": {
          "morning": {
            "title": "Nature Walk at Mysore Palace Local Culture Park",
            "description": "Guided scenic walk near the lake or parks surrounding Mysore Palace Local Culture Park. Enjoy quiet reflection and fresh air."
          },
          "afternoon": {
            "title": "Local Handloom Visit",
            "description": "Visit local cottage industries to see artisans hand-weaving fabrics and crafting traditional wooden toys."
          },
          "evening": {
            "title": "Cultural Dance & Music Show",
            "description": "Attend a traditional cultural presentation depicting historical folk tales, followed by dinner."
          }
        },
        "details": {
          "importantTimings": "Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM",
          "meals": "Breakfast & Special Dinner Buffet.",
          "transport": "AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Premium Executive Hotel (AC rooms, elevator access, 24/7 front desk assistance)",
          "weather": "Perfect travel weather with low humidity and comfortable evening temperature 20°C.",
          "dressCode": "Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.",
          "packingSuggestions": "Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 3 to 4 hours local tour"
        }
      },
      {
        "day": 4,
        "title": "Souvenir Shopping & Onward Departure",
        "location": "Mysore",
        "overview": "Conclude your memorable stay in Mysore with local craft shopping, checkout, and outbound transfers.",
        "schedule": {
          "morning": {
            "title": "Handicrafts Shopping",
            "description": "Visit local co-operative markets to buy traditional souvenirs, regional sweets, or native organic spices."
          },
          "afternoon": {
            "title": "Check-out & Packing",
            "description": "Return to your hotel, pack your bags, clear any local incidentals, and check out from your rooms."
          },
          "evening": {
            "title": "Outbound Transfer",
            "description": "Board your private vehicle transfer to the airport or railway station for your onward return journey home."
          }
        },
        "details": {
          "importantTimings": "Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM",
          "meals": "Complimentary Healthy Breakfast included.",
          "transport": "AC Private SUV for comfortable road transfers with regular rest stops.",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Standard Comfort Hotel (Fully sanitized rooms, private bathroom, free Wi-Fi, desk space)",
          "weather": "Clear sky, comfortable morning temperature 21°C, warming up to 26°C by noon.",
          "dressCode": "Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.",
          "packingSuggestions": "Walking socks, small daypack for personal belongings, sanitizers, light jacket.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 1 to 2 hours transfer"
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
      "Day 1: Arrival & Welcome at Mysore Palace",
      "Day 2: Guided Sightseeing & Exploration of Mysore Palace",
      "Day 3: Departure"
    ],
    "cancellationSummary": "Get a 100% full refund on cancellations made up to 15 days before the departure. Rescheduling options are fully flexible."
  },
  {
    "id": "family-niagara-falls",
    "title": "Niagara Falls Experience",
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
        "title": "Arrival & Settle in at Ontario",
        "location": "Ontario",
        "overview": "Welcome to your yatra. Arrive in Ontario, transfer to your stay, and rest before your sightseeing tour.",
        "schedule": {
          "morning": {
            "title": "Arrival & Check-in",
            "description": "Arrive at the nearest transit hub. Meet our coordinator and transfer to your pre-booked stay in Ontario."
          },
          "afternoon": {
            "title": "Leisure & Rest",
            "description": "Check into your hotel room, unpack your luggage, and rest to recover from your flight or train journey."
          },
          "evening": {
            "title": "Orientation Walk",
            "description": "Meet your local guide for a small walk around the neighborhood. Receive a detailed brief on local customs."
          }
        },
        "details": {
          "importantTimings": "Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM",
          "meals": "Welcome Drink & Buffet Dinner included.",
          "transport": "AC Shuttle Transit for close proximity site transfers and passenger drops.",
          "walkingLevel": "Moderate Paced (Gentle staircases, guide assistance available)",
          "stay": "Heritage Boutique Resort (Comfortable rooms, garden paths, active room services)",
          "weather": "Warm and sunny afternoon, ideal for outdoor sightseeing, average temp 24°C.",
          "dressCode": "Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.",
          "packingSuggestions": "Comfortable travel footwear, photo ID, essential personal medication, daypack.",
          "accessibility": "Not recommended for guests requiring wheelchair support due to steep stairs and terrain.",
          "visitorNote": "Expect moderate physical movement. Wear athletic shoes with excellent grip.",
          "travelDuration": "Approx. 1 to 2 hours transfer"
        }
      },
      {
        "day": 2,
        "title": "Explore Niagara Falls Heritage Centre",
        "location": "Ontario",
        "overview": "Spend your day visiting Niagara Falls Heritage Centre, the primary attraction in Niagara Falls, accompanied by our expert guide.",
        "schedule": {
          "morning": {
            "title": "Guided Tour of Niagara Falls Heritage Centre",
            "description": "Early morning visit to Niagara Falls Heritage Centre to avoid crowds. Learn about the heritage and unique history of this landmark."
          },
          "afternoon": {
            "title": "Local Traditional Lunch",
            "description": "Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings."
          },
          "evening": {
            "title": "Evening walk at Niagara Falls Panoramic Viewpoint",
            "description": "Stroll around Niagara Falls Panoramic Viewpoint for scenic sunset views. Capture great family photos as the evening lights turn on."
          }
        },
        "details": {
          "importantTimings": "Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM",
          "meals": "Complimentary Breakfast & Traditional Lunch.",
          "transport": "AC Private Sedan with professional local driver (includes first-aid kit and bottled water).",
          "walkingLevel": "Moderate Paced (Gentle staircases, guide assistance available)",
          "stay": "Lakefront Guest House (Scenic balcony views, hot water, western-style bathrooms)",
          "weather": "Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.",
          "dressCode": "Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.",
          "packingSuggestions": "Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.",
          "accessibility": "Not recommended for guests requiring wheelchair support due to steep stairs and terrain.",
          "visitorNote": "Expect moderate physical movement. Wear athletic shoes with excellent grip.",
          "travelDuration": "Approx. 3 to 4 hours local tour"
        }
      },
      {
        "day": 3,
        "title": "Excursion to Niagara Falls Local Culture Park",
        "location": "Ontario",
        "overview": "Excursion to Niagara Falls Local Culture Park and surrounding craft villages to experience native arts, handlooms, and culture.",
        "schedule": {
          "morning": {
            "title": "Nature Walk at Niagara Falls Local Culture Park",
            "description": "Guided scenic walk near the lake or parks surrounding Niagara Falls Local Culture Park. Enjoy quiet reflection and fresh air."
          },
          "afternoon": {
            "title": "Local Handloom Visit",
            "description": "Visit local cottage industries to see artisans hand-weaving fabrics and crafting traditional wooden toys."
          },
          "evening": {
            "title": "Cultural Dance & Music Show",
            "description": "Attend a traditional cultural presentation depicting historical folk tales, followed by dinner."
          }
        },
        "details": {
          "importantTimings": "Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM",
          "meals": "Breakfast & Special Dinner Buffet.",
          "transport": "AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).",
          "walkingLevel": "Moderate Paced (Gentle staircases, guide assistance available)",
          "stay": "Premium Executive Hotel (AC rooms, elevator access, 24/7 front desk assistance)",
          "weather": "Perfect travel weather with low humidity and comfortable evening temperature 20°C.",
          "dressCode": "Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.",
          "packingSuggestions": "Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.",
          "accessibility": "Not recommended for guests requiring wheelchair support due to steep stairs and terrain.",
          "visitorNote": "Expect moderate physical movement. Wear athletic shoes with excellent grip.",
          "travelDuration": "Approx. 3 to 4 hours local tour"
        }
      },
      {
        "day": 4,
        "title": "Souvenir Shopping & Onward Departure",
        "location": "Ontario",
        "overview": "Conclude your memorable stay in Ontario with local craft shopping, checkout, and outbound transfers.",
        "schedule": {
          "morning": {
            "title": "Handicrafts Shopping",
            "description": "Visit local co-operative markets to buy traditional souvenirs, regional sweets, or native organic spices."
          },
          "afternoon": {
            "title": "Check-out & Packing",
            "description": "Return to your hotel, pack your bags, clear any local incidentals, and check out from your rooms."
          },
          "evening": {
            "title": "Outbound Transfer",
            "description": "Board your private vehicle transfer to the airport or railway station for your onward return journey home."
          }
        },
        "details": {
          "importantTimings": "Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM",
          "meals": "Complimentary Healthy Breakfast included.",
          "transport": "AC Private SUV for comfortable road transfers with regular rest stops.",
          "walkingLevel": "Moderate Paced (Gentle staircases, guide assistance available)",
          "stay": "Standard Comfort Hotel (Fully sanitized rooms, private bathroom, free Wi-Fi, desk space)",
          "weather": "Clear sky, comfortable morning temperature 21°C, warming up to 26°C by noon.",
          "dressCode": "Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.",
          "packingSuggestions": "Walking socks, small daypack for personal belongings, sanitizers, light jacket.",
          "accessibility": "Not recommended for guests requiring wheelchair support due to steep stairs and terrain.",
          "visitorNote": "Expect moderate physical movement. Wear athletic shoes with excellent grip.",
          "travelDuration": "Approx. 1 to 2 hours transfer"
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
      "Day 1: Arrival & Welcome at Niagara Falls",
      "Day 2: Guided Sightseeing & Exploration of Niagara Falls",
      "Day 3: Departure"
    ],
    "cancellationSummary": "Get a 100% full refund on cancellations made up to 15 days before the departure. Rescheduling options are fully flexible."
  },
  {
    "id": "family-nubra-valley",
    "title": "Nubra Valley Experience",
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
        "title": "Arrival & Settle in at Ladakh",
        "location": "Ladakh",
        "overview": "Welcome to your yatra. Arrive in Ladakh, transfer to your stay, and rest before your sightseeing tour.",
        "schedule": {
          "morning": {
            "title": "Arrival & Check-in",
            "description": "Arrive at the nearest transit hub. Meet our coordinator and transfer to your pre-booked stay in Ladakh."
          },
          "afternoon": {
            "title": "Leisure & Rest",
            "description": "Check into your hotel room, unpack your luggage, and rest to recover from your flight or train journey."
          },
          "evening": {
            "title": "Orientation Walk",
            "description": "Meet your local guide for a small walk around the neighborhood. Receive a detailed brief on local customs."
          }
        },
        "details": {
          "importantTimings": "Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM",
          "meals": "Welcome Drink & Buffet Dinner included.",
          "transport": "AC Shuttle Transit for close proximity site transfers and passenger drops.",
          "walkingLevel": "Moderate Paced (Gentle staircases, guide assistance available)",
          "stay": "Heritage Boutique Resort (Comfortable rooms, garden paths, active room services)",
          "weather": "Warm and sunny afternoon, ideal for outdoor sightseeing, average temp 24°C.",
          "dressCode": "Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.",
          "packingSuggestions": "Comfortable travel footwear, photo ID, essential personal medication, daypack.",
          "accessibility": "Not recommended for guests requiring wheelchair support due to steep stairs and terrain.",
          "visitorNote": "Expect moderate physical movement. Wear athletic shoes with excellent grip.",
          "travelDuration": "Approx. 1 to 2 hours transfer"
        }
      },
      {
        "day": 2,
        "title": "Explore Nubra Valley Heritage Centre",
        "location": "Ladakh",
        "overview": "Spend your day visiting Nubra Valley Heritage Centre, the primary attraction in Nubra Valley, accompanied by our expert guide.",
        "schedule": {
          "morning": {
            "title": "Guided Tour of Nubra Valley Heritage Centre",
            "description": "Early morning visit to Nubra Valley Heritage Centre to avoid crowds. Learn about the heritage and unique history of this landmark."
          },
          "afternoon": {
            "title": "Local Traditional Lunch",
            "description": "Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings."
          },
          "evening": {
            "title": "Evening walk at Nubra Valley Panoramic Viewpoint",
            "description": "Stroll around Nubra Valley Panoramic Viewpoint for scenic sunset views. Capture great family photos as the evening lights turn on."
          }
        },
        "details": {
          "importantTimings": "Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM",
          "meals": "Complimentary Breakfast & Traditional Lunch.",
          "transport": "AC Private Sedan with professional local driver (includes first-aid kit and bottled water).",
          "walkingLevel": "Moderate Paced (Gentle staircases, guide assistance available)",
          "stay": "Lakefront Guest House (Scenic balcony views, hot water, western-style bathrooms)",
          "weather": "Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.",
          "dressCode": "Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.",
          "packingSuggestions": "Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.",
          "accessibility": "Not recommended for guests requiring wheelchair support due to steep stairs and terrain.",
          "visitorNote": "Expect moderate physical movement. Wear athletic shoes with excellent grip.",
          "travelDuration": "Approx. 3 to 4 hours local tour"
        }
      },
      {
        "day": 3,
        "title": "Excursion to Nubra Valley Local Culture Park",
        "location": "Ladakh",
        "overview": "Excursion to Nubra Valley Local Culture Park and surrounding craft villages to experience native arts, handlooms, and culture.",
        "schedule": {
          "morning": {
            "title": "Nature Walk at Nubra Valley Local Culture Park",
            "description": "Guided scenic walk near the lake or parks surrounding Nubra Valley Local Culture Park. Enjoy quiet reflection and fresh air."
          },
          "afternoon": {
            "title": "Local Handloom Visit",
            "description": "Visit local cottage industries to see artisans hand-weaving fabrics and crafting traditional wooden toys."
          },
          "evening": {
            "title": "Cultural Dance & Music Show",
            "description": "Attend a traditional cultural presentation depicting historical folk tales, followed by dinner."
          }
        },
        "details": {
          "importantTimings": "Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM",
          "meals": "Breakfast & Special Dinner Buffet.",
          "transport": "AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).",
          "walkingLevel": "Moderate Paced (Gentle staircases, guide assistance available)",
          "stay": "Premium Executive Hotel (AC rooms, elevator access, 24/7 front desk assistance)",
          "weather": "Perfect travel weather with low humidity and comfortable evening temperature 20°C.",
          "dressCode": "Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.",
          "packingSuggestions": "Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.",
          "accessibility": "Not recommended for guests requiring wheelchair support due to steep stairs and terrain.",
          "visitorNote": "Expect moderate physical movement. Wear athletic shoes with excellent grip.",
          "travelDuration": "Approx. 3 to 4 hours local tour"
        }
      },
      {
        "day": 4,
        "title": "Souvenir Shopping & Onward Departure",
        "location": "Ladakh",
        "overview": "Conclude your memorable stay in Ladakh with local craft shopping, checkout, and outbound transfers.",
        "schedule": {
          "morning": {
            "title": "Handicrafts Shopping",
            "description": "Visit local co-operative markets to buy traditional souvenirs, regional sweets, or native organic spices."
          },
          "afternoon": {
            "title": "Check-out & Packing",
            "description": "Return to your hotel, pack your bags, clear any local incidentals, and check out from your rooms."
          },
          "evening": {
            "title": "Outbound Transfer",
            "description": "Board your private vehicle transfer to the airport or railway station for your onward return journey home."
          }
        },
        "details": {
          "importantTimings": "Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM",
          "meals": "Complimentary Healthy Breakfast included.",
          "transport": "AC Private SUV for comfortable road transfers with regular rest stops.",
          "walkingLevel": "Moderate Paced (Gentle staircases, guide assistance available)",
          "stay": "Standard Comfort Hotel (Fully sanitized rooms, private bathroom, free Wi-Fi, desk space)",
          "weather": "Clear sky, comfortable morning temperature 21°C, warming up to 26°C by noon.",
          "dressCode": "Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.",
          "packingSuggestions": "Walking socks, small daypack for personal belongings, sanitizers, light jacket.",
          "accessibility": "Not recommended for guests requiring wheelchair support due to steep stairs and terrain.",
          "visitorNote": "Expect moderate physical movement. Wear athletic shoes with excellent grip.",
          "travelDuration": "Approx. 1 to 2 hours transfer"
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
      "Day 1: Arrival & Welcome at Nubra Valley",
      "Day 2: Guided Sightseeing & Exploration of Nubra Valley",
      "Day 3: Departure"
    ],
    "cancellationSummary": "Get a 100% full refund on cancellations made up to 15 days before the departure. Rescheduling options are fully flexible."
  },
  {
    "id": "family-palm-jumeirah",
    "title": "Palm Jumeirah Experience",
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
        "title": "Arrival & Settle in at Dubai",
        "location": "Dubai",
        "overview": "Welcome to your yatra. Arrive in Dubai, transfer to your stay, and rest before your sightseeing tour.",
        "schedule": {
          "morning": {
            "title": "Arrival & Check-in",
            "description": "Arrive at the nearest transit hub. Meet our coordinator and transfer to your pre-booked stay in Dubai."
          },
          "afternoon": {
            "title": "Leisure & Rest",
            "description": "Check into your hotel room, unpack your luggage, and rest to recover from your flight or train journey."
          },
          "evening": {
            "title": "Orientation Walk",
            "description": "Meet your local guide for a small walk around the neighborhood. Receive a detailed brief on local customs."
          }
        },
        "details": {
          "importantTimings": "Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM",
          "meals": "Welcome Drink & Buffet Dinner included.",
          "transport": "AC Shuttle Transit for close proximity site transfers and passenger drops.",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Heritage Boutique Resort (Comfortable rooms, garden paths, active room services)",
          "weather": "Warm and sunny afternoon, ideal for outdoor sightseeing, average temp 24°C.",
          "dressCode": "Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.",
          "packingSuggestions": "Comfortable travel footwear, photo ID, essential personal medication, daypack.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 1 to 2 hours transfer"
        }
      },
      {
        "day": 2,
        "title": "Explore Palm Jumeirah Heritage Centre",
        "location": "Dubai",
        "overview": "Spend your day visiting Palm Jumeirah Heritage Centre, the primary attraction in Palm Jumeirah, accompanied by our expert guide.",
        "schedule": {
          "morning": {
            "title": "Guided Tour of Palm Jumeirah Heritage Centre",
            "description": "Early morning visit to Palm Jumeirah Heritage Centre to avoid crowds. Learn about the heritage and unique history of this landmark."
          },
          "afternoon": {
            "title": "Local Traditional Lunch",
            "description": "Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings."
          },
          "evening": {
            "title": "Evening walk at Palm Jumeirah Panoramic Viewpoint",
            "description": "Stroll around Palm Jumeirah Panoramic Viewpoint for scenic sunset views. Capture great family photos as the evening lights turn on."
          }
        },
        "details": {
          "importantTimings": "Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM",
          "meals": "Complimentary Breakfast & Traditional Lunch.",
          "transport": "AC Private Sedan with professional local driver (includes first-aid kit and bottled water).",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Lakefront Guest House (Scenic balcony views, hot water, western-style bathrooms)",
          "weather": "Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.",
          "dressCode": "Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.",
          "packingSuggestions": "Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 3 to 4 hours local tour"
        }
      },
      {
        "day": 3,
        "title": "Excursion to Palm Jumeirah Local Culture Park",
        "location": "Dubai",
        "overview": "Excursion to Palm Jumeirah Local Culture Park and surrounding craft villages to experience native arts, handlooms, and culture.",
        "schedule": {
          "morning": {
            "title": "Nature Walk at Palm Jumeirah Local Culture Park",
            "description": "Guided scenic walk near the lake or parks surrounding Palm Jumeirah Local Culture Park. Enjoy quiet reflection and fresh air."
          },
          "afternoon": {
            "title": "Local Handloom Visit",
            "description": "Visit local cottage industries to see artisans hand-weaving fabrics and crafting traditional wooden toys."
          },
          "evening": {
            "title": "Cultural Dance & Music Show",
            "description": "Attend a traditional cultural presentation depicting historical folk tales, followed by dinner."
          }
        },
        "details": {
          "importantTimings": "Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM",
          "meals": "Breakfast & Special Dinner Buffet.",
          "transport": "AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Premium Executive Hotel (AC rooms, elevator access, 24/7 front desk assistance)",
          "weather": "Perfect travel weather with low humidity and comfortable evening temperature 20°C.",
          "dressCode": "Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.",
          "packingSuggestions": "Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 3 to 4 hours local tour"
        }
      },
      {
        "day": 4,
        "title": "Souvenir Shopping & Onward Departure",
        "location": "Dubai",
        "overview": "Conclude your memorable stay in Dubai with local craft shopping, checkout, and outbound transfers.",
        "schedule": {
          "morning": {
            "title": "Handicrafts Shopping",
            "description": "Visit local co-operative markets to buy traditional souvenirs, regional sweets, or native organic spices."
          },
          "afternoon": {
            "title": "Check-out & Packing",
            "description": "Return to your hotel, pack your bags, clear any local incidentals, and check out from your rooms."
          },
          "evening": {
            "title": "Outbound Transfer",
            "description": "Board your private vehicle transfer to the airport or railway station for your onward return journey home."
          }
        },
        "details": {
          "importantTimings": "Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM",
          "meals": "Complimentary Healthy Breakfast included.",
          "transport": "AC Private SUV for comfortable road transfers with regular rest stops.",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Standard Comfort Hotel (Fully sanitized rooms, private bathroom, free Wi-Fi, desk space)",
          "weather": "Clear sky, comfortable morning temperature 21°C, warming up to 26°C by noon.",
          "dressCode": "Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.",
          "packingSuggestions": "Walking socks, small daypack for personal belongings, sanitizers, light jacket.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 1 to 2 hours transfer"
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
      "Day 1: Arrival & Welcome at Palm Jumeirah",
      "Day 2: Guided Sightseeing & Exploration of Palm Jumeirah",
      "Day 3: Departure"
    ],
    "cancellationSummary": "Get a 100% full refund on cancellations made up to 15 days before the departure. Rescheduling options are fully flexible."
  },
  {
    "id": "family-pangong-lake",
    "title": "Pangong Lake Experience",
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
        "title": "Arrival & Settle in at Ladakh",
        "location": "Ladakh",
        "overview": "Welcome to your yatra. Arrive in Ladakh, transfer to your stay, and rest before your sightseeing tour.",
        "schedule": {
          "morning": {
            "title": "Arrival & Check-in",
            "description": "Arrive at the nearest transit hub. Meet our coordinator and transfer to your pre-booked stay in Ladakh."
          },
          "afternoon": {
            "title": "Leisure & Rest",
            "description": "Check into your hotel room, unpack your luggage, and rest to recover from your flight or train journey."
          },
          "evening": {
            "title": "Orientation Walk",
            "description": "Meet your local guide for a small walk around the neighborhood. Receive a detailed brief on local customs."
          }
        },
        "details": {
          "importantTimings": "Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM",
          "meals": "Welcome Drink & Buffet Dinner included.",
          "transport": "AC Shuttle Transit for close proximity site transfers and passenger drops.",
          "walkingLevel": "Moderate Paced (Gentle staircases, guide assistance available)",
          "stay": "Heritage Boutique Resort (Comfortable rooms, garden paths, active room services)",
          "weather": "Warm and sunny afternoon, ideal for outdoor sightseeing, average temp 24°C.",
          "dressCode": "Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.",
          "packingSuggestions": "Comfortable travel footwear, photo ID, essential personal medication, daypack.",
          "accessibility": "Not recommended for guests requiring wheelchair support due to steep stairs and terrain.",
          "visitorNote": "Expect moderate physical movement. Wear athletic shoes with excellent grip.",
          "travelDuration": "Approx. 1 to 2 hours transfer"
        }
      },
      {
        "day": 2,
        "title": "Explore Pangong Lake Heritage Centre",
        "location": "Ladakh",
        "overview": "Spend your day visiting Pangong Lake Heritage Centre, the primary attraction in Pangong Lake, accompanied by our expert guide.",
        "schedule": {
          "morning": {
            "title": "Guided Tour of Pangong Lake Heritage Centre",
            "description": "Early morning visit to Pangong Lake Heritage Centre to avoid crowds. Learn about the heritage and unique history of this landmark."
          },
          "afternoon": {
            "title": "Local Traditional Lunch",
            "description": "Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings."
          },
          "evening": {
            "title": "Evening walk at Pangong Lake Panoramic Viewpoint",
            "description": "Stroll around Pangong Lake Panoramic Viewpoint for scenic sunset views. Capture great family photos as the evening lights turn on."
          }
        },
        "details": {
          "importantTimings": "Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM",
          "meals": "Complimentary Breakfast & Traditional Lunch.",
          "transport": "AC Private Sedan with professional local driver (includes first-aid kit and bottled water).",
          "walkingLevel": "Moderate Paced (Gentle staircases, guide assistance available)",
          "stay": "Lakefront Guest House (Scenic balcony views, hot water, western-style bathrooms)",
          "weather": "Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.",
          "dressCode": "Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.",
          "packingSuggestions": "Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.",
          "accessibility": "Not recommended for guests requiring wheelchair support due to steep stairs and terrain.",
          "visitorNote": "Expect moderate physical movement. Wear athletic shoes with excellent grip.",
          "travelDuration": "Approx. 3 to 4 hours local tour"
        }
      },
      {
        "day": 3,
        "title": "Excursion to Pangong Lake Local Culture Park",
        "location": "Ladakh",
        "overview": "Excursion to Pangong Lake Local Culture Park and surrounding craft villages to experience native arts, handlooms, and culture.",
        "schedule": {
          "morning": {
            "title": "Nature Walk at Pangong Lake Local Culture Park",
            "description": "Guided scenic walk near the lake or parks surrounding Pangong Lake Local Culture Park. Enjoy quiet reflection and fresh air."
          },
          "afternoon": {
            "title": "Local Handloom Visit",
            "description": "Visit local cottage industries to see artisans hand-weaving fabrics and crafting traditional wooden toys."
          },
          "evening": {
            "title": "Cultural Dance & Music Show",
            "description": "Attend a traditional cultural presentation depicting historical folk tales, followed by dinner."
          }
        },
        "details": {
          "importantTimings": "Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM",
          "meals": "Breakfast & Special Dinner Buffet.",
          "transport": "AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).",
          "walkingLevel": "Moderate Paced (Gentle staircases, guide assistance available)",
          "stay": "Premium Executive Hotel (AC rooms, elevator access, 24/7 front desk assistance)",
          "weather": "Perfect travel weather with low humidity and comfortable evening temperature 20°C.",
          "dressCode": "Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.",
          "packingSuggestions": "Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.",
          "accessibility": "Not recommended for guests requiring wheelchair support due to steep stairs and terrain.",
          "visitorNote": "Expect moderate physical movement. Wear athletic shoes with excellent grip.",
          "travelDuration": "Approx. 3 to 4 hours local tour"
        }
      },
      {
        "day": 4,
        "title": "Souvenir Shopping & Onward Departure",
        "location": "Ladakh",
        "overview": "Conclude your memorable stay in Ladakh with local craft shopping, checkout, and outbound transfers.",
        "schedule": {
          "morning": {
            "title": "Handicrafts Shopping",
            "description": "Visit local co-operative markets to buy traditional souvenirs, regional sweets, or native organic spices."
          },
          "afternoon": {
            "title": "Check-out & Packing",
            "description": "Return to your hotel, pack your bags, clear any local incidentals, and check out from your rooms."
          },
          "evening": {
            "title": "Outbound Transfer",
            "description": "Board your private vehicle transfer to the airport or railway station for your onward return journey home."
          }
        },
        "details": {
          "importantTimings": "Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM",
          "meals": "Complimentary Healthy Breakfast included.",
          "transport": "AC Private SUV for comfortable road transfers with regular rest stops.",
          "walkingLevel": "Moderate Paced (Gentle staircases, guide assistance available)",
          "stay": "Standard Comfort Hotel (Fully sanitized rooms, private bathroom, free Wi-Fi, desk space)",
          "weather": "Clear sky, comfortable morning temperature 21°C, warming up to 26°C by noon.",
          "dressCode": "Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.",
          "packingSuggestions": "Walking socks, small daypack for personal belongings, sanitizers, light jacket.",
          "accessibility": "Not recommended for guests requiring wheelchair support due to steep stairs and terrain.",
          "visitorNote": "Expect moderate physical movement. Wear athletic shoes with excellent grip.",
          "travelDuration": "Approx. 1 to 2 hours transfer"
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
      "Day 1: Arrival & Welcome at Pangong Lake",
      "Day 2: Guided Sightseeing & Exploration of Pangong Lake",
      "Day 3: Departure"
    ],
    "cancellationSummary": "Get a 100% full refund on cancellations made up to 15 days before the departure. Rescheduling options are fully flexible."
  },
  {
    "id": "family-radhanagar-beach",
    "title": "Radhanagar Beach Experience",
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
        "title": "Arrival & Settle in at Andaman & Nicobar Islands",
        "location": "Andaman & Nicobar Islands",
        "overview": "Welcome to your yatra. Arrive in Andaman & Nicobar Islands, transfer to your stay, and rest before your sightseeing tour.",
        "schedule": {
          "morning": {
            "title": "Arrival & Check-in",
            "description": "Arrive at the nearest transit hub. Meet our coordinator and transfer to your pre-booked stay in Andaman & Nicobar Islands."
          },
          "afternoon": {
            "title": "Leisure & Rest",
            "description": "Check into your hotel room, unpack your luggage, and rest to recover from your flight or train journey."
          },
          "evening": {
            "title": "Orientation Walk",
            "description": "Meet your local guide for a small walk around the neighborhood. Receive a detailed brief on local customs."
          }
        },
        "details": {
          "importantTimings": "Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM",
          "meals": "Welcome Drink & Buffet Dinner included.",
          "transport": "AC Shuttle Transit for close proximity site transfers and passenger drops.",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Heritage Boutique Resort (Comfortable rooms, garden paths, active room services)",
          "weather": "Warm and sunny afternoon, ideal for outdoor sightseeing, average temp 24°C.",
          "dressCode": "Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.",
          "packingSuggestions": "Comfortable travel footwear, photo ID, essential personal medication, daypack.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 1 to 2 hours transfer"
        }
      },
      {
        "day": 2,
        "title": "Explore Radhanagar Beach Heritage Centre",
        "location": "Andaman & Nicobar Islands",
        "overview": "Spend your day visiting Radhanagar Beach Heritage Centre, the primary attraction in Radhanagar Beach, accompanied by our expert guide.",
        "schedule": {
          "morning": {
            "title": "Guided Tour of Radhanagar Beach Heritage Centre",
            "description": "Early morning visit to Radhanagar Beach Heritage Centre to avoid crowds. Learn about the heritage and unique history of this landmark."
          },
          "afternoon": {
            "title": "Local Traditional Lunch",
            "description": "Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings."
          },
          "evening": {
            "title": "Evening walk at Radhanagar Beach Panoramic Viewpoint",
            "description": "Stroll around Radhanagar Beach Panoramic Viewpoint for scenic sunset views. Capture great family photos as the evening lights turn on."
          }
        },
        "details": {
          "importantTimings": "Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM",
          "meals": "Complimentary Breakfast & Traditional Lunch.",
          "transport": "AC Private Sedan with professional local driver (includes first-aid kit and bottled water).",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Lakefront Guest House (Scenic balcony views, hot water, western-style bathrooms)",
          "weather": "Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.",
          "dressCode": "Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.",
          "packingSuggestions": "Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 3 to 4 hours local tour"
        }
      },
      {
        "day": 3,
        "title": "Excursion to Radhanagar Beach Local Culture Park",
        "location": "Andaman & Nicobar Islands",
        "overview": "Excursion to Radhanagar Beach Local Culture Park and surrounding craft villages to experience native arts, handlooms, and culture.",
        "schedule": {
          "morning": {
            "title": "Nature Walk at Radhanagar Beach Local Culture Park",
            "description": "Guided scenic walk near the lake or parks surrounding Radhanagar Beach Local Culture Park. Enjoy quiet reflection and fresh air."
          },
          "afternoon": {
            "title": "Local Handloom Visit",
            "description": "Visit local cottage industries to see artisans hand-weaving fabrics and crafting traditional wooden toys."
          },
          "evening": {
            "title": "Cultural Dance & Music Show",
            "description": "Attend a traditional cultural presentation depicting historical folk tales, followed by dinner."
          }
        },
        "details": {
          "importantTimings": "Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM",
          "meals": "Breakfast & Special Dinner Buffet.",
          "transport": "AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Premium Executive Hotel (AC rooms, elevator access, 24/7 front desk assistance)",
          "weather": "Perfect travel weather with low humidity and comfortable evening temperature 20°C.",
          "dressCode": "Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.",
          "packingSuggestions": "Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 3 to 4 hours local tour"
        }
      },
      {
        "day": 4,
        "title": "Souvenir Shopping & Onward Departure",
        "location": "Andaman & Nicobar Islands",
        "overview": "Conclude your memorable stay in Andaman & Nicobar Islands with local craft shopping, checkout, and outbound transfers.",
        "schedule": {
          "morning": {
            "title": "Handicrafts Shopping",
            "description": "Visit local co-operative markets to buy traditional souvenirs, regional sweets, or native organic spices."
          },
          "afternoon": {
            "title": "Check-out & Packing",
            "description": "Return to your hotel, pack your bags, clear any local incidentals, and check out from your rooms."
          },
          "evening": {
            "title": "Outbound Transfer",
            "description": "Board your private vehicle transfer to the airport or railway station for your onward return journey home."
          }
        },
        "details": {
          "importantTimings": "Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM",
          "meals": "Complimentary Healthy Breakfast included.",
          "transport": "AC Private SUV for comfortable road transfers with regular rest stops.",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Standard Comfort Hotel (Fully sanitized rooms, private bathroom, free Wi-Fi, desk space)",
          "weather": "Clear sky, comfortable morning temperature 21°C, warming up to 26°C by noon.",
          "dressCode": "Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.",
          "packingSuggestions": "Walking socks, small daypack for personal belongings, sanitizers, light jacket.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 1 to 2 hours transfer"
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
      "Day 1: Arrival & Welcome at Radhanagar Beach",
      "Day 2: Guided Sightseeing & Exploration of Radhanagar Beach",
      "Day 3: Departure"
    ],
    "cancellationSummary": "Get a 100% full refund on cancellations made up to 15 days before the departure. Rescheduling options are fully flexible."
  },
  {
    "id": "family-rohtang-pass",
    "title": "Rohtang Pass Experience",
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
        "title": "Arrival & Settle in at Manali",
        "location": "Manali",
        "overview": "Welcome to your yatra. Arrive in Manali, transfer to your stay, and rest before your sightseeing tour.",
        "schedule": {
          "morning": {
            "title": "Arrival & Check-in",
            "description": "Arrive at the nearest transit hub. Meet our coordinator and transfer to your pre-booked stay in Manali."
          },
          "afternoon": {
            "title": "Leisure & Rest",
            "description": "Check into your hotel room, unpack your luggage, and rest to recover from your flight or train journey."
          },
          "evening": {
            "title": "Orientation Walk",
            "description": "Meet your local guide for a small walk around the neighborhood. Receive a detailed brief on local customs."
          }
        },
        "details": {
          "importantTimings": "Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM",
          "meals": "Welcome Drink & Buffet Dinner included.",
          "transport": "AC Shuttle Transit for close proximity site transfers and passenger drops.",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Heritage Boutique Resort (Comfortable rooms, garden paths, active room services)",
          "weather": "Warm and sunny afternoon, ideal for outdoor sightseeing, average temp 24°C.",
          "dressCode": "Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.",
          "packingSuggestions": "Comfortable travel footwear, photo ID, essential personal medication, daypack.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 1 to 2 hours transfer"
        }
      },
      {
        "day": 2,
        "title": "Explore Rohtang Pass Heritage Centre",
        "location": "Manali",
        "overview": "Spend your day visiting Rohtang Pass Heritage Centre, the primary attraction in Rohtang Pass, accompanied by our expert guide.",
        "schedule": {
          "morning": {
            "title": "Guided Tour of Rohtang Pass Heritage Centre",
            "description": "Early morning visit to Rohtang Pass Heritage Centre to avoid crowds. Learn about the heritage and unique history of this landmark."
          },
          "afternoon": {
            "title": "Local Traditional Lunch",
            "description": "Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings."
          },
          "evening": {
            "title": "Evening walk at Rohtang Pass Panoramic Viewpoint",
            "description": "Stroll around Rohtang Pass Panoramic Viewpoint for scenic sunset views. Capture great family photos as the evening lights turn on."
          }
        },
        "details": {
          "importantTimings": "Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM",
          "meals": "Complimentary Breakfast & Traditional Lunch.",
          "transport": "AC Private Sedan with professional local driver (includes first-aid kit and bottled water).",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Lakefront Guest House (Scenic balcony views, hot water, western-style bathrooms)",
          "weather": "Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.",
          "dressCode": "Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.",
          "packingSuggestions": "Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 3 to 4 hours local tour"
        }
      },
      {
        "day": 3,
        "title": "Excursion to Rohtang Pass Local Culture Park",
        "location": "Manali",
        "overview": "Excursion to Rohtang Pass Local Culture Park and surrounding craft villages to experience native arts, handlooms, and culture.",
        "schedule": {
          "morning": {
            "title": "Nature Walk at Rohtang Pass Local Culture Park",
            "description": "Guided scenic walk near the lake or parks surrounding Rohtang Pass Local Culture Park. Enjoy quiet reflection and fresh air."
          },
          "afternoon": {
            "title": "Local Handloom Visit",
            "description": "Visit local cottage industries to see artisans hand-weaving fabrics and crafting traditional wooden toys."
          },
          "evening": {
            "title": "Cultural Dance & Music Show",
            "description": "Attend a traditional cultural presentation depicting historical folk tales, followed by dinner."
          }
        },
        "details": {
          "importantTimings": "Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM",
          "meals": "Breakfast & Special Dinner Buffet.",
          "transport": "AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Premium Executive Hotel (AC rooms, elevator access, 24/7 front desk assistance)",
          "weather": "Perfect travel weather with low humidity and comfortable evening temperature 20°C.",
          "dressCode": "Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.",
          "packingSuggestions": "Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 3 to 4 hours local tour"
        }
      },
      {
        "day": 4,
        "title": "Souvenir Shopping & Onward Departure",
        "location": "Manali",
        "overview": "Conclude your memorable stay in Manali with local craft shopping, checkout, and outbound transfers.",
        "schedule": {
          "morning": {
            "title": "Handicrafts Shopping",
            "description": "Visit local co-operative markets to buy traditional souvenirs, regional sweets, or native organic spices."
          },
          "afternoon": {
            "title": "Check-out & Packing",
            "description": "Return to your hotel, pack your bags, clear any local incidentals, and check out from your rooms."
          },
          "evening": {
            "title": "Outbound Transfer",
            "description": "Board your private vehicle transfer to the airport or railway station for your onward return journey home."
          }
        },
        "details": {
          "importantTimings": "Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM",
          "meals": "Complimentary Healthy Breakfast included.",
          "transport": "AC Private SUV for comfortable road transfers with regular rest stops.",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Standard Comfort Hotel (Fully sanitized rooms, private bathroom, free Wi-Fi, desk space)",
          "weather": "Clear sky, comfortable morning temperature 21°C, warming up to 26°C by noon.",
          "dressCode": "Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.",
          "packingSuggestions": "Walking socks, small daypack for personal belongings, sanitizers, light jacket.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 1 to 2 hours transfer"
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
      "Day 1: Arrival & Welcome at Rohtang Pass",
      "Day 2: Guided Sightseeing & Exploration of Rohtang Pass",
      "Day 3: Departure"
    ],
    "cancellationSummary": "Get a 100% full refund on cancellations made up to 15 days before the departure. Rescheduling options are fully flexible."
  },
  {
    "id": "family-sentosa-island",
    "title": "Sentosa Island Experience",
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
        "title": "Arrival & Settle in at Singapore",
        "location": "Singapore",
        "overview": "Welcome to your yatra. Arrive in Singapore, transfer to your stay, and rest before your sightseeing tour.",
        "schedule": {
          "morning": {
            "title": "Arrival & Check-in",
            "description": "Arrive at the nearest transit hub. Meet our coordinator and transfer to your pre-booked stay in Singapore."
          },
          "afternoon": {
            "title": "Leisure & Rest",
            "description": "Check into your hotel room, unpack your luggage, and rest to recover from your flight or train journey."
          },
          "evening": {
            "title": "Orientation Walk",
            "description": "Meet your local guide for a small walk around the neighborhood. Receive a detailed brief on local customs."
          }
        },
        "details": {
          "importantTimings": "Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM",
          "meals": "Welcome Drink & Buffet Dinner included.",
          "transport": "AC Shuttle Transit for close proximity site transfers and passenger drops.",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Heritage Boutique Resort (Comfortable rooms, garden paths, active room services)",
          "weather": "Warm and sunny afternoon, ideal for outdoor sightseeing, average temp 24°C.",
          "dressCode": "Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.",
          "packingSuggestions": "Comfortable travel footwear, photo ID, essential personal medication, daypack.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 1 to 2 hours transfer"
        }
      },
      {
        "day": 2,
        "title": "Explore Sentosa Island Heritage Centre",
        "location": "Singapore",
        "overview": "Spend your day visiting Sentosa Island Heritage Centre, the primary attraction in Sentosa Island, accompanied by our expert guide.",
        "schedule": {
          "morning": {
            "title": "Guided Tour of Sentosa Island Heritage Centre",
            "description": "Early morning visit to Sentosa Island Heritage Centre to avoid crowds. Learn about the heritage and unique history of this landmark."
          },
          "afternoon": {
            "title": "Local Traditional Lunch",
            "description": "Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings."
          },
          "evening": {
            "title": "Evening walk at Sentosa Island Panoramic Viewpoint",
            "description": "Stroll around Sentosa Island Panoramic Viewpoint for scenic sunset views. Capture great family photos as the evening lights turn on."
          }
        },
        "details": {
          "importantTimings": "Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM",
          "meals": "Complimentary Breakfast & Traditional Lunch.",
          "transport": "AC Private Sedan with professional local driver (includes first-aid kit and bottled water).",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Lakefront Guest House (Scenic balcony views, hot water, western-style bathrooms)",
          "weather": "Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.",
          "dressCode": "Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.",
          "packingSuggestions": "Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 3 to 4 hours local tour"
        }
      },
      {
        "day": 3,
        "title": "Excursion to Sentosa Island Local Culture Park",
        "location": "Singapore",
        "overview": "Excursion to Sentosa Island Local Culture Park and surrounding craft villages to experience native arts, handlooms, and culture.",
        "schedule": {
          "morning": {
            "title": "Nature Walk at Sentosa Island Local Culture Park",
            "description": "Guided scenic walk near the lake or parks surrounding Sentosa Island Local Culture Park. Enjoy quiet reflection and fresh air."
          },
          "afternoon": {
            "title": "Local Handloom Visit",
            "description": "Visit local cottage industries to see artisans hand-weaving fabrics and crafting traditional wooden toys."
          },
          "evening": {
            "title": "Cultural Dance & Music Show",
            "description": "Attend a traditional cultural presentation depicting historical folk tales, followed by dinner."
          }
        },
        "details": {
          "importantTimings": "Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM",
          "meals": "Breakfast & Special Dinner Buffet.",
          "transport": "AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Premium Executive Hotel (AC rooms, elevator access, 24/7 front desk assistance)",
          "weather": "Perfect travel weather with low humidity and comfortable evening temperature 20°C.",
          "dressCode": "Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.",
          "packingSuggestions": "Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 3 to 4 hours local tour"
        }
      },
      {
        "day": 4,
        "title": "Souvenir Shopping & Onward Departure",
        "location": "Singapore",
        "overview": "Conclude your memorable stay in Singapore with local craft shopping, checkout, and outbound transfers.",
        "schedule": {
          "morning": {
            "title": "Handicrafts Shopping",
            "description": "Visit local co-operative markets to buy traditional souvenirs, regional sweets, or native organic spices."
          },
          "afternoon": {
            "title": "Check-out & Packing",
            "description": "Return to your hotel, pack your bags, clear any local incidentals, and check out from your rooms."
          },
          "evening": {
            "title": "Outbound Transfer",
            "description": "Board your private vehicle transfer to the airport or railway station for your onward return journey home."
          }
        },
        "details": {
          "importantTimings": "Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM",
          "meals": "Complimentary Healthy Breakfast included.",
          "transport": "AC Private SUV for comfortable road transfers with regular rest stops.",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Standard Comfort Hotel (Fully sanitized rooms, private bathroom, free Wi-Fi, desk space)",
          "weather": "Clear sky, comfortable morning temperature 21°C, warming up to 26°C by noon.",
          "dressCode": "Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.",
          "packingSuggestions": "Walking socks, small daypack for personal belongings, sanitizers, light jacket.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 1 to 2 hours transfer"
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
      "Day 1: Arrival & Welcome at Sentosa Island",
      "Day 2: Guided Sightseeing & Exploration of Sentosa Island",
      "Day 3: Departure"
    ],
    "cancellationSummary": "Get a 100% full refund on cancellations made up to 15 days before the departure. Rescheduling options are fully flexible."
  },
  {
    "id": "family-swiss-alps-jungfraujoch",
    "title": "Swiss Alps Experience",
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
        "title": "Arrival & Settle in at Bernese Oberland",
        "location": "Bernese Oberland",
        "overview": "Welcome to your yatra. Arrive in Bernese Oberland, transfer to your stay, and rest before your sightseeing tour.",
        "schedule": {
          "morning": {
            "title": "Arrival & Check-in",
            "description": "Arrive at the nearest transit hub. Meet our coordinator and transfer to your pre-booked stay in Bernese Oberland."
          },
          "afternoon": {
            "title": "Leisure & Rest",
            "description": "Check into your hotel room, unpack your luggage, and rest to recover from your flight or train journey."
          },
          "evening": {
            "title": "Orientation Walk",
            "description": "Meet your local guide for a small walk around the neighborhood. Receive a detailed brief on local customs."
          }
        },
        "details": {
          "importantTimings": "Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM",
          "meals": "Welcome Drink & Buffet Dinner included.",
          "transport": "AC Shuttle Transit for close proximity site transfers and passenger drops.",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Heritage Boutique Resort (Comfortable rooms, garden paths, active room services)",
          "weather": "Warm and sunny afternoon, ideal for outdoor sightseeing, average temp 24°C.",
          "dressCode": "Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.",
          "packingSuggestions": "Comfortable travel footwear, photo ID, essential personal medication, daypack.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 1 to 2 hours transfer"
        }
      },
      {
        "day": 2,
        "title": "Explore Swiss Alps Heritage Centre",
        "location": "Bernese Oberland",
        "overview": "Spend your day visiting Swiss Alps Heritage Centre, the primary attraction in Swiss Alps, accompanied by our expert guide.",
        "schedule": {
          "morning": {
            "title": "Guided Tour of Swiss Alps Heritage Centre",
            "description": "Early morning visit to Swiss Alps Heritage Centre to avoid crowds. Learn about the heritage and unique history of this landmark."
          },
          "afternoon": {
            "title": "Local Traditional Lunch",
            "description": "Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings."
          },
          "evening": {
            "title": "Evening walk at Swiss Alps Panoramic Viewpoint",
            "description": "Stroll around Swiss Alps Panoramic Viewpoint for scenic sunset views. Capture great family photos as the evening lights turn on."
          }
        },
        "details": {
          "importantTimings": "Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM",
          "meals": "Complimentary Breakfast & Traditional Lunch.",
          "transport": "AC Private Sedan with professional local driver (includes first-aid kit and bottled water).",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Lakefront Guest House (Scenic balcony views, hot water, western-style bathrooms)",
          "weather": "Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.",
          "dressCode": "Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.",
          "packingSuggestions": "Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 3 to 4 hours local tour"
        }
      },
      {
        "day": 3,
        "title": "Excursion to Swiss Alps Local Culture Park",
        "location": "Bernese Oberland",
        "overview": "Excursion to Swiss Alps Local Culture Park and surrounding craft villages to experience native arts, handlooms, and culture.",
        "schedule": {
          "morning": {
            "title": "Nature Walk at Swiss Alps Local Culture Park",
            "description": "Guided scenic walk near the lake or parks surrounding Swiss Alps Local Culture Park. Enjoy quiet reflection and fresh air."
          },
          "afternoon": {
            "title": "Local Handloom Visit",
            "description": "Visit local cottage industries to see artisans hand-weaving fabrics and crafting traditional wooden toys."
          },
          "evening": {
            "title": "Cultural Dance & Music Show",
            "description": "Attend a traditional cultural presentation depicting historical folk tales, followed by dinner."
          }
        },
        "details": {
          "importantTimings": "Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM",
          "meals": "Breakfast & Special Dinner Buffet.",
          "transport": "AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Premium Executive Hotel (AC rooms, elevator access, 24/7 front desk assistance)",
          "weather": "Perfect travel weather with low humidity and comfortable evening temperature 20°C.",
          "dressCode": "Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.",
          "packingSuggestions": "Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 3 to 4 hours local tour"
        }
      },
      {
        "day": 4,
        "title": "Souvenir Shopping & Onward Departure",
        "location": "Bernese Oberland",
        "overview": "Conclude your memorable stay in Bernese Oberland with local craft shopping, checkout, and outbound transfers.",
        "schedule": {
          "morning": {
            "title": "Handicrafts Shopping",
            "description": "Visit local co-operative markets to buy traditional souvenirs, regional sweets, or native organic spices."
          },
          "afternoon": {
            "title": "Check-out & Packing",
            "description": "Return to your hotel, pack your bags, clear any local incidentals, and check out from your rooms."
          },
          "evening": {
            "title": "Outbound Transfer",
            "description": "Board your private vehicle transfer to the airport or railway station for your onward return journey home."
          }
        },
        "details": {
          "importantTimings": "Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM",
          "meals": "Complimentary Healthy Breakfast included.",
          "transport": "AC Private SUV for comfortable road transfers with regular rest stops.",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Standard Comfort Hotel (Fully sanitized rooms, private bathroom, free Wi-Fi, desk space)",
          "weather": "Clear sky, comfortable morning temperature 21°C, warming up to 26°C by noon.",
          "dressCode": "Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.",
          "packingSuggestions": "Walking socks, small daypack for personal belongings, sanitizers, light jacket.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 1 to 2 hours transfer"
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
      "Day 1: Arrival & Welcome at Swiss Alps",
      "Day 2: Guided Sightseeing & Exploration of Swiss Alps",
      "Day 3: Departure"
    ],
    "cancellationSummary": "Get a 100% full refund on cancellations made up to 15 days before the departure. Rescheduling options are fully flexible."
  },
  {
    "id": "family-taj-mahal",
    "title": "Taj Mahal Experience",
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
        "title": "Arrival & Settle in at Agra",
        "location": "Agra",
        "overview": "Welcome to your yatra. Arrive in Agra, transfer to your stay, and rest before your sightseeing tour.",
        "schedule": {
          "morning": {
            "title": "Arrival & Check-in",
            "description": "Arrive at the nearest transit hub. Meet our coordinator and transfer to your pre-booked stay in Agra."
          },
          "afternoon": {
            "title": "Leisure & Rest",
            "description": "Check into your hotel room, unpack your luggage, and rest to recover from your flight or train journey."
          },
          "evening": {
            "title": "Orientation Walk",
            "description": "Meet your local guide for a small walk around the neighborhood. Receive a detailed brief on local customs."
          }
        },
        "details": {
          "importantTimings": "Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM",
          "meals": "Welcome Drink & Buffet Dinner included.",
          "transport": "AC Shuttle Transit for close proximity site transfers and passenger drops.",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Heritage Boutique Resort (Comfortable rooms, garden paths, active room services)",
          "weather": "Warm and sunny afternoon, ideal for outdoor sightseeing, average temp 24°C.",
          "dressCode": "Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.",
          "packingSuggestions": "Comfortable travel footwear, photo ID, essential personal medication, daypack.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 1 to 2 hours transfer"
        }
      },
      {
        "day": 2,
        "title": "Explore Taj Mahal Heritage Centre",
        "location": "Agra",
        "overview": "Spend your day visiting Taj Mahal Heritage Centre, the primary attraction in Taj Mahal, accompanied by our expert guide.",
        "schedule": {
          "morning": {
            "title": "Guided Tour of Taj Mahal Heritage Centre",
            "description": "Early morning visit to Taj Mahal Heritage Centre to avoid crowds. Learn about the heritage and unique history of this landmark."
          },
          "afternoon": {
            "title": "Local Traditional Lunch",
            "description": "Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings."
          },
          "evening": {
            "title": "Evening walk at Taj Mahal Panoramic Viewpoint",
            "description": "Stroll around Taj Mahal Panoramic Viewpoint for scenic sunset views. Capture great family photos as the evening lights turn on."
          }
        },
        "details": {
          "importantTimings": "Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM",
          "meals": "Complimentary Breakfast & Traditional Lunch.",
          "transport": "AC Private Sedan with professional local driver (includes first-aid kit and bottled water).",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Lakefront Guest House (Scenic balcony views, hot water, western-style bathrooms)",
          "weather": "Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.",
          "dressCode": "Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.",
          "packingSuggestions": "Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 3 to 4 hours local tour"
        }
      },
      {
        "day": 3,
        "title": "Excursion to Taj Mahal Local Culture Park",
        "location": "Agra",
        "overview": "Excursion to Taj Mahal Local Culture Park and surrounding craft villages to experience native arts, handlooms, and culture.",
        "schedule": {
          "morning": {
            "title": "Nature Walk at Taj Mahal Local Culture Park",
            "description": "Guided scenic walk near the lake or parks surrounding Taj Mahal Local Culture Park. Enjoy quiet reflection and fresh air."
          },
          "afternoon": {
            "title": "Local Handloom Visit",
            "description": "Visit local cottage industries to see artisans hand-weaving fabrics and crafting traditional wooden toys."
          },
          "evening": {
            "title": "Cultural Dance & Music Show",
            "description": "Attend a traditional cultural presentation depicting historical folk tales, followed by dinner."
          }
        },
        "details": {
          "importantTimings": "Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM",
          "meals": "Breakfast & Special Dinner Buffet.",
          "transport": "AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Premium Executive Hotel (AC rooms, elevator access, 24/7 front desk assistance)",
          "weather": "Perfect travel weather with low humidity and comfortable evening temperature 20°C.",
          "dressCode": "Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.",
          "packingSuggestions": "Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 3 to 4 hours local tour"
        }
      },
      {
        "day": 4,
        "title": "Souvenir Shopping & Onward Departure",
        "location": "Agra",
        "overview": "Conclude your memorable stay in Agra with local craft shopping, checkout, and outbound transfers.",
        "schedule": {
          "morning": {
            "title": "Handicrafts Shopping",
            "description": "Visit local co-operative markets to buy traditional souvenirs, regional sweets, or native organic spices."
          },
          "afternoon": {
            "title": "Check-out & Packing",
            "description": "Return to your hotel, pack your bags, clear any local incidentals, and check out from your rooms."
          },
          "evening": {
            "title": "Outbound Transfer",
            "description": "Board your private vehicle transfer to the airport or railway station for your onward return journey home."
          }
        },
        "details": {
          "importantTimings": "Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM",
          "meals": "Complimentary Healthy Breakfast included.",
          "transport": "AC Private SUV for comfortable road transfers with regular rest stops.",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Standard Comfort Hotel (Fully sanitized rooms, private bathroom, free Wi-Fi, desk space)",
          "weather": "Clear sky, comfortable morning temperature 21°C, warming up to 26°C by noon.",
          "dressCode": "Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.",
          "packingSuggestions": "Walking socks, small daypack for personal belongings, sanitizers, light jacket.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 1 to 2 hours transfer"
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
      "Day 1: Arrival & Welcome at Taj Mahal",
      "Day 2: Guided Sightseeing & Exploration of Taj Mahal",
      "Day 3: Departure"
    ],
    "cancellationSummary": "Get a 100% full refund on cancellations made up to 15 days before the departure. Rescheduling options are fully flexible."
  },
  {
    "id": "family-tokyo-disneyland",
    "title": "Tokyo Disneyland Experience",
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
        "title": "Arrival & Settle in at Tokyo",
        "location": "Tokyo",
        "overview": "Welcome to your yatra. Arrive in Tokyo, transfer to your stay, and rest before your sightseeing tour.",
        "schedule": {
          "morning": {
            "title": "Arrival & Check-in",
            "description": "Arrive at the nearest transit hub. Meet our coordinator and transfer to your pre-booked stay in Tokyo."
          },
          "afternoon": {
            "title": "Leisure & Rest",
            "description": "Check into your hotel room, unpack your luggage, and rest to recover from your flight or train journey."
          },
          "evening": {
            "title": "Orientation Walk",
            "description": "Meet your local guide for a small walk around the neighborhood. Receive a detailed brief on local customs."
          }
        },
        "details": {
          "importantTimings": "Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM",
          "meals": "Welcome Drink & Buffet Dinner included.",
          "transport": "AC Shuttle Transit for close proximity site transfers and passenger drops.",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Heritage Boutique Resort (Comfortable rooms, garden paths, active room services)",
          "weather": "Warm and sunny afternoon, ideal for outdoor sightseeing, average temp 24°C.",
          "dressCode": "Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.",
          "packingSuggestions": "Comfortable travel footwear, photo ID, essential personal medication, daypack.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 1 to 2 hours transfer"
        }
      },
      {
        "day": 2,
        "title": "Explore Tokyo Disneyland Heritage Centre",
        "location": "Tokyo",
        "overview": "Spend your day visiting Tokyo Disneyland Heritage Centre, the primary attraction in Tokyo Disneyland, accompanied by our expert guide.",
        "schedule": {
          "morning": {
            "title": "Guided Tour of Tokyo Disneyland Heritage Centre",
            "description": "Early morning visit to Tokyo Disneyland Heritage Centre to avoid crowds. Learn about the heritage and unique history of this landmark."
          },
          "afternoon": {
            "title": "Local Traditional Lunch",
            "description": "Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings."
          },
          "evening": {
            "title": "Evening walk at Tokyo Disneyland Panoramic Viewpoint",
            "description": "Stroll around Tokyo Disneyland Panoramic Viewpoint for scenic sunset views. Capture great family photos as the evening lights turn on."
          }
        },
        "details": {
          "importantTimings": "Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM",
          "meals": "Complimentary Breakfast & Traditional Lunch.",
          "transport": "AC Private Sedan with professional local driver (includes first-aid kit and bottled water).",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Lakefront Guest House (Scenic balcony views, hot water, western-style bathrooms)",
          "weather": "Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.",
          "dressCode": "Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.",
          "packingSuggestions": "Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 3 to 4 hours local tour"
        }
      },
      {
        "day": 3,
        "title": "Excursion to Tokyo Disneyland Local Culture Park",
        "location": "Tokyo",
        "overview": "Excursion to Tokyo Disneyland Local Culture Park and surrounding craft villages to experience native arts, handlooms, and culture.",
        "schedule": {
          "morning": {
            "title": "Nature Walk at Tokyo Disneyland Local Culture Park",
            "description": "Guided scenic walk near the lake or parks surrounding Tokyo Disneyland Local Culture Park. Enjoy quiet reflection and fresh air."
          },
          "afternoon": {
            "title": "Local Handloom Visit",
            "description": "Visit local cottage industries to see artisans hand-weaving fabrics and crafting traditional wooden toys."
          },
          "evening": {
            "title": "Cultural Dance & Music Show",
            "description": "Attend a traditional cultural presentation depicting historical folk tales, followed by dinner."
          }
        },
        "details": {
          "importantTimings": "Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM",
          "meals": "Breakfast & Special Dinner Buffet.",
          "transport": "AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Premium Executive Hotel (AC rooms, elevator access, 24/7 front desk assistance)",
          "weather": "Perfect travel weather with low humidity and comfortable evening temperature 20°C.",
          "dressCode": "Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.",
          "packingSuggestions": "Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 3 to 4 hours local tour"
        }
      },
      {
        "day": 4,
        "title": "Souvenir Shopping & Onward Departure",
        "location": "Tokyo",
        "overview": "Conclude your memorable stay in Tokyo with local craft shopping, checkout, and outbound transfers.",
        "schedule": {
          "morning": {
            "title": "Handicrafts Shopping",
            "description": "Visit local co-operative markets to buy traditional souvenirs, regional sweets, or native organic spices."
          },
          "afternoon": {
            "title": "Check-out & Packing",
            "description": "Return to your hotel, pack your bags, clear any local incidentals, and check out from your rooms."
          },
          "evening": {
            "title": "Outbound Transfer",
            "description": "Board your private vehicle transfer to the airport or railway station for your onward return journey home."
          }
        },
        "details": {
          "importantTimings": "Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM",
          "meals": "Complimentary Healthy Breakfast included.",
          "transport": "AC Private SUV for comfortable road transfers with regular rest stops.",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Standard Comfort Hotel (Fully sanitized rooms, private bathroom, free Wi-Fi, desk space)",
          "weather": "Clear sky, comfortable morning temperature 21°C, warming up to 26°C by noon.",
          "dressCode": "Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.",
          "packingSuggestions": "Walking socks, small daypack for personal belongings, sanitizers, light jacket.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 1 to 2 hours transfer"
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
      "Day 1: Arrival & Welcome at Tokyo Disneyland",
      "Day 2: Guided Sightseeing & Exploration of Tokyo Disneyland",
      "Day 3: Departure"
    ],
    "cancellationSummary": "Get a 100% full refund on cancellations made up to 15 days before the departure. Rescheduling options are fully flexible."
  },
  {
    "id": "family-universal-studios-japan",
    "title": "Universal Studios Japan Experience",
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
        "title": "Arrival & Settle in at Osaka",
        "location": "Osaka",
        "overview": "Welcome to your yatra. Arrive in Osaka, transfer to your stay, and rest before your sightseeing tour.",
        "schedule": {
          "morning": {
            "title": "Arrival & Check-in",
            "description": "Arrive at the nearest transit hub. Meet our coordinator and transfer to your pre-booked stay in Osaka."
          },
          "afternoon": {
            "title": "Leisure & Rest",
            "description": "Check into your hotel room, unpack your luggage, and rest to recover from your flight or train journey."
          },
          "evening": {
            "title": "Orientation Walk",
            "description": "Meet your local guide for a small walk around the neighborhood. Receive a detailed brief on local customs."
          }
        },
        "details": {
          "importantTimings": "Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM",
          "meals": "Welcome Drink & Buffet Dinner included.",
          "transport": "AC Shuttle Transit for close proximity site transfers and passenger drops.",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Heritage Boutique Resort (Comfortable rooms, garden paths, active room services)",
          "weather": "Warm and sunny afternoon, ideal for outdoor sightseeing, average temp 24°C.",
          "dressCode": "Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.",
          "packingSuggestions": "Comfortable travel footwear, photo ID, essential personal medication, daypack.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 1 to 2 hours transfer"
        }
      },
      {
        "day": 2,
        "title": "Explore Universal Studios Japan Heritage Centre",
        "location": "Osaka",
        "overview": "Spend your day visiting Universal Studios Japan Heritage Centre, the primary attraction in Universal Studios Japan, accompanied by our expert guide.",
        "schedule": {
          "morning": {
            "title": "Guided Tour of Universal Studios Japan Heritage Centre",
            "description": "Early morning visit to Universal Studios Japan Heritage Centre to avoid crowds. Learn about the heritage and unique history of this landmark."
          },
          "afternoon": {
            "title": "Local Traditional Lunch",
            "description": "Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings."
          },
          "evening": {
            "title": "Evening walk at Universal Studios Japan Panoramic Viewpoint",
            "description": "Stroll around Universal Studios Japan Panoramic Viewpoint for scenic sunset views. Capture great family photos as the evening lights turn on."
          }
        },
        "details": {
          "importantTimings": "Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM",
          "meals": "Complimentary Breakfast & Traditional Lunch.",
          "transport": "AC Private Sedan with professional local driver (includes first-aid kit and bottled water).",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Lakefront Guest House (Scenic balcony views, hot water, western-style bathrooms)",
          "weather": "Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.",
          "dressCode": "Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.",
          "packingSuggestions": "Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 3 to 4 hours local tour"
        }
      },
      {
        "day": 3,
        "title": "Excursion to Universal Studios Japan Local Culture Park",
        "location": "Osaka",
        "overview": "Excursion to Universal Studios Japan Local Culture Park and surrounding craft villages to experience native arts, handlooms, and culture.",
        "schedule": {
          "morning": {
            "title": "Nature Walk at Universal Studios Japan Local Culture Park",
            "description": "Guided scenic walk near the lake or parks surrounding Universal Studios Japan Local Culture Park. Enjoy quiet reflection and fresh air."
          },
          "afternoon": {
            "title": "Local Handloom Visit",
            "description": "Visit local cottage industries to see artisans hand-weaving fabrics and crafting traditional wooden toys."
          },
          "evening": {
            "title": "Cultural Dance & Music Show",
            "description": "Attend a traditional cultural presentation depicting historical folk tales, followed by dinner."
          }
        },
        "details": {
          "importantTimings": "Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM",
          "meals": "Breakfast & Special Dinner Buffet.",
          "transport": "AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Premium Executive Hotel (AC rooms, elevator access, 24/7 front desk assistance)",
          "weather": "Perfect travel weather with low humidity and comfortable evening temperature 20°C.",
          "dressCode": "Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.",
          "packingSuggestions": "Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 3 to 4 hours local tour"
        }
      },
      {
        "day": 4,
        "title": "Souvenir Shopping & Onward Departure",
        "location": "Osaka",
        "overview": "Conclude your memorable stay in Osaka with local craft shopping, checkout, and outbound transfers.",
        "schedule": {
          "morning": {
            "title": "Handicrafts Shopping",
            "description": "Visit local co-operative markets to buy traditional souvenirs, regional sweets, or native organic spices."
          },
          "afternoon": {
            "title": "Check-out & Packing",
            "description": "Return to your hotel, pack your bags, clear any local incidentals, and check out from your rooms."
          },
          "evening": {
            "title": "Outbound Transfer",
            "description": "Board your private vehicle transfer to the airport or railway station for your onward return journey home."
          }
        },
        "details": {
          "importantTimings": "Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM",
          "meals": "Complimentary Healthy Breakfast included.",
          "transport": "AC Private SUV for comfortable road transfers with regular rest stops.",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Standard Comfort Hotel (Fully sanitized rooms, private bathroom, free Wi-Fi, desk space)",
          "weather": "Clear sky, comfortable morning temperature 21°C, warming up to 26°C by noon.",
          "dressCode": "Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.",
          "packingSuggestions": "Walking socks, small daypack for personal belongings, sanitizers, light jacket.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 1 to 2 hours transfer"
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
      "Day 1: Arrival & Welcome at Universal Studios Japan",
      "Day 2: Guided Sightseeing & Exploration of Universal Studios Japan",
      "Day 3: Departure"
    ],
    "cancellationSummary": "Get a 100% full refund on cancellations made up to 15 days before the departure. Rescheduling options are fully flexible."
  },
  {
    "id": "family-venice-grand-canal",
    "title": "Venice Grand Canal Experience",
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
        "title": "Arrival & Settle in at Venice",
        "location": "Venice",
        "overview": "Welcome to your yatra. Arrive in Venice, transfer to your stay, and rest before your sightseeing tour.",
        "schedule": {
          "morning": {
            "title": "Arrival & Check-in",
            "description": "Arrive at the nearest transit hub. Meet our coordinator and transfer to your pre-booked stay in Venice."
          },
          "afternoon": {
            "title": "Leisure & Rest",
            "description": "Check into your hotel room, unpack your luggage, and rest to recover from your flight or train journey."
          },
          "evening": {
            "title": "Orientation Walk",
            "description": "Meet your local guide for a small walk around the neighborhood. Receive a detailed brief on local customs."
          }
        },
        "details": {
          "importantTimings": "Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM",
          "meals": "Welcome Drink & Buffet Dinner included.",
          "transport": "AC Shuttle Transit for close proximity site transfers and passenger drops.",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Heritage Boutique Resort (Comfortable rooms, garden paths, active room services)",
          "weather": "Warm and sunny afternoon, ideal for outdoor sightseeing, average temp 24°C.",
          "dressCode": "Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.",
          "packingSuggestions": "Comfortable travel footwear, photo ID, essential personal medication, daypack.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 1 to 2 hours transfer"
        }
      },
      {
        "day": 2,
        "title": "Explore Venice Grand Canal Heritage Centre",
        "location": "Venice",
        "overview": "Spend your day visiting Venice Grand Canal Heritage Centre, the primary attraction in Venice Grand Canal, accompanied by our expert guide.",
        "schedule": {
          "morning": {
            "title": "Guided Tour of Venice Grand Canal Heritage Centre",
            "description": "Early morning visit to Venice Grand Canal Heritage Centre to avoid crowds. Learn about the heritage and unique history of this landmark."
          },
          "afternoon": {
            "title": "Local Traditional Lunch",
            "description": "Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings."
          },
          "evening": {
            "title": "Evening walk at Venice Grand Canal Panoramic Viewpoint",
            "description": "Stroll around Venice Grand Canal Panoramic Viewpoint for scenic sunset views. Capture great family photos as the evening lights turn on."
          }
        },
        "details": {
          "importantTimings": "Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM",
          "meals": "Complimentary Breakfast & Traditional Lunch.",
          "transport": "AC Private Sedan with professional local driver (includes first-aid kit and bottled water).",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Lakefront Guest House (Scenic balcony views, hot water, western-style bathrooms)",
          "weather": "Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.",
          "dressCode": "Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.",
          "packingSuggestions": "Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 3 to 4 hours local tour"
        }
      },
      {
        "day": 3,
        "title": "Excursion to Venice Grand Canal Local Culture Park",
        "location": "Venice",
        "overview": "Excursion to Venice Grand Canal Local Culture Park and surrounding craft villages to experience native arts, handlooms, and culture.",
        "schedule": {
          "morning": {
            "title": "Nature Walk at Venice Grand Canal Local Culture Park",
            "description": "Guided scenic walk near the lake or parks surrounding Venice Grand Canal Local Culture Park. Enjoy quiet reflection and fresh air."
          },
          "afternoon": {
            "title": "Local Handloom Visit",
            "description": "Visit local cottage industries to see artisans hand-weaving fabrics and crafting traditional wooden toys."
          },
          "evening": {
            "title": "Cultural Dance & Music Show",
            "description": "Attend a traditional cultural presentation depicting historical folk tales, followed by dinner."
          }
        },
        "details": {
          "importantTimings": "Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM",
          "meals": "Breakfast & Special Dinner Buffet.",
          "transport": "AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Premium Executive Hotel (AC rooms, elevator access, 24/7 front desk assistance)",
          "weather": "Perfect travel weather with low humidity and comfortable evening temperature 20°C.",
          "dressCode": "Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.",
          "packingSuggestions": "Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 3 to 4 hours local tour"
        }
      },
      {
        "day": 4,
        "title": "Souvenir Shopping & Onward Departure",
        "location": "Venice",
        "overview": "Conclude your memorable stay in Venice with local craft shopping, checkout, and outbound transfers.",
        "schedule": {
          "morning": {
            "title": "Handicrafts Shopping",
            "description": "Visit local co-operative markets to buy traditional souvenirs, regional sweets, or native organic spices."
          },
          "afternoon": {
            "title": "Check-out & Packing",
            "description": "Return to your hotel, pack your bags, clear any local incidentals, and check out from your rooms."
          },
          "evening": {
            "title": "Outbound Transfer",
            "description": "Board your private vehicle transfer to the airport or railway station for your onward return journey home."
          }
        },
        "details": {
          "importantTimings": "Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM",
          "meals": "Complimentary Healthy Breakfast included.",
          "transport": "AC Private SUV for comfortable road transfers with regular rest stops.",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Standard Comfort Hotel (Fully sanitized rooms, private bathroom, free Wi-Fi, desk space)",
          "weather": "Clear sky, comfortable morning temperature 21°C, warming up to 26°C by noon.",
          "dressCode": "Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.",
          "packingSuggestions": "Walking socks, small daypack for personal belongings, sanitizers, light jacket.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 1 to 2 hours transfer"
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
      "Day 1: Arrival & Welcome at Venice Grand Canal",
      "Day 2: Guided Sightseeing & Exploration of Venice Grand Canal",
      "Day 3: Departure"
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
    "categoryLabel": "Buddhist Pilgrimage",
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
      "Buddhist Pilgrimage",
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
        "title": "Arrival & Settle in at Ratnapura",
        "location": "Ratnapura",
        "overview": "Welcome to your yatra. Arrive in Ratnapura, transfer to your stay, and rest before your sightseeing tour.",
        "schedule": {
          "morning": {
            "title": "Arrival & Check-in",
            "description": "Arrive at the nearest transit hub. Meet our coordinator and transfer to your pre-booked stay in Ratnapura."
          },
          "afternoon": {
            "title": "Leisure & Rest",
            "description": "Check into your hotel room, unpack your luggage, and rest to recover from your flight or train journey."
          },
          "evening": {
            "title": "Orientation Walk",
            "description": "Meet your local guide for a small walk around the neighborhood. Receive a detailed brief on local customs."
          }
        },
        "details": {
          "importantTimings": "Monastery Hours: 5:00 AM - 11:30 AM, 2:30 PM - 6:00 PM | Meditation: 5:30 AM",
          "meals": "Welcome Drink & Buffet Dinner included (100% Satvik Veg).",
          "transport": "AC Shuttle Transit for close proximity site transfers and passenger drops.",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Vedic Heritage Inn (Ashram atmosphere, close to main shrines, Western toilets, hot water)",
          "weather": "Warm and sunny afternoon, ideal for outdoor sightseeing, average temp 24°C.",
          "dressCode": "Modest clothing that covers shoulders and knees. Light-colored cotton attire is highly recommended.",
          "packingSuggestions": "Comfortable travel footwear, photo ID, essential personal medication, daypack.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 1 to 2 hours transfer"
        }
      },
      {
        "day": 2,
        "title": "Explore Adam’s Peak (Sri Pada) Heritage Centre",
        "location": "Ratnapura",
        "overview": "Spend your day visiting Adam’s Peak (Sri Pada) Heritage Centre, the primary attraction in Adam’s Peak (Sri Pada), accompanied by our expert guide.",
        "schedule": {
          "morning": {
            "title": "Guided Tour of Adam’s Peak (Sri Pada) Heritage Centre",
            "description": "Early morning visit to Adam’s Peak (Sri Pada) Heritage Centre to avoid crowds. Learn about the heritage and unique history of this landmark."
          },
          "afternoon": {
            "title": "Local Traditional Lunch",
            "description": "Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings."
          },
          "evening": {
            "title": "Evening walk at Adam’s Peak (Sri Pada) Panoramic Viewpoint",
            "description": "Stroll around Adam’s Peak (Sri Pada) Panoramic Viewpoint for scenic sunset views. Capture great family photos as the evening lights turn on."
          }
        },
        "details": {
          "importantTimings": "Monastery Hours: 5:00 AM - 11:30 AM, 2:30 PM - 6:00 PM | Meditation: 5:30 AM",
          "meals": "Complimentary Breakfast & Traditional Lunch (100% Satvik Veg).",
          "transport": "AC Private Sedan with professional local driver (includes first-aid kit and bottled water).",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Premium Pilgrim Hotel (AC rooms, elevator, clean linen, hot water, elevator access)",
          "weather": "Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.",
          "dressCode": "Modest clothing that covers shoulders and knees. Light-colored cotton attire is highly recommended.",
          "packingSuggestions": "Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 3 to 4 hours local tour"
        }
      },
      {
        "day": 3,
        "title": "Souvenir Shopping & Onward Departure",
        "location": "Ratnapura",
        "overview": "Conclude your memorable stay in Ratnapura with local craft shopping, checkout, and outbound transfers.",
        "schedule": {
          "morning": {
            "title": "Handicrafts Shopping",
            "description": "Visit local co-operative markets to buy traditional souvenirs, regional sweets, or native organic spices."
          },
          "afternoon": {
            "title": "Check-out & Packing",
            "description": "Return to your hotel, pack your bags, clear any local incidentals, and check out from your rooms."
          },
          "evening": {
            "title": "Outbound Transfer",
            "description": "Board your private vehicle transfer to the airport or railway station for your onward return journey home."
          }
        },
        "details": {
          "importantTimings": "Monastery Hours: 5:00 AM - 11:30 AM, 2:30 PM - 6:00 PM | Meditation: 5:30 AM",
          "meals": "Breakfast & Special Dinner Buffet (100% Satvik Veg).",
          "transport": "AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Pilgrim Rest House (Safe, family-friendly rooms, walking distance to sacred sites)",
          "weather": "Perfect travel weather with low humidity and comfortable evening temperature 20°C.",
          "dressCode": "Modest clothing that covers shoulders and knees. Light-colored cotton attire is highly recommended.",
          "packingSuggestions": "Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 1 to 2 hours transfer"
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
      "Day 1: Arrival & Welcome at Adam’s Peak (Sri Pada)",
      "Day 2: Guided Sightseeing & Exploration of Adam’s Peak (Sri Pada)",
      "Day 3: Departure"
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
    "categoryLabel": "Buddhist Pilgrimage",
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
      "Buddhist Pilgrimage",
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
        "title": "Arrival & Settle in at Gaya",
        "location": "Gaya",
        "overview": "Welcome to your yatra. Arrive in Gaya, transfer to your stay, and rest before your sightseeing tour.",
        "schedule": {
          "morning": {
            "title": "Arrival & Check-in",
            "description": "Arrive at the nearest transit hub. Meet our coordinator and transfer to your pre-booked stay in Gaya."
          },
          "afternoon": {
            "title": "Leisure & Rest",
            "description": "Check into your hotel room, unpack your luggage, and rest to recover from your flight or train journey."
          },
          "evening": {
            "title": "Orientation Walk",
            "description": "Meet your local guide for a small walk around the neighborhood. Receive a detailed brief on local customs."
          }
        },
        "details": {
          "importantTimings": "Monastery Hours: 5:00 AM - 11:30 AM, 2:30 PM - 6:00 PM | Meditation: 5:30 AM",
          "meals": "Welcome Drink & Buffet Dinner included (100% Satvik Veg).",
          "transport": "AC Shuttle Transit for close proximity site transfers and passenger drops.",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Vedic Heritage Inn (Ashram atmosphere, close to main shrines, Western toilets, hot water)",
          "weather": "Warm and sunny afternoon, ideal for outdoor sightseeing, average temp 24°C.",
          "dressCode": "Modest clothing that covers shoulders and knees. Light-colored cotton attire is highly recommended.",
          "packingSuggestions": "Comfortable travel footwear, photo ID, essential personal medication, daypack.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 1 to 2 hours transfer"
        }
      },
      {
        "day": 2,
        "title": "Explore Great Buddha Statue",
        "location": "Gaya",
        "overview": "Spend your day visiting Great Buddha Statue, the primary attraction in Bodh Gaya, accompanied by our expert guide.",
        "schedule": {
          "morning": {
            "title": "Guided Tour of Great Buddha Statue",
            "description": "Early morning visit to Great Buddha Statue to avoid crowds. Learn about the heritage and unique history of this landmark."
          },
          "afternoon": {
            "title": "Local Traditional Lunch",
            "description": "Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings."
          },
          "evening": {
            "title": "Evening walk at Muchalinda Lake & Lotus pond",
            "description": "Stroll around Muchalinda Lake & Lotus pond for scenic sunset views. Capture great family photos as the evening lights turn on."
          }
        },
        "details": {
          "importantTimings": "Monastery Hours: 5:00 AM - 11:30 AM, 2:30 PM - 6:00 PM | Meditation: 5:30 AM",
          "meals": "Complimentary Breakfast & Traditional Lunch (100% Satvik Veg).",
          "transport": "AC Private Sedan with professional local driver (includes first-aid kit and bottled water).",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Premium Pilgrim Hotel (AC rooms, elevator, clean linen, hot water, elevator access)",
          "weather": "Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.",
          "dressCode": "Modest clothing that covers shoulders and knees. Light-colored cotton attire is highly recommended.",
          "packingSuggestions": "Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 3 to 4 hours local tour"
        }
      },
      {
        "day": 3,
        "title": "Souvenir Shopping & Onward Departure",
        "location": "Gaya",
        "overview": "Conclude your memorable stay in Gaya with local craft shopping, checkout, and outbound transfers.",
        "schedule": {
          "morning": {
            "title": "Handicrafts Shopping",
            "description": "Visit local co-operative markets to buy traditional souvenirs, regional sweets, or native organic spices."
          },
          "afternoon": {
            "title": "Check-out & Packing",
            "description": "Return to your hotel, pack your bags, clear any local incidentals, and check out from your rooms."
          },
          "evening": {
            "title": "Outbound Transfer",
            "description": "Board your private vehicle transfer to the airport or railway station for your onward return journey home."
          }
        },
        "details": {
          "importantTimings": "Monastery Hours: 5:00 AM - 11:30 AM, 2:30 PM - 6:00 PM | Meditation: 5:30 AM",
          "meals": "Breakfast & Special Dinner Buffet (100% Satvik Veg).",
          "transport": "AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Pilgrim Rest House (Safe, family-friendly rooms, walking distance to sacred sites)",
          "weather": "Perfect travel weather with low humidity and comfortable evening temperature 20°C.",
          "dressCode": "Modest clothing that covers shoulders and knees. Light-colored cotton attire is highly recommended.",
          "packingSuggestions": "Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 1 to 2 hours transfer"
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
      "Day 1: Arrival & Welcome at Bodh Gaya",
      "Day 2: Guided Sightseeing & Exploration of Bodh Gaya",
      "Day 3: Departure"
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
    "categoryLabel": "Buddhist Pilgrimage",
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
      "Buddhist Pilgrimage",
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
        "title": "Arrival & Settle in at Magelang",
        "location": "Magelang",
        "overview": "Welcome to your yatra. Arrive in Magelang, transfer to your stay, and rest before your sightseeing tour.",
        "schedule": {
          "morning": {
            "title": "Arrival & Check-in",
            "description": "Arrive at the nearest transit hub. Meet our coordinator and transfer to your pre-booked stay in Magelang."
          },
          "afternoon": {
            "title": "Leisure & Rest",
            "description": "Check into your hotel room, unpack your luggage, and rest to recover from your flight or train journey."
          },
          "evening": {
            "title": "Orientation Walk",
            "description": "Meet your local guide for a small walk around the neighborhood. Receive a detailed brief on local customs."
          }
        },
        "details": {
          "importantTimings": "Monastery Hours: 5:00 AM - 11:30 AM, 2:30 PM - 6:00 PM | Meditation: 5:30 AM",
          "meals": "Welcome Drink & Buffet Dinner included (100% Satvik Veg).",
          "transport": "AC Shuttle Transit for close proximity site transfers and passenger drops.",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Vedic Heritage Inn (Ashram atmosphere, close to main shrines, Western toilets, hot water)",
          "weather": "Warm and sunny afternoon, ideal for outdoor sightseeing, average temp 24°C.",
          "dressCode": "Modest clothing that covers shoulders and knees. Light-colored cotton attire is highly recommended.",
          "packingSuggestions": "Comfortable travel footwear, photo ID, essential personal medication, daypack.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 1 to 2 hours transfer"
        }
      },
      {
        "day": 2,
        "title": "Explore Borobudur Temple Heritage Centre",
        "location": "Magelang",
        "overview": "Spend your day visiting Borobudur Temple Heritage Centre, the primary attraction in Borobudur Temple, accompanied by our expert guide.",
        "schedule": {
          "morning": {
            "title": "Guided Tour of Borobudur Temple Heritage Centre",
            "description": "Early morning visit to Borobudur Temple Heritage Centre to avoid crowds. Learn about the heritage and unique history of this landmark."
          },
          "afternoon": {
            "title": "Local Traditional Lunch",
            "description": "Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings."
          },
          "evening": {
            "title": "Evening walk at Borobudur Temple Panoramic Viewpoint",
            "description": "Stroll around Borobudur Temple Panoramic Viewpoint for scenic sunset views. Capture great family photos as the evening lights turn on."
          }
        },
        "details": {
          "importantTimings": "Monastery Hours: 5:00 AM - 11:30 AM, 2:30 PM - 6:00 PM | Meditation: 5:30 AM",
          "meals": "Complimentary Breakfast & Traditional Lunch (100% Satvik Veg).",
          "transport": "AC Private Sedan with professional local driver (includes first-aid kit and bottled water).",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Premium Pilgrim Hotel (AC rooms, elevator, clean linen, hot water, elevator access)",
          "weather": "Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.",
          "dressCode": "Modest clothing that covers shoulders and knees. Light-colored cotton attire is highly recommended.",
          "packingSuggestions": "Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 3 to 4 hours local tour"
        }
      },
      {
        "day": 3,
        "title": "Souvenir Shopping & Onward Departure",
        "location": "Magelang",
        "overview": "Conclude your memorable stay in Magelang with local craft shopping, checkout, and outbound transfers.",
        "schedule": {
          "morning": {
            "title": "Handicrafts Shopping",
            "description": "Visit local co-operative markets to buy traditional souvenirs, regional sweets, or native organic spices."
          },
          "afternoon": {
            "title": "Check-out & Packing",
            "description": "Return to your hotel, pack your bags, clear any local incidentals, and check out from your rooms."
          },
          "evening": {
            "title": "Outbound Transfer",
            "description": "Board your private vehicle transfer to the airport or railway station for your onward return journey home."
          }
        },
        "details": {
          "importantTimings": "Monastery Hours: 5:00 AM - 11:30 AM, 2:30 PM - 6:00 PM | Meditation: 5:30 AM",
          "meals": "Breakfast & Special Dinner Buffet (100% Satvik Veg).",
          "transport": "AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Pilgrim Rest House (Safe, family-friendly rooms, walking distance to sacred sites)",
          "weather": "Perfect travel weather with low humidity and comfortable evening temperature 20°C.",
          "dressCode": "Modest clothing that covers shoulders and knees. Light-colored cotton attire is highly recommended.",
          "packingSuggestions": "Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 1 to 2 hours transfer"
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
      "Day 1: Arrival & Welcome at Borobudur Temple",
      "Day 2: Guided Sightseeing & Exploration of Borobudur Temple",
      "Day 3: Departure"
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
    "categoryLabel": "Buddhist Pilgrimage",
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
      "Buddhist Pilgrimage",
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
        "title": "Arrival & Settle in at Matale",
        "location": "Matale",
        "overview": "Welcome to your yatra. Arrive in Matale, transfer to your stay, and rest before your sightseeing tour.",
        "schedule": {
          "morning": {
            "title": "Arrival & Check-in",
            "description": "Arrive at the nearest transit hub. Meet our coordinator and transfer to your pre-booked stay in Matale."
          },
          "afternoon": {
            "title": "Leisure & Rest",
            "description": "Check into your hotel room, unpack your luggage, and rest to recover from your flight or train journey."
          },
          "evening": {
            "title": "Orientation Walk",
            "description": "Meet your local guide for a small walk around the neighborhood. Receive a detailed brief on local customs."
          }
        },
        "details": {
          "importantTimings": "Monastery Hours: 5:00 AM - 11:30 AM, 2:30 PM - 6:00 PM | Meditation: 5:30 AM",
          "meals": "Welcome Drink & Buffet Dinner included (100% Satvik Veg).",
          "transport": "AC Shuttle Transit for close proximity site transfers and passenger drops.",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Vedic Heritage Inn (Ashram atmosphere, close to main shrines, Western toilets, hot water)",
          "weather": "Warm and sunny afternoon, ideal for outdoor sightseeing, average temp 24°C.",
          "dressCode": "Modest clothing that covers shoulders and knees. Light-colored cotton attire is highly recommended.",
          "packingSuggestions": "Comfortable travel footwear, photo ID, essential personal medication, daypack.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 1 to 2 hours transfer"
        }
      },
      {
        "day": 2,
        "title": "Explore Dambulla Cave Temple Heritage Centre",
        "location": "Matale",
        "overview": "Spend your day visiting Dambulla Cave Temple Heritage Centre, the primary attraction in Dambulla Cave Temple, accompanied by our expert guide.",
        "schedule": {
          "morning": {
            "title": "Guided Tour of Dambulla Cave Temple Heritage Centre",
            "description": "Early morning visit to Dambulla Cave Temple Heritage Centre to avoid crowds. Learn about the heritage and unique history of this landmark."
          },
          "afternoon": {
            "title": "Local Traditional Lunch",
            "description": "Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings."
          },
          "evening": {
            "title": "Evening walk at Dambulla Cave Temple Panoramic Viewpoint",
            "description": "Stroll around Dambulla Cave Temple Panoramic Viewpoint for scenic sunset views. Capture great family photos as the evening lights turn on."
          }
        },
        "details": {
          "importantTimings": "Monastery Hours: 5:00 AM - 11:30 AM, 2:30 PM - 6:00 PM | Meditation: 5:30 AM",
          "meals": "Complimentary Breakfast & Traditional Lunch (100% Satvik Veg).",
          "transport": "AC Private Sedan with professional local driver (includes first-aid kit and bottled water).",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Premium Pilgrim Hotel (AC rooms, elevator, clean linen, hot water, elevator access)",
          "weather": "Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.",
          "dressCode": "Modest clothing that covers shoulders and knees. Light-colored cotton attire is highly recommended.",
          "packingSuggestions": "Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 3 to 4 hours local tour"
        }
      },
      {
        "day": 3,
        "title": "Souvenir Shopping & Onward Departure",
        "location": "Matale",
        "overview": "Conclude your memorable stay in Matale with local craft shopping, checkout, and outbound transfers.",
        "schedule": {
          "morning": {
            "title": "Handicrafts Shopping",
            "description": "Visit local co-operative markets to buy traditional souvenirs, regional sweets, or native organic spices."
          },
          "afternoon": {
            "title": "Check-out & Packing",
            "description": "Return to your hotel, pack your bags, clear any local incidentals, and check out from your rooms."
          },
          "evening": {
            "title": "Outbound Transfer",
            "description": "Board your private vehicle transfer to the airport or railway station for your onward return journey home."
          }
        },
        "details": {
          "importantTimings": "Monastery Hours: 5:00 AM - 11:30 AM, 2:30 PM - 6:00 PM | Meditation: 5:30 AM",
          "meals": "Breakfast & Special Dinner Buffet (100% Satvik Veg).",
          "transport": "AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Pilgrim Rest House (Safe, family-friendly rooms, walking distance to sacred sites)",
          "weather": "Perfect travel weather with low humidity and comfortable evening temperature 20°C.",
          "dressCode": "Modest clothing that covers shoulders and knees. Light-colored cotton attire is highly recommended.",
          "packingSuggestions": "Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 1 to 2 hours transfer"
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
      "Day 1: Arrival & Welcome at Dambulla Cave Temple",
      "Day 2: Guided Sightseeing & Exploration of Dambulla Cave Temple",
      "Day 3: Departure"
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
    "categoryLabel": "Buddhist Pilgrimage",
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
      "Buddhist Pilgrimage",
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
        "title": "Arrival & Settle in at Lhasa",
        "location": "Lhasa",
        "overview": "Welcome to your yatra. Arrive in Lhasa, transfer to your stay, and rest before your sightseeing tour.",
        "schedule": {
          "morning": {
            "title": "Arrival & Check-in",
            "description": "Arrive at the nearest transit hub. Meet our coordinator and transfer to your pre-booked stay in Lhasa."
          },
          "afternoon": {
            "title": "Leisure & Rest",
            "description": "Check into your hotel room, unpack your luggage, and rest to recover from your flight or train journey."
          },
          "evening": {
            "title": "Orientation Walk",
            "description": "Meet your local guide for a small walk around the neighborhood. Receive a detailed brief on local customs."
          }
        },
        "details": {
          "importantTimings": "Monastery Hours: 5:00 AM - 11:30 AM, 2:30 PM - 6:00 PM | Meditation: 5:30 AM",
          "meals": "Welcome Drink & Buffet Dinner included (100% Satvik Veg).",
          "transport": "AC Shuttle Transit for close proximity site transfers and passenger drops.",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Vedic Heritage Inn (Ashram atmosphere, close to main shrines, Western toilets, hot water)",
          "weather": "Warm and sunny afternoon, ideal for outdoor sightseeing, average temp 24°C.",
          "dressCode": "Modest clothing that covers shoulders and knees. Light-colored cotton attire is highly recommended.",
          "packingSuggestions": "Comfortable travel footwear, photo ID, essential personal medication, daypack.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 1 to 2 hours transfer"
        }
      },
      {
        "day": 2,
        "title": "Explore Jokhang Temple, Lhasa Heritage Centre",
        "location": "Lhasa",
        "overview": "Spend your day visiting Jokhang Temple, Lhasa Heritage Centre, the primary attraction in Jokhang Temple, Lhasa, accompanied by our expert guide.",
        "schedule": {
          "morning": {
            "title": "Guided Tour of Jokhang Temple, Lhasa Heritage Centre",
            "description": "Early morning visit to Jokhang Temple, Lhasa Heritage Centre to avoid crowds. Learn about the heritage and unique history of this landmark."
          },
          "afternoon": {
            "title": "Local Traditional Lunch",
            "description": "Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings."
          },
          "evening": {
            "title": "Evening walk at Jokhang Temple, Lhasa Panoramic Viewpoint",
            "description": "Stroll around Jokhang Temple, Lhasa Panoramic Viewpoint for scenic sunset views. Capture great family photos as the evening lights turn on."
          }
        },
        "details": {
          "importantTimings": "Monastery Hours: 5:00 AM - 11:30 AM, 2:30 PM - 6:00 PM | Meditation: 5:30 AM",
          "meals": "Complimentary Breakfast & Traditional Lunch (100% Satvik Veg).",
          "transport": "AC Private Sedan with professional local driver (includes first-aid kit and bottled water).",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Premium Pilgrim Hotel (AC rooms, elevator, clean linen, hot water, elevator access)",
          "weather": "Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.",
          "dressCode": "Modest clothing that covers shoulders and knees. Light-colored cotton attire is highly recommended.",
          "packingSuggestions": "Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 3 to 4 hours local tour"
        }
      },
      {
        "day": 3,
        "title": "Souvenir Shopping & Onward Departure",
        "location": "Lhasa",
        "overview": "Conclude your memorable stay in Lhasa with local craft shopping, checkout, and outbound transfers.",
        "schedule": {
          "morning": {
            "title": "Handicrafts Shopping",
            "description": "Visit local co-operative markets to buy traditional souvenirs, regional sweets, or native organic spices."
          },
          "afternoon": {
            "title": "Check-out & Packing",
            "description": "Return to your hotel, pack your bags, clear any local incidentals, and check out from your rooms."
          },
          "evening": {
            "title": "Outbound Transfer",
            "description": "Board your private vehicle transfer to the airport or railway station for your onward return journey home."
          }
        },
        "details": {
          "importantTimings": "Monastery Hours: 5:00 AM - 11:30 AM, 2:30 PM - 6:00 PM | Meditation: 5:30 AM",
          "meals": "Breakfast & Special Dinner Buffet (100% Satvik Veg).",
          "transport": "AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Pilgrim Rest House (Safe, family-friendly rooms, walking distance to sacred sites)",
          "weather": "Perfect travel weather with low humidity and comfortable evening temperature 20°C.",
          "dressCode": "Modest clothing that covers shoulders and knees. Light-colored cotton attire is highly recommended.",
          "packingSuggestions": "Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 1 to 2 hours transfer"
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
      "Day 1: Arrival & Welcome at Jokhang Temple, Lhasa",
      "Day 2: Guided Sightseeing & Exploration of Jokhang Temple, Lhasa",
      "Day 3: Departure"
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
    "categoryLabel": "Buddhist Pilgrimage",
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
      "Buddhist Pilgrimage",
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
        "title": "Arrival & Settle in at Wakayama",
        "location": "Wakayama",
        "overview": "Welcome to your yatra. Arrive in Wakayama, transfer to your stay, and rest before your sightseeing tour.",
        "schedule": {
          "morning": {
            "title": "Arrival & Check-in",
            "description": "Arrive at the nearest transit hub. Meet our coordinator and transfer to your pre-booked stay in Wakayama."
          },
          "afternoon": {
            "title": "Leisure & Rest",
            "description": "Check into your hotel room, unpack your luggage, and rest to recover from your flight or train journey."
          },
          "evening": {
            "title": "Orientation Walk",
            "description": "Meet your local guide for a small walk around the neighborhood. Receive a detailed brief on local customs."
          }
        },
        "details": {
          "importantTimings": "Monastery Hours: 5:00 AM - 11:30 AM, 2:30 PM - 6:00 PM | Meditation: 5:30 AM",
          "meals": "Welcome Drink & Buffet Dinner included (100% Satvik Veg).",
          "transport": "AC Shuttle Transit for close proximity site transfers and passenger drops.",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Vedic Heritage Inn (Ashram atmosphere, close to main shrines, Western toilets, hot water)",
          "weather": "Warm and sunny afternoon, ideal for outdoor sightseeing, average temp 24°C.",
          "dressCode": "Modest clothing that covers shoulders and knees. Light-colored cotton attire is highly recommended.",
          "packingSuggestions": "Comfortable travel footwear, photo ID, essential personal medication, daypack.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 1 to 2 hours transfer"
        }
      },
      {
        "day": 2,
        "title": "Explore Kumano Kodo Heritage Centre",
        "location": "Wakayama",
        "overview": "Spend your day visiting Kumano Kodo Heritage Centre, the primary attraction in Kumano Kodo, accompanied by our expert guide.",
        "schedule": {
          "morning": {
            "title": "Guided Tour of Kumano Kodo Heritage Centre",
            "description": "Early morning visit to Kumano Kodo Heritage Centre to avoid crowds. Learn about the heritage and unique history of this landmark."
          },
          "afternoon": {
            "title": "Local Traditional Lunch",
            "description": "Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings."
          },
          "evening": {
            "title": "Evening walk at Kumano Kodo Panoramic Viewpoint",
            "description": "Stroll around Kumano Kodo Panoramic Viewpoint for scenic sunset views. Capture great family photos as the evening lights turn on."
          }
        },
        "details": {
          "importantTimings": "Monastery Hours: 5:00 AM - 11:30 AM, 2:30 PM - 6:00 PM | Meditation: 5:30 AM",
          "meals": "Complimentary Breakfast & Traditional Lunch (100% Satvik Veg).",
          "transport": "AC Private Sedan with professional local driver (includes first-aid kit and bottled water).",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Premium Pilgrim Hotel (AC rooms, elevator, clean linen, hot water, elevator access)",
          "weather": "Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.",
          "dressCode": "Modest clothing that covers shoulders and knees. Light-colored cotton attire is highly recommended.",
          "packingSuggestions": "Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 3 to 4 hours local tour"
        }
      },
      {
        "day": 3,
        "title": "Souvenir Shopping & Onward Departure",
        "location": "Wakayama",
        "overview": "Conclude your memorable stay in Wakayama with local craft shopping, checkout, and outbound transfers.",
        "schedule": {
          "morning": {
            "title": "Handicrafts Shopping",
            "description": "Visit local co-operative markets to buy traditional souvenirs, regional sweets, or native organic spices."
          },
          "afternoon": {
            "title": "Check-out & Packing",
            "description": "Return to your hotel, pack your bags, clear any local incidentals, and check out from your rooms."
          },
          "evening": {
            "title": "Outbound Transfer",
            "description": "Board your private vehicle transfer to the airport or railway station for your onward return journey home."
          }
        },
        "details": {
          "importantTimings": "Monastery Hours: 5:00 AM - 11:30 AM, 2:30 PM - 6:00 PM | Meditation: 5:30 AM",
          "meals": "Breakfast & Special Dinner Buffet (100% Satvik Veg).",
          "transport": "AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Pilgrim Rest House (Safe, family-friendly rooms, walking distance to sacred sites)",
          "weather": "Perfect travel weather with low humidity and comfortable evening temperature 20°C.",
          "dressCode": "Modest clothing that covers shoulders and knees. Light-colored cotton attire is highly recommended.",
          "packingSuggestions": "Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 1 to 2 hours transfer"
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
      "Day 1: Arrival & Welcome at Kumano Kodo",
      "Day 2: Guided Sightseeing & Exploration of Kumano Kodo",
      "Day 3: Departure"
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
    "categoryLabel": "Buddhist Pilgrimage",
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
      "Buddhist Pilgrimage",
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
        "title": "Arrival & Settle in at Kushinagar",
        "location": "Kushinagar",
        "overview": "Welcome to your yatra. Arrive in Kushinagar, transfer to your stay, and rest before your sightseeing tour.",
        "schedule": {
          "morning": {
            "title": "Arrival & Check-in",
            "description": "Arrive at the nearest transit hub. Meet our coordinator and transfer to your pre-booked stay in Kushinagar."
          },
          "afternoon": {
            "title": "Leisure & Rest",
            "description": "Check into your hotel room, unpack your luggage, and rest to recover from your flight or train journey."
          },
          "evening": {
            "title": "Orientation Walk",
            "description": "Meet your local guide for a small walk around the neighborhood. Receive a detailed brief on local customs."
          }
        },
        "details": {
          "importantTimings": "Monastery Hours: 5:00 AM - 11:30 AM, 2:30 PM - 6:00 PM | Meditation: 5:30 AM",
          "meals": "Welcome Drink & Buffet Dinner included (100% Satvik Veg).",
          "transport": "AC Shuttle Transit for close proximity site transfers and passenger drops.",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Vedic Heritage Inn (Ashram atmosphere, close to main shrines, Western toilets, hot water)",
          "weather": "Warm and sunny afternoon, ideal for outdoor sightseeing, average temp 24°C.",
          "dressCode": "Modest clothing that covers shoulders and knees. Light-colored cotton attire is highly recommended.",
          "packingSuggestions": "Comfortable travel footwear, photo ID, essential personal medication, daypack.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 1 to 2 hours transfer"
        }
      },
      {
        "day": 2,
        "title": "Explore Kushinagar Heritage Centre",
        "location": "Kushinagar",
        "overview": "Spend your day visiting Kushinagar Heritage Centre, the primary attraction in Kushinagar, accompanied by our expert guide.",
        "schedule": {
          "morning": {
            "title": "Guided Tour of Kushinagar Heritage Centre",
            "description": "Early morning visit to Kushinagar Heritage Centre to avoid crowds. Learn about the heritage and unique history of this landmark."
          },
          "afternoon": {
            "title": "Local Traditional Lunch",
            "description": "Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings."
          },
          "evening": {
            "title": "Evening walk at Kushinagar Panoramic Viewpoint",
            "description": "Stroll around Kushinagar Panoramic Viewpoint for scenic sunset views. Capture great family photos as the evening lights turn on."
          }
        },
        "details": {
          "importantTimings": "Monastery Hours: 5:00 AM - 11:30 AM, 2:30 PM - 6:00 PM | Meditation: 5:30 AM",
          "meals": "Complimentary Breakfast & Traditional Lunch (100% Satvik Veg).",
          "transport": "AC Private Sedan with professional local driver (includes first-aid kit and bottled water).",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Premium Pilgrim Hotel (AC rooms, elevator, clean linen, hot water, elevator access)",
          "weather": "Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.",
          "dressCode": "Modest clothing that covers shoulders and knees. Light-colored cotton attire is highly recommended.",
          "packingSuggestions": "Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 3 to 4 hours local tour"
        }
      },
      {
        "day": 3,
        "title": "Souvenir Shopping & Onward Departure",
        "location": "Kushinagar",
        "overview": "Conclude your memorable stay in Kushinagar with local craft shopping, checkout, and outbound transfers.",
        "schedule": {
          "morning": {
            "title": "Handicrafts Shopping",
            "description": "Visit local co-operative markets to buy traditional souvenirs, regional sweets, or native organic spices."
          },
          "afternoon": {
            "title": "Check-out & Packing",
            "description": "Return to your hotel, pack your bags, clear any local incidentals, and check out from your rooms."
          },
          "evening": {
            "title": "Outbound Transfer",
            "description": "Board your private vehicle transfer to the airport or railway station for your onward return journey home."
          }
        },
        "details": {
          "importantTimings": "Monastery Hours: 5:00 AM - 11:30 AM, 2:30 PM - 6:00 PM | Meditation: 5:30 AM",
          "meals": "Breakfast & Special Dinner Buffet (100% Satvik Veg).",
          "transport": "AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Pilgrim Rest House (Safe, family-friendly rooms, walking distance to sacred sites)",
          "weather": "Perfect travel weather with low humidity and comfortable evening temperature 20°C.",
          "dressCode": "Modest clothing that covers shoulders and knees. Light-colored cotton attire is highly recommended.",
          "packingSuggestions": "Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 1 to 2 hours transfer"
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
      "Day 1: Arrival & Welcome at Kushinagar",
      "Day 2: Guided Sightseeing & Exploration of Kushinagar",
      "Day 3: Departure"
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
    "categoryLabel": "Buddhist Pilgrimage",
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
      "Buddhist Pilgrimage",
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
        "title": "Arrival & Settle in at Rupandehi",
        "location": "Rupandehi",
        "overview": "Welcome to your yatra. Arrive in Rupandehi, transfer to your stay, and rest before your sightseeing tour.",
        "schedule": {
          "morning": {
            "title": "Arrival & Check-in",
            "description": "Arrive at the nearest transit hub. Meet our coordinator and transfer to your pre-booked stay in Rupandehi."
          },
          "afternoon": {
            "title": "Leisure & Rest",
            "description": "Check into your hotel room, unpack your luggage, and rest to recover from your flight or train journey."
          },
          "evening": {
            "title": "Orientation Walk",
            "description": "Meet your local guide for a small walk around the neighborhood. Receive a detailed brief on local customs."
          }
        },
        "details": {
          "importantTimings": "Monastery Hours: 5:00 AM - 11:30 AM, 2:30 PM - 6:00 PM | Meditation: 5:30 AM",
          "meals": "Welcome Drink & Buffet Dinner included (100% Satvik Veg).",
          "transport": "AC Shuttle Transit for close proximity site transfers and passenger drops.",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Vedic Heritage Inn (Ashram atmosphere, close to main shrines, Western toilets, hot water)",
          "weather": "Warm and sunny afternoon, ideal for outdoor sightseeing, average temp 24°C.",
          "dressCode": "Modest clothing that covers shoulders and knees. Light-colored cotton attire is highly recommended.",
          "packingSuggestions": "Comfortable travel footwear, photo ID, essential personal medication, daypack.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 1 to 2 hours transfer"
        }
      },
      {
        "day": 2,
        "title": "Explore Lumbini Heritage Centre",
        "location": "Rupandehi",
        "overview": "Spend your day visiting Lumbini Heritage Centre, the primary attraction in Lumbini, accompanied by our expert guide.",
        "schedule": {
          "morning": {
            "title": "Guided Tour of Lumbini Heritage Centre",
            "description": "Early morning visit to Lumbini Heritage Centre to avoid crowds. Learn about the heritage and unique history of this landmark."
          },
          "afternoon": {
            "title": "Local Traditional Lunch",
            "description": "Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings."
          },
          "evening": {
            "title": "Evening walk at Lumbini Panoramic Viewpoint",
            "description": "Stroll around Lumbini Panoramic Viewpoint for scenic sunset views. Capture great family photos as the evening lights turn on."
          }
        },
        "details": {
          "importantTimings": "Monastery Hours: 5:00 AM - 11:30 AM, 2:30 PM - 6:00 PM | Meditation: 5:30 AM",
          "meals": "Complimentary Breakfast & Traditional Lunch (100% Satvik Veg).",
          "transport": "AC Private Sedan with professional local driver (includes first-aid kit and bottled water).",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Premium Pilgrim Hotel (AC rooms, elevator, clean linen, hot water, elevator access)",
          "weather": "Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.",
          "dressCode": "Modest clothing that covers shoulders and knees. Light-colored cotton attire is highly recommended.",
          "packingSuggestions": "Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 3 to 4 hours local tour"
        }
      },
      {
        "day": 3,
        "title": "Souvenir Shopping & Onward Departure",
        "location": "Rupandehi",
        "overview": "Conclude your memorable stay in Rupandehi with local craft shopping, checkout, and outbound transfers.",
        "schedule": {
          "morning": {
            "title": "Handicrafts Shopping",
            "description": "Visit local co-operative markets to buy traditional souvenirs, regional sweets, or native organic spices."
          },
          "afternoon": {
            "title": "Check-out & Packing",
            "description": "Return to your hotel, pack your bags, clear any local incidentals, and check out from your rooms."
          },
          "evening": {
            "title": "Outbound Transfer",
            "description": "Board your private vehicle transfer to the airport or railway station for your onward return journey home."
          }
        },
        "details": {
          "importantTimings": "Monastery Hours: 5:00 AM - 11:30 AM, 2:30 PM - 6:00 PM | Meditation: 5:30 AM",
          "meals": "Breakfast & Special Dinner Buffet (100% Satvik Veg).",
          "transport": "AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Pilgrim Rest House (Safe, family-friendly rooms, walking distance to sacred sites)",
          "weather": "Perfect travel weather with low humidity and comfortable evening temperature 20°C.",
          "dressCode": "Modest clothing that covers shoulders and knees. Light-colored cotton attire is highly recommended.",
          "packingSuggestions": "Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 1 to 2 hours transfer"
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
      "Day 1: Arrival & Welcome at Lumbini",
      "Day 2: Guided Sightseeing & Exploration of Lumbini",
      "Day 3: Departure"
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
    "categoryLabel": "Buddhist Pilgrimage",
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
      "Buddhist Pilgrimage",
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
        "title": "Arrival & Settle in at Bagan",
        "location": "Bagan",
        "overview": "Welcome to your yatra. Arrive in Bagan, transfer to your stay, and rest before your sightseeing tour.",
        "schedule": {
          "morning": {
            "title": "Arrival & Check-in",
            "description": "Arrive at the nearest transit hub. Meet our coordinator and transfer to your pre-booked stay in Bagan."
          },
          "afternoon": {
            "title": "Leisure & Rest",
            "description": "Check into your hotel room, unpack your luggage, and rest to recover from your flight or train journey."
          },
          "evening": {
            "title": "Orientation Walk",
            "description": "Meet your local guide for a small walk around the neighborhood. Receive a detailed brief on local customs."
          }
        },
        "details": {
          "importantTimings": "Monastery Hours: 5:00 AM - 11:30 AM, 2:30 PM - 6:00 PM | Meditation: 5:30 AM",
          "meals": "Welcome Drink & Buffet Dinner included (100% Satvik Veg).",
          "transport": "AC Shuttle Transit for close proximity site transfers and passenger drops.",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Vedic Heritage Inn (Ashram atmosphere, close to main shrines, Western toilets, hot water)",
          "weather": "Warm and sunny afternoon, ideal for outdoor sightseeing, average temp 24°C.",
          "dressCode": "Modest clothing that covers shoulders and knees. Light-colored cotton attire is highly recommended.",
          "packingSuggestions": "Comfortable travel footwear, photo ID, essential personal medication, daypack.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 1 to 2 hours transfer"
        }
      },
      {
        "day": 2,
        "title": "Explore Mahabodhi Temple, Bagan Heritage Centre",
        "location": "Bagan",
        "overview": "Spend your day visiting Mahabodhi Temple, Bagan Heritage Centre, the primary attraction in Mahabodhi Temple, Bagan, accompanied by our expert guide.",
        "schedule": {
          "morning": {
            "title": "Guided Tour of Mahabodhi Temple, Bagan Heritage Centre",
            "description": "Early morning visit to Mahabodhi Temple, Bagan Heritage Centre to avoid crowds. Learn about the heritage and unique history of this landmark."
          },
          "afternoon": {
            "title": "Local Traditional Lunch",
            "description": "Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings."
          },
          "evening": {
            "title": "Evening walk at Mahabodhi Temple, Bagan Panoramic Viewpoint",
            "description": "Stroll around Mahabodhi Temple, Bagan Panoramic Viewpoint for scenic sunset views. Capture great family photos as the evening lights turn on."
          }
        },
        "details": {
          "importantTimings": "Monastery Hours: 5:00 AM - 11:30 AM, 2:30 PM - 6:00 PM | Meditation: 5:30 AM",
          "meals": "Complimentary Breakfast & Traditional Lunch (100% Satvik Veg).",
          "transport": "AC Private Sedan with professional local driver (includes first-aid kit and bottled water).",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Premium Pilgrim Hotel (AC rooms, elevator, clean linen, hot water, elevator access)",
          "weather": "Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.",
          "dressCode": "Modest clothing that covers shoulders and knees. Light-colored cotton attire is highly recommended.",
          "packingSuggestions": "Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 3 to 4 hours local tour"
        }
      },
      {
        "day": 3,
        "title": "Souvenir Shopping & Onward Departure",
        "location": "Bagan",
        "overview": "Conclude your memorable stay in Bagan with local craft shopping, checkout, and outbound transfers.",
        "schedule": {
          "morning": {
            "title": "Handicrafts Shopping",
            "description": "Visit local co-operative markets to buy traditional souvenirs, regional sweets, or native organic spices."
          },
          "afternoon": {
            "title": "Check-out & Packing",
            "description": "Return to your hotel, pack your bags, clear any local incidentals, and check out from your rooms."
          },
          "evening": {
            "title": "Outbound Transfer",
            "description": "Board your private vehicle transfer to the airport or railway station for your onward return journey home."
          }
        },
        "details": {
          "importantTimings": "Monastery Hours: 5:00 AM - 11:30 AM, 2:30 PM - 6:00 PM | Meditation: 5:30 AM",
          "meals": "Breakfast & Special Dinner Buffet (100% Satvik Veg).",
          "transport": "AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Pilgrim Rest House (Safe, family-friendly rooms, walking distance to sacred sites)",
          "weather": "Perfect travel weather with low humidity and comfortable evening temperature 20°C.",
          "dressCode": "Modest clothing that covers shoulders and knees. Light-colored cotton attire is highly recommended.",
          "packingSuggestions": "Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 1 to 2 hours transfer"
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
      "Day 1: Arrival & Welcome at Mahabodhi Temple, Bagan",
      "Day 2: Guided Sightseeing & Exploration of Mahabodhi Temple, Bagan",
      "Day 3: Departure"
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
    "categoryLabel": "Buddhist Pilgrimage",
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
      "Buddhist Pilgrimage",
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
        "title": "Arrival & Settle in at Ngari",
        "location": "Ngari",
        "overview": "Welcome to your yatra. Arrive in Ngari, transfer to your stay, and rest before your sightseeing tour.",
        "schedule": {
          "morning": {
            "title": "Arrival & Check-in",
            "description": "Arrive at the nearest transit hub. Meet our coordinator and transfer to your pre-booked stay in Ngari."
          },
          "afternoon": {
            "title": "Leisure & Rest",
            "description": "Check into your hotel room, unpack your luggage, and rest to recover from your flight or train journey."
          },
          "evening": {
            "title": "Orientation Walk",
            "description": "Meet your local guide for a small walk around the neighborhood. Receive a detailed brief on local customs."
          }
        },
        "details": {
          "importantTimings": "Monastery Hours: 5:00 AM - 11:30 AM, 2:30 PM - 6:00 PM | Meditation: 5:30 AM",
          "meals": "Welcome Drink & Buffet Dinner included (100% Satvik Veg).",
          "transport": "AC Shuttle Transit for close proximity site transfers and passenger drops.",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Vedic Heritage Inn (Ashram atmosphere, close to main shrines, Western toilets, hot water)",
          "weather": "Warm and sunny afternoon, ideal for outdoor sightseeing, average temp 24°C.",
          "dressCode": "Modest clothing that covers shoulders and knees. Light-colored cotton attire is highly recommended.",
          "packingSuggestions": "Comfortable travel footwear, photo ID, essential personal medication, daypack.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 1 to 2 hours transfer"
        }
      },
      {
        "day": 2,
        "title": "Explore Mount Kailash Heritage Centre",
        "location": "Ngari",
        "overview": "Spend your day visiting Mount Kailash Heritage Centre, the primary attraction in Mount Kailash, accompanied by our expert guide.",
        "schedule": {
          "morning": {
            "title": "Guided Tour of Mount Kailash Heritage Centre",
            "description": "Early morning visit to Mount Kailash Heritage Centre to avoid crowds. Learn about the heritage and unique history of this landmark."
          },
          "afternoon": {
            "title": "Local Traditional Lunch",
            "description": "Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings."
          },
          "evening": {
            "title": "Evening walk at Mount Kailash Panoramic Viewpoint",
            "description": "Stroll around Mount Kailash Panoramic Viewpoint for scenic sunset views. Capture great family photos as the evening lights turn on."
          }
        },
        "details": {
          "importantTimings": "Monastery Hours: 5:00 AM - 11:30 AM, 2:30 PM - 6:00 PM | Meditation: 5:30 AM",
          "meals": "Complimentary Breakfast & Traditional Lunch (100% Satvik Veg).",
          "transport": "AC Private Sedan with professional local driver (includes first-aid kit and bottled water).",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Premium Pilgrim Hotel (AC rooms, elevator, clean linen, hot water, elevator access)",
          "weather": "Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.",
          "dressCode": "Modest clothing that covers shoulders and knees. Light-colored cotton attire is highly recommended.",
          "packingSuggestions": "Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 3 to 4 hours local tour"
        }
      },
      {
        "day": 3,
        "title": "Souvenir Shopping & Onward Departure",
        "location": "Ngari",
        "overview": "Conclude your memorable stay in Ngari with local craft shopping, checkout, and outbound transfers.",
        "schedule": {
          "morning": {
            "title": "Handicrafts Shopping",
            "description": "Visit local co-operative markets to buy traditional souvenirs, regional sweets, or native organic spices."
          },
          "afternoon": {
            "title": "Check-out & Packing",
            "description": "Return to your hotel, pack your bags, clear any local incidentals, and check out from your rooms."
          },
          "evening": {
            "title": "Outbound Transfer",
            "description": "Board your private vehicle transfer to the airport or railway station for your onward return journey home."
          }
        },
        "details": {
          "importantTimings": "Monastery Hours: 5:00 AM - 11:30 AM, 2:30 PM - 6:00 PM | Meditation: 5:30 AM",
          "meals": "Breakfast & Special Dinner Buffet (100% Satvik Veg).",
          "transport": "AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Pilgrim Rest House (Safe, family-friendly rooms, walking distance to sacred sites)",
          "weather": "Perfect travel weather with low humidity and comfortable evening temperature 20°C.",
          "dressCode": "Modest clothing that covers shoulders and knees. Light-colored cotton attire is highly recommended.",
          "packingSuggestions": "Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 1 to 2 hours transfer"
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
      "Day 1: Arrival & Welcome at Mount Kailash",
      "Day 2: Guided Sightseeing & Exploration of Mount Kailash",
      "Day 3: Departure"
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
    "categoryLabel": "Buddhist Pilgrimage",
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
      "Buddhist Pilgrimage",
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
        "title": "Arrival & Settle in at Nalanda",
        "location": "Nalanda",
        "overview": "Welcome to your yatra. Arrive in Nalanda, transfer to your stay, and rest before your sightseeing tour.",
        "schedule": {
          "morning": {
            "title": "Arrival & Check-in",
            "description": "Arrive at the nearest transit hub. Meet our coordinator and transfer to your pre-booked stay in Nalanda."
          },
          "afternoon": {
            "title": "Leisure & Rest",
            "description": "Check into your hotel room, unpack your luggage, and rest to recover from your flight or train journey."
          },
          "evening": {
            "title": "Orientation Walk",
            "description": "Meet your local guide for a small walk around the neighborhood. Receive a detailed brief on local customs."
          }
        },
        "details": {
          "importantTimings": "Monastery Hours: 5:00 AM - 11:30 AM, 2:30 PM - 6:00 PM | Meditation: 5:30 AM",
          "meals": "Welcome Drink & Buffet Dinner included (100% Satvik Veg).",
          "transport": "AC Shuttle Transit for close proximity site transfers and passenger drops.",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Vedic Heritage Inn (Ashram atmosphere, close to main shrines, Western toilets, hot water)",
          "weather": "Warm and sunny afternoon, ideal for outdoor sightseeing, average temp 24°C.",
          "dressCode": "Modest clothing that covers shoulders and knees. Light-colored cotton attire is highly recommended.",
          "packingSuggestions": "Comfortable travel footwear, photo ID, essential personal medication, daypack.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 1 to 2 hours transfer"
        }
      },
      {
        "day": 2,
        "title": "Explore Nalanda Heritage Centre",
        "location": "Nalanda",
        "overview": "Spend your day visiting Nalanda Heritage Centre, the primary attraction in Nalanda, accompanied by our expert guide.",
        "schedule": {
          "morning": {
            "title": "Guided Tour of Nalanda Heritage Centre",
            "description": "Early morning visit to Nalanda Heritage Centre to avoid crowds. Learn about the heritage and unique history of this landmark."
          },
          "afternoon": {
            "title": "Local Traditional Lunch",
            "description": "Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings."
          },
          "evening": {
            "title": "Evening walk at Nalanda Panoramic Viewpoint",
            "description": "Stroll around Nalanda Panoramic Viewpoint for scenic sunset views. Capture great family photos as the evening lights turn on."
          }
        },
        "details": {
          "importantTimings": "Monastery Hours: 5:00 AM - 11:30 AM, 2:30 PM - 6:00 PM | Meditation: 5:30 AM",
          "meals": "Complimentary Breakfast & Traditional Lunch (100% Satvik Veg).",
          "transport": "AC Private Sedan with professional local driver (includes first-aid kit and bottled water).",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Premium Pilgrim Hotel (AC rooms, elevator, clean linen, hot water, elevator access)",
          "weather": "Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.",
          "dressCode": "Modest clothing that covers shoulders and knees. Light-colored cotton attire is highly recommended.",
          "packingSuggestions": "Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 3 to 4 hours local tour"
        }
      },
      {
        "day": 3,
        "title": "Souvenir Shopping & Onward Departure",
        "location": "Nalanda",
        "overview": "Conclude your memorable stay in Nalanda with local craft shopping, checkout, and outbound transfers.",
        "schedule": {
          "morning": {
            "title": "Handicrafts Shopping",
            "description": "Visit local co-operative markets to buy traditional souvenirs, regional sweets, or native organic spices."
          },
          "afternoon": {
            "title": "Check-out & Packing",
            "description": "Return to your hotel, pack your bags, clear any local incidentals, and check out from your rooms."
          },
          "evening": {
            "title": "Outbound Transfer",
            "description": "Board your private vehicle transfer to the airport or railway station for your onward return journey home."
          }
        },
        "details": {
          "importantTimings": "Monastery Hours: 5:00 AM - 11:30 AM, 2:30 PM - 6:00 PM | Meditation: 5:30 AM",
          "meals": "Breakfast & Special Dinner Buffet (100% Satvik Veg).",
          "transport": "AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Pilgrim Rest House (Safe, family-friendly rooms, walking distance to sacred sites)",
          "weather": "Perfect travel weather with low humidity and comfortable evening temperature 20°C.",
          "dressCode": "Modest clothing that covers shoulders and knees. Light-colored cotton attire is highly recommended.",
          "packingSuggestions": "Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 1 to 2 hours transfer"
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
      "Day 1: Arrival & Welcome at Nalanda",
      "Day 2: Guided Sightseeing & Exploration of Nalanda",
      "Day 3: Departure"
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
    "categoryLabel": "Buddhist Pilgrimage",
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
      "Buddhist Pilgrimage",
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
        "title": "Arrival & Settle in at Nalanda",
        "location": "Nalanda",
        "overview": "Welcome to your yatra. Arrive in Nalanda, transfer to your stay, and rest before your sightseeing tour.",
        "schedule": {
          "morning": {
            "title": "Arrival & Check-in",
            "description": "Arrive at the nearest transit hub. Meet our coordinator and transfer to your pre-booked stay in Nalanda."
          },
          "afternoon": {
            "title": "Leisure & Rest",
            "description": "Check into your hotel room, unpack your luggage, and rest to recover from your flight or train journey."
          },
          "evening": {
            "title": "Orientation Walk",
            "description": "Meet your local guide for a small walk around the neighborhood. Receive a detailed brief on local customs."
          }
        },
        "details": {
          "importantTimings": "Monastery Hours: 5:00 AM - 11:30 AM, 2:30 PM - 6:00 PM | Meditation: 5:30 AM",
          "meals": "Welcome Drink & Buffet Dinner included (100% Satvik Veg).",
          "transport": "AC Shuttle Transit for close proximity site transfers and passenger drops.",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Vedic Heritage Inn (Ashram atmosphere, close to main shrines, Western toilets, hot water)",
          "weather": "Warm and sunny afternoon, ideal for outdoor sightseeing, average temp 24°C.",
          "dressCode": "Modest clothing that covers shoulders and knees. Light-colored cotton attire is highly recommended.",
          "packingSuggestions": "Comfortable travel footwear, photo ID, essential personal medication, daypack.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 1 to 2 hours transfer"
        }
      },
      {
        "day": 2,
        "title": "Explore Rajgir Heritage Centre",
        "location": "Nalanda",
        "overview": "Spend your day visiting Rajgir Heritage Centre, the primary attraction in Rajgir, accompanied by our expert guide.",
        "schedule": {
          "morning": {
            "title": "Guided Tour of Rajgir Heritage Centre",
            "description": "Early morning visit to Rajgir Heritage Centre to avoid crowds. Learn about the heritage and unique history of this landmark."
          },
          "afternoon": {
            "title": "Local Traditional Lunch",
            "description": "Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings."
          },
          "evening": {
            "title": "Evening walk at Rajgir Panoramic Viewpoint",
            "description": "Stroll around Rajgir Panoramic Viewpoint for scenic sunset views. Capture great family photos as the evening lights turn on."
          }
        },
        "details": {
          "importantTimings": "Monastery Hours: 5:00 AM - 11:30 AM, 2:30 PM - 6:00 PM | Meditation: 5:30 AM",
          "meals": "Complimentary Breakfast & Traditional Lunch (100% Satvik Veg).",
          "transport": "AC Private Sedan with professional local driver (includes first-aid kit and bottled water).",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Premium Pilgrim Hotel (AC rooms, elevator, clean linen, hot water, elevator access)",
          "weather": "Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.",
          "dressCode": "Modest clothing that covers shoulders and knees. Light-colored cotton attire is highly recommended.",
          "packingSuggestions": "Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 3 to 4 hours local tour"
        }
      },
      {
        "day": 3,
        "title": "Souvenir Shopping & Onward Departure",
        "location": "Nalanda",
        "overview": "Conclude your memorable stay in Nalanda with local craft shopping, checkout, and outbound transfers.",
        "schedule": {
          "morning": {
            "title": "Handicrafts Shopping",
            "description": "Visit local co-operative markets to buy traditional souvenirs, regional sweets, or native organic spices."
          },
          "afternoon": {
            "title": "Check-out & Packing",
            "description": "Return to your hotel, pack your bags, clear any local incidentals, and check out from your rooms."
          },
          "evening": {
            "title": "Outbound Transfer",
            "description": "Board your private vehicle transfer to the airport or railway station for your onward return journey home."
          }
        },
        "details": {
          "importantTimings": "Monastery Hours: 5:00 AM - 11:30 AM, 2:30 PM - 6:00 PM | Meditation: 5:30 AM",
          "meals": "Breakfast & Special Dinner Buffet (100% Satvik Veg).",
          "transport": "AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Pilgrim Rest House (Safe, family-friendly rooms, walking distance to sacred sites)",
          "weather": "Perfect travel weather with low humidity and comfortable evening temperature 20°C.",
          "dressCode": "Modest clothing that covers shoulders and knees. Light-colored cotton attire is highly recommended.",
          "packingSuggestions": "Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 1 to 2 hours transfer"
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
      "Day 1: Arrival & Welcome at Rajgir",
      "Day 2: Guided Sightseeing & Exploration of Rajgir",
      "Day 3: Departure"
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
    "categoryLabel": "Buddhist Pilgrimage",
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
      "Buddhist Pilgrimage",
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
        "title": "Arrival & Settle in at Varanasi",
        "location": "Varanasi",
        "overview": "Welcome to your yatra. Arrive in Varanasi, transfer to your stay, and rest before your sightseeing tour.",
        "schedule": {
          "morning": {
            "title": "Arrival & Check-in",
            "description": "Arrive at the nearest transit hub. Meet our coordinator and transfer to your pre-booked stay in Varanasi."
          },
          "afternoon": {
            "title": "Leisure & Rest",
            "description": "Check into your hotel room, unpack your luggage, and rest to recover from your flight or train journey."
          },
          "evening": {
            "title": "Orientation Walk",
            "description": "Meet your local guide for a small walk around the neighborhood. Receive a detailed brief on local customs."
          }
        },
        "details": {
          "importantTimings": "Monastery Hours: 5:00 AM - 11:30 AM, 2:30 PM - 6:00 PM | Meditation: 5:30 AM",
          "meals": "Welcome Drink & Buffet Dinner included (100% Satvik Veg).",
          "transport": "AC Shuttle Transit for close proximity site transfers and passenger drops.",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Vedic Heritage Inn (Ashram atmosphere, close to main shrines, Western toilets, hot water)",
          "weather": "Warm and sunny afternoon, ideal for outdoor sightseeing, average temp 24°C.",
          "dressCode": "Modest clothing that covers shoulders and knees. Light-colored cotton attire is highly recommended.",
          "packingSuggestions": "Comfortable travel footwear, photo ID, essential personal medication, daypack.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 1 to 2 hours transfer"
        }
      },
      {
        "day": 2,
        "title": "Explore Sarnath Heritage Centre",
        "location": "Varanasi",
        "overview": "Spend your day visiting Sarnath Heritage Centre, the primary attraction in Sarnath, accompanied by our expert guide.",
        "schedule": {
          "morning": {
            "title": "Guided Tour of Sarnath Heritage Centre",
            "description": "Early morning visit to Sarnath Heritage Centre to avoid crowds. Learn about the heritage and unique history of this landmark."
          },
          "afternoon": {
            "title": "Local Traditional Lunch",
            "description": "Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings."
          },
          "evening": {
            "title": "Evening walk at Sarnath Panoramic Viewpoint",
            "description": "Stroll around Sarnath Panoramic Viewpoint for scenic sunset views. Capture great family photos as the evening lights turn on."
          }
        },
        "details": {
          "importantTimings": "Monastery Hours: 5:00 AM - 11:30 AM, 2:30 PM - 6:00 PM | Meditation: 5:30 AM",
          "meals": "Complimentary Breakfast & Traditional Lunch (100% Satvik Veg).",
          "transport": "AC Private Sedan with professional local driver (includes first-aid kit and bottled water).",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Premium Pilgrim Hotel (AC rooms, elevator, clean linen, hot water, elevator access)",
          "weather": "Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.",
          "dressCode": "Modest clothing that covers shoulders and knees. Light-colored cotton attire is highly recommended.",
          "packingSuggestions": "Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 3 to 4 hours local tour"
        }
      },
      {
        "day": 3,
        "title": "Souvenir Shopping & Onward Departure",
        "location": "Varanasi",
        "overview": "Conclude your memorable stay in Varanasi with local craft shopping, checkout, and outbound transfers.",
        "schedule": {
          "morning": {
            "title": "Handicrafts Shopping",
            "description": "Visit local co-operative markets to buy traditional souvenirs, regional sweets, or native organic spices."
          },
          "afternoon": {
            "title": "Check-out & Packing",
            "description": "Return to your hotel, pack your bags, clear any local incidentals, and check out from your rooms."
          },
          "evening": {
            "title": "Outbound Transfer",
            "description": "Board your private vehicle transfer to the airport or railway station for your onward return journey home."
          }
        },
        "details": {
          "importantTimings": "Monastery Hours: 5:00 AM - 11:30 AM, 2:30 PM - 6:00 PM | Meditation: 5:30 AM",
          "meals": "Breakfast & Special Dinner Buffet (100% Satvik Veg).",
          "transport": "AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Pilgrim Rest House (Safe, family-friendly rooms, walking distance to sacred sites)",
          "weather": "Perfect travel weather with low humidity and comfortable evening temperature 20°C.",
          "dressCode": "Modest clothing that covers shoulders and knees. Light-colored cotton attire is highly recommended.",
          "packingSuggestions": "Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 1 to 2 hours transfer"
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
      "Day 1: Arrival & Welcome at Sarnath",
      "Day 2: Guided Sightseeing & Exploration of Sarnath",
      "Day 3: Departure"
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
    "categoryLabel": "Buddhist Pilgrimage",
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
      "Buddhist Pilgrimage",
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
        "title": "Arrival & Settle in at Yangon",
        "location": "Yangon",
        "overview": "Welcome to your yatra. Arrive in Yangon, transfer to your stay, and rest before your sightseeing tour.",
        "schedule": {
          "morning": {
            "title": "Arrival & Check-in",
            "description": "Arrive at the nearest transit hub. Meet our coordinator and transfer to your pre-booked stay in Yangon."
          },
          "afternoon": {
            "title": "Leisure & Rest",
            "description": "Check into your hotel room, unpack your luggage, and rest to recover from your flight or train journey."
          },
          "evening": {
            "title": "Orientation Walk",
            "description": "Meet your local guide for a small walk around the neighborhood. Receive a detailed brief on local customs."
          }
        },
        "details": {
          "importantTimings": "Monastery Hours: 5:00 AM - 11:30 AM, 2:30 PM - 6:00 PM | Meditation: 5:30 AM",
          "meals": "Welcome Drink & Buffet Dinner included (100% Satvik Veg).",
          "transport": "AC Shuttle Transit for close proximity site transfers and passenger drops.",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Vedic Heritage Inn (Ashram atmosphere, close to main shrines, Western toilets, hot water)",
          "weather": "Warm and sunny afternoon, ideal for outdoor sightseeing, average temp 24°C.",
          "dressCode": "Modest clothing that covers shoulders and knees. Light-colored cotton attire is highly recommended.",
          "packingSuggestions": "Comfortable travel footwear, photo ID, essential personal medication, daypack.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 1 to 2 hours transfer"
        }
      },
      {
        "day": 2,
        "title": "Explore Shwedagon Pagoda Heritage Centre",
        "location": "Yangon",
        "overview": "Spend your day visiting Shwedagon Pagoda Heritage Centre, the primary attraction in Shwedagon Pagoda, accompanied by our expert guide.",
        "schedule": {
          "morning": {
            "title": "Guided Tour of Shwedagon Pagoda Heritage Centre",
            "description": "Early morning visit to Shwedagon Pagoda Heritage Centre to avoid crowds. Learn about the heritage and unique history of this landmark."
          },
          "afternoon": {
            "title": "Local Traditional Lunch",
            "description": "Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings."
          },
          "evening": {
            "title": "Evening walk at Shwedagon Pagoda Panoramic Viewpoint",
            "description": "Stroll around Shwedagon Pagoda Panoramic Viewpoint for scenic sunset views. Capture great family photos as the evening lights turn on."
          }
        },
        "details": {
          "importantTimings": "Monastery Hours: 5:00 AM - 11:30 AM, 2:30 PM - 6:00 PM | Meditation: 5:30 AM",
          "meals": "Complimentary Breakfast & Traditional Lunch (100% Satvik Veg).",
          "transport": "AC Private Sedan with professional local driver (includes first-aid kit and bottled water).",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Premium Pilgrim Hotel (AC rooms, elevator, clean linen, hot water, elevator access)",
          "weather": "Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.",
          "dressCode": "Modest clothing that covers shoulders and knees. Light-colored cotton attire is highly recommended.",
          "packingSuggestions": "Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 3 to 4 hours local tour"
        }
      },
      {
        "day": 3,
        "title": "Souvenir Shopping & Onward Departure",
        "location": "Yangon",
        "overview": "Conclude your memorable stay in Yangon with local craft shopping, checkout, and outbound transfers.",
        "schedule": {
          "morning": {
            "title": "Handicrafts Shopping",
            "description": "Visit local co-operative markets to buy traditional souvenirs, regional sweets, or native organic spices."
          },
          "afternoon": {
            "title": "Check-out & Packing",
            "description": "Return to your hotel, pack your bags, clear any local incidentals, and check out from your rooms."
          },
          "evening": {
            "title": "Outbound Transfer",
            "description": "Board your private vehicle transfer to the airport or railway station for your onward return journey home."
          }
        },
        "details": {
          "importantTimings": "Monastery Hours: 5:00 AM - 11:30 AM, 2:30 PM - 6:00 PM | Meditation: 5:30 AM",
          "meals": "Breakfast & Special Dinner Buffet (100% Satvik Veg).",
          "transport": "AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Pilgrim Rest House (Safe, family-friendly rooms, walking distance to sacred sites)",
          "weather": "Perfect travel weather with low humidity and comfortable evening temperature 20°C.",
          "dressCode": "Modest clothing that covers shoulders and knees. Light-colored cotton attire is highly recommended.",
          "packingSuggestions": "Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 1 to 2 hours transfer"
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
      "Day 1: Arrival & Welcome at Shwedagon Pagoda",
      "Day 2: Guided Sightseeing & Exploration of Shwedagon Pagoda",
      "Day 3: Departure"
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
    "categoryLabel": "Buddhist Pilgrimage",
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
      "Buddhist Pilgrimage",
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
        "title": "Arrival & Settle in at Paro",
        "location": "Paro",
        "overview": "Welcome to your yatra. Arrive in Paro, transfer to your stay, and rest before your sightseeing tour.",
        "schedule": {
          "morning": {
            "title": "Arrival & Check-in",
            "description": "Arrive at the nearest transit hub. Meet our coordinator and transfer to your pre-booked stay in Paro."
          },
          "afternoon": {
            "title": "Leisure & Rest",
            "description": "Check into your hotel room, unpack your luggage, and rest to recover from your flight or train journey."
          },
          "evening": {
            "title": "Orientation Walk",
            "description": "Meet your local guide for a small walk around the neighborhood. Receive a detailed brief on local customs."
          }
        },
        "details": {
          "importantTimings": "Monastery Hours: 5:00 AM - 11:30 AM, 2:30 PM - 6:00 PM | Meditation: 5:30 AM",
          "meals": "Welcome Drink & Buffet Dinner included (100% Satvik Veg).",
          "transport": "AC Shuttle Transit for close proximity site transfers and passenger drops.",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Vedic Heritage Inn (Ashram atmosphere, close to main shrines, Western toilets, hot water)",
          "weather": "Warm and sunny afternoon, ideal for outdoor sightseeing, average temp 24°C.",
          "dressCode": "Modest clothing that covers shoulders and knees. Light-colored cotton attire is highly recommended.",
          "packingSuggestions": "Comfortable travel footwear, photo ID, essential personal medication, daypack.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 1 to 2 hours transfer"
        }
      },
      {
        "day": 2,
        "title": "Explore Tiger’s Nest Monastery Heritage Centre",
        "location": "Paro",
        "overview": "Spend your day visiting Tiger’s Nest Monastery Heritage Centre, the primary attraction in Tiger’s Nest Monastery, accompanied by our expert guide.",
        "schedule": {
          "morning": {
            "title": "Guided Tour of Tiger’s Nest Monastery Heritage Centre",
            "description": "Early morning visit to Tiger’s Nest Monastery Heritage Centre to avoid crowds. Learn about the heritage and unique history of this landmark."
          },
          "afternoon": {
            "title": "Local Traditional Lunch",
            "description": "Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings."
          },
          "evening": {
            "title": "Evening walk at Tiger’s Nest Monastery Panoramic Viewpoint",
            "description": "Stroll around Tiger’s Nest Monastery Panoramic Viewpoint for scenic sunset views. Capture great family photos as the evening lights turn on."
          }
        },
        "details": {
          "importantTimings": "Monastery Hours: 5:00 AM - 11:30 AM, 2:30 PM - 6:00 PM | Meditation: 5:30 AM",
          "meals": "Complimentary Breakfast & Traditional Lunch (100% Satvik Veg).",
          "transport": "AC Private Sedan with professional local driver (includes first-aid kit and bottled water).",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Premium Pilgrim Hotel (AC rooms, elevator, clean linen, hot water, elevator access)",
          "weather": "Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.",
          "dressCode": "Modest clothing that covers shoulders and knees. Light-colored cotton attire is highly recommended.",
          "packingSuggestions": "Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 3 to 4 hours local tour"
        }
      },
      {
        "day": 3,
        "title": "Souvenir Shopping & Onward Departure",
        "location": "Paro",
        "overview": "Conclude your memorable stay in Paro with local craft shopping, checkout, and outbound transfers.",
        "schedule": {
          "morning": {
            "title": "Handicrafts Shopping",
            "description": "Visit local co-operative markets to buy traditional souvenirs, regional sweets, or native organic spices."
          },
          "afternoon": {
            "title": "Check-out & Packing",
            "description": "Return to your hotel, pack your bags, clear any local incidentals, and check out from your rooms."
          },
          "evening": {
            "title": "Outbound Transfer",
            "description": "Board your private vehicle transfer to the airport or railway station for your onward return journey home."
          }
        },
        "details": {
          "importantTimings": "Monastery Hours: 5:00 AM - 11:30 AM, 2:30 PM - 6:00 PM | Meditation: 5:30 AM",
          "meals": "Breakfast & Special Dinner Buffet (100% Satvik Veg).",
          "transport": "AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Pilgrim Rest House (Safe, family-friendly rooms, walking distance to sacred sites)",
          "weather": "Perfect travel weather with low humidity and comfortable evening temperature 20°C.",
          "dressCode": "Modest clothing that covers shoulders and knees. Light-colored cotton attire is highly recommended.",
          "packingSuggestions": "Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 1 to 2 hours transfer"
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
      "Day 1: Arrival & Welcome at Tiger’s Nest Monastery",
      "Day 2: Guided Sightseeing & Exploration of Tiger’s Nest Monastery",
      "Day 3: Departure"
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
    "categoryLabel": "Christian Pilgrimage",
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
      "Christian Pilgrimage",
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
        "title": "Arrival & Settle in at Mexico City",
        "location": "Mexico City",
        "overview": "Welcome to your yatra. Arrive in Mexico City, transfer to your stay, and rest before your sightseeing tour.",
        "schedule": {
          "morning": {
            "title": "Arrival & Check-in",
            "description": "Arrive at the nearest transit hub. Meet our coordinator and transfer to your pre-booked stay in Mexico City."
          },
          "afternoon": {
            "title": "Leisure & Rest",
            "description": "Check into your hotel room, unpack your luggage, and rest to recover from your flight or train journey."
          },
          "evening": {
            "title": "Orientation Walk",
            "description": "Meet your local guide for a small walk around the neighborhood. Receive a detailed brief on local customs."
          }
        },
        "details": {
          "importantTimings": "Cathedral Mass: 7:00 AM, 9:00 AM | Sanctuary guided walks: 10:00 AM - 4:00 PM",
          "meals": "Welcome Drink & Buffet Dinner included (100% Satvik Veg).",
          "transport": "AC Shuttle Transit for close proximity site transfers and passenger drops.",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Vedic Heritage Inn (Ashram atmosphere, close to main shrines, Western toilets, hot water)",
          "weather": "Warm and sunny afternoon, ideal for outdoor sightseeing, average temp 24°C.",
          "dressCode": "Smart casual attire. No tank tops, short skirts, or beachwear allowed inside the sanctuary gates.",
          "packingSuggestions": "Comfortable travel footwear, photo ID, essential personal medication, daypack.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 1 to 2 hours transfer"
        }
      },
      {
        "day": 2,
        "title": "Explore Basilica of Our Lady of Guadalupe Heritage Centre",
        "location": "Mexico City",
        "overview": "Spend your day visiting Basilica of Our Lady of Guadalupe Heritage Centre, the primary attraction in Basilica of Our Lady of Guadalupe, accompanied by our expert guide.",
        "schedule": {
          "morning": {
            "title": "Guided Tour of Basilica of Our Lady of Guadalupe Heritage Centre",
            "description": "Early morning visit to Basilica of Our Lady of Guadalupe Heritage Centre to avoid crowds. Learn about the heritage and unique history of this landmark."
          },
          "afternoon": {
            "title": "Local Traditional Lunch",
            "description": "Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings."
          },
          "evening": {
            "title": "Evening walk at Basilica of Our Lady of Guadalupe Panoramic Viewpoint",
            "description": "Stroll around Basilica of Our Lady of Guadalupe Panoramic Viewpoint for scenic sunset views. Capture great family photos as the evening lights turn on."
          }
        },
        "details": {
          "importantTimings": "Cathedral Mass: 7:00 AM, 9:00 AM | Sanctuary guided walks: 10:00 AM - 4:00 PM",
          "meals": "Complimentary Breakfast & Traditional Lunch (100% Satvik Veg).",
          "transport": "AC Private Sedan with professional local driver (includes first-aid kit and bottled water).",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Premium Pilgrim Hotel (AC rooms, elevator, clean linen, hot water, elevator access)",
          "weather": "Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.",
          "dressCode": "Smart casual attire. No tank tops, short skirts, or beachwear allowed inside the sanctuary gates.",
          "packingSuggestions": "Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 3 to 4 hours local tour"
        }
      },
      {
        "day": 3,
        "title": "Souvenir Shopping & Onward Departure",
        "location": "Mexico City",
        "overview": "Conclude your memorable stay in Mexico City with local craft shopping, checkout, and outbound transfers.",
        "schedule": {
          "morning": {
            "title": "Handicrafts Shopping",
            "description": "Visit local co-operative markets to buy traditional souvenirs, regional sweets, or native organic spices."
          },
          "afternoon": {
            "title": "Check-out & Packing",
            "description": "Return to your hotel, pack your bags, clear any local incidentals, and check out from your rooms."
          },
          "evening": {
            "title": "Outbound Transfer",
            "description": "Board your private vehicle transfer to the airport or railway station for your onward return journey home."
          }
        },
        "details": {
          "importantTimings": "Cathedral Mass: 7:00 AM, 9:00 AM | Sanctuary guided walks: 10:00 AM - 4:00 PM",
          "meals": "Breakfast & Special Dinner Buffet (100% Satvik Veg).",
          "transport": "AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Pilgrim Rest House (Safe, family-friendly rooms, walking distance to sacred sites)",
          "weather": "Perfect travel weather with low humidity and comfortable evening temperature 20°C.",
          "dressCode": "Smart casual attire. No tank tops, short skirts, or beachwear allowed inside the sanctuary gates.",
          "packingSuggestions": "Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 1 to 2 hours transfer"
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
      "Day 1: Arrival & Welcome at Basilica of Our Lady of Guadalupe",
      "Day 2: Guided Sightseeing & Exploration of Basilica of Our Lady of Guadalupe",
      "Day 3: Departure"
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
    "categoryLabel": "Christian Pilgrimage",
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
      "Christian Pilgrimage",
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
        "title": "Arrival & Settle in at Vatican City",
        "location": "Vatican City",
        "overview": "Welcome to your yatra. Arrive in Vatican City, transfer to your stay, and rest before your sightseeing tour.",
        "schedule": {
          "morning": {
            "title": "Arrival & Check-in",
            "description": "Arrive at the nearest transit hub. Meet our coordinator and transfer to your pre-booked stay in Vatican City."
          },
          "afternoon": {
            "title": "Leisure & Rest",
            "description": "Check into your hotel room, unpack your luggage, and rest to recover from your flight or train journey."
          },
          "evening": {
            "title": "Orientation Walk",
            "description": "Meet your local guide for a small walk around the neighborhood. Receive a detailed brief on local customs."
          }
        },
        "details": {
          "importantTimings": "Cathedral Mass: 7:00 AM, 9:00 AM | Sanctuary guided walks: 10:00 AM - 4:00 PM",
          "meals": "Welcome Drink & Buffet Dinner included (100% Satvik Veg).",
          "transport": "AC Shuttle Transit for close proximity site transfers and passenger drops.",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Vedic Heritage Inn (Ashram atmosphere, close to main shrines, Western toilets, hot water)",
          "weather": "Warm and sunny afternoon, ideal for outdoor sightseeing, average temp 24°C.",
          "dressCode": "Smart casual attire. No tank tops, short skirts, or beachwear allowed inside the sanctuary gates.",
          "packingSuggestions": "Comfortable travel footwear, photo ID, essential personal medication, daypack.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 1 to 2 hours transfer"
        }
      },
      {
        "day": 2,
        "title": "Explore Basilica of Saint Peter, Vatican City Heritage Centre",
        "location": "Vatican City",
        "overview": "Spend your day visiting Basilica of Saint Peter, Vatican City Heritage Centre, the primary attraction in Basilica of Saint Peter, Vatican City, accompanied by our expert guide.",
        "schedule": {
          "morning": {
            "title": "Guided Tour of Basilica of Saint Peter, Vatican City Heritage Centre",
            "description": "Early morning visit to Basilica of Saint Peter, Vatican City Heritage Centre to avoid crowds. Learn about the heritage and unique history of this landmark."
          },
          "afternoon": {
            "title": "Local Traditional Lunch",
            "description": "Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings."
          },
          "evening": {
            "title": "Evening walk at Basilica of Saint Peter, Vatican City Panoramic Viewpoint",
            "description": "Stroll around Basilica of Saint Peter, Vatican City Panoramic Viewpoint for scenic sunset views. Capture great family photos as the evening lights turn on."
          }
        },
        "details": {
          "importantTimings": "Cathedral Mass: 7:00 AM, 9:00 AM | Sanctuary guided walks: 10:00 AM - 4:00 PM",
          "meals": "Complimentary Breakfast & Traditional Lunch (100% Satvik Veg).",
          "transport": "AC Private Sedan with professional local driver (includes first-aid kit and bottled water).",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Premium Pilgrim Hotel (AC rooms, elevator, clean linen, hot water, elevator access)",
          "weather": "Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.",
          "dressCode": "Smart casual attire. No tank tops, short skirts, or beachwear allowed inside the sanctuary gates.",
          "packingSuggestions": "Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 3 to 4 hours local tour"
        }
      },
      {
        "day": 3,
        "title": "Souvenir Shopping & Onward Departure",
        "location": "Vatican City",
        "overview": "Conclude your memorable stay in Vatican City with local craft shopping, checkout, and outbound transfers.",
        "schedule": {
          "morning": {
            "title": "Handicrafts Shopping",
            "description": "Visit local co-operative markets to buy traditional souvenirs, regional sweets, or native organic spices."
          },
          "afternoon": {
            "title": "Check-out & Packing",
            "description": "Return to your hotel, pack your bags, clear any local incidentals, and check out from your rooms."
          },
          "evening": {
            "title": "Outbound Transfer",
            "description": "Board your private vehicle transfer to the airport or railway station for your onward return journey home."
          }
        },
        "details": {
          "importantTimings": "Cathedral Mass: 7:00 AM, 9:00 AM | Sanctuary guided walks: 10:00 AM - 4:00 PM",
          "meals": "Breakfast & Special Dinner Buffet (100% Satvik Veg).",
          "transport": "AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Pilgrim Rest House (Safe, family-friendly rooms, walking distance to sacred sites)",
          "weather": "Perfect travel weather with low humidity and comfortable evening temperature 20°C.",
          "dressCode": "Smart casual attire. No tank tops, short skirts, or beachwear allowed inside the sanctuary gates.",
          "packingSuggestions": "Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 1 to 2 hours transfer"
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
      "Day 1: Arrival & Welcome at Basilica of Saint Peter, Vatican City",
      "Day 2: Guided Sightseeing & Exploration of Basilica of Saint Peter, Vatican City",
      "Day 3: Departure"
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
    "categoryLabel": "Christian Pilgrimage",
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
      "Christian Pilgrimage",
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
        "title": "Arrival & Settle in at West Bank",
        "location": "West Bank",
        "overview": "Welcome to your yatra. Arrive in West Bank, transfer to your stay, and rest before your sightseeing tour.",
        "schedule": {
          "morning": {
            "title": "Arrival & Check-in",
            "description": "Arrive at the nearest transit hub. Meet our coordinator and transfer to your pre-booked stay in West Bank."
          },
          "afternoon": {
            "title": "Leisure & Rest",
            "description": "Check into your hotel room, unpack your luggage, and rest to recover from your flight or train journey."
          },
          "evening": {
            "title": "Orientation Walk",
            "description": "Meet your local guide for a small walk around the neighborhood. Receive a detailed brief on local customs."
          }
        },
        "details": {
          "importantTimings": "Cathedral Mass: 7:00 AM, 9:00 AM | Sanctuary guided walks: 10:00 AM - 4:00 PM",
          "meals": "Welcome Drink & Buffet Dinner included (100% Satvik Veg).",
          "transport": "AC Shuttle Transit for close proximity site transfers and passenger drops.",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Vedic Heritage Inn (Ashram atmosphere, close to main shrines, Western toilets, hot water)",
          "weather": "Warm and sunny afternoon, ideal for outdoor sightseeing, average temp 24°C.",
          "dressCode": "Smart casual attire. No tank tops, short skirts, or beachwear allowed inside the sanctuary gates.",
          "packingSuggestions": "Comfortable travel footwear, photo ID, essential personal medication, daypack.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 1 to 2 hours transfer"
        }
      },
      {
        "day": 2,
        "title": "Explore Bethlehem Heritage Centre",
        "location": "West Bank",
        "overview": "Spend your day visiting Bethlehem Heritage Centre, the primary attraction in Bethlehem, accompanied by our expert guide.",
        "schedule": {
          "morning": {
            "title": "Guided Tour of Bethlehem Heritage Centre",
            "description": "Early morning visit to Bethlehem Heritage Centre to avoid crowds. Learn about the heritage and unique history of this landmark."
          },
          "afternoon": {
            "title": "Local Traditional Lunch",
            "description": "Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings."
          },
          "evening": {
            "title": "Evening walk at Bethlehem Panoramic Viewpoint",
            "description": "Stroll around Bethlehem Panoramic Viewpoint for scenic sunset views. Capture great family photos as the evening lights turn on."
          }
        },
        "details": {
          "importantTimings": "Cathedral Mass: 7:00 AM, 9:00 AM | Sanctuary guided walks: 10:00 AM - 4:00 PM",
          "meals": "Complimentary Breakfast & Traditional Lunch (100% Satvik Veg).",
          "transport": "AC Private Sedan with professional local driver (includes first-aid kit and bottled water).",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Premium Pilgrim Hotel (AC rooms, elevator, clean linen, hot water, elevator access)",
          "weather": "Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.",
          "dressCode": "Smart casual attire. No tank tops, short skirts, or beachwear allowed inside the sanctuary gates.",
          "packingSuggestions": "Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 3 to 4 hours local tour"
        }
      },
      {
        "day": 3,
        "title": "Souvenir Shopping & Onward Departure",
        "location": "West Bank",
        "overview": "Conclude your memorable stay in West Bank with local craft shopping, checkout, and outbound transfers.",
        "schedule": {
          "morning": {
            "title": "Handicrafts Shopping",
            "description": "Visit local co-operative markets to buy traditional souvenirs, regional sweets, or native organic spices."
          },
          "afternoon": {
            "title": "Check-out & Packing",
            "description": "Return to your hotel, pack your bags, clear any local incidentals, and check out from your rooms."
          },
          "evening": {
            "title": "Outbound Transfer",
            "description": "Board your private vehicle transfer to the airport or railway station for your onward return journey home."
          }
        },
        "details": {
          "importantTimings": "Cathedral Mass: 7:00 AM, 9:00 AM | Sanctuary guided walks: 10:00 AM - 4:00 PM",
          "meals": "Breakfast & Special Dinner Buffet (100% Satvik Veg).",
          "transport": "AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Pilgrim Rest House (Safe, family-friendly rooms, walking distance to sacred sites)",
          "weather": "Perfect travel weather with low humidity and comfortable evening temperature 20°C.",
          "dressCode": "Smart casual attire. No tank tops, short skirts, or beachwear allowed inside the sanctuary gates.",
          "packingSuggestions": "Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 1 to 2 hours transfer"
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
      "Day 1: Arrival & Welcome at Bethlehem",
      "Day 2: Guided Sightseeing & Exploration of Bethlehem",
      "Day 3: Departure"
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
    "categoryLabel": "Christian Pilgrimage",
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
      "Christian Pilgrimage",
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
        "title": "Arrival & Settle in at Galicia",
        "location": "Galicia",
        "overview": "Welcome to your yatra. Arrive in Galicia, transfer to your stay, and rest before your sightseeing tour.",
        "schedule": {
          "morning": {
            "title": "Arrival & Check-in",
            "description": "Arrive at the nearest transit hub. Meet our coordinator and transfer to your pre-booked stay in Galicia."
          },
          "afternoon": {
            "title": "Leisure & Rest",
            "description": "Check into your hotel room, unpack your luggage, and rest to recover from your flight or train journey."
          },
          "evening": {
            "title": "Orientation Walk",
            "description": "Meet your local guide for a small walk around the neighborhood. Receive a detailed brief on local customs."
          }
        },
        "details": {
          "importantTimings": "Cathedral Mass: 7:00 AM, 9:00 AM | Sanctuary guided walks: 10:00 AM - 4:00 PM",
          "meals": "Welcome Drink & Buffet Dinner included (100% Satvik Veg).",
          "transport": "AC Shuttle Transit for close proximity site transfers and passenger drops.",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Vedic Heritage Inn (Ashram atmosphere, close to main shrines, Western toilets, hot water)",
          "weather": "Warm and sunny afternoon, ideal for outdoor sightseeing, average temp 24°C.",
          "dressCode": "Smart casual attire. No tank tops, short skirts, or beachwear allowed inside the sanctuary gates.",
          "packingSuggestions": "Comfortable travel footwear, photo ID, essential personal medication, daypack.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 1 to 2 hours transfer"
        }
      },
      {
        "day": 2,
        "title": "Explore Camino de Santiago, Spain Heritage Centre",
        "location": "Galicia",
        "overview": "Spend your day visiting Camino de Santiago, Spain Heritage Centre, the primary attraction in Camino de Santiago, Spain, accompanied by our expert guide.",
        "schedule": {
          "morning": {
            "title": "Guided Tour of Camino de Santiago, Spain Heritage Centre",
            "description": "Early morning visit to Camino de Santiago, Spain Heritage Centre to avoid crowds. Learn about the heritage and unique history of this landmark."
          },
          "afternoon": {
            "title": "Local Traditional Lunch",
            "description": "Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings."
          },
          "evening": {
            "title": "Evening walk at Camino de Santiago, Spain Panoramic Viewpoint",
            "description": "Stroll around Camino de Santiago, Spain Panoramic Viewpoint for scenic sunset views. Capture great family photos as the evening lights turn on."
          }
        },
        "details": {
          "importantTimings": "Cathedral Mass: 7:00 AM, 9:00 AM | Sanctuary guided walks: 10:00 AM - 4:00 PM",
          "meals": "Complimentary Breakfast & Traditional Lunch (100% Satvik Veg).",
          "transport": "AC Private Sedan with professional local driver (includes first-aid kit and bottled water).",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Premium Pilgrim Hotel (AC rooms, elevator, clean linen, hot water, elevator access)",
          "weather": "Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.",
          "dressCode": "Smart casual attire. No tank tops, short skirts, or beachwear allowed inside the sanctuary gates.",
          "packingSuggestions": "Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 3 to 4 hours local tour"
        }
      },
      {
        "day": 3,
        "title": "Souvenir Shopping & Onward Departure",
        "location": "Galicia",
        "overview": "Conclude your memorable stay in Galicia with local craft shopping, checkout, and outbound transfers.",
        "schedule": {
          "morning": {
            "title": "Handicrafts Shopping",
            "description": "Visit local co-operative markets to buy traditional souvenirs, regional sweets, or native organic spices."
          },
          "afternoon": {
            "title": "Check-out & Packing",
            "description": "Return to your hotel, pack your bags, clear any local incidentals, and check out from your rooms."
          },
          "evening": {
            "title": "Outbound Transfer",
            "description": "Board your private vehicle transfer to the airport or railway station for your onward return journey home."
          }
        },
        "details": {
          "importantTimings": "Cathedral Mass: 7:00 AM, 9:00 AM | Sanctuary guided walks: 10:00 AM - 4:00 PM",
          "meals": "Breakfast & Special Dinner Buffet (100% Satvik Veg).",
          "transport": "AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Pilgrim Rest House (Safe, family-friendly rooms, walking distance to sacred sites)",
          "weather": "Perfect travel weather with low humidity and comfortable evening temperature 20°C.",
          "dressCode": "Smart casual attire. No tank tops, short skirts, or beachwear allowed inside the sanctuary gates.",
          "packingSuggestions": "Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 1 to 2 hours transfer"
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
      "Day 1: Arrival & Welcome at Camino de Santiago, Spain",
      "Day 2: Guided Sightseeing & Exploration of Camino de Santiago, Spain",
      "Day 3: Departure"
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
    "categoryLabel": "Christian Pilgrimage",
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
      "Christian Pilgrimage",
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
        "title": "Arrival & Settle in at Kent",
        "location": "Kent",
        "overview": "Welcome to your yatra. Arrive in Kent, transfer to your stay, and rest before your sightseeing tour.",
        "schedule": {
          "morning": {
            "title": "Arrival & Check-in",
            "description": "Arrive at the nearest transit hub. Meet our coordinator and transfer to your pre-booked stay in Kent."
          },
          "afternoon": {
            "title": "Leisure & Rest",
            "description": "Check into your hotel room, unpack your luggage, and rest to recover from your flight or train journey."
          },
          "evening": {
            "title": "Orientation Walk",
            "description": "Meet your local guide for a small walk around the neighborhood. Receive a detailed brief on local customs."
          }
        },
        "details": {
          "importantTimings": "Cathedral Mass: 7:00 AM, 9:00 AM | Sanctuary guided walks: 10:00 AM - 4:00 PM",
          "meals": "Welcome Drink & Buffet Dinner included (100% Satvik Veg).",
          "transport": "AC Shuttle Transit for close proximity site transfers and passenger drops.",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Vedic Heritage Inn (Ashram atmosphere, close to main shrines, Western toilets, hot water)",
          "weather": "Warm and sunny afternoon, ideal for outdoor sightseeing, average temp 24°C.",
          "dressCode": "Smart casual attire. No tank tops, short skirts, or beachwear allowed inside the sanctuary gates.",
          "packingSuggestions": "Comfortable travel footwear, photo ID, essential personal medication, daypack.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 1 to 2 hours transfer"
        }
      },
      {
        "day": 2,
        "title": "Explore Canterbury Cathedral Heritage Centre",
        "location": "Kent",
        "overview": "Spend your day visiting Canterbury Cathedral Heritage Centre, the primary attraction in Canterbury Cathedral, accompanied by our expert guide.",
        "schedule": {
          "morning": {
            "title": "Guided Tour of Canterbury Cathedral Heritage Centre",
            "description": "Early morning visit to Canterbury Cathedral Heritage Centre to avoid crowds. Learn about the heritage and unique history of this landmark."
          },
          "afternoon": {
            "title": "Local Traditional Lunch",
            "description": "Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings."
          },
          "evening": {
            "title": "Evening walk at Canterbury Cathedral Panoramic Viewpoint",
            "description": "Stroll around Canterbury Cathedral Panoramic Viewpoint for scenic sunset views. Capture great family photos as the evening lights turn on."
          }
        },
        "details": {
          "importantTimings": "Cathedral Mass: 7:00 AM, 9:00 AM | Sanctuary guided walks: 10:00 AM - 4:00 PM",
          "meals": "Complimentary Breakfast & Traditional Lunch (100% Satvik Veg).",
          "transport": "AC Private Sedan with professional local driver (includes first-aid kit and bottled water).",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Premium Pilgrim Hotel (AC rooms, elevator, clean linen, hot water, elevator access)",
          "weather": "Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.",
          "dressCode": "Smart casual attire. No tank tops, short skirts, or beachwear allowed inside the sanctuary gates.",
          "packingSuggestions": "Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 3 to 4 hours local tour"
        }
      },
      {
        "day": 3,
        "title": "Souvenir Shopping & Onward Departure",
        "location": "Kent",
        "overview": "Conclude your memorable stay in Kent with local craft shopping, checkout, and outbound transfers.",
        "schedule": {
          "morning": {
            "title": "Handicrafts Shopping",
            "description": "Visit local co-operative markets to buy traditional souvenirs, regional sweets, or native organic spices."
          },
          "afternoon": {
            "title": "Check-out & Packing",
            "description": "Return to your hotel, pack your bags, clear any local incidentals, and check out from your rooms."
          },
          "evening": {
            "title": "Outbound Transfer",
            "description": "Board your private vehicle transfer to the airport or railway station for your onward return journey home."
          }
        },
        "details": {
          "importantTimings": "Cathedral Mass: 7:00 AM, 9:00 AM | Sanctuary guided walks: 10:00 AM - 4:00 PM",
          "meals": "Breakfast & Special Dinner Buffet (100% Satvik Veg).",
          "transport": "AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Pilgrim Rest House (Safe, family-friendly rooms, walking distance to sacred sites)",
          "weather": "Perfect travel weather with low humidity and comfortable evening temperature 20°C.",
          "dressCode": "Smart casual attire. No tank tops, short skirts, or beachwear allowed inside the sanctuary gates.",
          "packingSuggestions": "Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 1 to 2 hours transfer"
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
      "Day 1: Arrival & Welcome at Canterbury Cathedral",
      "Day 2: Guided Sightseeing & Exploration of Canterbury Cathedral",
      "Day 3: Departure"
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
    "categoryLabel": "Christian Pilgrimage",
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
      "Christian Pilgrimage",
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
        "title": "Arrival & Settle in at Jerusalem",
        "location": "Jerusalem",
        "overview": "Welcome to your yatra. Arrive in Jerusalem, transfer to your stay, and rest before your sightseeing tour.",
        "schedule": {
          "morning": {
            "title": "Arrival & Check-in",
            "description": "Arrive at the nearest transit hub. Meet our coordinator and transfer to your pre-booked stay in Jerusalem."
          },
          "afternoon": {
            "title": "Leisure & Rest",
            "description": "Check into your hotel room, unpack your luggage, and rest to recover from your flight or train journey."
          },
          "evening": {
            "title": "Orientation Walk",
            "description": "Meet your local guide for a small walk around the neighborhood. Receive a detailed brief on local customs."
          }
        },
        "details": {
          "importantTimings": "Cathedral Mass: 7:00 AM, 9:00 AM | Sanctuary guided walks: 10:00 AM - 4:00 PM",
          "meals": "Welcome Drink & Buffet Dinner included (100% Satvik Veg).",
          "transport": "AC Shuttle Transit for close proximity site transfers and passenger drops.",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Vedic Heritage Inn (Ashram atmosphere, close to main shrines, Western toilets, hot water)",
          "weather": "Warm and sunny afternoon, ideal for outdoor sightseeing, average temp 24°C.",
          "dressCode": "Smart casual attire. No tank tops, short skirts, or beachwear allowed inside the sanctuary gates.",
          "packingSuggestions": "Comfortable travel footwear, photo ID, essential personal medication, daypack.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 1 to 2 hours transfer"
        }
      },
      {
        "day": 2,
        "title": "Explore Church of the Holy Sepulchre, Jerusalem Heritage Centre",
        "location": "Jerusalem",
        "overview": "Spend your day visiting Church of the Holy Sepulchre, Jerusalem Heritage Centre, the primary attraction in Church of the Holy Sepulchre, Jerusalem, accompanied by our expert guide.",
        "schedule": {
          "morning": {
            "title": "Guided Tour of Church of the Holy Sepulchre, Jerusalem Heritage Centre",
            "description": "Early morning visit to Church of the Holy Sepulchre, Jerusalem Heritage Centre to avoid crowds. Learn about the heritage and unique history of this landmark."
          },
          "afternoon": {
            "title": "Local Traditional Lunch",
            "description": "Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings."
          },
          "evening": {
            "title": "Evening walk at Church of the Holy Sepulchre, Jerusalem Panoramic Viewpoint",
            "description": "Stroll around Church of the Holy Sepulchre, Jerusalem Panoramic Viewpoint for scenic sunset views. Capture great family photos as the evening lights turn on."
          }
        },
        "details": {
          "importantTimings": "Cathedral Mass: 7:00 AM, 9:00 AM | Sanctuary guided walks: 10:00 AM - 4:00 PM",
          "meals": "Complimentary Breakfast & Traditional Lunch (100% Satvik Veg).",
          "transport": "AC Private Sedan with professional local driver (includes first-aid kit and bottled water).",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Premium Pilgrim Hotel (AC rooms, elevator, clean linen, hot water, elevator access)",
          "weather": "Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.",
          "dressCode": "Smart casual attire. No tank tops, short skirts, or beachwear allowed inside the sanctuary gates.",
          "packingSuggestions": "Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 3 to 4 hours local tour"
        }
      },
      {
        "day": 3,
        "title": "Souvenir Shopping & Onward Departure",
        "location": "Jerusalem",
        "overview": "Conclude your memorable stay in Jerusalem with local craft shopping, checkout, and outbound transfers.",
        "schedule": {
          "morning": {
            "title": "Handicrafts Shopping",
            "description": "Visit local co-operative markets to buy traditional souvenirs, regional sweets, or native organic spices."
          },
          "afternoon": {
            "title": "Check-out & Packing",
            "description": "Return to your hotel, pack your bags, clear any local incidentals, and check out from your rooms."
          },
          "evening": {
            "title": "Outbound Transfer",
            "description": "Board your private vehicle transfer to the airport or railway station for your onward return journey home."
          }
        },
        "details": {
          "importantTimings": "Cathedral Mass: 7:00 AM, 9:00 AM | Sanctuary guided walks: 10:00 AM - 4:00 PM",
          "meals": "Breakfast & Special Dinner Buffet (100% Satvik Veg).",
          "transport": "AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Pilgrim Rest House (Safe, family-friendly rooms, walking distance to sacred sites)",
          "weather": "Perfect travel weather with low humidity and comfortable evening temperature 20°C.",
          "dressCode": "Smart casual attire. No tank tops, short skirts, or beachwear allowed inside the sanctuary gates.",
          "packingSuggestions": "Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 1 to 2 hours transfer"
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
      "Day 1: Arrival & Welcome at Church of the Holy Sepulchre, Jerusalem",
      "Day 2: Guided Sightseeing & Exploration of Church of the Holy Sepulchre, Jerusalem",
      "Day 3: Departure"
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
    "categoryLabel": "Christian Pilgrimage",
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
      "Christian Pilgrimage",
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
        "title": "Arrival & Settle in at New Mexico",
        "location": "New Mexico",
        "overview": "Welcome to your yatra. Arrive in New Mexico, transfer to your stay, and rest before your sightseeing tour.",
        "schedule": {
          "morning": {
            "title": "Arrival & Check-in",
            "description": "Arrive at the nearest transit hub. Meet our coordinator and transfer to your pre-booked stay in New Mexico."
          },
          "afternoon": {
            "title": "Leisure & Rest",
            "description": "Check into your hotel room, unpack your luggage, and rest to recover from your flight or train journey."
          },
          "evening": {
            "title": "Orientation Walk",
            "description": "Meet your local guide for a small walk around the neighborhood. Receive a detailed brief on local customs."
          }
        },
        "details": {
          "importantTimings": "Cathedral Mass: 7:00 AM, 9:00 AM | Sanctuary guided walks: 10:00 AM - 4:00 PM",
          "meals": "Welcome Drink & Buffet Dinner included (100% Satvik Veg).",
          "transport": "AC Shuttle Transit for close proximity site transfers and passenger drops.",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Vedic Heritage Inn (Ashram atmosphere, close to main shrines, Western toilets, hot water)",
          "weather": "Warm and sunny afternoon, ideal for outdoor sightseeing, average temp 24°C.",
          "dressCode": "Smart casual attire. No tank tops, short skirts, or beachwear allowed inside the sanctuary gates.",
          "packingSuggestions": "Comfortable travel footwear, photo ID, essential personal medication, daypack.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 1 to 2 hours transfer"
        }
      },
      {
        "day": 2,
        "title": "Explore El Santuario de Chimayo Heritage Centre",
        "location": "New Mexico",
        "overview": "Spend your day visiting El Santuario de Chimayo Heritage Centre, the primary attraction in El Santuario de Chimayo, accompanied by our expert guide.",
        "schedule": {
          "morning": {
            "title": "Guided Tour of El Santuario de Chimayo Heritage Centre",
            "description": "Early morning visit to El Santuario de Chimayo Heritage Centre to avoid crowds. Learn about the heritage and unique history of this landmark."
          },
          "afternoon": {
            "title": "Local Traditional Lunch",
            "description": "Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings."
          },
          "evening": {
            "title": "Evening walk at El Santuario de Chimayo Panoramic Viewpoint",
            "description": "Stroll around El Santuario de Chimayo Panoramic Viewpoint for scenic sunset views. Capture great family photos as the evening lights turn on."
          }
        },
        "details": {
          "importantTimings": "Cathedral Mass: 7:00 AM, 9:00 AM | Sanctuary guided walks: 10:00 AM - 4:00 PM",
          "meals": "Complimentary Breakfast & Traditional Lunch (100% Satvik Veg).",
          "transport": "AC Private Sedan with professional local driver (includes first-aid kit and bottled water).",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Premium Pilgrim Hotel (AC rooms, elevator, clean linen, hot water, elevator access)",
          "weather": "Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.",
          "dressCode": "Smart casual attire. No tank tops, short skirts, or beachwear allowed inside the sanctuary gates.",
          "packingSuggestions": "Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 3 to 4 hours local tour"
        }
      },
      {
        "day": 3,
        "title": "Souvenir Shopping & Onward Departure",
        "location": "New Mexico",
        "overview": "Conclude your memorable stay in New Mexico with local craft shopping, checkout, and outbound transfers.",
        "schedule": {
          "morning": {
            "title": "Handicrafts Shopping",
            "description": "Visit local co-operative markets to buy traditional souvenirs, regional sweets, or native organic spices."
          },
          "afternoon": {
            "title": "Check-out & Packing",
            "description": "Return to your hotel, pack your bags, clear any local incidentals, and check out from your rooms."
          },
          "evening": {
            "title": "Outbound Transfer",
            "description": "Board your private vehicle transfer to the airport or railway station for your onward return journey home."
          }
        },
        "details": {
          "importantTimings": "Cathedral Mass: 7:00 AM, 9:00 AM | Sanctuary guided walks: 10:00 AM - 4:00 PM",
          "meals": "Breakfast & Special Dinner Buffet (100% Satvik Veg).",
          "transport": "AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Pilgrim Rest House (Safe, family-friendly rooms, walking distance to sacred sites)",
          "weather": "Perfect travel weather with low humidity and comfortable evening temperature 20°C.",
          "dressCode": "Smart casual attire. No tank tops, short skirts, or beachwear allowed inside the sanctuary gates.",
          "packingSuggestions": "Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 1 to 2 hours transfer"
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
      "Day 1: Arrival & Welcome at El Santuario de Chimayo",
      "Day 2: Guided Sightseeing & Exploration of El Santuario de Chimayo",
      "Day 3: Departure"
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
    "categoryLabel": "Christian Pilgrimage",
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
      "Christian Pilgrimage",
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
        "title": "Arrival & Settle in at Santarém",
        "location": "Santarém",
        "overview": "Welcome to your yatra. Arrive in Santarém, transfer to your stay, and rest before your sightseeing tour.",
        "schedule": {
          "morning": {
            "title": "Arrival & Check-in",
            "description": "Arrive at the nearest transit hub. Meet our coordinator and transfer to your pre-booked stay in Santarém."
          },
          "afternoon": {
            "title": "Leisure & Rest",
            "description": "Check into your hotel room, unpack your luggage, and rest to recover from your flight or train journey."
          },
          "evening": {
            "title": "Orientation Walk",
            "description": "Meet your local guide for a small walk around the neighborhood. Receive a detailed brief on local customs."
          }
        },
        "details": {
          "importantTimings": "Cathedral Mass: 7:00 AM, 9:00 AM | Sanctuary guided walks: 10:00 AM - 4:00 PM",
          "meals": "Welcome Drink & Buffet Dinner included (100% Satvik Veg).",
          "transport": "AC Shuttle Transit for close proximity site transfers and passenger drops.",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Vedic Heritage Inn (Ashram atmosphere, close to main shrines, Western toilets, hot water)",
          "weather": "Warm and sunny afternoon, ideal for outdoor sightseeing, average temp 24°C.",
          "dressCode": "Smart casual attire. No tank tops, short skirts, or beachwear allowed inside the sanctuary gates.",
          "packingSuggestions": "Comfortable travel footwear, photo ID, essential personal medication, daypack.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 1 to 2 hours transfer"
        }
      },
      {
        "day": 2,
        "title": "Explore Fátima Heritage Centre",
        "location": "Santarém",
        "overview": "Spend your day visiting Fátima Heritage Centre, the primary attraction in Fátima, accompanied by our expert guide.",
        "schedule": {
          "morning": {
            "title": "Guided Tour of Fátima Heritage Centre",
            "description": "Early morning visit to Fátima Heritage Centre to avoid crowds. Learn about the heritage and unique history of this landmark."
          },
          "afternoon": {
            "title": "Local Traditional Lunch",
            "description": "Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings."
          },
          "evening": {
            "title": "Evening walk at Fátima Panoramic Viewpoint",
            "description": "Stroll around Fátima Panoramic Viewpoint for scenic sunset views. Capture great family photos as the evening lights turn on."
          }
        },
        "details": {
          "importantTimings": "Cathedral Mass: 7:00 AM, 9:00 AM | Sanctuary guided walks: 10:00 AM - 4:00 PM",
          "meals": "Complimentary Breakfast & Traditional Lunch (100% Satvik Veg).",
          "transport": "AC Private Sedan with professional local driver (includes first-aid kit and bottled water).",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Premium Pilgrim Hotel (AC rooms, elevator, clean linen, hot water, elevator access)",
          "weather": "Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.",
          "dressCode": "Smart casual attire. No tank tops, short skirts, or beachwear allowed inside the sanctuary gates.",
          "packingSuggestions": "Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 3 to 4 hours local tour"
        }
      },
      {
        "day": 3,
        "title": "Souvenir Shopping & Onward Departure",
        "location": "Santarém",
        "overview": "Conclude your memorable stay in Santarém with local craft shopping, checkout, and outbound transfers.",
        "schedule": {
          "morning": {
            "title": "Handicrafts Shopping",
            "description": "Visit local co-operative markets to buy traditional souvenirs, regional sweets, or native organic spices."
          },
          "afternoon": {
            "title": "Check-out & Packing",
            "description": "Return to your hotel, pack your bags, clear any local incidentals, and check out from your rooms."
          },
          "evening": {
            "title": "Outbound Transfer",
            "description": "Board your private vehicle transfer to the airport or railway station for your onward return journey home."
          }
        },
        "details": {
          "importantTimings": "Cathedral Mass: 7:00 AM, 9:00 AM | Sanctuary guided walks: 10:00 AM - 4:00 PM",
          "meals": "Breakfast & Special Dinner Buffet (100% Satvik Veg).",
          "transport": "AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Pilgrim Rest House (Safe, family-friendly rooms, walking distance to sacred sites)",
          "weather": "Perfect travel weather with low humidity and comfortable evening temperature 20°C.",
          "dressCode": "Smart casual attire. No tank tops, short skirts, or beachwear allowed inside the sanctuary gates.",
          "packingSuggestions": "Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 1 to 2 hours transfer"
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
      "Day 1: Arrival & Welcome at Fátima",
      "Day 2: Guided Sightseeing & Exploration of Fátima",
      "Day 3: Departure"
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
    "categoryLabel": "Christian Pilgrimage",
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
      "Christian Pilgrimage",
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
        "title": "Arrival & Settle in at Amhara",
        "location": "Amhara",
        "overview": "Welcome to your yatra. Arrive in Amhara, transfer to your stay, and rest before your sightseeing tour.",
        "schedule": {
          "morning": {
            "title": "Arrival & Check-in",
            "description": "Arrive at the nearest transit hub. Meet our coordinator and transfer to your pre-booked stay in Amhara."
          },
          "afternoon": {
            "title": "Leisure & Rest",
            "description": "Check into your hotel room, unpack your luggage, and rest to recover from your flight or train journey."
          },
          "evening": {
            "title": "Orientation Walk",
            "description": "Meet your local guide for a small walk around the neighborhood. Receive a detailed brief on local customs."
          }
        },
        "details": {
          "importantTimings": "Cathedral Mass: 7:00 AM, 9:00 AM | Sanctuary guided walks: 10:00 AM - 4:00 PM",
          "meals": "Welcome Drink & Buffet Dinner included (100% Satvik Veg).",
          "transport": "AC Shuttle Transit for close proximity site transfers and passenger drops.",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Vedic Heritage Inn (Ashram atmosphere, close to main shrines, Western toilets, hot water)",
          "weather": "Warm and sunny afternoon, ideal for outdoor sightseeing, average temp 24°C.",
          "dressCode": "Smart casual attire. No tank tops, short skirts, or beachwear allowed inside the sanctuary gates.",
          "packingSuggestions": "Comfortable travel footwear, photo ID, essential personal medication, daypack.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 1 to 2 hours transfer"
        }
      },
      {
        "day": 2,
        "title": "Explore Lalibela Heritage Centre",
        "location": "Amhara",
        "overview": "Spend your day visiting Lalibela Heritage Centre, the primary attraction in Lalibela, accompanied by our expert guide.",
        "schedule": {
          "morning": {
            "title": "Guided Tour of Lalibela Heritage Centre",
            "description": "Early morning visit to Lalibela Heritage Centre to avoid crowds. Learn about the heritage and unique history of this landmark."
          },
          "afternoon": {
            "title": "Local Traditional Lunch",
            "description": "Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings."
          },
          "evening": {
            "title": "Evening walk at Lalibela Panoramic Viewpoint",
            "description": "Stroll around Lalibela Panoramic Viewpoint for scenic sunset views. Capture great family photos as the evening lights turn on."
          }
        },
        "details": {
          "importantTimings": "Cathedral Mass: 7:00 AM, 9:00 AM | Sanctuary guided walks: 10:00 AM - 4:00 PM",
          "meals": "Complimentary Breakfast & Traditional Lunch (100% Satvik Veg).",
          "transport": "AC Private Sedan with professional local driver (includes first-aid kit and bottled water).",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Premium Pilgrim Hotel (AC rooms, elevator, clean linen, hot water, elevator access)",
          "weather": "Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.",
          "dressCode": "Smart casual attire. No tank tops, short skirts, or beachwear allowed inside the sanctuary gates.",
          "packingSuggestions": "Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 3 to 4 hours local tour"
        }
      },
      {
        "day": 3,
        "title": "Souvenir Shopping & Onward Departure",
        "location": "Amhara",
        "overview": "Conclude your memorable stay in Amhara with local craft shopping, checkout, and outbound transfers.",
        "schedule": {
          "morning": {
            "title": "Handicrafts Shopping",
            "description": "Visit local co-operative markets to buy traditional souvenirs, regional sweets, or native organic spices."
          },
          "afternoon": {
            "title": "Check-out & Packing",
            "description": "Return to your hotel, pack your bags, clear any local incidentals, and check out from your rooms."
          },
          "evening": {
            "title": "Outbound Transfer",
            "description": "Board your private vehicle transfer to the airport or railway station for your onward return journey home."
          }
        },
        "details": {
          "importantTimings": "Cathedral Mass: 7:00 AM, 9:00 AM | Sanctuary guided walks: 10:00 AM - 4:00 PM",
          "meals": "Breakfast & Special Dinner Buffet (100% Satvik Veg).",
          "transport": "AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Pilgrim Rest House (Safe, family-friendly rooms, walking distance to sacred sites)",
          "weather": "Perfect travel weather with low humidity and comfortable evening temperature 20°C.",
          "dressCode": "Smart casual attire. No tank tops, short skirts, or beachwear allowed inside the sanctuary gates.",
          "packingSuggestions": "Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 1 to 2 hours transfer"
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
      "Day 1: Arrival & Welcome at Lalibela",
      "Day 2: Guided Sightseeing & Exploration of Lalibela",
      "Day 3: Departure"
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
    "categoryLabel": "Christian Pilgrimage",
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
      "Christian Pilgrimage",
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
        "title": "Arrival & Settle in at Chalkidiki",
        "location": "Chalkidiki",
        "overview": "Welcome to your yatra. Arrive in Chalkidiki, transfer to your stay, and rest before your sightseeing tour.",
        "schedule": {
          "morning": {
            "title": "Arrival & Check-in",
            "description": "Arrive at the nearest transit hub. Meet our coordinator and transfer to your pre-booked stay in Chalkidiki."
          },
          "afternoon": {
            "title": "Leisure & Rest",
            "description": "Check into your hotel room, unpack your luggage, and rest to recover from your flight or train journey."
          },
          "evening": {
            "title": "Orientation Walk",
            "description": "Meet your local guide for a small walk around the neighborhood. Receive a detailed brief on local customs."
          }
        },
        "details": {
          "importantTimings": "Cathedral Mass: 7:00 AM, 9:00 AM | Sanctuary guided walks: 10:00 AM - 4:00 PM",
          "meals": "Welcome Drink & Buffet Dinner included (100% Satvik Veg).",
          "transport": "AC Shuttle Transit for close proximity site transfers and passenger drops.",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Vedic Heritage Inn (Ashram atmosphere, close to main shrines, Western toilets, hot water)",
          "weather": "Warm and sunny afternoon, ideal for outdoor sightseeing, average temp 24°C.",
          "dressCode": "Smart casual attire. No tank tops, short skirts, or beachwear allowed inside the sanctuary gates.",
          "packingSuggestions": "Comfortable travel footwear, photo ID, essential personal medication, daypack.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 1 to 2 hours transfer"
        }
      },
      {
        "day": 2,
        "title": "Explore Mount Athos Heritage Centre",
        "location": "Chalkidiki",
        "overview": "Spend your day visiting Mount Athos Heritage Centre, the primary attraction in Mount Athos, accompanied by our expert guide.",
        "schedule": {
          "morning": {
            "title": "Guided Tour of Mount Athos Heritage Centre",
            "description": "Early morning visit to Mount Athos Heritage Centre to avoid crowds. Learn about the heritage and unique history of this landmark."
          },
          "afternoon": {
            "title": "Local Traditional Lunch",
            "description": "Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings."
          },
          "evening": {
            "title": "Evening walk at Mount Athos Panoramic Viewpoint",
            "description": "Stroll around Mount Athos Panoramic Viewpoint for scenic sunset views. Capture great family photos as the evening lights turn on."
          }
        },
        "details": {
          "importantTimings": "Cathedral Mass: 7:00 AM, 9:00 AM | Sanctuary guided walks: 10:00 AM - 4:00 PM",
          "meals": "Complimentary Breakfast & Traditional Lunch (100% Satvik Veg).",
          "transport": "AC Private Sedan with professional local driver (includes first-aid kit and bottled water).",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Premium Pilgrim Hotel (AC rooms, elevator, clean linen, hot water, elevator access)",
          "weather": "Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.",
          "dressCode": "Smart casual attire. No tank tops, short skirts, or beachwear allowed inside the sanctuary gates.",
          "packingSuggestions": "Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 3 to 4 hours local tour"
        }
      },
      {
        "day": 3,
        "title": "Souvenir Shopping & Onward Departure",
        "location": "Chalkidiki",
        "overview": "Conclude your memorable stay in Chalkidiki with local craft shopping, checkout, and outbound transfers.",
        "schedule": {
          "morning": {
            "title": "Handicrafts Shopping",
            "description": "Visit local co-operative markets to buy traditional souvenirs, regional sweets, or native organic spices."
          },
          "afternoon": {
            "title": "Check-out & Packing",
            "description": "Return to your hotel, pack your bags, clear any local incidentals, and check out from your rooms."
          },
          "evening": {
            "title": "Outbound Transfer",
            "description": "Board your private vehicle transfer to the airport or railway station for your onward return journey home."
          }
        },
        "details": {
          "importantTimings": "Cathedral Mass: 7:00 AM, 9:00 AM | Sanctuary guided walks: 10:00 AM - 4:00 PM",
          "meals": "Breakfast & Special Dinner Buffet (100% Satvik Veg).",
          "transport": "AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Pilgrim Rest House (Safe, family-friendly rooms, walking distance to sacred sites)",
          "weather": "Perfect travel weather with low humidity and comfortable evening temperature 20°C.",
          "dressCode": "Smart casual attire. No tank tops, short skirts, or beachwear allowed inside the sanctuary gates.",
          "packingSuggestions": "Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 1 to 2 hours transfer"
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
      "Day 1: Arrival & Welcome at Mount Athos",
      "Day 2: Guided Sightseeing & Exploration of Mount Athos",
      "Day 3: Departure"
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
    "categoryLabel": "Christian Pilgrimage",
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
      "Christian Pilgrimage",
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
        "title": "Arrival & Settle in at Jerusalem",
        "location": "Jerusalem",
        "overview": "Welcome to your yatra. Arrive in Jerusalem, transfer to your stay, and rest before your sightseeing tour.",
        "schedule": {
          "morning": {
            "title": "Arrival & Check-in",
            "description": "Arrive at the nearest transit hub. Meet our coordinator and transfer to your pre-booked stay in Jerusalem."
          },
          "afternoon": {
            "title": "Leisure & Rest",
            "description": "Check into your hotel room, unpack your luggage, and rest to recover from your flight or train journey."
          },
          "evening": {
            "title": "Orientation Walk",
            "description": "Meet your local guide for a small walk around the neighborhood. Receive a detailed brief on local customs."
          }
        },
        "details": {
          "importantTimings": "Cathedral Mass: 7:00 AM, 9:00 AM | Sanctuary guided walks: 10:00 AM - 4:00 PM",
          "meals": "Welcome Drink & Buffet Dinner included (100% Satvik Veg).",
          "transport": "AC Shuttle Transit for close proximity site transfers and passenger drops.",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Vedic Heritage Inn (Ashram atmosphere, close to main shrines, Western toilets, hot water)",
          "weather": "Warm and sunny afternoon, ideal for outdoor sightseeing, average temp 24°C.",
          "dressCode": "Smart casual attire. No tank tops, short skirts, or beachwear allowed inside the sanctuary gates.",
          "packingSuggestions": "Comfortable travel footwear, photo ID, essential personal medication, daypack.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 1 to 2 hours transfer"
        }
      },
      {
        "day": 2,
        "title": "Explore Old City Jerusalem Heritage Centre",
        "location": "Jerusalem",
        "overview": "Spend your day visiting Old City Jerusalem Heritage Centre, the primary attraction in Old City Jerusalem, accompanied by our expert guide.",
        "schedule": {
          "morning": {
            "title": "Guided Tour of Old City Jerusalem Heritage Centre",
            "description": "Early morning visit to Old City Jerusalem Heritage Centre to avoid crowds. Learn about the heritage and unique history of this landmark."
          },
          "afternoon": {
            "title": "Local Traditional Lunch",
            "description": "Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings."
          },
          "evening": {
            "title": "Evening walk at Old City Jerusalem Panoramic Viewpoint",
            "description": "Stroll around Old City Jerusalem Panoramic Viewpoint for scenic sunset views. Capture great family photos as the evening lights turn on."
          }
        },
        "details": {
          "importantTimings": "Cathedral Mass: 7:00 AM, 9:00 AM | Sanctuary guided walks: 10:00 AM - 4:00 PM",
          "meals": "Complimentary Breakfast & Traditional Lunch (100% Satvik Veg).",
          "transport": "AC Private Sedan with professional local driver (includes first-aid kit and bottled water).",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Premium Pilgrim Hotel (AC rooms, elevator, clean linen, hot water, elevator access)",
          "weather": "Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.",
          "dressCode": "Smart casual attire. No tank tops, short skirts, or beachwear allowed inside the sanctuary gates.",
          "packingSuggestions": "Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 3 to 4 hours local tour"
        }
      },
      {
        "day": 3,
        "title": "Souvenir Shopping & Onward Departure",
        "location": "Jerusalem",
        "overview": "Conclude your memorable stay in Jerusalem with local craft shopping, checkout, and outbound transfers.",
        "schedule": {
          "morning": {
            "title": "Handicrafts Shopping",
            "description": "Visit local co-operative markets to buy traditional souvenirs, regional sweets, or native organic spices."
          },
          "afternoon": {
            "title": "Check-out & Packing",
            "description": "Return to your hotel, pack your bags, clear any local incidentals, and check out from your rooms."
          },
          "evening": {
            "title": "Outbound Transfer",
            "description": "Board your private vehicle transfer to the airport or railway station for your onward return journey home."
          }
        },
        "details": {
          "importantTimings": "Cathedral Mass: 7:00 AM, 9:00 AM | Sanctuary guided walks: 10:00 AM - 4:00 PM",
          "meals": "Breakfast & Special Dinner Buffet (100% Satvik Veg).",
          "transport": "AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Pilgrim Rest House (Safe, family-friendly rooms, walking distance to sacred sites)",
          "weather": "Perfect travel weather with low humidity and comfortable evening temperature 20°C.",
          "dressCode": "Smart casual attire. No tank tops, short skirts, or beachwear allowed inside the sanctuary gates.",
          "packingSuggestions": "Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 1 to 2 hours transfer"
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
      "Day 1: Arrival & Welcome at Old City Jerusalem",
      "Day 2: Guided Sightseeing & Exploration of Old City Jerusalem",
      "Day 3: Departure"
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
    "categoryLabel": "Christian Pilgrimage",
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
      "Christian Pilgrimage",
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
        "title": "Arrival & Settle in at Hautes-Pyrénées",
        "location": "Hautes-Pyrénées",
        "overview": "Welcome to your yatra. Arrive in Hautes-Pyrénées, transfer to your stay, and rest before your sightseeing tour.",
        "schedule": {
          "morning": {
            "title": "Arrival & Check-in",
            "description": "Arrive at the nearest transit hub. Meet our coordinator and transfer to your pre-booked stay in Hautes-Pyrénées."
          },
          "afternoon": {
            "title": "Leisure & Rest",
            "description": "Check into your hotel room, unpack your luggage, and rest to recover from your flight or train journey."
          },
          "evening": {
            "title": "Orientation Walk",
            "description": "Meet your local guide for a small walk around the neighborhood. Receive a detailed brief on local customs."
          }
        },
        "details": {
          "importantTimings": "Cathedral Mass: 7:00 AM, 9:00 AM | Sanctuary guided walks: 10:00 AM - 4:00 PM",
          "meals": "Welcome Drink & Buffet Dinner included (100% Satvik Veg).",
          "transport": "AC Shuttle Transit for close proximity site transfers and passenger drops.",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Vedic Heritage Inn (Ashram atmosphere, close to main shrines, Western toilets, hot water)",
          "weather": "Warm and sunny afternoon, ideal for outdoor sightseeing, average temp 24°C.",
          "dressCode": "Smart casual attire. No tank tops, short skirts, or beachwear allowed inside the sanctuary gates.",
          "packingSuggestions": "Comfortable travel footwear, photo ID, essential personal medication, daypack.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 1 to 2 hours transfer"
        }
      },
      {
        "day": 2,
        "title": "Explore Sanctuary of Our Lady of Lourdes Heritage Centre",
        "location": "Hautes-Pyrénées",
        "overview": "Spend your day visiting Sanctuary of Our Lady of Lourdes Heritage Centre, the primary attraction in Sanctuary of Our Lady of Lourdes, accompanied by our expert guide.",
        "schedule": {
          "morning": {
            "title": "Guided Tour of Sanctuary of Our Lady of Lourdes Heritage Centre",
            "description": "Early morning visit to Sanctuary of Our Lady of Lourdes Heritage Centre to avoid crowds. Learn about the heritage and unique history of this landmark."
          },
          "afternoon": {
            "title": "Local Traditional Lunch",
            "description": "Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings."
          },
          "evening": {
            "title": "Evening walk at Sanctuary of Our Lady of Lourdes Panoramic Viewpoint",
            "description": "Stroll around Sanctuary of Our Lady of Lourdes Panoramic Viewpoint for scenic sunset views. Capture great family photos as the evening lights turn on."
          }
        },
        "details": {
          "importantTimings": "Cathedral Mass: 7:00 AM, 9:00 AM | Sanctuary guided walks: 10:00 AM - 4:00 PM",
          "meals": "Complimentary Breakfast & Traditional Lunch (100% Satvik Veg).",
          "transport": "AC Private Sedan with professional local driver (includes first-aid kit and bottled water).",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Premium Pilgrim Hotel (AC rooms, elevator, clean linen, hot water, elevator access)",
          "weather": "Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.",
          "dressCode": "Smart casual attire. No tank tops, short skirts, or beachwear allowed inside the sanctuary gates.",
          "packingSuggestions": "Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 3 to 4 hours local tour"
        }
      },
      {
        "day": 3,
        "title": "Souvenir Shopping & Onward Departure",
        "location": "Hautes-Pyrénées",
        "overview": "Conclude your memorable stay in Hautes-Pyrénées with local craft shopping, checkout, and outbound transfers.",
        "schedule": {
          "morning": {
            "title": "Handicrafts Shopping",
            "description": "Visit local co-operative markets to buy traditional souvenirs, regional sweets, or native organic spices."
          },
          "afternoon": {
            "title": "Check-out & Packing",
            "description": "Return to your hotel, pack your bags, clear any local incidentals, and check out from your rooms."
          },
          "evening": {
            "title": "Outbound Transfer",
            "description": "Board your private vehicle transfer to the airport or railway station for your onward return journey home."
          }
        },
        "details": {
          "importantTimings": "Cathedral Mass: 7:00 AM, 9:00 AM | Sanctuary guided walks: 10:00 AM - 4:00 PM",
          "meals": "Breakfast & Special Dinner Buffet (100% Satvik Veg).",
          "transport": "AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Pilgrim Rest House (Safe, family-friendly rooms, walking distance to sacred sites)",
          "weather": "Perfect travel weather with low humidity and comfortable evening temperature 20°C.",
          "dressCode": "Smart casual attire. No tank tops, short skirts, or beachwear allowed inside the sanctuary gates.",
          "packingSuggestions": "Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 1 to 2 hours transfer"
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
      "Day 1: Arrival & Welcome at Sanctuary of Our Lady of Lourdes",
      "Day 2: Guided Sightseeing & Exploration of Sanctuary of Our Lady of Lourdes",
      "Day 3: Departure"
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
    "categoryLabel": "Christian Pilgrimage",
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
      "Christian Pilgrimage",
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
        "title": "Arrival & Settle in at Sololá",
        "location": "Sololá",
        "overview": "Welcome to your yatra. Arrive in Sololá, transfer to your stay, and rest before your sightseeing tour.",
        "schedule": {
          "morning": {
            "title": "Arrival & Check-in",
            "description": "Arrive at the nearest transit hub. Meet our coordinator and transfer to your pre-booked stay in Sololá."
          },
          "afternoon": {
            "title": "Leisure & Rest",
            "description": "Check into your hotel room, unpack your luggage, and rest to recover from your flight or train journey."
          },
          "evening": {
            "title": "Orientation Walk",
            "description": "Meet your local guide for a small walk around the neighborhood. Receive a detailed brief on local customs."
          }
        },
        "details": {
          "importantTimings": "Cathedral Mass: 7:00 AM, 9:00 AM | Sanctuary guided walks: 10:00 AM - 4:00 PM",
          "meals": "Welcome Drink & Buffet Dinner included (100% Satvik Veg).",
          "transport": "AC Shuttle Transit for close proximity site transfers and passenger drops.",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Vedic Heritage Inn (Ashram atmosphere, close to main shrines, Western toilets, hot water)",
          "weather": "Warm and sunny afternoon, ideal for outdoor sightseeing, average temp 24°C.",
          "dressCode": "Smart casual attire. No tank tops, short skirts, or beachwear allowed inside the sanctuary gates.",
          "packingSuggestions": "Comfortable travel footwear, photo ID, essential personal medication, daypack.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 1 to 2 hours transfer"
        }
      },
      {
        "day": 2,
        "title": "Explore Santiago Atitlán Heritage Centre",
        "location": "Sololá",
        "overview": "Spend your day visiting Santiago Atitlán Heritage Centre, the primary attraction in Santiago Atitlán, accompanied by our expert guide.",
        "schedule": {
          "morning": {
            "title": "Guided Tour of Santiago Atitlán Heritage Centre",
            "description": "Early morning visit to Santiago Atitlán Heritage Centre to avoid crowds. Learn about the heritage and unique history of this landmark."
          },
          "afternoon": {
            "title": "Local Traditional Lunch",
            "description": "Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings."
          },
          "evening": {
            "title": "Evening walk at Santiago Atitlán Panoramic Viewpoint",
            "description": "Stroll around Santiago Atitlán Panoramic Viewpoint for scenic sunset views. Capture great family photos as the evening lights turn on."
          }
        },
        "details": {
          "importantTimings": "Cathedral Mass: 7:00 AM, 9:00 AM | Sanctuary guided walks: 10:00 AM - 4:00 PM",
          "meals": "Complimentary Breakfast & Traditional Lunch (100% Satvik Veg).",
          "transport": "AC Private Sedan with professional local driver (includes first-aid kit and bottled water).",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Premium Pilgrim Hotel (AC rooms, elevator, clean linen, hot water, elevator access)",
          "weather": "Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.",
          "dressCode": "Smart casual attire. No tank tops, short skirts, or beachwear allowed inside the sanctuary gates.",
          "packingSuggestions": "Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 3 to 4 hours local tour"
        }
      },
      {
        "day": 3,
        "title": "Souvenir Shopping & Onward Departure",
        "location": "Sololá",
        "overview": "Conclude your memorable stay in Sololá with local craft shopping, checkout, and outbound transfers.",
        "schedule": {
          "morning": {
            "title": "Handicrafts Shopping",
            "description": "Visit local co-operative markets to buy traditional souvenirs, regional sweets, or native organic spices."
          },
          "afternoon": {
            "title": "Check-out & Packing",
            "description": "Return to your hotel, pack your bags, clear any local incidentals, and check out from your rooms."
          },
          "evening": {
            "title": "Outbound Transfer",
            "description": "Board your private vehicle transfer to the airport or railway station for your onward return journey home."
          }
        },
        "details": {
          "importantTimings": "Cathedral Mass: 7:00 AM, 9:00 AM | Sanctuary guided walks: 10:00 AM - 4:00 PM",
          "meals": "Breakfast & Special Dinner Buffet (100% Satvik Veg).",
          "transport": "AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Pilgrim Rest House (Safe, family-friendly rooms, walking distance to sacred sites)",
          "weather": "Perfect travel weather with low humidity and comfortable evening temperature 20°C.",
          "dressCode": "Smart casual attire. No tank tops, short skirts, or beachwear allowed inside the sanctuary gates.",
          "packingSuggestions": "Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 1 to 2 hours transfer"
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
      "Day 1: Arrival & Welcome at Santiago Atitlán",
      "Day 2: Guided Sightseeing & Exploration of Santiago Atitlán",
      "Day 3: Departure"
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
    "categoryLabel": "Christian Pilgrimage",
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
      "Christian Pilgrimage",
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
        "title": "Arrival & Settle in at São Paulo",
        "location": "São Paulo",
        "overview": "Welcome to your yatra. Arrive in São Paulo, transfer to your stay, and rest before your sightseeing tour.",
        "schedule": {
          "morning": {
            "title": "Arrival & Check-in",
            "description": "Arrive at the nearest transit hub. Meet our coordinator and transfer to your pre-booked stay in São Paulo."
          },
          "afternoon": {
            "title": "Leisure & Rest",
            "description": "Check into your hotel room, unpack your luggage, and rest to recover from your flight or train journey."
          },
          "evening": {
            "title": "Orientation Walk",
            "description": "Meet your local guide for a small walk around the neighborhood. Receive a detailed brief on local customs."
          }
        },
        "details": {
          "importantTimings": "Cathedral Mass: 7:00 AM, 9:00 AM | Sanctuary guided walks: 10:00 AM - 4:00 PM",
          "meals": "Welcome Drink & Buffet Dinner included (100% Satvik Veg).",
          "transport": "AC Shuttle Transit for close proximity site transfers and passenger drops.",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Vedic Heritage Inn (Ashram atmosphere, close to main shrines, Western toilets, hot water)",
          "weather": "Warm and sunny afternoon, ideal for outdoor sightseeing, average temp 24°C.",
          "dressCode": "Smart casual attire. No tank tops, short skirts, or beachwear allowed inside the sanctuary gates.",
          "packingSuggestions": "Comfortable travel footwear, photo ID, essential personal medication, daypack.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 1 to 2 hours transfer"
        }
      },
      {
        "day": 2,
        "title": "Explore Santuário de Nossa Senhora Aparecida Heritage Centre",
        "location": "São Paulo",
        "overview": "Spend your day visiting Santuário de Nossa Senhora Aparecida Heritage Centre, the primary attraction in Santuário de Nossa Senhora Aparecida, accompanied by our expert guide.",
        "schedule": {
          "morning": {
            "title": "Guided Tour of Santuário de Nossa Senhora Aparecida Heritage Centre",
            "description": "Early morning visit to Santuário de Nossa Senhora Aparecida Heritage Centre to avoid crowds. Learn about the heritage and unique history of this landmark."
          },
          "afternoon": {
            "title": "Local Traditional Lunch",
            "description": "Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings."
          },
          "evening": {
            "title": "Evening walk at Santuário de Nossa Senhora Aparecida Panoramic Viewpoint",
            "description": "Stroll around Santuário de Nossa Senhora Aparecida Panoramic Viewpoint for scenic sunset views. Capture great family photos as the evening lights turn on."
          }
        },
        "details": {
          "importantTimings": "Cathedral Mass: 7:00 AM, 9:00 AM | Sanctuary guided walks: 10:00 AM - 4:00 PM",
          "meals": "Complimentary Breakfast & Traditional Lunch (100% Satvik Veg).",
          "transport": "AC Private Sedan with professional local driver (includes first-aid kit and bottled water).",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Premium Pilgrim Hotel (AC rooms, elevator, clean linen, hot water, elevator access)",
          "weather": "Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.",
          "dressCode": "Smart casual attire. No tank tops, short skirts, or beachwear allowed inside the sanctuary gates.",
          "packingSuggestions": "Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 3 to 4 hours local tour"
        }
      },
      {
        "day": 3,
        "title": "Souvenir Shopping & Onward Departure",
        "location": "São Paulo",
        "overview": "Conclude your memorable stay in São Paulo with local craft shopping, checkout, and outbound transfers.",
        "schedule": {
          "morning": {
            "title": "Handicrafts Shopping",
            "description": "Visit local co-operative markets to buy traditional souvenirs, regional sweets, or native organic spices."
          },
          "afternoon": {
            "title": "Check-out & Packing",
            "description": "Return to your hotel, pack your bags, clear any local incidentals, and check out from your rooms."
          },
          "evening": {
            "title": "Outbound Transfer",
            "description": "Board your private vehicle transfer to the airport or railway station for your onward return journey home."
          }
        },
        "details": {
          "importantTimings": "Cathedral Mass: 7:00 AM, 9:00 AM | Sanctuary guided walks: 10:00 AM - 4:00 PM",
          "meals": "Breakfast & Special Dinner Buffet (100% Satvik Veg).",
          "transport": "AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Pilgrim Rest House (Safe, family-friendly rooms, walking distance to sacred sites)",
          "weather": "Perfect travel weather with low humidity and comfortable evening temperature 20°C.",
          "dressCode": "Smart casual attire. No tank tops, short skirts, or beachwear allowed inside the sanctuary gates.",
          "packingSuggestions": "Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 1 to 2 hours transfer"
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
      "Day 1: Arrival & Welcome at Santuário de Nossa Senhora Aparecida",
      "Day 2: Guided Sightseeing & Exploration of Santuário de Nossa Senhora Aparecida",
      "Day 3: Departure"
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
    "categoryLabel": "Christian Pilgrimage",
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
      "Christian Pilgrimage",
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
        "title": "Arrival & Settle in at Vatican City",
        "location": "Vatican City",
        "overview": "Welcome to your yatra. Arrive in Vatican City, transfer to your stay, and rest before your sightseeing tour.",
        "schedule": {
          "morning": {
            "title": "Arrival & Check-in",
            "description": "Arrive at the nearest transit hub. Meet our coordinator and transfer to your pre-booked stay in Vatican City."
          },
          "afternoon": {
            "title": "Leisure & Rest",
            "description": "Check into your hotel room, unpack your luggage, and rest to recover from your flight or train journey."
          },
          "evening": {
            "title": "Orientation Walk",
            "description": "Meet your local guide for a small walk around the neighborhood. Receive a detailed brief on local customs."
          }
        },
        "details": {
          "importantTimings": "Cathedral Mass: 7:00 AM, 9:00 AM | Sanctuary guided walks: 10:00 AM - 4:00 PM",
          "meals": "Welcome Drink & Buffet Dinner included (100% Satvik Veg).",
          "transport": "AC Shuttle Transit for close proximity site transfers and passenger drops.",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Vedic Heritage Inn (Ashram atmosphere, close to main shrines, Western toilets, hot water)",
          "weather": "Warm and sunny afternoon, ideal for outdoor sightseeing, average temp 24°C.",
          "dressCode": "Smart casual attire. No tank tops, short skirts, or beachwear allowed inside the sanctuary gates.",
          "packingSuggestions": "Comfortable travel footwear, photo ID, essential personal medication, daypack.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 1 to 2 hours transfer"
        }
      },
      {
        "day": 2,
        "title": "Explore Vatican City Heritage Centre",
        "location": "Vatican City",
        "overview": "Spend your day visiting Vatican City Heritage Centre, the primary attraction in Vatican City, accompanied by our expert guide.",
        "schedule": {
          "morning": {
            "title": "Guided Tour of Vatican City Heritage Centre",
            "description": "Early morning visit to Vatican City Heritage Centre to avoid crowds. Learn about the heritage and unique history of this landmark."
          },
          "afternoon": {
            "title": "Local Traditional Lunch",
            "description": "Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings."
          },
          "evening": {
            "title": "Evening walk at Vatican City Panoramic Viewpoint",
            "description": "Stroll around Vatican City Panoramic Viewpoint for scenic sunset views. Capture great family photos as the evening lights turn on."
          }
        },
        "details": {
          "importantTimings": "Cathedral Mass: 7:00 AM, 9:00 AM | Sanctuary guided walks: 10:00 AM - 4:00 PM",
          "meals": "Complimentary Breakfast & Traditional Lunch (100% Satvik Veg).",
          "transport": "AC Private Sedan with professional local driver (includes first-aid kit and bottled water).",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Premium Pilgrim Hotel (AC rooms, elevator, clean linen, hot water, elevator access)",
          "weather": "Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.",
          "dressCode": "Smart casual attire. No tank tops, short skirts, or beachwear allowed inside the sanctuary gates.",
          "packingSuggestions": "Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 3 to 4 hours local tour"
        }
      },
      {
        "day": 3,
        "title": "Souvenir Shopping & Onward Departure",
        "location": "Vatican City",
        "overview": "Conclude your memorable stay in Vatican City with local craft shopping, checkout, and outbound transfers.",
        "schedule": {
          "morning": {
            "title": "Handicrafts Shopping",
            "description": "Visit local co-operative markets to buy traditional souvenirs, regional sweets, or native organic spices."
          },
          "afternoon": {
            "title": "Check-out & Packing",
            "description": "Return to your hotel, pack your bags, clear any local incidentals, and check out from your rooms."
          },
          "evening": {
            "title": "Outbound Transfer",
            "description": "Board your private vehicle transfer to the airport or railway station for your onward return journey home."
          }
        },
        "details": {
          "importantTimings": "Cathedral Mass: 7:00 AM, 9:00 AM | Sanctuary guided walks: 10:00 AM - 4:00 PM",
          "meals": "Breakfast & Special Dinner Buffet (100% Satvik Veg).",
          "transport": "AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Pilgrim Rest House (Safe, family-friendly rooms, walking distance to sacred sites)",
          "weather": "Perfect travel weather with low humidity and comfortable evening temperature 20°C.",
          "dressCode": "Smart casual attire. No tank tops, short skirts, or beachwear allowed inside the sanctuary gates.",
          "packingSuggestions": "Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 1 to 2 hours transfer"
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
      "Day 1: Arrival & Welcome at Vatican City",
      "Day 2: Guided Sightseeing & Exploration of Vatican City",
      "Day 3: Departure"
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
    "categoryLabel": "Hindu Pilgrimage",
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
      "Hindu Pilgrimage",
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
        "title": "Arrival & Settle in at Ratnapura",
        "location": "Ratnapura",
        "overview": "Welcome to your yatra. Arrive in Ratnapura, transfer to your stay, and rest before your sightseeing tour.",
        "schedule": {
          "morning": {
            "title": "Arrival & Check-in",
            "description": "Arrive at the nearest transit hub. Meet our coordinator and transfer to your pre-booked stay in Ratnapura."
          },
          "afternoon": {
            "title": "Leisure & Rest",
            "description": "Check into your hotel room, unpack your luggage, and rest to recover from your flight or train journey."
          },
          "evening": {
            "title": "Orientation Walk",
            "description": "Meet your local guide for a small walk around the neighborhood. Receive a detailed brief on local customs."
          }
        },
        "details": {
          "importantTimings": "Temple Darshan: 6:00 AM - 12:30 PM, 4:30 PM - 8:30 PM | Evening Aarti: 6:30 PM",
          "meals": "Welcome Drink & Buffet Dinner included (100% Satvik Veg).",
          "transport": "AC Shuttle Transit for close proximity site transfers and passenger drops.",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Vedic Heritage Inn (Ashram atmosphere, close to main shrines, Western toilets, hot water)",
          "weather": "Warm and sunny afternoon, ideal for outdoor sightseeing, average temp 24°C.",
          "dressCode": "Traditional wear. Dhoti or Pyjama-Kurta for men; Saree or Salwar suit for women. Sleeveless strictly prohibited.",
          "packingSuggestions": "Comfortable travel footwear, photo ID, essential personal medication, daypack.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 1 to 2 hours transfer"
        }
      },
      {
        "day": 2,
        "title": "Explore Adam’s Peak (Sri Pada) Heritage Centre",
        "location": "Ratnapura",
        "overview": "Spend your day visiting Adam’s Peak (Sri Pada) Heritage Centre, the primary attraction in Adam’s Peak (Sri Pada), accompanied by our expert guide.",
        "schedule": {
          "morning": {
            "title": "Guided Tour of Adam’s Peak (Sri Pada) Heritage Centre",
            "description": "Early morning visit to Adam’s Peak (Sri Pada) Heritage Centre to avoid crowds. Learn about the heritage and unique history of this landmark."
          },
          "afternoon": {
            "title": "Local Traditional Lunch",
            "description": "Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings."
          },
          "evening": {
            "title": "Evening walk at Adam’s Peak (Sri Pada) Panoramic Viewpoint",
            "description": "Stroll around Adam’s Peak (Sri Pada) Panoramic Viewpoint for scenic sunset views. Capture great family photos as the evening lights turn on."
          }
        },
        "details": {
          "importantTimings": "Temple Darshan: 6:00 AM - 12:30 PM, 4:30 PM - 8:30 PM | Evening Aarti: 6:30 PM",
          "meals": "Complimentary Breakfast & Traditional Lunch (100% Satvik Veg).",
          "transport": "AC Private Sedan with professional local driver (includes first-aid kit and bottled water).",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Premium Pilgrim Hotel (AC rooms, elevator, clean linen, hot water, elevator access)",
          "weather": "Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.",
          "dressCode": "Traditional wear. Dhoti or Pyjama-Kurta for men; Saree or Salwar suit for women. Sleeveless strictly prohibited.",
          "packingSuggestions": "Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 3 to 4 hours local tour"
        }
      },
      {
        "day": 3,
        "title": "Souvenir Shopping & Onward Departure",
        "location": "Ratnapura",
        "overview": "Conclude your memorable stay in Ratnapura with local craft shopping, checkout, and outbound transfers.",
        "schedule": {
          "morning": {
            "title": "Handicrafts Shopping",
            "description": "Visit local co-operative markets to buy traditional souvenirs, regional sweets, or native organic spices."
          },
          "afternoon": {
            "title": "Check-out & Packing",
            "description": "Return to your hotel, pack your bags, clear any local incidentals, and check out from your rooms."
          },
          "evening": {
            "title": "Outbound Transfer",
            "description": "Board your private vehicle transfer to the airport or railway station for your onward return journey home."
          }
        },
        "details": {
          "importantTimings": "Temple Darshan: 6:00 AM - 12:30 PM, 4:30 PM - 8:30 PM | Evening Aarti: 6:30 PM",
          "meals": "Breakfast & Special Dinner Buffet (100% Satvik Veg).",
          "transport": "AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Pilgrim Rest House (Safe, family-friendly rooms, walking distance to sacred sites)",
          "weather": "Perfect travel weather with low humidity and comfortable evening temperature 20°C.",
          "dressCode": "Traditional wear. Dhoti or Pyjama-Kurta for men; Saree or Salwar suit for women. Sleeveless strictly prohibited.",
          "packingSuggestions": "Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 1 to 2 hours transfer"
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
      "Day 1: Arrival & Welcome at Adam’s Peak (Sri Pada)",
      "Day 2: Guided Sightseeing & Exploration of Adam’s Peak (Sri Pada)",
      "Day 3: Departure"
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
    "categoryLabel": "Hindu Pilgrimage",
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
      "Hindu Pilgrimage",
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
        "title": "Arrival & Settle in at Chamoli",
        "location": "Chamoli",
        "overview": "Welcome to your yatra. Arrive in Chamoli, transfer to your stay, and rest before your sightseeing tour.",
        "schedule": {
          "morning": {
            "title": "Arrival & Check-in",
            "description": "Arrive at the nearest transit hub. Meet our coordinator and transfer to your pre-booked stay in Chamoli."
          },
          "afternoon": {
            "title": "Leisure & Rest",
            "description": "Check into your hotel room, unpack your luggage, and rest to recover from your flight or train journey."
          },
          "evening": {
            "title": "Orientation Walk",
            "description": "Meet your local guide for a small walk around the neighborhood. Receive a detailed brief on local customs."
          }
        },
        "details": {
          "importantTimings": "Temple Darshan: 6:00 AM - 12:30 PM, 4:30 PM - 8:30 PM | Evening Aarti: 6:30 PM",
          "meals": "Welcome Drink & Buffet Dinner included (100% Satvik Veg).",
          "transport": "AC Shuttle Transit for close proximity site transfers and passenger drops.",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Vedic Heritage Inn (Ashram atmosphere, close to main shrines, Western toilets, hot water)",
          "weather": "Warm and sunny afternoon, ideal for outdoor sightseeing, average temp 24°C.",
          "dressCode": "Traditional wear. Dhoti or Pyjama-Kurta for men; Saree or Salwar suit for women. Sleeveless strictly prohibited.",
          "packingSuggestions": "Comfortable travel footwear, photo ID, essential personal medication, daypack.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 1 to 2 hours transfer"
        }
      },
      {
        "day": 2,
        "title": "Explore Badrinath Heritage Centre",
        "location": "Chamoli",
        "overview": "Spend your day visiting Badrinath Heritage Centre, the primary attraction in Badrinath, accompanied by our expert guide.",
        "schedule": {
          "morning": {
            "title": "Guided Tour of Badrinath Heritage Centre",
            "description": "Early morning visit to Badrinath Heritage Centre to avoid crowds. Learn about the heritage and unique history of this landmark."
          },
          "afternoon": {
            "title": "Local Traditional Lunch",
            "description": "Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings."
          },
          "evening": {
            "title": "Evening walk at Badrinath Panoramic Viewpoint",
            "description": "Stroll around Badrinath Panoramic Viewpoint for scenic sunset views. Capture great family photos as the evening lights turn on."
          }
        },
        "details": {
          "importantTimings": "Temple Darshan: 6:00 AM - 12:30 PM, 4:30 PM - 8:30 PM | Evening Aarti: 6:30 PM",
          "meals": "Complimentary Breakfast & Traditional Lunch (100% Satvik Veg).",
          "transport": "AC Private Sedan with professional local driver (includes first-aid kit and bottled water).",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Premium Pilgrim Hotel (AC rooms, elevator, clean linen, hot water, elevator access)",
          "weather": "Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.",
          "dressCode": "Traditional wear. Dhoti or Pyjama-Kurta for men; Saree or Salwar suit for women. Sleeveless strictly prohibited.",
          "packingSuggestions": "Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 3 to 4 hours local tour"
        }
      },
      {
        "day": 3,
        "title": "Souvenir Shopping & Onward Departure",
        "location": "Chamoli",
        "overview": "Conclude your memorable stay in Chamoli with local craft shopping, checkout, and outbound transfers.",
        "schedule": {
          "morning": {
            "title": "Handicrafts Shopping",
            "description": "Visit local co-operative markets to buy traditional souvenirs, regional sweets, or native organic spices."
          },
          "afternoon": {
            "title": "Check-out & Packing",
            "description": "Return to your hotel, pack your bags, clear any local incidentals, and check out from your rooms."
          },
          "evening": {
            "title": "Outbound Transfer",
            "description": "Board your private vehicle transfer to the airport or railway station for your onward return journey home."
          }
        },
        "details": {
          "importantTimings": "Temple Darshan: 6:00 AM - 12:30 PM, 4:30 PM - 8:30 PM | Evening Aarti: 6:30 PM",
          "meals": "Breakfast & Special Dinner Buffet (100% Satvik Veg).",
          "transport": "AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Pilgrim Rest House (Safe, family-friendly rooms, walking distance to sacred sites)",
          "weather": "Perfect travel weather with low humidity and comfortable evening temperature 20°C.",
          "dressCode": "Traditional wear. Dhoti or Pyjama-Kurta for men; Saree or Salwar suit for women. Sleeveless strictly prohibited.",
          "packingSuggestions": "Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 1 to 2 hours transfer"
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
      "Day 1: Arrival & Welcome at Badrinath",
      "Day 2: Guided Sightseeing & Exploration of Badrinath",
      "Day 3: Departure"
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
    "categoryLabel": "Hindu Pilgrimage",
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
      "Hindu Pilgrimage",
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
        "title": "Arrival & Settle in at Dwarka",
        "location": "Dwarka",
        "overview": "Welcome to your yatra. Arrive in Dwarka, transfer to your stay, and rest before your sightseeing tour.",
        "schedule": {
          "morning": {
            "title": "Arrival & Check-in",
            "description": "Arrive at the nearest transit hub. Meet our coordinator and transfer to your pre-booked stay in Dwarka."
          },
          "afternoon": {
            "title": "Leisure & Rest",
            "description": "Check into your hotel room, unpack your luggage, and rest to recover from your flight or train journey."
          },
          "evening": {
            "title": "Orientation Walk",
            "description": "Meet your local guide for a small walk around the neighborhood. Receive a detailed brief on local customs."
          }
        },
        "details": {
          "importantTimings": "Temple Darshan: 6:00 AM - 12:30 PM, 4:30 PM - 8:30 PM | Evening Aarti: 6:30 PM",
          "meals": "Welcome Drink & Buffet Dinner included (100% Satvik Veg).",
          "transport": "AC Shuttle Transit for close proximity site transfers and passenger drops.",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Vedic Heritage Inn (Ashram atmosphere, close to main shrines, Western toilets, hot water)",
          "weather": "Warm and sunny afternoon, ideal for outdoor sightseeing, average temp 24°C.",
          "dressCode": "Traditional wear. Dhoti or Pyjama-Kurta for men; Saree or Salwar suit for women. Sleeveless strictly prohibited.",
          "packingSuggestions": "Comfortable travel footwear, photo ID, essential personal medication, daypack.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 1 to 2 hours transfer"
        }
      },
      {
        "day": 2,
        "title": "Explore Dwarkadhish Temple Heritage Centre",
        "location": "Dwarka",
        "overview": "Spend your day visiting Dwarkadhish Temple Heritage Centre, the primary attraction in Dwarkadhish Temple, accompanied by our expert guide.",
        "schedule": {
          "morning": {
            "title": "Guided Tour of Dwarkadhish Temple Heritage Centre",
            "description": "Early morning visit to Dwarkadhish Temple Heritage Centre to avoid crowds. Learn about the heritage and unique history of this landmark."
          },
          "afternoon": {
            "title": "Local Traditional Lunch",
            "description": "Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings."
          },
          "evening": {
            "title": "Evening walk at Dwarkadhish Temple Panoramic Viewpoint",
            "description": "Stroll around Dwarkadhish Temple Panoramic Viewpoint for scenic sunset views. Capture great family photos as the evening lights turn on."
          }
        },
        "details": {
          "importantTimings": "Temple Darshan: 6:00 AM - 12:30 PM, 4:30 PM - 8:30 PM | Evening Aarti: 6:30 PM",
          "meals": "Complimentary Breakfast & Traditional Lunch (100% Satvik Veg).",
          "transport": "AC Private Sedan with professional local driver (includes first-aid kit and bottled water).",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Premium Pilgrim Hotel (AC rooms, elevator, clean linen, hot water, elevator access)",
          "weather": "Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.",
          "dressCode": "Traditional wear. Dhoti or Pyjama-Kurta for men; Saree or Salwar suit for women. Sleeveless strictly prohibited.",
          "packingSuggestions": "Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 3 to 4 hours local tour"
        }
      },
      {
        "day": 3,
        "title": "Souvenir Shopping & Onward Departure",
        "location": "Dwarka",
        "overview": "Conclude your memorable stay in Dwarka with local craft shopping, checkout, and outbound transfers.",
        "schedule": {
          "morning": {
            "title": "Handicrafts Shopping",
            "description": "Visit local co-operative markets to buy traditional souvenirs, regional sweets, or native organic spices."
          },
          "afternoon": {
            "title": "Check-out & Packing",
            "description": "Return to your hotel, pack your bags, clear any local incidentals, and check out from your rooms."
          },
          "evening": {
            "title": "Outbound Transfer",
            "description": "Board your private vehicle transfer to the airport or railway station for your onward return journey home."
          }
        },
        "details": {
          "importantTimings": "Temple Darshan: 6:00 AM - 12:30 PM, 4:30 PM - 8:30 PM | Evening Aarti: 6:30 PM",
          "meals": "Breakfast & Special Dinner Buffet (100% Satvik Veg).",
          "transport": "AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Pilgrim Rest House (Safe, family-friendly rooms, walking distance to sacred sites)",
          "weather": "Perfect travel weather with low humidity and comfortable evening temperature 20°C.",
          "dressCode": "Traditional wear. Dhoti or Pyjama-Kurta for men; Saree or Salwar suit for women. Sleeveless strictly prohibited.",
          "packingSuggestions": "Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 1 to 2 hours transfer"
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
      "Day 1: Arrival & Welcome at Dwarkadhish Temple",
      "Day 2: Guided Sightseeing & Exploration of Dwarkadhish Temple",
      "Day 3: Departure"
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
    "categoryLabel": "Hindu Pilgrimage",
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
      "Hindu Pilgrimage",
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
        "title": "Arrival & Settle in at Amritsar",
        "location": "Amritsar",
        "overview": "Welcome to your yatra. Arrive in Amritsar, transfer to your stay, and rest before your sightseeing tour.",
        "schedule": {
          "morning": {
            "title": "Arrival & Check-in",
            "description": "Arrive at the nearest transit hub. Meet our coordinator and transfer to your pre-booked stay in Amritsar."
          },
          "afternoon": {
            "title": "Leisure & Rest",
            "description": "Check into your hotel room, unpack your luggage, and rest to recover from your flight or train journey."
          },
          "evening": {
            "title": "Orientation Walk",
            "description": "Meet your local guide for a small walk around the neighborhood. Receive a detailed brief on local customs."
          }
        },
        "details": {
          "importantTimings": "Temple Darshan: 6:00 AM - 12:30 PM, 4:30 PM - 8:30 PM | Evening Aarti: 6:30 PM",
          "meals": "Welcome Drink & Buffet Dinner included (100% Satvik Veg).",
          "transport": "AC Shuttle Transit for close proximity site transfers and passenger drops.",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Vedic Heritage Inn (Ashram atmosphere, close to main shrines, Western toilets, hot water)",
          "weather": "Warm and sunny afternoon, ideal for outdoor sightseeing, average temp 24°C.",
          "dressCode": "Traditional wear. Dhoti or Pyjama-Kurta for men; Saree or Salwar suit for women. Sleeveless strictly prohibited.",
          "packingSuggestions": "Comfortable travel footwear, photo ID, essential personal medication, daypack.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 1 to 2 hours transfer"
        }
      },
      {
        "day": 2,
        "title": "Explore Golden Temple Heritage Centre",
        "location": "Amritsar",
        "overview": "Spend your day visiting Golden Temple Heritage Centre, the primary attraction in Golden Temple, accompanied by our expert guide.",
        "schedule": {
          "morning": {
            "title": "Guided Tour of Golden Temple Heritage Centre",
            "description": "Early morning visit to Golden Temple Heritage Centre to avoid crowds. Learn about the heritage and unique history of this landmark."
          },
          "afternoon": {
            "title": "Local Traditional Lunch",
            "description": "Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings."
          },
          "evening": {
            "title": "Evening walk at Golden Temple Panoramic Viewpoint",
            "description": "Stroll around Golden Temple Panoramic Viewpoint for scenic sunset views. Capture great family photos as the evening lights turn on."
          }
        },
        "details": {
          "importantTimings": "Temple Darshan: 6:00 AM - 12:30 PM, 4:30 PM - 8:30 PM | Evening Aarti: 6:30 PM",
          "meals": "Complimentary Breakfast & Traditional Lunch (100% Satvik Veg).",
          "transport": "AC Private Sedan with professional local driver (includes first-aid kit and bottled water).",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Premium Pilgrim Hotel (AC rooms, elevator, clean linen, hot water, elevator access)",
          "weather": "Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.",
          "dressCode": "Traditional wear. Dhoti or Pyjama-Kurta for men; Saree or Salwar suit for women. Sleeveless strictly prohibited.",
          "packingSuggestions": "Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 3 to 4 hours local tour"
        }
      },
      {
        "day": 3,
        "title": "Souvenir Shopping & Onward Departure",
        "location": "Amritsar",
        "overview": "Conclude your memorable stay in Amritsar with local craft shopping, checkout, and outbound transfers.",
        "schedule": {
          "morning": {
            "title": "Handicrafts Shopping",
            "description": "Visit local co-operative markets to buy traditional souvenirs, regional sweets, or native organic spices."
          },
          "afternoon": {
            "title": "Check-out & Packing",
            "description": "Return to your hotel, pack your bags, clear any local incidentals, and check out from your rooms."
          },
          "evening": {
            "title": "Outbound Transfer",
            "description": "Board your private vehicle transfer to the airport or railway station for your onward return journey home."
          }
        },
        "details": {
          "importantTimings": "Temple Darshan: 6:00 AM - 12:30 PM, 4:30 PM - 8:30 PM | Evening Aarti: 6:30 PM",
          "meals": "Breakfast & Special Dinner Buffet (100% Satvik Veg).",
          "transport": "AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Pilgrim Rest House (Safe, family-friendly rooms, walking distance to sacred sites)",
          "weather": "Perfect travel weather with low humidity and comfortable evening temperature 20°C.",
          "dressCode": "Traditional wear. Dhoti or Pyjama-Kurta for men; Saree or Salwar suit for women. Sleeveless strictly prohibited.",
          "packingSuggestions": "Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 1 to 2 hours transfer"
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
      "Day 1: Arrival & Welcome at Golden Temple",
      "Day 2: Guided Sightseeing & Exploration of Golden Temple",
      "Day 3: Departure"
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
    "categoryLabel": "Hindu Pilgrimage",
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
      "Hindu Pilgrimage",
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
        "title": "Arrival & Settle in at Uttarakhand",
        "location": "Uttarakhand",
        "overview": "Welcome to your yatra. Arrive in Uttarakhand, transfer to your stay, and rest before your sightseeing tour.",
        "schedule": {
          "morning": {
            "title": "Arrival & Check-in",
            "description": "Arrive at the nearest transit hub. Meet our coordinator and transfer to your pre-booked stay in Uttarakhand."
          },
          "afternoon": {
            "title": "Leisure & Rest",
            "description": "Check into your hotel room, unpack your luggage, and rest to recover from your flight or train journey."
          },
          "evening": {
            "title": "Orientation Walk",
            "description": "Meet your local guide for a small walk around the neighborhood. Receive a detailed brief on local customs."
          }
        },
        "details": {
          "importantTimings": "Temple Darshan: 6:00 AM - 12:30 PM, 4:30 PM - 8:30 PM | Evening Aarti: 6:30 PM",
          "meals": "Welcome Drink & Buffet Dinner included (100% Satvik Veg).",
          "transport": "AC Shuttle Transit for close proximity site transfers and passenger drops.",
          "walkingLevel": "Moderate Paced (Gentle staircases, guide assistance available)",
          "stay": "Vedic Heritage Inn (Ashram atmosphere, close to main shrines, Western toilets, hot water)",
          "weather": "Warm and sunny afternoon, ideal for outdoor sightseeing, average temp 24°C.",
          "dressCode": "Traditional wear. Dhoti or Pyjama-Kurta for men; Saree or Salwar suit for women. Sleeveless strictly prohibited.",
          "packingSuggestions": "Comfortable travel footwear, photo ID, essential personal medication, daypack.",
          "accessibility": "Not recommended for guests requiring wheelchair support due to steep stairs and terrain.",
          "visitorNote": "Expect moderate physical movement. Wear athletic shoes with excellent grip.",
          "travelDuration": "Approx. 1 to 2 hours transfer"
        }
      },
      {
        "day": 2,
        "title": "Explore Haridwar & Rishikesh Heritage Centre",
        "location": "Uttarakhand",
        "overview": "Spend your day visiting Haridwar & Rishikesh Heritage Centre, the primary attraction in Haridwar & Rishikesh, accompanied by our expert guide.",
        "schedule": {
          "morning": {
            "title": "Guided Tour of Haridwar & Rishikesh Heritage Centre",
            "description": "Early morning visit to Haridwar & Rishikesh Heritage Centre to avoid crowds. Learn about the heritage and unique history of this landmark."
          },
          "afternoon": {
            "title": "Local Traditional Lunch",
            "description": "Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings."
          },
          "evening": {
            "title": "Evening walk at Haridwar & Rishikesh Panoramic Viewpoint",
            "description": "Stroll around Haridwar & Rishikesh Panoramic Viewpoint for scenic sunset views. Capture great family photos as the evening lights turn on."
          }
        },
        "details": {
          "importantTimings": "Temple Darshan: 6:00 AM - 12:30 PM, 4:30 PM - 8:30 PM | Evening Aarti: 6:30 PM",
          "meals": "Complimentary Breakfast & Traditional Lunch (100% Satvik Veg).",
          "transport": "AC Private Sedan with professional local driver (includes first-aid kit and bottled water).",
          "walkingLevel": "Moderate Paced (Gentle staircases, guide assistance available)",
          "stay": "Premium Pilgrim Hotel (AC rooms, elevator, clean linen, hot water, elevator access)",
          "weather": "Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.",
          "dressCode": "Traditional wear. Dhoti or Pyjama-Kurta for men; Saree or Salwar suit for women. Sleeveless strictly prohibited.",
          "packingSuggestions": "Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.",
          "accessibility": "Not recommended for guests requiring wheelchair support due to steep stairs and terrain.",
          "visitorNote": "Expect moderate physical movement. Wear athletic shoes with excellent grip.",
          "travelDuration": "Approx. 3 to 4 hours local tour"
        }
      },
      {
        "day": 3,
        "title": "Souvenir Shopping & Onward Departure",
        "location": "Uttarakhand",
        "overview": "Conclude your memorable stay in Uttarakhand with local craft shopping, checkout, and outbound transfers.",
        "schedule": {
          "morning": {
            "title": "Handicrafts Shopping",
            "description": "Visit local co-operative markets to buy traditional souvenirs, regional sweets, or native organic spices."
          },
          "afternoon": {
            "title": "Check-out & Packing",
            "description": "Return to your hotel, pack your bags, clear any local incidentals, and check out from your rooms."
          },
          "evening": {
            "title": "Outbound Transfer",
            "description": "Board your private vehicle transfer to the airport or railway station for your onward return journey home."
          }
        },
        "details": {
          "importantTimings": "Temple Darshan: 6:00 AM - 12:30 PM, 4:30 PM - 8:30 PM | Evening Aarti: 6:30 PM",
          "meals": "Breakfast & Special Dinner Buffet (100% Satvik Veg).",
          "transport": "AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).",
          "walkingLevel": "Moderate Paced (Gentle staircases, guide assistance available)",
          "stay": "Pilgrim Rest House (Safe, family-friendly rooms, walking distance to sacred sites)",
          "weather": "Perfect travel weather with low humidity and comfortable evening temperature 20°C.",
          "dressCode": "Traditional wear. Dhoti or Pyjama-Kurta for men; Saree or Salwar suit for women. Sleeveless strictly prohibited.",
          "packingSuggestions": "Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.",
          "accessibility": "Not recommended for guests requiring wheelchair support due to steep stairs and terrain.",
          "visitorNote": "Expect moderate physical movement. Wear athletic shoes with excellent grip.",
          "travelDuration": "Approx. 1 to 2 hours transfer"
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
      "Day 1: Arrival & Welcome at Haridwar & Rishikesh",
      "Day 2: Guided Sightseeing & Exploration of Haridwar & Rishikesh",
      "Day 3: Departure"
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
    "categoryLabel": "Hindu Pilgrimage",
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
      "Hindu Pilgrimage",
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
        "title": "Arrival & Settle in at Puri",
        "location": "Puri",
        "overview": "Welcome to your yatra. Arrive in Puri, transfer to your stay, and rest before your sightseeing tour.",
        "schedule": {
          "morning": {
            "title": "Arrival & Check-in",
            "description": "Arrive at the nearest transit hub. Meet our coordinator and transfer to your pre-booked stay in Puri."
          },
          "afternoon": {
            "title": "Leisure & Rest",
            "description": "Check into your hotel room, unpack your luggage, and rest to recover from your flight or train journey."
          },
          "evening": {
            "title": "Orientation Walk",
            "description": "Meet your local guide for a small walk around the neighborhood. Receive a detailed brief on local customs."
          }
        },
        "details": {
          "importantTimings": "Temple Darshan: 6:00 AM - 12:30 PM, 4:30 PM - 8:30 PM | Evening Aarti: 6:30 PM",
          "meals": "Welcome Drink & Buffet Dinner included (100% Satvik Veg).",
          "transport": "AC Shuttle Transit for close proximity site transfers and passenger drops.",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Vedic Heritage Inn (Ashram atmosphere, close to main shrines, Western toilets, hot water)",
          "weather": "Warm and sunny afternoon, ideal for outdoor sightseeing, average temp 24°C.",
          "dressCode": "Traditional wear. Dhoti or Pyjama-Kurta for men; Saree or Salwar suit for women. Sleeveless strictly prohibited.",
          "packingSuggestions": "Comfortable travel footwear, photo ID, essential personal medication, daypack.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 1 to 2 hours transfer"
        }
      },
      {
        "day": 2,
        "title": "Explore Jagannath Temple Heritage Centre",
        "location": "Puri",
        "overview": "Spend your day visiting Jagannath Temple Heritage Centre, the primary attraction in Jagannath Temple, accompanied by our expert guide.",
        "schedule": {
          "morning": {
            "title": "Guided Tour of Jagannath Temple Heritage Centre",
            "description": "Early morning visit to Jagannath Temple Heritage Centre to avoid crowds. Learn about the heritage and unique history of this landmark."
          },
          "afternoon": {
            "title": "Local Traditional Lunch",
            "description": "Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings."
          },
          "evening": {
            "title": "Evening walk at Jagannath Temple Panoramic Viewpoint",
            "description": "Stroll around Jagannath Temple Panoramic Viewpoint for scenic sunset views. Capture great family photos as the evening lights turn on."
          }
        },
        "details": {
          "importantTimings": "Temple Darshan: 6:00 AM - 12:30 PM, 4:30 PM - 8:30 PM | Evening Aarti: 6:30 PM",
          "meals": "Complimentary Breakfast & Traditional Lunch (100% Satvik Veg).",
          "transport": "AC Private Sedan with professional local driver (includes first-aid kit and bottled water).",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Premium Pilgrim Hotel (AC rooms, elevator, clean linen, hot water, elevator access)",
          "weather": "Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.",
          "dressCode": "Traditional wear. Dhoti or Pyjama-Kurta for men; Saree or Salwar suit for women. Sleeveless strictly prohibited.",
          "packingSuggestions": "Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 3 to 4 hours local tour"
        }
      },
      {
        "day": 3,
        "title": "Souvenir Shopping & Onward Departure",
        "location": "Puri",
        "overview": "Conclude your memorable stay in Puri with local craft shopping, checkout, and outbound transfers.",
        "schedule": {
          "morning": {
            "title": "Handicrafts Shopping",
            "description": "Visit local co-operative markets to buy traditional souvenirs, regional sweets, or native organic spices."
          },
          "afternoon": {
            "title": "Check-out & Packing",
            "description": "Return to your hotel, pack your bags, clear any local incidentals, and check out from your rooms."
          },
          "evening": {
            "title": "Outbound Transfer",
            "description": "Board your private vehicle transfer to the airport or railway station for your onward return journey home."
          }
        },
        "details": {
          "importantTimings": "Temple Darshan: 6:00 AM - 12:30 PM, 4:30 PM - 8:30 PM | Evening Aarti: 6:30 PM",
          "meals": "Breakfast & Special Dinner Buffet (100% Satvik Veg).",
          "transport": "AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Pilgrim Rest House (Safe, family-friendly rooms, walking distance to sacred sites)",
          "weather": "Perfect travel weather with low humidity and comfortable evening temperature 20°C.",
          "dressCode": "Traditional wear. Dhoti or Pyjama-Kurta for men; Saree or Salwar suit for women. Sleeveless strictly prohibited.",
          "packingSuggestions": "Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 1 to 2 hours transfer"
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
      "Day 1: Arrival & Welcome at Jagannath Temple",
      "Day 2: Guided Sightseeing & Exploration of Jagannath Temple",
      "Day 3: Departure"
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
    "categoryLabel": "Hindu Pilgrimage",
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
      "Hindu Pilgrimage",
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
        "title": "Arrival & Settle in at Varanasi",
        "location": "Varanasi",
        "overview": "Welcome to your yatra. Arrive in Varanasi, transfer to your stay, and rest before your sightseeing tour.",
        "schedule": {
          "morning": {
            "title": "Arrival & Check-in",
            "description": "Arrive at the nearest transit hub. Meet our coordinator and transfer to your pre-booked stay in Varanasi."
          },
          "afternoon": {
            "title": "Leisure & Rest",
            "description": "Check into your hotel room, unpack your luggage, and rest to recover from your flight or train journey."
          },
          "evening": {
            "title": "Orientation Walk",
            "description": "Meet your local guide for a small walk around the neighborhood. Receive a detailed brief on local customs."
          }
        },
        "details": {
          "importantTimings": "Temple Darshan: 6:00 AM - 12:30 PM, 4:30 PM - 8:30 PM | Evening Aarti: 6:30 PM",
          "meals": "Welcome Drink & Buffet Dinner included (100% Satvik Veg).",
          "transport": "AC Shuttle Transit for close proximity site transfers and passenger drops.",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Vedic Heritage Inn (Ashram atmosphere, close to main shrines, Western toilets, hot water)",
          "weather": "Warm and sunny afternoon, ideal for outdoor sightseeing, average temp 24°C.",
          "dressCode": "Traditional wear. Dhoti or Pyjama-Kurta for men; Saree or Salwar suit for women. Sleeveless strictly prohibited.",
          "packingSuggestions": "Comfortable travel footwear, photo ID, essential personal medication, daypack.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 1 to 2 hours transfer"
        }
      },
      {
        "day": 2,
        "title": "Explore Kashi Vishwanath Heritage Centre",
        "location": "Varanasi",
        "overview": "Spend your day visiting Kashi Vishwanath Heritage Centre, the primary attraction in Kashi Vishwanath, accompanied by our expert guide.",
        "schedule": {
          "morning": {
            "title": "Guided Tour of Kashi Vishwanath Heritage Centre",
            "description": "Early morning visit to Kashi Vishwanath Heritage Centre to avoid crowds. Learn about the heritage and unique history of this landmark."
          },
          "afternoon": {
            "title": "Local Traditional Lunch",
            "description": "Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings."
          },
          "evening": {
            "title": "Evening walk at Kashi Vishwanath Panoramic Viewpoint",
            "description": "Stroll around Kashi Vishwanath Panoramic Viewpoint for scenic sunset views. Capture great family photos as the evening lights turn on."
          }
        },
        "details": {
          "importantTimings": "Temple Darshan: 6:00 AM - 12:30 PM, 4:30 PM - 8:30 PM | Evening Aarti: 6:30 PM",
          "meals": "Complimentary Breakfast & Traditional Lunch (100% Satvik Veg).",
          "transport": "AC Private Sedan with professional local driver (includes first-aid kit and bottled water).",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Premium Pilgrim Hotel (AC rooms, elevator, clean linen, hot water, elevator access)",
          "weather": "Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.",
          "dressCode": "Traditional wear. Dhoti or Pyjama-Kurta for men; Saree or Salwar suit for women. Sleeveless strictly prohibited.",
          "packingSuggestions": "Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 3 to 4 hours local tour"
        }
      },
      {
        "day": 3,
        "title": "Souvenir Shopping & Onward Departure",
        "location": "Varanasi",
        "overview": "Conclude your memorable stay in Varanasi with local craft shopping, checkout, and outbound transfers.",
        "schedule": {
          "morning": {
            "title": "Handicrafts Shopping",
            "description": "Visit local co-operative markets to buy traditional souvenirs, regional sweets, or native organic spices."
          },
          "afternoon": {
            "title": "Check-out & Packing",
            "description": "Return to your hotel, pack your bags, clear any local incidentals, and check out from your rooms."
          },
          "evening": {
            "title": "Outbound Transfer",
            "description": "Board your private vehicle transfer to the airport or railway station for your onward return journey home."
          }
        },
        "details": {
          "importantTimings": "Temple Darshan: 6:00 AM - 12:30 PM, 4:30 PM - 8:30 PM | Evening Aarti: 6:30 PM",
          "meals": "Breakfast & Special Dinner Buffet (100% Satvik Veg).",
          "transport": "AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Pilgrim Rest House (Safe, family-friendly rooms, walking distance to sacred sites)",
          "weather": "Perfect travel weather with low humidity and comfortable evening temperature 20°C.",
          "dressCode": "Traditional wear. Dhoti or Pyjama-Kurta for men; Saree or Salwar suit for women. Sleeveless strictly prohibited.",
          "packingSuggestions": "Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 1 to 2 hours transfer"
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
      "Day 1: Arrival & Welcome at Kashi Vishwanath",
      "Day 2: Guided Sightseeing & Exploration of Kashi Vishwanath",
      "Day 3: Departure"
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
    "categoryLabel": "Hindu Pilgrimage",
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
      "Hindu Pilgrimage",
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
        "title": "Arrival & Settle in at Rudraprayag",
        "location": "Rudraprayag",
        "overview": "Welcome to your yatra. Arrive in Rudraprayag, transfer to your stay, and rest before your sightseeing tour.",
        "schedule": {
          "morning": {
            "title": "Arrival & Check-in",
            "description": "Arrive at the nearest transit hub. Meet our coordinator and transfer to your pre-booked stay in Rudraprayag."
          },
          "afternoon": {
            "title": "Leisure & Rest",
            "description": "Check into your hotel room, unpack your luggage, and rest to recover from your flight or train journey."
          },
          "evening": {
            "title": "Orientation Walk",
            "description": "Meet your local guide for a small walk around the neighborhood. Receive a detailed brief on local customs."
          }
        },
        "details": {
          "importantTimings": "Temple Darshan: 6:00 AM - 12:30 PM, 4:30 PM - 8:30 PM | Evening Aarti: 6:30 PM",
          "meals": "Welcome Drink & Buffet Dinner included (100% Satvik Veg).",
          "transport": "AC Shuttle Transit for close proximity site transfers and passenger drops.",
          "walkingLevel": "Moderate Paced (Gentle staircases, guide assistance available)",
          "stay": "Vedic Heritage Inn (Ashram atmosphere, close to main shrines, Western toilets, hot water)",
          "weather": "Warm and sunny afternoon, ideal for outdoor sightseeing, average temp 24°C.",
          "dressCode": "Traditional wear. Dhoti or Pyjama-Kurta for men; Saree or Salwar suit for women. Sleeveless strictly prohibited.",
          "packingSuggestions": "Comfortable travel footwear, photo ID, essential personal medication, daypack.",
          "accessibility": "Not recommended for guests requiring wheelchair support due to steep stairs and terrain.",
          "visitorNote": "Expect moderate physical movement. Wear athletic shoes with excellent grip.",
          "travelDuration": "Approx. 1 to 2 hours transfer"
        }
      },
      {
        "day": 2,
        "title": "Explore Kedarnath Heritage Centre",
        "location": "Rudraprayag",
        "overview": "Spend your day visiting Kedarnath Heritage Centre, the primary attraction in Kedarnath, accompanied by our expert guide.",
        "schedule": {
          "morning": {
            "title": "Guided Tour of Kedarnath Heritage Centre",
            "description": "Early morning visit to Kedarnath Heritage Centre to avoid crowds. Learn about the heritage and unique history of this landmark."
          },
          "afternoon": {
            "title": "Local Traditional Lunch",
            "description": "Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings."
          },
          "evening": {
            "title": "Evening walk at Kedarnath Panoramic Viewpoint",
            "description": "Stroll around Kedarnath Panoramic Viewpoint for scenic sunset views. Capture great family photos as the evening lights turn on."
          }
        },
        "details": {
          "importantTimings": "Temple Darshan: 6:00 AM - 12:30 PM, 4:30 PM - 8:30 PM | Evening Aarti: 6:30 PM",
          "meals": "Complimentary Breakfast & Traditional Lunch (100% Satvik Veg).",
          "transport": "AC Private Sedan with professional local driver (includes first-aid kit and bottled water).",
          "walkingLevel": "Moderate Paced (Gentle staircases, guide assistance available)",
          "stay": "Premium Pilgrim Hotel (AC rooms, elevator, clean linen, hot water, elevator access)",
          "weather": "Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.",
          "dressCode": "Traditional wear. Dhoti or Pyjama-Kurta for men; Saree or Salwar suit for women. Sleeveless strictly prohibited.",
          "packingSuggestions": "Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.",
          "accessibility": "Not recommended for guests requiring wheelchair support due to steep stairs and terrain.",
          "visitorNote": "Expect moderate physical movement. Wear athletic shoes with excellent grip.",
          "travelDuration": "Approx. 3 to 4 hours local tour"
        }
      },
      {
        "day": 3,
        "title": "Souvenir Shopping & Onward Departure",
        "location": "Rudraprayag",
        "overview": "Conclude your memorable stay in Rudraprayag with local craft shopping, checkout, and outbound transfers.",
        "schedule": {
          "morning": {
            "title": "Handicrafts Shopping",
            "description": "Visit local co-operative markets to buy traditional souvenirs, regional sweets, or native organic spices."
          },
          "afternoon": {
            "title": "Check-out & Packing",
            "description": "Return to your hotel, pack your bags, clear any local incidentals, and check out from your rooms."
          },
          "evening": {
            "title": "Outbound Transfer",
            "description": "Board your private vehicle transfer to the airport or railway station for your onward return journey home."
          }
        },
        "details": {
          "importantTimings": "Temple Darshan: 6:00 AM - 12:30 PM, 4:30 PM - 8:30 PM | Evening Aarti: 6:30 PM",
          "meals": "Breakfast & Special Dinner Buffet (100% Satvik Veg).",
          "transport": "AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).",
          "walkingLevel": "Moderate Paced (Gentle staircases, guide assistance available)",
          "stay": "Pilgrim Rest House (Safe, family-friendly rooms, walking distance to sacred sites)",
          "weather": "Perfect travel weather with low humidity and comfortable evening temperature 20°C.",
          "dressCode": "Traditional wear. Dhoti or Pyjama-Kurta for men; Saree or Salwar suit for women. Sleeveless strictly prohibited.",
          "packingSuggestions": "Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.",
          "accessibility": "Not recommended for guests requiring wheelchair support due to steep stairs and terrain.",
          "visitorNote": "Expect moderate physical movement. Wear athletic shoes with excellent grip.",
          "travelDuration": "Approx. 1 to 2 hours transfer"
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
      "Day 1: Arrival & Welcome at Kedarnath",
      "Day 2: Guided Sightseeing & Exploration of Kedarnath",
      "Day 3: Departure"
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
    "categoryLabel": "Hindu Pilgrimage",
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
      "Hindu Pilgrimage",
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
        "title": "Arrival & Settle in at Ujjain",
        "location": "Ujjain",
        "overview": "Welcome to your yatra. Arrive in Ujjain, transfer to your stay, and rest before your sightseeing tour.",
        "schedule": {
          "morning": {
            "title": "Arrival & Check-in",
            "description": "Arrive at the nearest transit hub. Meet our coordinator and transfer to your pre-booked stay in Ujjain."
          },
          "afternoon": {
            "title": "Leisure & Rest",
            "description": "Check into your hotel room, unpack your luggage, and rest to recover from your flight or train journey."
          },
          "evening": {
            "title": "Orientation Walk",
            "description": "Meet your local guide for a small walk around the neighborhood. Receive a detailed brief on local customs."
          }
        },
        "details": {
          "importantTimings": "Temple Darshan: 6:00 AM - 12:30 PM, 4:30 PM - 8:30 PM | Evening Aarti: 6:30 PM",
          "meals": "Welcome Drink & Buffet Dinner included (100% Satvik Veg).",
          "transport": "AC Shuttle Transit for close proximity site transfers and passenger drops.",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Vedic Heritage Inn (Ashram atmosphere, close to main shrines, Western toilets, hot water)",
          "weather": "Warm and sunny afternoon, ideal for outdoor sightseeing, average temp 24°C.",
          "dressCode": "Traditional wear. Dhoti or Pyjama-Kurta for men; Saree or Salwar suit for women. Sleeveless strictly prohibited.",
          "packingSuggestions": "Comfortable travel footwear, photo ID, essential personal medication, daypack.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 1 to 2 hours transfer"
        }
      },
      {
        "day": 2,
        "title": "Explore Mahakaleshwar Temple Heritage Centre",
        "location": "Ujjain",
        "overview": "Spend your day visiting Mahakaleshwar Temple Heritage Centre, the primary attraction in Mahakaleshwar Temple, accompanied by our expert guide.",
        "schedule": {
          "morning": {
            "title": "Guided Tour of Mahakaleshwar Temple Heritage Centre",
            "description": "Early morning visit to Mahakaleshwar Temple Heritage Centre to avoid crowds. Learn about the heritage and unique history of this landmark."
          },
          "afternoon": {
            "title": "Local Traditional Lunch",
            "description": "Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings."
          },
          "evening": {
            "title": "Evening walk at Mahakaleshwar Temple Panoramic Viewpoint",
            "description": "Stroll around Mahakaleshwar Temple Panoramic Viewpoint for scenic sunset views. Capture great family photos as the evening lights turn on."
          }
        },
        "details": {
          "importantTimings": "Temple Darshan: 6:00 AM - 12:30 PM, 4:30 PM - 8:30 PM | Evening Aarti: 6:30 PM",
          "meals": "Complimentary Breakfast & Traditional Lunch (100% Satvik Veg).",
          "transport": "AC Private Sedan with professional local driver (includes first-aid kit and bottled water).",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Premium Pilgrim Hotel (AC rooms, elevator, clean linen, hot water, elevator access)",
          "weather": "Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.",
          "dressCode": "Traditional wear. Dhoti or Pyjama-Kurta for men; Saree or Salwar suit for women. Sleeveless strictly prohibited.",
          "packingSuggestions": "Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 3 to 4 hours local tour"
        }
      },
      {
        "day": 3,
        "title": "Souvenir Shopping & Onward Departure",
        "location": "Ujjain",
        "overview": "Conclude your memorable stay in Ujjain with local craft shopping, checkout, and outbound transfers.",
        "schedule": {
          "morning": {
            "title": "Handicrafts Shopping",
            "description": "Visit local co-operative markets to buy traditional souvenirs, regional sweets, or native organic spices."
          },
          "afternoon": {
            "title": "Check-out & Packing",
            "description": "Return to your hotel, pack your bags, clear any local incidentals, and check out from your rooms."
          },
          "evening": {
            "title": "Outbound Transfer",
            "description": "Board your private vehicle transfer to the airport or railway station for your onward return journey home."
          }
        },
        "details": {
          "importantTimings": "Temple Darshan: 6:00 AM - 12:30 PM, 4:30 PM - 8:30 PM | Evening Aarti: 6:30 PM",
          "meals": "Breakfast & Special Dinner Buffet (100% Satvik Veg).",
          "transport": "AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Pilgrim Rest House (Safe, family-friendly rooms, walking distance to sacred sites)",
          "weather": "Perfect travel weather with low humidity and comfortable evening temperature 20°C.",
          "dressCode": "Traditional wear. Dhoti or Pyjama-Kurta for men; Saree or Salwar suit for women. Sleeveless strictly prohibited.",
          "packingSuggestions": "Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 1 to 2 hours transfer"
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
      "Day 1: Arrival & Welcome at Mahakaleshwar Temple",
      "Day 2: Guided Sightseeing & Exploration of Mahakaleshwar Temple",
      "Day 3: Departure"
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
    "categoryLabel": "Hindu Pilgrimage",
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
      "Hindu Pilgrimage",
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
        "title": "Arrival & Settle in at Ngari",
        "location": "Ngari",
        "overview": "Welcome to your yatra. Arrive in Ngari, transfer to your stay, and rest before your sightseeing tour.",
        "schedule": {
          "morning": {
            "title": "Arrival & Check-in",
            "description": "Arrive at the nearest transit hub. Meet our coordinator and transfer to your pre-booked stay in Ngari."
          },
          "afternoon": {
            "title": "Leisure & Rest",
            "description": "Check into your hotel room, unpack your luggage, and rest to recover from your flight or train journey."
          },
          "evening": {
            "title": "Orientation Walk",
            "description": "Meet your local guide for a small walk around the neighborhood. Receive a detailed brief on local customs."
          }
        },
        "details": {
          "importantTimings": "Temple Darshan: 6:00 AM - 12:30 PM, 4:30 PM - 8:30 PM | Evening Aarti: 6:30 PM",
          "meals": "Welcome Drink & Buffet Dinner included (100% Satvik Veg).",
          "transport": "AC Shuttle Transit for close proximity site transfers and passenger drops.",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Vedic Heritage Inn (Ashram atmosphere, close to main shrines, Western toilets, hot water)",
          "weather": "Warm and sunny afternoon, ideal for outdoor sightseeing, average temp 24°C.",
          "dressCode": "Traditional wear. Dhoti or Pyjama-Kurta for men; Saree or Salwar suit for women. Sleeveless strictly prohibited.",
          "packingSuggestions": "Comfortable travel footwear, photo ID, essential personal medication, daypack.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 1 to 2 hours transfer"
        }
      },
      {
        "day": 2,
        "title": "Explore Mount Kailash Heritage Centre",
        "location": "Ngari",
        "overview": "Spend your day visiting Mount Kailash Heritage Centre, the primary attraction in Mount Kailash, accompanied by our expert guide.",
        "schedule": {
          "morning": {
            "title": "Guided Tour of Mount Kailash Heritage Centre",
            "description": "Early morning visit to Mount Kailash Heritage Centre to avoid crowds. Learn about the heritage and unique history of this landmark."
          },
          "afternoon": {
            "title": "Local Traditional Lunch",
            "description": "Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings."
          },
          "evening": {
            "title": "Evening walk at Mount Kailash Panoramic Viewpoint",
            "description": "Stroll around Mount Kailash Panoramic Viewpoint for scenic sunset views. Capture great family photos as the evening lights turn on."
          }
        },
        "details": {
          "importantTimings": "Temple Darshan: 6:00 AM - 12:30 PM, 4:30 PM - 8:30 PM | Evening Aarti: 6:30 PM",
          "meals": "Complimentary Breakfast & Traditional Lunch (100% Satvik Veg).",
          "transport": "AC Private Sedan with professional local driver (includes first-aid kit and bottled water).",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Premium Pilgrim Hotel (AC rooms, elevator, clean linen, hot water, elevator access)",
          "weather": "Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.",
          "dressCode": "Traditional wear. Dhoti or Pyjama-Kurta for men; Saree or Salwar suit for women. Sleeveless strictly prohibited.",
          "packingSuggestions": "Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 3 to 4 hours local tour"
        }
      },
      {
        "day": 3,
        "title": "Souvenir Shopping & Onward Departure",
        "location": "Ngari",
        "overview": "Conclude your memorable stay in Ngari with local craft shopping, checkout, and outbound transfers.",
        "schedule": {
          "morning": {
            "title": "Handicrafts Shopping",
            "description": "Visit local co-operative markets to buy traditional souvenirs, regional sweets, or native organic spices."
          },
          "afternoon": {
            "title": "Check-out & Packing",
            "description": "Return to your hotel, pack your bags, clear any local incidentals, and check out from your rooms."
          },
          "evening": {
            "title": "Outbound Transfer",
            "description": "Board your private vehicle transfer to the airport or railway station for your onward return journey home."
          }
        },
        "details": {
          "importantTimings": "Temple Darshan: 6:00 AM - 12:30 PM, 4:30 PM - 8:30 PM | Evening Aarti: 6:30 PM",
          "meals": "Breakfast & Special Dinner Buffet (100% Satvik Veg).",
          "transport": "AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Pilgrim Rest House (Safe, family-friendly rooms, walking distance to sacred sites)",
          "weather": "Perfect travel weather with low humidity and comfortable evening temperature 20°C.",
          "dressCode": "Traditional wear. Dhoti or Pyjama-Kurta for men; Saree or Salwar suit for women. Sleeveless strictly prohibited.",
          "packingSuggestions": "Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 1 to 2 hours transfer"
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
      "Day 1: Arrival & Welcome at Mount Kailash",
      "Day 2: Guided Sightseeing & Exploration of Mount Kailash",
      "Day 3: Departure"
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
    "categoryLabel": "Hindu Pilgrimage",
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
      "Hindu Pilgrimage",
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
        "title": "Arrival & Settle in at Ramanathapuram",
        "location": "Ramanathapuram",
        "overview": "Welcome to your yatra. Arrive in Ramanathapuram, transfer to your stay, and rest before your sightseeing tour.",
        "schedule": {
          "morning": {
            "title": "Arrival & Check-in",
            "description": "Arrive at the nearest transit hub. Meet our coordinator and transfer to your pre-booked stay in Ramanathapuram."
          },
          "afternoon": {
            "title": "Leisure & Rest",
            "description": "Check into your hotel room, unpack your luggage, and rest to recover from your flight or train journey."
          },
          "evening": {
            "title": "Orientation Walk",
            "description": "Meet your local guide for a small walk around the neighborhood. Receive a detailed brief on local customs."
          }
        },
        "details": {
          "importantTimings": "Temple Darshan: 6:00 AM - 12:30 PM, 4:30 PM - 8:30 PM | Evening Aarti: 6:30 PM",
          "meals": "Welcome Drink & Buffet Dinner included (100% Satvik Veg).",
          "transport": "AC Shuttle Transit for close proximity site transfers and passenger drops.",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Vedic Heritage Inn (Ashram atmosphere, close to main shrines, Western toilets, hot water)",
          "weather": "Warm and sunny afternoon, ideal for outdoor sightseeing, average temp 24°C.",
          "dressCode": "Traditional wear. Dhoti or Pyjama-Kurta for men; Saree or Salwar suit for women. Sleeveless strictly prohibited.",
          "packingSuggestions": "Comfortable travel footwear, photo ID, essential personal medication, daypack.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 1 to 2 hours transfer"
        }
      },
      {
        "day": 2,
        "title": "Explore Rameswaram Heritage Centre",
        "location": "Ramanathapuram",
        "overview": "Spend your day visiting Rameswaram Heritage Centre, the primary attraction in Rameswaram, accompanied by our expert guide.",
        "schedule": {
          "morning": {
            "title": "Guided Tour of Rameswaram Heritage Centre",
            "description": "Early morning visit to Rameswaram Heritage Centre to avoid crowds. Learn about the heritage and unique history of this landmark."
          },
          "afternoon": {
            "title": "Local Traditional Lunch",
            "description": "Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings."
          },
          "evening": {
            "title": "Evening walk at Rameswaram Panoramic Viewpoint",
            "description": "Stroll around Rameswaram Panoramic Viewpoint for scenic sunset views. Capture great family photos as the evening lights turn on."
          }
        },
        "details": {
          "importantTimings": "Temple Darshan: 6:00 AM - 12:30 PM, 4:30 PM - 8:30 PM | Evening Aarti: 6:30 PM",
          "meals": "Complimentary Breakfast & Traditional Lunch (100% Satvik Veg).",
          "transport": "AC Private Sedan with professional local driver (includes first-aid kit and bottled water).",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Premium Pilgrim Hotel (AC rooms, elevator, clean linen, hot water, elevator access)",
          "weather": "Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.",
          "dressCode": "Traditional wear. Dhoti or Pyjama-Kurta for men; Saree or Salwar suit for women. Sleeveless strictly prohibited.",
          "packingSuggestions": "Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 3 to 4 hours local tour"
        }
      },
      {
        "day": 3,
        "title": "Souvenir Shopping & Onward Departure",
        "location": "Ramanathapuram",
        "overview": "Conclude your memorable stay in Ramanathapuram with local craft shopping, checkout, and outbound transfers.",
        "schedule": {
          "morning": {
            "title": "Handicrafts Shopping",
            "description": "Visit local co-operative markets to buy traditional souvenirs, regional sweets, or native organic spices."
          },
          "afternoon": {
            "title": "Check-out & Packing",
            "description": "Return to your hotel, pack your bags, clear any local incidentals, and check out from your rooms."
          },
          "evening": {
            "title": "Outbound Transfer",
            "description": "Board your private vehicle transfer to the airport or railway station for your onward return journey home."
          }
        },
        "details": {
          "importantTimings": "Temple Darshan: 6:00 AM - 12:30 PM, 4:30 PM - 8:30 PM | Evening Aarti: 6:30 PM",
          "meals": "Breakfast & Special Dinner Buffet (100% Satvik Veg).",
          "transport": "AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Pilgrim Rest House (Safe, family-friendly rooms, walking distance to sacred sites)",
          "weather": "Perfect travel weather with low humidity and comfortable evening temperature 20°C.",
          "dressCode": "Traditional wear. Dhoti or Pyjama-Kurta for men; Saree or Salwar suit for women. Sleeveless strictly prohibited.",
          "packingSuggestions": "Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 1 to 2 hours transfer"
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
      "Day 1: Arrival & Welcome at Rameswaram",
      "Day 2: Guided Sightseeing & Exploration of Rameswaram",
      "Day 3: Departure"
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
    "categoryLabel": "Hindu Pilgrimage",
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
      "Hindu Pilgrimage",
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
        "title": "Arrival & Settle in at Prabhas Patan",
        "location": "Prabhas Patan",
        "overview": "Welcome to your yatra. Arrive in Prabhas Patan, transfer to your stay, and rest before your sightseeing tour.",
        "schedule": {
          "morning": {
            "title": "Arrival & Check-in",
            "description": "Arrive at the nearest transit hub. Meet our coordinator and transfer to your pre-booked stay in Prabhas Patan."
          },
          "afternoon": {
            "title": "Leisure & Rest",
            "description": "Check into your hotel room, unpack your luggage, and rest to recover from your flight or train journey."
          },
          "evening": {
            "title": "Orientation Walk",
            "description": "Meet your local guide for a small walk around the neighborhood. Receive a detailed brief on local customs."
          }
        },
        "details": {
          "importantTimings": "Temple Darshan: 6:00 AM - 12:30 PM, 4:30 PM - 8:30 PM | Evening Aarti: 6:30 PM",
          "meals": "Welcome Drink & Buffet Dinner included (100% Satvik Veg).",
          "transport": "AC Shuttle Transit for close proximity site transfers and passenger drops.",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Vedic Heritage Inn (Ashram atmosphere, close to main shrines, Western toilets, hot water)",
          "weather": "Warm and sunny afternoon, ideal for outdoor sightseeing, average temp 24°C.",
          "dressCode": "Traditional wear. Dhoti or Pyjama-Kurta for men; Saree or Salwar suit for women. Sleeveless strictly prohibited.",
          "packingSuggestions": "Comfortable travel footwear, photo ID, essential personal medication, daypack.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 1 to 2 hours transfer"
        }
      },
      {
        "day": 2,
        "title": "Explore Somnath Temple Heritage Centre",
        "location": "Prabhas Patan",
        "overview": "Spend your day visiting Somnath Temple Heritage Centre, the primary attraction in Somnath Temple, accompanied by our expert guide.",
        "schedule": {
          "morning": {
            "title": "Guided Tour of Somnath Temple Heritage Centre",
            "description": "Early morning visit to Somnath Temple Heritage Centre to avoid crowds. Learn about the heritage and unique history of this landmark."
          },
          "afternoon": {
            "title": "Local Traditional Lunch",
            "description": "Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings."
          },
          "evening": {
            "title": "Evening walk at Somnath Temple Panoramic Viewpoint",
            "description": "Stroll around Somnath Temple Panoramic Viewpoint for scenic sunset views. Capture great family photos as the evening lights turn on."
          }
        },
        "details": {
          "importantTimings": "Temple Darshan: 6:00 AM - 12:30 PM, 4:30 PM - 8:30 PM | Evening Aarti: 6:30 PM",
          "meals": "Complimentary Breakfast & Traditional Lunch (100% Satvik Veg).",
          "transport": "AC Private Sedan with professional local driver (includes first-aid kit and bottled water).",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Premium Pilgrim Hotel (AC rooms, elevator, clean linen, hot water, elevator access)",
          "weather": "Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.",
          "dressCode": "Traditional wear. Dhoti or Pyjama-Kurta for men; Saree or Salwar suit for women. Sleeveless strictly prohibited.",
          "packingSuggestions": "Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 3 to 4 hours local tour"
        }
      },
      {
        "day": 3,
        "title": "Souvenir Shopping & Onward Departure",
        "location": "Prabhas Patan",
        "overview": "Conclude your memorable stay in Prabhas Patan with local craft shopping, checkout, and outbound transfers.",
        "schedule": {
          "morning": {
            "title": "Handicrafts Shopping",
            "description": "Visit local co-operative markets to buy traditional souvenirs, regional sweets, or native organic spices."
          },
          "afternoon": {
            "title": "Check-out & Packing",
            "description": "Return to your hotel, pack your bags, clear any local incidentals, and check out from your rooms."
          },
          "evening": {
            "title": "Outbound Transfer",
            "description": "Board your private vehicle transfer to the airport or railway station for your onward return journey home."
          }
        },
        "details": {
          "importantTimings": "Temple Darshan: 6:00 AM - 12:30 PM, 4:30 PM - 8:30 PM | Evening Aarti: 6:30 PM",
          "meals": "Breakfast & Special Dinner Buffet (100% Satvik Veg).",
          "transport": "AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Pilgrim Rest House (Safe, family-friendly rooms, walking distance to sacred sites)",
          "weather": "Perfect travel weather with low humidity and comfortable evening temperature 20°C.",
          "dressCode": "Traditional wear. Dhoti or Pyjama-Kurta for men; Saree or Salwar suit for women. Sleeveless strictly prohibited.",
          "packingSuggestions": "Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 1 to 2 hours transfer"
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
      "Day 1: Arrival & Welcome at Somnath Temple",
      "Day 2: Guided Sightseeing & Exploration of Somnath Temple",
      "Day 3: Departure"
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
    "categoryLabel": "Hindu Pilgrimage",
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
      "Hindu Pilgrimage",
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
        "title": "Arrival & Settle in at Tirupati",
        "location": "Tirupati",
        "overview": "Welcome to your yatra. Arrive in Tirupati, transfer to your stay, and rest before your sightseeing tour.",
        "schedule": {
          "morning": {
            "title": "Arrival & Check-in",
            "description": "Arrive at the nearest transit hub. Meet our coordinator and transfer to your pre-booked stay in Tirupati."
          },
          "afternoon": {
            "title": "Leisure & Rest",
            "description": "Check into your hotel room, unpack your luggage, and rest to recover from your flight or train journey."
          },
          "evening": {
            "title": "Orientation Walk",
            "description": "Meet your local guide for a small walk around the neighborhood. Receive a detailed brief on local customs."
          }
        },
        "details": {
          "importantTimings": "Temple Darshan: 6:00 AM - 12:30 PM, 4:30 PM - 8:30 PM | Evening Aarti: 6:30 PM",
          "meals": "Welcome Drink & Buffet Dinner included (100% Satvik Veg).",
          "transport": "AC Shuttle Transit for close proximity site transfers and passenger drops.",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Vedic Heritage Inn (Ashram atmosphere, close to main shrines, Western toilets, hot water)",
          "weather": "Warm and sunny afternoon, ideal for outdoor sightseeing, average temp 24°C.",
          "dressCode": "Traditional wear. Dhoti or Pyjama-Kurta for men; Saree or Salwar suit for women. Sleeveless strictly prohibited.",
          "packingSuggestions": "Comfortable travel footwear, photo ID, essential personal medication, daypack.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 1 to 2 hours transfer"
        }
      },
      {
        "day": 2,
        "title": "Explore Tirupati Balaji Temple Heritage Centre",
        "location": "Tirupati",
        "overview": "Spend your day visiting Tirupati Balaji Temple Heritage Centre, the primary attraction in Tirupati Balaji Temple, accompanied by our expert guide.",
        "schedule": {
          "morning": {
            "title": "Guided Tour of Tirupati Balaji Temple Heritage Centre",
            "description": "Early morning visit to Tirupati Balaji Temple Heritage Centre to avoid crowds. Learn about the heritage and unique history of this landmark."
          },
          "afternoon": {
            "title": "Local Traditional Lunch",
            "description": "Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings."
          },
          "evening": {
            "title": "Evening walk at Tirupati Balaji Temple Panoramic Viewpoint",
            "description": "Stroll around Tirupati Balaji Temple Panoramic Viewpoint for scenic sunset views. Capture great family photos as the evening lights turn on."
          }
        },
        "details": {
          "importantTimings": "Temple Darshan: 6:00 AM - 12:30 PM, 4:30 PM - 8:30 PM | Evening Aarti: 6:30 PM",
          "meals": "Complimentary Breakfast & Traditional Lunch (100% Satvik Veg).",
          "transport": "AC Private Sedan with professional local driver (includes first-aid kit and bottled water).",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Premium Pilgrim Hotel (AC rooms, elevator, clean linen, hot water, elevator access)",
          "weather": "Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.",
          "dressCode": "Traditional wear. Dhoti or Pyjama-Kurta for men; Saree or Salwar suit for women. Sleeveless strictly prohibited.",
          "packingSuggestions": "Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 3 to 4 hours local tour"
        }
      },
      {
        "day": 3,
        "title": "Souvenir Shopping & Onward Departure",
        "location": "Tirupati",
        "overview": "Conclude your memorable stay in Tirupati with local craft shopping, checkout, and outbound transfers.",
        "schedule": {
          "morning": {
            "title": "Handicrafts Shopping",
            "description": "Visit local co-operative markets to buy traditional souvenirs, regional sweets, or native organic spices."
          },
          "afternoon": {
            "title": "Check-out & Packing",
            "description": "Return to your hotel, pack your bags, clear any local incidentals, and check out from your rooms."
          },
          "evening": {
            "title": "Outbound Transfer",
            "description": "Board your private vehicle transfer to the airport or railway station for your onward return journey home."
          }
        },
        "details": {
          "importantTimings": "Temple Darshan: 6:00 AM - 12:30 PM, 4:30 PM - 8:30 PM | Evening Aarti: 6:30 PM",
          "meals": "Breakfast & Special Dinner Buffet (100% Satvik Veg).",
          "transport": "AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Pilgrim Rest House (Safe, family-friendly rooms, walking distance to sacred sites)",
          "weather": "Perfect travel weather with low humidity and comfortable evening temperature 20°C.",
          "dressCode": "Traditional wear. Dhoti or Pyjama-Kurta for men; Saree or Salwar suit for women. Sleeveless strictly prohibited.",
          "packingSuggestions": "Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 1 to 2 hours transfer"
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
      "Day 1: Arrival & Welcome at Tirupati Balaji Temple",
      "Day 2: Guided Sightseeing & Exploration of Tirupati Balaji Temple",
      "Day 3: Departure"
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
    "categoryLabel": "Hindu Pilgrimage",
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
      "Hindu Pilgrimage",
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
        "title": "Arrival & Settle in at Nashik",
        "location": "Nashik",
        "overview": "Welcome to your yatra. Arrive in Nashik, transfer to your stay, and rest before your sightseeing tour.",
        "schedule": {
          "morning": {
            "title": "Arrival & Check-in",
            "description": "Arrive at the nearest transit hub. Meet our coordinator and transfer to your pre-booked stay in Nashik."
          },
          "afternoon": {
            "title": "Leisure & Rest",
            "description": "Check into your hotel room, unpack your luggage, and rest to recover from your flight or train journey."
          },
          "evening": {
            "title": "Orientation Walk",
            "description": "Meet your local guide for a small walk around the neighborhood. Receive a detailed brief on local customs."
          }
        },
        "details": {
          "importantTimings": "Temple Darshan: 6:00 AM - 12:30 PM, 4:30 PM - 8:30 PM | Evening Aarti: 6:30 PM",
          "meals": "Welcome Drink & Buffet Dinner included (100% Satvik Veg).",
          "transport": "AC Shuttle Transit for close proximity site transfers and passenger drops.",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Vedic Heritage Inn (Ashram atmosphere, close to main shrines, Western toilets, hot water)",
          "weather": "Warm and sunny afternoon, ideal for outdoor sightseeing, average temp 24°C.",
          "dressCode": "Traditional wear. Dhoti or Pyjama-Kurta for men; Saree or Salwar suit for women. Sleeveless strictly prohibited.",
          "packingSuggestions": "Comfortable travel footwear, photo ID, essential personal medication, daypack.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 1 to 2 hours transfer"
        }
      },
      {
        "day": 2,
        "title": "Explore Trimbakeshwar Temple Heritage Centre",
        "location": "Nashik",
        "overview": "Spend your day visiting Trimbakeshwar Temple Heritage Centre, the primary attraction in Trimbakeshwar Temple, accompanied by our expert guide.",
        "schedule": {
          "morning": {
            "title": "Guided Tour of Trimbakeshwar Temple Heritage Centre",
            "description": "Early morning visit to Trimbakeshwar Temple Heritage Centre to avoid crowds. Learn about the heritage and unique history of this landmark."
          },
          "afternoon": {
            "title": "Local Traditional Lunch",
            "description": "Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings."
          },
          "evening": {
            "title": "Evening walk at Trimbakeshwar Temple Panoramic Viewpoint",
            "description": "Stroll around Trimbakeshwar Temple Panoramic Viewpoint for scenic sunset views. Capture great family photos as the evening lights turn on."
          }
        },
        "details": {
          "importantTimings": "Temple Darshan: 6:00 AM - 12:30 PM, 4:30 PM - 8:30 PM | Evening Aarti: 6:30 PM",
          "meals": "Complimentary Breakfast & Traditional Lunch (100% Satvik Veg).",
          "transport": "AC Private Sedan with professional local driver (includes first-aid kit and bottled water).",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Premium Pilgrim Hotel (AC rooms, elevator, clean linen, hot water, elevator access)",
          "weather": "Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.",
          "dressCode": "Traditional wear. Dhoti or Pyjama-Kurta for men; Saree or Salwar suit for women. Sleeveless strictly prohibited.",
          "packingSuggestions": "Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 3 to 4 hours local tour"
        }
      },
      {
        "day": 3,
        "title": "Souvenir Shopping & Onward Departure",
        "location": "Nashik",
        "overview": "Conclude your memorable stay in Nashik with local craft shopping, checkout, and outbound transfers.",
        "schedule": {
          "morning": {
            "title": "Handicrafts Shopping",
            "description": "Visit local co-operative markets to buy traditional souvenirs, regional sweets, or native organic spices."
          },
          "afternoon": {
            "title": "Check-out & Packing",
            "description": "Return to your hotel, pack your bags, clear any local incidentals, and check out from your rooms."
          },
          "evening": {
            "title": "Outbound Transfer",
            "description": "Board your private vehicle transfer to the airport or railway station for your onward return journey home."
          }
        },
        "details": {
          "importantTimings": "Temple Darshan: 6:00 AM - 12:30 PM, 4:30 PM - 8:30 PM | Evening Aarti: 6:30 PM",
          "meals": "Breakfast & Special Dinner Buffet (100% Satvik Veg).",
          "transport": "AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Pilgrim Rest House (Safe, family-friendly rooms, walking distance to sacred sites)",
          "weather": "Perfect travel weather with low humidity and comfortable evening temperature 20°C.",
          "dressCode": "Traditional wear. Dhoti or Pyjama-Kurta for men; Saree or Salwar suit for women. Sleeveless strictly prohibited.",
          "packingSuggestions": "Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 1 to 2 hours transfer"
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
      "Day 1: Arrival & Welcome at Trimbakeshwar Temple",
      "Day 2: Guided Sightseeing & Exploration of Trimbakeshwar Temple",
      "Day 3: Departure"
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
    "categoryLabel": "Hindu Pilgrimage",
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
      "Hindu Pilgrimage",
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
        "title": "Arrival & Settle in at Katra",
        "location": "Katra",
        "overview": "Welcome to your yatra. Arrive in Katra, transfer to your stay, and rest before your sightseeing tour.",
        "schedule": {
          "morning": {
            "title": "Arrival & Check-in",
            "description": "Arrive at the nearest transit hub. Meet our coordinator and transfer to your pre-booked stay in Katra."
          },
          "afternoon": {
            "title": "Leisure & Rest",
            "description": "Check into your hotel room, unpack your luggage, and rest to recover from your flight or train journey."
          },
          "evening": {
            "title": "Orientation Walk",
            "description": "Meet your local guide for a small walk around the neighborhood. Receive a detailed brief on local customs."
          }
        },
        "details": {
          "importantTimings": "Temple Darshan: 6:00 AM - 12:30 PM, 4:30 PM - 8:30 PM | Evening Aarti: 6:30 PM",
          "meals": "Welcome Drink & Buffet Dinner included (100% Satvik Veg).",
          "transport": "AC Shuttle Transit for close proximity site transfers and passenger drops.",
          "walkingLevel": "Moderate Paced (Gentle staircases, guide assistance available)",
          "stay": "Vedic Heritage Inn (Ashram atmosphere, close to main shrines, Western toilets, hot water)",
          "weather": "Warm and sunny afternoon, ideal for outdoor sightseeing, average temp 24°C.",
          "dressCode": "Traditional wear. Dhoti or Pyjama-Kurta for men; Saree or Salwar suit for women. Sleeveless strictly prohibited.",
          "packingSuggestions": "Comfortable travel footwear, photo ID, essential personal medication, daypack.",
          "accessibility": "Not recommended for guests requiring wheelchair support due to steep stairs and terrain.",
          "visitorNote": "Expect moderate physical movement. Wear athletic shoes with excellent grip.",
          "travelDuration": "Approx. 1 to 2 hours transfer"
        }
      },
      {
        "day": 2,
        "title": "Explore Vaishno Devi Heritage Centre",
        "location": "Katra",
        "overview": "Spend your day visiting Vaishno Devi Heritage Centre, the primary attraction in Vaishno Devi, accompanied by our expert guide.",
        "schedule": {
          "morning": {
            "title": "Guided Tour of Vaishno Devi Heritage Centre",
            "description": "Early morning visit to Vaishno Devi Heritage Centre to avoid crowds. Learn about the heritage and unique history of this landmark."
          },
          "afternoon": {
            "title": "Local Traditional Lunch",
            "description": "Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings."
          },
          "evening": {
            "title": "Evening walk at Vaishno Devi Panoramic Viewpoint",
            "description": "Stroll around Vaishno Devi Panoramic Viewpoint for scenic sunset views. Capture great family photos as the evening lights turn on."
          }
        },
        "details": {
          "importantTimings": "Temple Darshan: 6:00 AM - 12:30 PM, 4:30 PM - 8:30 PM | Evening Aarti: 6:30 PM",
          "meals": "Complimentary Breakfast & Traditional Lunch (100% Satvik Veg).",
          "transport": "AC Private Sedan with professional local driver (includes first-aid kit and bottled water).",
          "walkingLevel": "Moderate Paced (Gentle staircases, guide assistance available)",
          "stay": "Premium Pilgrim Hotel (AC rooms, elevator, clean linen, hot water, elevator access)",
          "weather": "Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.",
          "dressCode": "Traditional wear. Dhoti or Pyjama-Kurta for men; Saree or Salwar suit for women. Sleeveless strictly prohibited.",
          "packingSuggestions": "Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.",
          "accessibility": "Not recommended for guests requiring wheelchair support due to steep stairs and terrain.",
          "visitorNote": "Expect moderate physical movement. Wear athletic shoes with excellent grip.",
          "travelDuration": "Approx. 3 to 4 hours local tour"
        }
      },
      {
        "day": 3,
        "title": "Souvenir Shopping & Onward Departure",
        "location": "Katra",
        "overview": "Conclude your memorable stay in Katra with local craft shopping, checkout, and outbound transfers.",
        "schedule": {
          "morning": {
            "title": "Handicrafts Shopping",
            "description": "Visit local co-operative markets to buy traditional souvenirs, regional sweets, or native organic spices."
          },
          "afternoon": {
            "title": "Check-out & Packing",
            "description": "Return to your hotel, pack your bags, clear any local incidentals, and check out from your rooms."
          },
          "evening": {
            "title": "Outbound Transfer",
            "description": "Board your private vehicle transfer to the airport or railway station for your onward return journey home."
          }
        },
        "details": {
          "importantTimings": "Temple Darshan: 6:00 AM - 12:30 PM, 4:30 PM - 8:30 PM | Evening Aarti: 6:30 PM",
          "meals": "Breakfast & Special Dinner Buffet (100% Satvik Veg).",
          "transport": "AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).",
          "walkingLevel": "Moderate Paced (Gentle staircases, guide assistance available)",
          "stay": "Pilgrim Rest House (Safe, family-friendly rooms, walking distance to sacred sites)",
          "weather": "Perfect travel weather with low humidity and comfortable evening temperature 20°C.",
          "dressCode": "Traditional wear. Dhoti or Pyjama-Kurta for men; Saree or Salwar suit for women. Sleeveless strictly prohibited.",
          "packingSuggestions": "Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.",
          "accessibility": "Not recommended for guests requiring wheelchair support due to steep stairs and terrain.",
          "visitorNote": "Expect moderate physical movement. Wear athletic shoes with excellent grip.",
          "travelDuration": "Approx. 1 to 2 hours transfer"
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
      "Day 1: Arrival & Welcome at Vaishno Devi",
      "Day 2: Guided Sightseeing & Exploration of Vaishno Devi",
      "Day 3: Departure"
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
    "categoryLabel": "Islamic Pilgrimage",
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
      "Islamic Pilgrimage",
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
        "title": "Arrival & Settle in at Ajmer",
        "location": "Ajmer",
        "overview": "Welcome to your yatra. Arrive in Ajmer, transfer to your stay, and rest before your sightseeing tour.",
        "schedule": {
          "morning": {
            "title": "Arrival & Check-in",
            "description": "Arrive at the nearest transit hub. Meet our coordinator and transfer to your pre-booked stay in Ajmer."
          },
          "afternoon": {
            "title": "Leisure & Rest",
            "description": "Check into your hotel room, unpack your luggage, and rest to recover from your flight or train journey."
          },
          "evening": {
            "title": "Orientation Walk",
            "description": "Meet your local guide for a small walk around the neighborhood. Receive a detailed brief on local customs."
          }
        },
        "details": {
          "importantTimings": "Prayer Times: Fajr 4:45 AM, Dhuhr 12:30 PM, Asr 3:45 PM, Maghrib 6:45 PM, Isha 8:15 PM",
          "meals": "Welcome Drink & Buffet Dinner included (100% Satvik Veg).",
          "transport": "AC Shuttle Transit for close proximity site transfers and passenger drops.",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Vedic Heritage Inn (Ashram atmosphere, close to main shrines, Western toilets, hot water)",
          "weather": "Warm and sunny afternoon, ideal for outdoor sightseeing, average temp 24°C.",
          "dressCode": "Full Islamic modest attire. Women must wear loose clothing covering limbs and head. Men wear full trousers.",
          "packingSuggestions": "Comfortable travel footwear, photo ID, essential personal medication, daypack.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 1 to 2 hours transfer"
        }
      },
      {
        "day": 2,
        "title": "Explore Ajmer Sharif Dargah Heritage Centre",
        "location": "Ajmer",
        "overview": "Spend your day visiting Ajmer Sharif Dargah Heritage Centre, the primary attraction in Ajmer Sharif Dargah, accompanied by our expert guide.",
        "schedule": {
          "morning": {
            "title": "Guided Tour of Ajmer Sharif Dargah Heritage Centre",
            "description": "Early morning visit to Ajmer Sharif Dargah Heritage Centre to avoid crowds. Learn about the heritage and unique history of this landmark."
          },
          "afternoon": {
            "title": "Local Traditional Lunch",
            "description": "Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings."
          },
          "evening": {
            "title": "Evening walk at Ajmer Sharif Dargah Panoramic Viewpoint",
            "description": "Stroll around Ajmer Sharif Dargah Panoramic Viewpoint for scenic sunset views. Capture great family photos as the evening lights turn on."
          }
        },
        "details": {
          "importantTimings": "Prayer Times: Fajr 4:45 AM, Dhuhr 12:30 PM, Asr 3:45 PM, Maghrib 6:45 PM, Isha 8:15 PM",
          "meals": "Complimentary Breakfast & Traditional Lunch (100% Satvik Veg).",
          "transport": "AC Private Sedan with professional local driver (includes first-aid kit and bottled water).",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Premium Pilgrim Hotel (AC rooms, elevator, clean linen, hot water, elevator access)",
          "weather": "Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.",
          "dressCode": "Full Islamic modest attire. Women must wear loose clothing covering limbs and head. Men wear full trousers.",
          "packingSuggestions": "Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 3 to 4 hours local tour"
        }
      },
      {
        "day": 3,
        "title": "Souvenir Shopping & Onward Departure",
        "location": "Ajmer",
        "overview": "Conclude your memorable stay in Ajmer with local craft shopping, checkout, and outbound transfers.",
        "schedule": {
          "morning": {
            "title": "Handicrafts Shopping",
            "description": "Visit local co-operative markets to buy traditional souvenirs, regional sweets, or native organic spices."
          },
          "afternoon": {
            "title": "Check-out & Packing",
            "description": "Return to your hotel, pack your bags, clear any local incidentals, and check out from your rooms."
          },
          "evening": {
            "title": "Outbound Transfer",
            "description": "Board your private vehicle transfer to the airport or railway station for your onward return journey home."
          }
        },
        "details": {
          "importantTimings": "Prayer Times: Fajr 4:45 AM, Dhuhr 12:30 PM, Asr 3:45 PM, Maghrib 6:45 PM, Isha 8:15 PM",
          "meals": "Breakfast & Special Dinner Buffet (100% Satvik Veg).",
          "transport": "AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Pilgrim Rest House (Safe, family-friendly rooms, walking distance to sacred sites)",
          "weather": "Perfect travel weather with low humidity and comfortable evening temperature 20°C.",
          "dressCode": "Full Islamic modest attire. Women must wear loose clothing covering limbs and head. Men wear full trousers.",
          "packingSuggestions": "Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 1 to 2 hours transfer"
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
      "Day 1: Arrival & Welcome at Ajmer Sharif Dargah",
      "Day 2: Guided Sightseeing & Exploration of Ajmer Sharif Dargah",
      "Day 3: Departure"
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
    "categoryLabel": "Islamic Pilgrimage",
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
      "Islamic Pilgrimage",
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
        "title": "Arrival & Settle in at Jerusalem",
        "location": "Jerusalem",
        "overview": "Welcome to your yatra. Arrive in Jerusalem, transfer to your stay, and rest before your sightseeing tour.",
        "schedule": {
          "morning": {
            "title": "Arrival & Check-in",
            "description": "Arrive at the nearest transit hub. Meet our coordinator and transfer to your pre-booked stay in Jerusalem."
          },
          "afternoon": {
            "title": "Leisure & Rest",
            "description": "Check into your hotel room, unpack your luggage, and rest to recover from your flight or train journey."
          },
          "evening": {
            "title": "Orientation Walk",
            "description": "Meet your local guide for a small walk around the neighborhood. Receive a detailed brief on local customs."
          }
        },
        "details": {
          "importantTimings": "Prayer Times: Fajr 4:45 AM, Dhuhr 12:30 PM, Asr 3:45 PM, Maghrib 6:45 PM, Isha 8:15 PM",
          "meals": "Welcome Drink & Buffet Dinner included (100% Satvik Veg).",
          "transport": "AC Shuttle Transit for close proximity site transfers and passenger drops.",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Vedic Heritage Inn (Ashram atmosphere, close to main shrines, Western toilets, hot water)",
          "weather": "Warm and sunny afternoon, ideal for outdoor sightseeing, average temp 24°C.",
          "dressCode": "Full Islamic modest attire. Women must wear loose clothing covering limbs and head. Men wear full trousers.",
          "packingSuggestions": "Comfortable travel footwear, photo ID, essential personal medication, daypack.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 1 to 2 hours transfer"
        }
      },
      {
        "day": 2,
        "title": "Explore Al Aqsa Mosque, Jerusalem Heritage Centre",
        "location": "Jerusalem",
        "overview": "Spend your day visiting Al Aqsa Mosque, Jerusalem Heritage Centre, the primary attraction in Al Aqsa Mosque, Jerusalem, accompanied by our expert guide.",
        "schedule": {
          "morning": {
            "title": "Guided Tour of Al Aqsa Mosque, Jerusalem Heritage Centre",
            "description": "Early morning visit to Al Aqsa Mosque, Jerusalem Heritage Centre to avoid crowds. Learn about the heritage and unique history of this landmark."
          },
          "afternoon": {
            "title": "Local Traditional Lunch",
            "description": "Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings."
          },
          "evening": {
            "title": "Evening walk at Al Aqsa Mosque, Jerusalem Panoramic Viewpoint",
            "description": "Stroll around Al Aqsa Mosque, Jerusalem Panoramic Viewpoint for scenic sunset views. Capture great family photos as the evening lights turn on."
          }
        },
        "details": {
          "importantTimings": "Prayer Times: Fajr 4:45 AM, Dhuhr 12:30 PM, Asr 3:45 PM, Maghrib 6:45 PM, Isha 8:15 PM",
          "meals": "Complimentary Breakfast & Traditional Lunch (100% Satvik Veg).",
          "transport": "AC Private Sedan with professional local driver (includes first-aid kit and bottled water).",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Premium Pilgrim Hotel (AC rooms, elevator, clean linen, hot water, elevator access)",
          "weather": "Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.",
          "dressCode": "Full Islamic modest attire. Women must wear loose clothing covering limbs and head. Men wear full trousers.",
          "packingSuggestions": "Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 3 to 4 hours local tour"
        }
      },
      {
        "day": 3,
        "title": "Souvenir Shopping & Onward Departure",
        "location": "Jerusalem",
        "overview": "Conclude your memorable stay in Jerusalem with local craft shopping, checkout, and outbound transfers.",
        "schedule": {
          "morning": {
            "title": "Handicrafts Shopping",
            "description": "Visit local co-operative markets to buy traditional souvenirs, regional sweets, or native organic spices."
          },
          "afternoon": {
            "title": "Check-out & Packing",
            "description": "Return to your hotel, pack your bags, clear any local incidentals, and check out from your rooms."
          },
          "evening": {
            "title": "Outbound Transfer",
            "description": "Board your private vehicle transfer to the airport or railway station for your onward return journey home."
          }
        },
        "details": {
          "importantTimings": "Prayer Times: Fajr 4:45 AM, Dhuhr 12:30 PM, Asr 3:45 PM, Maghrib 6:45 PM, Isha 8:15 PM",
          "meals": "Breakfast & Special Dinner Buffet (100% Satvik Veg).",
          "transport": "AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Pilgrim Rest House (Safe, family-friendly rooms, walking distance to sacred sites)",
          "weather": "Perfect travel weather with low humidity and comfortable evening temperature 20°C.",
          "dressCode": "Full Islamic modest attire. Women must wear loose clothing covering limbs and head. Men wear full trousers.",
          "packingSuggestions": "Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 1 to 2 hours transfer"
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
      "Day 1: Arrival & Welcome at Al Aqsa Mosque, Jerusalem",
      "Day 2: Guided Sightseeing & Exploration of Al Aqsa Mosque, Jerusalem",
      "Day 3: Departure"
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
    "categoryLabel": "Islamic Pilgrimage",
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
      "Islamic Pilgrimage",
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
        "title": "Arrival & Settle in at Cairo",
        "location": "Cairo",
        "overview": "Welcome to your yatra. Arrive in Cairo, transfer to your stay, and rest before your sightseeing tour.",
        "schedule": {
          "morning": {
            "title": "Arrival & Check-in",
            "description": "Arrive at the nearest transit hub. Meet our coordinator and transfer to your pre-booked stay in Cairo."
          },
          "afternoon": {
            "title": "Leisure & Rest",
            "description": "Check into your hotel room, unpack your luggage, and rest to recover from your flight or train journey."
          },
          "evening": {
            "title": "Orientation Walk",
            "description": "Meet your local guide for a small walk around the neighborhood. Receive a detailed brief on local customs."
          }
        },
        "details": {
          "importantTimings": "Prayer Times: Fajr 4:45 AM, Dhuhr 12:30 PM, Asr 3:45 PM, Maghrib 6:45 PM, Isha 8:15 PM",
          "meals": "Welcome Drink & Buffet Dinner included (100% Satvik Veg).",
          "transport": "AC Shuttle Transit for close proximity site transfers and passenger drops.",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Vedic Heritage Inn (Ashram atmosphere, close to main shrines, Western toilets, hot water)",
          "weather": "Warm and sunny afternoon, ideal for outdoor sightseeing, average temp 24°C.",
          "dressCode": "Full Islamic modest attire. Women must wear loose clothing covering limbs and head. Men wear full trousers.",
          "packingSuggestions": "Comfortable travel footwear, photo ID, essential personal medication, daypack.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 1 to 2 hours transfer"
        }
      },
      {
        "day": 2,
        "title": "Explore Al Azhar Mosque, Cairo Heritage Centre",
        "location": "Cairo",
        "overview": "Spend your day visiting Al Azhar Mosque, Cairo Heritage Centre, the primary attraction in Al Azhar Mosque, Cairo, accompanied by our expert guide.",
        "schedule": {
          "morning": {
            "title": "Guided Tour of Al Azhar Mosque, Cairo Heritage Centre",
            "description": "Early morning visit to Al Azhar Mosque, Cairo Heritage Centre to avoid crowds. Learn about the heritage and unique history of this landmark."
          },
          "afternoon": {
            "title": "Local Traditional Lunch",
            "description": "Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings."
          },
          "evening": {
            "title": "Evening walk at Al Azhar Mosque, Cairo Panoramic Viewpoint",
            "description": "Stroll around Al Azhar Mosque, Cairo Panoramic Viewpoint for scenic sunset views. Capture great family photos as the evening lights turn on."
          }
        },
        "details": {
          "importantTimings": "Prayer Times: Fajr 4:45 AM, Dhuhr 12:30 PM, Asr 3:45 PM, Maghrib 6:45 PM, Isha 8:15 PM",
          "meals": "Complimentary Breakfast & Traditional Lunch (100% Satvik Veg).",
          "transport": "AC Private Sedan with professional local driver (includes first-aid kit and bottled water).",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Premium Pilgrim Hotel (AC rooms, elevator, clean linen, hot water, elevator access)",
          "weather": "Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.",
          "dressCode": "Full Islamic modest attire. Women must wear loose clothing covering limbs and head. Men wear full trousers.",
          "packingSuggestions": "Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 3 to 4 hours local tour"
        }
      },
      {
        "day": 3,
        "title": "Souvenir Shopping & Onward Departure",
        "location": "Cairo",
        "overview": "Conclude your memorable stay in Cairo with local craft shopping, checkout, and outbound transfers.",
        "schedule": {
          "morning": {
            "title": "Handicrafts Shopping",
            "description": "Visit local co-operative markets to buy traditional souvenirs, regional sweets, or native organic spices."
          },
          "afternoon": {
            "title": "Check-out & Packing",
            "description": "Return to your hotel, pack your bags, clear any local incidentals, and check out from your rooms."
          },
          "evening": {
            "title": "Outbound Transfer",
            "description": "Board your private vehicle transfer to the airport or railway station for your onward return journey home."
          }
        },
        "details": {
          "importantTimings": "Prayer Times: Fajr 4:45 AM, Dhuhr 12:30 PM, Asr 3:45 PM, Maghrib 6:45 PM, Isha 8:15 PM",
          "meals": "Breakfast & Special Dinner Buffet (100% Satvik Veg).",
          "transport": "AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Pilgrim Rest House (Safe, family-friendly rooms, walking distance to sacred sites)",
          "weather": "Perfect travel weather with low humidity and comfortable evening temperature 20°C.",
          "dressCode": "Full Islamic modest attire. Women must wear loose clothing covering limbs and head. Men wear full trousers.",
          "packingSuggestions": "Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 1 to 2 hours transfer"
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
      "Day 1: Arrival & Welcome at Al Azhar Mosque, Cairo",
      "Day 2: Guided Sightseeing & Exploration of Al Azhar Mosque, Cairo",
      "Day 3: Departure"
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
    "categoryLabel": "Islamic Pilgrimage",
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
      "Islamic Pilgrimage",
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
        "title": "Arrival & Settle in at Medina",
        "location": "Medina",
        "overview": "Welcome to your yatra. Arrive in Medina, transfer to your stay, and rest before your sightseeing tour.",
        "schedule": {
          "morning": {
            "title": "Arrival & Check-in",
            "description": "Arrive at the nearest transit hub. Meet our coordinator and transfer to your pre-booked stay in Medina."
          },
          "afternoon": {
            "title": "Leisure & Rest",
            "description": "Check into your hotel room, unpack your luggage, and rest to recover from your flight or train journey."
          },
          "evening": {
            "title": "Orientation Walk",
            "description": "Meet your local guide for a small walk around the neighborhood. Receive a detailed brief on local customs."
          }
        },
        "details": {
          "importantTimings": "Prayer Times: Fajr 4:45 AM, Dhuhr 12:30 PM, Asr 3:45 PM, Maghrib 6:45 PM, Isha 8:15 PM",
          "meals": "Welcome Drink & Buffet Dinner included (100% Satvik Veg).",
          "transport": "AC Shuttle Transit for close proximity site transfers and passenger drops.",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Vedic Heritage Inn (Ashram atmosphere, close to main shrines, Western toilets, hot water)",
          "weather": "Warm and sunny afternoon, ideal for outdoor sightseeing, average temp 24°C.",
          "dressCode": "Full Islamic modest attire. Women must wear loose clothing covering limbs and head. Men wear full trousers.",
          "packingSuggestions": "Comfortable travel footwear, photo ID, essential personal medication, daypack.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 1 to 2 hours transfer"
        }
      },
      {
        "day": 2,
        "title": "Explore Al Masjid al Qiblatayn, Medina Heritage Centre",
        "location": "Medina",
        "overview": "Spend your day visiting Al Masjid al Qiblatayn, Medina Heritage Centre, the primary attraction in Al Masjid al Qiblatayn, Medina, accompanied by our expert guide.",
        "schedule": {
          "morning": {
            "title": "Guided Tour of Al Masjid al Qiblatayn, Medina Heritage Centre",
            "description": "Early morning visit to Al Masjid al Qiblatayn, Medina Heritage Centre to avoid crowds. Learn about the heritage and unique history of this landmark."
          },
          "afternoon": {
            "title": "Local Traditional Lunch",
            "description": "Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings."
          },
          "evening": {
            "title": "Evening walk at Al Masjid al Qiblatayn, Medina Panoramic Viewpoint",
            "description": "Stroll around Al Masjid al Qiblatayn, Medina Panoramic Viewpoint for scenic sunset views. Capture great family photos as the evening lights turn on."
          }
        },
        "details": {
          "importantTimings": "Prayer Times: Fajr 4:45 AM, Dhuhr 12:30 PM, Asr 3:45 PM, Maghrib 6:45 PM, Isha 8:15 PM",
          "meals": "Complimentary Breakfast & Traditional Lunch (100% Satvik Veg).",
          "transport": "AC Private Sedan with professional local driver (includes first-aid kit and bottled water).",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Premium Pilgrim Hotel (AC rooms, elevator, clean linen, hot water, elevator access)",
          "weather": "Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.",
          "dressCode": "Full Islamic modest attire. Women must wear loose clothing covering limbs and head. Men wear full trousers.",
          "packingSuggestions": "Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 3 to 4 hours local tour"
        }
      },
      {
        "day": 3,
        "title": "Souvenir Shopping & Onward Departure",
        "location": "Medina",
        "overview": "Conclude your memorable stay in Medina with local craft shopping, checkout, and outbound transfers.",
        "schedule": {
          "morning": {
            "title": "Handicrafts Shopping",
            "description": "Visit local co-operative markets to buy traditional souvenirs, regional sweets, or native organic spices."
          },
          "afternoon": {
            "title": "Check-out & Packing",
            "description": "Return to your hotel, pack your bags, clear any local incidentals, and check out from your rooms."
          },
          "evening": {
            "title": "Outbound Transfer",
            "description": "Board your private vehicle transfer to the airport or railway station for your onward return journey home."
          }
        },
        "details": {
          "importantTimings": "Prayer Times: Fajr 4:45 AM, Dhuhr 12:30 PM, Asr 3:45 PM, Maghrib 6:45 PM, Isha 8:15 PM",
          "meals": "Breakfast & Special Dinner Buffet (100% Satvik Veg).",
          "transport": "AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Pilgrim Rest House (Safe, family-friendly rooms, walking distance to sacred sites)",
          "weather": "Perfect travel weather with low humidity and comfortable evening temperature 20°C.",
          "dressCode": "Full Islamic modest attire. Women must wear loose clothing covering limbs and head. Men wear full trousers.",
          "packingSuggestions": "Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 1 to 2 hours transfer"
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
      "Day 1: Arrival & Welcome at Al Masjid al Qiblatayn, Medina",
      "Day 2: Guided Sightseeing & Exploration of Al Masjid al Qiblatayn, Medina",
      "Day 3: Departure"
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
    "categoryLabel": "Islamic Pilgrimage",
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
      "Islamic Pilgrimage",
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
        "title": "Arrival & Settle in at Lahore",
        "location": "Lahore",
        "overview": "Welcome to your yatra. Arrive in Lahore, transfer to your stay, and rest before your sightseeing tour.",
        "schedule": {
          "morning": {
            "title": "Arrival & Check-in",
            "description": "Arrive at the nearest transit hub. Meet our coordinator and transfer to your pre-booked stay in Lahore."
          },
          "afternoon": {
            "title": "Leisure & Rest",
            "description": "Check into your hotel room, unpack your luggage, and rest to recover from your flight or train journey."
          },
          "evening": {
            "title": "Orientation Walk",
            "description": "Meet your local guide for a small walk around the neighborhood. Receive a detailed brief on local customs."
          }
        },
        "details": {
          "importantTimings": "Prayer Times: Fajr 4:45 AM, Dhuhr 12:30 PM, Asr 3:45 PM, Maghrib 6:45 PM, Isha 8:15 PM",
          "meals": "Welcome Drink & Buffet Dinner included (100% Satvik Veg).",
          "transport": "AC Shuttle Transit for close proximity site transfers and passenger drops.",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Vedic Heritage Inn (Ashram atmosphere, close to main shrines, Western toilets, hot water)",
          "weather": "Warm and sunny afternoon, ideal for outdoor sightseeing, average temp 24°C.",
          "dressCode": "Full Islamic modest attire. Women must wear loose clothing covering limbs and head. Men wear full trousers.",
          "packingSuggestions": "Comfortable travel footwear, photo ID, essential personal medication, daypack.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 1 to 2 hours transfer"
        }
      },
      {
        "day": 2,
        "title": "Explore Data Darbar, Lahore Heritage Centre",
        "location": "Lahore",
        "overview": "Spend your day visiting Data Darbar, Lahore Heritage Centre, the primary attraction in Data Darbar, Lahore, accompanied by our expert guide.",
        "schedule": {
          "morning": {
            "title": "Guided Tour of Data Darbar, Lahore Heritage Centre",
            "description": "Early morning visit to Data Darbar, Lahore Heritage Centre to avoid crowds. Learn about the heritage and unique history of this landmark."
          },
          "afternoon": {
            "title": "Local Traditional Lunch",
            "description": "Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings."
          },
          "evening": {
            "title": "Evening walk at Data Darbar, Lahore Panoramic Viewpoint",
            "description": "Stroll around Data Darbar, Lahore Panoramic Viewpoint for scenic sunset views. Capture great family photos as the evening lights turn on."
          }
        },
        "details": {
          "importantTimings": "Prayer Times: Fajr 4:45 AM, Dhuhr 12:30 PM, Asr 3:45 PM, Maghrib 6:45 PM, Isha 8:15 PM",
          "meals": "Complimentary Breakfast & Traditional Lunch (100% Satvik Veg).",
          "transport": "AC Private Sedan with professional local driver (includes first-aid kit and bottled water).",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Premium Pilgrim Hotel (AC rooms, elevator, clean linen, hot water, elevator access)",
          "weather": "Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.",
          "dressCode": "Full Islamic modest attire. Women must wear loose clothing covering limbs and head. Men wear full trousers.",
          "packingSuggestions": "Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 3 to 4 hours local tour"
        }
      },
      {
        "day": 3,
        "title": "Souvenir Shopping & Onward Departure",
        "location": "Lahore",
        "overview": "Conclude your memorable stay in Lahore with local craft shopping, checkout, and outbound transfers.",
        "schedule": {
          "morning": {
            "title": "Handicrafts Shopping",
            "description": "Visit local co-operative markets to buy traditional souvenirs, regional sweets, or native organic spices."
          },
          "afternoon": {
            "title": "Check-out & Packing",
            "description": "Return to your hotel, pack your bags, clear any local incidentals, and check out from your rooms."
          },
          "evening": {
            "title": "Outbound Transfer",
            "description": "Board your private vehicle transfer to the airport or railway station for your onward return journey home."
          }
        },
        "details": {
          "importantTimings": "Prayer Times: Fajr 4:45 AM, Dhuhr 12:30 PM, Asr 3:45 PM, Maghrib 6:45 PM, Isha 8:15 PM",
          "meals": "Breakfast & Special Dinner Buffet (100% Satvik Veg).",
          "transport": "AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Pilgrim Rest House (Safe, family-friendly rooms, walking distance to sacred sites)",
          "weather": "Perfect travel weather with low humidity and comfortable evening temperature 20°C.",
          "dressCode": "Full Islamic modest attire. Women must wear loose clothing covering limbs and head. Men wear full trousers.",
          "packingSuggestions": "Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 1 to 2 hours transfer"
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
      "Day 1: Arrival & Welcome at Data Darbar, Lahore",
      "Day 2: Guided Sightseeing & Exploration of Data Darbar, Lahore",
      "Day 3: Departure"
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
    "categoryLabel": "Islamic Pilgrimage",
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
      "Islamic Pilgrimage",
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
        "title": "Arrival & Settle in at Jerusalem",
        "location": "Jerusalem",
        "overview": "Welcome to your yatra. Arrive in Jerusalem, transfer to your stay, and rest before your sightseeing tour.",
        "schedule": {
          "morning": {
            "title": "Arrival & Check-in",
            "description": "Arrive at the nearest transit hub. Meet our coordinator and transfer to your pre-booked stay in Jerusalem."
          },
          "afternoon": {
            "title": "Leisure & Rest",
            "description": "Check into your hotel room, unpack your luggage, and rest to recover from your flight or train journey."
          },
          "evening": {
            "title": "Orientation Walk",
            "description": "Meet your local guide for a small walk around the neighborhood. Receive a detailed brief on local customs."
          }
        },
        "details": {
          "importantTimings": "Prayer Times: Fajr 4:45 AM, Dhuhr 12:30 PM, Asr 3:45 PM, Maghrib 6:45 PM, Isha 8:15 PM",
          "meals": "Welcome Drink & Buffet Dinner included (100% Satvik Veg).",
          "transport": "AC Shuttle Transit for close proximity site transfers and passenger drops.",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Vedic Heritage Inn (Ashram atmosphere, close to main shrines, Western toilets, hot water)",
          "weather": "Warm and sunny afternoon, ideal for outdoor sightseeing, average temp 24°C.",
          "dressCode": "Full Islamic modest attire. Women must wear loose clothing covering limbs and head. Men wear full trousers.",
          "packingSuggestions": "Comfortable travel footwear, photo ID, essential personal medication, daypack.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 1 to 2 hours transfer"
        }
      },
      {
        "day": 2,
        "title": "Explore Dome of the Rock, Jerusalem Heritage Centre",
        "location": "Jerusalem",
        "overview": "Spend your day visiting Dome of the Rock, Jerusalem Heritage Centre, the primary attraction in Dome of the Rock, Jerusalem, accompanied by our expert guide.",
        "schedule": {
          "morning": {
            "title": "Guided Tour of Dome of the Rock, Jerusalem Heritage Centre",
            "description": "Early morning visit to Dome of the Rock, Jerusalem Heritage Centre to avoid crowds. Learn about the heritage and unique history of this landmark."
          },
          "afternoon": {
            "title": "Local Traditional Lunch",
            "description": "Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings."
          },
          "evening": {
            "title": "Evening walk at Dome of the Rock, Jerusalem Panoramic Viewpoint",
            "description": "Stroll around Dome of the Rock, Jerusalem Panoramic Viewpoint for scenic sunset views. Capture great family photos as the evening lights turn on."
          }
        },
        "details": {
          "importantTimings": "Prayer Times: Fajr 4:45 AM, Dhuhr 12:30 PM, Asr 3:45 PM, Maghrib 6:45 PM, Isha 8:15 PM",
          "meals": "Complimentary Breakfast & Traditional Lunch (100% Satvik Veg).",
          "transport": "AC Private Sedan with professional local driver (includes first-aid kit and bottled water).",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Premium Pilgrim Hotel (AC rooms, elevator, clean linen, hot water, elevator access)",
          "weather": "Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.",
          "dressCode": "Full Islamic modest attire. Women must wear loose clothing covering limbs and head. Men wear full trousers.",
          "packingSuggestions": "Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 3 to 4 hours local tour"
        }
      },
      {
        "day": 3,
        "title": "Souvenir Shopping & Onward Departure",
        "location": "Jerusalem",
        "overview": "Conclude your memorable stay in Jerusalem with local craft shopping, checkout, and outbound transfers.",
        "schedule": {
          "morning": {
            "title": "Handicrafts Shopping",
            "description": "Visit local co-operative markets to buy traditional souvenirs, regional sweets, or native organic spices."
          },
          "afternoon": {
            "title": "Check-out & Packing",
            "description": "Return to your hotel, pack your bags, clear any local incidentals, and check out from your rooms."
          },
          "evening": {
            "title": "Outbound Transfer",
            "description": "Board your private vehicle transfer to the airport or railway station for your onward return journey home."
          }
        },
        "details": {
          "importantTimings": "Prayer Times: Fajr 4:45 AM, Dhuhr 12:30 PM, Asr 3:45 PM, Maghrib 6:45 PM, Isha 8:15 PM",
          "meals": "Breakfast & Special Dinner Buffet (100% Satvik Veg).",
          "transport": "AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Pilgrim Rest House (Safe, family-friendly rooms, walking distance to sacred sites)",
          "weather": "Perfect travel weather with low humidity and comfortable evening temperature 20°C.",
          "dressCode": "Full Islamic modest attire. Women must wear loose clothing covering limbs and head. Men wear full trousers.",
          "packingSuggestions": "Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 1 to 2 hours transfer"
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
      "Day 1: Arrival & Welcome at Dome of the Rock, Jerusalem",
      "Day 2: Guided Sightseeing & Exploration of Dome of the Rock, Jerusalem",
      "Day 3: Departure"
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
    "categoryLabel": "Islamic Pilgrimage",
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
      "Islamic Pilgrimage",
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
        "title": "Arrival & Settle in at Najaf",
        "location": "Najaf",
        "overview": "Welcome to your yatra. Arrive in Najaf, transfer to your stay, and rest before your sightseeing tour.",
        "schedule": {
          "morning": {
            "title": "Arrival & Check-in",
            "description": "Arrive at the nearest transit hub. Meet our coordinator and transfer to your pre-booked stay in Najaf."
          },
          "afternoon": {
            "title": "Leisure & Rest",
            "description": "Check into your hotel room, unpack your luggage, and rest to recover from your flight or train journey."
          },
          "evening": {
            "title": "Orientation Walk",
            "description": "Meet your local guide for a small walk around the neighborhood. Receive a detailed brief on local customs."
          }
        },
        "details": {
          "importantTimings": "Prayer Times: Fajr 4:45 AM, Dhuhr 12:30 PM, Asr 3:45 PM, Maghrib 6:45 PM, Isha 8:15 PM",
          "meals": "Welcome Drink & Buffet Dinner included (100% Satvik Veg).",
          "transport": "AC Shuttle Transit for close proximity site transfers and passenger drops.",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Vedic Heritage Inn (Ashram atmosphere, close to main shrines, Western toilets, hot water)",
          "weather": "Warm and sunny afternoon, ideal for outdoor sightseeing, average temp 24°C.",
          "dressCode": "Full Islamic modest attire. Women must wear loose clothing covering limbs and head. Men wear full trousers.",
          "packingSuggestions": "Comfortable travel footwear, photo ID, essential personal medication, daypack.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 1 to 2 hours transfer"
        }
      },
      {
        "day": 2,
        "title": "Explore Imam Ali Shrine, Najaf Heritage Centre",
        "location": "Najaf",
        "overview": "Spend your day visiting Imam Ali Shrine, Najaf Heritage Centre, the primary attraction in Imam Ali Shrine, Najaf, accompanied by our expert guide.",
        "schedule": {
          "morning": {
            "title": "Guided Tour of Imam Ali Shrine, Najaf Heritage Centre",
            "description": "Early morning visit to Imam Ali Shrine, Najaf Heritage Centre to avoid crowds. Learn about the heritage and unique history of this landmark."
          },
          "afternoon": {
            "title": "Local Traditional Lunch",
            "description": "Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings."
          },
          "evening": {
            "title": "Evening walk at Imam Ali Shrine, Najaf Panoramic Viewpoint",
            "description": "Stroll around Imam Ali Shrine, Najaf Panoramic Viewpoint for scenic sunset views. Capture great family photos as the evening lights turn on."
          }
        },
        "details": {
          "importantTimings": "Prayer Times: Fajr 4:45 AM, Dhuhr 12:30 PM, Asr 3:45 PM, Maghrib 6:45 PM, Isha 8:15 PM",
          "meals": "Complimentary Breakfast & Traditional Lunch (100% Satvik Veg).",
          "transport": "AC Private Sedan with professional local driver (includes first-aid kit and bottled water).",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Premium Pilgrim Hotel (AC rooms, elevator, clean linen, hot water, elevator access)",
          "weather": "Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.",
          "dressCode": "Full Islamic modest attire. Women must wear loose clothing covering limbs and head. Men wear full trousers.",
          "packingSuggestions": "Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 3 to 4 hours local tour"
        }
      },
      {
        "day": 3,
        "title": "Souvenir Shopping & Onward Departure",
        "location": "Najaf",
        "overview": "Conclude your memorable stay in Najaf with local craft shopping, checkout, and outbound transfers.",
        "schedule": {
          "morning": {
            "title": "Handicrafts Shopping",
            "description": "Visit local co-operative markets to buy traditional souvenirs, regional sweets, or native organic spices."
          },
          "afternoon": {
            "title": "Check-out & Packing",
            "description": "Return to your hotel, pack your bags, clear any local incidentals, and check out from your rooms."
          },
          "evening": {
            "title": "Outbound Transfer",
            "description": "Board your private vehicle transfer to the airport or railway station for your onward return journey home."
          }
        },
        "details": {
          "importantTimings": "Prayer Times: Fajr 4:45 AM, Dhuhr 12:30 PM, Asr 3:45 PM, Maghrib 6:45 PM, Isha 8:15 PM",
          "meals": "Breakfast & Special Dinner Buffet (100% Satvik Veg).",
          "transport": "AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Pilgrim Rest House (Safe, family-friendly rooms, walking distance to sacred sites)",
          "weather": "Perfect travel weather with low humidity and comfortable evening temperature 20°C.",
          "dressCode": "Full Islamic modest attire. Women must wear loose clothing covering limbs and head. Men wear full trousers.",
          "packingSuggestions": "Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 1 to 2 hours transfer"
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
      "Day 1: Arrival & Welcome at Imam Ali Shrine, Najaf",
      "Day 2: Guided Sightseeing & Exploration of Imam Ali Shrine, Najaf",
      "Day 3: Departure"
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
    "categoryLabel": "Islamic Pilgrimage",
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
      "Islamic Pilgrimage",
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
        "title": "Arrival & Settle in at Karbala",
        "location": "Karbala",
        "overview": "Welcome to your yatra. Arrive in Karbala, transfer to your stay, and rest before your sightseeing tour.",
        "schedule": {
          "morning": {
            "title": "Arrival & Check-in",
            "description": "Arrive at the nearest transit hub. Meet our coordinator and transfer to your pre-booked stay in Karbala."
          },
          "afternoon": {
            "title": "Leisure & Rest",
            "description": "Check into your hotel room, unpack your luggage, and rest to recover from your flight or train journey."
          },
          "evening": {
            "title": "Orientation Walk",
            "description": "Meet your local guide for a small walk around the neighborhood. Receive a detailed brief on local customs."
          }
        },
        "details": {
          "importantTimings": "Prayer Times: Fajr 4:45 AM, Dhuhr 12:30 PM, Asr 3:45 PM, Maghrib 6:45 PM, Isha 8:15 PM",
          "meals": "Welcome Drink & Buffet Dinner included (100% Satvik Veg).",
          "transport": "AC Shuttle Transit for close proximity site transfers and passenger drops.",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Vedic Heritage Inn (Ashram atmosphere, close to main shrines, Western toilets, hot water)",
          "weather": "Warm and sunny afternoon, ideal for outdoor sightseeing, average temp 24°C.",
          "dressCode": "Full Islamic modest attire. Women must wear loose clothing covering limbs and head. Men wear full trousers.",
          "packingSuggestions": "Comfortable travel footwear, photo ID, essential personal medication, daypack.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 1 to 2 hours transfer"
        }
      },
      {
        "day": 2,
        "title": "Explore Imam Husayn Shrine, Karbala Heritage Centre",
        "location": "Karbala",
        "overview": "Spend your day visiting Imam Husayn Shrine, Karbala Heritage Centre, the primary attraction in Imam Husayn Shrine, Karbala, accompanied by our expert guide.",
        "schedule": {
          "morning": {
            "title": "Guided Tour of Imam Husayn Shrine, Karbala Heritage Centre",
            "description": "Early morning visit to Imam Husayn Shrine, Karbala Heritage Centre to avoid crowds. Learn about the heritage and unique history of this landmark."
          },
          "afternoon": {
            "title": "Local Traditional Lunch",
            "description": "Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings."
          },
          "evening": {
            "title": "Evening walk at Imam Husayn Shrine, Karbala Panoramic Viewpoint",
            "description": "Stroll around Imam Husayn Shrine, Karbala Panoramic Viewpoint for scenic sunset views. Capture great family photos as the evening lights turn on."
          }
        },
        "details": {
          "importantTimings": "Prayer Times: Fajr 4:45 AM, Dhuhr 12:30 PM, Asr 3:45 PM, Maghrib 6:45 PM, Isha 8:15 PM",
          "meals": "Complimentary Breakfast & Traditional Lunch (100% Satvik Veg).",
          "transport": "AC Private Sedan with professional local driver (includes first-aid kit and bottled water).",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Premium Pilgrim Hotel (AC rooms, elevator, clean linen, hot water, elevator access)",
          "weather": "Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.",
          "dressCode": "Full Islamic modest attire. Women must wear loose clothing covering limbs and head. Men wear full trousers.",
          "packingSuggestions": "Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 3 to 4 hours local tour"
        }
      },
      {
        "day": 3,
        "title": "Souvenir Shopping & Onward Departure",
        "location": "Karbala",
        "overview": "Conclude your memorable stay in Karbala with local craft shopping, checkout, and outbound transfers.",
        "schedule": {
          "morning": {
            "title": "Handicrafts Shopping",
            "description": "Visit local co-operative markets to buy traditional souvenirs, regional sweets, or native organic spices."
          },
          "afternoon": {
            "title": "Check-out & Packing",
            "description": "Return to your hotel, pack your bags, clear any local incidentals, and check out from your rooms."
          },
          "evening": {
            "title": "Outbound Transfer",
            "description": "Board your private vehicle transfer to the airport or railway station for your onward return journey home."
          }
        },
        "details": {
          "importantTimings": "Prayer Times: Fajr 4:45 AM, Dhuhr 12:30 PM, Asr 3:45 PM, Maghrib 6:45 PM, Isha 8:15 PM",
          "meals": "Breakfast & Special Dinner Buffet (100% Satvik Veg).",
          "transport": "AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Pilgrim Rest House (Safe, family-friendly rooms, walking distance to sacred sites)",
          "weather": "Perfect travel weather with low humidity and comfortable evening temperature 20°C.",
          "dressCode": "Full Islamic modest attire. Women must wear loose clothing covering limbs and head. Men wear full trousers.",
          "packingSuggestions": "Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 1 to 2 hours transfer"
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
      "Day 1: Arrival & Welcome at Imam Husayn Shrine, Karbala",
      "Day 2: Guided Sightseeing & Exploration of Imam Husayn Shrine, Karbala",
      "Day 3: Departure"
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
    "categoryLabel": "Islamic Pilgrimage",
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
      "Islamic Pilgrimage",
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
        "title": "Arrival & Settle in at Mashhad",
        "location": "Mashhad",
        "overview": "Welcome to your yatra. Arrive in Mashhad, transfer to your stay, and rest before your sightseeing tour.",
        "schedule": {
          "morning": {
            "title": "Arrival & Check-in",
            "description": "Arrive at the nearest transit hub. Meet our coordinator and transfer to your pre-booked stay in Mashhad."
          },
          "afternoon": {
            "title": "Leisure & Rest",
            "description": "Check into your hotel room, unpack your luggage, and rest to recover from your flight or train journey."
          },
          "evening": {
            "title": "Orientation Walk",
            "description": "Meet your local guide for a small walk around the neighborhood. Receive a detailed brief on local customs."
          }
        },
        "details": {
          "importantTimings": "Prayer Times: Fajr 4:45 AM, Dhuhr 12:30 PM, Asr 3:45 PM, Maghrib 6:45 PM, Isha 8:15 PM",
          "meals": "Welcome Drink & Buffet Dinner included (100% Satvik Veg).",
          "transport": "AC Shuttle Transit for close proximity site transfers and passenger drops.",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Vedic Heritage Inn (Ashram atmosphere, close to main shrines, Western toilets, hot water)",
          "weather": "Warm and sunny afternoon, ideal for outdoor sightseeing, average temp 24°C.",
          "dressCode": "Full Islamic modest attire. Women must wear loose clothing covering limbs and head. Men wear full trousers.",
          "packingSuggestions": "Comfortable travel footwear, photo ID, essential personal medication, daypack.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 1 to 2 hours transfer"
        }
      },
      {
        "day": 2,
        "title": "Explore Imam Reza Shrine, Mashhad Heritage Centre",
        "location": "Mashhad",
        "overview": "Spend your day visiting Imam Reza Shrine, Mashhad Heritage Centre, the primary attraction in Imam Reza Shrine, Mashhad, accompanied by our expert guide.",
        "schedule": {
          "morning": {
            "title": "Guided Tour of Imam Reza Shrine, Mashhad Heritage Centre",
            "description": "Early morning visit to Imam Reza Shrine, Mashhad Heritage Centre to avoid crowds. Learn about the heritage and unique history of this landmark."
          },
          "afternoon": {
            "title": "Local Traditional Lunch",
            "description": "Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings."
          },
          "evening": {
            "title": "Evening walk at Imam Reza Shrine, Mashhad Panoramic Viewpoint",
            "description": "Stroll around Imam Reza Shrine, Mashhad Panoramic Viewpoint for scenic sunset views. Capture great family photos as the evening lights turn on."
          }
        },
        "details": {
          "importantTimings": "Prayer Times: Fajr 4:45 AM, Dhuhr 12:30 PM, Asr 3:45 PM, Maghrib 6:45 PM, Isha 8:15 PM",
          "meals": "Complimentary Breakfast & Traditional Lunch (100% Satvik Veg).",
          "transport": "AC Private Sedan with professional local driver (includes first-aid kit and bottled water).",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Premium Pilgrim Hotel (AC rooms, elevator, clean linen, hot water, elevator access)",
          "weather": "Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.",
          "dressCode": "Full Islamic modest attire. Women must wear loose clothing covering limbs and head. Men wear full trousers.",
          "packingSuggestions": "Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 3 to 4 hours local tour"
        }
      },
      {
        "day": 3,
        "title": "Souvenir Shopping & Onward Departure",
        "location": "Mashhad",
        "overview": "Conclude your memorable stay in Mashhad with local craft shopping, checkout, and outbound transfers.",
        "schedule": {
          "morning": {
            "title": "Handicrafts Shopping",
            "description": "Visit local co-operative markets to buy traditional souvenirs, regional sweets, or native organic spices."
          },
          "afternoon": {
            "title": "Check-out & Packing",
            "description": "Return to your hotel, pack your bags, clear any local incidentals, and check out from your rooms."
          },
          "evening": {
            "title": "Outbound Transfer",
            "description": "Board your private vehicle transfer to the airport or railway station for your onward return journey home."
          }
        },
        "details": {
          "importantTimings": "Prayer Times: Fajr 4:45 AM, Dhuhr 12:30 PM, Asr 3:45 PM, Maghrib 6:45 PM, Isha 8:15 PM",
          "meals": "Breakfast & Special Dinner Buffet (100% Satvik Veg).",
          "transport": "AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Pilgrim Rest House (Safe, family-friendly rooms, walking distance to sacred sites)",
          "weather": "Perfect travel weather with low humidity and comfortable evening temperature 20°C.",
          "dressCode": "Full Islamic modest attire. Women must wear loose clothing covering limbs and head. Men wear full trousers.",
          "packingSuggestions": "Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 1 to 2 hours transfer"
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
      "Day 1: Arrival & Welcome at Imam Reza Shrine, Mashhad",
      "Day 2: Guided Sightseeing & Exploration of Imam Reza Shrine, Mashhad",
      "Day 3: Departure"
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
    "categoryLabel": "Islamic Pilgrimage",
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
      "Islamic Pilgrimage",
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
        "title": "Arrival & Settle in at Makkah",
        "location": "Makkah",
        "overview": "Welcome to your yatra. Arrive in Makkah, transfer to your stay, and rest before your sightseeing tour.",
        "schedule": {
          "morning": {
            "title": "Arrival & Check-in",
            "description": "Arrive at the nearest transit hub. Meet our coordinator and transfer to your pre-booked stay in Makkah."
          },
          "afternoon": {
            "title": "Leisure & Rest",
            "description": "Check into your hotel room, unpack your luggage, and rest to recover from your flight or train journey."
          },
          "evening": {
            "title": "Orientation Walk",
            "description": "Meet your local guide for a small walk around the neighborhood. Receive a detailed brief on local customs."
          }
        },
        "details": {
          "importantTimings": "Prayer Times: Fajr 4:45 AM, Dhuhr 12:30 PM, Asr 3:45 PM, Maghrib 6:45 PM, Isha 8:15 PM",
          "meals": "Welcome Drink & Buffet Dinner included (100% Satvik Veg).",
          "transport": "AC Shuttle Transit for close proximity site transfers and passenger drops.",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Vedic Heritage Inn (Ashram atmosphere, close to main shrines, Western toilets, hot water)",
          "weather": "Warm and sunny afternoon, ideal for outdoor sightseeing, average temp 24°C.",
          "dressCode": "Full Islamic modest attire. Women must wear loose clothing covering limbs and head. Men wear full trousers.",
          "packingSuggestions": "Comfortable travel footwear, photo ID, essential personal medication, daypack.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 1 to 2 hours transfer"
        }
      },
      {
        "day": 2,
        "title": "Explore Mecca Heritage Centre",
        "location": "Makkah",
        "overview": "Spend your day visiting Mecca Heritage Centre, the primary attraction in Mecca, accompanied by our expert guide.",
        "schedule": {
          "morning": {
            "title": "Guided Tour of Mecca Heritage Centre",
            "description": "Early morning visit to Mecca Heritage Centre to avoid crowds. Learn about the heritage and unique history of this landmark."
          },
          "afternoon": {
            "title": "Local Traditional Lunch",
            "description": "Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings."
          },
          "evening": {
            "title": "Evening walk at Mecca Panoramic Viewpoint",
            "description": "Stroll around Mecca Panoramic Viewpoint for scenic sunset views. Capture great family photos as the evening lights turn on."
          }
        },
        "details": {
          "importantTimings": "Prayer Times: Fajr 4:45 AM, Dhuhr 12:30 PM, Asr 3:45 PM, Maghrib 6:45 PM, Isha 8:15 PM",
          "meals": "Complimentary Breakfast & Traditional Lunch (100% Satvik Veg).",
          "transport": "AC Private Sedan with professional local driver (includes first-aid kit and bottled water).",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Premium Pilgrim Hotel (AC rooms, elevator, clean linen, hot water, elevator access)",
          "weather": "Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.",
          "dressCode": "Full Islamic modest attire. Women must wear loose clothing covering limbs and head. Men wear full trousers.",
          "packingSuggestions": "Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 3 to 4 hours local tour"
        }
      },
      {
        "day": 3,
        "title": "Souvenir Shopping & Onward Departure",
        "location": "Makkah",
        "overview": "Conclude your memorable stay in Makkah with local craft shopping, checkout, and outbound transfers.",
        "schedule": {
          "morning": {
            "title": "Handicrafts Shopping",
            "description": "Visit local co-operative markets to buy traditional souvenirs, regional sweets, or native organic spices."
          },
          "afternoon": {
            "title": "Check-out & Packing",
            "description": "Return to your hotel, pack your bags, clear any local incidentals, and check out from your rooms."
          },
          "evening": {
            "title": "Outbound Transfer",
            "description": "Board your private vehicle transfer to the airport or railway station for your onward return journey home."
          }
        },
        "details": {
          "importantTimings": "Prayer Times: Fajr 4:45 AM, Dhuhr 12:30 PM, Asr 3:45 PM, Maghrib 6:45 PM, Isha 8:15 PM",
          "meals": "Breakfast & Special Dinner Buffet (100% Satvik Veg).",
          "transport": "AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Pilgrim Rest House (Safe, family-friendly rooms, walking distance to sacred sites)",
          "weather": "Perfect travel weather with low humidity and comfortable evening temperature 20°C.",
          "dressCode": "Full Islamic modest attire. Women must wear loose clothing covering limbs and head. Men wear full trousers.",
          "packingSuggestions": "Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 1 to 2 hours transfer"
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
      "Day 1: Arrival & Welcome at Mecca",
      "Day 2: Guided Sightseeing & Exploration of Mecca",
      "Day 3: Departure"
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
    "categoryLabel": "Islamic Pilgrimage",
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
      "Islamic Pilgrimage",
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
        "title": "Arrival & Settle in at Saudi Arabia",
        "location": "Saudi Arabia",
        "overview": "Welcome to your yatra. Arrive in Saudi Arabia, transfer to your stay, and rest before your sightseeing tour.",
        "schedule": {
          "morning": {
            "title": "Arrival & Check-in",
            "description": "Arrive at the nearest transit hub. Meet our coordinator and transfer to your pre-booked stay in Saudi Arabia."
          },
          "afternoon": {
            "title": "Leisure & Rest",
            "description": "Check into your hotel room, unpack your luggage, and rest to recover from your flight or train journey."
          },
          "evening": {
            "title": "Orientation Walk",
            "description": "Meet your local guide for a small walk around the neighborhood. Receive a detailed brief on local customs."
          }
        },
        "details": {
          "importantTimings": "Prayer Times: Fajr 4:45 AM, Dhuhr 12:30 PM, Asr 3:45 PM, Maghrib 6:45 PM, Isha 8:15 PM",
          "meals": "Welcome Drink & Buffet Dinner included (100% Satvik Veg).",
          "transport": "AC Shuttle Transit for close proximity site transfers and passenger drops.",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Vedic Heritage Inn (Ashram atmosphere, close to main shrines, Western toilets, hot water)",
          "weather": "Warm and sunny afternoon, ideal for outdoor sightseeing, average temp 24°C.",
          "dressCode": "Full Islamic modest attire. Women must wear loose clothing covering limbs and head. Men wear full trousers.",
          "packingSuggestions": "Comfortable travel footwear, photo ID, essential personal medication, daypack.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 1 to 2 hours transfer"
        }
      },
      {
        "day": 2,
        "title": "Explore Medina Heritage Centre",
        "location": "Saudi Arabia",
        "overview": "Spend your day visiting Medina Heritage Centre, the primary attraction in Medina, accompanied by our expert guide.",
        "schedule": {
          "morning": {
            "title": "Guided Tour of Medina Heritage Centre",
            "description": "Early morning visit to Medina Heritage Centre to avoid crowds. Learn about the heritage and unique history of this landmark."
          },
          "afternoon": {
            "title": "Local Traditional Lunch",
            "description": "Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings."
          },
          "evening": {
            "title": "Evening walk at Medina Panoramic Viewpoint",
            "description": "Stroll around Medina Panoramic Viewpoint for scenic sunset views. Capture great family photos as the evening lights turn on."
          }
        },
        "details": {
          "importantTimings": "Prayer Times: Fajr 4:45 AM, Dhuhr 12:30 PM, Asr 3:45 PM, Maghrib 6:45 PM, Isha 8:15 PM",
          "meals": "Complimentary Breakfast & Traditional Lunch (100% Satvik Veg).",
          "transport": "AC Private Sedan with professional local driver (includes first-aid kit and bottled water).",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Premium Pilgrim Hotel (AC rooms, elevator, clean linen, hot water, elevator access)",
          "weather": "Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.",
          "dressCode": "Full Islamic modest attire. Women must wear loose clothing covering limbs and head. Men wear full trousers.",
          "packingSuggestions": "Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 3 to 4 hours local tour"
        }
      },
      {
        "day": 3,
        "title": "Souvenir Shopping & Onward Departure",
        "location": "Saudi Arabia",
        "overview": "Conclude your memorable stay in Saudi Arabia with local craft shopping, checkout, and outbound transfers.",
        "schedule": {
          "morning": {
            "title": "Handicrafts Shopping",
            "description": "Visit local co-operative markets to buy traditional souvenirs, regional sweets, or native organic spices."
          },
          "afternoon": {
            "title": "Check-out & Packing",
            "description": "Return to your hotel, pack your bags, clear any local incidentals, and check out from your rooms."
          },
          "evening": {
            "title": "Outbound Transfer",
            "description": "Board your private vehicle transfer to the airport or railway station for your onward return journey home."
          }
        },
        "details": {
          "importantTimings": "Prayer Times: Fajr 4:45 AM, Dhuhr 12:30 PM, Asr 3:45 PM, Maghrib 6:45 PM, Isha 8:15 PM",
          "meals": "Breakfast & Special Dinner Buffet (100% Satvik Veg).",
          "transport": "AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Pilgrim Rest House (Safe, family-friendly rooms, walking distance to sacred sites)",
          "weather": "Perfect travel weather with low humidity and comfortable evening temperature 20°C.",
          "dressCode": "Full Islamic modest attire. Women must wear loose clothing covering limbs and head. Men wear full trousers.",
          "packingSuggestions": "Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 1 to 2 hours transfer"
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
      "Day 1: Arrival & Welcome at Medina",
      "Day 2: Guided Sightseeing & Exploration of Medina",
      "Day 3: Departure"
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
    "categoryLabel": "Islamic Pilgrimage",
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
      "Islamic Pilgrimage",
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
        "title": "Arrival & Settle in at Jerusalem",
        "location": "Jerusalem",
        "overview": "Welcome to your yatra. Arrive in Jerusalem, transfer to your stay, and rest before your sightseeing tour.",
        "schedule": {
          "morning": {
            "title": "Arrival & Check-in",
            "description": "Arrive at the nearest transit hub. Meet our coordinator and transfer to your pre-booked stay in Jerusalem."
          },
          "afternoon": {
            "title": "Leisure & Rest",
            "description": "Check into your hotel room, unpack your luggage, and rest to recover from your flight or train journey."
          },
          "evening": {
            "title": "Orientation Walk",
            "description": "Meet your local guide for a small walk around the neighborhood. Receive a detailed brief on local customs."
          }
        },
        "details": {
          "importantTimings": "Prayer Times: Fajr 4:45 AM, Dhuhr 12:30 PM, Asr 3:45 PM, Maghrib 6:45 PM, Isha 8:15 PM",
          "meals": "Welcome Drink & Buffet Dinner included (100% Satvik Veg).",
          "transport": "AC Shuttle Transit for close proximity site transfers and passenger drops.",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Vedic Heritage Inn (Ashram atmosphere, close to main shrines, Western toilets, hot water)",
          "weather": "Warm and sunny afternoon, ideal for outdoor sightseeing, average temp 24°C.",
          "dressCode": "Full Islamic modest attire. Women must wear loose clothing covering limbs and head. Men wear full trousers.",
          "packingSuggestions": "Comfortable travel footwear, photo ID, essential personal medication, daypack.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 1 to 2 hours transfer"
        }
      },
      {
        "day": 2,
        "title": "Explore Old City Jerusalem Heritage Centre",
        "location": "Jerusalem",
        "overview": "Spend your day visiting Old City Jerusalem Heritage Centre, the primary attraction in Old City Jerusalem, accompanied by our expert guide.",
        "schedule": {
          "morning": {
            "title": "Guided Tour of Old City Jerusalem Heritage Centre",
            "description": "Early morning visit to Old City Jerusalem Heritage Centre to avoid crowds. Learn about the heritage and unique history of this landmark."
          },
          "afternoon": {
            "title": "Local Traditional Lunch",
            "description": "Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings."
          },
          "evening": {
            "title": "Evening walk at Old City Jerusalem Panoramic Viewpoint",
            "description": "Stroll around Old City Jerusalem Panoramic Viewpoint for scenic sunset views. Capture great family photos as the evening lights turn on."
          }
        },
        "details": {
          "importantTimings": "Prayer Times: Fajr 4:45 AM, Dhuhr 12:30 PM, Asr 3:45 PM, Maghrib 6:45 PM, Isha 8:15 PM",
          "meals": "Complimentary Breakfast & Traditional Lunch (100% Satvik Veg).",
          "transport": "AC Private Sedan with professional local driver (includes first-aid kit and bottled water).",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Premium Pilgrim Hotel (AC rooms, elevator, clean linen, hot water, elevator access)",
          "weather": "Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.",
          "dressCode": "Full Islamic modest attire. Women must wear loose clothing covering limbs and head. Men wear full trousers.",
          "packingSuggestions": "Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 3 to 4 hours local tour"
        }
      },
      {
        "day": 3,
        "title": "Souvenir Shopping & Onward Departure",
        "location": "Jerusalem",
        "overview": "Conclude your memorable stay in Jerusalem with local craft shopping, checkout, and outbound transfers.",
        "schedule": {
          "morning": {
            "title": "Handicrafts Shopping",
            "description": "Visit local co-operative markets to buy traditional souvenirs, regional sweets, or native organic spices."
          },
          "afternoon": {
            "title": "Check-out & Packing",
            "description": "Return to your hotel, pack your bags, clear any local incidentals, and check out from your rooms."
          },
          "evening": {
            "title": "Outbound Transfer",
            "description": "Board your private vehicle transfer to the airport or railway station for your onward return journey home."
          }
        },
        "details": {
          "importantTimings": "Prayer Times: Fajr 4:45 AM, Dhuhr 12:30 PM, Asr 3:45 PM, Maghrib 6:45 PM, Isha 8:15 PM",
          "meals": "Breakfast & Special Dinner Buffet (100% Satvik Veg).",
          "transport": "AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Pilgrim Rest House (Safe, family-friendly rooms, walking distance to sacred sites)",
          "weather": "Perfect travel weather with low humidity and comfortable evening temperature 20°C.",
          "dressCode": "Full Islamic modest attire. Women must wear loose clothing covering limbs and head. Men wear full trousers.",
          "packingSuggestions": "Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 1 to 2 hours transfer"
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
      "Day 1: Arrival & Welcome at Old City Jerusalem",
      "Day 2: Guided Sightseeing & Exploration of Old City Jerusalem",
      "Day 3: Departure"
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
    "categoryLabel": "Islamic Pilgrimage",
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
      "Islamic Pilgrimage",
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
        "title": "Arrival & Settle in at Medina",
        "location": "Medina",
        "overview": "Welcome to your yatra. Arrive in Medina, transfer to your stay, and rest before your sightseeing tour.",
        "schedule": {
          "morning": {
            "title": "Arrival & Check-in",
            "description": "Arrive at the nearest transit hub. Meet our coordinator and transfer to your pre-booked stay in Medina."
          },
          "afternoon": {
            "title": "Leisure & Rest",
            "description": "Check into your hotel room, unpack your luggage, and rest to recover from your flight or train journey."
          },
          "evening": {
            "title": "Orientation Walk",
            "description": "Meet your local guide for a small walk around the neighborhood. Receive a detailed brief on local customs."
          }
        },
        "details": {
          "importantTimings": "Prayer Times: Fajr 4:45 AM, Dhuhr 12:30 PM, Asr 3:45 PM, Maghrib 6:45 PM, Isha 8:15 PM",
          "meals": "Welcome Drink & Buffet Dinner included (100% Satvik Veg).",
          "transport": "AC Shuttle Transit for close proximity site transfers and passenger drops.",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Vedic Heritage Inn (Ashram atmosphere, close to main shrines, Western toilets, hot water)",
          "weather": "Warm and sunny afternoon, ideal for outdoor sightseeing, average temp 24°C.",
          "dressCode": "Full Islamic modest attire. Women must wear loose clothing covering limbs and head. Men wear full trousers.",
          "packingSuggestions": "Comfortable travel footwear, photo ID, essential personal medication, daypack.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 1 to 2 hours transfer"
        }
      },
      {
        "day": 2,
        "title": "Explore Quba Mosque, Medina Heritage Centre",
        "location": "Medina",
        "overview": "Spend your day visiting Quba Mosque, Medina Heritage Centre, the primary attraction in Quba Mosque, Medina, accompanied by our expert guide.",
        "schedule": {
          "morning": {
            "title": "Guided Tour of Quba Mosque, Medina Heritage Centre",
            "description": "Early morning visit to Quba Mosque, Medina Heritage Centre to avoid crowds. Learn about the heritage and unique history of this landmark."
          },
          "afternoon": {
            "title": "Local Traditional Lunch",
            "description": "Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings."
          },
          "evening": {
            "title": "Evening walk at Quba Mosque, Medina Panoramic Viewpoint",
            "description": "Stroll around Quba Mosque, Medina Panoramic Viewpoint for scenic sunset views. Capture great family photos as the evening lights turn on."
          }
        },
        "details": {
          "importantTimings": "Prayer Times: Fajr 4:45 AM, Dhuhr 12:30 PM, Asr 3:45 PM, Maghrib 6:45 PM, Isha 8:15 PM",
          "meals": "Complimentary Breakfast & Traditional Lunch (100% Satvik Veg).",
          "transport": "AC Private Sedan with professional local driver (includes first-aid kit and bottled water).",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Premium Pilgrim Hotel (AC rooms, elevator, clean linen, hot water, elevator access)",
          "weather": "Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.",
          "dressCode": "Full Islamic modest attire. Women must wear loose clothing covering limbs and head. Men wear full trousers.",
          "packingSuggestions": "Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 3 to 4 hours local tour"
        }
      },
      {
        "day": 3,
        "title": "Souvenir Shopping & Onward Departure",
        "location": "Medina",
        "overview": "Conclude your memorable stay in Medina with local craft shopping, checkout, and outbound transfers.",
        "schedule": {
          "morning": {
            "title": "Handicrafts Shopping",
            "description": "Visit local co-operative markets to buy traditional souvenirs, regional sweets, or native organic spices."
          },
          "afternoon": {
            "title": "Check-out & Packing",
            "description": "Return to your hotel, pack your bags, clear any local incidentals, and check out from your rooms."
          },
          "evening": {
            "title": "Outbound Transfer",
            "description": "Board your private vehicle transfer to the airport or railway station for your onward return journey home."
          }
        },
        "details": {
          "importantTimings": "Prayer Times: Fajr 4:45 AM, Dhuhr 12:30 PM, Asr 3:45 PM, Maghrib 6:45 PM, Isha 8:15 PM",
          "meals": "Breakfast & Special Dinner Buffet (100% Satvik Veg).",
          "transport": "AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Pilgrim Rest House (Safe, family-friendly rooms, walking distance to sacred sites)",
          "weather": "Perfect travel weather with low humidity and comfortable evening temperature 20°C.",
          "dressCode": "Full Islamic modest attire. Women must wear loose clothing covering limbs and head. Men wear full trousers.",
          "packingSuggestions": "Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 1 to 2 hours transfer"
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
      "Day 1: Arrival & Welcome at Quba Mosque, Medina",
      "Day 2: Guided Sightseeing & Exploration of Quba Mosque, Medina",
      "Day 3: Departure"
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
    "categoryLabel": "Islamic Pilgrimage",
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
      "Islamic Pilgrimage",
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
        "title": "Arrival & Settle in at Diourbel",
        "location": "Diourbel",
        "overview": "Welcome to your yatra. Arrive in Diourbel, transfer to your stay, and rest before your sightseeing tour.",
        "schedule": {
          "morning": {
            "title": "Arrival & Check-in",
            "description": "Arrive at the nearest transit hub. Meet our coordinator and transfer to your pre-booked stay in Diourbel."
          },
          "afternoon": {
            "title": "Leisure & Rest",
            "description": "Check into your hotel room, unpack your luggage, and rest to recover from your flight or train journey."
          },
          "evening": {
            "title": "Orientation Walk",
            "description": "Meet your local guide for a small walk around the neighborhood. Receive a detailed brief on local customs."
          }
        },
        "details": {
          "importantTimings": "Prayer Times: Fajr 4:45 AM, Dhuhr 12:30 PM, Asr 3:45 PM, Maghrib 6:45 PM, Isha 8:15 PM",
          "meals": "Welcome Drink & Buffet Dinner included (100% Satvik Veg).",
          "transport": "AC Shuttle Transit for close proximity site transfers and passenger drops.",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Vedic Heritage Inn (Ashram atmosphere, close to main shrines, Western toilets, hot water)",
          "weather": "Warm and sunny afternoon, ideal for outdoor sightseeing, average temp 24°C.",
          "dressCode": "Full Islamic modest attire. Women must wear loose clothing covering limbs and head. Men wear full trousers.",
          "packingSuggestions": "Comfortable travel footwear, photo ID, essential personal medication, daypack.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 1 to 2 hours transfer"
        }
      },
      {
        "day": 2,
        "title": "Explore Touba Heritage Centre",
        "location": "Diourbel",
        "overview": "Spend your day visiting Touba Heritage Centre, the primary attraction in Touba, accompanied by our expert guide.",
        "schedule": {
          "morning": {
            "title": "Guided Tour of Touba Heritage Centre",
            "description": "Early morning visit to Touba Heritage Centre to avoid crowds. Learn about the heritage and unique history of this landmark."
          },
          "afternoon": {
            "title": "Local Traditional Lunch",
            "description": "Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings."
          },
          "evening": {
            "title": "Evening walk at Touba Panoramic Viewpoint",
            "description": "Stroll around Touba Panoramic Viewpoint for scenic sunset views. Capture great family photos as the evening lights turn on."
          }
        },
        "details": {
          "importantTimings": "Prayer Times: Fajr 4:45 AM, Dhuhr 12:30 PM, Asr 3:45 PM, Maghrib 6:45 PM, Isha 8:15 PM",
          "meals": "Complimentary Breakfast & Traditional Lunch (100% Satvik Veg).",
          "transport": "AC Private Sedan with professional local driver (includes first-aid kit and bottled water).",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Premium Pilgrim Hotel (AC rooms, elevator, clean linen, hot water, elevator access)",
          "weather": "Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.",
          "dressCode": "Full Islamic modest attire. Women must wear loose clothing covering limbs and head. Men wear full trousers.",
          "packingSuggestions": "Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 3 to 4 hours local tour"
        }
      },
      {
        "day": 3,
        "title": "Souvenir Shopping & Onward Departure",
        "location": "Diourbel",
        "overview": "Conclude your memorable stay in Diourbel with local craft shopping, checkout, and outbound transfers.",
        "schedule": {
          "morning": {
            "title": "Handicrafts Shopping",
            "description": "Visit local co-operative markets to buy traditional souvenirs, regional sweets, or native organic spices."
          },
          "afternoon": {
            "title": "Check-out & Packing",
            "description": "Return to your hotel, pack your bags, clear any local incidentals, and check out from your rooms."
          },
          "evening": {
            "title": "Outbound Transfer",
            "description": "Board your private vehicle transfer to the airport or railway station for your onward return journey home."
          }
        },
        "details": {
          "importantTimings": "Prayer Times: Fajr 4:45 AM, Dhuhr 12:30 PM, Asr 3:45 PM, Maghrib 6:45 PM, Isha 8:15 PM",
          "meals": "Breakfast & Special Dinner Buffet (100% Satvik Veg).",
          "transport": "AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Pilgrim Rest House (Safe, family-friendly rooms, walking distance to sacred sites)",
          "weather": "Perfect travel weather with low humidity and comfortable evening temperature 20°C.",
          "dressCode": "Full Islamic modest attire. Women must wear loose clothing covering limbs and head. Men wear full trousers.",
          "packingSuggestions": "Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 1 to 2 hours transfer"
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
      "Day 1: Arrival & Welcome at Touba",
      "Day 2: Guided Sightseeing & Exploration of Touba",
      "Day 3: Departure"
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
    "categoryLabel": "Islamic Pilgrimage",
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
      "Islamic Pilgrimage",
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
        "title": "Arrival & Settle in at Damascus",
        "location": "Damascus",
        "overview": "Welcome to your yatra. Arrive in Damascus, transfer to your stay, and rest before your sightseeing tour.",
        "schedule": {
          "morning": {
            "title": "Arrival & Check-in",
            "description": "Arrive at the nearest transit hub. Meet our coordinator and transfer to your pre-booked stay in Damascus."
          },
          "afternoon": {
            "title": "Leisure & Rest",
            "description": "Check into your hotel room, unpack your luggage, and rest to recover from your flight or train journey."
          },
          "evening": {
            "title": "Orientation Walk",
            "description": "Meet your local guide for a small walk around the neighborhood. Receive a detailed brief on local customs."
          }
        },
        "details": {
          "importantTimings": "Prayer Times: Fajr 4:45 AM, Dhuhr 12:30 PM, Asr 3:45 PM, Maghrib 6:45 PM, Isha 8:15 PM",
          "meals": "Welcome Drink & Buffet Dinner included (100% Satvik Veg).",
          "transport": "AC Shuttle Transit for close proximity site transfers and passenger drops.",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Vedic Heritage Inn (Ashram atmosphere, close to main shrines, Western toilets, hot water)",
          "weather": "Warm and sunny afternoon, ideal for outdoor sightseeing, average temp 24°C.",
          "dressCode": "Full Islamic modest attire. Women must wear loose clothing covering limbs and head. Men wear full trousers.",
          "packingSuggestions": "Comfortable travel footwear, photo ID, essential personal medication, daypack.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 1 to 2 hours transfer"
        }
      },
      {
        "day": 2,
        "title": "Explore Umayyad Mosque, Damascus Heritage Centre",
        "location": "Damascus",
        "overview": "Spend your day visiting Umayyad Mosque, Damascus Heritage Centre, the primary attraction in Umayyad Mosque, Damascus, accompanied by our expert guide.",
        "schedule": {
          "morning": {
            "title": "Guided Tour of Umayyad Mosque, Damascus Heritage Centre",
            "description": "Early morning visit to Umayyad Mosque, Damascus Heritage Centre to avoid crowds. Learn about the heritage and unique history of this landmark."
          },
          "afternoon": {
            "title": "Local Traditional Lunch",
            "description": "Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings."
          },
          "evening": {
            "title": "Evening walk at Umayyad Mosque, Damascus Panoramic Viewpoint",
            "description": "Stroll around Umayyad Mosque, Damascus Panoramic Viewpoint for scenic sunset views. Capture great family photos as the evening lights turn on."
          }
        },
        "details": {
          "importantTimings": "Prayer Times: Fajr 4:45 AM, Dhuhr 12:30 PM, Asr 3:45 PM, Maghrib 6:45 PM, Isha 8:15 PM",
          "meals": "Complimentary Breakfast & Traditional Lunch (100% Satvik Veg).",
          "transport": "AC Private Sedan with professional local driver (includes first-aid kit and bottled water).",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Premium Pilgrim Hotel (AC rooms, elevator, clean linen, hot water, elevator access)",
          "weather": "Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.",
          "dressCode": "Full Islamic modest attire. Women must wear loose clothing covering limbs and head. Men wear full trousers.",
          "packingSuggestions": "Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 3 to 4 hours local tour"
        }
      },
      {
        "day": 3,
        "title": "Souvenir Shopping & Onward Departure",
        "location": "Damascus",
        "overview": "Conclude your memorable stay in Damascus with local craft shopping, checkout, and outbound transfers.",
        "schedule": {
          "morning": {
            "title": "Handicrafts Shopping",
            "description": "Visit local co-operative markets to buy traditional souvenirs, regional sweets, or native organic spices."
          },
          "afternoon": {
            "title": "Check-out & Packing",
            "description": "Return to your hotel, pack your bags, clear any local incidentals, and check out from your rooms."
          },
          "evening": {
            "title": "Outbound Transfer",
            "description": "Board your private vehicle transfer to the airport or railway station for your onward return journey home."
          }
        },
        "details": {
          "importantTimings": "Prayer Times: Fajr 4:45 AM, Dhuhr 12:30 PM, Asr 3:45 PM, Maghrib 6:45 PM, Isha 8:15 PM",
          "meals": "Breakfast & Special Dinner Buffet (100% Satvik Veg).",
          "transport": "AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).",
          "walkingLevel": "Easy Paced (Flat walking paths, battery cars, no steep climbs)",
          "stay": "Pilgrim Rest House (Safe, family-friendly rooms, walking distance to sacred sites)",
          "weather": "Perfect travel weather with low humidity and comfortable evening temperature 20°C.",
          "dressCode": "Full Islamic modest attire. Women must wear loose clothing covering limbs and head. Men wear full trousers.",
          "packingSuggestions": "Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.",
          "accessibility": "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.",
          "visitorNote": "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.",
          "travelDuration": "Approx. 1 to 2 hours transfer"
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
      "Day 1: Arrival & Welcome at Umayyad Mosque, Damascus",
      "Day 2: Guided Sightseeing & Exploration of Umayyad Mosque, Damascus",
      "Day 3: Departure"
    ],
    "cancellationSummary": "Get a 100% full refund on cancellations made up to 15 days before the departure. Rescheduling options are fully flexible."
  }
];
