import 'package:core_data/src/auth/offline_first_auth_repository.dart';
import 'package:core_data/src/member/offline_first_member_repository.dart';
import 'package:core_data/src/participation/offline_first_participation_repository.dart';
import 'package:core_data/src/schedule/offline_first_schedule_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// DataProviders
final dataProviders = <Override>[
  ...offlineFirstRepositoryProviders,
];

/// OfflineFirst
final offlineFirstRepositoryProviders = <Override>[
  offlineFirstAuthRepositoryProvider,
  offlineFirstMemberRepositoryProvider,
  offlineFirstParticipationRepositoryProvider,
  offlineFirstScheduleRepositoryProvider,
];
