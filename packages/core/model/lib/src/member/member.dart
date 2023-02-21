import 'package:freezed_annotation/freezed_annotation.dart';

part 'member.freezed.dart';

@freezed
class Member with _$Member {
  const factory Member({
    required int id,
    String? uuid,
    String? lineId,
    required String nickname,
  }) = _Member;
}
