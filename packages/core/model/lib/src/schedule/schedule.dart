import 'package:freezed_annotation/freezed_annotation.dart';

part 'schedule.freezed.dart';

@freezed
class Schedule with _$Schedule {
  const factory Schedule({
    required String date,
  }) = _Schedule;
}

mixin ScheduleFields {
  static const date = 'date';
}
