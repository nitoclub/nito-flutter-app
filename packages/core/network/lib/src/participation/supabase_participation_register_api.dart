import 'package:core_model/core_model.dart';
import 'package:core_network/src/di/network_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final supabaseParticipationRegisterApi =
    FutureProvider.autoDispose.family<void, ParticipationRegisterArgs>(
  (ref, args) async {
    const table = 'participation';
    final supabaseClient = ref.watch(supabaseClientProvider);
    // 参加を登録する
    await supabaseClient.from(table).insert({
      "schedule_id": args.scheduleId,
      "member_id": args.memberId,
    });
  },
);
