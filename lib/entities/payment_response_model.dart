// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_response_model.freezed.dart';
part 'payment_response_model.g.dart';

@freezed
class PaymentResponseModel with _$PaymentResponseModel {
  const factory PaymentResponseModel({
    @JsonKey(name: "success") bool? success,
    @JsonKey(name: "message") String? message,
    @JsonKey(name: "payment_url") String? paymentUrl,
  }) = _PaymentResponseModel;

  factory PaymentResponseModel.fromJson(Map<String, dynamic> json) =>
      _$PaymentResponseModelFromJson(json);
}
