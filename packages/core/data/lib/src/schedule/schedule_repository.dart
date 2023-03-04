import 'package:core_model/core_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final scheduleRepositoryProvider =
    FutureProvider.autoDispose<ScheduleRepository>(
  (ref) => throw UnimplementedError(),
);

/// スケジュールリポジトリ
abstract class ScheduleRepository {
  /// スケジュール一覧を取得する
  Future<List<Schedule>> fetchSchedules();
}
