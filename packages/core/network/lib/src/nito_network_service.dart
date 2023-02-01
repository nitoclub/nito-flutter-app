import 'package:core_network/core_network.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class NitoNetworkService {
  final Authenticator _authenticator;
  final SupabaseClient _supabaseClient;

  NitoNetworkService({
    required Authenticator authenticator,
    required SupabaseClient supabaseClient,
  })  : _authenticator = authenticator,
        _supabaseClient = supabaseClient;

  Future<R> query<R>({
    bool needAuth = true,
    required String table,
    required PostgrestTransformBuilder<R> Function(SupabaseQueryBuilder builder)
        action,
  }) async {
    if (needAuth && !await _authenticator.isAuthenticated.last) {
      // TODO: 認証が必要な場合で認証情報が切れていた場合再ログインする
      // _authenticator.signIn(email: email, password: password);
    }

    final builder = _supabaseClient.from(table);
    return await action(builder);
  }
}
