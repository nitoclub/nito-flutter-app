import 'package:hooks_riverpod/hooks_riverpod.dart' as rp;
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nito_network/src/authenticator.dart';
import 'package:nito_network/src/real_authenticator.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

/// SupabaseClient
final rp.Provider<SupabaseClient> supabaseClientProvider = rp.Provider(
  (ref) => Supabase.instance.client,
);

/// GoTrueClient
final rp.Provider<GoTrueClient> goTrueClientProvider = rp.Provider(
  (ref) => ref.watch(supabaseClientProvider).auth,
);

/// AuthState
final rp.StreamProvider<AuthState> authStateProvider = rp.StreamProvider(
  (ref) => ref.watch(goTrueClientProvider).onAuthStateChange,
);

/// IsSignedIn
final rp.Provider<AsyncValue<bool>> isSignedInProvider = rp.Provider(
  (ref) => ref
      .watch(authStateProvider)
      .whenData((value) => value.session?.user != null),
);

/// Authenticator
final rp.Provider<Authenticator> authenticatorProvider = rp.Provider(
  (ref) => RealAuthenticator(
    client: ref.watch(goTrueClientProvider),
  ),
);
