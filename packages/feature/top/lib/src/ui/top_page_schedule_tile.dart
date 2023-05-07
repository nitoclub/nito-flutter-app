import 'package:core_styleguide/core_styleguide.dart';
import 'package:feature_top/src/provider/recent_schedule_provider.dart';
import 'package:feature_top/src/ui/top_schedule_dialog.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TopPageScheduleTile extends HookConsumerWidget {
  const TopPageScheduleTile({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncSchedule = ref.watch(recentScheduleProvider);
    final datetimeFormatter = ref.read(defaultDateTimeFormatProvider);

    return asyncSchedule.when(
      loading: () => const Center(
        child: CircularProgressIndicator(),
      ),
      error: (err, stack) {
        return Center(
          child: IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: () => ref.refresh(recentScheduleProvider),
          ),
        );
      },
      data: (schedule) {
        return ListTile(
          leading: const Icon(Icons.schedule),
          title: Text(
            schedule != null
                ? datetimeFormatter.format(schedule.scheduledAt)
                : '',
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          trailing: IconButton(
            icon: const Icon(Icons.keyboard_arrow_right),
            onPressed: () async => showDialog(
              context: context,
              builder: (_) {
                return TopScheduleDialog(
                  dateString: schedule != null
                      ? datetimeFormatter.format(schedule.scheduledAt)
                      : '',
                  scheduleId: schedule?.id ?? 0,
                );
              },
            ),
          ),
        );
      },
    );
  }
}
