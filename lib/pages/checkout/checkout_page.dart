// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/constant/color_constant.dart';
import 'package:flutter_ecommerce/providers/cart/cart_provider.dart';
import 'package:flutter_ecommerce/providers/loading/loading_provider.dart';
import 'package:flutter_ecommerce/providers/order/order_provider.dart';
import 'package:flutter_ecommerce/utils/message.dart';
import 'package:flutter_ecommerce/widget/buttom_widget.dart';
import 'package:flutter_ecommerce/widget/error_load_data_widget.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';

import 'package:shimmer/shimmer.dart';

class CheckoutPage extends ConsumerStatefulWidget {
  const CheckoutPage({super.key});

  @override
  ConsumerState<CheckoutPage> createState() => _CheckoutPageState();
}

class _CheckoutPageState extends ConsumerState<CheckoutPage> {
  @override
  Widget build(BuildContext context) {
    final createOrderLoading = ref.watch(createOrderLoadingProvider);
    final getCartData = ref.watch(getCartProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Checkout"),
      ),
      body: SafeArea(
        child: getCartData.when(
          data: (data) {
            final productData = data.data?.items ?? [];
            return Column(
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    padding: const EdgeInsets.all(17),
                    child: Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(10),
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: ColorConstant.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Address",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: ColorConstant.black,
                                ),
                              ),
                              Gap(10),
                              Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      "Maulana Givari",
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        color: ColorConstant.black,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Text(
                                      "081656575567",
                                      textAlign: TextAlign.end,
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        color: ColorConstant.black,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Gap(5),
                              Text(
                                "Jl. Raya No. 123, Jakarta",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: ColorConstant.black,
                                ),
                              ),
                              Gap(5),
                              Text(
                                "Jakarta, Indonesia",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: ColorConstant.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Gap(20),
                        Container(
                          padding: const EdgeInsets.all(10),
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: ColorConstant.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Detail Product",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: ColorConstant.black,
                                ),
                              ),
                              const Gap(10),
                              ListView.builder(
                                shrinkWrap: true,
                                physics: const NeverScrollableScrollPhysics(),
                                itemCount: productData.length,
                                itemBuilder: (context, index) {
                                  return Padding(
                                    padding: const EdgeInsets.only(bottom: 10),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          child: Container(
                                            height: 100,
                                            width: 100,
                                            color: ColorConstant.greyText
                                                .withOpacity(0.2),
                                            child: Image.network(
                                              "${productData[index].product?.imageUrl}",
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                        const Gap(15),
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                productData[index]
                                                        .product
                                                        ?.name ??
                                                    "",
                                                style: const TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w500,
                                                  color: ColorConstant.black,
                                                ),
                                              ),
                                              const Gap(10),
                                              Row(
                                                children: [
                                                  Text(
                                                    "\$${productData[index].product?.price}",
                                                    style: const TextStyle(
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color:
                                                          ColorConstant.black,
                                                    ),
                                                  ),
                                                  const Spacer(),
                                                  Text(
                                                    "x${productData[index].quantity}",
                                                    style: const TextStyle(
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color:
                                                          ColorConstant.black,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                },
                              ),
                            ],
                          ),
                        ),
                        const Gap(20),
                        Container(
                          padding: const EdgeInsets.all(10),
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: ColorConstant.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Rincian Pembayaran",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const Gap(10),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    "Total Item",
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: ColorConstant.black,
                                    ),
                                  ),
                                  Text(
                                    "${data.data?.totalQuantity}",
                                    style: const TextStyle(
                                      fontSize: 14,
                                      color: ColorConstant.black,
                                    ),
                                  ),
                                ],
                              ),
                              const Gap(10),
                              Column(
                                children: productData
                                    .map((item) => Padding(
                                          padding:
                                              const EdgeInsets.only(bottom: 8),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                "${item.product?.name} (x${item.quantity})",
                                                style: const TextStyle(
                                                  fontSize: 14,
                                                  color: ColorConstant.black,
                                                ),
                                              ),
                                              Text(
                                                "\$${item.totalPrice}",
                                                style: const TextStyle(
                                                  fontSize: 14,
                                                  color: ColorConstant.black,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ))
                                    .toList(),
                              ),
                              const Gap(10),
                              Divider(
                                color: ColorConstant.greyText.withOpacity(0.2),
                                thickness: 1,
                              ),
                              const Gap(10),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    "Total Pembayaran",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  ),
                                  Text(
                                    "\$${productData.fold(0, (sum, item) => sum + (item.totalPrice ?? 0))}",
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
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
                        text: createOrderLoading ? "Loading..." : "Checkout",
                        onTap: createOrderLoading
                            ? null
                            : () async {
                                ref
                                    .read(createOrderLoadingProvider.notifier)
                                    .state = true;
                                try {
                                  final response = await ref
                                      .read(createOrderProvider.future);
                                  if (response.success == true) {
                                    showSuccess(
                                        context, response.message ?? "");
                                  } else {
                                    showError(context, response.message ?? "");
                                  }
                                } catch (e) {
                                  showError(context, e.toString());
                                } finally {
                                  ref
                                      .read(createOrderLoadingProvider.notifier)
                                      .state = false;
                                }
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
              ),
            );
          },
          loading: () {
            return Padding(
              padding: const EdgeInsets.all(17),
              child: Shimmer.fromColors(
                baseColor: ColorConstant.greyText.withOpacity(0.1),
                highlightColor: ColorConstant.greyText.withOpacity(0.8),
                child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.only(top: 10),
                      height: 150,
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
