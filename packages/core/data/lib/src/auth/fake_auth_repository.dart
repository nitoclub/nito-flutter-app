import 'package:core_data/src/auth/legacy_auth_repository.dart';

/// 認証系のフェイクリポジトリ
class FakeAuthRepository implements LegacyAuthRepository {
  @override
  Future<bool> signIn(String email, String password) async {
    return true;
  }
}
