import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nito_data_auth/nito_data_auth.dart';
import 'package:nito_data_auth/src/data_auth_repository.dart';

final Provider<AuthRepository> authRepositoryProvider = Provider((ref) {
  return DataAuthRepository();
});

final Provider<AuthRepository> fakeAuthRepositoryProvider = Provider((ref) {
  return FakeAuthRepository();
});
