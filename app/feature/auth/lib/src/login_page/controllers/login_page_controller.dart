import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nito_feature_auth/src/login_page/states/login_page_state.dart';
import 'package:nito_data_auth/nito_data_auth.dart';

final loginPageController =
    StateNotifierProvider.autoDispose<LoginPageController, LoginPageState>(
        (ref) => LoginPageController(ref));

class LoginPageController extends StateNotifier<LoginPageState> {
  LoginPageController(this.ref) : super(const LoginPageState()) {
    emailController = TextEditingController(text: '');
    passwordController = TextEditingController(text: '');
  }

  final Ref ref;
  late final TextEditingController emailController;
  late final TextEditingController passwordController;

  Future<void> login() async {
    state = state.copyWith(isLoading: true);

    state = state.copyWith(
      isLogin: await ref
          .watch(authRepositoryProvider)
          .signIn(emailController.text, passwordController.text),
    );

    state = state.copyWith(isLoading: false);
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }
}
