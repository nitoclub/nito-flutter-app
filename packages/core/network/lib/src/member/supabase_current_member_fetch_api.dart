import 'package:core_network/src/di/network_provider.dart';
import 'package:core_network/src/member/model/network_member.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final supabaseCurrentMemberFetchApi = FutureProvider.autoDispose<NetworkMember>(
  (ref) async {
    const table = 'members';
    final supabaseClient = ref.watch(supabaseClientProvider);
    final uuid = supabaseClient.auth.currentUser?.id;
    // supabaseAuthのuuidで一意のmemberを取得する
    final member = await supabaseClient
        .from(table)
        .select('*')
        .is_(NetworkMemberFields.deletedAt, null)
        .eq(NetworkMemberFields.uuid, uuid)
        .maybeSingle();
    return NetworkMember.fromJson(member);
  },
);
