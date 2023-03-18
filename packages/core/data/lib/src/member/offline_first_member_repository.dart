import 'package:core_data/core_data.dart';
import 'package:core_model/core_model.dart';
import 'package:core_network/core_network.dart';

final offlineFirstMemberRepositoryProvider =
    memberRepositoryProvider.overrideWith(
  (ref) => OfflineFirstMemberRepository(
    memberApi: ref.watch(memberApiProvider),
  ),
);

/// メンバーのデータ操作リポジトリ
class OfflineFirstMemberRepository implements MemberRepository {
  final MemberApi _memberApi;

  OfflineFirstMemberRepository({required MemberApi memberApi})
      : _memberApi = memberApi;

  @override
  Future<Member> fetchCurrentMember() async =>
      _memberApi.requiredCurrentMember().then(
            (entity) => Member(
              id: entity.id,
              uuid: entity.uuid,
              lineId: entity.lineId,
              nickname: entity.nickname,
            ),
          );
}
