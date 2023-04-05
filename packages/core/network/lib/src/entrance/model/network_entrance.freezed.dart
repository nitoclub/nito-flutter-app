// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'network_entrance.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NetworkEntrance _$NetworkEntranceFromJson(Map<String, dynamic> json) {
  return _NetworkEntrance.fromJson(json);
}

/// @nodoc
mixin _$NetworkEntrance {
  String get id => throw _privateConstructorUsedError;
  String get nickname => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  @JsonKey(name: NetworkEntranceFields.approvedAt)
  String? get approvedAt => throw _privateConstructorUsedError;
  @JsonKey(name: NetworkEntranceFields.createdAt)
  String get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: NetworkEntranceFields.updatedAt)
  String get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: NetworkEntranceFields.deletedAt)
  String? get deletedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NetworkEntranceCopyWith<NetworkEntrance> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NetworkEntranceCopyWith<$Res> {
  factory $NetworkEntranceCopyWith(
          NetworkEntrance value, $Res Function(NetworkEntrance) then) =
      _$NetworkEntranceCopyWithImpl<$Res, NetworkEntrance>;
  @useResult
  $Res call(
      {String id,
      String nickname,
      String email,
      @JsonKey(name: NetworkEntranceFields.approvedAt) String? approvedAt,
      @JsonKey(name: NetworkEntranceFields.createdAt) String createdAt,
      @JsonKey(name: NetworkEntranceFields.updatedAt) String updatedAt,
      @JsonKey(name: NetworkEntranceFields.deletedAt) String? deletedAt});
}

/// @nodoc
class _$NetworkEntranceCopyWithImpl<$Res, $Val extends NetworkEntrance>
    implements $NetworkEntranceCopyWith<$Res> {
  _$NetworkEntranceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? nickname = null,
    Object? email = null,
    Object? approvedAt = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? deletedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      nickname: null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      approvedAt: freezed == approvedAt
          ? _value.approvedAt
          : approvedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      deletedAt: freezed == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NetworkEntranceCopyWith<$Res>
    implements $NetworkEntranceCopyWith<$Res> {
  factory _$$_NetworkEntranceCopyWith(
          _$_NetworkEntrance value, $Res Function(_$_NetworkEntrance) then) =
      __$$_NetworkEntranceCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String nickname,
      String email,
      @JsonKey(name: NetworkEntranceFields.approvedAt) String? approvedAt,
      @JsonKey(name: NetworkEntranceFields.createdAt) String createdAt,
      @JsonKey(name: NetworkEntranceFields.updatedAt) String updatedAt,
      @JsonKey(name: NetworkEntranceFields.deletedAt) String? deletedAt});
}

/// @nodoc
class __$$_NetworkEntranceCopyWithImpl<$Res>
    extends _$NetworkEntranceCopyWithImpl<$Res, _$_NetworkEntrance>
    implements _$$_NetworkEntranceCopyWith<$Res> {
  __$$_NetworkEntranceCopyWithImpl(
      _$_NetworkEntrance _value, $Res Function(_$_NetworkEntrance) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? nickname = null,
    Object? email = null,
    Object? approvedAt = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? deletedAt = freezed,
  }) {
    return _then(_$_NetworkEntrance(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      nickname: null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      approvedAt: freezed == approvedAt
          ? _value.approvedAt
          : approvedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      deletedAt: freezed == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NetworkEntrance implements _NetworkEntrance {
  const _$_NetworkEntrance(
      {required this.id,
      required this.nickname,
      required this.email,
      @JsonKey(name: NetworkEntranceFields.approvedAt) this.approvedAt,
      @JsonKey(name: NetworkEntranceFields.createdAt) required this.createdAt,
      @JsonKey(name: NetworkEntranceFields.updatedAt) required this.updatedAt,
      @JsonKey(name: NetworkEntranceFields.deletedAt) this.deletedAt});

  factory _$_NetworkEntrance.fromJson(Map<String, dynamic> json) =>
      _$$_NetworkEntranceFromJson(json);

  @override
  final String id;
  @override
  final String nickname;
  @override
  final String email;
  @override
  @JsonKey(name: NetworkEntranceFields.approvedAt)
  final String? approvedAt;
  @override
  @JsonKey(name: NetworkEntranceFields.createdAt)
  final String createdAt;
  @override
  @JsonKey(name: NetworkEntranceFields.updatedAt)
  final String updatedAt;
  @override
  @JsonKey(name: NetworkEntranceFields.deletedAt)
  final String? deletedAt;

  @override
  String toString() {
    return 'NetworkEntrance(id: $id, nickname: $nickname, email: $email, approvedAt: $approvedAt, createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NetworkEntrance &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.nickname, nickname) ||
                other.nickname == nickname) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.approvedAt, approvedAt) ||
                other.approvedAt == approvedAt) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.deletedAt, deletedAt) ||
                other.deletedAt == deletedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, nickname, email, approvedAt,
      createdAt, updatedAt, deletedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NetworkEntranceCopyWith<_$_NetworkEntrance> get copyWith =>
      __$$_NetworkEntranceCopyWithImpl<_$_NetworkEntrance>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NetworkEntranceToJson(
      this,
    );
  }
}

abstract class _NetworkEntrance implements NetworkEntrance {
  const factory _NetworkEntrance(
      {required final String id,
      required final String nickname,
      required final String email,
      @JsonKey(name: NetworkEntranceFields.approvedAt)
          final String? approvedAt,
      @JsonKey(name: NetworkEntranceFields.createdAt)
          required final String createdAt,
      @JsonKey(name: NetworkEntranceFields.updatedAt)
          required final String updatedAt,
      @JsonKey(name: NetworkEntranceFields.deletedAt)
          final String? deletedAt}) = _$_NetworkEntrance;

  factory _NetworkEntrance.fromJson(Map<String, dynamic> json) =
      _$_NetworkEntrance.fromJson;

  @override
  String get id;
  @override
  String get nickname;
  @override
  String get email;
  @override
  @JsonKey(name: NetworkEntranceFields.approvedAt)
  String? get approvedAt;
  @override
  @JsonKey(name: NetworkEntranceFields.createdAt)
  String get createdAt;
  @override
  @JsonKey(name: NetworkEntranceFields.updatedAt)
  String get updatedAt;
  @override
  @JsonKey(name: NetworkEntranceFields.deletedAt)
  String? get deletedAt;
  @override
  @JsonKey(ignore: true)
  _$$_NetworkEntranceCopyWith<_$_NetworkEntrance> get copyWith =>
      throw _privateConstructorUsedError;
}
