// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_payment_url_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetPaymentUrlModelImpl _$$GetPaymentUrlModelImplFromJson(
        Map<String, dynamic> json) =>
    _$GetPaymentUrlModelImpl(
      success: json['success'] as bool?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$GetPaymentUrlModelImplToJson(
        _$GetPaymentUrlModelImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'data': instance.data,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      orderId: json['order_id'] as String?,
      paymentUrl: json['payment_url'] as String?,
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'order_id': instance.orderId,
      'payment_url': instance.paymentUrl,
    };
