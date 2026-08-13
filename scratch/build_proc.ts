import fs from 'fs';
import path from 'path';

const sqlContent = fs.readFileSync(path.resolve('scratch/seed_data.sql'), 'utf8');

// Replace any trailing semicolons inside function body if needed, or wrap inside DO block
const procedureSql = `CREATE OR REPLACE FUNCTION public.exec_full_seed()
RETURNS void
LANGUAGE plpgsql
SECURITY DEFINER
SET search_path = public
AS $BODY$
BEGIN
${sqlContent}
END;
$BODY$;

SELECT public.exec_full_seed();
`;

fs.writeFileSync(path.resolve('scratch/exec_proc.sql'), procedureSql, 'utf8');
console.log('Saved scratch/exec_proc.sql, size:', procedureSql.length);
