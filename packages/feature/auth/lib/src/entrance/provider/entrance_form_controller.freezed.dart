// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'entrance_form_controller.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EntranceFormState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isSuccess => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EntranceFormStateCopyWith<EntranceFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EntranceFormStateCopyWith<$Res> {
  factory $EntranceFormStateCopyWith(
          EntranceFormState value, $Res Function(EntranceFormState) then) =
      _$EntranceFormStateCopyWithImpl<$Res, EntranceFormState>;
  @useResult
  $Res call({bool isLoading, bool isSuccess, String errorMessage});
}

/// @nodoc
class _$EntranceFormStateCopyWithImpl<$Res, $Val extends EntranceFormState>
    implements $EntranceFormStateCopyWith<$Res> {
  _$EntranceFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isSuccess = null,
    Object? errorMessage = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isSuccess: null == isSuccess
          ? _value.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EntranceFormStateCopyWith<$Res>
    implements $EntranceFormStateCopyWith<$Res> {
  factory _$$_EntranceFormStateCopyWith(_$_EntranceFormState value,
          $Res Function(_$_EntranceFormState) then) =
      __$$_EntranceFormStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, bool isSuccess, String errorMessage});
}

/// @nodoc
class __$$_EntranceFormStateCopyWithImpl<$Res>
    extends _$EntranceFormStateCopyWithImpl<$Res, _$_EntranceFormState>
    implements _$$_EntranceFormStateCopyWith<$Res> {
  __$$_EntranceFormStateCopyWithImpl(
      _$_EntranceFormState _value, $Res Function(_$_EntranceFormState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isSuccess = null,
    Object? errorMessage = null,
  }) {
    return _then(_$_EntranceFormState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isSuccess: null == isSuccess
          ? _value.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_EntranceFormState implements _EntranceFormState {
  _$_EntranceFormState(
      {this.isLoading = false, this.isSuccess = false, this.errorMessage = ''});

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool isSuccess;
  @override
  @JsonKey()
  final String errorMessage;

  @override
  String toString() {
    return 'EntranceFormState(isLoading: $isLoading, isSuccess: $isSuccess, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EntranceFormState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isSuccess, isSuccess) ||
                other.isSuccess == isSuccess) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, isLoading, isSuccess, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EntranceFormStateCopyWith<_$_EntranceFormState> get copyWith =>
      __$$_EntranceFormStateCopyWithImpl<_$_EntranceFormState>(
          this, _$identity);
}

abstract class _EntranceFormState implements EntranceFormState {
  factory _EntranceFormState(
      {final bool isLoading,
      final bool isSuccess,
      final String errorMessage}) = _$_EntranceFormState;

  @override
  bool get isLoading;
  @override
  bool get isSuccess;
  @override
  String get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$_EntranceFormStateCopyWith<_$_EntranceFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
