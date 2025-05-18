// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'blockchain_transaction_model.freezed.dart';
part 'blockchain_transaction_model.g.dart';

@freezed
class BlockchainTransactionModel with _$BlockchainTransactionModel {
  const factory BlockchainTransactionModel({
    @JsonKey(name: "success") bool? success,
    @JsonKey(name: "message") String? message,
    @JsonKey(name: "data") BlockchainTransactionData? data,
  }) = _BlockchainTransactionModel;

  factory BlockchainTransactionModel.fromJson(Map<String, dynamic> json) =>
      _$BlockchainTransactionModelFromJson(json);
}

@freezed
class BlockchainTransactionData with _$BlockchainTransactionData {
  const factory BlockchainTransactionData({
    @JsonKey(name: "orderId") String? orderId,
    @JsonKey(name: "amount") String? amount,
    @JsonKey(name: "status") String? status,
    @JsonKey(name: "currency") String? currency,
    @JsonKey(name: "paymentMethod") String? paymentMethod,
    @JsonKey(name: "paymentEmail") String? paymentEmail,
    @JsonKey(name: "merchantName") String? merchantName,
    @JsonKey(name: "customerName") String? customerName,
    @JsonKey(name: "timestamp") String? timestamp,
  }) = _BlockchainTransactionData;

  factory BlockchainTransactionData.fromJson(Map<String, dynamic> json) =>
      _$BlockchainTransactionDataFromJson(json);
}
