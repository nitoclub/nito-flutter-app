import 'package:nito_data_auth/src/auth_repository.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

/// 認証系のデータ操作リポジトリ
class DataAuthRepository extends AuthRepository {
  @override
  Future<bool> signIn(String email, String password) async {
    final response = await Supabase.instance.client.auth.signInWithPassword(
      password: password,
      email: email,
    );
    return response.session != null;
  }
}
