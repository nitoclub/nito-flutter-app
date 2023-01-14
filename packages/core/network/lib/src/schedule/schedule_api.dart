/// スケジュールAPI
abstract class ScheduleApi {
  /// スケジュール一覧を取得する
  Future<void> fetchSchedules(int scheduleId);
}
