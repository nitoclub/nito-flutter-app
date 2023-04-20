import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:feature_auth/src/login/component/login_form.dart';
import 'package:feature_auth/src/login/login_page_controller.dart';
import 'package:core_styleguide/core_styleguide.dart';

class LoginPage extends HookConsumerWidget {
  const LoginPage({
    super.key,
    required VoidCallback onLoginSucceeded,
  }) : _onLoginSucceeded = onLoginSucceeded;

  final VoidCallback _onLoginSucceeded;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(loginPageController);
    final controller = ref.watch(loginPageController.notifier);

    return _StatelessLoginPage(
      isSuccessSignIn: state.isLogin,
      isSignInProcessing: state.isLoginProcessing,
      emailController: controller.emailController,
      passwordController: controller.passwordController,
      onPasswordFieldSubmitted: controller.onPasswordFieldSubmitted,
      onSignInButtonPressed: controller.onSignInButtonPressed,
      onLoginSucceeded: () => _onLoginSucceeded,
    );
  }
}

class _StatelessLoginPage extends StatelessWidget {
  const _StatelessLoginPage({
    required this.isSuccessSignIn,
    required this.isSignInProcessing,
    required this.emailController,
    required this.passwordController,
    required this.onPasswordFieldSubmitted,
    required this.onSignInButtonPressed,
    required this.onLoginSucceeded,
  });

  final bool isSuccessSignIn;
  final bool isSignInProcessing;
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final Future<void> Function() onPasswordFieldSubmitted;
  final Future<void> Function() onSignInButtonPressed;
  final VoidCallback onLoginSucceeded;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('サインイン')),
      body: ListView(
        padding: const EdgeInsets.all(Space.x3),
        children: [
          const Text('NITO はログインが必要です。'),
          const NitoGap.heightX3(),
          LoginForm(
            isSuccessSignIn: isSuccessSignIn,
            isSignInProcessing: isSignInProcessing,
            emailController: emailController,
            passwordController: passwordController,
            onPasswordFieldSubmitted: onPasswordFieldSubmitted,
            onSignInButtonPressed: onSignInButtonPressed,
            onLoginSucceeded: onLoginSucceeded,
          ),
        ],
      ),
    );
  }
}
