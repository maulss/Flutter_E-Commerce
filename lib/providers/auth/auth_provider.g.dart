// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$registerHash() => r'c316f9996e460b59ae773ff45c717dcd57dbfbe4';

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

/// See also [register].
@ProviderFor(register)
const registerProvider = RegisterFamily();

/// See also [register].
class RegisterFamily extends Family<AsyncValue<RegisterModel>> {
  /// See also [register].
  const RegisterFamily();

  /// See also [register].
  RegisterProvider call({
    required String email,
    required String phoneNumber,
    required String password,
  }) {
    return RegisterProvider(
      email: email,
      phoneNumber: phoneNumber,
      password: password,
    );
  }

  @override
  RegisterProvider getProviderOverride(
    covariant RegisterProvider provider,
  ) {
    return call(
      email: provider.email,
      phoneNumber: provider.phoneNumber,
      password: provider.password,
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
  String? get name => r'registerProvider';
}

/// See also [register].
class RegisterProvider extends AutoDisposeFutureProvider<RegisterModel> {
  /// See also [register].
  RegisterProvider({
    required String email,
    required String phoneNumber,
    required String password,
  }) : this._internal(
          (ref) => register(
            ref as RegisterRef,
            email: email,
            phoneNumber: phoneNumber,
            password: password,
          ),
          from: registerProvider,
          name: r'registerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$registerHash,
          dependencies: RegisterFamily._dependencies,
          allTransitiveDependencies: RegisterFamily._allTransitiveDependencies,
          email: email,
          phoneNumber: phoneNumber,
          password: password,
        );

  RegisterProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.email,
    required this.phoneNumber,
    required this.password,
  }) : super.internal();

  final String email;
  final String phoneNumber;
  final String password;

  @override
  Override overrideWith(
    FutureOr<RegisterModel> Function(RegisterRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: RegisterProvider._internal(
        (ref) => create(ref as RegisterRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        email: email,
        phoneNumber: phoneNumber,
        password: password,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<RegisterModel> createElement() {
    return _RegisterProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is RegisterProvider &&
        other.email == email &&
        other.phoneNumber == phoneNumber &&
        other.password == password;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, email.hashCode);
    hash = _SystemHash.combine(hash, phoneNumber.hashCode);
    hash = _SystemHash.combine(hash, password.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin RegisterRef on AutoDisposeFutureProviderRef<RegisterModel> {
  /// The parameter `email` of this provider.
  String get email;

  /// The parameter `phoneNumber` of this provider.
  String get phoneNumber;

  /// The parameter `password` of this provider.
  String get password;
}

class _RegisterProviderElement
    extends AutoDisposeFutureProviderElement<RegisterModel> with RegisterRef {
  _RegisterProviderElement(super.provider);

  @override
  String get email => (origin as RegisterProvider).email;
  @override
  String get phoneNumber => (origin as RegisterProvider).phoneNumber;
  @override
  String get password => (origin as RegisterProvider).password;
}

String _$loginHash() => r'430e3b364159f7c6af42582941f6621856943fa2';

/// See also [login].
@ProviderFor(login)
const loginProvider = LoginFamily();

/// See also [login].
class LoginFamily extends Family<AsyncValue<LoginModel>> {
  /// See also [login].
  const LoginFamily();

  /// See also [login].
  LoginProvider call({
    required String email,
    required String password,
  }) {
    return LoginProvider(
      email: email,
      password: password,
    );
  }

  @override
  LoginProvider getProviderOverride(
    covariant LoginProvider provider,
  ) {
    return call(
      email: provider.email,
      password: provider.password,
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
  String? get name => r'loginProvider';
}

/// See also [login].
class LoginProvider extends AutoDisposeFutureProvider<LoginModel> {
  /// See also [login].
  LoginProvider({
    required String email,
    required String password,
  }) : this._internal(
          (ref) => login(
            ref as LoginRef,
            email: email,
            password: password,
          ),
          from: loginProvider,
          name: r'loginProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$loginHash,
          dependencies: LoginFamily._dependencies,
          allTransitiveDependencies: LoginFamily._allTransitiveDependencies,
          email: email,
          password: password,
        );

  LoginProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.email,
    required this.password,
  }) : super.internal();

  final String email;
  final String password;

  @override
  Override overrideWith(
    FutureOr<LoginModel> Function(LoginRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: LoginProvider._internal(
        (ref) => create(ref as LoginRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        email: email,
        password: password,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<LoginModel> createElement() {
    return _LoginProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is LoginProvider &&
        other.email == email &&
        other.password == password;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, email.hashCode);
    hash = _SystemHash.combine(hash, password.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin LoginRef on AutoDisposeFutureProviderRef<LoginModel> {
  /// The parameter `email` of this provider.
  String get email;

  /// The parameter `password` of this provider.
  String get password;
}

class _LoginProviderElement extends AutoDisposeFutureProviderElement<LoginModel>
    with LoginRef {
  _LoginProviderElement(super.provider);

  @override
  String get email => (origin as LoginProvider).email;
  @override
  String get password => (origin as LoginProvider).password;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
