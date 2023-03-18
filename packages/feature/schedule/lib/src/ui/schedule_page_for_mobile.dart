import 'package:feature_schedule/src/ui/schedule_list.dart';
import 'package:flutter/material.dart';

class SchedulePageForMobile extends StatelessWidget {
  const SchedulePageForMobile({super.key});

  @override
  Widget build(BuildContext context) {
    // MEMO: styleGuide側で共通のScaffoldにしてもいい
    return Scaffold(
      // TODO(Daichi): Themeでスタイルを決める
      appBar: AppBar(
        // TODO(Daichi): l10nに修正
        title: const Text('スケジュール一覧'),
      ),
      body: const ScheduleList(),
    );
  }
}
