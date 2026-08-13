import fs from 'fs';
import path from 'path';

const sqlContent = fs.readFileSync(path.resolve('scratch/seed_data.sql'), 'utf8');

const lines = sqlContent.split('\n');

let currentBatchName = 'batch_1_destinations_cats.sql';
let currentLines: string[] = [];
let batchIndex = 1;

function saveBatch(name: string, contentLines: string[]) {
  const fileContent = `DO $$\nBEGIN\n` + contentLines.join('\n') + `\nEND $$;`;
  fs.writeFileSync(path.resolve(`scratch/${name}`), fileContent, 'utf8');
  console.log(`Saved scratch/${name} (${fileContent.length} bytes, ${contentLines.length} lines)`);
}

for (let i = 0; i < lines.length; i++) {
  const line = lines[i];
  if (line.startsWith('-- 3. Packages')) {
    saveBatch(currentBatchName, currentLines);
    batchIndex++;
    currentBatchName = `batch_${batchIndex}_packages.sql`;
    currentLines = [];
  } else if (line.startsWith('-- 5. Itinerary Days')) {
    saveBatch(currentBatchName, currentLines);
    batchIndex++;
    currentBatchName = `batch_${batchIndex}_itinerary_1.sql`;
    currentLines = [];
  } else if (line.startsWith('-- 6. Package Features')) {
    saveBatch(currentBatchName, currentLines);
    batchIndex++;
    currentBatchName = `batch_${batchIndex}_features.sql`;
    currentLines = [];
  } else if (line.startsWith('-- 7. Package Media')) {
    saveBatch(currentBatchName, currentLines);
    batchIndex++;
    currentBatchName = `batch_${batchIndex}_media_access_faqs_testimonials.sql`;
    currentLines = [];
  }

  // Split itinerary if it grows too large (>250KB)
  if (currentBatchName.includes('itinerary') && currentLines.join('\n').length > 200000 && line.startsWith('INSERT INTO public.itinerary_days')) {
    saveBatch(currentBatchName, currentLines);
    batchIndex++;
    currentBatchName = `batch_${batchIndex}_itinerary_next.sql`;
    currentLines = [];
  }

  if (line.trim() && !line.startsWith('--')) {
    currentLines.push(line);
  }
}

if (currentLines.length > 0) {
  saveBatch(currentBatchName, currentLines);
}

console.log('All batches saved successfully.');
