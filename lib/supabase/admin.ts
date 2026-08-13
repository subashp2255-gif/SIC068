import { createClient } from "@supabase/supabase-js";
import type { Database } from "./types";

/**
 * Creates a Supabase admin client with service-role key.
 * ONLY use in server-side code: API routes, seed scripts, migrations.
 * NEVER import this in client components.
 */
export function getSupabaseAdminClient() {
  const url = process.env.NEXT_PUBLIC_SUPABASE_URL;
  const serviceRoleKey = process.env.SUPABASE_SERVICE_ROLE_KEY;

  if (!url || !serviceRoleKey) {
    throw new Error(
      "Missing NEXT_PUBLIC_SUPABASE_URL or SUPABASE_SERVICE_ROLE_KEY for admin client."
    );
  }

  return createClient<Database>(url, serviceRoleKey, {
    auth: {
      autoRefreshToken: false,
      persistSession: false,
    },
  });
}
