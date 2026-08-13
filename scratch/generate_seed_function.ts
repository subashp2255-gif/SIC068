import fs from 'fs';
import path from 'path';

const sqlContent = fs.readFileSync(path.resolve('scratch/seed_data.sql'), 'utf8');

const functionSql = `-- Stored Procedure to Seed All OneJourney Data
CREATE OR REPLACE FUNCTION public.seed_database()
RETURNS void
LANGUAGE plpgsql
SECURITY DEFINER
SET search_path = public
AS $$
BEGIN
${sqlContent}
END;
$$;
`;

fs.writeFileSync(path.resolve('scratch/seed_function.sql'), functionSql, 'utf8');
console.log('Successfully created scratch/seed_function.sql');
