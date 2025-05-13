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
String _$createProductHash() => r'499b60e719778b64406a970d0da09082c37c1f1e';

/// See also [createProduct].
@ProviderFor(createProduct)
const createProductProvider = CreateProductFamily();

/// See also [createProduct].
class CreateProductFamily extends Family<AsyncValue<CreateProductModel>> {
  /// See also [createProduct].
  const CreateProductFamily();

  /// See also [createProduct].
  CreateProductProvider call({
    required String productName,
    required String description,
    required int price,
    required int stock,
    required File imageUrl,
    required bool isFeatured,
    required bool isNew,
    required String categoryId,
    required String createdById,
  }) {
    return CreateProductProvider(
      productName: productName,
      description: description,
      price: price,
      stock: stock,
      imageUrl: imageUrl,
      isFeatured: isFeatured,
      isNew: isNew,
      categoryId: categoryId,
      createdById: createdById,
    );
  }

  @override
  CreateProductProvider getProviderOverride(
    covariant CreateProductProvider provider,
  ) {
    return call(
      productName: provider.productName,
      description: provider.description,
      price: provider.price,
      stock: provider.stock,
      imageUrl: provider.imageUrl,
      isFeatured: provider.isFeatured,
      isNew: provider.isNew,
      categoryId: provider.categoryId,
      createdById: provider.createdById,
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
  String? get name => r'createProductProvider';
}

/// See also [createProduct].
class CreateProductProvider
    extends AutoDisposeFutureProvider<CreateProductModel> {
  /// See also [createProduct].
  CreateProductProvider({
    required String productName,
    required String description,
    required int price,
    required int stock,
    required File imageUrl,
    required bool isFeatured,
    required bool isNew,
    required String categoryId,
    required String createdById,
  }) : this._internal(
          (ref) => createProduct(
            ref as CreateProductRef,
            productName: productName,
            description: description,
            price: price,
            stock: stock,
            imageUrl: imageUrl,
            isFeatured: isFeatured,
            isNew: isNew,
            categoryId: categoryId,
            createdById: createdById,
          ),
          from: createProductProvider,
          name: r'createProductProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$createProductHash,
          dependencies: CreateProductFamily._dependencies,
          allTransitiveDependencies:
              CreateProductFamily._allTransitiveDependencies,
          productName: productName,
          description: description,
          price: price,
          stock: stock,
          imageUrl: imageUrl,
          isFeatured: isFeatured,
          isNew: isNew,
          categoryId: categoryId,
          createdById: createdById,
        );

  CreateProductProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.productName,
    required this.description,
    required this.price,
    required this.stock,
    required this.imageUrl,
    required this.isFeatured,
    required this.isNew,
    required this.categoryId,
    required this.createdById,
  }) : super.internal();

  final String productName;
  final String description;
  final int price;
  final int stock;
  final File imageUrl;
  final bool isFeatured;
  final bool isNew;
  final String categoryId;
  final String createdById;

