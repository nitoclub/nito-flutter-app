import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nito_feature_top/top.dart';

void main() {
  runApp(const LoginPageTest());
}

class LoginPageTest extends HookConsumerWidget{
  const LoginPageTest({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const MaterialApp(
      home: TopPage(),
    );
  }
}
