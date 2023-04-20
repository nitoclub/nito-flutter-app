import 'package:core_data/core_data.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'entrance_register_provider.g.dart';

@riverpod
/// 仮登録を行う
Future<void> entranceRegister(
  EntranceRegisterRef ref, {
  required String nickname,
  required String email,
}) async {
  await ref.watch(entranceRepositoryProvider).register(nickname, email);
}
