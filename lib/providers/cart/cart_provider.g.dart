// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$addToCartHash() => r'35c03da462411e34d114c9c8583bd5be48ceba6e';

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

/// See also [addToCart].
@ProviderFor(addToCart)
const addToCartProvider = AddToCartFamily();

/// See also [addToCart].
class AddToCartFamily extends Family<AsyncValue<RegisterModel>> {
  /// See also [addToCart].
  const AddToCartFamily();

  /// See also [addToCart].
  AddToCartProvider call({
    required String productId,
    required int quantity,
  }) {
    return AddToCartProvider(
      productId: productId,
      quantity: quantity,
    );
  }

  @override
  AddToCartProvider getProviderOverride(
    covariant AddToCartProvider provider,
  ) {
    return call(
      productId: provider.productId,
      quantity: provider.quantity,
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
  String? get name => r'addToCartProvider';
}

/// See also [addToCart].
class AddToCartProvider extends AutoDisposeFutureProvider<RegisterModel> {
  /// See also [addToCart].
  AddToCartProvider({
    required String productId,
    required int quantity,
  }) : this._internal(
          (ref) => addToCart(
            ref as AddToCartRef,
            productId: productId,
            quantity: quantity,
          ),
          from: addToCartProvider,
          name: r'addToCartProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$addToCartHash,
          dependencies: AddToCartFamily._dependencies,
          allTransitiveDependencies: AddToCartFamily._allTransitiveDependencies,
          productId: productId,
          quantity: quantity,
        );

  AddToCartProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.productId,
    required this.quantity,
  }) : super.internal();

  final String productId;
  final int quantity;

  @override
  Override overrideWith(
    FutureOr<RegisterModel> Function(AddToCartRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: AddToCartProvider._internal(
        (ref) => create(ref as AddToCartRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        productId: productId,
        quantity: quantity,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<RegisterModel> createElement() {
    return _AddToCartProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is AddToCartProvider &&
        other.productId == productId &&
        other.quantity == quantity;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, productId.hashCode);
    hash = _SystemHash.combine(hash, quantity.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin AddToCartRef on AutoDisposeFutureProviderRef<RegisterModel> {
  /// The parameter `productId` of this provider.
  String get productId;

  /// The parameter `quantity` of this provider.
  int get quantity;
}

class _AddToCartProviderElement
    extends AutoDisposeFutureProviderElement<RegisterModel> with AddToCartRef {
  _AddToCartProviderElement(super.provider);

  @override
  String get productId => (origin as AddToCartProvider).productId;
  @override
  int get quantity => (origin as AddToCartProvider).quantity;
}

String _$getCartHash() => r'd9b8bd2d24f25963fb7efe8f32bc71a44cf3d0ca';

/// See also [getCart].
@ProviderFor(getCart)
final getCartProvider = AutoDisposeFutureProvider<GetCartModel>.internal(
  getCart,
  name: r'getCartProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$getCartHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef GetCartRef = AutoDisposeFutureProviderRef<GetCartModel>;
String _$deleteCartHash() => r'2bbef7af86e79a1498367d1349d26e1399ffa72d';

/// See also [deleteCart].
@ProviderFor(deleteCart)
const deleteCartProvider = DeleteCartFamily();

/// See also [deleteCart].
class DeleteCartFamily extends Family<AsyncValue<DeleteProductModel>> {
  /// See also [deleteCart].
  const DeleteCartFamily();

  /// See also [deleteCart].
  DeleteCartProvider call({
    required String productId,
  }) {
    return DeleteCartProvider(
      productId: productId,
    );
  }

  @override
  DeleteCartProvider getProviderOverride(
    covariant DeleteCartProvider provider,
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
  String? get name => r'deleteCartProvider';
}

/// See also [deleteCart].
class DeleteCartProvider extends AutoDisposeFutureProvider<DeleteProductModel> {
  /// See also [deleteCart].
  DeleteCartProvider({
    required String productId,
  }) : this._internal(
          (ref) => deleteCart(
            ref as DeleteCartRef,
            productId: productId,
          ),
          from: deleteCartProvider,
          name: r'deleteCartProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$deleteCartHash,
          dependencies: DeleteCartFamily._dependencies,
          allTransitiveDependencies:
              DeleteCartFamily._allTransitiveDependencies,
          productId: productId,
        );

  DeleteCartProvider._internal(
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
    FutureOr<DeleteProductModel> Function(DeleteCartRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: DeleteCartProvider._internal(
        (ref) => create(ref as DeleteCartRef),
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
    return _DeleteCartProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is DeleteCartProvider && other.productId == productId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, productId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin DeleteCartRef on AutoDisposeFutureProviderRef<DeleteProductModel> {
  /// The parameter `productId` of this provider.
  String get productId;
}

class _DeleteCartProviderElement
    extends AutoDisposeFutureProviderElement<DeleteProductModel>
    with DeleteCartRef {
  _DeleteCartProviderElement(super.provider);

  @override
  String get productId => (origin as DeleteCartProvider).productId;
}

String _$updateCartHash() => r'cf51d878e51c800a5435355da8be36785f749ece';

/// See also [updateCart].
@ProviderFor(updateCart)
const updateCartProvider = UpdateCartFamily();

/// See also [updateCart].
class UpdateCartFamily extends Family<AsyncValue<UpdateCartModel>> {
  /// See also [updateCart].
  const UpdateCartFamily();

  /// See also [updateCart].
  UpdateCartProvider call({
    required String productId,
    required int quantity,
  }) {
    return UpdateCartProvider(
      productId: productId,
      quantity: quantity,
    );
  }

  @override
  UpdateCartProvider getProviderOverride(
    covariant UpdateCartProvider provider,
  ) {
    return call(
      productId: provider.productId,
      quantity: provider.quantity,
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
  String? get name => r'updateCartProvider';
}

/// See also [updateCart].
class UpdateCartProvider extends AutoDisposeFutureProvider<UpdateCartModel> {
  /// See also [updateCart].
  UpdateCartProvider({
    required String productId,
    required int quantity,
  }) : this._internal(
          (ref) => updateCart(
            ref as UpdateCartRef,
            productId: productId,
            quantity: quantity,
          ),
          from: updateCartProvider,
          name: r'updateCartProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$updateCartHash,
          dependencies: UpdateCartFamily._dependencies,
          allTransitiveDependencies:
              UpdateCartFamily._allTransitiveDependencies,
          productId: productId,
          quantity: quantity,
        );

  UpdateCartProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.productId,
    required this.quantity,
  }) : super.internal();

  final String productId;
  final int quantity;

  @override
  Override overrideWith(
    FutureOr<UpdateCartModel> Function(UpdateCartRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: UpdateCartProvider._internal(
        (ref) => create(ref as UpdateCartRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        productId: productId,
        quantity: quantity,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<UpdateCartModel> createElement() {
    return _UpdateCartProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is UpdateCartProvider &&
        other.productId == productId &&
        other.quantity == quantity;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, productId.hashCode);
    hash = _SystemHash.combine(hash, quantity.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin UpdateCartRef on AutoDisposeFutureProviderRef<UpdateCartModel> {
  /// The parameter `productId` of this provider.
  String get productId;

  /// The parameter `quantity` of this provider.
  int get quantity;
}

class _UpdateCartProviderElement
    extends AutoDisposeFutureProviderElement<UpdateCartModel>
    with UpdateCartRef {
  _UpdateCartProviderElement(super.provider);

  @override
  String get productId => (origin as UpdateCartProvider).productId;
  @override
  int get quantity => (origin as UpdateCartProvider).quantity;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
