// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_cart_model.freezed.dart';
part 'get_cart_model.g.dart';

@freezed
class GetCartModel with _$GetCartModel {
  const factory GetCartModel({
    @JsonKey(name: "success") bool? success,
    @JsonKey(name: "message") String? message,
    @JsonKey(name: "data") Data? data,
  }) = _GetCartModel;

  factory GetCartModel.fromJson(Map<String, dynamic> json) =>
      _$GetCartModelFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    @JsonKey(name: "cart_id") String? cartId,
    @JsonKey(name: "user_id") String? userId,
    @JsonKey(name: "items") List<Item>? items,
    @JsonKey(name: "total_price") int? totalPrice,
    @JsonKey(name: "total_quantity") int? totalQuantity,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
class Item with _$Item {
  const factory Item({
    @JsonKey(name: "cart_item_id") String? cartItemId,
    @JsonKey(name: "quantity") int? quantity,
    @JsonKey(name: "product") Product? product,
    @JsonKey(name: "total_price") int? totalPrice,
  }) = _Item;

  factory Item.fromJson(Map<String, dynamic> json) => _$ItemFromJson(json);
}

@freezed
class Product with _$Product {
  const factory Product({
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
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);
}
