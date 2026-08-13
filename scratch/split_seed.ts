import fs from 'fs';
import path from 'path';

const sqlContent = fs.readFileSync(path.resolve('scratch/seed_data.sql'), 'utf8');

// Group by sections
const sections = sqlContent.split(/^-- \d+\./m);

console.log(`Split seed SQL into ${sections.length} major sections.`);

sections.forEach((sec, idx) => {
  if (idx === 0) return;
  const fileName = `scratch/seed_chunk_${idx}.sql`;
  fs.writeFileSync(path.resolve(fileName), sec, 'utf8');
  console.log(`Wrote ${fileName} (${sec.length} bytes)`);
});
