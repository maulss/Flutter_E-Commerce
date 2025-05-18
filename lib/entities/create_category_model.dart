// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_category_model.freezed.dart';
part 'create_category_model.g.dart';

@freezed
class CreateCategoryModel with _$CreateCategoryModel {
  const factory CreateCategoryModel({
    @JsonKey(name: "success") bool? success,
    @JsonKey(name: "message") String? message,
    @JsonKey(name: "data") Data? data,
  }) = _CreateCategoryModel;

  factory CreateCategoryModel.fromJson(Map<String, dynamic> json) =>
      _$CreateCategoryModelFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    @JsonKey(name: "category_id") String? categoryId,
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "image_url") String? imageUrl,
    @JsonKey(name: "description") String? description,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
