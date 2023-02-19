import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:feature_settings/src/ui/settings_mobile_screen.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return kIsWeb ? const SettingsMobileScreen() : const SettingsMobileScreen();
  }
}
