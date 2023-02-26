import 'package:freezed_annotation/freezed_annotation.dart';

part 'participation_register_args.freezed.dart';

@freezed
class ParticipationRegisterArgs with _$ParticipationRegisterArgs {
  const factory ParticipationRegisterArgs({
    required int scheduleId,
    required int memberId,
  }) = _ParticipationRegisterArgs;
}
