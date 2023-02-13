import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:feature_top/feature_top.dart';

void main() {
  runApp(const TopPageTest());
}

class TopPageTest extends HookConsumerWidget {
  const TopPageTest({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const MaterialApp(
      home: TopPage(),
    );
  }
}
