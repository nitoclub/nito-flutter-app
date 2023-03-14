import 'package:core_data/core_data.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final participateUseCaseProvider =
    FutureProvider.autoDispose<ParticipateUseCase>(
  (ref) async => ParticipateUseCase(
    memberRepository: ref.watch(memberRepositoryProvider),
    participationRepository: ref.watch(participationRepositoryProvider),
  ),
);

/// 指定した実施日に参加するユースケース
class ParticipateUseCase {
  final MemberRepository _memberRepository;
  final ParticipationRepository _participationRepository;

  ParticipateUseCase({
    required MemberRepository memberRepository,
    required ParticipationRepository participationRepository,
  })  : _memberRepository = memberRepository,
        _participationRepository = participationRepository;

  Future<void> call(int scheduleId) async {
    final member = await _memberRepository.fetchCurrentMember();
    await _participationRepository.participate(scheduleId, member.id);
  }
}
