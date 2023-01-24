import 'package:core_network/core_network.dart';
import 'package:feature_frontend_top/src/model/schedule.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final scheduleListGetRepository =
    FutureProvider.autoDispose<List<Schedule>>((ref) async {
  const table = 'schedules';

  // 本日以降の削除されていないデータを昇順で取得
  final response = await ref
      .watch(supabaseClientProvider)
      .from(table)
      .select('*')
      .is_(ScheduleFields.deletedAt, null)
      .gte(ScheduleFields.date, DateTime.now())
      .order(ScheduleFields.date, ascending: true);

  final castedList = response as List<dynamic>;
  return castedList.map((e) => Schedule.fromJson(e)).toList();
});
