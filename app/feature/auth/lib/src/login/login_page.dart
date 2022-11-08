import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
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
          TextFormField(
            controller: controller.emailController,
            decoration: const InputDecoration(
              labelText: 'Email',
              icon: Icon(NitoIcons.email),
            ),
            keyboardType: TextInputType.emailAddress,
            autofocus: true,
            textInputAction: TextInputAction.next,
          ),
          const NitoGap.heightX2(),
          TextFormField(
            controller: controller.passwordController,
            decoration: const InputDecoration(
              labelText: 'Password',
              icon: Icon(NitoIcons.password),
            ),
            keyboardType: TextInputType.visiblePassword,
            obscureText: true,
            textInputAction: TextInputAction.done,
            onFieldSubmitted: (String? value) async {
              state.isLoading ? null : await controller.login();
            },
          ),
          const NitoGap.heightX4(),
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
