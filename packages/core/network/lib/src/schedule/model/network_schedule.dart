import 'package:freezed_annotation/freezed_annotation.dart';

part 'network_schedule.freezed.dart';
part 'network_schedule.g.dart';

@freezed
class NetworkSchedule with _$NetworkSchedule {
  const factory NetworkSchedule({
    required int id,
    required String date,
    @JsonKey(name: NetworkScheduleFields.createdAt) String? createdAt,
    @JsonKey(name: NetworkScheduleFields.updatedAt) String? updatedAt,
    @JsonKey(name: NetworkScheduleFields.deletedAt) String? deletedAt,
  }) = _NetworkSchedule;

  factory NetworkSchedule.fromJson(Map<String, dynamic> json) =>
      _$NetworkScheduleFromJson(json);
}

mixin NetworkScheduleFields {
  static const id = 'id';
  static const date = 'date';
  static const createdAt = 'created_at';
  static const updatedAt = 'updated_at';
  static const deletedAt = 'deleted_at';
}
