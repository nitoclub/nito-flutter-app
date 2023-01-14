import 'package:core_data/core_data.dart';

/// 特定の予定日に参加するユースケース
class ParticipateUseCase {
  final ParticipationRepository _participationRepository;

  ParticipateUseCase({required ParticipationRepository participationRepository})
      : _participationRepository = participationRepository;
}
