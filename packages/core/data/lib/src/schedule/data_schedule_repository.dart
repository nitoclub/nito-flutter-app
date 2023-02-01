import 'package:core_data/core_data.dart';
import 'package:core_model/core_model.dart';
import 'package:core_network/core_network.dart';

/// スケジュールのデータ操作リポジトリ
class DataScheduleRepository implements ScheduleRepository {
  final ScheduleApi _api;

  DataScheduleRepository({required ScheduleApi api}) : _api = api;

  @override
  Future<List<Schedule>> fetchSchedules() async {
    final response = await _api.fetchSchedules();
    return response.map((e) => Schedule(date: e.date)).toList();
  }
}
