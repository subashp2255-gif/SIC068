const fs = require('fs');
const path = require('path');
const { execSync } = require('child_process');

const packagesPath = path.join(__dirname, '../data/packages.ts');
const fileContent = fs.readFileSync(packagesPath, 'utf8');

// Find the index of the start of the array
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
  console.error("Error parsing package array:", e);
  process.exit(1);
}

let totalCards = mockPackages.length;
let cardsUpdated = 0;
let missingSeason = 0;
let missingPace = 0;
let missingTravellerTypes = 0;
let missingInclusions = 0;
let missingHighlights = 0;
let brokenImages = 0;
let unsupportedMetricsCount = 0;

const idSet = new Set();
let duplicatesCount = 0;

const metadataCombos = {};
let identicalMetadataCombos = 0;

mockPackages.forEach(pkg => {
  // We consider cards updated if they have the new fields set properly
  if (pkg.bestSeason && pkg.pace && pkg.travellerTypes && pkg.inclusions && pkg.highlights) {
    cardsUpdated++;
  }

  // Check duplicate ID
  if (idSet.has(pkg.id)) {
    duplicatesCount++;
  }
  idSet.add(pkg.id);

  // Season (Oct-Mar check is repeated check)
  if (!pkg.bestSeason) {
    missingSeason++;
  }

  // Pace
  if (!pkg.pace) {
    missingPace++;
  }

  // Traveller Types
  if (!pkg.travellerTypes || pkg.travellerTypes.length === 0) {
    missingTravellerTypes++;
  }

  // Inclusions
  if (!pkg.inclusions) {
    missingInclusions++;
  } else {
    // Check if it uses all 7 inclusions (no package uses all inclusions by default)
    const allInclusionsEnabled = Object.values(pkg.inclusions).every(v => v === true);
    if (allInclusionsEnabled) {
      missingInclusions++;
    }
  }

  // Highlights
  if (!pkg.highlights || pkg.highlights.length < 2) {
    missingHighlights++;
  }

  // Image path check
  const localImgPath = path.join(__dirname, '../public', pkg.image);
  if (!fs.existsSync(localImgPath)) {
    brokenImages++;
  }

  // Metadata combinations for uniqueness check
  const comboKey = `${pkg.bestSeason}_${pkg.pace}_${(pkg.travellerTypes || []).sort().join(',')}_${Object.keys(pkg.inclusions).filter(k => pkg.inclusions[k]).sort().join(',')}`;
  metadataCombos[comboKey] = (metadataCombos[comboKey] || 0) + 1;
});

// Calculate identical combinations
Object.values(metadataCombos).forEach(count => {
  if (count > 1) {
    identicalMetadataCombos += (count - 1);
  }
});

// TypeScript check
let tsErrors = 0;
try {
  execSync('npx tsc --noEmit', { stdio: 'pipe' });
} catch (e) {
  const output = e.stdout ? e.stdout.toString() : '';
  const match = output.match(/Found (\d+) errors?/i);
  if (match) {
    tsErrors = parseInt(match[1]);
  } else {
    const lines = output.split('\n');
    tsErrors = lines.filter(l => l.includes('error TS')).length;
  }
}

// Print output in exact format requested
console.log(`Total package cards: ${totalCards}`);
console.log(`Cards updated: ${cardsUpdated}`);
console.log(`Identical metadata combinations found: ${identicalMetadataCombos}`);
console.log(`Cards missing season: ${missingSeason}`);
console.log(`Cards missing pace: ${missingPace}`);
console.log(`Cards missing traveller types: ${missingTravellerTypes}`);
console.log(`Cards missing inclusions: ${missingInclusions}`);
console.log(`Cards missing highlights: ${missingHighlights}`);
console.log(`Broken image paths: ${brokenImages}`);
console.log(`TypeScript errors: ${tsErrors}`);
