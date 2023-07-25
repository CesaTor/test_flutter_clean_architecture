// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'local_post.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getLocalPostsHash() => r'34c0f6d642c908117f366b6daf61bba9f461ee36';

/// See also [getLocalPosts].
@ProviderFor(getLocalPosts)
final getLocalPostsProvider = AutoDisposeFutureProvider<List<IPost>>.internal(
  getLocalPosts,
  name: r'getLocalPostsProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$getLocalPostsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef GetLocalPostsRef = AutoDisposeFutureProviderRef<List<IPost>>;
String _$saveLocalPostHash() => r'8f6ac83142f7199f1f76c082ae12f0bfc2d5885d';

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

typedef SaveLocalPostRef = AutoDisposeFutureProviderRef<void>;

/// See also [saveLocalPost].
@ProviderFor(saveLocalPost)
const saveLocalPostProvider = SaveLocalPostFamily();

/// See also [saveLocalPost].
class SaveLocalPostFamily extends Family<AsyncValue<void>> {
  /// See also [saveLocalPost].
  const SaveLocalPostFamily();

  /// See also [saveLocalPost].
  SaveLocalPostProvider call({
    required IPost post,
  }) {
    return SaveLocalPostProvider(
      post: post,
    );
  }

  @override
  SaveLocalPostProvider getProviderOverride(
    covariant SaveLocalPostProvider provider,
  ) {
    return call(
      post: provider.post,
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
  String? get name => r'saveLocalPostProvider';
}

/// See also [saveLocalPost].
class SaveLocalPostProvider extends AutoDisposeFutureProvider<void> {
  /// See also [saveLocalPost].
  SaveLocalPostProvider({
    required this.post,
  }) : super.internal(
          (ref) => saveLocalPost(
            ref,
            post: post,
          ),
          from: saveLocalPostProvider,
          name: r'saveLocalPostProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$saveLocalPostHash,
          dependencies: SaveLocalPostFamily._dependencies,
          allTransitiveDependencies:
              SaveLocalPostFamily._allTransitiveDependencies,
        );

  final IPost post;

  @override
  bool operator ==(Object other) {
    return other is SaveLocalPostProvider && other.post == post;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, post.hashCode);

    return _SystemHash.finish(hash);
  }
}

String _$getLocalPostHash() => r'6f275b914fbadd57d7b80bd28ac40b435a673ddf';
typedef GetLocalPostRef = AutoDisposeFutureProviderRef<IPost?>;

/// See also [getLocalPost].
@ProviderFor(getLocalPost)
const getLocalPostProvider = GetLocalPostFamily();

/// See also [getLocalPost].
class GetLocalPostFamily extends Family<AsyncValue<IPost?>> {
  /// See also [getLocalPost].
  const GetLocalPostFamily();

  /// See also [getLocalPost].
  GetLocalPostProvider call({
    required int id,
  }) {
    return GetLocalPostProvider(
      id: id,
    );
  }

  @override
  GetLocalPostProvider getProviderOverride(
    covariant GetLocalPostProvider provider,
  ) {
    return call(
      id: provider.id,
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
  String? get name => r'getLocalPostProvider';
}

/// See also [getLocalPost].
class GetLocalPostProvider extends AutoDisposeFutureProvider<IPost?> {
  /// See also [getLocalPost].
  GetLocalPostProvider({
    required this.id,
  }) : super.internal(
          (ref) => getLocalPost(
            ref,
            id: id,
          ),
          from: getLocalPostProvider,
          name: r'getLocalPostProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getLocalPostHash,
          dependencies: GetLocalPostFamily._dependencies,
          allTransitiveDependencies:
              GetLocalPostFamily._allTransitiveDependencies,
        );

  final int id;

  @override
  bool operator ==(Object other) {
    return other is GetLocalPostProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

String _$deleteLocalPostsHash() => r'6ab56b74805ed8c0b576bfd14ebb1f3691c18c23';
typedef DeleteLocalPostsRef = AutoDisposeFutureProviderRef<void>;

/// See also [deleteLocalPosts].
@ProviderFor(deleteLocalPosts)
const deleteLocalPostsProvider = DeleteLocalPostsFamily();

/// See also [deleteLocalPosts].
class DeleteLocalPostsFamily extends Family<AsyncValue<void>> {
  /// See also [deleteLocalPosts].
  const DeleteLocalPostsFamily();

  /// See also [deleteLocalPosts].
  DeleteLocalPostsProvider call({
    required int id,
  }) {
    return DeleteLocalPostsProvider(
      id: id,
    );
  }

  @override
  DeleteLocalPostsProvider getProviderOverride(
    covariant DeleteLocalPostsProvider provider,
  ) {
    return call(
      id: provider.id,
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
  String? get name => r'deleteLocalPostsProvider';
}

/// See also [deleteLocalPosts].
class DeleteLocalPostsProvider extends AutoDisposeFutureProvider<void> {
  /// See also [deleteLocalPosts].
  DeleteLocalPostsProvider({
    required this.id,
  }) : super.internal(
          (ref) => deleteLocalPosts(
            ref,
            id: id,
          ),
          from: deleteLocalPostsProvider,
          name: r'deleteLocalPostsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$deleteLocalPostsHash,
          dependencies: DeleteLocalPostsFamily._dependencies,
          allTransitiveDependencies:
              DeleteLocalPostsFamily._allTransitiveDependencies,
        );

  final int id;

  @override
  bool operator ==(Object other) {
    return other is DeleteLocalPostsProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
