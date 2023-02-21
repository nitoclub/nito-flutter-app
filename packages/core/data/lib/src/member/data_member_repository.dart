import 'package:core_data/core_data.dart';
import 'package:core_model/core_model.dart';
import 'package:core_network/core_network.dart';

/// メンバーのデータ操作リポジトリ
class DataMemberRepository implements MemberRepository {
  final MemberApi _api;

  DataMemberRepository({required MemberApi api}) : _api = api;

  @override
  Future<Member> fetchSelfMember() async => _api.requiredCurrentMember().then(
        (entity) => Member(
          id: entity.id,
          uuid: entity.uuid,
          lineId: entity.lineId,
          nickname: entity.nickname,
        ),
      );
}
