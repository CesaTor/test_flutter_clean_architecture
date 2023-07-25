// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'remote_post.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getRemotePostsHash() => r'b4c6c804adf547e1f86a50cfa4f8cb8894444595';

/// See also [getRemotePosts].
@ProviderFor(getRemotePosts)
final getRemotePostsProvider = AutoDisposeFutureProvider<List<IPost>>.internal(
  getRemotePosts,
  name: r'getRemotePostsProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$getRemotePostsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef GetRemotePostsRef = AutoDisposeFutureProviderRef<List<IPost>>;
String _$getRemotePostHash() => r'e8bf560cd98ef9111e9eb8b934bcf3514e973491';

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

typedef GetRemotePostRef = AutoDisposeFutureProviderRef<IPost>;

/// See also [getRemotePost].
@ProviderFor(getRemotePost)
const getRemotePostProvider = GetRemotePostFamily();

/// See also [getRemotePost].
class GetRemotePostFamily extends Family<AsyncValue<IPost>> {
  /// See also [getRemotePost].
  const GetRemotePostFamily();

  /// See also [getRemotePost].
  GetRemotePostProvider call(
    int id,
  ) {
    return GetRemotePostProvider(
      id,
    );
  }

  @override
  GetRemotePostProvider getProviderOverride(
    covariant GetRemotePostProvider provider,
  ) {
    return call(
      provider.id,
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
  String? get name => r'getRemotePostProvider';
}

/// See also [getRemotePost].
class GetRemotePostProvider extends AutoDisposeFutureProvider<IPost> {
  /// See also [getRemotePost].
  GetRemotePostProvider(
    this.id,
  ) : super.internal(
          (ref) => getRemotePost(
            ref,
            id,
          ),
          from: getRemotePostProvider,
          name: r'getRemotePostProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getRemotePostHash,
          dependencies: GetRemotePostFamily._dependencies,
          allTransitiveDependencies:
              GetRemotePostFamily._allTransitiveDependencies,
        );

  final int id;

  @override
  bool operator ==(Object other) {
    return other is GetRemotePostProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
