// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'request_create_order_model.freezed.dart';
part 'request_create_order_model.g.dart';

@freezed
class RequestCreateOrderModel with _$RequestCreateOrderModel {
  const factory RequestCreateOrderModel({
    @JsonKey(name: "user_id") String? userId,
    @JsonKey(name: "products") List<Product>? products,
  }) = _RequestCreateOrderModel;

  factory RequestCreateOrderModel.fromJson(Map<String, dynamic> json) =>
      _$RequestCreateOrderModelFromJson(json);
}

@freezed
class Product with _$Product {
  const factory Product({
    @JsonKey(name: "productId") String? productId,
    @JsonKey(name: "quantity") int? quantity,
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);
}
