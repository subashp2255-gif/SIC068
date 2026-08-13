import fs from 'fs';
import path from 'path';

const sqlContent = fs.readFileSync(path.resolve('scratch/seed_data.sql'), 'utf8');

const procSql = `CREATE OR REPLACE FUNCTION public.seed_all_data()
RETURNS void
LANGUAGE plpgsql
SECURITY DEFINER
SET search_path = public
AS $PROC$
BEGIN
${sqlContent}
END;
$PROC$;
`;

fs.writeFileSync(path.resolve('scratch/full_seed_proc.sql'), procSql, 'utf8');
console.log('Successfully generated scratch/full_seed_proc.sql, size:', procSql.length);
