import 'package:dio/dio.dart';
import 'package:flutter_ecommerce/entities/payment_response_model.dart';
import 'package:flutter_ecommerce/providers/dio/dio_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'payment_provider.g.dart';

@riverpod
Future<PaymentResponseModel> createPayment(
  CreatePaymentRef ref, {
  required String orderId,
  required String paymentMethod,
}) async {
  final dio = ref.read(dioProvider);
  try {
    final response = await dio.post("/payments", data: {
      "order_id": orderId,
      "payment_method": paymentMethod,
    });
    if (response.statusCode == 200) {
      return PaymentResponseModel.fromJson(response.data);
    } else {
      throw Exception(response.data['message'] ?? "Terjadi kesalahan");
    }
  } on DioException catch (e) {
    throw Exception(e.response?.data['message'] ?? "Terjadi kesalahan");
  }
}
