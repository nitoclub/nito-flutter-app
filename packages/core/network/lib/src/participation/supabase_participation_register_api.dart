import 'package:core_network/src/di/network_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'supabase_participation_register_api.g.dart';

@riverpod
Future<void> supabaseParticipationRegisterApi(
    SupabaseParticipationRegisterApiRef ref, {
      required int scheduleId,
      required int memberId,
}) async {
  const table = 'participation';
  final supabaseClient = ref.watch(supabaseClientProvider);
  // 参加を登録する
  await supabaseClient.from(table).insert({
    "schedule_id": scheduleId,
    "member_id": memberId,
  });
}
