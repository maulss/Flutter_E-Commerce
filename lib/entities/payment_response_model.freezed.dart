// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PaymentResponseModel _$PaymentResponseModelFromJson(Map<String, dynamic> json) {
  return _PaymentResponseModel.fromJson(json);
}

/// @nodoc
mixin _$PaymentResponseModel {
  @JsonKey(name: "success")
  bool? get success => throw _privateConstructorUsedError;
  @JsonKey(name: "message")
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: "payment_url")
  String? get paymentUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaymentResponseModelCopyWith<PaymentResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentResponseModelCopyWith<$Res> {
  factory $PaymentResponseModelCopyWith(PaymentResponseModel value,
          $Res Function(PaymentResponseModel) then) =
      _$PaymentResponseModelCopyWithImpl<$Res, PaymentResponseModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "success") bool? success,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "payment_url") String? paymentUrl});
}

/// @nodoc
class _$PaymentResponseModelCopyWithImpl<$Res,
        $Val extends PaymentResponseModel>
    implements $PaymentResponseModelCopyWith<$Res> {
  _$PaymentResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? paymentUrl = freezed,
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
      paymentUrl: freezed == paymentUrl
          ? _value.paymentUrl
          : paymentUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaymentResponseModelImplCopyWith<$Res>
    implements $PaymentResponseModelCopyWith<$Res> {
  factory _$$PaymentResponseModelImplCopyWith(_$PaymentResponseModelImpl value,
          $Res Function(_$PaymentResponseModelImpl) then) =
      __$$PaymentResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "success") bool? success,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "payment_url") String? paymentUrl});
}

/// @nodoc
class __$$PaymentResponseModelImplCopyWithImpl<$Res>
    extends _$PaymentResponseModelCopyWithImpl<$Res, _$PaymentResponseModelImpl>
    implements _$$PaymentResponseModelImplCopyWith<$Res> {
  __$$PaymentResponseModelImplCopyWithImpl(_$PaymentResponseModelImpl _value,
      $Res Function(_$PaymentResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? paymentUrl = freezed,
  }) {
    return _then(_$PaymentResponseModelImpl(
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentUrl: freezed == paymentUrl
          ? _value.paymentUrl
          : paymentUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PaymentResponseModelImpl implements _PaymentResponseModel {
  const _$PaymentResponseModelImpl(
      {@JsonKey(name: "success") this.success,
      @JsonKey(name: "message") this.message,
      @JsonKey(name: "payment_url") this.paymentUrl});

  factory _$PaymentResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaymentResponseModelImplFromJson(json);

  @override
  @JsonKey(name: "success")
  final bool? success;
  @override
  @JsonKey(name: "message")
  final String? message;
  @override
  @JsonKey(name: "payment_url")
  final String? paymentUrl;

  @override
  String toString() {
    return 'PaymentResponseModel(success: $success, message: $message, paymentUrl: $paymentUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentResponseModelImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.paymentUrl, paymentUrl) ||
                other.paymentUrl == paymentUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, success, message, paymentUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentResponseModelImplCopyWith<_$PaymentResponseModelImpl>
      get copyWith =>
          __$$PaymentResponseModelImplCopyWithImpl<_$PaymentResponseModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaymentResponseModelImplToJson(
      this,
    );
  }
}

abstract class _PaymentResponseModel implements PaymentResponseModel {
  const factory _PaymentResponseModel(
          {@JsonKey(name: "success") final bool? success,
          @JsonKey(name: "message") final String? message,
          @JsonKey(name: "payment_url") final String? paymentUrl}) =
      _$PaymentResponseModelImpl;

  factory _PaymentResponseModel.fromJson(Map<String, dynamic> json) =
      _$PaymentResponseModelImpl.fromJson;

  @override
  @JsonKey(name: "success")
  bool? get success;
  @override
  @JsonKey(name: "message")
  String? get message;
  @override
  @JsonKey(name: "payment_url")
  String? get paymentUrl;
  @override
  @JsonKey(ignore: true)
  _$$PaymentResponseModelImplCopyWith<_$PaymentResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
