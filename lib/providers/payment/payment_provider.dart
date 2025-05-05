// ignore_for_file: use_build_context_synchronously

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/entities/create_payment_model.dart';
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

// @riverpod
// Future<void> checkPaymentStatus(
//   CheckPaymentStatusRef ref, {
//   required String orderId,
//   required BuildContext context,
// }) async {
//   final dio = ref.read(dioProvider);
//   try {
//     final response = await dio.get('/payments/status/$orderId');
//     if (response.statusCode == 200) {
//       final status = response.data['status'];
//       if (status == 'paid' || status == 'completed') {
//         context.pushReplacementNamed(RouteName.paymentSuccess);
//       } else if (status == 'failed') {
//         context.pushReplacementNamed(RouteName.paymentFailed);
//       } else {
//         ScaffoldMessenger.of(context).showSnackBar(
//           const SnackBar(
//             content: Text('Menunggu konfirmasi pembayaran...'),
//           ),
//         );
//       }
//     } else {
//       throw Exception('Terjadi kesalahan saat memeriksa status pembayaran');
//     }
//   } on DioException catch (e) {
//     throw Exception(e.response?.data['message'] ?? "Terjadi kesalahan");
//   }
// }

@riverpod
Future<void> checkPaymentStatus(
  CheckPaymentStatusRef ref, {
  required String orderId,
  required BuildContext context,
}) async {
  final dio = ref.read(dioProvider);

  try {
    // Debug 1: Log sebelum request
    debugPrint('🔄 Checking payment status for order: $orderId');

    final response = await dio.get('/payments/status/$orderId');

    // Debug 2: Log raw response
    debugPrint('📦 Raw response: ${response.data}');

    if (response.statusCode == 200) {
      final status =
          response.data['data']['status']?.toString().toLowerCase().trim();

      // Debug 3: Log normalized status
      debugPrint('🏷️ Normalized status: "$status"');

      if (status == 'paid' || status == 'completed') {
        debugPrint('✅ Payment success, navigating to success page');
        if (context.mounted) {
          context.pushReplacementNamed(RouteName.paymentSuccess);
        }
      } else if (status == 'failed') {
        debugPrint('❌ Payment failed, navigating to failed page');
        if (context.mounted) {
          context.pushReplacementNamed(RouteName.paymentFailed);
        }
      } else {
        debugPrint('⏳ Payment pending, showing snackbar');
        if (context.mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Menunggu konfirmasi pembayaran...'),
            ),
          );
        }
      }
    } else {
      debugPrint('⚠️ Server returned status code: ${response.statusCode}');
      throw Exception('Terjadi kesalahan saat memeriksa status pembayaran');
    }
  } on DioException catch (e) {
    // Debug 4: Log Dio errors
    debugPrint('🔥 Dio error: ${e.message}');
    debugPrint('💬 Response error: ${e.response?.data}');
    throw Exception(e.response?.data['message'] ?? "Terjadi kesalahan");
  } catch (e) {
    // Debug 5: Log unexpected errors
    debugPrint('💥 Unexpected error: $e');
    rethrow;
  }
}
