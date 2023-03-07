import 'package:core_network/core_network.dart';
import 'package:feature_auth/feature_auth.dart';
import 'package:feature_schedule/feature_schedule.dart';
import 'package:feature_settings/feature_settings.dart';
import 'package:feature_top/feature_top.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final routerProvider = Provider<GoRouter>(
  (ref) => GoRouter(
    routes: [
      GoRoute(
        path: '/',
        redirect: (context, state) {
          // topにリダイレクトする
          return '/top';
        },
      ),
      GoRoute(
        path: '/login',
        builder: (context, state) => const LoginPage(),
      ),
      GoRoute(
        path: '/top',
        builder: (context, state) => TopPage(
          onSettingsActionPressed: (BuildContext context) {
            context.push('/settings');
          },
        ),
      ),
      GoRoute(
        path: '/settings',
        builder: (context, state) => const SettingsScreen(),
      ),
      GoRoute(
        path: '/schedule',
        builder: (context, state) => const SchedulePage(),
      ),
      // 引数付きの場合は以下のように作成する
      // GoRoute(
      //   path: '/example/:something',
      //   builder: (context, state) =>
      //       ExamplePage(something: state.params['something']),
      // ),
    ],
    redirect: (context, state) {
      // ルートもしくはログインページへのアクセスはそのまま
      if (state.location == '/' || state.location == '/login') return null;
      // セッションがない場合、ログインページへリダイレクトされる。
      return ref.watch(userProvider) != null ||
              (ref.watch(isSignedInProvider).value ?? false)
          ? null
          : '/login';
    },
  ),
);
