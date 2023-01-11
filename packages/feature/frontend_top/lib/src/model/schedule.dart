import 'package:freezed_annotation/freezed_annotation.dart';

part 'schedule.freezed.dart';
part 'schedule.g.dart';

@freezed
class Schedule with _$Schedule {
  const factory Schedule({
    required int id,
    required String date,
    @JsonKey(name: ScheduleFields.createdAt) String? createdAt,
    @JsonKey(name: ScheduleFields.updatedAt) String? updatedAt,
    @JsonKey(name: ScheduleFields.deletedAt) String? deletedAt,
  }) = _Schedule;

  factory Schedule.fromJson(Map<String, dynamic> json) =>
      _$ScheduleFromJson(json);
}

mixin ScheduleFields {
  static const id = 'id';
  static const date = 'date';
  static const createdAt = 'created_at';
  static const updatedAt = 'updated_at';
  static const deletedAt = 'deleted_at';
}
