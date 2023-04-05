import 'package:hooks_riverpod/hooks_riverpod.dart';

final entranceApiProvider = Provider.autoDispose<EntranceApi>(
  (ref) => throw UnimplementedError(),
);

/// 仮登録API
abstract class EntranceApi {
  /// 仮登録を行う
  Future<void> register(String nickname, String email);
}
