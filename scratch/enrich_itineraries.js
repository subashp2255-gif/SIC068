const fs = require('fs');
const path = require('path');

const packagesPath = path.join(__dirname, '../data/packages.ts');
const fileContent = fs.readFileSync(packagesPath, 'utf8');

// Find the index of the start of the mockPackages array
const arrayStartMarker = 'export const mockPackages: Package[] = ';
const arrayStartIndex = fileContent.indexOf(arrayStartMarker);
if (arrayStartIndex === -1) {
  console.error("Could not find mockPackages array in packages.ts");
  process.exit(1);
}

const headerText = fileContent.substring(0, arrayStartIndex);
const arrayStr = fileContent.substring(arrayStartIndex + arrayStartMarker.length).trim();

// Clean up trailing semicolon if any
let cleanedArrayStr = arrayStr;
if (cleanedArrayStr.endsWith(';')) {
  cleanedArrayStr = cleanedArrayStr.slice(0, -1);
}

// Parse using eval (safe local execution of object literal)
let mockPackages;
try {
  mockPackages = eval('(' + cleanedArrayStr + ')');
} catch (e) {
  console.error("Error parsing package array:", e);
  process.exit(1);
}

console.log(`Successfully parsed ${mockPackages.length} packages for itinerary enrichment.`);

// Database of specific attractions for key destinations to ensure high accuracy
const DESTINATION_ATTRACTIONS = {
  "family-alleppey-backwaters": [
    { site: "Alappuzha Beach & Lighthouse", act: "Enjoy a scenic view of the coastal lighthouse and a stroll on the sandy shore." },
    { site: "Punnamada Lake Canal Cruise", act: "Board a traditional Kettuvallam houseboat and cruise through historic backwater lakes." },
    { site: "Pathiramanal Island Walk", act: "A guided nature walk on the scenic island, popular for birdwatching and native flora." },
    { site: "Champakulam Kalloorkadu Church", act: "Visit one of the oldest heritage churches in India, located on the riverbank." }
  ],
  "family-amber-fort": [
    { site: "Jal Mahal & Local Bazaars", act: "Enjoy a scenic photo stop at the water palace and shop for traditional blue pottery." },
    { site: "Amber Fort Sheesh Mahal", act: "Explore the breathtaking mirror palace and massive stone walls with a heritage guide." },
    { site: "Jaigarh Fort & Jaivana Cannon", act: "Visit the historic fortress housing the world's largest cannon on wheels." },
    { site: "City Palace & Jantar Mantar", act: "Tour the royal residence and the world's largest stone astronomical observatory." }
  ],
  "family-athirappilly-waterfalls": [
    { site: "Charpa & Vazhachal Falls", act: "Explore the cascading waterfalls surrounded by lush Sholayar forest foliage." },
    { site: "Athirappilly Main Falls Trek", act: "Walk down the scenic trail to the base of India's majestic Niagaras." },
    { site: "Ezhattumugham Nature Village", act: "Walk on the check-dam pathways and enjoy a peaceful river walk experience." },
    { site: "Thumboormuzhi Butterfly Park", act: "Stroll through the landscaped gardens and cross the scenic hanging bridge." }
  ],
  "buddhism-bodh-gaya-india": [
    { site: "Mahabodhi Temple Meditation", act: "Settle down under the sacred Bodhi Tree where Prince Siddhartha achieved enlightenment." },
    { site: "Great Buddha Statue", act: "Visit the massive 80-foot stone Buddha statue surrounded by miniature shrines." },
    { site: "Muchalinda Lake & Lotus pond", act: "Reflect on the legendary lake where the Naga King protected Buddha from storms." },
    { site: "Indosan Nippon Japanese Temple", act: "Experience the minimalist wooden architecture and peaceful meditation chambers." }
  ],
  "hinduism-varanasi-spiritual-tour": [
    { site: "Dashashwamedh Ghat Ganga Aarti", act: "Witness the spectacular evening prayer ceremony with oil lamps and Vedic chants." },
    { site: "Kashi Vishwanath Temple", act: "Attend the early morning darshan inside the sacred golden-spire Shiva temple corridor." },
    { site: "Sarnath Dhamekh Stupa", act: "Excursion to the archaeological park where Lord Buddha preached his first sermon." },
    { site: "Assi Ghat Sunrise Boat Ride", act: "Observe morning bathing rituals and peaceful Vedic chants along the Ganges riverbank." }
  ],
  "christianity-canterbury-cathedral": [
    { site: "Canterbury Cathedral Crypt", act: "Explore the ancient Romanesque crypt and walk through the historic martyrdom site." },
    { site: "St Augustine's Abbey Ruins", act: "Walk among the historic ruins of the Anglo-Saxon burial place of Kings." },
    { site: "St Martin's Church Walk", act: "Visit the oldest parish church in continuous use in the English-speaking world." },
    { site: "Westgate Towers Viewpoint", act: "Climb the medieval gatehouse for a panoramic view of Canterbury's red-brick roofs." }
  ],
  "islam-masjid-al-haram": [
    { site: "Masjid al-Haram Tawaf", act: "Perform the holy circumambulation around the sacred Kaaba with deep spiritual prayers." },
    { site: "Mount Arafat & Jabal al-Rahma", act: "Visit the Mount of Mercy where the Prophet delivered his final sermon." },
    { site: "Jabal al-Nour & Hira Cave", act: "Observe the mountain peak housing the cave where the Quran's first verses were revealed." },
    { site: "Mina & Muzdalifah Landmarks", act: "Drive past the historic valleys where pilgrims gather during the annual Hajj rites." }
  ],
  "sikhism-golden-temple-amritsar": [
    { site: "Harmandir Sahib Langar Hall", act: "Experience the community kitchen serving free vegetarian meals to thousands daily." },
    { site: "Jallianwala Bagh Memorial", act: "Visit the historic garden garden museum commemorating the heroes of freedom struggle." },
    { site: "Wagah Border Ceremony", act: "Observe the high-energy sunset border beating retreat ceremony with national flag hoisting." },
    { site: "Partition Museum Exhibition", act: "Explore the emotional archives and personal artifacts of the historic partition." }
  ]
};

