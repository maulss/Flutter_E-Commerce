import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_ecommerce/entities/create_product_model.dart';
import 'package:flutter_ecommerce/entities/delete_product_model.dart';
import 'package:flutter_ecommerce/entities/detail_product_model.dart';
import 'package:flutter_ecommerce/entities/get_product_response_model.dart';
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

@riverpod
Future<GetProductResponseModel> getProduct(
  GetProductRef ref,
) async {
  final dio = ref.read(dioProvider);
  try {
    final response = await dio.get("/products");
    if (response.statusCode == 200) {
      return GetProductResponseModel.fromJson(response.data);
    } else {
      throw Exception(response.data['message'] ?? "Terjadi kesalahan");
    }
  } on DioException catch (e) {
    throw Exception(e.response?.data['message'] ?? "Terjadi kesalahan");
  }
}

@riverpod
Future<CreateProductModel> createProduct(
  CreateProductRef ref, {
  required String productName,
  required String description,
  required int price,
  required int stock,
  required File imageUrl,
  required bool isFeatured,
  required bool isNew,
  required String categoryId,
  required String createdById,
}) async {
  final dio = ref.read(dioProvider);

  final formData = FormData.fromMap({
    "name": productName,
    "description": description,
    "price": price,
    "stock": stock,
    "image_url": await MultipartFile.fromFile(
      imageUrl.path,
      filename: imageUrl.path.split('/').last,
    ),
    "isFeatured": isFeatured,
    "isNew": isNew,
    "category_id": categoryId,
    "created_by_id": createdById,
  });
  try {
    final response = await dio.post(
      "/products/create",
      data: formData,
      options: Options(
        contentType: 'multipart/form-data',
      ),
    );
    if (response.statusCode == 201) {
      return CreateProductModel.fromJson(response.data);
    } else {
      throw Exception(response.data['message'] ?? "Terjadi kesalahan");
    }
  } on DioException catch (e) {
    throw Exception(e.response?.data['message'] ?? "Terjadi kesalahan");
  }
}

@riverpod
Future<CreateProductModel> updateProduct(
  UpdateProductRef ref, {
  required String productId,
  required String productName,
  required String description,
  required int price,
  required int stock,
  File? imageUrl,
  required bool isFeatured,
  required bool isNew,
  required String categoryId,
}) async {
  final dio = ref.read(dioProvider);

  final formData = FormData.fromMap({
    "name": productName,
    "description": description,
    "price": price,
    "stock": stock,
    if (imageUrl != null)
      "image_url": await MultipartFile.fromFile(
        imageUrl.path,
        filename: imageUrl.path.split('/').last,
      ),
    "isFeatured": isFeatured,
    "isNew": isNew,
    "category_id": categoryId,
  });
  try {
    final response = await dio.put(
      "/products/$productId",
      data: formData,
      options: Options(
        contentType: 'multipart/form-data',
      ),
    );
    if (response.statusCode == 200) {
      return CreateProductModel.fromJson(response.data);
    } else {
      throw Exception(response.data['message'] ?? "Terjadi kesalahan");
    }
  } on DioException catch (e) {
    throw Exception(e.response?.data['message'] ?? "Terjadi kesalahan");
  }
}

@riverpod
Future<DeleteProductModel> deleteProduct(
  DeleteProductRef ref, {
  required String productId,
}) async {
  final dio = ref.read(dioProvider);
  try {
    final response = await dio.delete("/products/$productId");
    if (response.statusCode == 200) {
      return DeleteProductModel.fromJson(response.data);
    } else {
      throw Exception(response.data['message'] ?? "Terjadi kesalahan");
    }
  } on DioException catch (e) {
    throw Exception(e.response?.data['message'] ?? "Terjadi kesalahan");
  }
}
