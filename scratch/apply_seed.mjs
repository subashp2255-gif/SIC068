import fs from 'fs';
import path from 'path';

const sqlContent = fs.readFileSync(path.resolve('scratch/seed_data.sql'), 'utf8');

// Split SQL content into statements by semicolon, avoiding splitting within strings or comments
const statements = sqlContent
  .split(/;\s*$/m)
  .map(s => s.trim())
  .filter(s => s.length > 0 && !s.startsWith('--'));

console.log(`Found ${statements.length} SQL statements to execute.`);

fs.writeFileSync(path.resolve('scratch/statements.json'), JSON.stringify(statements, null, 2), 'utf8');
console.log('Saved statements to scratch/statements.json');
