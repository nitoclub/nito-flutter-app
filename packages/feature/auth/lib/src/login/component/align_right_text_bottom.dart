import 'package:flutter/material.dart';

class AlignRightTextBottom extends StatelessWidget {
  const AlignRightTextBottom({
    super.key,
    required this.text,
    required this.onPressed,
  });

  final String text;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: TextButton(
        onPressed: onPressed,
        child: Text(
          text,
          style: const TextStyle(decoration: TextDecoration.underline),
        ),
      ),
    );
  }
}
