import 'package:hooks_riverpod/hooks_riverpod.dart' as rp;
import 'package:nito_network/src/authenticator.dart';
import 'package:nito_network/src/real_authenticator.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

/// SupabaseClient
final rp.Provider<SupabaseClient> supabaseClientProvider = rp.Provider(
  (ref) => Supabase.instance.client,
);

/// GoTrueClient
final rp.Provider<GoTrueClient> goTrueClientProvider = rp.Provider(
  (ref) => ref.read(supabaseClientProvider).auth,
);

/// Authenticator
final rp.Provider<Authenticator> authenticatorProvider = rp.Provider(
  (ref) => RealAuthenticator(
    client: ref.read(goTrueClientProvider),
  ),
);
