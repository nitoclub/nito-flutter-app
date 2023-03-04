import 'package:core_network/src/schedule/model/network_schedule.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final scheduleApiProvider = FutureProvider.autoDispose<ScheduleApi>(
      (ref) => throw UnimplementedError(),
);

/// スケジュールAPI
abstract class ScheduleApi {
  /// スケジュール一覧を取得する
  Future<List<NetworkSchedule>> fetchSchedules();
}
