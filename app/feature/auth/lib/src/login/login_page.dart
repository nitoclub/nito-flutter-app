import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nito_feature_auth/src/login/component/login_form.dart';
import 'package:nito_feature_auth/src/login/login_page_controller.dart';
import 'package:nito_styleguide/nito_styleguide.dart';

class LoginPage extends HookConsumerWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(loginPageController);
    final controller = ref.watch(loginPageController.notifier);

    return Scaffold(
      appBar: AppBar(title: const Text('Sign In')),
      body: ListView(
        padding: const EdgeInsets.all(Space.x3),
        children: [
          const Text('管理アプリはログインが必要です。'),
          const NitoGap.heightX3(),
          LoginForm(
            isSignInProcessing: state.isLoading,
            emailController: controller.emailController,
            passwordController: controller.passwordController,
            onPasswordFieldSubmitted: () async {
              state.isLoading ? null : await controller.login();
            },
            onSignInButtonPressed: () async {
              state.isLoading ? null : await controller.login();
            },
          ),
        ],
      ),
    );
  }
}
