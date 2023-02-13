import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:catalog/src/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // NOTE: Webページで '#' が混在するのを防ぐ
  usePathUrlStrategy();

  // Run the app and pass in the SettingsController. The app listens to the
  // SettingsController for changes, then passes it further down to the
  // SettingsView.
  runApp(
    const ProviderScope(
      child: App(),
    ),
  );
}
