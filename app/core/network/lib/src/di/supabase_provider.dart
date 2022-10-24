import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

final Provider<SupabaseClient> supabaseClientProvider = Provider((ref) {
  return Supabase.instance.client;
});
