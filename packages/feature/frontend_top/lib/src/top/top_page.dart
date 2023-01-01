import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:feature_frontend_top/src/top/top_page_controller.dart';
import 'package:core_styleguide/core_styleguide.dart';

class TopPage extends HookConsumerWidget {
  const TopPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(topPageController);
    final controller = ref.watch(topPageController.notifier);

    return NitoScaffold(
      appBar: NitoAppBar(
        title: const Text('NITO'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 12),
        children: const [
          Text('トップページ'),
          SizedBox(height: 16),
        ],
      ),
    );
  }
}
