import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:core_network/core_network.dart';
import 'package:core_network/src/member/supabase_member_fetch_api.dart';
import 'package:core_network/src/participation/supabase_participation_register_api.dart';

final supabaseOverrideNetworkProvider = <Override>[
  networkMemberFetchProvider.overrideWith(
    (ref) async => await ref.watch(supabaseMemberFetchApi.future),
  ),
  networkParticipationRegisterProvider.overrideWith(
    (ref, scheduleId) async =>
        await ref.watch(supabaseParticipationRegisterApi(scheduleId).future),
  ),
];
