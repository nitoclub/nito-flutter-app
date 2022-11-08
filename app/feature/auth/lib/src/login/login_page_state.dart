import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_page_state.freezed.dart';

@freezed
class LoginPageState with _$LoginPageState {
  const factory LoginPageState({
    @Default('') String errorMessage,
    @Default(false) bool isLoading,
    @Default(false) bool isLogin,
  }) = _LoginPageState;
}
