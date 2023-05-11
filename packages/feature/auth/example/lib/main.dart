import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:feature_auth/feature_auth.dart';

void main() {
  runApp(
    const ProviderScope(
      child: LoginPageTest(),
    ),
  );
}

class LoginPageTest extends HookConsumerWidget {
  const LoginPageTest({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      home: LoginPage(
        onLoginSucceeded: () {},
        goEntrancePage: () {},
      ),
    );
  }
}
