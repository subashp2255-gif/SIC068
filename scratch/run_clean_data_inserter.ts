import fs from 'fs';
import path from 'path';

const sqlContent = fs.readFileSync(path.resolve('scratch/seed_data.sql'), 'utf8');

// Wrap in single transaction block
const transactionSql = `BEGIN;\n` + sqlContent + `\nCOMMIT;\n`;

fs.writeFileSync(path.resolve('scratch/full_seed_transaction.sql'), transactionSql, 'utf8');
console.log('Saved scratch/full_seed_transaction.sql, size:', transactionSql.length);
