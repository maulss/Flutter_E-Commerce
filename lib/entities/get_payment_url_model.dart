// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_payment_url_model.freezed.dart';
part 'get_payment_url_model.g.dart';

@freezed
class GetPaymentUrlModel with _$GetPaymentUrlModel {
  const factory GetPaymentUrlModel({
    @JsonKey(name: "success") bool? success,
    @JsonKey(name: "message") String? message,
    @JsonKey(name: "data") Data? data,
  }) = _GetPaymentUrlModel;

  factory GetPaymentUrlModel.fromJson(Map<String, dynamic> json) =>
      _$GetPaymentUrlModelFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    @JsonKey(name: "order_id") String? orderId,
    @JsonKey(name: "payment_url") String? paymentUrl,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
