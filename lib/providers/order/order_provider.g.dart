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
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
