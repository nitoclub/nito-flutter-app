import 'package:core_data/core_data.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final recentScheduleProvider = FutureProvider.autoDispose((ref) async {
  final repository = ref.watch(scheduleRepositoryProvider);
  return await repository.fetchRecentSchedule();
});
