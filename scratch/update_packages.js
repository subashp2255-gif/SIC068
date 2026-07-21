const fs = require('fs');
const path = require('path');

const packagesPath = path.join(__dirname, '../data/packages.ts');
const fileContent = fs.readFileSync(packagesPath, 'utf8');

// Find the index of the start of the array
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

console.log(`Successfully parsed ${mockPackages.length} packages. Enriching metadata...`);

// Enrich packages
mockPackages.forEach((pkg, index) => {
  // 1. Standardize Category
  if (pkg.category === "Heritage" || pkg.mainCategory === "Heritage") {
    const isSpiritual = pkg.title.toLowerCase().includes("temple") ||
      pkg.title.toLowerCase().includes("darshan") ||
      pkg.title.toLowerCase().includes("yatra") ||
      pkg.title.toLowerCase().includes("basilica") ||
      pkg.title.toLowerCase().includes("mosque") ||
      (pkg.subCategory && ["Hinduism", "Buddhism", "Christianity", "Islam"].includes(pkg.subCategory));

    pkg.category = isSpiritual ? "Pilgrimage" : "Family";
  }
  pkg.mainCategory = pkg.category;

  // 2. Standardize Subcategory
  if (pkg.category === "Family") {
    pkg.subCategory = undefined;
  } else {
    // Map subCategory based on title/destinations if missing/invalid
    let sub = pkg.subCategory;
    if (!sub || sub === "Family" || sub === "Pilgrimage") {
      const title = pkg.title.toLowerCase();
      const dest = pkg.destinations.toLowerCase();
      if (title.includes("buddha") || dest.includes("buddhist") || dest.includes("bodh gaya") || dest.includes("lumbini") || dest.includes("sarnath") || dest.includes("borobudur") || dest.includes("pagoda")) {
        sub = "Buddhism";
      } else if (title.includes("basilica") || title.includes("church") || dest.includes("vatican") || dest.includes("bethlehem") || dest.includes("santiago") || dest.includes("lourdes") || dest.includes("guadalupe")) {
        sub = "Christianity";
      } else if (title.includes("mosque") || title.includes("mecca") || title.includes("medina") || title.includes("dargah") || title.includes("islam") || dest.includes("aqsa") || dest.includes("shrine")) {
        sub = "Islam";
      } else {
        sub = "Hinduism"; // Default pilgrimage type
      }
    }
    pkg.subCategory = sub;
  }

  // 3. Location and Destination Name
  if (!pkg.destinationName) {
    pkg.destinationName = pkg.title.replace(" Experience", "").replace(" Tour", "");
  }
  if (!pkg.location) {
    const locMatch = pkg.destinations.match(/\(([^)]+)\)/);
    pkg.location = locMatch ? locMatch[1] : pkg.destinations;
  }

  // 4. Duration label & days
  const days = parseInt(pkg.duration.split(" ")[0]);
  pkg.durationDays = isNaN(days) ? 3 : days;
  pkg.durationLabel = pkg.duration;

  // 5. Best Season (geographically derived)
  const loc = (pkg.location || "").toLowerCase();
  const dest = (pkg.destinationName || "").toLowerCase();
  const title = pkg.title.toLowerCase();

  let season = "October–March";
  if (loc.includes("kerala") || loc.includes("alappuzha") || loc.includes("munnar") || loc.includes("wayanad") || loc.includes("thrissur") || loc.includes("goa") || loc.includes("karnataka") || loc.includes("tamil nadu") || loc.includes("kovalam") || loc.includes("varkala")) {
    if (dest.includes("houseboat") || dest.includes("backwaters") || dest.includes("beach") || loc.includes("kovalam") || loc.includes("varkala") || loc.includes("goa")) {
      season = "November–February";
    } else if (dest.includes("waterfall") || dest.includes("falls") || dest.includes("athirappilly")) {
      season = "September–January";
    } else {
      season = "November–February";
    }
  } else if (loc.includes("rajasthan") || loc.includes("jaipur") || loc.includes("jodhpur") || loc.includes("udaipur") || loc.includes("jaisalmer") || loc.includes("gujarat") || loc.includes("dwarka") || loc.includes("somnath")) {
    season = "October–March";
  } else if (loc.includes("himachal") || loc.includes("manali") || loc.includes("shimla") || loc.includes("dharmashala") || loc.includes("sikkim") || loc.includes("kashmir") || loc.includes("gulmarg") || loc.includes("srinagar") || loc.includes("leh") || loc.includes("ladakh") || loc.includes("ooty") || loc.includes("darjeeling")) {
    season = "March–June";
  } else if (title.includes("char dham") || title.includes("kedarnath") || title.includes("badrinath") || title.includes("gangotri") || title.includes("yamunotri")) {
    season = "May–October";
  } else if (loc.includes("delhi") || loc.includes("mumbai") || loc.includes("bangalore") || loc.includes("singapore") || loc.includes("dubai") || loc.includes("london") || loc.includes("paris") || loc.includes("tokyo")) {
    season = "Year-Round";
  } else if (title.includes("waterfall") || title.includes("falls") || dest.includes("waterfall") || dest.includes("falls")) {
    season = "July–September";
  } else {
    if (pkg.region === "South India") {
      season = "November–February";
    } else if (pkg.region === "North India" || pkg.region === "Char Dham") {
      season = "October–March";
    }
  }
  pkg.bestSeason = season;

  // 6. Pace
  let pace = "Easy";
  if (dest.includes("houseboat") || dest.includes("backwaters") || dest.includes("beach") || loc.includes("goa") || loc.includes("kovalam") || loc.includes("varkala") || title.includes("cruise") || title.includes("wellness")) {
    pace = "Relaxed";
  } else if (dest.includes("waterfall") || dest.includes("falls") || dest.includes("trek") || dest.includes("hike") || loc.includes("ladakh") || loc.includes("leh") || title.includes("adventure") || title.includes("kedarnath") || title.includes("yamunotri") || title.includes("vaishno")) {
    pace = "Active";
  } else if (dest.includes("fort") || dest.includes("palace") || dest.includes("hampi") || dest.includes("ajanta") || dest.includes("ellora") || dest.includes("monuments") || title.includes("heritage") || title.includes("circuit") || dest.includes("badrinath") || dest.includes("gangotri") || title.includes("char dham") || dest.includes("kailash")) {
    pace = "Moderate";
  }
  pkg.pace = pace;

  // 7. TravellerTypes Suitability
  let travellerTypes = ["Families"];
  if (pkg.category === "Pilgrimage") {
    travellerTypes = ["Pilgrims", "Seniors"];
  } else {
    if (pace === "Active") {
      travellerTypes = ["Nature Lovers", "Adventure Travellers"];
    } else if (pace === "Relaxed") {
      travellerTypes = ["Couples", "Seniors"];
    } else if (dest.includes("fort") || dest.includes("palace") || dest.includes("monuments") || dest.includes("hampi")) {
      travellerTypes = ["History Lovers", "Families"];
    } else {
      travellerTypes = ["Families", "Couples"];
    }
  }
  pkg.travellerTypes = travellerTypes;

  // 8. Accessibility Status
  let accessibilityStatus = "Wheelchair Accessible";
  if (pace === "Active") {
    accessibilityStatus = "Not Wheelchair Accessible";
  } else if (pace === "Moderate") {
    accessibilityStatus = "Partial Accessibility";
  } else if (dest.includes("houseboat") || dest.includes("backwaters") || dest.includes("cruise") || dest.includes("river")) {
    accessibilityStatus = "Accessibility on Request";
  }
  pkg.accessibilityStatus = accessibilityStatus;

  // 9. Senior and Child Friendly indicators
  if (pace === "Active") {
    pkg.seniorFriendly = false;
    pkg.childFriendly = false;
  } else if (pace === "Moderate") {
    pkg.seniorFriendly = true;
    pkg.childFriendly = true;
  } else {
    pkg.seniorFriendly = true;
    pkg.childFriendly = true;
  }

  // 10. Dynamic Inclusions
  const hasGuide = (pkg.category === "Pilgrimage" || pace === "Moderate" || pace === "Active");
  const hasPasses = (dest.includes("fort") || dest.includes("palace") || dest.includes("monuments") || pkg.category === "Pilgrimage");
  const hasMedical = (pace === "Active" || pkg.region === "Char Dham");
  const hasLocalExp = (dest.includes("houseboat") || dest.includes("backwaters") || dest.includes("beach") || dest.includes("desert") || dest.includes("tea") || dest.includes("falls"));

  pkg.inclusions = {
    hotel: true,
    meals: true,
    transit: true,
    guide: hasGuide,
    entryPasses: hasPasses,
    medicalSupport: hasMedical,
    localExperience: hasLocalExp
  };

  // 11. Package Benefits (Exactly 2)
  let benefits = [];
  if (pkg.category === "Pilgrimage") {
    benefits = ["Darshan Assistance", "Temple Transfer"];
    if (pkg.subCategory === "Hinduism") {
      benefits = ["Darshan Assistance", "Satvik Meal Option"];
    } else {
      benefits = ["Pilgrimage Guide", "Senior Rest Support"];
    }
  } else {
    if (pace === "Relaxed") {
      benefits = ["Scenic Accommodation", "Breakfast Included"];
      if (dest.includes("houseboat")) {
        benefits = ["Houseboat Stay", "Meals Included"];
      }
    } else if (pace === "Active") {
      benefits = ["Nature Guide", "Viewpoint Access"];
    } else if (dest.includes("fort") || dest.includes("palace") || dest.includes("monuments")) {
      benefits = ["Heritage Guide", "Monument Entry Assistance"];
    } else {
      benefits = ["Family Accommodation", "Local Sightseeing"];
    }
  }
  pkg.packageBenefits = benefits.slice(0, 2);

  // 12. Highlights (At least 2)
  let highlights = [];
  const name = pkg.destinationName;
  if (pkg.category === "Pilgrimage") {
    highlights = [
      `Spiritual darshan and guided temple tour in ${name}`,
      `Experience peaceful aarti assemblies and sacred rituals`,
      `Comfortable transfers to all holy sites`
    ];
  } else {
    if (pace === "Active") {
      highlights = [
        `Explore the scenic nature trails and waterfall routes in ${name}`,
        `Breathtaking viewpoints and photo opportunities`,
        `Guided trekking and outdoor activities`
      ];
    } else if (pace === "Relaxed") {
      highlights = [
        `Relaxing stay and leisure exploration in ${name}`,
        `Scenic beauty and local dining experiences`,
        `Private luxury transfers for ultimate comfort`
      ];
    } else {
      highlights = [
        `Guided heritage sightseeing of ${name} landmarks`,
        `Immersive cultural show and local market visits`,
        `Delight in authentic regional delicacies`
      ];
    }
  }
  pkg.highlights = highlights;

  // 13. Tips
  let tips = [];
  if (pkg.category === "Pilgrimage") {
    tips = [
      "Carry valid government ID cards for verification.",
      "Traditional decency wear is recommended inside temple corridors.",
      "Avoid carrying electronics inside the inner sanctum."
    ];
  } else if (pace === "Active") {
    tips = [
      "Wear sturdy, non-slip walking shoes.",
      "Carry a light raincoat or umbrella depending on the season.",
      "Stay well-hydrated during the walk."
    ];
  } else {
    tips = [
      "Carry sun protection (glasses/hat) for outdoor excursions.",
      "Keep local currency handy for local markets.",
      "Follow guidelines at heritage locations."
    ];
  }
  pkg.tips = tips;

  // 14. ItinerarySummary
  pkg.itinerarySummary = (pkg.itinerary || []).map(day => `Day ${day.day}: ${day.title}`);
  if (pkg.itinerarySummary.length === 0) {
    pkg.itinerarySummary = [
      `Day 1: Arrival & check-in at ${pkg.location}`,
      `Day 2: Guided tour of ${pkg.destinationName} and nearby sites`,
      `Day 3: Departure and transfers`
    ];
  }

  // 15. CancellationSummary
  pkg.cancellationSummary = "Get a 100% full refund on cancellations made up to 15 days before the departure. Rescheduling options are fully flexible.";

  // 16. VegMeals & WheelchairAccess compatibility
  pkg.vegMeals = (pkg.category === "Pilgrimage");
  pkg.wheelchairAccess = (accessibilityStatus !== "Not Wheelchair Accessible");

  // 17. Nullify unsupported fields for data-integrity
  pkg.rating = null;
  pkg.reviewCount = null;
  pkg.seatsLeft = null;
  pkg.recentBookings = null;
  pkg.verified = null;
});

// Write it back to packages.ts
console.log("Writing enriched package array back to packages.ts...");
const formattedArray = JSON.stringify(mockPackages, null, 2);
const newFileContent = headerText + arrayStartMarker + formattedArray + ';\n';
fs.writeFileSync(packagesPath, newFileContent, 'utf8');
console.log("Successfully wrote data/packages.ts!");
