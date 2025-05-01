// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_create_order_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RequestCreateOrderModelImpl _$$RequestCreateOrderModelImplFromJson(
        Map<String, dynamic> json) =>
    _$RequestCreateOrderModelImpl(
      userId: json['user_id'] as String?,
      products: (json['products'] as List<dynamic>?)
          ?.map((e) => Product.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$RequestCreateOrderModelImplToJson(
        _$RequestCreateOrderModelImpl instance) =>
    <String, dynamic>{
      'user_id': instance.userId,
      'products': instance.products,
    };

_$ProductImpl _$$ProductImplFromJson(Map<String, dynamic> json) =>
    _$ProductImpl(
      productId: json['productId'] as String?,
      quantity: (json['quantity'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$ProductImplToJson(_$ProductImpl instance) =>
    <String, dynamic>{
      'productId': instance.productId,
      'quantity': instance.quantity,
    };
