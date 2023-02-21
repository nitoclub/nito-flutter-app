import 'package:core_data/core_data.dart';
import 'package:core_domain/core_domain.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// FetchParticipationSchedulesUseCase
final Provider<FetchParticipationSchedulesUseCase>
    fetchParticipationSchedulesUseCaseProvider = Provider(
  (ref) => FetchParticipationSchedulesUseCase(
    scheduleRepository: ref.read(scheduleRepositoryProvider),
    participationRepository: ref.read(participationRepositoryProvider),
  ),
);

/// ParticipateUseCase
final Provider<ParticipateUseCase> participateUseCase = Provider(
  (ref) => ParticipateUseCase(
    memberRepository: ref.read(memberRepositoryProvider),
    participationRepository: ref.read(participationRepositoryProvider),
  ),
);
