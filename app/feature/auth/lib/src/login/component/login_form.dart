import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nito_styleguide/nito_styleguide.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
    required this.isSuccessSignIn,
    required this.isSignInProcessing,
    required this.emailController,
    required this.passwordController,
    required this.onPasswordFieldSubmitted,
    required this.onSignInButtonPressed,
  });

  final bool isSuccessSignIn;
  final bool isSignInProcessing;
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final void Function() onPasswordFieldSubmitted;
  final void Function() onSignInButtonPressed;

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
          onFieldSubmitted: (String? value) {
            onPasswordFieldSubmitted();
            isSuccessSignIn ? context.go('/top') : null;
          },
        ),

        const NitoGap.heightX4(),

        // サインインボタン
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {
              onSignInButtonPressed();
              isSuccessSignIn ? context.go('/top') : null;
            },
            child: Text(isSignInProcessing ? 'サインイン中です…' : 'サインイン'),
          ),
        ),
      ],
    );
  }
}
