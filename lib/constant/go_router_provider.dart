import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/pages/admin/product/create_product_page.dart';
import 'package:flutter_ecommerce/pages/admin/product/edit_product_page.dart';
import 'package:flutter_ecommerce/pages/admin/product/product_management_page.dart';
import 'package:flutter_ecommerce/pages/auth/login_page.dart';
import 'package:flutter_ecommerce/pages/auth/register_page.dart';
import 'package:flutter_ecommerce/pages/checkout/checkout_page.dart';
import 'package:flutter_ecommerce/pages/order/order_page.dart';
import 'package:flutter_ecommerce/pages/payment/payment_page.dart';
import 'package:flutter_ecommerce/pages/category/category_page.dart';
import 'package:flutter_ecommerce/pages/category/detail_category.dart';
import 'package:flutter_ecommerce/pages/home/welcome_page.dart';
import 'package:flutter_ecommerce/pages/payment/succes_payment_page.dart';
import 'package:flutter_ecommerce/pages/product/detail_product_page.dart';
import 'package:flutter_ecommerce/pages/product/product_page.dart';
import 'package:flutter_ecommerce/pages/profile/about_me_page.dart';
import 'package:flutter_ecommerce/pages/profile/profile_page.dart';
import 'package:flutter_ecommerce/pages/serach/search_page.dart';
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
        path: RouteName.home,
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
          final extra = state.extra as Map<String, dynamic>;
          final nameCategory = extra['nameCategory'] as String;
          final idCategory = extra['idCategory'] as String;
          return DetailCategory(
            idcategory: idCategory,
            nameCategory: nameCategory,
          );
        },
      ),
      GoRoute(
        path: RouteName.search,
        name: RouteName.search,
        builder: (context, state) {
          return const SearchPage();
        },
      ),
      GoRoute(
        path: RouteName.payment,
        name: RouteName.payment,
        builder: (context, state) {
          final extra = state.extra as Map<String, dynamic>;
          final paymentUrl = extra['url'] as String;
          final orderId = extra['orderId'] as String;

          return PaymentPage(
            orderId: orderId,
            paymentUrl: paymentUrl,
          );
        },
      ),
      GoRoute(
        path: RouteName.checkout,
        name: RouteName.checkout,
        builder: (context, state) {
          return const CheckoutPage();
        },
      ),
      GoRoute(
        path: RouteName.orders,
        name: RouteName.orders,
        builder: (context, state) {
          return const OrderPage();
        },
      ),
      GoRoute(
        path: RouteName.profile,
        name: RouteName.profile,
        builder: (context, state) {
          return const ProfilePage();
        },
      ),
      GoRoute(
        path: RouteName.paymentSuccess,
        name: RouteName.paymentSuccess,
        builder: (context, state) {
          return const PaymentSuccessPage();
        },
      ),
      GoRoute(
        path: RouteName.product,
        name: RouteName.product,
        builder: (context, state) {
          return const ProducPage();
        },
      ),
      GoRoute(
        path: RouteName.productManajemen,
        name: RouteName.productManajemen,
        builder: (context, state) {
          return const ProductManajemenPage();
        },
      ),
      GoRoute(
        path: RouteName.createProduct,
        name: RouteName.createProduct,
        builder: (context, state) {
          return const CreateProductPage();
        },
      ),
      GoRoute(
        path: RouteName.editProduct,
        name: RouteName.editProduct,
        builder: (context, state) {
          final productId = state.extra as String;
          return EditProductPage(
            productId: productId,
          );
        },
      ),
    ],
  );
}
