import 'package:freezed_annotation/freezed_annotation.dart';

part 'network_schedule.freezed.dart';
part 'network_schedule.g.dart';

@freezed
class NetworkSchedule with _$NetworkSchedule {
  const factory NetworkSchedule({
    required int id,
    @JsonKey(name: NetworkScheduleFields.createdAt) String? createdAt,
    @JsonKey(name: NetworkScheduleFields.updatedAt) String? updatedAt,
    @JsonKey(name: NetworkScheduleFields.deletedAt) String? deletedAt,
    @JsonKey(name: NetworkScheduleFields.scheduledAt)
        required String scheduledAt,
  }) = _NetworkSchedule;

  factory NetworkSchedule.fromJson(Map<String, dynamic> json) =>
      _$NetworkScheduleFromJson(json);
}

mixin NetworkScheduleFields {
  static const id = 'id';
  static const createdAt = 'created_at';
  static const updatedAt = 'updated_at';
  static const deletedAt = 'deleted_at';
  static const scheduledAt = 'scheduled_at';
}
