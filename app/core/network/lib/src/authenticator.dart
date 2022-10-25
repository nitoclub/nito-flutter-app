import 'package:supabase_flutter/supabase_flutter.dart';

/// 認証
abstract class Authenticator {
  Future<AuthResponse> signIn({
    required String email,
    required String password,
  });
}
