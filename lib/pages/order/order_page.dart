// ignore_for_file: library_private_types_in_public_api, use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/constant/color_constant.dart';
import 'package:flutter_ecommerce/providers/order/order_provider.dart';
import 'package:flutter_ecommerce/providers/payment/payment_provider.dart';
import 'package:flutter_ecommerce/routers/route_name.dart';
import 'package:flutter_ecommerce/utils/message.dart';
import 'package:flutter_ecommerce/widget/error_load_data_widget.dart';
import 'package:flutter_ecommerce/widget/loading_widget.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class OrderPage extends ConsumerStatefulWidget {
  const OrderPage({super.key});

  @override
  _OrderPageState createState() => _OrderPageState();
}

class _OrderPageState extends ConsumerState<OrderPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Orders"),
        bottom: TabBar(
          labelStyle: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
          controller: _tabController,
          indicatorColor: ColorConstant.primary,
          labelColor: ColorConstant.darkPrimary,
          unselectedLabelColor: ColorConstant.greyText,
          isScrollable: false,
          tabs: const [
            Tab(text: 'Belum Dibayar'),
            Tab(text: 'Selesai'),
            Tab(text: 'Dibatalkan'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const [
          ListOrderWidget(status: "waiting_payment"),
          ListOrderWidget(status: "completed"),
          ListOrderWidget(status: "failed"),
        ],
      ),
    );
  }
}

class ListOrderWidget extends ConsumerWidget {
  final String status;

  const ListOrderWidget({super.key, required this.status});

  String _formatRupiah(int number) {
    return 'Rp ${number.toString().replaceAllMapped(
          RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'),
          (Match m) => '${m[1]}.',
        )}';
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final getOrderData = ref.watch(getOrderProvider(status: status));

    return Padding(
      padding: const EdgeInsets.all(17),
      child: getOrderData.when(
        data: (data) {
          if (data.data == null || data.data!.isEmpty) {
            return const Center(
              child: Text(
                "No orders found",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: ColorConstant.black,
                ),
              ),
            );
          }
          return ListView.separated(
            separatorBuilder: (context, index) => const Gap(20),
            itemCount: data.data?.length ?? 0,
            itemBuilder: (context, index) {
              final orderData = data.data?[index];
              return GestureDetector(
                onTap: () {
                  context.pushNamed(RouteName.detailOrder,
                      extra: orderData?.orderId);
                },
                child: Container(
                  padding: const EdgeInsets.all(10),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: ColorConstant.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.1),
                        spreadRadius: 1,
                        blurRadius: 5,
                        offset: const Offset(0, 2),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ListView.separated(
                        separatorBuilder: (context, index) => const Gap(10),
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: orderData?.orderItems?.length ?? 0,
                        itemBuilder: (context, index) {
                          return Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Align(
                                alignment: Alignment.topLeft,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.network(
                                    "${orderData?.orderItems![index].product?.imageUrl}",
                                    width: 100,
                                    height: 100,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              const Gap(15),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "${orderData?.orderItems![index].product?.name}",
                                      style: const TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                        color: ColorConstant.black,
                                      ),
                                    ),
                                    const Gap(8),
                                    Row(
                                      children: [
                                        Text(
                                          "Harga:",
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.grey[600],
                                          ),
                                        ),
                                        const Spacer(),
                                        Text(
                                          _formatRupiah(orderData
                                                  ?.orderItems![index]
                                                  .product
                                                  ?.price ??
                                              0),
                                          style: const TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                            color: ColorConstant.black,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "Kuantitas:",
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.grey[600],
                                          ),
                                        ),
                                        const Spacer(),
                                        Text(
                                          orderData?.orderItems![index].quantity
                                                  .toString() ??
                                              "0",
                                          style: const TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                            color: ColorConstant.black,
                                          ),
                                        ),
                                      ],
                                    ),
                                    const Gap(8),
                                  ],
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                      const Gap(10),
                      const Divider(
                        color: ColorConstant.greyText,
                        thickness: 2,
                      ),
                      const Gap(10),
                      Text(
                        "Total Pembayaran: ${_formatRupiah(orderData?.totalPrice ?? 0)}",
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: ColorConstant.black,
                        ),
                      ),
                      const Gap(10),
                      orderData?.status == "waiting_payment"
                          ? Row(
                              children: [
                                GestureDetector(
                                  onTap: () async {
                                    try {
                                      final response = await ref.read(
                                          cancelOrderProvider(
                                                  orderId:
                                                      orderData?.orderId ?? "")
                                              .future);
                                      if (response.success == true) {
                                        showSuccess(context,
                                            response.message.toString());
                                        ref.invalidate(
                                            getOrderProvider(status: status));
                                      } else {
                                        showError(context,
                                            response.message.toString());
                                      }
                                    } catch (e) {
                                      showError(context, e.toString());
                                    }
                                  },
                                  child: Container(
                                    height: 40,
                                    width: 100,
                                    decoration: BoxDecoration(
                                      color: ColorConstant.error,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: const Center(
                                      child: Text(
                                        "Cancel",
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: ColorConstant.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                const Gap(10),
                                GestureDetector(
                                  onTap: () async {
                                    try {
                                      final response = await ref.read(
                                          getPaymentUrlProvider(
                                                  orderId:
                                                      orderData?.orderId ?? "")
                                              .future);
                                      if (response.success == true) {
                                        context.pushNamed(RouteName.payment,
                                            extra: {
                                              "url": response.data?.paymentUrl,
                                              "orderId": response.data?.orderId,
                                            });
                                      } else {
                                        showError(context,
                                            response.message.toString());
                                      }
                                    } catch (e) {
                                      showError(context, e.toString());
                                    }
                                  },
                                  child: Container(
                                    height: 40,
                                    width: 100,
                                    decoration: BoxDecoration(
                                      color: ColorConstant.darkPrimary,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: const Center(
                                      child: Text(
                                        "Bayar",
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: ColorConstant.black,
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            )
                          : orderData?.status == "completed"
                              ? const Text(
                                  "Selesai",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: ColorConstant.darkPrimary,
                                  ),
                                )
                              : const Text(
                                  "Dibatalkan",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: ColorConstant.error,
                                  ),
                                )
                    ],
                  ),
                ),
              );
            },
          );
        },
        error: (error, stackTrace) {
          return ErrorLoadDataWidget(text: error.toString());
        },
        loading: () {
          return const Center(
            child: LoadingWidget(),
          );
        },
      ),
    );
  }
}
