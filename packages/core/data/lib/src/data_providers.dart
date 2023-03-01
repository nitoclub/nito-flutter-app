import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'auth/real_auth_repository.dart';

/// DataProviders
final dataProviders = <Override>[
  ...realRepositoryProviders,
];

/// Real
final realRepositoryProviders = <Override>[
  realAuthRepositoryProvider,
];
