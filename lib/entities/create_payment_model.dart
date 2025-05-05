// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_payment_model.freezed.dart';
part 'create_payment_model.g.dart';

@freezed
class CreatePaymentModel with _$CreatePaymentModel {
  const factory CreatePaymentModel({
    @JsonKey(name: "success") bool? success,
    @JsonKey(name: "message") String? message,
    @JsonKey(name: "data") Data? data,
  }) = _CreatePaymentModel;

  factory CreatePaymentModel.fromJson(Map<String, dynamic> json) =>
      _$CreatePaymentModelFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    @JsonKey(name: "paymentDetails") PaymentDetails? paymentDetails,
    @JsonKey(name: "orderId") String? orderId,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
class PaymentDetails with _$PaymentDetails {
  const factory PaymentDetails({
    @JsonKey(name: "token") String? token,
    @JsonKey(name: "redirect_url") String? redirectUrl,
  }) = _PaymentDetails;

  factory PaymentDetails.fromJson(Map<String, dynamic> json) =>
      _$PaymentDetailsFromJson(json);
}
