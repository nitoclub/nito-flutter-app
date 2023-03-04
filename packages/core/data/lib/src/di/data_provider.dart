import 'package:core_data/core_data.dart';
import 'package:core_data/src/schedule/offline_first_schedule_repository.dart';
import 'package:core_network/core_network.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

@Deprecated("Use `scheduleRepositoryProvider`.")
final Provider<ScheduleRepository> legacyScheduleRepositoryProvider = Provider(
  (ref) => OfflineFirstScheduleRepository(
    api: ref.read(legacyScheduleApiProvider),
  ),
);
