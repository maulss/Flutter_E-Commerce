import 'package:dio/dio.dart';
import 'package:flutter_ecommerce/entities/login_model.dart';
import 'package:flutter_ecommerce/entities/register_model.dart';
import 'package:flutter_ecommerce/providers/dio/dio_provider.dart';
import 'package:flutter_ecommerce/providers/shared_pref/token_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_provider.g.dart';

@riverpod
Future<RegisterModel> register(
  RegisterRef ref, {
  required String email,
  required String phoneNumber,
  required String password,
}) async {
  final dio = ref.read(dioProvider);

  final data = {
    "email": email,
    "phone_number": phoneNumber,
    "password": password,
  };

  try {
    final response = await dio.post("/users/register", data: data);
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
Future<LoginModel> login(
  LoginRef ref, {
  required String email,
  required String password,
}) async {
  final dio = ref.read(dioProvider);

  final data = {
    "email": email,
    "password": password,
  };

  try {
    final response = await dio.post("/users/login", data: data);
    if (response.statusCode == 200) {
      if (response.data['token'] != null) {
        await ref
            .read(tokenProvider.notifier)
            .saveToken("${response.data['token']}");
      }
      return LoginModel.fromJson(response.data);
    } else {
      return LoginModel(
        message: response.data['message'] ?? "Terjadi kesalahan",
      );
    }
  } on DioException catch (e) {
    return LoginModel(
      message: e.response?.data['message'] ?? "Terjadi kesalahan",
    );
  }
}
