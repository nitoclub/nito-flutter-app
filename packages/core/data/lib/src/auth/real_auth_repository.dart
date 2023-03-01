import 'package:core_data/core_data.dart';
import 'package:core_model/core_model.dart';
import 'package:core_network/core_network.dart';

final realAuthRepositoryProvider = authRepository2Provider.overrideWith(
  (ref) async =>
      RealAuthRepository(authApi: await ref.watch(authApiProvider.future)),
);

/// 認証系リポジトリ実装クラス
class RealAuthRepository implements AuthRepository2 {
  final AuthApi _authApi;

  RealAuthRepository({required AuthApi authApi}) : _authApi = authApi;

  @override
  Future<void> updatePassword(Password password) async {
    return await _authApi.updatePassword(password);
  }
}
