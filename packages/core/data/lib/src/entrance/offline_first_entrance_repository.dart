import 'package:core_data/src/entrance/entrance_repository.dart';
import 'package:core_network/core_network.dart';

final offlineFirstEntranceRepositoryProvider =
    entranceRepositoryProvider.overrideWith(
  (ref) => OfflineFirstEntranceRepository(
    entranceApi: ref.watch(entranceApiProvider),
  ),
);

/// 仮登録のデータ操作リポジトリ
class OfflineFirstEntranceRepository implements EntranceRepository {
  OfflineFirstEntranceRepository({
    required EntranceApi entranceApi,
  }) : _entranceApi = entranceApi;

  final EntranceApi _entranceApi;

  @override
  Future<void> register(String nickname, String email) async {
    return await _entranceApi.register(nickname, email);
  }
}
