// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaymentResponseModelImpl _$$PaymentResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PaymentResponseModelImpl(
      success: json['success'] as bool?,
      message: json['message'] as String?,
      paymentUrl: json['payment_url'] as String?,
    );

Map<String, dynamic> _$$PaymentResponseModelImplToJson(
        _$PaymentResponseModelImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'payment_url': instance.paymentUrl,
    };
