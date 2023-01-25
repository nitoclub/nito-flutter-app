import 'package:flutter/material.dart';

class TopScheduleListTile extends StatelessWidget {
  const TopScheduleListTile({
    super.key,
    required this.dateString,
    required this.isNext,
  });

  final String dateString;
  final bool isNext;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: isNext
          ? const Icon(Icons.schedule)
          : const Icon(Icons.history_toggle_off),
      title: Text(
        dateString,
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
