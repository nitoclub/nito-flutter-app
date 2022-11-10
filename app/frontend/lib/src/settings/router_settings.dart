import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nito_feature_auth/auth.dart';
import 'package:nito_feature_top/top.dart';
import 'package:nito_network/nito_network.dart';

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
      return ref.watch(userProvider) != null ? null : '/login';
    },
  ),
);
