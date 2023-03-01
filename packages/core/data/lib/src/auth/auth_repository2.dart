import 'package:core_model/core_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final authRepository2Provider = FutureProvider.autoDispose<AuthRepository2>(
  (ref) => throw UnimplementedError(),
);

/// 認証系リポジトリ
abstract class AuthRepository2 {
  /// パスワードを更新する
  Future<void> updatePassword(Password password);
}
