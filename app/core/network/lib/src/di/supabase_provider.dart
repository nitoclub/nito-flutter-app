import 'package:hooks_riverpod/hooks_riverpod.dart' as riverpod;
import 'package:supabase_flutter/supabase_flutter.dart';

final riverpod.Provider<SupabaseClient> supabaseClientProvider =
    riverpod.Provider((ref) => Supabase.instance.client);
