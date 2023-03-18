import 'package:feature_schedule/feature_schedule.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() {
  runApp(
    const ProviderScope(
      child: SchedulePageTest(),
    ),
  );
}

class SchedulePageTest extends HookConsumerWidget {
  const SchedulePageTest({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const MaterialApp(
      home: SchedulePage(),
    );
  }
}
