// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'cancel_response_model.freezed.dart';
part 'cancel_response_model.g.dart';

@freezed
class CancelResponseModel with _$CancelResponseModel {
  const factory CancelResponseModel({
    @JsonKey(name: "success") bool? success,
    @JsonKey(name: "message") String? message,
  }) = _CancelResponseModel;

  factory CancelResponseModel.fromJson(Map<String, dynamic> json) =>
      _$CancelResponseModelFromJson(json);
}
