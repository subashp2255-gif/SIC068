import fs from 'fs';
import path from 'path';

const sqlContent = fs.readFileSync(path.resolve('scratch/seed_data.sql'), 'utf8');

const statements = sqlContent
  .split(/;\s*$/m)
  .map(s => s.trim())
  .filter(s => s.length > 0 && !s.startsWith('--'));

console.log(`Total statements: ${statements.length}`);

const blockSize = 100;
const blocks: string[] = [];

for (let i = 0; i < statements.length; i += blockSize) {
  const slice = statements.slice(i, i + blockSize);
  const blockSql = `DO $$\nBEGIN\n` + slice.join(';\n') + `;\nEND $$;`;
  blocks.push(blockSql);
}

console.log(`Created ${blocks.length} blocks.`);

fs.writeFileSync(path.resolve('scratch/blocks_100.json'), JSON.stringify(blocks, null, 2), 'utf8');
