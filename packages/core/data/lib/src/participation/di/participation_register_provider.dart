import 'package:core_model/core_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final participationRegisterProvider =
    FutureProvider.autoDispose.family<void, ParticipationRegisterArgs>(
  (ref, arg) async => UnimplementedError(),
);
