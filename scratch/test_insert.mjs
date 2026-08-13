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

async function testEnquiry() {
  const env = loadEnv();
  const supabase = createClient(env.NEXT_PUBLIC_SUPABASE_URL, env.NEXT_PUBLIC_SUPABASE_ANON_KEY);

  const { data, error } = await supabase.from('enquiries').insert({
    full_name: 'Test Pilgrim',
    email: 'test@example.com',
    phone: '+91 9876543210',
  }).select();

  console.log('Result:', error ? `Error: ${error.message}` : `Success: ${JSON.stringify(data)}`);
}

testEnquiry();
