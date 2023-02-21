// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'network_member.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NetworkMember _$$_NetworkMemberFromJson(Map<String, dynamic> json) =>
    _$_NetworkMember(
      id: json['id'] as int,
      createdAt: json['created_at'] as String,
      updatedAt: json['updated_at'] as String,
      deletedAt: json['deleted_at'] as String?,
      uuid: json['uuid'] as String?,
      lineId: json['line_id'] as String?,
      nickname: json['nickname'] as String,
      role: json['role'] as String,
    );

Map<String, dynamic> _$$_NetworkMemberToJson(_$_NetworkMember instance) =>
    <String, dynamic>{
      'id': instance.id,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'deleted_at': instance.deletedAt,
      'uuid': instance.uuid,
      'line_id': instance.lineId,
      'nickname': instance.nickname,
      'role': instance.role,
    };
