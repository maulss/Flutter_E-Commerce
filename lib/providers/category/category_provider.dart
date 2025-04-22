import 'package:dio/dio.dart';
import 'package:flutter_ecommerce/entities/category_product_model.dart';

import 'package:flutter_ecommerce/providers/dio/dio_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'category_provider.g.dart';

@riverpod
Future<CategoryProductModel> categoryProduct(
  CategoryProductRef ref, {
  required String productId,
}) async {
  final dio = ref.read(dioProvider);
  try {
    final response = await dio.get("/products", queryParameters: {
      "categoryId": productId,
    });
    if (response.statusCode == 200) {
      return CategoryProductModel.fromJson(response.data);
    } else {
      return CategoryProductModel(
        message: response.data['message'] ?? "Terjadi kesalahan",
      );
    }
  } on DioException catch (e) {
    return e.response?.data['message'] ?? "Terjadi kesalahan";
  }
}
