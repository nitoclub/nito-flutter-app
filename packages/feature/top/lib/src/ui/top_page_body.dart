import 'package:feature_top/src/ui/top_page_schedule_tile.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class TopPageBody extends StatelessWidget {
  const TopPageBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const TopPageScheduleTile(),
        Align(
          alignment: Alignment.centerRight,
          child: TextButton(
            child: const Text('スケジュール一覧を見る'),
            onPressed: () => context.go('/schedule'),
          ),
        ),
        const Spacer(),
      ],
    );
  }
}