  @override
  Override overrideWith(
    FutureOr<CreateProductModel> Function(CreateProductRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: CreateProductProvider._internal(
        (ref) => create(ref as CreateProductRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        productName: productName,
        description: description,
        price: price,
        stock: stock,
        imageUrl: imageUrl,
        isFeatured: isFeatured,
        isNew: isNew,
        categoryId: categoryId,
        createdById: createdById,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<CreateProductModel> createElement() {
    return _CreateProductProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CreateProductProvider &&
        other.productName == productName &&
        other.description == description &&
        other.price == price &&
        other.stock == stock &&
        other.imageUrl == imageUrl &&
        other.isFeatured == isFeatured &&
        other.isNew == isNew &&
        other.categoryId == categoryId &&
        other.createdById == createdById;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, productName.hashCode);
    hash = _SystemHash.combine(hash, description.hashCode);
    hash = _SystemHash.combine(hash, price.hashCode);
    hash = _SystemHash.combine(hash, stock.hashCode);
    hash = _SystemHash.combine(hash, imageUrl.hashCode);
    hash = _SystemHash.combine(hash, isFeatured.hashCode);
    hash = _SystemHash.combine(hash, isNew.hashCode);
    hash = _SystemHash.combine(hash, categoryId.hashCode);
    hash = _SystemHash.combine(hash, createdById.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin CreateProductRef on AutoDisposeFutureProviderRef<CreateProductModel> {
  /// The parameter `productName` of this provider.
  String get productName;

  /// The parameter `description` of this provider.
  String get description;

  /// The parameter `price` of this provider.
  int get price;

  /// The parameter `stock` of this provider.
  int get stock;

  /// The parameter `imageUrl` of this provider.
  File get imageUrl;

  /// The parameter `isFeatured` of this provider.
  bool get isFeatured;

  /// The parameter `isNew` of this provider.
  bool get isNew;

  /// The parameter `categoryId` of this provider.
  String get categoryId;

  /// The parameter `createdById` of this provider.
  String get createdById;
}

class _CreateProductProviderElement
    extends AutoDisposeFutureProviderElement<CreateProductModel>
    with CreateProductRef {
  _CreateProductProviderElement(super.provider);

  @override
  String get productName => (origin as CreateProductProvider).productName;
  @override
  String get description => (origin as CreateProductProvider).description;
  @override
  int get price => (origin as CreateProductProvider).price;
  @override
  int get stock => (origin as CreateProductProvider).stock;
  @override
  File get imageUrl => (origin as CreateProductProvider).imageUrl;
  @override
  bool get isFeatured => (origin as CreateProductProvider).isFeatured;
  @override
  bool get isNew => (origin as CreateProductProvider).isNew;
  @override
  String get categoryId => (origin as CreateProductProvider).categoryId;
  @override
  String get createdById => (origin as CreateProductProvider).createdById;
}

String _$updateProductHash() => r'061fd44121780a0acd89914029ab4e87d0614003';

/// See also [updateProduct].
@ProviderFor(updateProduct)
const updateProductProvider = UpdateProductFamily();

/// See also [updateProduct].
class UpdateProductFamily extends Family<AsyncValue<CreateProductModel>> {
  /// See also [updateProduct].
  const UpdateProductFamily();

  /// See also [updateProduct].
  UpdateProductProvider call({
    required String productId,
    required String productName,
    required String description,
    required int price,
    required int stock,
    File? imageUrl,
    required bool isFeatured,
    required bool isNew,
    required String categoryId,
  }) {
    return UpdateProductProvider(
      productId: productId,
      productName: productName,
      description: description,
      price: price,
      stock: stock,
      imageUrl: imageUrl,
      isFeatured: isFeatured,
      isNew: isNew,
      categoryId: categoryId,
    );
  }

  @override
  UpdateProductProvider getProviderOverride(
    covariant UpdateProductProvider provider,
  ) {
    return call(
      productId: provider.productId,
      productName: provider.productName,
      description: provider.description,
      price: provider.price,
      stock: provider.stock,
      imageUrl: provider.imageUrl,
      isFeatured: provider.isFeatured,
      isNew: provider.isNew,
      categoryId: provider.categoryId,
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
  String? get name => r'updateProductProvider';
}

/// See also [updateProduct].
class UpdateProductProvider
    extends AutoDisposeFutureProvider<CreateProductModel> {
  /// See also [updateProduct].
  UpdateProductProvider({
    required String productId,
    required String productName,
    required String description,
    required int price,
    required int stock,
    File? imageUrl,
    required bool isFeatured,
    required bool isNew,
    required String categoryId,
  }) : this._internal(
          (ref) => updateProduct(
            ref as UpdateProductRef,
            productId: productId,
            productName: productName,
            description: description,
            price: price,
            stock: stock,
            imageUrl: imageUrl,
            isFeatured: isFeatured,
            isNew: isNew,
            categoryId: categoryId,
          ),
          from: updateProductProvider,
          name: r'updateProductProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$updateProductHash,
          dependencies: UpdateProductFamily._dependencies,
          allTransitiveDependencies:
              UpdateProductFamily._allTransitiveDependencies,
          productId: productId,
          productName: productName,
          description: description,
          price: price,
          stock: stock,
          imageUrl: imageUrl,
          isFeatured: isFeatured,
          isNew: isNew,
          categoryId: categoryId,
        );

  UpdateProductProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.productId,
    required this.productName,
    required this.description,
    required this.price,
    required this.stock,
    required this.imageUrl,
    required this.isFeatured,
    required this.isNew,
    required this.categoryId,
  }) : super.internal();

  final String productId;
  final String productName;
  final String description;
  final int price;
  final int stock;
  final File? imageUrl;
  final bool isFeatured;
  final bool isNew;
  final String categoryId;

  @override
  Override overrideWith(
    FutureOr<CreateProductModel> Function(UpdateProductRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: UpdateProductProvider._internal(
        (ref) => create(ref as UpdateProductRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        productId: productId,
        productName: productName,
        description: description,
        price: price,
        stock: stock,
        imageUrl: imageUrl,
        isFeatured: isFeatured,
        isNew: isNew,
        categoryId: categoryId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<CreateProductModel> createElement() {
    return _UpdateProductProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is UpdateProductProvider &&
        other.productId == productId &&
        other.productName == productName &&
        other.description == description &&
        other.price == price &&
        other.stock == stock &&
        other.imageUrl == imageUrl &&
        other.isFeatured == isFeatured &&
        other.isNew == isNew &&
        other.categoryId == categoryId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, productId.hashCode);
    hash = _SystemHash.combine(hash, productName.hashCode);
    hash = _SystemHash.combine(hash, description.hashCode);
    hash = _SystemHash.combine(hash, price.hashCode);
    hash = _SystemHash.combine(hash, stock.hashCode);
    hash = _SystemHash.combine(hash, imageUrl.hashCode);
    hash = _SystemHash.combine(hash, isFeatured.hashCode);
    hash = _SystemHash.combine(hash, isNew.hashCode);
    hash = _SystemHash.combine(hash, categoryId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin UpdateProductRef on AutoDisposeFutureProviderRef<CreateProductModel> {
  /// The parameter `productId` of this provider.
  String get productId;

  /// The parameter `productName` of this provider.
  String get productName;

  /// The parameter `description` of this provider.
  String get description;

  /// The parameter `price` of this provider.
  int get price;

  /// The parameter `stock` of this provider.
  int get stock;

  /// The parameter `imageUrl` of this provider.
  File? get imageUrl;

  /// The parameter `isFeatured` of this provider.
  bool get isFeatured;

  /// The parameter `isNew` of this provider.
  bool get isNew;

  /// The parameter `categoryId` of this provider.
  String get categoryId;
}

class _UpdateProductProviderElement
    extends AutoDisposeFutureProviderElement<CreateProductModel>
    with UpdateProductRef {
  _UpdateProductProviderElement(super.provider);

  @override
  String get productId => (origin as UpdateProductProvider).productId;
  @override
  String get productName => (origin as UpdateProductProvider).productName;
  @override
  String get description => (origin as UpdateProductProvider).description;
  @override
  int get price => (origin as UpdateProductProvider).price;
  @override
  int get stock => (origin as UpdateProductProvider).stock;
  @override
  File? get imageUrl => (origin as UpdateProductProvider).imageUrl;
  @override
  bool get isFeatured => (origin as UpdateProductProvider).isFeatured;
  @override
  bool get isNew => (origin as UpdateProductProvider).isNew;
  @override
  String get categoryId => (origin as UpdateProductProvider).categoryId;
}

String _$deleteProductHash() => r'2a03069acf1fdc7220056b0ee4c06184ac0d178d';

/// See also [deleteProduct].
@ProviderFor(deleteProduct)
const deleteProductProvider = DeleteProductFamily();

/// See also [deleteProduct].
class DeleteProductFamily extends Family<AsyncValue<DeleteProductModel>> {
  /// See also [deleteProduct].
  const DeleteProductFamily();

  /// See also [deleteProduct].
  DeleteProductProvider call({
    required String productId,
  }) {
    return DeleteProductProvider(
      productId: productId,
    );
  }

  @override
  DeleteProductProvider getProviderOverride(
    covariant DeleteProductProvider provider,
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
  String? get name => r'deleteProductProvider';
}

/// See also [deleteProduct].
class DeleteProductProvider
    extends AutoDisposeFutureProvider<DeleteProductModel> {
  /// See also [deleteProduct].
  DeleteProductProvider({
    required String productId,
  }) : this._internal(
          (ref) => deleteProduct(
            ref as DeleteProductRef,
            productId: productId,
          ),
          from: deleteProductProvider,
          name: r'deleteProductProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$deleteProductHash,
          dependencies: DeleteProductFamily._dependencies,
          allTransitiveDependencies:
              DeleteProductFamily._allTransitiveDependencies,
          productId: productId,
        );

  DeleteProductProvider._internal(
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
    FutureOr<DeleteProductModel> Function(DeleteProductRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: DeleteProductProvider._internal(
        (ref) => create(ref as DeleteProductRef),
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
  AutoDisposeFutureProviderElement<DeleteProductModel> createElement() {
    return _DeleteProductProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is DeleteProductProvider && other.productId == productId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, productId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin DeleteProductRef on AutoDisposeFutureProviderRef<DeleteProductModel> {
  /// The parameter `productId` of this provider.
  String get productId;
}

class _DeleteProductProviderElement
    extends AutoDisposeFutureProviderElement<DeleteProductModel>
    with DeleteProductRef {
  _DeleteProductProviderElement(super.provider);

  @override
  String get productId => (origin as DeleteProductProvider).productId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
