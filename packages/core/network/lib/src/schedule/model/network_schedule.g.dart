// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'network_schedule.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NetworkSchedule _$$_NetworkScheduleFromJson(Map<String, dynamic> json) =>
    _$_NetworkSchedule(
      id: json['id'] as int,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      deletedAt: json['deleted_at'] as String?,
      scheduledAt: json['scheduled_at'] as String,
    );

Map<String, dynamic> _$$_NetworkScheduleToJson(_$_NetworkSchedule instance) =>
    <String, dynamic>{
      'id': instance.id,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'deleted_at': instance.deletedAt,
      'scheduled_at': instance.scheduledAt,
    };
