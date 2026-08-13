import fs from 'fs';
import path from 'path';

const sqlContent = fs.readFileSync(path.resolve('scratch/seed_data.sql'), 'utf8');

const lines = sqlContent.split('\n');

const p1Lines: string[] = [];
const p2Lines: string[] = [];
const p3Lines: string[] = [];

let stage = 1;

for (const line of lines) {
  if (line.startsWith('-- 5. Itinerary Days')) {
    stage = 2;
  } else if (line.startsWith('-- 6. Package Features')) {
    stage = 3;
  }

  if (line.trim() && !line.startsWith('--')) {
    if (stage === 1) p1Lines.push(line);
    else if (stage === 2) p2Lines.push(line);
    else p3Lines.push(line);
  }
}

const proc1 = `CREATE OR REPLACE FUNCTION public.seed_part1()\nRETURNS void LANGUAGE plpgsql SECURITY DEFINER SET search_path = public AS $$\nBEGIN\n${p1Lines.join('\n')}\nEND;\n$$;\nSELECT public.seed_part1();`;
const proc2 = `CREATE OR REPLACE FUNCTION public.seed_part2()\nRETURNS void LANGUAGE plpgsql SECURITY DEFINER SET search_path = public AS $$\nBEGIN\n${p2Lines.join('\n')}\nEND;\n$$;\nSELECT public.seed_part2();`;
const proc3 = `CREATE OR REPLACE FUNCTION public.seed_part3()\nRETURNS void LANGUAGE plpgsql SECURITY DEFINER SET search_path = public AS $$\nBEGIN\n${p3Lines.join('\n')}\nEND;\n$$;\nSELECT public.seed_part3();`;

fs.writeFileSync(path.resolve('scratch/sp1.sql'), proc1, 'utf8');
fs.writeFileSync(path.resolve('scratch/sp2.sql'), proc2, 'utf8');
fs.writeFileSync(path.resolve('scratch/sp3.sql'), proc3, 'utf8');

console.log(`Saved sp1.sql (${proc1.length} B), sp2.sql (${proc2.length} B), sp3.sql (${proc3.length} B).`);
