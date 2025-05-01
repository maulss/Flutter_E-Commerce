import 'package:dio/dio.dart';
import 'package:flutter_ecommerce/entities/delete_product_model.dart';
import 'package:flutter_ecommerce/entities/get_cart_model.dart';
import 'package:flutter_ecommerce/entities/register_model.dart';
import 'package:flutter_ecommerce/entities/update_cart_model.dart';
import 'package:flutter_ecommerce/providers/dio/dio_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'cart_provider.g.dart';

@riverpod
Future<RegisterModel> addToCart(
  AddToCartRef ref, {
  required String productId,
  required int quantity,
}) async {
  final dio = ref.read(dioProvider);
  final data = {
    "product_id": productId,
    "quantity": quantity,
  };

  try {
    final response = await dio.post("/carts/add", data: data);
    if (response.statusCode == 201) {
      return RegisterModel.fromJson(response.data);
    } else {
      return RegisterModel(
        message: response.data['message'] ?? "Terjadi kesalahan",
      );
    }
  } on DioException catch (e) {
    return RegisterModel(
      message: e.response?.data['message'] ?? "Terjadi kesalahan",
    );
  }
}

@riverpod
Future<GetCartModel> getCart(
  GetCartRef ref,
) async {
  final dio = ref.read(dioProvider);
  try {
    final response = await dio.get("/carts");
    if (response.statusCode == 200) {
      return GetCartModel.fromJson(response.data);
    } else {
      return GetCartModel(
        message: response.data['message'] ?? "Terjadi kesalahan",
      );
    }
  } on DioException catch (e) {
    return GetCartModel(
      message: e.response?.data['message'] ?? "Terjadi kesalahan",
    );
  }
}

@riverpod
Future<DeleteProductModel> deleteCart(
  DeleteCartRef ref, {
  required String productId,
}) async {
  final dio = ref.read(dioProvider);
  try {
    final response = await dio.delete("/carts/items/$productId");
    if (response.statusCode == 200) {
      return DeleteProductModel.fromJson(response.data);
    } else {
      return DeleteProductModel(
        message: response.data['message'] ?? "Terjadi kesalahan",
      );
    }
  } on DioException catch (e) {
    return DeleteProductModel(
      message: e.response?.data['message'] ?? "Terjadi kesalahan",
    );
  }
}

@riverpod
Future<UpdateCartModel> updateCart(
  UpdateCartRef ref, {
  required String productId,
  required int quantity,
}) async {
  final dio = ref.read(dioProvider);
  final data = {
    "quantity": quantity,
  };

  try {
    final response = await dio.put("/carts/items/$productId", data: data);
    if (response.statusCode == 200) {
      return UpdateCartModel.fromJson(response.data);
    } else {
      return UpdateCartModel(
        message: response.data['message'] ?? "Terjadi kesalahan",
      );
    }
  } on DioException catch (e) {
    return UpdateCartModel(
      message: e.response?.data['message'] ?? "Terjadi kesalahan",
    );
  }
}
