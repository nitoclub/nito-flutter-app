import 'package:flutter/material.dart';

ThemeData lightTheme(ColorScheme? lightDynamic) {
  final scheme = lightDynamic ??
      // #8d93c8 is pansy
      ColorScheme.fromSeed(seedColor: const Color(0x004d4398));
  return ThemeData(
    colorScheme: scheme,
  );
}
