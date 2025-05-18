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

String _$createCategoryHash() => r'6bbb1bae0e2d31a6252ee856937dc1922d1163eb';

/// See also [createCategory].
@ProviderFor(createCategory)
const createCategoryProvider = CreateCategoryFamily();

/// See also [createCategory].
class CreateCategoryFamily extends Family<AsyncValue<CreateCategoryModel>> {
  /// See also [createCategory].
  const CreateCategoryFamily();

  /// See also [createCategory].
  CreateCategoryProvider call({
    required String categoryName,
    required String categoryId,
    File? imageUrl,
    required String description,
  }) {
    return CreateCategoryProvider(
      categoryName: categoryName,
      categoryId: categoryId,
      imageUrl: imageUrl,
      description: description,
    );
  }

  @override
  CreateCategoryProvider getProviderOverride(
    covariant CreateCategoryProvider provider,
  ) {
    return call(
      categoryName: provider.categoryName,
      categoryId: provider.categoryId,
      imageUrl: provider.imageUrl,
      description: provider.description,
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
  String? get name => r'createCategoryProvider';
}

/// See also [createCategory].
class CreateCategoryProvider
    extends AutoDisposeFutureProvider<CreateCategoryModel> {
  /// See also [createCategory].
  CreateCategoryProvider({
    required String categoryName,
    required String categoryId,
    File? imageUrl,
    required String description,
  }) : this._internal(
          (ref) => createCategory(
            ref as CreateCategoryRef,
            categoryName: categoryName,
            categoryId: categoryId,
            imageUrl: imageUrl,
            description: description,
          ),
          from: createCategoryProvider,
          name: r'createCategoryProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$createCategoryHash,
          dependencies: CreateCategoryFamily._dependencies,
          allTransitiveDependencies:
              CreateCategoryFamily._allTransitiveDependencies,
          categoryName: categoryName,
          categoryId: categoryId,
          imageUrl: imageUrl,
          description: description,
        );

  CreateCategoryProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.categoryName,
    required this.categoryId,
    required this.imageUrl,
    required this.description,
  }) : super.internal();

  final String categoryName;
  final String categoryId;
  final File? imageUrl;
  final String description;

