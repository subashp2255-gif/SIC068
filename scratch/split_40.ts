import fs from 'fs';
import path from 'path';

const sqlContent = fs.readFileSync(path.resolve('scratch/seed_data.sql'), 'utf8');

const statements = sqlContent
  .split(/;\s*$/m)
  .map(s => s.trim())
  .filter(s => s.length > 0 && !s.startsWith('--'));

console.log(`Total statements: ${statements.length}`);

const chunkSize = 40;
let chunkIndex = 1;

for (let i = 0; i < statements.length; i += chunkSize) {
  const chunkStatements = statements.slice(i, i + chunkSize);
  const chunkSql = `DO $$\nBEGIN\n` + chunkStatements.join(';\n') + `;\nEND $$;`;
  const fileName = `scratch/run_batch_${chunkIndex}.sql`;
  fs.writeFileSync(path.resolve(fileName), chunkSql, 'utf8');
  chunkIndex++;
}

console.log(`Generated ${chunkIndex - 1} batch files.`);
