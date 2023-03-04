/// 認証系リポジトリ
abstract class LegacyAuthRepository {
  Future<bool> signIn(String email, String password);
}
