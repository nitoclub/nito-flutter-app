import 'package:freezed_annotation/freezed_annotation.dart';

part 'network_entrance.freezed.dart';
part 'network_entrance.g.dart';

@freezed
class NetworkEntrance with _$NetworkEntrance {
  const factory NetworkEntrance({
    required String id,
    required String nickname,
    required String email,
    @JsonKey(name: NetworkEntranceFields.approvedAt) String? approvedAt,
    @JsonKey(name: NetworkEntranceFields.createdAt) required String createdAt,
    @JsonKey(name: NetworkEntranceFields.updatedAt) required String updatedAt,
    @JsonKey(name: NetworkEntranceFields.deletedAt) String? deletedAt,
  }) = _NetworkEntrance;

  factory NetworkEntrance.fromJson(Map<String, dynamic> json) =>
      _$NetworkEntranceFromJson(json);
}

mixin NetworkEntranceFields {
  static const id = 'id';
  static const nickname = 'nickname';
  static const email = 'email';
  static const approvedAt = 'approved_at';
  static const createdAt = 'created_at';
  static const updatedAt = 'updated_at';
  static const deletedAt = 'deleted_at';
}
