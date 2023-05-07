import 'package:core_model/core_model.dart';
import 'package:core_styleguide/core_styleguide.dart';
import 'package:core_ui/core_ui.dart';
import 'package:feature_schedule/src/provider/scheduleListProvider.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ScheduleList extends HookConsumerWidget {
  const ScheduleList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncScheduleList = ref.watch(scheduleListProvider);
    final datetimeFormatter = ref.read(defaultDateTimeFormatProvider);

    return asyncScheduleList.when(
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (err, stk) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('エラーが発生しました'),
            Text(err.toString()),
            Center(
              child: IconButton(
                icon: const Icon(Icons.refresh),
                onPressed: () => ref.refresh(scheduleListProvider),
              ),
            ),
          ],
        );
      },
      data: (schedule) {
        // FIXME(Daichi): 引っ張り更新を可能にする
        return ListView.separated(
          physics: const AlwaysScrollableScrollPhysics(),
          padding: const EdgeInsets.all(Space.x2),
          itemCount: schedule.length,
          itemBuilder: (BuildContext context, int index) {
            return ScheduleCard(
              schedule: schedule[index],
              datetimeFormatter: datetimeFormatter,
              onSchedulePressed: (Schedule schedule) {
                // TODO: 詳細画面へ遷移する
              },
              onParticipatePressed: (Schedule schedule) {
                // TODO: 参加するボタンを押したときの処理を書く
              },
            );
          },
          separatorBuilder: (BuildContext context, int index) {
            return const SizedBox(height: Space.x2);
          },
        );
      },
    );
  }
}
