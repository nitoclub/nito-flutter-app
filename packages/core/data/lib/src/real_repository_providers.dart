import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'auth/real_auth_repository.dart';

/// Real
final realRepositoryProviders = <Override>[
  realAuthRepositoryProvider,
];
