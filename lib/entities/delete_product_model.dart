// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'delete_product_model.freezed.dart';
part 'delete_product_model.g.dart';

@freezed
class DeleteProductModel with _$DeleteProductModel {
  const factory DeleteProductModel({
    @JsonKey(name: "success") bool? success,
    @JsonKey(name: "message") String? message,
  }) = _DeleteProductModel;

  factory DeleteProductModel.fromJson(Map<String, dynamic> json) =>
      _$DeleteProductModelFromJson(json);
}
