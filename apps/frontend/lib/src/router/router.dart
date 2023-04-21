import 'package:feature_auth/feature_auth.dart';
import 'package:feature_schedule/feature_schedule.dart';
import 'package:feature_settings/feature_settings.dart';
import 'package:feature_top/feature_top.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

part 'router.g.dart';

/// ルート
@TypedGoRoute<RootRoute>(
  path: '/',
)
class RootRoute extends GoRouteData {
  const RootRoute();

  @override
  build(BuildContext context, GoRouterState state) => TopPage(
        onSettingsActionPressed: () {
          const SettingsRoute().push(context);
        },
        onScheduleListButtonPressed: () {
          const ScheduleListRoute().push(context);
        },
      );
}

/// ログインページルート
@TypedGoRoute<LoginRoute>(
  path: '/login',
)
class LoginRoute extends GoRouteData {
  const LoginRoute();

  @override
  build(BuildContext context, GoRouterState state) => LoginPage(
        onLoginSucceeded: () {
          const RootRoute().push(context);
        },
      );
}

/// セッティングページルート
@TypedGoRoute<SettingsRoute>(
  path: '/settings',
)
class SettingsRoute extends GoRouteData {
  const SettingsRoute();

  @override
  build(BuildContext context, GoRouterState state) => const SettingsScreen();
}

/// スケジュール一覧ページルート
@TypedGoRoute<ScheduleListRoute>(
  path: '/schedules',
)
class ScheduleListRoute extends GoRouteData {
  const ScheduleListRoute();

  @override
  build(BuildContext context, GoRouterState state) => const SchedulePage();
}
