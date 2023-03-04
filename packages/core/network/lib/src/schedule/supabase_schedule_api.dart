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
  Future<List<NetworkSchedule>> fetchSchedules() async {
    final val = await _supabaseClient
        .from(_table)
        .select('*')
        .is_(NetworkScheduleFields.deletedAt, null)
        .gte(NetworkScheduleFields.date, DateTime.now())
        .order(NetworkScheduleFields.date, ascending: true);
    final castedList = val as List<dynamic>;
    return castedList.map((e) => NetworkSchedule.fromJson(e)).toList();
  }
}
