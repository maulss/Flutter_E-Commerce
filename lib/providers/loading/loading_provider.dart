import 'package:flutter_riverpod/flutter_riverpod.dart';

// AUTH
final loginLoadingProvider = StateProvider<bool>((ref) => false);
final signupLoadingProvider = StateProvider<bool>((ref) => false);

// USER
final updateUserLoadingProvider = StateProvider<bool>((ref) => false);
final updatePasswordLoadingProvider = StateProvider<bool>((ref) => false);

// CART
final addToCartLoadingProvider = StateProvider<bool>((ref) => false);
final removeFromCartLoadingProvider = StateProvider<bool>((ref) => false);

//order
final createOrderLoadingProvider = StateProvider<bool>((ref) => false);

// PRODUCT
final createProductLoadingProvider = StateProvider<bool>((ref) => false);
final updateProductLoadingProvider = StateProvider<bool>((ref) => false);

// Category
final createCategoryLoadingProvider = StateProvider<bool>((ref) => false);
final updateCategoryLoadingProvider = StateProvider<bool>((ref) => false);
