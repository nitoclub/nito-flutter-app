import { createClient } from "https://esm.sh/@supabase/supabase-js@2";
import { Database } from "./schema.ts";

export const supabase = createClient<Database>(
  // Supabase API URL - env var exported by default when deployed.
  Deno.env.get("SUPABASE_URL")!,
  // Supabase API SERVICE ROLE KEY - env var exported by default when deployed.
  Deno.env.get("SUPABASE_SERVICE_ROLE_KEY")!,
);
