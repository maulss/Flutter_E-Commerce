// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$createPaymentHash() => r'9191f0c8858d2d5c79d2f1187c540e45dd4cdb92';

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
class CreatePaymentFamily extends Family<AsyncValue<CreatePaymentModel>> {
  /// See also [createPayment].
  const CreatePaymentFamily();

  /// See also [createPayment].
  CreatePaymentProvider call({
    required String orderId,
  }) {
    return CreatePaymentProvider(
      orderId: orderId,
    );
  }

  @override
  CreatePaymentProvider getProviderOverride(
    covariant CreatePaymentProvider provider,
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
  String? get name => r'createPaymentProvider';
}

/// See also [createPayment].
class CreatePaymentProvider
    extends AutoDisposeFutureProvider<CreatePaymentModel> {
  /// See also [createPayment].
  CreatePaymentProvider({
    required String orderId,
  }) : this._internal(
          (ref) => createPayment(
            ref as CreatePaymentRef,
            orderId: orderId,
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
        );

  CreatePaymentProvider._internal(
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
    FutureOr<CreatePaymentModel> Function(CreatePaymentRef provider) create,
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
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<CreatePaymentModel> createElement() {
    return _CreatePaymentProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CreatePaymentProvider && other.orderId == orderId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, orderId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin CreatePaymentRef on AutoDisposeFutureProviderRef<CreatePaymentModel> {
  /// The parameter `orderId` of this provider.
  String get orderId;
}

class _CreatePaymentProviderElement
    extends AutoDisposeFutureProviderElement<CreatePaymentModel>
    with CreatePaymentRef {
  _CreatePaymentProviderElement(super.provider);

  @override
  String get orderId => (origin as CreatePaymentProvider).orderId;
}

String _$checkPaymentStatusHash() =>
    r'34a834a5fdca14b09658422650b6149e89e01ac9';

/// See also [checkPaymentStatus].
@ProviderFor(checkPaymentStatus)
const checkPaymentStatusProvider = CheckPaymentStatusFamily();

/// See also [checkPaymentStatus].
class CheckPaymentStatusFamily extends Family<AsyncValue<void>> {
  /// See also [checkPaymentStatus].
  const CheckPaymentStatusFamily();

  /// See also [checkPaymentStatus].
  CheckPaymentStatusProvider call({
    required String orderId,
    required BuildContext context,
  }) {
    return CheckPaymentStatusProvider(
      orderId: orderId,
      context: context,
    );
  }

  @override
  CheckPaymentStatusProvider getProviderOverride(
    covariant CheckPaymentStatusProvider provider,
  ) {
    return call(
      orderId: provider.orderId,
      context: provider.context,
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
  String? get name => r'checkPaymentStatusProvider';
}

/// See also [checkPaymentStatus].
class CheckPaymentStatusProvider extends AutoDisposeFutureProvider<void> {
  /// See also [checkPaymentStatus].
  CheckPaymentStatusProvider({
    required String orderId,
    required BuildContext context,
  }) : this._internal(
          (ref) => checkPaymentStatus(
            ref as CheckPaymentStatusRef,
            orderId: orderId,
            context: context,
          ),
          from: checkPaymentStatusProvider,
          name: r'checkPaymentStatusProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$checkPaymentStatusHash,
          dependencies: CheckPaymentStatusFamily._dependencies,
          allTransitiveDependencies:
              CheckPaymentStatusFamily._allTransitiveDependencies,
          orderId: orderId,
          context: context,
        );

  CheckPaymentStatusProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.orderId,
    required this.context,
  }) : super.internal();

  final String orderId;
  final BuildContext context;

  @override
  Override overrideWith(
    FutureOr<void> Function(CheckPaymentStatusRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: CheckPaymentStatusProvider._internal(
        (ref) => create(ref as CheckPaymentStatusRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        orderId: orderId,
        context: context,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<void> createElement() {
    return _CheckPaymentStatusProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CheckPaymentStatusProvider &&
        other.orderId == orderId &&
        other.context == context;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, orderId.hashCode);
    hash = _SystemHash.combine(hash, context.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin CheckPaymentStatusRef on AutoDisposeFutureProviderRef<void> {
  /// The parameter `orderId` of this provider.
  String get orderId;

  /// The parameter `context` of this provider.
  BuildContext get context;
}

class _CheckPaymentStatusProviderElement
    extends AutoDisposeFutureProviderElement<void> with CheckPaymentStatusRef {
  _CheckPaymentStatusProviderElement(super.provider);

  @override
  String get orderId => (origin as CheckPaymentStatusProvider).orderId;
  @override
  BuildContext get context => (origin as CheckPaymentStatusProvider).context;
}

String _$getPaymentUrlHash() => r'612ae757088a4e68ea3b9d1262acd0d44e7e3dcc';

/// See also [getPaymentUrl].
@ProviderFor(getPaymentUrl)
const getPaymentUrlProvider = GetPaymentUrlFamily();

/// See also [getPaymentUrl].
class GetPaymentUrlFamily extends Family<AsyncValue<GetPaymentUrlModel>> {
  /// See also [getPaymentUrl].
  const GetPaymentUrlFamily();

  /// See also [getPaymentUrl].
  GetPaymentUrlProvider call({
    required String orderId,
  }) {
    return GetPaymentUrlProvider(
      orderId: orderId,
    );
  }

  @override
  GetPaymentUrlProvider getProviderOverride(
    covariant GetPaymentUrlProvider provider,
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
  String? get name => r'getPaymentUrlProvider';
}

/// See also [getPaymentUrl].
class GetPaymentUrlProvider
    extends AutoDisposeFutureProvider<GetPaymentUrlModel> {
  /// See also [getPaymentUrl].
  GetPaymentUrlProvider({
    required String orderId,
  }) : this._internal(
          (ref) => getPaymentUrl(
            ref as GetPaymentUrlRef,
            orderId: orderId,
          ),
          from: getPaymentUrlProvider,
          name: r'getPaymentUrlProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getPaymentUrlHash,
          dependencies: GetPaymentUrlFamily._dependencies,
          allTransitiveDependencies:
              GetPaymentUrlFamily._allTransitiveDependencies,
          orderId: orderId,
        );

  GetPaymentUrlProvider._internal(
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
    FutureOr<GetPaymentUrlModel> Function(GetPaymentUrlRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetPaymentUrlProvider._internal(
        (ref) => create(ref as GetPaymentUrlRef),
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
  AutoDisposeFutureProviderElement<GetPaymentUrlModel> createElement() {
    return _GetPaymentUrlProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetPaymentUrlProvider && other.orderId == orderId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, orderId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GetPaymentUrlRef on AutoDisposeFutureProviderRef<GetPaymentUrlModel> {
  /// The parameter `orderId` of this provider.
  String get orderId;
}

class _GetPaymentUrlProviderElement
    extends AutoDisposeFutureProviderElement<GetPaymentUrlModel>
    with GetPaymentUrlRef {
  _GetPaymentUrlProviderElement(super.provider);

  @override
  String get orderId => (origin as GetPaymentUrlProvider).orderId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
