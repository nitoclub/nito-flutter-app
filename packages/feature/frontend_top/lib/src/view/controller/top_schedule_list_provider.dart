import 'package:core_data/core_data.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final topScheduleListProvider = FutureProvider.autoDispose(
  (ref) async => ref.watch(scheduleRepositoryProvider).fetchSchedules(),
);
