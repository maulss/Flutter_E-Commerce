// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'blockchain_transaction_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BlockchainTransactionModelImpl _$$BlockchainTransactionModelImplFromJson(
        Map<String, dynamic> json) =>
    _$BlockchainTransactionModelImpl(
      success: json['success'] as bool?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : BlockchainTransactionData.fromJson(
              json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$BlockchainTransactionModelImplToJson(
        _$BlockchainTransactionModelImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'data': instance.data,
    };

_$BlockchainTransactionDataImpl _$$BlockchainTransactionDataImplFromJson(
        Map<String, dynamic> json) =>
    _$BlockchainTransactionDataImpl(
      orderId: json['orderId'] as String?,
      amount: json['amount'] as String?,
      status: json['status'] as String?,
      currency: json['currency'] as String?,
      paymentMethod: json['paymentMethod'] as String?,
      paymentEmail: json['paymentEmail'] as String?,
      merchantName: json['merchantName'] as String?,
      customerName: json['customerName'] as String?,
      timestamp: json['timestamp'] as String?,
    );

Map<String, dynamic> _$$BlockchainTransactionDataImplToJson(
        _$BlockchainTransactionDataImpl instance) =>
    <String, dynamic>{
      'orderId': instance.orderId,
      'amount': instance.amount,
      'status': instance.status,
      'currency': instance.currency,
      'paymentMethod': instance.paymentMethod,
      'paymentEmail': instance.paymentEmail,
      'merchantName': instance.merchantName,
      'customerName': instance.customerName,
      'timestamp': instance.timestamp,
    };
