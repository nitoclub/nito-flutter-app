import 'package:core_network/core_network.dart';
import 'package:core_network/src/nito_network_service.dart';
import 'package:core_network/src/schedule/model/network_schedule.dart';

/// スケジュールAPI を SupabaseClient で実装したクラス
class SupabaseScheduleApi implements ScheduleApi {
  static const _table = 'schedules';

  final NitoNetworkService _networkService;

  SupabaseScheduleApi({required NitoNetworkService networkService})
      : _networkService = networkService;

  @override
  Future<List<NetworkSchedule>> fetchSchedules() {
    return _networkService
        .query(
      table: _table,
      action: (builder) => builder
          .select('*')
          .is_(NetworkScheduleFields.deletedAt, null)
          .gte(NetworkScheduleFields.date, DateTime.now())
          .order(NetworkScheduleFields.date, ascending: true),
    )
        .then(
      (value) {
        final castedList = value as List<dynamic>;
        return castedList.map((e) => NetworkSchedule.fromJson(e)).toList();
      },
    );
  }
}
