import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nito_feature_auth/src/login_page/controllers/login_page_controller.dart';
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
        padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 12),
        children: [
          const Text('管理アプリはログインが必要です。'),
          const SizedBox(height: 16),
          TextFormField(
            controller: controller.emailController,
            decoration: const InputDecoration(
              labelText: 'Email',
              icon: Icon(Icons.email_outlined),
            ),
            keyboardType: TextInputType.emailAddress,
            autofocus: true,
            textInputAction: TextInputAction.next,
          ),
          const SizedBox(height: 8),
          TextFormField(
            controller: controller.passwordController,
            decoration: const InputDecoration(
              labelText: 'Password',
              icon: Icon(Icons.password_outlined),
            ),
            keyboardType: TextInputType.visiblePassword,
            obscureText: true,
            textInputAction: TextInputAction.done,
            onFieldSubmitted: (String? value) async {
              state.isLoading ? null : await controller.login();
            },
          ),
          const SizedBox(height: 32),
          ElevatedButton(
            onPressed: () async {
              state.isLoading ? null : controller.login();
            },
            child: Text(state.isLoading ? 'Loading' : 'Sign In'),
          ),
        ],
      ),
    );
  }
}
