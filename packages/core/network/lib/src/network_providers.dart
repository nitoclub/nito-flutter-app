import 'package:core_network/core_network.dart';
import 'package:core_network/src/auth/supabase_auth_api.dart';
import 'package:core_network/src/member/supabase_member_api.dart';
import 'package:core_network/src/member/supabase_member_fetch_api.dart';
import 'package:core_network/src/participation/supabase_participation_api.dart';
import 'package:core_network/src/participation/supabase_participation_register_api.dart';
import 'package:core_network/src/schedule/supabase_schedule_api.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// NetworkProviders
final networkProviders = <Override>[
  ...supabaseApiProviders,
];

/// Supabase
final supabaseApiProviders = <Override>[
  networkParticipationRegisterProvider.overrideWith((ref) async {
    // memberIdを取得
    final memberId = await ref.watch(
        supabaseMemberFetchApiProvider.selectAsync((member) => member.id));
    // schduleIdを取得
    final scheduleId = ref.watch(networkScheduleIdForParticipationProvider);
    await ref.watch(supabaseParticipationRegisterApiProvider(
            memberId: memberId, scheduleId: scheduleId)
        .future);
  }),
  supabaseAuthApiProvider,
  supabaseMemberApiProvider,
  supabaseParticipationApiProvider,
  supabaseScheduleApiProvider,
];
