import 'package:freezed_annotation/freezed_annotation.dart';

part 'schedule.freezed.dart';

@freezed
class Schedule with _$Schedule {
  const factory Schedule({
    required int id,
    required DateTime scheduledAt,
    required bool isFinished,
  }) = _Schedule;
}
