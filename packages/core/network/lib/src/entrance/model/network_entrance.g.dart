// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'network_entrance.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NetworkEntrance _$$_NetworkEntranceFromJson(Map<String, dynamic> json) =>
    _$_NetworkEntrance(
      id: json['id'] as String,
      nickname: json['nickname'] as String,
      email: json['email'] as String,
      approvedAt: json['approved_at'] as String?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      deletedAt: json['deleted_at'] as String?,
    );

Map<String, dynamic> _$$_NetworkEntranceToJson(_$_NetworkEntrance instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nickname': instance.nickname,
      'email': instance.email,
      'approved_at': instance.approvedAt,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'deleted_at': instance.deletedAt,
    };
