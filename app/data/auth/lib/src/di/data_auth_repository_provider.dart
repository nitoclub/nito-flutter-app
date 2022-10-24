import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nito_data_auth/nito_data_auth.dart';
import 'package:nito_data_auth/src/data_auth_repository.dart';
import 'package:nito_network/nito_network.dart';

final Provider<AuthRepository> authRepositoryProvider = Provider((ref) {
  return DataAuthRepository(
    supabaseClient: ref.read(supabaseClientProvider),
  );
});
