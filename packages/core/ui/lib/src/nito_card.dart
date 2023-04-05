import 'package:core_styleguide/core_styleguide.dart';
import 'package:flutter/material.dart';

/// NITO で共通利用するカードビュー
class NitoCard extends StatelessWidget {
  const NitoCard({
    super.key,
    required this.child,
    this.onTap,
  });

  final Widget child;
  final GestureTapCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(Space.x2),
          child: child,
        ),
      ),
    );
  }
}
