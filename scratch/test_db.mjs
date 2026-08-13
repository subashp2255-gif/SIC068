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

async function test() {
  const env = loadEnv();
  console.log('Testing Supabase URL:', env.NEXT_PUBLIC_SUPABASE_URL);
  const supabase = createClient(env.NEXT_PUBLIC_SUPABASE_URL, env.NEXT_PUBLIC_SUPABASE_ANON_KEY);
  
  const tables = [
    'packages', 'destinations', 'categories', 'package_categories',
    'itinerary_days', 'package_features', 'package_media',
    'package_accessibility', 'faqs', 'testimonials', 'enquiries',
    'user_favorites', 'package_reviews', 'profiles', 'ai_conversations',
    'ai_messages', 'ai_preferences', 'ai_recommendations'
  ];
  
  for (const t of tables) {
    const { data, error, count } = await supabase.from(t).select('*', { count: 'exact' }).limit(1);
    if (error) {
      console.log(`Table ${t}: Error -> ${error.message} (${error.code})`);
    } else {
      console.log(`Table ${t}: Success -> ${data ? data.length : 0} rows returned, count: ${count}`);
    }
  }
}

test().catch(err => console.error(err));
