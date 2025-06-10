// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/constant/color_constant.dart';
import 'package:flutter_ecommerce/providers/cart/cart_provider.dart';
import 'package:flutter_ecommerce/providers/loading/loading_provider.dart';
import 'package:flutter_ecommerce/providers/product/product_provider.dart';
import 'package:flutter_ecommerce/utils/message.dart';
import 'package:flutter_ecommerce/widget/buttom_widget.dart';
import 'package:flutter_ecommerce/widget/error_load_data_widget.dart';
import 'package:flutter_ecommerce/widget/loading_widget.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

final quantityProvider = StateProvider.autoDispose<int>((ref) => 1);

class DetailProductPage extends ConsumerWidget {
  const DetailProductPage({
    super.key,
    required this.productId,
  });
  final String productId;

  String _formatRupiah(int number) {
    return 'Rp ${number.toString().replaceAllMapped(
          RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'),
          (Match m) => '${m[1]}.',
        )}';
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final detailProductData =
        ref.watch(getDetailProductProvider(productId: productId));
    final addToCartLoading = ref.watch(addToCartLoadingProvider);
    final quantityValue = ref.watch(quantityProvider);

    return Scaffold(
      backgroundColor: ColorConstant.white,
      body: SafeArea(
          child: detailProductData.when(
        data: (data) {
          final dataProduct = data.data;
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 350,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: ColorConstant.white,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Stack(
                  children: [
                    Image.network(
                      dataProduct?.imageUrl ?? "",
                      fit: BoxFit.fill,
                      width: double.infinity,
                      height: 350,
                    ),
                    Positioned(
                      top: 10,
                      left: 10,
                      child: IconButton(
                        iconSize: 32,
                        icon: const Icon(Icons.arrow_back_sharp),
                        onPressed: () {
                          context.pop();
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: ColorConstant.darkGreyBackground,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                  child: Container(
                    margin: const EdgeInsets.all(17),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              _formatRupiah(dataProduct?.price ?? 0),
                              style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: ColorConstant.darkPrimary,
                              ),
                            ),
                            const Spacer(),
                            const Icon(
                              Icons.favorite_outline,
                            ),
                          ],
                        ),
                        Text(
                          dataProduct?.name ?? "",
                          style: const TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: ColorConstant.black,
                          ),
                        ),
                        Text(
                          dataProduct?.stock == 0
                              ? "Out of stock"
                              : "Stock : ${dataProduct?.stock}",
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: ColorConstant.greyText,
                          ),
                        ),
                        const Gap(8),
                        const Row(
                          children: [
                            Text(
                              "4.5",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: ColorConstant.black,
                              ),
                            ),
                            Gap(6),
                            Icon(
                              Icons.star,
                              color: Colors.amber,
                              size: 16,
                            ),
                          ],
                        ),
                        const Gap(20),
                        Text(
                          dataProduct?.description ?? "",
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: ColorConstant.greyText,
                          ),
                        ),
                        const Gap(20),
                        QuantitySelector(
                          stock: dataProduct?.stock ?? 0,
                        ),
                        const Spacer(),
                        ButtonWidget(
                          onTap: addToCartLoading
                              ? null
                              : () async {
                                  String productId =
                                      dataProduct?.productId ?? "";
                                  int quantity = quantityValue;
                                  try {
                                    ref
                                        .read(addToCartLoadingProvider.notifier)
                                        .state = true;
                                    final response =
                                        await ref.read(addToCartProvider(
                                      productId: productId,
                                      quantity: quantity,
                                    ).future);
                                    if (response.success == true) {
                                      showSuccess(
                                          context, "${response.message}");
                                      ref.refresh(getCartProvider);
                                      ref
                                          .read(quantityProvider.notifier)
                                          .state = 1;
                                    } else {
                                      showError(context, "${response.message}");
                                    }
                                  } catch (error) {
                                    showError(context, error.toString());
                                  } finally {
                                    ref
                                        .read(addToCartLoadingProvider.notifier)
                                        .state = false;
                                  }
                                },
                          text: addToCartLoading ? "Loading..." : "Add to Cart",
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          );
        },
        error: (error, stackTrace) {
          return ErrorLoadDataWidget(
            text: error.toString(),
          );
        },
        loading: () {
          return const LoadingWidget();
        },
      )),
    );
  }
}

class QuantitySelector extends ConsumerWidget {
  const QuantitySelector({
    super.key,
    required this.stock,
  });

  final int stock;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final quantity = ref.watch(quantityProvider);

    void increment() {
      if (quantity < stock) {
        ref.read(quantityProvider.notifier).state++;
      } else {
        showError(context, "Stock is not enough");
      }
    }

    void decrement() {
      if (quantity > 1) {
        ref.read(quantityProvider.notifier).state--;
      }
    }

    return Container(
      height: 50,
      padding: const EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        color: ColorConstant.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          const Expanded(
            child: Text(
              "Quantity",
              style: TextStyle(
                color: ColorConstant.greyText,
                fontSize: 14,
              ),
            ),
          ),
          Container(
            decoration: const BoxDecoration(
              border: Border(
                right: BorderSide(color: Colors.grey, width: 0.5),
              ),
            ),
            child: IconButton(
              onPressed: decrement,
              icon: const Icon(Icons.remove, color: Colors.green),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              '$quantity',
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            decoration: const BoxDecoration(
              border: Border(
                left: BorderSide(color: Colors.grey, width: 0.5),
              ),
            ),
            child: IconButton(
              onPressed: increment,
              icon: const Icon(Icons.add, color: Colors.green),
            ),
          ),
        ],
      ),
    );
  }
}
