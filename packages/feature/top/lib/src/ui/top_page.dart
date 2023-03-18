import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:feature_top/src/ui/top_page_for_mobile.dart';

class TopPage extends StatelessWidget {
  const TopPage(
      {super.key,
      required void Function(BuildContext context) onSettingsActionPressed})
      : _onSettingsActionPressed = onSettingsActionPressed;

  final void Function(BuildContext context) _onSettingsActionPressed;

  @override
  Widget build(BuildContext context) {
    // FIXME(Daichi): 今後WEBとMOBILEで分岐する際に修正
    return kIsWeb
        ? TopPageForMobile(
            onSettingsActionPressed: () => _onSettingsActionPressed(context),
          )
        : TopPageForMobile(
            onSettingsActionPressed: () => _onSettingsActionPressed(context),
          );
  }
}
