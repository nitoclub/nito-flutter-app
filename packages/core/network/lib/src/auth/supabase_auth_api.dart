import 'package:core_model/core_model.dart';
import 'package:core_network/core_network.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

final supabaseAuthApiProvider = authApiProvider.overrideWith(
  (ref) => SupabaseAuthApi(
    supabaseClient: ref.watch(supabaseClientProvider),
  ),
);

/// Supabase を使用した認証系 API 実装クラス
class SupabaseAuthApi implements AuthApi {
  final SupabaseClient _supabaseClient;

  SupabaseAuthApi({required SupabaseClient supabaseClient})
      : _supabaseClient = supabaseClient;

  @override
  Future<void> updatePassword(Password password) async {
    await _supabaseClient.auth.updateUser(
      UserAttributes(
        password: password.value,
      ),
    );
  }
}
