import 'package:core_model/core_model.dart';

/// メンバーリポジトリ
abstract class MemberRepository {
  /// 自身のメンバー情報を取得する
  Future<Member> fetchSelfMember();
}
