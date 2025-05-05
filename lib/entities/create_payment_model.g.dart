// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_payment_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreatePaymentModelImpl _$$CreatePaymentModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CreatePaymentModelImpl(
      success: json['success'] as bool?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CreatePaymentModelImplToJson(
        _$CreatePaymentModelImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'data': instance.data,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      paymentDetails: json['paymentDetails'] == null
          ? null
          : PaymentDetails.fromJson(
              json['paymentDetails'] as Map<String, dynamic>),
      orderId: json['orderId'] as String?,
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'paymentDetails': instance.paymentDetails,
      'orderId': instance.orderId,
    };

_$PaymentDetailsImpl _$$PaymentDetailsImplFromJson(Map<String, dynamic> json) =>
    _$PaymentDetailsImpl(
      token: json['token'] as String?,
      redirectUrl: json['redirect_url'] as String?,
    );

Map<String, dynamic> _$$PaymentDetailsImplToJson(
        _$PaymentDetailsImpl instance) =>
    <String, dynamic>{
      'token': instance.token,
      'redirect_url': instance.redirectUrl,
    };
