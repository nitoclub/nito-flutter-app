import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:feature_top/src/ui/top_page_for_mobile.dart';

class TopPage extends StatelessWidget {
  const TopPage({
    super.key,
    required void Function(BuildContext context) onSettingsActionPressed,
    required VoidCallback onScheduleListButtonPressed,
  })  : _onSettingsActionPressed = onSettingsActionPressed,
        _onScheduleListButtonPressed = onScheduleListButtonPressed;

  final void Function(BuildContext context) _onSettingsActionPressed;
  final VoidCallback _onScheduleListButtonPressed;

  @override
  Widget build(BuildContext context) {
    // FIXME(Daichi): 今後WEBとMOBILEで分岐する際に修正
    return kIsWeb
        ? TopPageForMobile(
            onSettingsActionPressed: () => _onSettingsActionPressed(context),
            onScheduleListButtonPressed: _onScheduleListButtonPressed,
          )
        : TopPageForMobile(
            onSettingsActionPressed: () => _onSettingsActionPressed(context),
            onScheduleListButtonPressed: _onScheduleListButtonPressed,
          );
  }
}
