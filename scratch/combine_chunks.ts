import fs from 'fs';
import path from 'path';

const sqlContent = fs.readFileSync(path.resolve('scratch/seed_data.sql'), 'utf8');

const lines = sqlContent.split('\n');

const chunks: string[][] = [[], [], [], []];
let currentChunk = 0;

for (const line of lines) {
  if (line.startsWith('-- 3. Packages')) {
    currentChunk = 1;
  } else if (line.startsWith('-- 5. Itinerary Days')) {
    currentChunk = 2;
  } else if (line.startsWith('-- 6. Package Features')) {
    currentChunk = 3;
  }

  // Split itinerary days evenly into chunk 2 and chunk 3 if chunk 2 gets too large
  if (currentChunk === 2 && chunks[2].join('\n').length > 300000 && line.startsWith('INSERT INTO public.itinerary_days')) {
    currentChunk = 3;
  }

  if (line.trim() && !line.startsWith('--')) {
    chunks[currentChunk].push(line);
  }
}

chunks.forEach((chunkLines, idx) => {
  const fileContent = `DO $$\nBEGIN\n` + chunkLines.join('\n') + `\nEND $$;`;
  const fileName = `scratch/final_chunk_${idx + 1}.sql`;
  fs.writeFileSync(path.resolve(fileName), fileContent, 'utf8');
  console.log(`Wrote ${fileName}: ${fileContent.length} bytes, ${chunkLines.length} statements`);
});
