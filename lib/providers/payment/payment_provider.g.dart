// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$createPaymentHash() => r'1904535d3dde9186ea4a5910ea0380d15fe6f96b';

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

/// See also [createPayment].
@ProviderFor(createPayment)
const createPaymentProvider = CreatePaymentFamily();

/// See also [createPayment].
class CreatePaymentFamily extends Family<AsyncValue<PaymentResponseModel>> {
  /// See also [createPayment].
  const CreatePaymentFamily();

  /// See also [createPayment].
  CreatePaymentProvider call({
    required String orderId,
    required String paymentMethod,
  }) {
    return CreatePaymentProvider(
      orderId: orderId,
      paymentMethod: paymentMethod,
    );
  }

  @override
  CreatePaymentProvider getProviderOverride(
    covariant CreatePaymentProvider provider,
  ) {
    return call(
      orderId: provider.orderId,
      paymentMethod: provider.paymentMethod,
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
  String? get name => r'createPaymentProvider';
}

/// See also [createPayment].
class CreatePaymentProvider
    extends AutoDisposeFutureProvider<PaymentResponseModel> {
  /// See also [createPayment].
  CreatePaymentProvider({
    required String orderId,
    required String paymentMethod,
  }) : this._internal(
          (ref) => createPayment(
            ref as CreatePaymentRef,
            orderId: orderId,
            paymentMethod: paymentMethod,
          ),
          from: createPaymentProvider,
          name: r'createPaymentProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$createPaymentHash,
          dependencies: CreatePaymentFamily._dependencies,
          allTransitiveDependencies:
              CreatePaymentFamily._allTransitiveDependencies,
          orderId: orderId,
          paymentMethod: paymentMethod,
        );

  CreatePaymentProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.orderId,
    required this.paymentMethod,
  }) : super.internal();

  final String orderId;
  final String paymentMethod;

  @override
  Override overrideWith(
    FutureOr<PaymentResponseModel> Function(CreatePaymentRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: CreatePaymentProvider._internal(
        (ref) => create(ref as CreatePaymentRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        orderId: orderId,
        paymentMethod: paymentMethod,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<PaymentResponseModel> createElement() {
    return _CreatePaymentProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CreatePaymentProvider &&
        other.orderId == orderId &&
        other.paymentMethod == paymentMethod;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, orderId.hashCode);
    hash = _SystemHash.combine(hash, paymentMethod.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin CreatePaymentRef on AutoDisposeFutureProviderRef<PaymentResponseModel> {
  /// The parameter `orderId` of this provider.
  String get orderId;

  /// The parameter `paymentMethod` of this provider.
  String get paymentMethod;
}

class _CreatePaymentProviderElement
    extends AutoDisposeFutureProviderElement<PaymentResponseModel>
    with CreatePaymentRef {
  _CreatePaymentProviderElement(super.provider);

  @override
  String get orderId => (origin as CreatePaymentProvider).orderId;
  @override
  String get paymentMethod => (origin as CreatePaymentProvider).paymentMethod;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
