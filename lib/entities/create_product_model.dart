// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_product_model.freezed.dart';
part 'create_product_model.g.dart';

@freezed
class CreateProductModel with _$CreateProductModel {
  const factory CreateProductModel({
    @JsonKey(name: "success") bool? success,
    @JsonKey(name: "message") String? message,
    @JsonKey(name: "data") Data? data,
  }) = _CreateProductModel;

  factory CreateProductModel.fromJson(Map<String, dynamic> json) =>
      _$CreateProductModelFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    @JsonKey(name: "product_id") String? productId,
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "description") String? description,
    @JsonKey(name: "price") int? price,
    @JsonKey(name: "stock") int? stock,
    @JsonKey(name: "image_url") String? imageUrl,
    @JsonKey(name: "isFeatured") bool? isFeatured,
    @JsonKey(name: "isNew") bool? isNew,
    @JsonKey(name: "category_id") String? categoryId,
    @JsonKey(name: "created_by_id") String? createdById,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
