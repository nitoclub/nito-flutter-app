import 'package:nito_data_auth/src/auth_repository.dart';

/// 認証系のフェイクリポジトリ
class FakeAuthRepository implements AuthRepository {
  @override
  Future<bool> signIn(String email, String password) async {
    return true;
  }
}
