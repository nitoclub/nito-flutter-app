// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'network_schedule.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NetworkSchedule _$NetworkScheduleFromJson(Map<String, dynamic> json) {
  return _NetworkSchedule.fromJson(json);
}

/// @nodoc
mixin _$NetworkSchedule {
  int get id => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;
  @JsonKey(name: NetworkScheduleFields.createdAt)
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: NetworkScheduleFields.updatedAt)
  String? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: NetworkScheduleFields.deletedAt)
  String? get deletedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NetworkScheduleCopyWith<NetworkSchedule> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NetworkScheduleCopyWith<$Res> {
  factory $NetworkScheduleCopyWith(
          NetworkSchedule value, $Res Function(NetworkSchedule) then) =
      _$NetworkScheduleCopyWithImpl<$Res, NetworkSchedule>;
  @useResult
  $Res call(
      {int id,
      String date,
      @JsonKey(name: NetworkScheduleFields.createdAt) String? createdAt,
      @JsonKey(name: NetworkScheduleFields.updatedAt) String? updatedAt,
      @JsonKey(name: NetworkScheduleFields.deletedAt) String? deletedAt});
}

/// @nodoc
class _$NetworkScheduleCopyWithImpl<$Res, $Val extends NetworkSchedule>
    implements $NetworkScheduleCopyWith<$Res> {
  _$NetworkScheduleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? date = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? deletedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      deletedAt: freezed == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NetworkScheduleCopyWith<$Res>
    implements $NetworkScheduleCopyWith<$Res> {
  factory _$$_NetworkScheduleCopyWith(
          _$_NetworkSchedule value, $Res Function(_$_NetworkSchedule) then) =
      __$$_NetworkScheduleCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String date,
      @JsonKey(name: NetworkScheduleFields.createdAt) String? createdAt,
      @JsonKey(name: NetworkScheduleFields.updatedAt) String? updatedAt,
      @JsonKey(name: NetworkScheduleFields.deletedAt) String? deletedAt});
}

/// @nodoc
class __$$_NetworkScheduleCopyWithImpl<$Res>
    extends _$NetworkScheduleCopyWithImpl<$Res, _$_NetworkSchedule>
    implements _$$_NetworkScheduleCopyWith<$Res> {
  __$$_NetworkScheduleCopyWithImpl(
      _$_NetworkSchedule _value, $Res Function(_$_NetworkSchedule) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? date = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? deletedAt = freezed,
  }) {
    return _then(_$_NetworkSchedule(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      deletedAt: freezed == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NetworkSchedule implements _NetworkSchedule {
  const _$_NetworkSchedule(
      {required this.id,
      required this.date,
      @JsonKey(name: NetworkScheduleFields.createdAt) this.createdAt,
      @JsonKey(name: NetworkScheduleFields.updatedAt) this.updatedAt,
      @JsonKey(name: NetworkScheduleFields.deletedAt) this.deletedAt});

  factory _$_NetworkSchedule.fromJson(Map<String, dynamic> json) =>
      _$$_NetworkScheduleFromJson(json);

  @override
  final int id;
  @override
  final String date;
  @override
  @JsonKey(name: NetworkScheduleFields.createdAt)
  final String? createdAt;
  @override
  @JsonKey(name: NetworkScheduleFields.updatedAt)
  final String? updatedAt;
  @override
  @JsonKey(name: NetworkScheduleFields.deletedAt)
  final String? deletedAt;

  @override
  String toString() {
    return 'NetworkSchedule(id: $id, date: $date, createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NetworkSchedule &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.deletedAt, deletedAt) ||
                other.deletedAt == deletedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, date, createdAt, updatedAt, deletedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NetworkScheduleCopyWith<_$_NetworkSchedule> get copyWith =>
      __$$_NetworkScheduleCopyWithImpl<_$_NetworkSchedule>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NetworkScheduleToJson(
      this,
    );
  }
}

abstract class _NetworkSchedule implements NetworkSchedule {
  const factory _NetworkSchedule(
      {required final int id,
      required final String date,
      @JsonKey(name: NetworkScheduleFields.createdAt)
          final String? createdAt,
      @JsonKey(name: NetworkScheduleFields.updatedAt)
          final String? updatedAt,
      @JsonKey(name: NetworkScheduleFields.deletedAt)
          final String? deletedAt}) = _$_NetworkSchedule;

  factory _NetworkSchedule.fromJson(Map<String, dynamic> json) =
      _$_NetworkSchedule.fromJson;

  @override
  int get id;
  @override
  String get date;
  @override
  @JsonKey(name: NetworkScheduleFields.createdAt)
  String? get createdAt;
  @override
  @JsonKey(name: NetworkScheduleFields.updatedAt)
  String? get updatedAt;
  @override
  @JsonKey(name: NetworkScheduleFields.deletedAt)
  String? get deletedAt;
  @override
  @JsonKey(ignore: true)
  _$$_NetworkScheduleCopyWith<_$_NetworkSchedule> get copyWith =>
      throw _privateConstructorUsedError;
}
