import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'entrance_repository.g.dart';

/// 仮登録リポジトリ
abstract class EntranceRepository {
  /// 仮登録を行う
  Future<void> register(String nickname, String email);
}

@riverpod
EntranceRepository entranceRepository(EntranceRepositoryRef ref) =>
    throw UnimplementedError();
