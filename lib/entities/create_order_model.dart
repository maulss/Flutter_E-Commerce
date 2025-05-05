// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_order_model.freezed.dart';
part 'create_order_model.g.dart';

@freezed
class CreateOrderModel with _$CreateOrderModel {
  const factory CreateOrderModel({
    @JsonKey(name: "success") bool? success,
    @JsonKey(name: "message") String? message,
    @JsonKey(name: "data") Data? data,
  }) = _CreateOrderModel;

  factory CreateOrderModel.fromJson(Map<String, dynamic> json) =>
      _$CreateOrderModelFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    @JsonKey(name: "order_id") String? orderId,
    @JsonKey(name: "user_id") String? userId,
    @JsonKey(name: "total_price") int? totalPrice,
    @JsonKey(name: "status") String? status,
    @JsonKey(name: "created_at") DateTime? createdAt,
    @JsonKey(name: "order_items") List<OrderItem>? orderItems,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
class OrderItem with _$OrderItem {
  const factory OrderItem({
    @JsonKey(name: "order_item_id") String? orderItemId,
    @JsonKey(name: "order_id") String? orderId,
    @JsonKey(name: "product_id") String? productId,
    @JsonKey(name: "quantity") int? quantity,
    @JsonKey(name: "price") int? price,
  }) = _OrderItem;

  factory OrderItem.fromJson(Map<String, dynamic> json) =>
      _$OrderItemFromJson(json);
}
