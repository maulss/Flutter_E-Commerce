// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getUserHash() => r'803240c7c808030ec4261387eb25890647a27737';

/// See also [getUser].
@ProviderFor(getUser)
final getUserProvider = AutoDisposeFutureProvider<UserModel>.internal(
  getUser,
  name: r'getUserProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$getUserHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef GetUserRef = AutoDisposeFutureProviderRef<UserModel>;
String _$updateUserHash() => r'c6c865f0e0c7de4cacae7bca8a16e3a70b83db4c';

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

/// See also [updateUser].
@ProviderFor(updateUser)
const updateUserProvider = UpdateUserFamily();

/// See also [updateUser].
class UpdateUserFamily extends Family<AsyncValue<UpdateUserModel>> {
  /// See also [updateUser].
  const UpdateUserFamily();

  /// See also [updateUser].
  UpdateUserProvider call({
    required String fullName,
    required String email,
    required String phoneNumber,
    File? profilePicture,
  }) {
    return UpdateUserProvider(
      fullName: fullName,
      email: email,
      phoneNumber: phoneNumber,
      profilePicture: profilePicture,
    );
  }

  @override
  UpdateUserProvider getProviderOverride(
    covariant UpdateUserProvider provider,
  ) {
    return call(
      fullName: provider.fullName,
      email: provider.email,
      phoneNumber: provider.phoneNumber,
      profilePicture: provider.profilePicture,
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
  String? get name => r'updateUserProvider';
}

/// See also [updateUser].
class UpdateUserProvider extends AutoDisposeFutureProvider<UpdateUserModel> {
  /// See also [updateUser].
  UpdateUserProvider({
    required String fullName,
    required String email,
    required String phoneNumber,
    File? profilePicture,
  }) : this._internal(
          (ref) => updateUser(
            ref as UpdateUserRef,
            fullName: fullName,
            email: email,
            phoneNumber: phoneNumber,
            profilePicture: profilePicture,
          ),
          from: updateUserProvider,
          name: r'updateUserProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$updateUserHash,
          dependencies: UpdateUserFamily._dependencies,
          allTransitiveDependencies:
              UpdateUserFamily._allTransitiveDependencies,
          fullName: fullName,
          email: email,
          phoneNumber: phoneNumber,
          profilePicture: profilePicture,
        );

  UpdateUserProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.fullName,
    required this.email,
    required this.phoneNumber,
    required this.profilePicture,
  }) : super.internal();

  final String fullName;
  final String email;
  final String phoneNumber;
  final File? profilePicture;

  @override
  Override overrideWith(
    FutureOr<UpdateUserModel> Function(UpdateUserRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: UpdateUserProvider._internal(
        (ref) => create(ref as UpdateUserRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        fullName: fullName,
        email: email,
        phoneNumber: phoneNumber,
        profilePicture: profilePicture,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<UpdateUserModel> createElement() {
    return _UpdateUserProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is UpdateUserProvider &&
        other.fullName == fullName &&
        other.email == email &&
        other.phoneNumber == phoneNumber &&
        other.profilePicture == profilePicture;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, fullName.hashCode);
    hash = _SystemHash.combine(hash, email.hashCode);
    hash = _SystemHash.combine(hash, phoneNumber.hashCode);
    hash = _SystemHash.combine(hash, profilePicture.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin UpdateUserRef on AutoDisposeFutureProviderRef<UpdateUserModel> {
  /// The parameter `fullName` of this provider.
  String get fullName;

  /// The parameter `email` of this provider.
  String get email;

  /// The parameter `phoneNumber` of this provider.
  String get phoneNumber;

  /// The parameter `profilePicture` of this provider.
  File? get profilePicture;
}

class _UpdateUserProviderElement
    extends AutoDisposeFutureProviderElement<UpdateUserModel>
    with UpdateUserRef {
  _UpdateUserProviderElement(super.provider);

  @override
  String get fullName => (origin as UpdateUserProvider).fullName;
  @override
  String get email => (origin as UpdateUserProvider).email;
  @override
  String get phoneNumber => (origin as UpdateUserProvider).phoneNumber;
  @override
  File? get profilePicture => (origin as UpdateUserProvider).profilePicture;
}

String _$changePasswordHash() => r'be2181a0641d58a63fe80cd29924416b6926a397';

/// See also [changePassword].
@ProviderFor(changePassword)
const changePasswordProvider = ChangePasswordFamily();

/// See also [changePassword].
class ChangePasswordFamily extends Family<AsyncValue<UpdateUserModel>> {
  /// See also [changePassword].
  const ChangePasswordFamily();

  /// See also [changePassword].
  ChangePasswordProvider call({
    required String oldPassword,
    required String newPassword,
  }) {
    return ChangePasswordProvider(
      oldPassword: oldPassword,
      newPassword: newPassword,
    );
  }

  @override
  ChangePasswordProvider getProviderOverride(
    covariant ChangePasswordProvider provider,
  ) {
    return call(
      oldPassword: provider.oldPassword,
      newPassword: provider.newPassword,
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
  String? get name => r'changePasswordProvider';
}

/// See also [changePassword].
class ChangePasswordProvider
    extends AutoDisposeFutureProvider<UpdateUserModel> {
  /// See also [changePassword].
  ChangePasswordProvider({
    required String oldPassword,
    required String newPassword,
  }) : this._internal(
          (ref) => changePassword(
            ref as ChangePasswordRef,
            oldPassword: oldPassword,
            newPassword: newPassword,
          ),
          from: changePasswordProvider,
          name: r'changePasswordProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$changePasswordHash,
          dependencies: ChangePasswordFamily._dependencies,
          allTransitiveDependencies:
              ChangePasswordFamily._allTransitiveDependencies,
          oldPassword: oldPassword,
          newPassword: newPassword,
        );

  ChangePasswordProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.oldPassword,
    required this.newPassword,
  }) : super.internal();

  final String oldPassword;
  final String newPassword;

  @override
  Override overrideWith(
    FutureOr<UpdateUserModel> Function(ChangePasswordRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: ChangePasswordProvider._internal(
        (ref) => create(ref as ChangePasswordRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        oldPassword: oldPassword,
        newPassword: newPassword,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<UpdateUserModel> createElement() {
    return _ChangePasswordProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ChangePasswordProvider &&
        other.oldPassword == oldPassword &&
        other.newPassword == newPassword;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, oldPassword.hashCode);
    hash = _SystemHash.combine(hash, newPassword.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin ChangePasswordRef on AutoDisposeFutureProviderRef<UpdateUserModel> {
  /// The parameter `oldPassword` of this provider.
  String get oldPassword;

  /// The parameter `newPassword` of this provider.
  String get newPassword;
}

class _ChangePasswordProviderElement
    extends AutoDisposeFutureProviderElement<UpdateUserModel>
    with ChangePasswordRef {
  _ChangePasswordProviderElement(super.provider);

  @override
  String get oldPassword => (origin as ChangePasswordProvider).oldPassword;
  @override
  String get newPassword => (origin as ChangePasswordProvider).newPassword;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
