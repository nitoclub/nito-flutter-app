import { Database } from "./schema.ts";

export type Schedule = Database['public']['Tables']['schedules']['Row']
export type Member = Database['public']['Tables']['members']['Row']
