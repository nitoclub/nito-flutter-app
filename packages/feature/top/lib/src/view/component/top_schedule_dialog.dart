import 'package:core_data/core_data.dart';
import 'package:core_model/core_model.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TopScheduleDialog extends HookConsumerWidget {
  const TopScheduleDialog({
    super.key,
    required String dateString,
    required int scheduleId,
    required int memberId,
  })  : _dateString = dateString,
        _scheduleId = scheduleId,
        _memberId = memberId;

  final String _dateString;
  final int _scheduleId;
  final int _memberId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
            await ref.watch(
              participationRegisterProvider(
                ParticipationRegisterArgs(
                  scheduleId: _scheduleId,
                  memberId: _memberId,
                ),
              ).future,
            );
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
