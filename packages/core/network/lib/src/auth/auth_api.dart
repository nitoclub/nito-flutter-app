import 'package:core_model/core_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final authApiProvider = FutureProvider.autoDispose<AuthApi>(
  (ref) => throw UnimplementedError(),
);

/// 認証系 API
abstract class AuthApi {
  /// パスワードを更新する
  Future<void> updatePassword(Password password);
}