// Weather list to rotate dynamically by day
const DAILY_WEATHER = [
  "Clear sky, comfortable morning temperature 21°C, warming up to 26°C by noon.",
  "Pleasant day with light breezes, temperature ranging between 22°C and 25°C.",
  "Warm and sunny afternoon, ideal for outdoor sightseeing, average temp 24°C.",
  "Cool and refreshing morning fog, clearing up to a bright sunny afternoon 23°C.",
  "Perfect travel weather with low humidity and comfortable evening temperature 20°C."
];

// Stays database to rotate by day
const FAMILY_STAYS = [
  "Standard Comfort Hotel (Fully sanitized rooms, private bathroom, free Wi-Fi, desk space)",
  "Heritage Boutique Resort (Comfortable rooms, garden paths, active room services)",
  "Lakefront Guest House (Scenic balcony views, hot water, western-style bathrooms)",
  "Premium Executive Hotel (AC rooms, elevator access, 24/7 front desk assistance)"
];

const PILGRIM_STAYS = [
  "Monastery Guest House (Clean, peaceful, silent corridors, hot water, basic amenities)",
  "Vedic Heritage Inn (Ashram atmosphere, close to main shrines, Western toilets, hot water)",
  "Premium Pilgrim Hotel (AC rooms, elevator, clean linen, hot water, elevator access)",
  "Pilgrim Rest House (Safe, family-friendly rooms, walking distance to sacred sites)"
];

// Transport list to rotate by day
const DYNAMIC_TRANSPORT = [
  "AC Private Sedan with professional local driver (includes first-aid kit and bottled water).",
  "AC Guided Sightseeing Coach (spacious seating, elder-friendly low step entry).",
  "AC Private SUV for comfortable road transfers with regular rest stops.",
  "AC Shuttle Transit for close proximity site transfers and passenger drops."
];

// Packing list by day
const DYNAMIC_PACKING = [
  "Comfortable travel footwear, photo ID, essential personal medication, daypack.",
  "Light sweater or shawl, sun hat, sunglasses, reusable water bottle, camera.",
  "Slip-on walking shoes, light cotton clothing, sunscreen, pocket umbrella.",
  "Walking socks, small daypack for personal belongings, sanitizers, light jacket."
];

// Helper to generate distinct meal entries
const getMealsByDay = (day, category) => {
  const isSatvik = category === "Pilgrimage";
  const suffix = isSatvik ? " (100% Satvik Veg)" : "";
  if (day === 1) return `Welcome Drink & Buffet Dinner included${suffix}.`;
  if (day === 2) return `Complimentary Breakfast & Traditional Lunch${suffix}.`;
  if (day === 3) return `Breakfast & Special Dinner Buffet${suffix}.`;
  return `Complimentary Healthy Breakfast included${suffix}.`;
};

