// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detail_product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DetailProductModelImpl _$$DetailProductModelImplFromJson(
        Map<String, dynamic> json) =>
    _$DetailProductModelImpl(
      success: json['success'] as bool?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DetailProductModelImplToJson(
        _$DetailProductModelImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'data': instance.data,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
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

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
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
