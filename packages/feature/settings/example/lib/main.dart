import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:feature_settings/feature_settings.dart';

void main() {
  runApp(
    const ProviderScope(
      child: SettingsScreenTest(),
    ),
  );
}

class SettingsScreenTest extends HookConsumerWidget {
  const SettingsScreenTest({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const MaterialApp(
      home: SettingsScreen(),
    );
  }
}
