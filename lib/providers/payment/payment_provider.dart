// ignore_for_file: use_build_context_synchronously

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/entities/create_payment_model.dart';
import 'package:flutter_ecommerce/entities/get_payment_url_model.dart';
import 'package:flutter_ecommerce/providers/dio/dio_provider.dart';
import 'package:flutter_ecommerce/routers/route_name.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'payment_provider.g.dart';

@riverpod
Future<CreatePaymentModel> createPayment(
  CreatePaymentRef ref, {
  required String orderId,
}) async {
  final dio = ref.read(dioProvider);
  try {
    final response = await dio.post("/payments/$orderId");
    if (response.statusCode == 200) {
      return CreatePaymentModel.fromJson(response.data);
    } else {
      throw Exception(response.data['message'] ?? "Terjadi kesalahan");
    }
  } on DioException catch (e) {
    throw Exception(e.response?.data['message'] ?? "Terjadi kesalahan");
  }
}

@riverpod
Future<void> checkPaymentStatus(
  CheckPaymentStatusRef ref, {
  required String orderId,
  required BuildContext context,
}) async {
  final dio = ref.read(dioProvider);

  try {
    // 1. Cek status pembayaran
    final response = await dio.get('/payments/status/$orderId');
    final status =
        response.data['data']['status']?.toString().toLowerCase().trim();

    // 2. Jika status completed, langsung navigasi
    if (status == 'paid' || status == 'completed') {
      if (context.mounted) {
        context.pushReplacementNamed(RouteName.paymentSuccess);
      }
    }
    // 3. Jika status failed, navigasi ke halaman failed
    else if (status == 'failed') {
      if (context.mounted) {
        context.pushReplacementNamed(RouteName.paymentFailed);
      }
    }
    // 4. Jika masih pending, lempar exception
    else {
      throw Exception('Payment still processing');
    }
  } on DioException catch (e) {
    throw Exception(
        e.response?.data['message'] ?? "Payment verification failed");
  } catch (e) {
    rethrow;
  }
}

@riverpod
Future<GetPaymentUrlModel> getPaymentUrl(
  GetPaymentUrlRef ref, {
  required String orderId,
}) async {
  final dio = ref.read(dioProvider);
  try {
    final response = await dio.get("/payments/url/$orderId");
    if (response.statusCode == 200) {
      return GetPaymentUrlModel.fromJson(response.data);
    } else {
      throw Exception(response.data['message'] ?? "Terjadi kesalahan");
    }
  } on DioException catch (e) {
    throw Exception(e.response?.data['message'] ?? "Terjadi kesalahan");
  }
}
