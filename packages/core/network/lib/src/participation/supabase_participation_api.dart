import 'package:core_network/src/nito_network_service.dart';
import 'package:core_network/src/participation/participation_api.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

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
