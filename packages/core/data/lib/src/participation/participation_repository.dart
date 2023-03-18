import 'package:hooks_riverpod/hooks_riverpod.dart';

final participationRepositoryProvider =
    Provider.autoDispose<ParticipationRepository>(
  (ref) => throw UnimplementedError(),
);

/// 参加情報リポジトリ
abstract class ParticipationRepository {
  /// 参加者一覧を取得する
  Future<void> fetchParticipants(int scheduleId);

  /// 該当の予定日に参加する
  Future<void> participate(int scheduleId, int memberId);
}
