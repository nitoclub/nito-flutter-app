import 'package:feature_top/src/ui/top_page_schedule_tile.dart';
import 'package:flutter/material.dart';

class TopPageBody extends StatelessWidget {
  const TopPageBody({
    super.key,
    required VoidCallback onScheduleListButtonPressed,
  }) : _onScheduleListButtonPressed = onScheduleListButtonPressed;

  final VoidCallback _onScheduleListButtonPressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const TopPageScheduleTile(),
        Align(
          alignment: Alignment.centerRight,
          child: TextButton(
            onPressed: _onScheduleListButtonPressed,
            child: const Text('スケジュール一覧を見る'),
          ),
        ),
        const Spacer(),
      ],
    );
  }
}
