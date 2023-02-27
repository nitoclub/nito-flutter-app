import 'package:core_data/core_data.dart';
import 'package:core_data/src/member/data_member_repository.dart';
import 'package:core_data/src/member/di/member_fetch_provider.dart';
import 'package:core_data/src/participation/data_participation_repository.dart';
import 'package:core_data/src/participation/di/participation_register_provider.dart';
import 'package:core_data/src/schedule/data_schedule_repository.dart';
import 'package:core_model/core_model.dart';
import 'package:core_network/core_network.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final Provider<ParticipationRepository> participationRepositoryProvider =
    Provider(
  (ref) => DataParticipationRepository(
    api: ref.read(participationApiProvider),
  ),
);

final Provider<MemberRepository> memberRepositoryProvider = Provider(
  (ref) => DataMemberRepository(
    api: ref.read(memberApiProvider),
  ),
);

final Provider<ScheduleRepository> scheduleRepositoryProvider = Provider(
  (ref) => DataScheduleRepository(
    api: ref.read(scheduleApiProvider),
  ),
);

final supabaseOverrideProvider = <Override>[
  memberFetchProvider.overrideWith(
    (ref) async {
      final data = await ref.watch(supabaseMemberFetchApi.future);
      return Member(
        id: data.id,
        nickname: data.nickname,
      );
    },
  ),
  participationRegisterProvider.overrideWith(
    (ref, arg) => ref.watch(supabaseParticipationRegisterApi(arg)),
  ),
];
