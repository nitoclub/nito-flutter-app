import 'package:core_data/core_data.dart';
import 'package:core_model/core_model.dart';
import 'package:flutter_test/flutter_test.dart';

/// テスト用のスケジュールリポジトリ
class TestScheduleRepository extends Fake implements ScheduleRepository {
  final List<Schedule> _schedules = [
    const Schedule(id: 1, date: '2023-04-15', isFinished: true),
    const Schedule(id: 2, date: '2023-04-16', isFinished: false),
    const Schedule(id: 3, date: '2023-04-17', isFinished: false),
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
        .where((schedule) => DateTime.parse(schedule.date).isAfter(now))
        .toList();
  }
}
