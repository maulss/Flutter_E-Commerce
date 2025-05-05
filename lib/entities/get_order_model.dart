// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_order_model.freezed.dart';
part 'get_order_model.g.dart';

@freezed
class GetOrderModel with _$GetOrderModel {
  const factory GetOrderModel({
    @JsonKey(name: "success") bool? success,
    @JsonKey(name: "message") String? message,
    @JsonKey(name: "data") List<Datum>? data,
  }) = _GetOrderModel;

  factory GetOrderModel.fromJson(Map<String, dynamic> json) =>
      _$GetOrderModelFromJson(json);
}

@freezed
class Datum with _$Datum {
  const factory Datum({
    @JsonKey(name: "order_id") String? orderId,
    @JsonKey(name: "user_id") String? userId,
    @JsonKey(name: "total_price") int? totalPrice,
    @JsonKey(name: "status") String? status,
    @JsonKey(name: "created_at") DateTime? createdAt,
    @JsonKey(name: "order_items") List<OrderItem>? orderItems,
  }) = _Datum;

  factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);
}

@freezed
class OrderItem with _$OrderItem {
  const factory OrderItem({
    @JsonKey(name: "order_item_id") String? orderItemId,
    @JsonKey(name: "order_id") String? orderId,
    @JsonKey(name: "product_id") String? productId,
    @JsonKey(name: "quantity") int? quantity,
    @JsonKey(name: "price") int? price,
    @JsonKey(name: "product") Product? product,
  }) = _OrderItem;

  factory OrderItem.fromJson(Map<String, dynamic> json) =>
      _$OrderItemFromJson(json);
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
