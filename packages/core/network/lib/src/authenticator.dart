import 'package:supabase_flutter/supabase_flutter.dart';

/// 認証
abstract class Authenticator {
  Stream<AuthState> get onAuthStateChange;
  Stream<bool> get isAuthenticated;

  Future<AuthResponse> signIn({
    required String email,
    required String password,
  });
}
