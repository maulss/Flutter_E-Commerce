// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/constant/color_constant.dart';

import 'package:flutter_ecommerce/providers/cart/cart_provider.dart';
import 'package:flutter_ecommerce/providers/loading/loading_provider.dart';

import 'package:flutter_ecommerce/routers/route_name.dart';
import 'package:flutter_ecommerce/utils/message.dart';
import 'package:flutter_ecommerce/widget/buttom_widget.dart';
import 'package:flutter_ecommerce/widget/error_load_data_widget.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:shimmer/shimmer.dart';

class CartPage extends ConsumerStatefulWidget {
  @override
  ConsumerState<CartPage> createState() => _CartPageState();
}

class _CartPageState extends ConsumerState<CartPage> {
  @override
  Widget build(BuildContext context) {
    final getCartData = ref.watch(getCartProvider);

    return Scaffold(
      body: SafeArea(
        child: getCartData.when(
          data: (data) {
            final cartData = data.data?.items ?? [];
            if (cartData.isEmpty) {
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.shopping_cart_outlined,
                      size: 100,
                      color: ColorConstant.primary,
                    ),
                    const Gap(12),
                    const Text(
                      "Your cart is empty",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.grey,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                          ColorConstant.darkPrimary,
                        ),
                      ),
                      onPressed: () {
                        context.pushNamed(RouteName.category);
                      },
                      child: const Text(
                        "Continue Shopping",
                        style: TextStyle(
                          color: ColorConstant.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              );
            }
            return Column(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(17),
                    child: ListView.separated(
                      itemCount: cartData.length,
                      separatorBuilder: (_, __) => const Gap(12),
                      itemBuilder: (context, index) {
                        return Dismissible(
                          key: Key(cartData[index].cartItemId ?? ""),
                          direction: DismissDirection.endToStart,
                          confirmDismiss: (_) async {
                            ref
                                .read(removeFromCartLoadingProvider.notifier)
                                .state = true;
                            try {
                              final response = await ref.read(
                                deleteCartProvider(
                                  productId: cartData[index].cartItemId ?? "",
                                ).future,
                              );
                              if (response.success == true) {
                                showSuccess(context, "${response.message}");
                                await Future.delayed(
                                    const Duration(milliseconds: 300));
                                ref.invalidate(getCartProvider);
                                return false;
                              } else {
                                showError(context, "${response.message}");
                                return false;
                              }
                            } catch (e) {
                              showError(context, e.toString());
                              return false;
                            } finally {
                              ref
                                  .read(removeFromCartLoadingProvider.notifier)
                                  .state = false;
                            }
                          },
                          background: Container(
                            alignment: Alignment.centerRight,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              color: Colors.red,
                            ),
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: const Icon(
                              Icons.delete,
                              color: ColorConstant.white,
                            ),
                          ),
                          child: Container(
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color:
                                      ColorConstant.greyText.withOpacity(0.2),
                                  blurRadius: 5,
                                  offset: const Offset(0, 3),
                                ),
                              ],
                              borderRadius: BorderRadius.circular(6),
                              color: ColorConstant.white,
                            ),
                            padding: const EdgeInsets.symmetric(
                              horizontal: 15,
                              vertical: 10,
                            ),
                            child: Row(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(12),
                                  child: Image.network(
                                    cartData[index].product?.imageUrl ?? "",
                                    width: 50,
                                    height: 50,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                const Gap(10),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        cartData[index].product?.name ?? "",
                                        style: const TextStyle(
                                          fontSize: 18,
                                          color: Colors.green,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                        "\$ ${cartData[index].product?.price}",
                                        style: const TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 13,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Row(
                                  children: [
                                    IconButton(
                                      onPressed: () async {
                                        final currentQuantity =
                                            cartData[index].quantity ?? 0;
                                        final productId =
                                            cartData[index].cartItemId ?? "";

                                        if (currentQuantity > 1 &&
                                            productId.isNotEmpty) {
                                          try {
                                            await ref.read(updateCartProvider(
                                              productId: productId,
                                              quantity: currentQuantity - 1,
                                            ).future);

                                            ref.invalidate(getCartProvider);
                                          } catch (e) {
                                            showError(context,
                                                "Gagal mengurangi kuantitas");
                                          }
                                        } else if (currentQuantity == 1) {
                                          final confirmDelete =
                                              await showDialog<bool>(
                                            context: context,
                                            builder: (context) => AlertDialog(
                                              title: const Text(
                                                "Hapus Produk",
                                                style: TextStyle(
                                                  fontSize: 24,
                                                  fontWeight: FontWeight.w700,
                                                  color: ColorConstant.black,
                                                ),
                                              ),
                                              content: const Text(
                                                "Kamu yakin mau menghapus produk ini dari cart?",
                                                style: TextStyle(
                                                  fontSize: 18,
                                                  color: ColorConstant.greyText,
                                                ),
                                              ),
                                              actions: [
                                                TextButton(
                                                  onPressed: () =>
                                                      Navigator.of(context)
                                                          .pop(false),
                                                  child: const Text(
                                                    "Batal",
                                                    style: TextStyle(
                                                      color:
                                                          ColorConstant.black,
                                                      fontSize: 16,
                                                    ),
                                                  ),
                                                ),
                                                ElevatedButton(
                                                  style:
                                                      ElevatedButton.styleFrom(
                                                    backgroundColor: Colors.red,
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8),
                                                    ),
                                                  ),
                                                  onPressed: () =>
                                                      Navigator.of(context)
                                                          .pop(true),
                                                  child: const Text("Hapus"),
                                                ),
                                              ],
                                            ),
                                          );

                                          if (confirmDelete == true) {
                                            try {
                                              final response = await ref
                                                  .read(deleteCartProvider(
                                                productId: productId,
                                              ).future);
                                              showSuccess(context,
                                                  response.message ?? "");
                                              ref.invalidate(getCartProvider);
                                            } catch (e) {
                                              showError(context, e.toString());
                                            }
                                          }
                                        }
                                      },
                                      icon: const Icon(
                                        Icons.remove,
                                        color: Colors.red,
                                      ),
                                    ),
                                    Text(
                                      "${cartData[index].quantity}",
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    IconButton(
                                      onPressed: () async {
                                        final currentQuantity =
                                            cartData[index].quantity ?? 0;
                                        final productId =
                                            cartData[index].cartItemId ?? "";

                                        if (productId.isNotEmpty) {
                                          try {
                                            await ref.read(updateCartProvider(
                                              productId: productId,
                                              quantity: currentQuantity + 1,
                                            ).future);

                                            ref.invalidate(getCartProvider);
                                          } catch (e) {
                                            showError(context,
                                                "Gagal menambah kuantitas");
                                          }
                                        }
                                      },
                                      icon: const Icon(
                                        Icons.add,
                                        color: ColorConstant.primary,
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(
                      left: 17, right: 17, top: 17, bottom: 30),
                  decoration: BoxDecoration(
                    color: ColorConstant.white,
                    boxShadow: [
                      BoxShadow(
                        color: ColorConstant.greyText.withOpacity(0.2),
                        blurRadius: 5,
                        offset: const Offset(0, -3),
                      ),
                    ],
                    borderRadius: const BorderRadius.vertical(
                      top: Radius.circular(20),
                    ),
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text("Total",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18)),
                          Text("\$${data.data?.totalPrice}",
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18)),
                        ],
                      ),
                      const Gap(12),
                      ButtonWidget(
                        text: "Checkout",
                        onTap: () {
                          context.pushNamed(RouteName.checkout);
                        },
                      ),
                    ],
                  ),
                ),
              ],
            );
          },
          error: (error, stackTrace) {
            return Center(
                child: ErrorLoadDataWidget(
              text: error.toString(),
            ));
          },
          loading: () {
            return Padding(
              padding: const EdgeInsets.all(17),
              child: Shimmer.fromColors(
                baseColor: ColorConstant.greyText.withOpacity(0.1),
                highlightColor: ColorConstant.greyText.withOpacity(0.8),
                child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.only(top: 10),
                      height: 70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        color: ColorConstant.white,
                      ),
                    );
                  },
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
