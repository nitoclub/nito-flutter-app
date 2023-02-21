import 'package:core_network/core_network.dart';
import 'package:core_network/src/member/supabase_member_api.dart';
import 'package:core_network/src/nito_network_service.dart';
import 'package:core_network/src/participation/supabase_participation_api.dart';
import 'package:core_network/src/real_authenticator.dart';
import 'package:core_network/src/schedule/supabase_schedule_api.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart' as rp;
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

/// ParticipationApi
final rp.Provider<ParticipationApi> participationApiProvider = rp.Provider(
  (ref) => SupabaseParticipationApi(
    networkService: ref.read(networkServiceProvider),
  ),
);

/// ScheduleApi
final rp.Provider<ScheduleApi> scheduleApiProvider = rp.Provider(
  (ref) => SupabaseScheduleApi(
    supabaseClient: ref.read(supabaseClientProvider),
  ),
);

/// MemberApi
final rp.Provider<MemberApi> memberApiProvider = rp.Provider(
  (ref) => SupabaseMemberApi(
    supabaseClient: ref.read(supabaseClientProvider),
  ),
);

/// NetworkService
final rp.Provider<NitoNetworkService> networkServiceProvider = rp.Provider(
  (ref) => NitoNetworkService(
    authenticator: ref.read(authenticatorProvider),
    supabaseClient: ref.read(supabaseClientProvider),
  ),
);

/// SupabaseClient
final rp.Provider<SupabaseClient> supabaseClientProvider = rp.Provider(
  (ref) => Supabase.instance.client,
);

/// GoTrueClient
final rp.Provider<GoTrueClient> goTrueClientProvider = rp.Provider(
  (ref) => ref.watch(supabaseClientProvider).auth,
);

/// User?
final rp.Provider<User?> userProvider =
    rp.Provider((ref) => ref.watch(goTrueClientProvider).currentUser);

/// AuthState
final rp.StreamProvider<AuthState> authStateProvider = rp.StreamProvider(
  (ref) => ref.watch(goTrueClientProvider).onAuthStateChange,
);

/// AsyncValue<bool>
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
