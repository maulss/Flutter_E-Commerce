import 'package:dio/dio.dart';
import 'package:flutter_ecommerce/entities/detail_product_model.dart';
import 'package:flutter_ecommerce/entities/product_model.dart';
import 'package:flutter_ecommerce/providers/dio/dio_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'product_provider.g.dart';

@riverpod
Future<DetailProductModel> getDetailProduct(
  GetDetailProductRef ref, {
  required String productId,
}) async {
  final dio = ref.read(dioProvider);
  try {
    final response = await dio.get("/products/$productId");
    if (response.statusCode == 200) {
      return DetailProductModel.fromJson(response.data);
    } else {
      throw Exception(response.data['message'] ?? "Terjadi kesalahan");
    }
  } on DioException catch (e) {
    throw Exception(e.response?.data['message'] ?? "Terjadi kesalahan");
  }
}

@riverpod
Future<ProductModel> searchProduct(
  SearchProductRef ref, {
  required String searchQuery,
}) async {
  final dio = ref.read(dioProvider);
  try {
    final response = await dio.get("/products", queryParameters: {
      "search": searchQuery,
    });
    if (response.statusCode == 200) {
      return ProductModel.fromJson(response.data);
    } else {
      throw Exception(response.data['message'] ?? "Terjadi kesalahan");
    }
  } on DioException catch (e) {
    throw Exception(e.response?.data['message'] ?? "Terjadi kesalahan");
  }
}
