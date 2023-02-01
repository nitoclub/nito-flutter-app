import 'package:core_data/src/schedule/model/schedule.dart';

/// スケジュールリポジトリ
abstract class ScheduleRepository {
  /// スケジュール一覧を取得する
  Future<List<Schedule>> fetchSchedules();
}
