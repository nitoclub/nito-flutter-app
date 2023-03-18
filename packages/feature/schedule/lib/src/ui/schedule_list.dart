import 'package:feature_schedule/src/provider/scheduleListProvider.dart';
import 'package:feature_schedule/src/ui/schedule_card.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ScheduleList extends HookConsumerWidget {
  const ScheduleList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncScheduleList = ref.watch(scheduleListProvider);

    return asyncScheduleList.when(
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (err, stk) {
        return Center(
          child: IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: () => ref.refresh(scheduleListProvider),
          ),
        );
      },
      data: (schedule) {
        // FIXME(Daichi): 引っ張り更新を可能にする
        return Padding(
          padding: const EdgeInsets.all(10),
          child: ListView.separated(
            physics: const AlwaysScrollableScrollPhysics(),
            itemCount: schedule.length,
            itemBuilder: (BuildContext context, int index) {
              return ScheduleCard(
                dateString: schedule[index].date,
                isFuture: DateTime.parse(schedule[index].date)
                    .isAfter(DateTime.now()),
              );
            },
            separatorBuilder: (BuildContext context, int index) {
              return const SizedBox(height: 10);
            },
          ),
        );
      },
    );
  }
}
