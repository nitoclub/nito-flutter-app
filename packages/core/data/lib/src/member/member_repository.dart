import 'package:core_model/core_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final memberRepositoryProvider = Provider.autoDispose<MemberRepository>(
  (ref) => throw UnimplementedError(),
);

/// メンバーリポジトリ
abstract class MemberRepository {
  /// 自身のメンバー情報を取得する
  Future<Member> fetchCurrentMember();
}