  @override
  Override overrideWith(
    FutureOr<CreateCategoryModel> Function(CreateCategoryRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: CreateCategoryProvider._internal(
        (ref) => create(ref as CreateCategoryRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        categoryName: categoryName,
        categoryId: categoryId,
        imageUrl: imageUrl,
        description: description,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<CreateCategoryModel> createElement() {
    return _CreateCategoryProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CreateCategoryProvider &&
        other.categoryName == categoryName &&
        other.categoryId == categoryId &&
        other.imageUrl == imageUrl &&
        other.description == description;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, categoryName.hashCode);
    hash = _SystemHash.combine(hash, categoryId.hashCode);
    hash = _SystemHash.combine(hash, imageUrl.hashCode);
    hash = _SystemHash.combine(hash, description.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin CreateCategoryRef on AutoDisposeFutureProviderRef<CreateCategoryModel> {
  /// The parameter `categoryName` of this provider.
  String get categoryName;

  /// The parameter `categoryId` of this provider.
  String get categoryId;

  /// The parameter `imageUrl` of this provider.
  File? get imageUrl;

  /// The parameter `description` of this provider.
  String get description;
}

class _CreateCategoryProviderElement
    extends AutoDisposeFutureProviderElement<CreateCategoryModel>
    with CreateCategoryRef {
  _CreateCategoryProviderElement(super.provider);

  @override
  String get categoryName => (origin as CreateCategoryProvider).categoryName;
  @override
  String get categoryId => (origin as CreateCategoryProvider).categoryId;
  @override
  File? get imageUrl => (origin as CreateCategoryProvider).imageUrl;
  @override
  String get description => (origin as CreateCategoryProvider).description;
}

String _$updateCategoryHash() => r'f96bc226010137e247a85e20f4d798b82b124841';

/// See also [updateCategory].
@ProviderFor(updateCategory)
const updateCategoryProvider = UpdateCategoryFamily();

/// See also [updateCategory].
class UpdateCategoryFamily extends Family<AsyncValue<CreateCategoryModel>> {
  /// See also [updateCategory].
  const UpdateCategoryFamily();

  /// See also [updateCategory].
  UpdateCategoryProvider call({
    required String categoryName,
    required String categoryId,
    File? imageUrl,
    required String description,
  }) {
    return UpdateCategoryProvider(
      categoryName: categoryName,
      categoryId: categoryId,
      imageUrl: imageUrl,
      description: description,
    );
  }

  @override
  UpdateCategoryProvider getProviderOverride(
    covariant UpdateCategoryProvider provider,
  ) {
    return call(
      categoryName: provider.categoryName,
      categoryId: provider.categoryId,
      imageUrl: provider.imageUrl,
      description: provider.description,
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
  String? get name => r'updateCategoryProvider';
}

/// See also [updateCategory].
class UpdateCategoryProvider
    extends AutoDisposeFutureProvider<CreateCategoryModel> {
  /// See also [updateCategory].
  UpdateCategoryProvider({
    required String categoryName,
    required String categoryId,
    File? imageUrl,
    required String description,
  }) : this._internal(
          (ref) => updateCategory(
            ref as UpdateCategoryRef,
            categoryName: categoryName,
            categoryId: categoryId,
            imageUrl: imageUrl,
            description: description,
          ),
          from: updateCategoryProvider,
          name: r'updateCategoryProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$updateCategoryHash,
          dependencies: UpdateCategoryFamily._dependencies,
          allTransitiveDependencies:
              UpdateCategoryFamily._allTransitiveDependencies,
          categoryName: categoryName,
          categoryId: categoryId,
          imageUrl: imageUrl,
          description: description,
        );

  UpdateCategoryProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.categoryName,
    required this.categoryId,
    required this.imageUrl,
    required this.description,
  }) : super.internal();

  final String categoryName;
  final String categoryId;
  final File? imageUrl;
  final String description;

  @override
  Override overrideWith(
    FutureOr<CreateCategoryModel> Function(UpdateCategoryRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: UpdateCategoryProvider._internal(
        (ref) => create(ref as UpdateCategoryRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        categoryName: categoryName,
        categoryId: categoryId,
        imageUrl: imageUrl,
        description: description,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<CreateCategoryModel> createElement() {
    return _UpdateCategoryProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is UpdateCategoryProvider &&
        other.categoryName == categoryName &&
        other.categoryId == categoryId &&
        other.imageUrl == imageUrl &&
        other.description == description;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, categoryName.hashCode);
    hash = _SystemHash.combine(hash, categoryId.hashCode);
    hash = _SystemHash.combine(hash, imageUrl.hashCode);
    hash = _SystemHash.combine(hash, description.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin UpdateCategoryRef on AutoDisposeFutureProviderRef<CreateCategoryModel> {
  /// The parameter `categoryName` of this provider.
  String get categoryName;

  /// The parameter `categoryId` of this provider.
  String get categoryId;

  /// The parameter `imageUrl` of this provider.
  File? get imageUrl;

  /// The parameter `description` of this provider.
  String get description;
}

class _UpdateCategoryProviderElement
    extends AutoDisposeFutureProviderElement<CreateCategoryModel>
    with UpdateCategoryRef {
  _UpdateCategoryProviderElement(super.provider);

  @override
  String get categoryName => (origin as UpdateCategoryProvider).categoryName;
  @override
  String get categoryId => (origin as UpdateCategoryProvider).categoryId;
  @override
  File? get imageUrl => (origin as UpdateCategoryProvider).imageUrl;
  @override
  String get description => (origin as UpdateCategoryProvider).description;
}

String _$getDetailCategoryHash() => r'bc954b05704234db3a89dbfd47dd92c90896f772';

/// See also [getDetailCategory].
@ProviderFor(getDetailCategory)
const getDetailCategoryProvider = GetDetailCategoryFamily();

/// See also [getDetailCategory].
class GetDetailCategoryFamily extends Family<AsyncValue<CreateCategoryModel>> {
  /// See also [getDetailCategory].
  const GetDetailCategoryFamily();

  /// See also [getDetailCategory].
  GetDetailCategoryProvider call({
    required String categoryId,
  }) {
    return GetDetailCategoryProvider(
      categoryId: categoryId,
    );
  }

  @override
  GetDetailCategoryProvider getProviderOverride(
    covariant GetDetailCategoryProvider provider,
  ) {
    return call(
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
  String? get name => r'getDetailCategoryProvider';
}

/// See also [getDetailCategory].
class GetDetailCategoryProvider
    extends AutoDisposeFutureProvider<CreateCategoryModel> {
  /// See also [getDetailCategory].
  GetDetailCategoryProvider({
    required String categoryId,
  }) : this._internal(
          (ref) => getDetailCategory(
            ref as GetDetailCategoryRef,
            categoryId: categoryId,
          ),
          from: getDetailCategoryProvider,
          name: r'getDetailCategoryProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getDetailCategoryHash,
          dependencies: GetDetailCategoryFamily._dependencies,
          allTransitiveDependencies:
              GetDetailCategoryFamily._allTransitiveDependencies,
          categoryId: categoryId,
        );

  GetDetailCategoryProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.categoryId,
  }) : super.internal();

  final String categoryId;

  @override
  Override overrideWith(
    FutureOr<CreateCategoryModel> Function(GetDetailCategoryRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetDetailCategoryProvider._internal(
        (ref) => create(ref as GetDetailCategoryRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        categoryId: categoryId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<CreateCategoryModel> createElement() {
    return _GetDetailCategoryProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetDetailCategoryProvider && other.categoryId == categoryId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, categoryId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GetDetailCategoryRef
    on AutoDisposeFutureProviderRef<CreateCategoryModel> {
  /// The parameter `categoryId` of this provider.
  String get categoryId;
}

class _GetDetailCategoryProviderElement
    extends AutoDisposeFutureProviderElement<CreateCategoryModel>
    with GetDetailCategoryRef {
  _GetDetailCategoryProviderElement(super.provider);

  @override
  String get categoryId => (origin as GetDetailCategoryProvider).categoryId;
}

String _$deleteCategoryHash() => r'14de4045e0953be1c965a73a67f87b69142d3554';

/// See also [deleteCategory].
@ProviderFor(deleteCategory)
const deleteCategoryProvider = DeleteCategoryFamily();

/// See also [deleteCategory].
class DeleteCategoryFamily extends Family<AsyncValue<DeleteProductModel>> {
  /// See also [deleteCategory].
  const DeleteCategoryFamily();

  /// See also [deleteCategory].
  DeleteCategoryProvider call({
    required String categoryId,
  }) {
    return DeleteCategoryProvider(
      categoryId: categoryId,
    );
  }

  @override
  DeleteCategoryProvider getProviderOverride(
    covariant DeleteCategoryProvider provider,
  ) {
    return call(
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
  String? get name => r'deleteCategoryProvider';
}

/// See also [deleteCategory].
class DeleteCategoryProvider
    extends AutoDisposeFutureProvider<DeleteProductModel> {
  /// See also [deleteCategory].
  DeleteCategoryProvider({
    required String categoryId,
  }) : this._internal(
          (ref) => deleteCategory(
            ref as DeleteCategoryRef,
            categoryId: categoryId,
          ),
          from: deleteCategoryProvider,
          name: r'deleteCategoryProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$deleteCategoryHash,
          dependencies: DeleteCategoryFamily._dependencies,
          allTransitiveDependencies:
              DeleteCategoryFamily._allTransitiveDependencies,
          categoryId: categoryId,
        );

  DeleteCategoryProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.categoryId,
  }) : super.internal();

  final String categoryId;

  @override
  Override overrideWith(
    FutureOr<DeleteProductModel> Function(DeleteCategoryRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: DeleteCategoryProvider._internal(
        (ref) => create(ref as DeleteCategoryRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        categoryId: categoryId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<DeleteProductModel> createElement() {
    return _DeleteCategoryProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is DeleteCategoryProvider && other.categoryId == categoryId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, categoryId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin DeleteCategoryRef on AutoDisposeFutureProviderRef<DeleteProductModel> {
  /// The parameter `categoryId` of this provider.
  String get categoryId;
}

class _DeleteCategoryProviderElement
    extends AutoDisposeFutureProviderElement<DeleteProductModel>
    with DeleteCategoryRef {
  _DeleteCategoryProviderElement(super.provider);

  @override
  String get categoryId => (origin as DeleteCategoryProvider).categoryId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
