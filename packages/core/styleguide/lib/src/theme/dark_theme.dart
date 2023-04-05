import 'package:flutter/material.dart';

ThemeData darkTheme({
  ColorScheme? darkDynamic,
  String? fontFamily,
}) {
  final scheme = darkDynamic ??
      // #8d93c8 is pansy
      ColorScheme.fromSeed(
        seedColor: const Color(0x004d4398),
        brightness: Brightness.dark,
      );
  return ThemeData(
    colorScheme: scheme,
    fontFamily: fontFamily,
  );
}
