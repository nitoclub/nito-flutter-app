import 'package:core_network/src/member/member_api.dart';
import 'package:core_network/src/member/model/network_member.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

/// メンバーAPI を SupabaseClient で実装したクラス
class SupabaseMemberApi implements MemberApi {
  static const _table = 'members';

  final SupabaseClient _supabaseClient;

  SupabaseMemberApi({required SupabaseClient supabaseClient})
      : _supabaseClient = supabaseClient;

  @override
  Future<NetworkMember?> fetchMember(String uuid) async {
    final member = await _supabaseClient
        .from(_table)
        .select('*')
        .is_(NetworkMemberFields.deletedAt, null)
        .eq(NetworkMemberFields.uuid, uuid)
        .maybeSingle();
    return member ? NetworkMember.fromJson(member) : null;
  }

  @override
  Future<NetworkMember?> fetchCurrentMember() async {
    final currentUser = _supabaseClient.auth.currentUser;
    return currentUser != null ? await fetchMember(currentUser.id) : null;
  }

  @override
  Future<NetworkMember> requiredCurrentMember() async {
    return await fetchCurrentMember().then((member) => member!);
  }
}
