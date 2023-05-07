import 'package:core_data/core_data.dart';
import 'package:core_model/core_model.dart';
import 'package:flutter_test/flutter_test.dart';

/// テスト用のスケジュールリポジトリ
class TestScheduleRepository extends Fake implements ScheduleRepository {
  final List<Schedule> _schedules = [
    Schedule(id: 1, scheduledAt: DateTime(2022, 4, 15, 10, 30), isFinished: true),
    Schedule(id: 2, scheduledAt: DateTime(2022, 4, 16, 10, 30), isFinished: false),
    Schedule(id: 3, scheduledAt: DateTime(2022, 4, 17, 10, 30), isFinished: false),
  ];

  @override
  Future<Schedule?> fetchRecentSchedule() async {
    return _schedules.last;
  }

  @override
  Future<List<Schedule>> fetchSchedules() async {
    return _schedules;
  }

  @override
  Future<List<Schedule>> fetchUpcomingSchedules() async {
    final now = DateTime.now();
    return _schedules
        .where((schedule) => schedule.scheduledAt.isAfter(now))
        .toList();
  }
}
