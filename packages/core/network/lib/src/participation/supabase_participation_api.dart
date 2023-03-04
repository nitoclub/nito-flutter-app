import 'package:core_network/core_network.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

final supabaseParticipationApiProvider = participationApiProvider.overrideWith(
  (ref) => SupabaseParticipationApi(
    supabaseClient: ref.watch(supabaseClientProvider),
  ),
);

/// 参加情報API を SupabaseClient で実装したクラス
class SupabaseParticipationApi implements ParticipationApi {
  static const _table = 'participation';

  final SupabaseClient _supabaseClient;

  SupabaseParticipationApi({required SupabaseClient supabaseClient})
      : _supabaseClient = supabaseClient;

  @override
  Future<void> fetchParticipants(int scheduleId) async {
    final val = await _supabaseClient.from(_table).select('*');
    return;
  }

  @override
  Future<void> participate(int scheduleId, int memberId) async {
    final val = await _supabaseClient.from(_table).insert({
      "schedule_id": scheduleId,
      "member_id": memberId,
    });
  }
}
