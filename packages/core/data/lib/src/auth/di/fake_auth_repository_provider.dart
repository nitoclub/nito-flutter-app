import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:core_data/src/auth/auth_repository.dart';
import 'package:core_data/src/auth/fake_auth_repository.dart';

final Provider<AuthRepository> fakeAuthRepositoryProvider = Provider((ref) {
  return FakeAuthRepository();
});
