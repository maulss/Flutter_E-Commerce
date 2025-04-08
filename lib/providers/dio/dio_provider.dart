// ignore_for_file: use_build_context_synchronously

import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_ecommerce/constant/go_router_provider.dart';
import 'package:flutter_ecommerce/providers/token/token_provider.dart';
import 'package:flutter_ecommerce/routers/route_name.dart';
import 'package:flutter_ecommerce/utils/message.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';
part 'dio_provider.g.dart';

final baseUrl = dotenv.env['BASE_URL'];

@riverpod
Dio dio(DioRef ref) {
  final dio = Dio();
  dio.options.baseUrl = baseUrl!;
  dio.options.headers['Content-Type'] = 'application/json';
  dio.options.headers['Accept'] = 'application/json';
  dio.options.connectTimeout = const Duration(seconds: 10);
  dio.options.receiveTimeout = const Duration(seconds: 10);

  dio.interceptors.add(InterceptorsWrapper(
    onRequest: (options, handler) async {
      final prefs = await SharedPreferences.getInstance();
      final token = prefs.getString('token');
      final isToken = ref.read(tokenProvider.notifier).state = token;
      if (isToken != null) {
        options.headers["Authorization"] = "Bearer $isToken";
      }
      return handler.next(options);
    },
    onError: (DioException e, handler) async {
      if (e.response?.statusCode == 401) {
        final context = navigatorKey.currentState?.context;
        final prefs = await SharedPreferences.getInstance();
        await prefs.remove('token');
        ref.read(tokenProvider.notifier).state = null;
        ref.read(routerProvider).pushReplacementNamed(RouteName.login);
        showError(context!, "Session expired, please login again");
      }
      return handler.next(e);
    },
  ));

  return dio;
}
