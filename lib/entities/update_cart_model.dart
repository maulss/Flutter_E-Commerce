// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_cart_model.freezed.dart';
part 'update_cart_model.g.dart';

@freezed
class UpdateCartModel with _$UpdateCartModel {
  const factory UpdateCartModel({
    @JsonKey(name: "success") bool? success,
    @JsonKey(name: "message") String? message,
  }) = _UpdateCartModel;

  factory UpdateCartModel.fromJson(Map<String, dynamic> json) =>
      _$UpdateCartModelFromJson(json);
}
