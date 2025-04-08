// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserModel _$UserModelFromJson(Map<String, dynamic> json) {
  return _UserModel.fromJson(json);
}

/// @nodoc
mixin _$UserModel {
  @JsonKey(name: "success")
  bool? get success => throw _privateConstructorUsedError;
  @JsonKey(name: "message")
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: "data")
  Data? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserModelCopyWith<UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserModelCopyWith<$Res> {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) then) =
      _$UserModelCopyWithImpl<$Res, UserModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "success") bool? success,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "data") Data? data});

  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class _$UserModelCopyWithImpl<$Res, $Val extends UserModel>
    implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $DataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserModelImplCopyWith<$Res>
    implements $UserModelCopyWith<$Res> {
  factory _$$UserModelImplCopyWith(
          _$UserModelImpl value, $Res Function(_$UserModelImpl) then) =
      __$$UserModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "success") bool? success,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "data") Data? data});

  @override
  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$UserModelImplCopyWithImpl<$Res>
    extends _$UserModelCopyWithImpl<$Res, _$UserModelImpl>
    implements _$$UserModelImplCopyWith<$Res> {
  __$$UserModelImplCopyWithImpl(
      _$UserModelImpl _value, $Res Function(_$UserModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$UserModelImpl(
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserModelImpl implements _UserModel {
  const _$UserModelImpl(
      {@JsonKey(name: "success") this.success,
      @JsonKey(name: "message") this.message,
      @JsonKey(name: "data") this.data});

  factory _$UserModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserModelImplFromJson(json);

  @override
  @JsonKey(name: "success")
  final bool? success;
  @override
  @JsonKey(name: "message")
  final String? message;
  @override
  @JsonKey(name: "data")
  final Data? data;

  @override
  String toString() {
    return 'UserModel(success: $success, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserModelImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, success, message, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      __$$UserModelImplCopyWithImpl<_$UserModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserModelImplToJson(
      this,
    );
  }
}

abstract class _UserModel implements UserModel {
  const factory _UserModel(
      {@JsonKey(name: "success") final bool? success,
      @JsonKey(name: "message") final String? message,
      @JsonKey(name: "data") final Data? data}) = _$UserModelImpl;

  factory _UserModel.fromJson(Map<String, dynamic> json) =
      _$UserModelImpl.fromJson;

  @override
  @JsonKey(name: "success")
  bool? get success;
  @override
  @JsonKey(name: "message")
  String? get message;
  @override
  @JsonKey(name: "data")
  Data? get data;
  @override
  @JsonKey(ignore: true)
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  @JsonKey(name: "user_id")
  String? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  dynamic get name => throw _privateConstructorUsedError;
  @JsonKey(name: "email")
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: "phone_number")
  String? get phoneNumber => throw _privateConstructorUsedError;
  @JsonKey(name: "address")
  dynamic get address => throw _privateConstructorUsedError;
  @JsonKey(name: "profile_picture")
  dynamic get profilePicture => throw _privateConstructorUsedError;
  @JsonKey(name: "role")
  String? get role => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataCopyWith<Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res, Data>;
  @useResult
  $Res call(
      {@JsonKey(name: "user_id") String? userId,
      @JsonKey(name: "name") dynamic name,
      @JsonKey(name: "email") String? email,
      @JsonKey(name: "phone_number") String? phoneNumber,
      @JsonKey(name: "address") dynamic address,
      @JsonKey(name: "profile_picture") dynamic profilePicture,
      @JsonKey(name: "role") String? role});
}

/// @nodoc
class _$DataCopyWithImpl<$Res, $Val extends Data>
    implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? phoneNumber = freezed,
    Object? address = freezed,
    Object? profilePicture = freezed,
    Object? role = freezed,
  }) {
    return _then(_value.copyWith(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as dynamic,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as dynamic,
      profilePicture: freezed == profilePicture
          ? _value.profilePicture
          : profilePicture // ignore: cast_nullable_to_non_nullable
              as dynamic,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DataImplCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$$DataImplCopyWith(
          _$DataImpl value, $Res Function(_$DataImpl) then) =
      __$$DataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "user_id") String? userId,
      @JsonKey(name: "name") dynamic name,
      @JsonKey(name: "email") String? email,
      @JsonKey(name: "phone_number") String? phoneNumber,
      @JsonKey(name: "address") dynamic address,
      @JsonKey(name: "profile_picture") dynamic profilePicture,
      @JsonKey(name: "role") String? role});
}

