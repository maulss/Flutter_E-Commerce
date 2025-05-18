import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_ecommerce/entities/category_product_model.dart';
import 'package:flutter_ecommerce/entities/create_category_model.dart';
import 'package:flutter_ecommerce/entities/delete_product_model.dart';
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

@riverpod
Future<CreateCategoryModel> createCategory(
  CreateCategoryRef ref, {
  required String categoryName,
  required String categoryId,
  File? imageUrl,
  required String description,
}) async {
  final dio = ref.read(dioProvider);
  final formData = FormData.fromMap({
    "category_id": categoryId,
    "name": categoryName,
    if (imageUrl != null)
      "image_url": await MultipartFile.fromFile(
        imageUrl.path,
        filename: imageUrl.path.split('/').last,
      ),
    "description": description,
  });
  try {
    final response = await dio.post("/categories/create",
        data: formData,
        options: Options(
          contentType: 'multipart/form-data',
        ));
    if (response.statusCode == 201) {
      return CreateCategoryModel.fromJson(response.data);
    } else {
      return CreateCategoryModel(
        message: response.data['message'] ?? "Terjadi kesalahan",
      );
    }
  } on DioException catch (e) {
    return e.response?.data['message'] ?? "Terjadi kesalahan";
  }
}

@riverpod
Future<CreateCategoryModel> updateCategory(
  UpdateCategoryRef ref, {
  required String categoryName,
  required String categoryId,
  File? imageUrl,
  required String description,
}) async {
  final dio = ref.read(dioProvider);
  final formData = FormData.fromMap({
    "category_id": categoryId,
    "name": categoryName,
    if (imageUrl != null)
      "image_url": await MultipartFile.fromFile(
        imageUrl.path,
        filename: imageUrl.path.split('/').last,
      ),
    "description": description,
  });
  try {
    final response = await dio.put("/categories/$categoryId",
        data: formData,
        options: Options(
          contentType: 'multipart/form-data',
        ));
    if (response.statusCode == 200) {
      return CreateCategoryModel.fromJson(response.data);
    } else {
      return CreateCategoryModel(
        message: response.data['message'] ?? "Terjadi kesalahan",
      );
    }
  } on DioException catch (e) {
    return e.response?.data['message'] ?? "Terjadi kesalahan";
  }
}

@riverpod
Future<CreateCategoryModel> getDetailCategory(
  GetDetailCategoryRef ref, {
  required String categoryId,
}) async {
  final dio = ref.read(dioProvider);
  try {
    final response = await dio.get("/categories/$categoryId");
    if (response.statusCode == 200) {
      return CreateCategoryModel.fromJson(response.data);
    } else {
      return CreateCategoryModel(
        message: response.data['message'] ?? "Terjadi kesalahan",
      );
    }
  } on DioException catch (e) {
    return e.response?.data['message'] ?? "Terjadi kesalahan";
  }
}

@riverpod
Future<DeleteProductModel> deleteCategory(
  DeleteCategoryRef ref, {
  required String categoryId,
}) async {
  final dio = ref.read(dioProvider);
  try {
    final response = await dio.delete("/categories/$categoryId");
    if (response.statusCode == 200) {
      return DeleteProductModel.fromJson(response.data);
    } else {
      throw Exception(response.data['message'] ?? "Terjadi kesalahan");
    }
  } on DioException catch (e) {
    throw Exception(e.response?.data['message'] ?? "Terjadi kesalahan");
  }
}
