import 'package:core_styleguide/core_styleguide.dart';
import 'package:core_ui/core_ui.dart';
import 'package:dynamic_color/dynamic_color.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:frontend/src/settings/router_settings.dart';

class App extends HookConsumerWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return DynamicColorBuilder(
      builder: (ColorScheme? lightDynamic, ColorScheme? darkDynamic) {
        return MaterialApp.router(
          // onGenerateTitle: (context) => L10n.of(context)!.pokemon,
          title: 'NITO',
          theme: lightTheme(
            lightDynamic: lightDynamic,
            fontFamily: 'NotoSansJP',
          ),
          darkTheme: darkTheme(
            darkDynamic: darkDynamic,
            fontFamily: 'NotoSansJP',
          ),
          themeMode: ThemeMode.system,
          routerConfig: ref.watch(routerProvider),
          scrollBehavior: NitoScrollBehavior(),
          // localizationsDelegates: L10n.localizationsDelegates,
          // supportedLocales: L10n.supportedLocales,
        );
      },
    );
  }
}