// Main enrichment loop
mockPackages.forEach((pkg) => {
  const N = pkg.durationDays;
  const destination = pkg.destinationName;
  const location = pkg.location;
  const isSpiritual = pkg.category === "Pilgrimage";
  const sub = pkg.subCategory || "Family";

  // Pre-configured custom attractions or generic ones generated procedurally
  const attractions = DESTINATION_ATTRACTIONS[pkg.id] || [
    { site: `${destination} Main Sightseeing`, act: `Explore the prominent local sights and scenic landmarks of ${destination}.` },
    { site: `${destination} Heritage Centre`, act: `Discover the cultural significance and historical background of the region.` },
    { site: `${destination} Panoramic Viewpoint`, act: `Enjoy panoramic views and capture memories at the highest local peak.` },
    { site: `${destination} Local Culture Park`, act: `Interact with local artisans and learn about regional traditions.` }
  ];

  const itinerary = [];

  for (let d = 1; d <= N; d++) {
    let title = "";
    let overview = "";
    let morningTitle = "";
    let morningDesc = "";
    let afternoonTitle = "";
    let afternoonDesc = "";
    let eveningTitle = "";
    let eveningDesc = "";
    let timings = "";
    let dressCode = "";
    let accessibility = "";
    let visitorNote = "";

    // Rotate array indices based on day number to ensure zero duplication
    const weather = DAILY_WEATHER[(d + 1) % DAILY_WEATHER.length];
    const stay = isSpiritual 
      ? PILGRIM_STAYS[d % PILGRIM_STAYS.length] 
      : FAMILY_STAYS[d % FAMILY_STAYS.length];
    const transport = DYNAMIC_TRANSPORT[(d + 2) % DYNAMIC_TRANSPORT.length];
    const packing = DYNAMIC_PACKING[(d + 3) % DYNAMIC_PACKING.length];
    const meals = getMealsByDay(d, pkg.category);

    const attr1 = attractions[(d - 1) % attractions.length];
    const attr2 = attractions[d % attractions.length];

    // Accessibility and note settings based on region & category
    if (pkg.pace === "Active") {
      accessibility = "Not recommended for guests requiring wheelchair support due to steep stairs and terrain.";
      visitorNote = "Expect moderate physical movement. Wear athletic shoes with excellent grip.";
    } else {
      accessibility = "Wheelchair ramp access available. Stays are equipped with elevators and flat floor tiles.";
      visitorNote = "Elder pilgrims can request battery-operated cars or manual assistance at entry portals.";
    }

    // Traditional timings and dress codes based on subcategory
    if (isSpiritual) {
      if (sub === "Hinduism") {
        timings = "Temple Darshan: 6:00 AM - 12:30 PM, 4:30 PM - 8:30 PM | Evening Aarti: 6:30 PM";
        dressCode = "Traditional wear. Dhoti or Pyjama-Kurta for men; Saree or Salwar suit for women. Sleeveless strictly prohibited.";
      } else if (sub === "Buddhism") {
        timings = "Monastery Hours: 5:00 AM - 11:30 AM, 2:30 PM - 6:00 PM | Meditation: 5:30 AM";
        dressCode = "Modest clothing that covers shoulders and knees. Light-colored cotton attire is highly recommended.";
      } else if (sub === "Christianity") {
        timings = "Cathedral Mass: 7:00 AM, 9:00 AM | Sanctuary guided walks: 10:00 AM - 4:00 PM";
        dressCode = "Smart casual attire. No tank tops, short skirts, or beachwear allowed inside the sanctuary gates.";
      } else if (sub === "Islam") {
        timings = "Prayer Times: Fajr 4:45 AM, Dhuhr 12:30 PM, Asr 3:45 PM, Maghrib 6:45 PM, Isha 8:15 PM";
        dressCode = "Full Islamic modest attire. Women must wear loose clothing covering limbs and head. Men wear full trousers.";
      } else {
        timings = "Visiting hours: 6:00 AM - 12:00 PM, 3:00 PM - 7:30 PM. Timings vary on holidays.";
        dressCode = "Modest traditional attire. Please remove footwear before entering the inner sanctum.";
      }
    } else {
      timings = "Sightseeing hours: 9:00 AM - 6:00 PM | Museum gates close by 5:00 PM";
      dressCode = "Comfortable tourist clothing. Sunhats, shades, and walking shoes are recommended.";
    }

    // Specific Day logic
    if (d === 1) {
      // Day 1: Arrival
      title = `Arrival & Settle in at ${location.split(",")[0]}`;
      overview = `Welcome to your yatra. Arrive in ${location.split(",")[0]}, transfer to your stay, and rest before your sightseeing tour.`;
      
      morningTitle = "Arrival & Check-in";
      morningDesc = `Arrive at the nearest transit hub. Meet our coordinator and transfer to your pre-booked stay in ${location.split(",")[0]}.`;
      
      afternoonTitle = "Leisure & Rest";
      afternoonDesc = "Check into your hotel room, unpack your luggage, and rest to recover from your flight or train journey.";
      
      eveningTitle = "Orientation Walk";
      eveningDesc = "Meet your local guide for a small walk around the neighborhood. Receive a detailed brief on local customs.";
    } 
    else if (d === N) {
      // Final Day: Departure
      title = `Souvenir Shopping & Onward Departure`;
      overview = `Conclude your memorable stay in ${location.split(",")[0]} with local craft shopping, checkout, and outbound transfers.`;
      
      morningTitle = "Handicrafts Shopping";
      morningDesc = `Visit local co-operative markets to buy traditional souvenirs, regional sweets, or native organic spices.`;
      
      afternoonTitle = "Check-out & Packing";
      afternoonDesc = "Return to your hotel, pack your bags, clear any local incidentals, and check out from your rooms.";
      
      eveningTitle = "Outbound Transfer";
      eveningDesc = "Board your private vehicle transfer to the airport or railway station for your onward return journey home.";
    } 
    else {
      // Middle Days: Main & Secondary Attractions
      if (d === 2) {
        title = `Explore ${attr1.site}`;
        overview = `Spend your day visiting ${attr1.site}, the primary attraction in ${destination}, accompanied by our expert guide.`;
        
        morningTitle = `Guided Tour of ${attr1.site}`;
        morningDesc = `Early morning visit to ${attr1.site} to avoid crowds. Learn about the heritage and unique history of this landmark.`;
        
        afternoonTitle = "Local Traditional Lunch";
        afternoonDesc = `Relish authentic regional cuisine at a highly recommended local restaurant, offering hygienic food settings.`;
        
        eveningTitle = `Evening walk at ${attr2.site}`;
        eveningDesc = `Stroll around ${attr2.site} for scenic sunset views. Capture great family photos as the evening lights turn on.`;
      } 
      else if (d === 3) {
        title = `Excursion to ${attr2.site}`;
        overview = `Excursion to ${attr2.site} and surrounding craft villages to experience native arts, handlooms, and culture.`;
        
        morningTitle = `Nature Walk at ${attr2.site}`;
        morningDesc = `Guided scenic walk near the lake or parks surrounding ${attr2.site}. Enjoy quiet reflection and fresh air.`;
        
        afternoonTitle = "Local Handloom Visit";
        afternoonDesc = "Visit local cottage industries to see artisans hand-weaving fabrics and crafting traditional wooden toys.";
        
        eveningTitle = "Cultural Dance & Music Show";
        eveningDesc = "Attend a traditional cultural presentation depicting historical folk tales, followed by dinner.";
      } 
      else {
        // Fallback for long trips (days 4, 5, 6 etc.)
        title = `Scenic Sightseeing around ${destination}`;
        overview = `A relaxed day exploring secondary landmarks, hidden viewpoints, and local flower markets around the region.`;
        
        morningTitle = "Flower Market Visit";
        morningDesc = "Observe the vibrant local trade at the flower and vegetable markets, showcasing regional daily life.";
        
        afternoonTitle = "Museum Guided Excursion";
        afternoonDesc = "Explore the local archaeological museum housing relics and artwork spanning multiple centuries.";
        
        eveningTitle = "Relaxation at Stay";
        eveningDesc = "Spend the evening at your own pace, relaxing in the garden or enjoying resort recreational activities.";
      }
    }

    itinerary.push({
      day: d,
      title,
      location: location.split(",")[0],
      overview,
      schedule: {
        morning: { title: morningTitle, description: morningDesc },
        afternoon: { title: afternoonTitle, description: afternoonDesc },
        evening: { title: eveningTitle, description: eveningDesc }
      },
      details: {
        importantTimings: timings,
        meals,
        transport,
        walkingLevel: pkg.seniorFriendly ? "Easy Paced (Flat walking paths, battery cars, no steep climbs)" : "Moderate Paced (Gentle staircases, guide assistance available)",
        stay,
        weather,
        dressCode,
        packingSuggestions: packing,
        accessibility,
        visitorNote,
        travelDuration: d === 1 || d === N ? "Approx. 1 to 2 hours transfer" : "Approx. 3 to 4 hours local tour"
      }
    });
  }

  pkg.itinerary = itinerary;
});

// Save back to packages.ts
console.log("Writing enriched package array with detailed itineraries back to packages.ts...");
const formattedArray = JSON.stringify(mockPackages, null, 2);
const newFileContent = headerText + arrayStartMarker + formattedArray + ';\n';
fs.writeFileSync(packagesPath, newFileContent, 'utf8');
console.log("Successfully wrote enriched mockPackages with dynamic itineraries!");
