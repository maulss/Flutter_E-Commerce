// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$categoryProductHash() => r'd45c846706b806b6b86a026dd641e085607cf561';

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

/// See also [categoryProduct].
@ProviderFor(categoryProduct)
const categoryProductProvider = CategoryProductFamily();

/// See also [categoryProduct].
class CategoryProductFamily extends Family<AsyncValue<CategoryProductModel>> {
  /// See also [categoryProduct].
  const CategoryProductFamily();

  /// See also [categoryProduct].
  CategoryProductProvider call({
    required String productId,
  }) {
    return CategoryProductProvider(
      productId: productId,
    );
  }

  @override
  CategoryProductProvider getProviderOverride(
    covariant CategoryProductProvider provider,
  ) {
    return call(
      productId: provider.productId,
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
  String? get name => r'categoryProductProvider';
}

/// See also [categoryProduct].
class CategoryProductProvider
    extends AutoDisposeFutureProvider<CategoryProductModel> {
  /// See also [categoryProduct].
  CategoryProductProvider({
    required String productId,
  }) : this._internal(
          (ref) => categoryProduct(
            ref as CategoryProductRef,
            productId: productId,
          ),
          from: categoryProductProvider,
          name: r'categoryProductProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$categoryProductHash,
          dependencies: CategoryProductFamily._dependencies,
          allTransitiveDependencies:
              CategoryProductFamily._allTransitiveDependencies,
          productId: productId,
        );

  CategoryProductProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.productId,
  }) : super.internal();

  final String productId;

  @override
  Override overrideWith(
    FutureOr<CategoryProductModel> Function(CategoryProductRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: CategoryProductProvider._internal(
        (ref) => create(ref as CategoryProductRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        productId: productId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<CategoryProductModel> createElement() {
    return _CategoryProductProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CategoryProductProvider && other.productId == productId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, productId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin CategoryProductRef on AutoDisposeFutureProviderRef<CategoryProductModel> {
  /// The parameter `productId` of this provider.
  String get productId;
}

class _CategoryProductProviderElement
    extends AutoDisposeFutureProviderElement<CategoryProductModel>
    with CategoryProductRef {
  _CategoryProductProviderElement(super.provider);

  @override
  String get productId => (origin as CategoryProductProvider).productId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
