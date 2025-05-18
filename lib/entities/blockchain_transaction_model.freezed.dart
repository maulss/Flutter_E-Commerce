// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'blockchain_transaction_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BlockchainTransactionModel _$BlockchainTransactionModelFromJson(
    Map<String, dynamic> json) {
  return _BlockchainTransactionModel.fromJson(json);
}

/// @nodoc
mixin _$BlockchainTransactionModel {
  @JsonKey(name: "success")
  bool? get success => throw _privateConstructorUsedError;
  @JsonKey(name: "message")
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: "data")
  BlockchainTransactionData? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BlockchainTransactionModelCopyWith<BlockchainTransactionModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlockchainTransactionModelCopyWith<$Res> {
  factory $BlockchainTransactionModelCopyWith(BlockchainTransactionModel value,
          $Res Function(BlockchainTransactionModel) then) =
      _$BlockchainTransactionModelCopyWithImpl<$Res,
          BlockchainTransactionModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "success") bool? success,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "data") BlockchainTransactionData? data});

  $BlockchainTransactionDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$BlockchainTransactionModelCopyWithImpl<$Res,
        $Val extends BlockchainTransactionModel>
    implements $BlockchainTransactionModelCopyWith<$Res> {
  _$BlockchainTransactionModelCopyWithImpl(this._value, this._then);

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
              as BlockchainTransactionData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BlockchainTransactionDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $BlockchainTransactionDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BlockchainTransactionModelImplCopyWith<$Res>
    implements $BlockchainTransactionModelCopyWith<$Res> {
  factory _$$BlockchainTransactionModelImplCopyWith(
          _$BlockchainTransactionModelImpl value,
          $Res Function(_$BlockchainTransactionModelImpl) then) =
      __$$BlockchainTransactionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "success") bool? success,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "data") BlockchainTransactionData? data});

  @override
  $BlockchainTransactionDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$BlockchainTransactionModelImplCopyWithImpl<$Res>
    extends _$BlockchainTransactionModelCopyWithImpl<$Res,
        _$BlockchainTransactionModelImpl>
    implements _$$BlockchainTransactionModelImplCopyWith<$Res> {
  __$$BlockchainTransactionModelImplCopyWithImpl(
      _$BlockchainTransactionModelImpl _value,
      $Res Function(_$BlockchainTransactionModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$BlockchainTransactionModelImpl(
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
              as BlockchainTransactionData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BlockchainTransactionModelImpl implements _BlockchainTransactionModel {
  const _$BlockchainTransactionModelImpl(
      {@JsonKey(name: "success") this.success,
      @JsonKey(name: "message") this.message,
      @JsonKey(name: "data") this.data});

  factory _$BlockchainTransactionModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$BlockchainTransactionModelImplFromJson(json);

  @override
  @JsonKey(name: "success")
  final bool? success;
  @override
  @JsonKey(name: "message")
  final String? message;
  @override
  @JsonKey(name: "data")
  final BlockchainTransactionData? data;

  @override
  String toString() {
    return 'BlockchainTransactionModel(success: $success, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlockchainTransactionModelImpl &&
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
  _$$BlockchainTransactionModelImplCopyWith<_$BlockchainTransactionModelImpl>
      get copyWith => __$$BlockchainTransactionModelImplCopyWithImpl<
          _$BlockchainTransactionModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BlockchainTransactionModelImplToJson(
      this,
    );
  }
}

abstract class _BlockchainTransactionModel
    implements BlockchainTransactionModel {
  const factory _BlockchainTransactionModel(
          {@JsonKey(name: "success") final bool? success,
          @JsonKey(name: "message") final String? message,
          @JsonKey(name: "data") final BlockchainTransactionData? data}) =
      _$BlockchainTransactionModelImpl;

  factory _BlockchainTransactionModel.fromJson(Map<String, dynamic> json) =
      _$BlockchainTransactionModelImpl.fromJson;

  @override
  @JsonKey(name: "success")
  bool? get success;
  @override
  @JsonKey(name: "message")
  String? get message;
  @override
  @JsonKey(name: "data")
  BlockchainTransactionData? get data;
  @override
  @JsonKey(ignore: true)
  _$$BlockchainTransactionModelImplCopyWith<_$BlockchainTransactionModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

BlockchainTransactionData _$BlockchainTransactionDataFromJson(
    Map<String, dynamic> json) {
  return _BlockchainTransactionData.fromJson(json);
}

/// @nodoc
mixin _$BlockchainTransactionData {
  @JsonKey(name: "orderId")
  String? get orderId => throw _privateConstructorUsedError;
  @JsonKey(name: "amount")
  String? get amount => throw _privateConstructorUsedError;
  @JsonKey(name: "status")
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "currency")
  String? get currency => throw _privateConstructorUsedError;
  @JsonKey(name: "paymentMethod")
  String? get paymentMethod => throw _privateConstructorUsedError;
  @JsonKey(name: "paymentEmail")
  String? get paymentEmail => throw _privateConstructorUsedError;
  @JsonKey(name: "merchantName")
  String? get merchantName => throw _privateConstructorUsedError;
  @JsonKey(name: "customerName")
  String? get customerName => throw _privateConstructorUsedError;
  @JsonKey(name: "timestamp")
  String? get timestamp => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BlockchainTransactionDataCopyWith<BlockchainTransactionData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlockchainTransactionDataCopyWith<$Res> {
  factory $BlockchainTransactionDataCopyWith(BlockchainTransactionData value,
          $Res Function(BlockchainTransactionData) then) =
      _$BlockchainTransactionDataCopyWithImpl<$Res, BlockchainTransactionData>;
  @useResult
  $Res call(
      {@JsonKey(name: "orderId") String? orderId,
      @JsonKey(name: "amount") String? amount,
      @JsonKey(name: "status") String? status,
      @JsonKey(name: "currency") String? currency,
      @JsonKey(name: "paymentMethod") String? paymentMethod,
      @JsonKey(name: "paymentEmail") String? paymentEmail,
      @JsonKey(name: "merchantName") String? merchantName,
      @JsonKey(name: "customerName") String? customerName,
      @JsonKey(name: "timestamp") String? timestamp});
}

/// @nodoc
class _$BlockchainTransactionDataCopyWithImpl<$Res,
        $Val extends BlockchainTransactionData>
    implements $BlockchainTransactionDataCopyWith<$Res> {
  _$BlockchainTransactionDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = freezed,
    Object? amount = freezed,
    Object? status = freezed,
    Object? currency = freezed,
    Object? paymentMethod = freezed,
    Object? paymentEmail = freezed,
    Object? merchantName = freezed,
    Object? customerName = freezed,
    Object? timestamp = freezed,
  }) {
    return _then(_value.copyWith(
      orderId: freezed == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      currency: freezed == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentMethod: freezed == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentEmail: freezed == paymentEmail
          ? _value.paymentEmail
          : paymentEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      merchantName: freezed == merchantName
          ? _value.merchantName
          : merchantName // ignore: cast_nullable_to_non_nullable
              as String?,
      customerName: freezed == customerName
          ? _value.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String?,
      timestamp: freezed == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BlockchainTransactionDataImplCopyWith<$Res>
    implements $BlockchainTransactionDataCopyWith<$Res> {
  factory _$$BlockchainTransactionDataImplCopyWith(
          _$BlockchainTransactionDataImpl value,
          $Res Function(_$BlockchainTransactionDataImpl) then) =
      __$$BlockchainTransactionDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "orderId") String? orderId,
      @JsonKey(name: "amount") String? amount,
      @JsonKey(name: "status") String? status,
      @JsonKey(name: "currency") String? currency,
      @JsonKey(name: "paymentMethod") String? paymentMethod,
      @JsonKey(name: "paymentEmail") String? paymentEmail,
      @JsonKey(name: "merchantName") String? merchantName,
      @JsonKey(name: "customerName") String? customerName,
      @JsonKey(name: "timestamp") String? timestamp});
}

/// @nodoc
class __$$BlockchainTransactionDataImplCopyWithImpl<$Res>
    extends _$BlockchainTransactionDataCopyWithImpl<$Res,
        _$BlockchainTransactionDataImpl>
    implements _$$BlockchainTransactionDataImplCopyWith<$Res> {
  __$$BlockchainTransactionDataImplCopyWithImpl(
      _$BlockchainTransactionDataImpl _value,
      $Res Function(_$BlockchainTransactionDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = freezed,
    Object? amount = freezed,
    Object? status = freezed,
    Object? currency = freezed,
    Object? paymentMethod = freezed,
    Object? paymentEmail = freezed,
    Object? merchantName = freezed,
    Object? customerName = freezed,
    Object? timestamp = freezed,
  }) {
    return _then(_$BlockchainTransactionDataImpl(
      orderId: freezed == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      currency: freezed == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentMethod: freezed == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentEmail: freezed == paymentEmail
          ? _value.paymentEmail
          : paymentEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      merchantName: freezed == merchantName
          ? _value.merchantName
          : merchantName // ignore: cast_nullable_to_non_nullable
              as String?,
      customerName: freezed == customerName
          ? _value.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String?,
      timestamp: freezed == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BlockchainTransactionDataImpl implements _BlockchainTransactionData {
  const _$BlockchainTransactionDataImpl(
      {@JsonKey(name: "orderId") this.orderId,
      @JsonKey(name: "amount") this.amount,
      @JsonKey(name: "status") this.status,
      @JsonKey(name: "currency") this.currency,
      @JsonKey(name: "paymentMethod") this.paymentMethod,
      @JsonKey(name: "paymentEmail") this.paymentEmail,
      @JsonKey(name: "merchantName") this.merchantName,
      @JsonKey(name: "customerName") this.customerName,
      @JsonKey(name: "timestamp") this.timestamp});

  factory _$BlockchainTransactionDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$BlockchainTransactionDataImplFromJson(json);

  @override
  @JsonKey(name: "orderId")
  final String? orderId;
  @override
  @JsonKey(name: "amount")
  final String? amount;
  @override
  @JsonKey(name: "status")
  final String? status;
  @override
  @JsonKey(name: "currency")
  final String? currency;
  @override
  @JsonKey(name: "paymentMethod")
  final String? paymentMethod;
  @override
  @JsonKey(name: "paymentEmail")
  final String? paymentEmail;
  @override
  @JsonKey(name: "merchantName")
  final String? merchantName;
  @override
  @JsonKey(name: "customerName")
  final String? customerName;
  @override
  @JsonKey(name: "timestamp")
  final String? timestamp;

  @override
  String toString() {
    return 'BlockchainTransactionData(orderId: $orderId, amount: $amount, status: $status, currency: $currency, paymentMethod: $paymentMethod, paymentEmail: $paymentEmail, merchantName: $merchantName, customerName: $customerName, timestamp: $timestamp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlockchainTransactionDataImpl &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.paymentMethod, paymentMethod) ||
                other.paymentMethod == paymentMethod) &&
            (identical(other.paymentEmail, paymentEmail) ||
                other.paymentEmail == paymentEmail) &&
            (identical(other.merchantName, merchantName) ||
                other.merchantName == merchantName) &&
            (identical(other.customerName, customerName) ||
                other.customerName == customerName) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      orderId,
      amount,
      status,
      currency,
      paymentMethod,
      paymentEmail,
      merchantName,
      customerName,
      timestamp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BlockchainTransactionDataImplCopyWith<_$BlockchainTransactionDataImpl>
      get copyWith => __$$BlockchainTransactionDataImplCopyWithImpl<
          _$BlockchainTransactionDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BlockchainTransactionDataImplToJson(
      this,
    );
  }
}

abstract class _BlockchainTransactionData implements BlockchainTransactionData {
  const factory _BlockchainTransactionData(
          {@JsonKey(name: "orderId") final String? orderId,
          @JsonKey(name: "amount") final String? amount,
          @JsonKey(name: "status") final String? status,
          @JsonKey(name: "currency") final String? currency,
          @JsonKey(name: "paymentMethod") final String? paymentMethod,
          @JsonKey(name: "paymentEmail") final String? paymentEmail,
          @JsonKey(name: "merchantName") final String? merchantName,
          @JsonKey(name: "customerName") final String? customerName,
          @JsonKey(name: "timestamp") final String? timestamp}) =
      _$BlockchainTransactionDataImpl;

  factory _BlockchainTransactionData.fromJson(Map<String, dynamic> json) =
      _$BlockchainTransactionDataImpl.fromJson;

  @override
  @JsonKey(name: "orderId")
  String? get orderId;
  @override
  @JsonKey(name: "amount")
  String? get amount;
  @override
  @JsonKey(name: "status")
  String? get status;
  @override
  @JsonKey(name: "currency")
  String? get currency;
  @override
  @JsonKey(name: "paymentMethod")
  String? get paymentMethod;
  @override
  @JsonKey(name: "paymentEmail")
  String? get paymentEmail;
  @override
  @JsonKey(name: "merchantName")
  String? get merchantName;
  @override
  @JsonKey(name: "customerName")
  String? get customerName;
  @override
  @JsonKey(name: "timestamp")
  String? get timestamp;
  @override
  @JsonKey(ignore: true)
  _$$BlockchainTransactionDataImplCopyWith<_$BlockchainTransactionDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
