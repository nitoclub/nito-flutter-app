import 'package:core_data/core_data.dart';
import 'package:core_model/core_model.dart';
import 'package:core_network/core_network.dart';

final offlineFirstScheduleRepositoryProvider =
    scheduleRepositoryProvider.overrideWith(
  (ref) async => OfflineFirstScheduleRepository(
    api: await ref.watch(scheduleApiProvider.future),
  ),
);

/// スケジュールのデータ操作リポジトリ
class OfflineFirstScheduleRepository implements ScheduleRepository {
  final ScheduleApi _api;

  OfflineFirstScheduleRepository({required ScheduleApi api}) : _api = api;

  @override
  Future<List<Schedule>> fetchSchedules() async {
    final response = await _api.fetchSchedules();
    return response
        .map(
          (e) => Schedule(
            id: e.id,
            date: e.date,
          ),
        )
        .toList();
  }
}
