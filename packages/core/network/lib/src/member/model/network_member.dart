import 'package:freezed_annotation/freezed_annotation.dart';

part 'network_member.freezed.dart';
part 'network_member.g.dart';

@freezed
class NetworkMember with _$NetworkMember {
  const factory NetworkMember({
    required int id,
    @JsonKey(name: NetworkMemberFields.createdAt) required String createdAt,
    @JsonKey(name: NetworkMemberFields.updatedAt) required String updatedAt,
    @JsonKey(name: NetworkMemberFields.deletedAt) String? deletedAt,
    @JsonKey(name: NetworkMemberFields.uuid) String? uuid,
    @JsonKey(name: NetworkMemberFields.lineId) String? lineId,
    @JsonKey(name: NetworkMemberFields.nickname) required String nickname,
    @JsonKey(name: NetworkMemberFields.role) required String role,
  }) = _NetworkMember;

  factory NetworkMember.fromJson(Map<String, dynamic> json) =>
      _$NetworkMemberFromJson(json);
}

mixin NetworkMemberFields {
  static const id = 'id';
  static const createdAt = 'created_at';
  static const updatedAt = 'updated_at';
  static const deletedAt = 'deleted_at';
  static const uuid = 'uuid';
  static const lineId = 'line_id';
  static const nickname = 'nickname';
  static const role = 'role';
}
