/// 認証系リポジトリ
abstract class AuthRepository {
  Future<bool> signIn(String email, String password);
}
