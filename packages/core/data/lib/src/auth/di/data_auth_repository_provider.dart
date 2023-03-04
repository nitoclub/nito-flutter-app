import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:core_data/src/auth/legacy_auth_repository.dart';
import 'package:core_data/src/auth/data_auth_repository.dart';
import 'package:core_network/core_network.dart';

final Provider<LegacyAuthRepository> legacyAuthRepositoryProvider = Provider(
  (ref) => DataAuthRepository(
    authenticator: ref.read(authenticatorProvider),
  ),
);
