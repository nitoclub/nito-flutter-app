// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entrance_register_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$entranceRegisterHash() => r'ca71001f84cd06009b83af94b67074d9a39250ec';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

typedef EntranceRegisterRef = AutoDisposeFutureProviderRef<void>;

/// See also [entranceRegister].
@ProviderFor(entranceRegister)
const entranceRegisterProvider = EntranceRegisterFamily();

/// See also [entranceRegister].
class EntranceRegisterFamily extends Family<AsyncValue<void>> {
  /// See also [entranceRegister].
  const EntranceRegisterFamily();

  /// See also [entranceRegister].
  EntranceRegisterProvider call({
    required String nickname,
    required String email,
  }) {
    return EntranceRegisterProvider(
      nickname: nickname,
      email: email,
    );
  }

  @override
  EntranceRegisterProvider getProviderOverride(
    covariant EntranceRegisterProvider provider,
  ) {
    return call(
      nickname: provider.nickname,
      email: provider.email,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'entranceRegisterProvider';
}

/// See also [entranceRegister].
class EntranceRegisterProvider extends AutoDisposeFutureProvider<void> {
  /// See also [entranceRegister].
  EntranceRegisterProvider({
    required this.nickname,
    required this.email,
  }) : super.internal(
          (ref) => entranceRegister(
            ref,
            nickname: nickname,
            email: email,
          ),
          from: entranceRegisterProvider,
          name: r'entranceRegisterProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$entranceRegisterHash,
          dependencies: EntranceRegisterFamily._dependencies,
          allTransitiveDependencies:
              EntranceRegisterFamily._allTransitiveDependencies,
        );

  final String nickname;
  final String email;

  @override
  bool operator ==(Object other) {
    return other is EntranceRegisterProvider &&
        other.nickname == nickname &&
        other.email == email;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, nickname.hashCode);
    hash = _SystemHash.combine(hash, email.hashCode);

    return _SystemHash.finish(hash);
  }
}
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
