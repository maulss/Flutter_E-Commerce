// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_cart_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetCartModelImpl _$$GetCartModelImplFromJson(Map<String, dynamic> json) =>
    _$GetCartModelImpl(
      success: json['success'] as bool?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$GetCartModelImplToJson(_$GetCartModelImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'data': instance.data,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      cartId: json['cart_id'] as String?,
      userId: json['user_id'] as String?,
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => Item.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalPrice: (json['total_price'] as num?)?.toInt(),
      totalQuantity: (json['total_quantity'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'cart_id': instance.cartId,
      'user_id': instance.userId,
      'items': instance.items,
      'total_price': instance.totalPrice,
      'total_quantity': instance.totalQuantity,
    };

_$ItemImpl _$$ItemImplFromJson(Map<String, dynamic> json) => _$ItemImpl(
      cartItemId: json['cart_item_id'] as String?,
      quantity: (json['quantity'] as num?)?.toInt(),
      product: json['product'] == null
          ? null
          : Product.fromJson(json['product'] as Map<String, dynamic>),
      totalPrice: (json['total_price'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$ItemImplToJson(_$ItemImpl instance) =>
    <String, dynamic>{
      'cart_item_id': instance.cartItemId,
      'quantity': instance.quantity,
      'product': instance.product,
      'total_price': instance.totalPrice,
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
