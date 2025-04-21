import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/constant/color_constant.dart';
import 'package:flutter_ecommerce/providers/product/product_provider.dart';
import 'package:flutter_ecommerce/utils/message.dart';
import 'package:flutter_ecommerce/widget/buttom_widget.dart';
import 'package:flutter_ecommerce/widget/error_load_data_widget.dart';
import 'package:flutter_ecommerce/widget/loading_widget.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class DetailProductPage extends ConsumerWidget {
  const DetailProductPage({
    super.key,
    required this.productId,
  });
  final String productId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final detailProductData =
        ref.watch(getDetailProductProvider(productId: productId));
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
                      fit: BoxFit.cover,
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
                              "\$ ${dataProduct?.price ?? 0}.00",
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
                          onTap: () {},
                          text: "Add to Cart",
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

class QuantitySelector extends StatefulWidget {
  const QuantitySelector({
    super.key,
    required this.stock,
  });

  final int stock;

  @override
  State<QuantitySelector> createState() => _QuantitySelectorState();
}

class _QuantitySelectorState extends State<QuantitySelector> {
  int _quantity = 0;

  void _increment() {
    setState(() {
      if (_quantity < widget.stock) {
        _quantity++;
      } else {
        showError(context, "Stock is not enough");
      }
    });
  }

  void _decrement() {
    if (_quantity > 1) {
      setState(() {
        _quantity--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
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
              onPressed: _decrement,
              icon: const Icon(Icons.remove, color: Colors.green),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              '$_quantity',
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
              onPressed: _increment,
              icon: const Icon(Icons.add, color: Colors.green),
            ),
          ),
        ],
      ),
    );
  }
}
