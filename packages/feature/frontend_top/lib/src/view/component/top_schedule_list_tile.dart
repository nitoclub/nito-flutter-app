import 'package:flutter/material.dart';

class TopScheduleListTile extends StatelessWidget {
  const TopScheduleListTile({
    super.key,
    required String dateString,
    required bool isNext,
  })  : _dateString = dateString,
        _isNext = isNext;

  final String _dateString;
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
    );
  }
}
