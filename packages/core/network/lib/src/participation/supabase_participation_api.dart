import 'package:core_network/src/nito_network_service.dart';
import 'package:core_network/src/participation/participation_api.dart';

/// 参加情報API を SupabaseClient で実装したクラス
class SupabaseParticipationApi implements ParticipationApi {
  static const _table = 'participation';

  final NitoNetworkService _networkService;

  SupabaseParticipationApi({required NitoNetworkService networkService})
      : _networkService = networkService;

  @override
  Future<void> fetchParticipants(int scheduleId) {
    return _networkService
        .query(
      table: _table,
      action: (builder) => builder.select('*'),
    )
        .then((value) {
      return null;
    });
  }

  @override
  Future<void> participate(int scheduleId) => _networkService.query(
        table: _table,
        action: (builder) => builder.insert({
          'hoge': scheduleId,
        }),
      );
}
