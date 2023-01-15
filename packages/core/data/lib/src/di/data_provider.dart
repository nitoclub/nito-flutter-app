import 'package:core_data/core_data.dart';
import 'package:core_data/src/repository/data_participation_repository.dart';
import 'package:core_data/src/schedule/data_schedule_repository.dart';
import 'package:core_network/core_network.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final Provider<ParticipationRepository> participationRepositoryProvider =
    Provider(
  (ref) => DataParticipationRepository(
    api: ref.read(participationApiProvider),
  ),
);

final Provider<ScheduleRepository> scheduleRepositoryProvider = Provider(
  (ref) => DataScheduleRepository(
    api: ref.read(scheduleApiProvider),
  ),
);
