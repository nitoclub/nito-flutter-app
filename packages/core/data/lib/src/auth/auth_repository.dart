import 'package:core_model/core_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final authRepositoryProvider = FutureProvider.autoDispose<AuthRepository>(
  (ref) => throw UnimplementedError(),
);

/// 認証系リポジトリ
abstract class AuthRepository {
  /// パスワードを更新する
  Future<void> updatePassword(Password password);
}
