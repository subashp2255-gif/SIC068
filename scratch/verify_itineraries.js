const fs = require('fs');
const path = require('path');

const packagesPath = path.join(__dirname, '../data/packages.ts');
const fileContent = fs.readFileSync(packagesPath, 'utf8');

const arrayStartMarker = 'export const mockPackages: Package[] = ';
const arrayStartIndex = fileContent.indexOf(arrayStartMarker);
if (arrayStartIndex === -1) {
  console.error("Could not find mockPackages array in packages.ts");
  process.exit(1);
}

const arrayStr = fileContent.substring(arrayStartIndex + arrayStartMarker.length).trim();
let cleanedArrayStr = arrayStr;
if (cleanedArrayStr.endsWith(';')) {
  cleanedArrayStr = cleanedArrayStr.slice(0, -1);
}

let mockPackages;
try {
  mockPackages = eval('(' + cleanedArrayStr + ')');
} catch (e) {
  console.error("Error parsing packages:", e);
  process.exit(1);
}

let errors = [];
let warningCount = 0;

console.log(`Starting validation of ${mockPackages.length} package itineraries...\n`);

mockPackages.forEach((pkg) => {
  const itinerary = pkg.itinerary;

  // 1. Every package has an itinerary
  if (!itinerary || !Array.isArray(itinerary)) {
    errors.push(`Package [${pkg.id}] is missing itinerary array.`);
    return;
  }

  // 2. Number of itinerary days matches package duration days
  const expectedDays = pkg.durationDays;
  if (itinerary.length !== expectedDays) {
    errors.push(`Package [${pkg.id}] duration is ${expectedDays} days, but has ${itinerary.length} itinerary days.`);
  }

  const dayDescriptions = new Set();
  const dayTitles = new Set();

  itinerary.forEach((day, index) => {
    const dNum = index + 1;

    // Verify Day number
    if (day.day !== dNum) {
      errors.push(`Package [${pkg.id}] Day ${dNum} has incorrect day number value ${day.day}.`);
    }

    // 3. Every day has morning, afternoon, and evening content
    if (!day.schedule || !day.schedule.morning || !day.schedule.morning.description) {
      errors.push(`Package [${pkg.id}] Day ${dNum} is missing morning schedule description.`);
    }
    if (!day.schedule || !day.schedule.afternoon || !day.schedule.afternoon.description) {
      errors.push(`Package [${pkg.id}] Day ${dNum} is missing afternoon schedule description.`);
    }
    if (!day.schedule || !day.schedule.evening || !day.schedule.evening.description) {
      errors.push(`Package [${pkg.id}] Day ${dNum} is missing evening schedule description.`);
    }

    // 4. Destination names match the package location context (approximate check)
    const locShort = pkg.location.split(',')[0].toLowerCase();
    const dayLoc = day.location ? day.location.toLowerCase() : '';
    if (dayLoc && !locShort.includes(dayLoc) && !dayLoc.includes(locShort)) {
      console.warn(`[WARN] Package [${pkg.id}] Day ${dNum} location '${day.location}' may not align with package location '${pkg.location}'`);
      warningCount++;
    }

    // 5. Required details are not empty
    const details = day.details;
    if (!details) {
      errors.push(`Package [${pkg.id}] Day ${dNum} is missing details object.`);
      return;
    }
    const requiredDetails = [
      'importantTimings', 'meals', 'transport', 'walkingLevel',
      'stay', 'weather', 'dressCode', 'packingSuggestions'
    ];
    requiredDetails.forEach((field) => {
      if (!details[field] || details[field].trim() === '') {
        errors.push(`Package [${pkg.id}] Day ${dNum} details.${field} is empty or missing.`);
      }
    });

    // 6. No duplicate day descriptions within the same package
    const morningDesc = day.schedule.morning.description;
    if (dayDescriptions.has(morningDesc)) {
      errors.push(`Package [${pkg.id}] Day ${dNum} morning description is a duplicate of another day in the same package.`);
    }
    dayDescriptions.add(morningDesc);

    if (dayTitles.has(day.title)) {
      errors.push(`Package [${pkg.id}] Day ${dNum} has duplicate title '${day.title}' within the same package.`);
    }
    dayTitles.add(day.title);

    // 7. Religious consistency checks
    const isPilgrimage = pkg.category === 'Pilgrimage';
    const sub = pkg.subCategory;
    const isTempleLanguage = day.title.toLowerCase().includes('temple') || 
                             day.title.toLowerCase().includes('darshan') ||
                             day.title.toLowerCase().includes('aarti') ||
                             morningDesc.toLowerCase().includes('temple') || 
                             morningDesc.toLowerCase().includes('darshan') ||
                             morningDesc.toLowerCase().includes('aarti') ||
                             day.overview.toLowerCase().includes('temple') ||
                             day.overview.toLowerCase().includes('darshan') ||
                             day.overview.toLowerCase().includes('aarti');

    if (!isPilgrimage && isTempleLanguage) {
      errors.push(`Package [${pkg.id}] is a Family tour but uses religious/temple-related terms on Day ${dNum}.`);
    }

    if (isPilgrimage && sub !== 'Hinduism' && isTempleLanguage) {
      // Check if it's talking about Hindu specific concepts for Buddhist/Christian/Muslim tours
      if (day.title.toLowerCase().includes('aarti') || day.title.toLowerCase().includes('darshan') ||
          morningDesc.toLowerCase().includes('aarti') || morningDesc.toLowerCase().includes('darshan') ||
          day.overview.toLowerCase().includes('aarti') || day.overview.toLowerCase().includes('darshan')) {
        errors.push(`Package [${pkg.id}] is a ${sub} tour but uses Hindu-specific terms ('aarti'/'darshan') on Day ${dNum}.`);
      }
    }
  });
});

console.log(`Validation results:`);
console.log(`Total Errors: ${errors.length}`);
console.log(`Total Warnings: ${warningCount}`);

if (errors.length > 0) {
  console.error("\nValidation failed with errors:");
  errors.forEach(e => console.error(`- ${e}`));
  process.exit(1);
} else {
  console.log("\nAll package itineraries successfully validated! Zero errors found.");
  process.exit(0);
}
