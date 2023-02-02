import 'package:core_model/core_model.dart';

/// スケジュールリポジトリ
abstract class ScheduleRepository {
  /// スケジュール一覧を取得する
  Future<List<Schedule>> fetchSchedules();
}
