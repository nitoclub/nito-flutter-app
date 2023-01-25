import 'package:feature_frontend_top/src/view/component/top_scedule_list.dart';
import 'package:flutter/material.dart';

class TopPageForMobile extends StatelessWidget {
  const TopPageForMobile({super.key});

  @override
  Widget build(BuildContext context) {
    // MEMO: styleGuide側で共通のScaffoldにしてもいい
    return Scaffold(
      // TODO(Daichi): Themeでスタイルを決める
      appBar: AppBar(
        // TODO(Daichi): l10nに修正
        title: const Text('今後のスケジュール'),
        backgroundColor: Colors.blueAccent,
      ),
      body: const TopScheduleList(),
    );
  }
}
