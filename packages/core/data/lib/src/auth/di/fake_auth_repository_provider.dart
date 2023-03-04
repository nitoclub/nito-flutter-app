import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:core_data/src/auth/legacy_auth_repository.dart';
import 'package:core_data/src/auth/fake_auth_repository.dart';

final Provider<LegacyAuthRepository> fakeAuthRepositoryProvider =
    Provider((ref) {
  return FakeAuthRepository();
});
