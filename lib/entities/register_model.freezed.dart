// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RegisterModel _$RegisterModelFromJson(Map<String, dynamic> json) {
  return _RegisterModel.fromJson(json);
}

/// @nodoc
mixin _$RegisterModel {
  @JsonKey(name: "success")
  bool? get success => throw _privateConstructorUsedError;
  @JsonKey(name: "message")
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: "data")
  Data? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RegisterModelCopyWith<RegisterModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterModelCopyWith<$Res> {
  factory $RegisterModelCopyWith(
          RegisterModel value, $Res Function(RegisterModel) then) =
      _$RegisterModelCopyWithImpl<$Res, RegisterModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "success") bool? success,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "data") Data? data});

  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class _$RegisterModelCopyWithImpl<$Res, $Val extends RegisterModel>
    implements $RegisterModelCopyWith<$Res> {
  _$RegisterModelCopyWithImpl(this._value, this._then);

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
abstract class _$$RegisterModelImplCopyWith<$Res>
    implements $RegisterModelCopyWith<$Res> {
  factory _$$RegisterModelImplCopyWith(
          _$RegisterModelImpl value, $Res Function(_$RegisterModelImpl) then) =
      __$$RegisterModelImplCopyWithImpl<$Res>;
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
class __$$RegisterModelImplCopyWithImpl<$Res>
    extends _$RegisterModelCopyWithImpl<$Res, _$RegisterModelImpl>
    implements _$$RegisterModelImplCopyWith<$Res> {
  __$$RegisterModelImplCopyWithImpl(
      _$RegisterModelImpl _value, $Res Function(_$RegisterModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$RegisterModelImpl(
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
class _$RegisterModelImpl implements _RegisterModel {
  const _$RegisterModelImpl(
      {@JsonKey(name: "success") this.success,
      @JsonKey(name: "message") this.message,
      @JsonKey(name: "data") this.data});

  factory _$RegisterModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RegisterModelImplFromJson(json);

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
    return 'RegisterModel(success: $success, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterModelImpl &&
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
  _$$RegisterModelImplCopyWith<_$RegisterModelImpl> get copyWith =>
      __$$RegisterModelImplCopyWithImpl<_$RegisterModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RegisterModelImplToJson(
      this,
    );
  }
}

abstract class _RegisterModel implements RegisterModel {
  const factory _RegisterModel(
      {@JsonKey(name: "success") final bool? success,
      @JsonKey(name: "message") final String? message,
      @JsonKey(name: "data") final Data? data}) = _$RegisterModelImpl;

  factory _RegisterModel.fromJson(Map<String, dynamic> json) =
      _$RegisterModelImpl.fromJson;

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
  _$$RegisterModelImplCopyWith<_$RegisterModelImpl> get copyWith =>
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
  @JsonKey(name: "role")
  String? get role => throw _privateConstructorUsedError;
  @JsonKey(name: "profile_picture")
  dynamic get profilePicture => throw _privateConstructorUsedError;

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
      @JsonKey(name: "role") String? role,
      @JsonKey(name: "profile_picture") dynamic profilePicture});
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
    Object? role = freezed,
    Object? profilePicture = freezed,
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
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      profilePicture: freezed == profilePicture
          ? _value.profilePicture
          : profilePicture // ignore: cast_nullable_to_non_nullable
              as dynamic,
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
      @JsonKey(name: "role") String? role,
      @JsonKey(name: "profile_picture") dynamic profilePicture});
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
    Object? role = freezed,
    Object? profilePicture = freezed,
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
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      profilePicture: freezed == profilePicture
          ? _value.profilePicture
          : profilePicture // ignore: cast_nullable_to_non_nullable
              as dynamic,
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
      @JsonKey(name: "role") this.role,
      @JsonKey(name: "profile_picture") this.profilePicture});

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
  @JsonKey(name: "role")
  final String? role;
  @override
  @JsonKey(name: "profile_picture")
  final dynamic profilePicture;

  @override
  String toString() {
    return 'Data(userId: $userId, name: $name, email: $email, phoneNumber: $phoneNumber, address: $address, role: $role, profilePicture: $profilePicture)';
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
            (identical(other.role, role) || other.role == role) &&
            const DeepCollectionEquality()
                .equals(other.profilePicture, profilePicture));
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
      role,
      const DeepCollectionEquality().hash(profilePicture));

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
          @JsonKey(name: "role") final String? role,
          @JsonKey(name: "profile_picture") final dynamic profilePicture}) =
      _$DataImpl;

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
  @JsonKey(name: "role")
  String? get role;
  @override
  @JsonKey(name: "profile_picture")
  dynamic get profilePicture;
  @override
  @JsonKey(ignore: true)
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
