import 'package:core_network/src/member/model/network_member.dart';

/// メンバーAPI
abstract class MemberApi {
  /// メンバー情報を取得する
  Future<NetworkMember?> fetchMember(String uuid);

  /// 現在のメンバー情報を取得する
  Future<NetworkMember?> fetchCurrentMember();

  /// 現在のメンバー情報を取得する
  Future<NetworkMember> requiredCurrentMember();
}
