import 'package:dio/dio.dart';
import 'package:flutter_ecommerce/entities/blockchain_transaction_model.dart';
import 'package:flutter_ecommerce/entities/cancel_response_model.dart';
import 'package:flutter_ecommerce/entities/create_order_model.dart';
import 'package:flutter_ecommerce/entities/get_order_model.dart';
import 'package:flutter_ecommerce/entities/order_detail_model.dart';
import 'package:flutter_ecommerce/providers/dio/dio_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'order_provider.g.dart';

@riverpod
Future<CreateOrderModel> createOrder(
  CreateOrderRef ref,
) async {
  final dio = ref.read(dioProvider);
  try {
    final response = await dio.post("/orders/create");
    if (response.statusCode == 201) {
      return CreateOrderModel.fromJson(response.data);
    } else {
      return CreateOrderModel(
        message: response.data['message'] ?? "Terjadi kesalahan",
      );
    }
  } on DioException catch (e) {
    throw Exception(e.response?.data['message'] ?? "Terjadi kesalahan");
  }
}

@riverpod
Future<GetOrderModel> getOrder(
  GetOrderRef ref, {
  required String status,
}) async {
  final dio = ref.read(dioProvider);
  try {
    final response = await dio.get("/orders?status=$status");
    if (response.statusCode == 200) {
      return GetOrderModel.fromJson(response.data);
    } else {
      return GetOrderModel(
        message: response.data['message'] ?? "Terjadi kesalahan",
      );
    }
  } on DioException catch (e) {
    throw Exception(e.response?.data['message'] ?? "Terjadi kesalahan");
  }
}

@riverpod
Future<CancelResponseModel> cancelOrder(
  CancelOrderRef ref, {
  required String orderId,
}) async {
  final dio = ref.read(dioProvider);
  try {
    final response = await dio.patch("/orders/$orderId/cancel");
    if (response.statusCode == 200) {
      return CancelResponseModel.fromJson(response.data);
    } else {
      return CancelResponseModel(
        message: response.data['message'] ?? "Terjadi kesalahan",
      );
    }
  } on DioException catch (e) {
    throw Exception(e.response?.data['message'] ?? "Terjadi kesalahan");
  }
}

@riverpod
Future<OrderDetailModel> getOrderDetail(
  GetOrderDetailRef ref, {
  required String orderId,
}) async {
  final dio = ref.read(dioProvider);
  try {
    final response = await dio.get("/orders/$orderId");
    if (response.statusCode == 200) {
      return OrderDetailModel.fromJson(response.data);
    } else {
      return OrderDetailModel(
        message: response.data['message'] ?? "Terjadi kesalahan",
      );
    }
  } on DioException catch (e) {
    throw Exception(e.response?.data['message'] ?? "Terjadi kesalahan");
  }
}

@riverpod
Future<BlockchainTransactionModel> getBlockchainTransaction(
  GetBlockchainTransactionRef ref, {
  required String orderId,
}) async {
  final dio = ref.read(dioProvider);
  try {
    final response = await dio.get("/blockchain/transaction/$orderId");
    if (response.statusCode == 200) {
      return BlockchainTransactionModel.fromJson(response.data);
    } else {
      return BlockchainTransactionModel(
        message: response.data['message'] ?? "Terjadi kesalahan",
      );
    }
  } on DioException catch (e) {
    throw Exception(e.response?.data['message'] ?? "Terjadi kesalahan");
  }
}
