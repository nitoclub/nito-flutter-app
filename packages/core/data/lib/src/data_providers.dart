import 'package:core_data/src/auth/offline_first_auth_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// DataProviders
final dataProviders = <Override>[
  ...offlineFirstRepositoryProviders,
];

/// Real
final offlineFirstRepositoryProviders = <Override>[
  offlineFirstAuthRepositoryProvider,
];
