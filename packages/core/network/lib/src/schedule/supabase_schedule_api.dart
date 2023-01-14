import 'package:core_network/core_network.dart';
import 'package:core_network/src/nito_network_service.dart';

/// スケジュールAPI を SupabaseClient で実装したクラス
class SupabaseScheduleApi implements ScheduleApi {
  static const _table = 'schedules';

  final NitoNetworkService _networkService;

  SupabaseScheduleApi({required NitoNetworkService networkService})
      : _networkService = networkService;

  @override
  Future<void> fetchSchedules(int scheduleId) {
    return _networkService
        .query(
      table: _table,
      action: (builder) => builder.select('*'),
    )
        .then((value) {
      return null;
    });
  }
}
