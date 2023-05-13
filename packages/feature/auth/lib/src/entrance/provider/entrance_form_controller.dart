import 'package:core_data/core_data.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'entrance_form_controller.freezed.dart';
part 'entrance_form_controller.g.dart';

@freezed
class EntranceFormState with _$EntranceFormState {
  factory EntranceFormState({
    @Default(false) bool isLoading,
    @Default(false) bool isSuccess,
    @Default('') String errorMessage,
  }) = _EntranceFormState;
}

@riverpod
class EntranceFormControl extends _$EntranceFormControl {
  @override
  EntranceFormState build() {
    ref.onDispose(_dispose);
    return EntranceFormState();
  }

  final emailController = TextEditingController();
  final nicknameController = TextEditingController();

  // 会員登録リクエストを送信する
  Future<void> sendRequest() async {
    // 送信中は、送信できないようにする
    if (!state.isLoading) {
      try {
        state = state.copyWith(isLoading: true);
        await ref.watch(entranceRepositoryProvider).register(
              nicknameController.text,
              emailController.text,
            );
        state = state.copyWith(isLoading: false, isSuccess: true);
      } on Exception catch (e) {
        state = state.copyWith(
          isLoading: false,
          errorMessage: e.toString(),
        );
      }
    }
  }
  void _dispose() {
    emailController.dispose();
    nicknameController.dispose();
  }
}
