// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getDetailProductHash() => r'369be750c18b9040c5a4295be6452d843e081359';

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

/// See also [getDetailProduct].
@ProviderFor(getDetailProduct)
const getDetailProductProvider = GetDetailProductFamily();

/// See also [getDetailProduct].
class GetDetailProductFamily extends Family<AsyncValue<DetailProductModel>> {
  /// See also [getDetailProduct].
  const GetDetailProductFamily();

  /// See also [getDetailProduct].
  GetDetailProductProvider call({
    required String productId,
  }) {
    return GetDetailProductProvider(
      productId: productId,
    );
  }

  @override
  GetDetailProductProvider getProviderOverride(
    covariant GetDetailProductProvider provider,
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
  String? get name => r'getDetailProductProvider';
}

/// See also [getDetailProduct].
class GetDetailProductProvider
    extends AutoDisposeFutureProvider<DetailProductModel> {
  /// See also [getDetailProduct].
  GetDetailProductProvider({
    required String productId,
  }) : this._internal(
          (ref) => getDetailProduct(
            ref as GetDetailProductRef,
            productId: productId,
          ),
          from: getDetailProductProvider,
          name: r'getDetailProductProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getDetailProductHash,
          dependencies: GetDetailProductFamily._dependencies,
          allTransitiveDependencies:
              GetDetailProductFamily._allTransitiveDependencies,
          productId: productId,
        );

  GetDetailProductProvider._internal(
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
    FutureOr<DetailProductModel> Function(GetDetailProductRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetDetailProductProvider._internal(
        (ref) => create(ref as GetDetailProductRef),
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
  AutoDisposeFutureProviderElement<DetailProductModel> createElement() {
    return _GetDetailProductProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetDetailProductProvider && other.productId == productId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, productId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GetDetailProductRef on AutoDisposeFutureProviderRef<DetailProductModel> {
  /// The parameter `productId` of this provider.
  String get productId;
}

class _GetDetailProductProviderElement
    extends AutoDisposeFutureProviderElement<DetailProductModel>
    with GetDetailProductRef {
  _GetDetailProductProviderElement(super.provider);

  @override
  String get productId => (origin as GetDetailProductProvider).productId;
}

String _$searchProductHash() => r'a8ea42fb76f40e92f0c66fb39238bc4d10282b51';

/// See also [searchProduct].
@ProviderFor(searchProduct)
const searchProductProvider = SearchProductFamily();

/// See also [searchProduct].
class SearchProductFamily extends Family<AsyncValue<ProductModel>> {
  /// See also [searchProduct].
  const SearchProductFamily();

  /// See also [searchProduct].
  SearchProductProvider call({
    required String searchQuery,
  }) {
    return SearchProductProvider(
      searchQuery: searchQuery,
    );
  }

  @override
  SearchProductProvider getProviderOverride(
    covariant SearchProductProvider provider,
  ) {
    return call(
      searchQuery: provider.searchQuery,
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
  String? get name => r'searchProductProvider';
}

/// See also [searchProduct].
class SearchProductProvider extends AutoDisposeFutureProvider<ProductModel> {
  /// See also [searchProduct].
  SearchProductProvider({
    required String searchQuery,
  }) : this._internal(
          (ref) => searchProduct(
            ref as SearchProductRef,
            searchQuery: searchQuery,
          ),
          from: searchProductProvider,
          name: r'searchProductProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$searchProductHash,
          dependencies: SearchProductFamily._dependencies,
          allTransitiveDependencies:
              SearchProductFamily._allTransitiveDependencies,
          searchQuery: searchQuery,
        );

  SearchProductProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.searchQuery,
  }) : super.internal();

  final String searchQuery;

  @override
  Override overrideWith(
    FutureOr<ProductModel> Function(SearchProductRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: SearchProductProvider._internal(
        (ref) => create(ref as SearchProductRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        searchQuery: searchQuery,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<ProductModel> createElement() {
    return _SearchProductProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SearchProductProvider && other.searchQuery == searchQuery;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, searchQuery.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin SearchProductRef on AutoDisposeFutureProviderRef<ProductModel> {
  /// The parameter `searchQuery` of this provider.
  String get searchQuery;
}

class _SearchProductProviderElement
    extends AutoDisposeFutureProviderElement<ProductModel>
    with SearchProductRef {
  _SearchProductProviderElement(super.provider);

  @override
  String get searchQuery => (origin as SearchProductProvider).searchQuery;
}

String _$getProductHash() => r'17a77a90d33458e1ed70a6fbc042b77a00e1509c';

/// See also [getProduct].
@ProviderFor(getProduct)
final getProductProvider =
    AutoDisposeFutureProvider<GetProductResponseModel>.internal(
  getProduct,
  name: r'getProductProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$getProductHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef GetProductRef = AutoDisposeFutureProviderRef<GetProductResponseModel>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
