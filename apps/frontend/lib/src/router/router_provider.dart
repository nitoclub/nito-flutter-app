import 'package:core_network/core_network.dart';
import 'package:frontend/src/router/router.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'router_provider.g.dart';

/// ルーティング設定のプロバイダー
@riverpod
GoRouter router(RouterRef ref) {
  return GoRouter(
    routes: $appRoutes,
    redirect: (context, state) {
      if (_ignoreRedirect.contains(state.location)) return null;
      // セッションがない場合、ログインページへリダイレクトされる。
      return ref.watch(userProvider) != null ||
              (ref.watch(isSignedInProvider).value ?? false)
          ? null
          : const LoginRoute().location;
    },
  );
}

final _ignoreRedirect = <String>{
  const LoginRoute().location,
  '/entrance',
};
