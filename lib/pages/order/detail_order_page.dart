// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/constant/color_constant.dart';
import 'package:flutter_ecommerce/providers/order/order_provider.dart';
import 'package:flutter_ecommerce/utils/message.dart';
import 'package:flutter_ecommerce/widget/error_load_data_widget.dart';
import 'package:flutter_ecommerce/widget/loading_widget.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:intl/intl.dart';
import 'package:flutter/services.dart';

class DetailOrderPage extends ConsumerWidget {
  const DetailOrderPage({
    Key? key,
    required this.orderId,
  }) : super(key: key);
  final String orderId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final orderDetailData = ref.watch(GetOrderDetailProvider(orderId: orderId));
    final blockchainTransactionData =
        ref.watch(getBlockchainTransactionProvider(orderId: orderId));

    final blockchainData = blockchainTransactionData.when(
      data: (data) {
        return data.data;
      },
      error: (error, stackTrace) {
        return null;
      },
      loading: () {
        return null;
      },
    );
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Order #$orderId",
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
          child: orderDetailData.when(
        data: (data) {
          return SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(17),
              child: Column(
                children: [
                  // Product Section
                  Container(
                    padding: const EdgeInsets.all(16),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: ColorConstant.white,
                      borderRadius: BorderRadius.circular(12),
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
                        const Text(
                          "Products",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: ColorConstant.black,
                          ),
                        ),
                        const Gap(12),
                        ListView.separated(
                          separatorBuilder: (context, index) => const Gap(12),
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: data.data!.orderItems?.length ?? 0,
                          itemBuilder: (context, index) {
                            final dataProduct = data.data;
                            return Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: Image.network(
                                    dataProduct?.orderItems?[index].product
                                            ?.imageUrl ??
                                        "",
                                    width: 80,
                                    height: 80,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                const Gap(16),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        dataProduct?.orderItems?[index].product
                                                ?.name ??
                                            "",
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
                                            "Price:",
                                            style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.grey[600],
                                            ),
                                          ),
                                          const Spacer(),
                                          Text(
                                            "\$${dataProduct?.orderItems?[index].product?.price}",
                                            style: const TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold,
                                              color: ColorConstant.black,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                  const Gap(20),

                  // Order Details Section
                  Container(
                    padding: const EdgeInsets.all(16),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: ColorConstant.white,
                      borderRadius: BorderRadius.circular(12),
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
                        const Text(
                          "Order Details",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: ColorConstant.black,
                          ),
                        ),
                        const Gap(12),
                        buildOrderDetail(
                          "Order ID",
                          orderId,
                        ),
                        const Gap(8),
                        buildOrderDetail(
                          "Order Date",
                          _formatOrderDate(data.data?.createdAt),
                        ),
                        const Gap(8),
                        buildOrderDetail(
                          "Total Price",
                          "\$${data.data?.totalPrice?.toStringAsFixed(2) ?? '0.00'}",
                        ),
                        const Gap(8),
                        buildCopyableDetail(
                          context,
                          "Transaction Hash",
                          data.data?.transactionHash,
                        ),
                        const Gap(8),
                        buildCopyableDetail(
                          context,
                          "Contract Address",
                          data.data?.contractAddress,
                        ),
                        const Gap(8),
                        buildOrderDetail(
                          "Status",
                          _getStatusText(data.data?.status),
                        ),
                      ],
                    ),
                  ),
                  const Gap(20),

                  // Blockchain Transaction Section (only for completed orders)
                  if (data.data?.status == "completed")
                    Container(
                      padding: const EdgeInsets.all(16),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: ColorConstant.white,
                        borderRadius: BorderRadius.circular(12),
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
                          const Text(
                            "Blockchain Transaction",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: ColorConstant.black,
                            ),
                          ),
                          const Gap(12),
                          buildOrderDetail(
                            "Order ID",
                            blockchainData?.orderId ?? "-",
                          ),
                          const Gap(8),
                          buildOrderDetail(
                            "Amount",
                            "\$${blockchainData?.amount ?? "-"}",
                          ),
                          const Gap(8),
                          buildOrderDetail(
                            "Status",
                            blockchainData?.status ?? "-",
                          ),
                          const Gap(8),
                          buildOrderDetail(
                            "Currency",
                            blockchainData?.currency ?? "-",
                          ),
                          const Gap(8),
                          buildOrderDetail(
                            "Payment Method",
                            blockchainData?.paymentMethod ?? "-",
                          ),
                          const Gap(8),
                          buildOrderDetail(
                            "Name",
                            blockchainData?.customerName ?? "-",
                          ),
                          const Gap(8),
                          buildOrderDetail(
                            "Email",
                            blockchainData?.paymentEmail ?? "-",
                          ),
                          const Gap(8),
                          buildOrderDetail(
                            "Merchant",
                            blockchainData?.merchantName ?? "-",
                          ),
                        ],
                      ),
                    ),
                ],
              ),
            ),
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
          return const Center(
            child: LoadingWidget(),
          );
        },
      )),
    );
  }

  Widget buildCopyableDetail(
      BuildContext context, String title, String? value) {
    return InkWell(
      onTap: () {
        if (value != null && value.isNotEmpty) {
          Clipboard.setData(ClipboardData(text: value));
          showSuccess(context, '$title copied to clipboard');
        }
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 4),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 120,
              child: Text(
                title,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey[600],
                ),
              ),
            ),
            const Gap(8),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      value ?? "-",
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: ColorConstant.black,
                      ),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                    ),
                  ),
                  if (value != null && value.isNotEmpty)
                    const Padding(
                      padding: EdgeInsets.only(left: 8),
                      child: Icon(
                        Icons.content_copy,
                        size: 16,
                        color: Colors.grey,
                      ),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  String _formatOrderDate(String? dateString) {
    if (dateString == null) return "-";
    try {
      final dateTime = DateTime.parse(dateString);
      return DateFormat('dd MMMM yyyy, HH:mm').format(dateTime);
    } catch (e) {
      return dateString;
    }
  }

  String _getStatusText(String? status) {
    switch (status) {
      case "waiting_payment":
        return "Belum Dibayar";
      case "completed":
        return "Selesai";
      default:
        return "Dibatalkan";
    }
  }

  Widget buildOrderDetail(String title, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 120,
            child: Text(
              title,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Colors.grey[600],
              ),
            ),
          ),
          const Gap(8),
          Expanded(
            child: Text(
              value,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: ColorConstant.black,
              ),
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
            ),
          ),
        ],
      ),
    );
  }
}
