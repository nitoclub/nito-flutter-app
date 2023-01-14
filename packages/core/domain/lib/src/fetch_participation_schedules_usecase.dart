import 'package:core_data/core_data.dart';

/// 予定日と参加者情報を併せて取得するユースケース
class FetchParticipationSchedulesUseCase {
  final ScheduleRepository _scheduleRepository;
  final ParticipationRepository _participationRepository;

  FetchParticipationSchedulesUseCase(
      {required ScheduleRepository scheduleRepository,
      required ParticipationRepository participationRepository})
      : _scheduleRepository = scheduleRepository,
        _participationRepository = participationRepository;
}
