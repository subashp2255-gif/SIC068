import fs from 'fs';
import path from 'path';

const sqlContent = fs.readFileSync(path.resolve('scratch/seed_data.sql'), 'utf8');

const lines = sqlContent.split('\n');

const part1Lines: string[] = [];
const part2Lines: string[] = [];

let isPart2 = false;

for (const line of lines) {
  if (line.startsWith('-- 5. Itinerary Days')) {
    isPart2 = true;
  }

  if (line.trim() && !line.startsWith('--')) {
    if (isPart2) {
      part2Lines.push(line);
    } else {
      part1Lines.push(line);
    }
  }
}

const proc1Sql = `CREATE OR REPLACE FUNCTION public.seed_part1()
RETURNS void LANGUAGE plpgsql SECURITY DEFINER SET search_path = public AS $$
BEGIN
${part1Lines.join('\n')}
END;
$$;
SELECT public.seed_part1();
`;

const proc2Sql = `CREATE OR REPLACE FUNCTION public.seed_part2()
RETURNS void LANGUAGE plpgsql SECURITY DEFINER SET search_path = public AS $$
BEGIN
${part2Lines.join('\n')}
END;
$$;
SELECT public.seed_part2();
`;

fs.writeFileSync(path.resolve('scratch/seed_part1.sql'), proc1Sql, 'utf8');
fs.writeFileSync(path.resolve('scratch/seed_part2.sql'), proc2Sql, 'utf8');

console.log(`Saved seed_part1.sql (${proc1Sql.length} bytes) and seed_part2.sql (${proc2Sql.length} bytes).`);
