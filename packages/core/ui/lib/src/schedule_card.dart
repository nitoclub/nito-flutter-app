import 'package:core_model/core_model.dart';
import 'package:core_styleguide/core_styleguide.dart';
import 'package:core_ui/core_ui.dart';
import 'package:flutter/material.dart';

/// スケジュールのカードアイテム
class ScheduleCard extends StatelessWidget {
  const ScheduleCard({
    super.key,
    required Schedule schedule,
    required void Function(Schedule) onSchedulePressed,
    required void Function(Schedule) onParticipatePressed,
  })  : _schedule = schedule,
        _onSchedulePressed = onSchedulePressed,
        _onParticipatePressed = onParticipatePressed;

  final Schedule _schedule;
  final void Function(Schedule) _onSchedulePressed;
  final void Function(Schedule) _onParticipatePressed;

  @override
  Widget build(BuildContext context) {
    return NitoCard(
      onTap: () => _onSchedulePressed(_schedule),
      child: ConstrainedBox(
        constraints: const BoxConstraints(
          minHeight: 80,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Icon(Icons.schedule),
                    const SizedBox(width: Space.x2),
                    Text(
                      _schedule.date,
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                  ],
                ),
              ],
            ),
            if (!_schedule.isFinished)
              TextButton(
                onPressed: () => _onParticipatePressed(_schedule),
                child: const Text('参加する'),
              ),
          ],
        ),
      ),
    );
  }
}
