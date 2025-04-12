import 'package:dio/dio.dart';
import 'package:flutter_ecommerce/entities/banner_model.dart';
import 'package:flutter_ecommerce/entities/category_model.dart';
import 'package:flutter_ecommerce/entities/product_model.dart';
import 'package:flutter_ecommerce/providers/dio/dio_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'home_provider.g.dart';

@riverpod
Future<BannerModel> getBanner(
  GetBannerRef ref,
) async {
  final dio = ref.read(dioProvider);
  try {
    final response = await dio.get("/banners");
    if (response.statusCode == 200) {
      return BannerModel.fromJson(response.data);
    } else {
      throw Exception(response.data['message'] ?? "Terjadi kesalahan");
    }
  } on DioException catch (e) {
    throw Exception(e.response?.data['message'] ?? "Terjadi kesalahan");
  }
}

@riverpod
Future<CategoryModel> getCategory(
  GetCategoryRef ref,
) async {
  final dio = ref.read(dioProvider);
  try {
    final response = await dio.get("/categories");
    if (response.statusCode == 200) {
      return CategoryModel.fromJson(response.data);
    } else {
      throw Exception(response.data['message'] ?? "Terjadi kesalahan");
    }
  } on DioException catch (e) {
    throw Exception(e.response?.data['message'] ?? "Terjadi kesalahan");
  }
}

@riverpod
Future<ProductModel> getFeaturedProduct(
  GetFeaturedProductRef ref,
) async {
  final dio = ref.read(dioProvider);
  try {
    final response = await dio.get(
      "/products",
      queryParameters: {
        "isFeatured": true,
      },
    );
    if (response.statusCode == 200) {
      return ProductModel.fromJson(response.data);
    } else {
      throw Exception(response.data['message'] ?? "Terjadi kesalahan");
    }
  } on DioException catch (e) {
    throw Exception(e.response?.data['message'] ?? "Terjadi kesalahan");
  }
}
