import 'package:core_network/core_network.dart';
import 'package:feature_frontend_auth/feature_frontend_auth.dart';
import 'package:feature_frontend_top/feature_frontend_top.dart';
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
        builder: (context, state) => const TopPage(),
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
