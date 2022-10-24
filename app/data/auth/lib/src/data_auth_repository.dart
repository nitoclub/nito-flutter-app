import 'package:nito_data_auth/src/auth_repository.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

/// 認証系のデータ操作リポジトリ
class DataAuthRepository implements AuthRepository {

  final SupabaseClient _supabaseClient;

  DataAuthRepository({required SupabaseClient supabaseClient}) :
        _supabaseClient = supabaseClient;

  @override
  Future<bool> signIn(String email, String password) async {
    final response = await _supabaseClient.auth.signInWithPassword(
      password: password,
      email: email,
    );
    return response.session != null;
  }
}
