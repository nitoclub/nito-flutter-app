import 'package:core_network/src/di/network_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// FIXME(Daichi): riverpod_generatorで引数を２つにする
final supabaseParticipationRegisterApi =
    FutureProvider.autoDispose.family<void, int>(
  (ref, scheduleId) async {
    const table = 'participation';
    final supabaseClient = ref.watch(supabaseClientProvider);
    // ログインユーザーのメンバー情報を取得
    final member = await ref.watch(networkMemberFetchProvider.future);
    // 参加を登録する
    await supabaseClient.from(table).insert({
      "schedule_id": scheduleId,
      "member_id": member.id,
    });
  },
);
