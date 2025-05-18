// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_category_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateCategoryModelImpl _$$CreateCategoryModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateCategoryModelImpl(
      success: json['success'] as bool?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CreateCategoryModelImplToJson(
        _$CreateCategoryModelImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'data': instance.data,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      categoryId: json['category_id'] as String?,
      name: json['name'] as String?,
      imageUrl: json['image_url'] as String?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'category_id': instance.categoryId,
      'name': instance.name,
      'image_url': instance.imageUrl,
      'description': instance.description,
    };
