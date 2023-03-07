import 'package:core_common/core_common.dart';
import 'package:core_network/core_network.dart';
import 'package:core_network/src/schedule/model/network_schedule.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

final supabaseScheduleApiProvider = scheduleApiProvider.overrideWith(
  (ref) => SupabaseScheduleApi(
    supabaseClient: ref.watch(supabaseClientProvider),
  ),
);

/// スケジュールAPI を SupabaseClient で実装したクラス
class SupabaseScheduleApi implements ScheduleApi {
  static const _table = 'schedules';

  final SupabaseClient _supabaseClient;

  SupabaseScheduleApi({required SupabaseClient supabaseClient})
      : _supabaseClient = supabaseClient;

  @override
  Future<NetworkSchedule?> fetchRecentSchedule() async {
    Map<String, dynamic>? data = await _supabaseClient
        .from(_table)
        .select('*')
        .is_(NetworkScheduleFields.deletedAt, null)
        .gte(NetworkScheduleFields.date, DateTime.now())
        .order(NetworkScheduleFields.date, ascending: true)
        .limit(1)
        .maybeSingle();
    return data?.let(NetworkSchedule.fromJson);
  }

  @override
  Future<List<NetworkSchedule>> fetchSchedules() async {
    final data = await _supabaseClient
        .from(_table)
        .select('*')
        .is_(NetworkScheduleFields.deletedAt, null)
        .order(NetworkScheduleFields.date, ascending: false)
        // FIXME: 取得件数などを指定できるようにする
        .limit(30);
    final castedList = data as List<Map<String, dynamic>>;
    return castedList.map((e) => NetworkSchedule.fromJson(e)).toList();
  }

  @override
  Future<List<NetworkSchedule>> fetchUpcomingSchedules() async {
    final data = await _supabaseClient
        .from(_table)
        .select('*')
        .is_(NetworkScheduleFields.deletedAt, null)
        .gte(NetworkScheduleFields.date, DateTime.now())
        .order(NetworkScheduleFields.date, ascending: true);
    final castedList = data as List<dynamic>;
    return castedList.map((e) => NetworkSchedule.fromJson(e)).toList();
  }
}
