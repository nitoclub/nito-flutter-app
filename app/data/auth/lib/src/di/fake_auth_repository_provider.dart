import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nito_data_auth/nito_data_auth.dart';

final Provider<AuthRepository> fakeAuthRepositoryProvider = Provider((ref) {
  return FakeAuthRepository();
});
