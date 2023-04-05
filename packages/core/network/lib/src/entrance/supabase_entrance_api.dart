import 'package:core_network/core_network.dart';
import 'package:core_network/src/entrance/entrance_api.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

final supabaseEntranceApiProvider = entranceApiProvider.overrideWith(
  (ref) => SupabaseEntranceApi(
    supabaseClient: ref.watch(supabaseClientProvider),
  ),
);

/// 仮登録API を SupabaseClient で実装したクラス
class SupabaseEntranceApi implements EntranceApi {
  static const _table = 'entrance';

  final SupabaseClient _supabaseClient;

  SupabaseEntranceApi({required SupabaseClient supabaseClient})
      : _supabaseClient = supabaseClient;

  @override
  Future<void> register(String nickname, String email) async =>
      await _supabaseClient.from(_table).insert({
        "nickname": nickname,
        "email": email,
      });
}
