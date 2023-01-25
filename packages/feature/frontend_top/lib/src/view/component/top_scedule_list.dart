import 'package:feature_frontend_top/src/repository/schedule_list_repository.dart';
import 'package:feature_frontend_top/src/view/component/top_schedule_list_tile.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TopScheduleList extends HookConsumerWidget {
  const TopScheduleList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncData = ref.watch(scheduleListGetRepository);

    return asyncData.when(
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (err, stk) {
        return Center(
          child: IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: () => ref.refresh(scheduleListGetRepository),
          ),
        );
      },
      data: (data) {
        // FIXME(Daichi): 引っ張り更新を可能にする
        return Padding(
          padding: const EdgeInsets.all(10),
          child: ListView.separated(
            physics: const AlwaysScrollableScrollPhysics(),
            itemCount: data.length,
            itemBuilder: (BuildContext context, int index) {
              return TopScheduleListTile(
                dateString: data[index].date,
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
