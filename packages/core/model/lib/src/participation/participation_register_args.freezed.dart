// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'participation_register_args.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ParticipationRegisterArgs {
  int get scheduleId => throw _privateConstructorUsedError;
  int get memberId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ParticipationRegisterArgsCopyWith<ParticipationRegisterArgs> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParticipationRegisterArgsCopyWith<$Res> {
  factory $ParticipationRegisterArgsCopyWith(ParticipationRegisterArgs value,
          $Res Function(ParticipationRegisterArgs) then) =
      _$ParticipationRegisterArgsCopyWithImpl<$Res, ParticipationRegisterArgs>;
  @useResult
  $Res call({int scheduleId, int memberId});
}

/// @nodoc
class _$ParticipationRegisterArgsCopyWithImpl<$Res,
        $Val extends ParticipationRegisterArgs>
    implements $ParticipationRegisterArgsCopyWith<$Res> {
  _$ParticipationRegisterArgsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? scheduleId = null,
    Object? memberId = null,
  }) {
    return _then(_value.copyWith(
      scheduleId: null == scheduleId
          ? _value.scheduleId
          : scheduleId // ignore: cast_nullable_to_non_nullable
              as int,
      memberId: null == memberId
          ? _value.memberId
          : memberId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ParticipationRegisterArgsCopyWith<$Res>
    implements $ParticipationRegisterArgsCopyWith<$Res> {
  factory _$$_ParticipationRegisterArgsCopyWith(
          _$_ParticipationRegisterArgs value,
          $Res Function(_$_ParticipationRegisterArgs) then) =
      __$$_ParticipationRegisterArgsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int scheduleId, int memberId});
}

/// @nodoc
class __$$_ParticipationRegisterArgsCopyWithImpl<$Res>
    extends _$ParticipationRegisterArgsCopyWithImpl<$Res,
        _$_ParticipationRegisterArgs>
    implements _$$_ParticipationRegisterArgsCopyWith<$Res> {
  __$$_ParticipationRegisterArgsCopyWithImpl(
      _$_ParticipationRegisterArgs _value,
      $Res Function(_$_ParticipationRegisterArgs) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? scheduleId = null,
    Object? memberId = null,
  }) {
    return _then(_$_ParticipationRegisterArgs(
      scheduleId: null == scheduleId
          ? _value.scheduleId
          : scheduleId // ignore: cast_nullable_to_non_nullable
              as int,
      memberId: null == memberId
          ? _value.memberId
          : memberId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_ParticipationRegisterArgs implements _ParticipationRegisterArgs {
  const _$_ParticipationRegisterArgs(
      {required this.scheduleId, required this.memberId});

  @override
  final int scheduleId;
  @override
  final int memberId;

  @override
  String toString() {
    return 'ParticipationRegisterArgs(scheduleId: $scheduleId, memberId: $memberId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ParticipationRegisterArgs &&
            (identical(other.scheduleId, scheduleId) ||
                other.scheduleId == scheduleId) &&
            (identical(other.memberId, memberId) ||
                other.memberId == memberId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, scheduleId, memberId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ParticipationRegisterArgsCopyWith<_$_ParticipationRegisterArgs>
      get copyWith => __$$_ParticipationRegisterArgsCopyWithImpl<
          _$_ParticipationRegisterArgs>(this, _$identity);
}

abstract class _ParticipationRegisterArgs implements ParticipationRegisterArgs {
  const factory _ParticipationRegisterArgs(
      {required final int scheduleId,
      required final int memberId}) = _$_ParticipationRegisterArgs;

  @override
  int get scheduleId;
  @override
  int get memberId;
  @override
  @JsonKey(ignore: true)
  _$$_ParticipationRegisterArgsCopyWith<_$_ParticipationRegisterArgs>
      get copyWith => throw _privateConstructorUsedError;
}
