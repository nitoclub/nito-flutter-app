import 'package:flutter/material.dart';
import 'package:core_styleguide/core_styleguide.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
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
    return Column(
      children: [
        // メールアドレス入力欄
        TextFormField(
          controller: emailController,
          decoration: const InputDecoration(
            labelText: 'Email',
            icon: Icon(NitoIcons.email),
          ),
          keyboardType: TextInputType.emailAddress,
          autofocus: true,
          textInputAction: TextInputAction.next,
        ),

        const NitoGap.heightX2(),

        // パスワード入力欄
        TextFormField(
          controller: passwordController,
          decoration: const InputDecoration(
            labelText: 'Password',
            icon: Icon(NitoIcons.password),
          ),
          keyboardType: TextInputType.visiblePassword,
          obscureText: true,
          textInputAction: TextInputAction.done,
          onFieldSubmitted: (String? value) async {
            await onPasswordFieldSubmitted();
            onLoginSucceeded();
          },
        ),

        const NitoGap.heightX4(),

        // サインインボタン
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () async {
              await onSignInButtonPressed();
              onLoginSucceeded();
            },
            child: Text(isSignInProcessing ? 'サインイン中です…' : 'サインイン'),
          ),
        ),
      ],
    );
  }
}
