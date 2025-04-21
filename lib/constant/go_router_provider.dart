import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/pages/auth/login_page.dart';
import 'package:flutter_ecommerce/pages/auth/register_page.dart';
import 'package:flutter_ecommerce/pages/category/category_page.dart';
import 'package:flutter_ecommerce/pages/category/detail_category.dart';
import 'package:flutter_ecommerce/pages/home/welcome_page.dart';
import 'package:flutter_ecommerce/pages/product/detail_product_page.dart';
import 'package:flutter_ecommerce/pages/profile/about_me_page.dart';
import 'package:flutter_ecommerce/providers/token/token_provider.dart';
import 'package:flutter_ecommerce/routers/route_name.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'go_router_provider.g.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

@Riverpod(keepAlive: true)
Raw<GoRouter> router(RouterRef ref) {
  return GoRouter(
    initialLocation: RouteName.login,
    navigatorKey: navigatorKey,
    routes: [
      GoRoute(
        path: RouteName.login,
        name: RouteName.login,
        builder: (context, state) => const LoginPage(),
        redirect: (context, state) async {
          final prefs = await SharedPreferences.getInstance();
          final token = prefs.getString('token');
          final isToken = ref.read(tokenProvider.notifier).state = token;
          if (isToken != null) {
            return RouteName.home;
          }
          return RouteName.login;
        },
      ),
      GoRoute(
        path: RouteName.register,
        name: RouteName.register,
        builder: (context, state) => const RegisterPage(),
      ),
      GoRoute(
        path: '/home',
        name: RouteName.home,
        builder: (context, state) => const WelcomePage(),
      ),
      GoRoute(
        path: RouteName.aboutMe,
        name: RouteName.aboutMe,
        builder: (context, state) => const AboutMePage(),
      ),
      GoRoute(
        path: RouteName.category,
        name: RouteName.category,
        builder: (context, state) {
          return const CategoryPage();
        },
      ),
      GoRoute(
        path: RouteName.productDetail,
        name: RouteName.productDetail,
        builder: (context, state) {
          final productId = state.extra as String;
          return DetailProductPage(
            productId: productId,
          );
        },
      ),
      GoRoute(
        path: RouteName.detailCategory,
        name: RouteName.detailCategory,
        builder: (context, state) {
          return const DetailCategory();
        },
      ),
    ],
  );
}
