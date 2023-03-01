import 'package:feature_top/src/view/component/top_schedule_list_tile.dart';
import 'package:feature_top/src/view/controller/top_schedule_list_provider.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TopScheduleList extends HookConsumerWidget {
  const TopScheduleList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncSchedule = ref.watch(topScheduleListProvider);

    return asyncSchedule.when(
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (err, stk) {
        return Center(
          child: IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: () => ref.refresh(topScheduleListProvider),
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
              return TopScheduleListTile(
                dateString: schedule[index].date,
                scheduleId: schedule[index].id,
                isNext: index == 0,
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
