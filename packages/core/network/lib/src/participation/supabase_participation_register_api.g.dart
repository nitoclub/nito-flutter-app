// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'supabase_participation_register_api.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$supabaseParticipationRegisterApiHash() =>
    r'727845896f44e0ff7a0803132831bb0e28ec5c27';

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

typedef SupabaseParticipationRegisterApiRef
    = AutoDisposeFutureProviderRef<void>;

/// See also [supabaseParticipationRegisterApi].
@ProviderFor(supabaseParticipationRegisterApi)
const supabaseParticipationRegisterApiProvider =
    SupabaseParticipationRegisterApiFamily();

/// See also [supabaseParticipationRegisterApi].
class SupabaseParticipationRegisterApiFamily extends Family<AsyncValue<void>> {
  /// See also [supabaseParticipationRegisterApi].
  const SupabaseParticipationRegisterApiFamily();

  /// See also [supabaseParticipationRegisterApi].
  SupabaseParticipationRegisterApiProvider call({
    required int scheduleId,
    required int memberId,
  }) {
    return SupabaseParticipationRegisterApiProvider(
      scheduleId: scheduleId,
      memberId: memberId,
    );
  }

  @override
  SupabaseParticipationRegisterApiProvider getProviderOverride(
    covariant SupabaseParticipationRegisterApiProvider provider,
  ) {
    return call(
      scheduleId: provider.scheduleId,
      memberId: provider.memberId,
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
  String? get name => r'supabaseParticipationRegisterApiProvider';
}

/// See also [supabaseParticipationRegisterApi].
class SupabaseParticipationRegisterApiProvider
    extends AutoDisposeFutureProvider<void> {
  /// See also [supabaseParticipationRegisterApi].
  SupabaseParticipationRegisterApiProvider({
    required this.scheduleId,
    required this.memberId,
  }) : super.internal(
          (ref) => supabaseParticipationRegisterApi(
            ref,
            scheduleId: scheduleId,
            memberId: memberId,
          ),
          from: supabaseParticipationRegisterApiProvider,
          name: r'supabaseParticipationRegisterApiProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$supabaseParticipationRegisterApiHash,
          dependencies: SupabaseParticipationRegisterApiFamily._dependencies,
          allTransitiveDependencies:
              SupabaseParticipationRegisterApiFamily._allTransitiveDependencies,
        );

  final int scheduleId;
  final int memberId;

  @override
  bool operator ==(Object other) {
    return other is SupabaseParticipationRegisterApiProvider &&
        other.scheduleId == scheduleId &&
        other.memberId == memberId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, scheduleId.hashCode);
    hash = _SystemHash.combine(hash, memberId.hashCode);

    return _SystemHash.finish(hash);
  }
}
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
