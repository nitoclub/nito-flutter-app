import 'package:core_network/src/schedule/model/network_schedule.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final scheduleApiProvider = Provider.autoDispose<ScheduleApi>(
  (ref) => throw UnimplementedError(),
);

/// スケジュールAPI
abstract class ScheduleApi {
  /// 直近のスケジュールを取得する
  Future<NetworkSchedule?> fetchRecentSchedule();

  /// スケジュール一覧を取得する
  Future<List<NetworkSchedule>> fetchSchedules();

  /// 今後のスケジュール一覧を取得する
  Future<List<NetworkSchedule>> fetchUpcomingSchedules();
}
