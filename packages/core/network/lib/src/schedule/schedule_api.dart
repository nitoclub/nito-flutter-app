import 'package:core_network/src/schedule/model/network_schedule.dart';

/// スケジュールAPI
abstract class ScheduleApi {
  /// スケジュール一覧を取得する
  Future<List<NetworkSchedule>> fetchSchedules();
}
