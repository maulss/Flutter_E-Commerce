import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_ecommerce/entities/update_user_model.dart';
import 'package:flutter_ecommerce/entities/user_model.dart';
import 'package:flutter_ecommerce/providers/dio/dio_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'profile_provider.g.dart';

@riverpod
Future<UserModel> getUser(GetUserRef ref) async {
  final dio = ref.read(dioProvider);
  try {
    final response = await dio.get("/users/current");
    if (response.statusCode == 200) {
      return UserModel.fromJson(response.data);
    } else {
      throw Exception(response.data['message'] ?? "Terjadi kesalahan");
    }
  } on DioException catch (e) {
    throw Exception(e.response?.data['message'] ?? "Terjadi kesalahan");
  }
}

@riverpod
Future<UpdateUserModel> updateUser(
  UpdateUserRef ref, {
  required String fullName,
  required String email,
  required String phoneNumber,
  File? profilePicture,
}) async {
  final dio = ref.read(dioProvider);

  final formData = FormData.fromMap({
    "name": fullName,
    "email": email,
    "phone_number": phoneNumber,
    if (profilePicture != null)
      "profile_picture": await MultipartFile.fromFile(
        profilePicture.path,
        filename: profilePicture.path.split('/').last,
      ),
  });

  try {
    final response = await dio.patch(
      "/users/update",
      data: formData,
      options: Options(
        contentType: 'multipart/form-data',
      ),
    );

    if (response.statusCode == 200) {
      return UpdateUserModel.fromJson(response.data);
    } else {
      throw Exception(response.data['message'] ?? "Terjadi kesalahan");
    }
  } on DioException catch (e) {
    throw Exception(e.response?.data['message'] ?? "Terjadi kesalahan");
  }
}

@riverpod
Future<UpdateUserModel> changePassword(
  ChangePasswordRef ref, {
  required String oldPassword,
  required String newPassword,
}) async {
  final dio = ref.read(dioProvider);

  final data = {
    "old_password": oldPassword,
    "new_password": newPassword,
  };

  try {
    final response = await dio.patch("/users//change-password", data: data);
    if (response.statusCode == 200) {
      return UpdateUserModel.fromJson(response.data);
    } else {
      throw Exception(response.data['message'] ?? "Terjadi kesalahan");
    }
  } on DioException catch (e) {
    throw Exception(e.response?.data['message'] ?? "Terjadi kesalahan");
  }
}
