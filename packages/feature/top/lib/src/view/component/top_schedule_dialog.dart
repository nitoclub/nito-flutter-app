import 'package:core_data/core_data.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TopScheduleDialog extends HookConsumerWidget {
  const TopScheduleDialog({
    super.key,
    required String dateString,
    required int scheduleId,
  })  : _dateString = dateString,
        _scheduleId = scheduleId;

  final String _dateString;
  final int _scheduleId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final repository = ref.watch(participationRepositoryProvider);

    return AlertDialog(
      title: const Text('参加登録'),
      content: Text('$_dateStringの\nトランポリンに参加しますか？'),
      actions: <Widget>[
        // ボタン領域
        TextButton(
          child: const Text('キャンセル'),
          onPressed: () => Navigator.pop(context),
        ),
        TextButton(
          child: const Text('参加する'),
          onPressed: () async {
            await repository.insert(_scheduleId);
            if (context.mounted) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('$_dateStringに参加したよ！'),
                  duration: const Duration(seconds: 3),
                ),
              );
              Navigator.pop(context);
            }
          },
        ),
      ],
    );
  }
}
