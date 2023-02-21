import 'package:core_data/core_data.dart';
import 'package:core_network/core_network.dart';

/// 参加情報のデータ操作リポジトリ
class DataParticipationRepository implements ParticipationRepository {
  final ParticipationApi _api;

  DataParticipationRepository({required ParticipationApi api}) : _api = api;

  @override
  Future<void> fetchParticipants(int scheduleId) =>
      _api.fetchParticipants(scheduleId);

  @override
  Future<void> participate(int scheduleId, int memberId) =>
      _api.participate(scheduleId, memberId);
}
