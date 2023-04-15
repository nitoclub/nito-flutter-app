import 'package:core_data/src/entrance/entrance_repository.dart';
import 'package:core_network/core_network.dart';

final offlineFirstEntranceRepositoryProvider =
    entranceRepositoryProvider.overrideWith(
  (ref) => OfflineFirstEntranceRepository(
    participationApi: ref.watch(entranceApiProvider),
  ),
);

/// 仮登録のデータ操作リポジトリ
class OfflineFirstEntranceRepository implements EntranceRepository {
  OfflineFirstEntranceRepository({
    required EntranceApi participationApi,
  }) : _participationApi = participationApi;

  final EntranceApi _participationApi;

  @override
  Future<void> register(String nickname, String email) async {
    return await _participationApi.register(nickname, email);
  }
}
