// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$createOrderHash() => r'32bed6a82ed646f917818b069d0ee361dd1f3a5a';

/// See also [createOrder].
@ProviderFor(createOrder)
final createOrderProvider =
    AutoDisposeFutureProvider<CreateOrderModel>.internal(
  createOrder,
  name: r'createOrderProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$createOrderHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef CreateOrderRef = AutoDisposeFutureProviderRef<CreateOrderModel>;
String _$getOrderHash() => r'100061370d377ba4e1843c6a9c2a638f8b97ffae';

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

/// See also [getOrder].
@ProviderFor(getOrder)
const getOrderProvider = GetOrderFamily();

/// See also [getOrder].
class GetOrderFamily extends Family<AsyncValue<GetOrderModel>> {
  /// See also [getOrder].
  const GetOrderFamily();

  /// See also [getOrder].
  GetOrderProvider call({
    required String status,
  }) {
    return GetOrderProvider(
      status: status,
    );
  }

  @override
  GetOrderProvider getProviderOverride(
    covariant GetOrderProvider provider,
  ) {
    return call(
      status: provider.status,
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
  String? get name => r'getOrderProvider';
}

/// See also [getOrder].
class GetOrderProvider extends AutoDisposeFutureProvider<GetOrderModel> {
  /// See also [getOrder].
  GetOrderProvider({
    required String status,
  }) : this._internal(
          (ref) => getOrder(
            ref as GetOrderRef,
            status: status,
          ),
          from: getOrderProvider,
          name: r'getOrderProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getOrderHash,
          dependencies: GetOrderFamily._dependencies,
          allTransitiveDependencies: GetOrderFamily._allTransitiveDependencies,
          status: status,
        );

  GetOrderProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.status,
  }) : super.internal();

  final String status;

  @override
  Override overrideWith(
    FutureOr<GetOrderModel> Function(GetOrderRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetOrderProvider._internal(
        (ref) => create(ref as GetOrderRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        status: status,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<GetOrderModel> createElement() {
    return _GetOrderProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetOrderProvider && other.status == status;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, status.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GetOrderRef on AutoDisposeFutureProviderRef<GetOrderModel> {
  /// The parameter `status` of this provider.
  String get status;
}

class _GetOrderProviderElement
    extends AutoDisposeFutureProviderElement<GetOrderModel> with GetOrderRef {
  _GetOrderProviderElement(super.provider);

  @override
  String get status => (origin as GetOrderProvider).status;
}

String _$cancelOrderHash() => r'd0cd2dd0171d431bd7cad5208eb0ba3f03a9994b';

/// See also [cancelOrder].
@ProviderFor(cancelOrder)
const cancelOrderProvider = CancelOrderFamily();

/// See also [cancelOrder].
class CancelOrderFamily extends Family<AsyncValue<CancelResponseModel>> {
  /// See also [cancelOrder].
  const CancelOrderFamily();

  /// See also [cancelOrder].
  CancelOrderProvider call({
    required String orderId,
  }) {
    return CancelOrderProvider(
      orderId: orderId,
    );
  }

  @override
  CancelOrderProvider getProviderOverride(
    covariant CancelOrderProvider provider,
  ) {
    return call(
      orderId: provider.orderId,
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
  String? get name => r'cancelOrderProvider';
}

/// See also [cancelOrder].
class CancelOrderProvider
    extends AutoDisposeFutureProvider<CancelResponseModel> {
  /// See also [cancelOrder].
  CancelOrderProvider({
    required String orderId,
  }) : this._internal(
          (ref) => cancelOrder(
            ref as CancelOrderRef,
            orderId: orderId,
          ),
          from: cancelOrderProvider,
          name: r'cancelOrderProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$cancelOrderHash,
          dependencies: CancelOrderFamily._dependencies,
          allTransitiveDependencies:
              CancelOrderFamily._allTransitiveDependencies,
          orderId: orderId,
        );

  CancelOrderProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.orderId,
  }) : super.internal();

  final String orderId;

  @override
  Override overrideWith(
    FutureOr<CancelResponseModel> Function(CancelOrderRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: CancelOrderProvider._internal(
        (ref) => create(ref as CancelOrderRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        orderId: orderId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<CancelResponseModel> createElement() {
    return _CancelOrderProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CancelOrderProvider && other.orderId == orderId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, orderId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin CancelOrderRef on AutoDisposeFutureProviderRef<CancelResponseModel> {
  /// The parameter `orderId` of this provider.
  String get orderId;
}

class _CancelOrderProviderElement
    extends AutoDisposeFutureProviderElement<CancelResponseModel>
    with CancelOrderRef {
  _CancelOrderProviderElement(super.provider);

  @override
  String get orderId => (origin as CancelOrderProvider).orderId;
}

String _$getOrderDetailHash() => r'14ad93f8eac566e89f98fd7ee47c99fd942fc499';

/// See also [getOrderDetail].
@ProviderFor(getOrderDetail)
const getOrderDetailProvider = GetOrderDetailFamily();

/// See also [getOrderDetail].
class GetOrderDetailFamily extends Family<AsyncValue<OrderDetailModel>> {
  /// See also [getOrderDetail].
  const GetOrderDetailFamily();

  /// See also [getOrderDetail].
  GetOrderDetailProvider call({
    required String orderId,
  }) {
    return GetOrderDetailProvider(
      orderId: orderId,
    );
  }

  @override
  GetOrderDetailProvider getProviderOverride(
    covariant GetOrderDetailProvider provider,
  ) {
    return call(
      orderId: provider.orderId,
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
  String? get name => r'getOrderDetailProvider';
}

/// See also [getOrderDetail].
class GetOrderDetailProvider
    extends AutoDisposeFutureProvider<OrderDetailModel> {
  /// See also [getOrderDetail].
  GetOrderDetailProvider({
    required String orderId,
  }) : this._internal(
          (ref) => getOrderDetail(
            ref as GetOrderDetailRef,
            orderId: orderId,
          ),
          from: getOrderDetailProvider,
          name: r'getOrderDetailProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getOrderDetailHash,
          dependencies: GetOrderDetailFamily._dependencies,
          allTransitiveDependencies:
              GetOrderDetailFamily._allTransitiveDependencies,
          orderId: orderId,
        );

  GetOrderDetailProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.orderId,
  }) : super.internal();

  final String orderId;

  @override
  Override overrideWith(
    FutureOr<OrderDetailModel> Function(GetOrderDetailRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetOrderDetailProvider._internal(
        (ref) => create(ref as GetOrderDetailRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        orderId: orderId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<OrderDetailModel> createElement() {
    return _GetOrderDetailProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetOrderDetailProvider && other.orderId == orderId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, orderId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GetOrderDetailRef on AutoDisposeFutureProviderRef<OrderDetailModel> {
  /// The parameter `orderId` of this provider.
  String get orderId;
}

class _GetOrderDetailProviderElement
    extends AutoDisposeFutureProviderElement<OrderDetailModel>
    with GetOrderDetailRef {
  _GetOrderDetailProviderElement(super.provider);

  @override
  String get orderId => (origin as GetOrderDetailProvider).orderId;
}

String _$getBlockchainTransactionHash() =>
    r'f179fc1bb9bd404ad5d048a116a10e079bd4996a';

/// See also [getBlockchainTransaction].
@ProviderFor(getBlockchainTransaction)
const getBlockchainTransactionProvider = GetBlockchainTransactionFamily();

/// See also [getBlockchainTransaction].
class GetBlockchainTransactionFamily
    extends Family<AsyncValue<BlockchainTransactionModel>> {
  /// See also [getBlockchainTransaction].
  const GetBlockchainTransactionFamily();

  /// See also [getBlockchainTransaction].
  GetBlockchainTransactionProvider call({
    required String orderId,
  }) {
    return GetBlockchainTransactionProvider(
      orderId: orderId,
    );
  }

  @override
  GetBlockchainTransactionProvider getProviderOverride(
    covariant GetBlockchainTransactionProvider provider,
  ) {
    return call(
      orderId: provider.orderId,
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
  String? get name => r'getBlockchainTransactionProvider';
}

/// See also [getBlockchainTransaction].
class GetBlockchainTransactionProvider
    extends AutoDisposeFutureProvider<BlockchainTransactionModel> {
  /// See also [getBlockchainTransaction].
  GetBlockchainTransactionProvider({
    required String orderId,
  }) : this._internal(
          (ref) => getBlockchainTransaction(
            ref as GetBlockchainTransactionRef,
            orderId: orderId,
          ),
          from: getBlockchainTransactionProvider,
          name: r'getBlockchainTransactionProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getBlockchainTransactionHash,
          dependencies: GetBlockchainTransactionFamily._dependencies,
          allTransitiveDependencies:
              GetBlockchainTransactionFamily._allTransitiveDependencies,
          orderId: orderId,
        );

  GetBlockchainTransactionProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.orderId,
  }) : super.internal();

  final String orderId;

  @override
  Override overrideWith(
    FutureOr<BlockchainTransactionModel> Function(
            GetBlockchainTransactionRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetBlockchainTransactionProvider._internal(
        (ref) => create(ref as GetBlockchainTransactionRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        orderId: orderId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<BlockchainTransactionModel> createElement() {
    return _GetBlockchainTransactionProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetBlockchainTransactionProvider &&
        other.orderId == orderId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, orderId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GetBlockchainTransactionRef
    on AutoDisposeFutureProviderRef<BlockchainTransactionModel> {
  /// The parameter `orderId` of this provider.
  String get orderId;
}

class _GetBlockchainTransactionProviderElement
    extends AutoDisposeFutureProviderElement<BlockchainTransactionModel>
    with GetBlockchainTransactionRef {
  _GetBlockchainTransactionProviderElement(super.provider);

  @override
  String get orderId => (origin as GetBlockchainTransactionProvider).orderId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
