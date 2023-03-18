import 'package:core_data/core_data.dart';
import 'package:core_network/core_network.dart';

final offlineFirstParticipationRepositoryProvider =
    participationRepositoryProvider.overrideWith(
  (ref) => OfflineFirstParticipationRepository(
    participationApi: ref.watch(participationApiProvider),
  ),
);

/// 参加情報のデータ操作リポジトリ
class OfflineFirstParticipationRepository implements ParticipationRepository {
  final ParticipationApi _participationApi;

  OfflineFirstParticipationRepository({
    required ParticipationApi participationApi,
  }) : _participationApi = participationApi;

  @override
  Future<void> fetchParticipants(int scheduleId) async {
    return await _participationApi.fetchParticipants(scheduleId);
  }

  @override
  Future<void> participate(int scheduleId, int memberId) async {
    return await _participationApi.participate(scheduleId, memberId);
  }
}
