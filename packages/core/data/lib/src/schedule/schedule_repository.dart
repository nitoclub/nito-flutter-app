import 'package:core_model/core_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final scheduleRepositoryProvider =
    FutureProvider.autoDispose<ScheduleRepository>(
  (ref) => throw UnimplementedError(),
);

/// スケジュールリポジトリ
abstract class ScheduleRepository {
  /// 直近のスケジュールを取得する
  Future<Schedule?> fetchRecentSchedule();

  /// スケジュール一覧を取得する
  Future<List<Schedule>> fetchSchedules();

  /// 今後のスケジュール一覧を取得する
  Future<List<Schedule>> fetchUpcomingSchedules();
}