/// @nodoc
class __$$DataImplCopyWithImpl<$Res>
    extends _$DataCopyWithImpl<$Res, _$DataImpl>
    implements _$$DataImplCopyWith<$Res> {
  __$$DataImplCopyWithImpl(_$DataImpl _value, $Res Function(_$DataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? phoneNumber = freezed,
    Object? address = freezed,
    Object? profilePicture = freezed,
    Object? role = freezed,
  }) {
    return _then(_$DataImpl(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as dynamic,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as dynamic,
      profilePicture: freezed == profilePicture
          ? _value.profilePicture
          : profilePicture // ignore: cast_nullable_to_non_nullable
              as dynamic,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataImpl implements _Data {
  const _$DataImpl(
      {@JsonKey(name: "user_id") this.userId,
      @JsonKey(name: "name") this.name,
      @JsonKey(name: "email") this.email,
      @JsonKey(name: "phone_number") this.phoneNumber,
      @JsonKey(name: "address") this.address,
      @JsonKey(name: "profile_picture") this.profilePicture,
      @JsonKey(name: "role") this.role});

  factory _$DataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataImplFromJson(json);

  @override
  @JsonKey(name: "user_id")
  final String? userId;
  @override
  @JsonKey(name: "name")
  final dynamic name;
  @override
  @JsonKey(name: "email")
  final String? email;
  @override
  @JsonKey(name: "phone_number")
  final String? phoneNumber;
  @override
  @JsonKey(name: "address")
  final dynamic address;
  @override
  @JsonKey(name: "profile_picture")
  final dynamic profilePicture;
  @override
  @JsonKey(name: "role")
  final String? role;

  @override
  String toString() {
    return 'Data(userId: $userId, name: $name, email: $email, phoneNumber: $phoneNumber, address: $address, profilePicture: $profilePicture, role: $role)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            const DeepCollectionEquality().equals(other.address, address) &&
            const DeepCollectionEquality()
                .equals(other.profilePicture, profilePicture) &&
            (identical(other.role, role) || other.role == role));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      userId,
      const DeepCollectionEquality().hash(name),
      email,
      phoneNumber,
      const DeepCollectionEquality().hash(address),
      const DeepCollectionEquality().hash(profilePicture),
      role);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      __$$DataImplCopyWithImpl<_$DataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataImplToJson(
      this,
    );
  }
}

abstract class _Data implements Data {
  const factory _Data(
      {@JsonKey(name: "user_id") final String? userId,
      @JsonKey(name: "name") final dynamic name,
      @JsonKey(name: "email") final String? email,
      @JsonKey(name: "phone_number") final String? phoneNumber,
      @JsonKey(name: "address") final dynamic address,
      @JsonKey(name: "profile_picture") final dynamic profilePicture,
      @JsonKey(name: "role") final String? role}) = _$DataImpl;

  factory _Data.fromJson(Map<String, dynamic> json) = _$DataImpl.fromJson;

  @override
  @JsonKey(name: "user_id")
  String? get userId;
  @override
  @JsonKey(name: "name")
  dynamic get name;
  @override
  @JsonKey(name: "email")
  String? get email;
  @override
  @JsonKey(name: "phone_number")
  String? get phoneNumber;
  @override
  @JsonKey(name: "address")
  dynamic get address;
  @override
  @JsonKey(name: "profile_picture")
  dynamic get profilePicture;
  @override
  @JsonKey(name: "role")
  String? get role;
  @override
  @JsonKey(ignore: true)
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
