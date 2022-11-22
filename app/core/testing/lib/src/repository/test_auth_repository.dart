import 'package:nito_data/nito_data.dart';

/// 認証系のテスト用リポジトリ
class TestAuthRepository implements AuthRepository {
  @override
  Future<bool> signIn(String email, String password) async {
    return true;
  }
}
