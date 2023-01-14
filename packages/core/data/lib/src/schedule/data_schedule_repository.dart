import 'package:core_data/core_data.dart';
import 'package:core_network/core_network.dart';

/// スケジュールのデータ操作リポジトリ
class DataScheduleRepository implements ScheduleRepository {
  final ScheduleApi _api;

  DataScheduleRepository({required ScheduleApi api}) : _api = api;

  @override
  Future<void> fetchSchedules(int scheduleId) =>
      _api.fetchSchedules(scheduleId);
}
