import 'package:feature_top/src/ui/top_schedule_dialog.dart';
import 'package:flutter/material.dart';

class TopScheduleListTile extends StatelessWidget {
  const TopScheduleListTile({
    super.key,
    required String dateString,
    required int scheduleId,
    required bool isNext,
  })  : _dateString = dateString,
        _scheduleId = scheduleId,
        _isNext = isNext;

  final String _dateString;
  final int _scheduleId;
  final bool _isNext;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: _isNext
          ? const Icon(Icons.schedule)
          : const Icon(Icons.history_toggle_off),
      title: Text(
        _dateString,
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
      trailing: IconButton(
        icon: const Icon(Icons.keyboard_arrow_right),
        onPressed: () async => showDialog(
          context: context,
          builder: (_) {
            return TopScheduleDialog(
              dateString: _dateString,
              scheduleId: _scheduleId,
            );
          },
        ),
      ),
    );
  }
}
