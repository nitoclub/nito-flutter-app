import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:frontend/src/settings/router_settings.dart';

class App extends HookConsumerWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp.router(
      // onGenerateTitle: (context) => L10n.of(context)!.pokemon,
      theme: ThemeData(),
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.system,
      routerConfig: ref.watch(routerProvider),
      // localizationsDelegates: L10n.localizationsDelegates,
      // supportedLocales: L10n.supportedLocales,
    );
  }
}
