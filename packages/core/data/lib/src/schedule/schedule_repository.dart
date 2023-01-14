/// スケジュールリポジトリ
abstract class ScheduleRepository {
  /// スケジュール一覧を取得する
  Future<void> fetchSchedules(int scheduleId);
}
