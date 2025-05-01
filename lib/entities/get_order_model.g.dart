// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_order_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetOrderModelImpl _$$GetOrderModelImplFromJson(Map<String, dynamic> json) =>
    _$GetOrderModelImpl(
      success: json['success'] as bool?,
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Datum.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$GetOrderModelImplToJson(_$GetOrderModelImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'data': instance.data,
    };

_$DatumImpl _$$DatumImplFromJson(Map<String, dynamic> json) => _$DatumImpl(
      orderId: json['order_id'] as String?,
      userId: json['user_id'] as String?,
      totalPrice: (json['total_price'] as num?)?.toInt(),
      status: json['status'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      orderItems: (json['order_items'] as List<dynamic>?)
          ?.map((e) => OrderItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$DatumImplToJson(_$DatumImpl instance) =>
    <String, dynamic>{
      'order_id': instance.orderId,
      'user_id': instance.userId,
      'total_price': instance.totalPrice,
      'status': instance.status,
      'created_at': instance.createdAt?.toIso8601String(),
      'order_items': instance.orderItems,
    };

_$OrderItemImpl _$$OrderItemImplFromJson(Map<String, dynamic> json) =>
    _$OrderItemImpl(
      orderItemId: json['order_item_id'] as String?,
      orderId: json['order_id'] as String?,
      productId: json['product_id'] as String?,
      quantity: (json['quantity'] as num?)?.toInt(),
      price: (json['price'] as num?)?.toInt(),
      product: json['product'] == null
          ? null
          : Product.fromJson(json['product'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$OrderItemImplToJson(_$OrderItemImpl instance) =>
    <String, dynamic>{
      'order_item_id': instance.orderItemId,
      'order_id': instance.orderId,
      'product_id': instance.productId,
      'quantity': instance.quantity,
      'price': instance.price,
      'product': instance.product,
    };

_$ProductImpl _$$ProductImplFromJson(Map<String, dynamic> json) =>
    _$ProductImpl(
      productId: json['product_id'] as String?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      price: (json['price'] as num?)?.toInt(),
      stock: (json['stock'] as num?)?.toInt(),
      imageUrl: json['image_url'] as String?,
      isFeatured: json['isFeatured'] as bool?,
      isNew: json['isNew'] as bool?,
      categoryId: json['category_id'] as String?,
      createdById: json['created_by_id'] as String?,
    );

Map<String, dynamic> _$$ProductImplToJson(_$ProductImpl instance) =>
    <String, dynamic>{
      'product_id': instance.productId,
      'name': instance.name,
      'description': instance.description,
      'price': instance.price,
      'stock': instance.stock,
      'image_url': instance.imageUrl,
      'isFeatured': instance.isFeatured,
      'isNew': instance.isNew,
      'category_id': instance.categoryId,
      'created_by_id': instance.createdById,
    };
