import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:feature_auth/auth.dart';

void main() {
  runApp(const LoginPageTest());
}

class LoginPageTest extends HookConsumerWidget{
  const LoginPageTest({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const MaterialApp(
      home: LoginPage(),
    );
  }
}
