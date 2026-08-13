import { createClient } from '@supabase/supabase-js';
import fs from 'fs';
import path from 'path';

function loadEnv() {
  const envPath = path.resolve('.env.local');
  const envContent = fs.readFileSync(envPath, 'utf8');
  const vars: Record<string, string> = {};
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

const env = loadEnv();
const supabase = createClient(env.NEXT_PUBLIC_SUPABASE_URL, env.NEXT_PUBLIC_SUPABASE_ANON_KEY);

const blocks: string[] = JSON.parse(fs.readFileSync(path.resolve('scratch/blocks_100.json'), 'utf8'));

async function main() {
  console.log(`Starting execution of ${blocks.length} SQL blocks via RPC...`);
  let successCount = 0;

  for (let i = 0; i < blocks.length; i++) {
    const block = blocks[i];
    console.log(`Executing Block ${i + 1}/${blocks.length} (${block.length} bytes)...`);
    const { error } = await supabase.rpc('admin_execute_sql', { sql_query: block });
    if (error) {
      console.error(`  ✗ Block ${i + 1} failed:`, error.message);
    } else {
      console.log(`  ✓ Block ${i + 1} succeeded.`);
      successCount++;
    }
  }

  console.log(`Finished: ${successCount}/${blocks.length} blocks succeeded.`);
}

main().catch(err => {
  console.error('RPC Seed execution failed:', err);
  process.exit(1);
});
