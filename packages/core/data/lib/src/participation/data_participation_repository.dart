import 'package:core_network/core_network.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final legacyParticipationRepositoryProvider =
    Provider((ref) => DataParticipationRepository(ref: ref));

class DataParticipationRepository {
  DataParticipationRepository({
    required Ref ref,
  }) : _ref = ref;

  final Ref _ref;

  /// 参加登録ぅ
  Future<void> insert(int scheduleId) async {
    await _ref.read(networkParticipationRegisterProvider(scheduleId).future);
  }
}
