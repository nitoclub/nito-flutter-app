import 'package:core_styleguide/core_styleguide.dart';
import 'package:flutter/material.dart';

/// LINE 連携設定
class LineLinkingSection extends StatelessWidget {
  const LineLinkingSection({
    super.key,
    required bool isLineLinked,
    required VoidCallback onLineLinkingTogglePressed,
  })  : _isLineLinked = isLineLinked,
        _onLineLinkingTogglePressed = onLineLinkingTogglePressed;

  final bool _isLineLinked;
  final VoidCallback _onLineLinkingTogglePressed;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(Space.x2),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('LINE 連携'),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _isLineLinked
                    ? const Text('✅ LINE 連携済み')
                    : const Text('⚠ LINE 未連携'),
                TextButton(
                  onPressed: _onLineLinkingTogglePressed,
                  child:
                      _isLineLinked ? const Text('解除する') : const Text('連携する'),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
