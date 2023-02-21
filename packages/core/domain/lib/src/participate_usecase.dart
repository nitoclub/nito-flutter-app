import 'package:core_data/core_data.dart';

/// 特定の予定日に参加するユースケース
class ParticipateUseCase {
  final MemberRepository _memberRepository;
  final ParticipationRepository _participationRepository;

  ParticipateUseCase({
    required MemberRepository memberRepository,
    required ParticipationRepository participationRepository,
  })  : _memberRepository = memberRepository,
        _participationRepository = participationRepository;

  void call(int scheduleId) async {
    final currentMember = await _memberRepository.fetchCurrentMember();
    _participationRepository.participate(scheduleId, currentMember.id);
  }
}
