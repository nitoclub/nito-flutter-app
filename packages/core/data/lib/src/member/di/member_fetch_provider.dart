import 'package:core_model/core_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final memberFetchProvider = FutureProvider.autoDispose<Member>(
  (ref) => throw UnimplementedError(),
);
