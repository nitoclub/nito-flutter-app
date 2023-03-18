import 'package:core_data/core_data.dart';
import 'package:core_model/core_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final scheduleListProvider =
    FutureProvider.autoDispose<List<Schedule>>((ref) async {
  final repository = ref.watch(scheduleRepositoryProvider);
  return await repository.fetchSchedules();
});
