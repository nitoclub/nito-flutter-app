import 'package:supabase_flutter/supabase_flutter.dart';

/// 認証
abstract class Authenticator {
  Stream<AuthState> get onAuthStateChange;

  Future<AuthResponse> signIn({
    required String email,
    required String password,
  });
}
