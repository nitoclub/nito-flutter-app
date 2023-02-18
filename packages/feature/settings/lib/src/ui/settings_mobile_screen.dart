import 'package:flutter/material.dart';

class SettingsMobileScreen extends StatelessWidget {
  const SettingsMobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // MEMO: styleGuide側で共通のScaffoldにしてもいい
    return Scaffold(
      // TODO(Daichi): Themeでスタイルを決める
      appBar: AppBar(
        // TODO(Daichi): l10nに修正
        title: const Text('設定'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Column(
        children: const [
          Text('')
        ],
      ),
    );
  }
}
