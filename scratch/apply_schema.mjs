import { createClient } from '@supabase/supabase-js';
import fs from 'fs';
import path from 'path';

function loadEnv() {
  const envPath = path.resolve('.env.local');
  const envContent = fs.readFileSync(envPath, 'utf8');
  const vars = {};
  for (const line of envContent.split('\n')) {
    const trimmed = line.trim();
    if (!trimmed || trimmed.startsWith('#')) continue;
    const eqIdx = trimmed.indexOf('=');
    if (eqIdx > 0) {
      vars[trimmed.slice(0, eqIdx).trim()] = trimmed.slice(eqIdx + 1).trim();
    }
  }
  return vars;
}

async function run() {
  const env = loadEnv();
  const supabase = createClient(env.NEXT_PUBLIC_SUPABASE_URL, env.NEXT_PUBLIC_SUPABASE_ANON_KEY);
  
  // Read migration SQL
  const sql = fs.readFileSync(path.resolve('supabase/migrations/01_schema.sql'), 'utf8');
  
  console.log('Attempting to apply migration via RPC exec_sql / exec...');
  const { data, error } = await supabase.rpc('exec_sql', { sql });
  if (error) {
    console.log('RPC exec_sql error:', error.message);
  } else {
    console.log('RPC exec_sql success:', data);
  }
}

run().catch(err => console.error(err));
