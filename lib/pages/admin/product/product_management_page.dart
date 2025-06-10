import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/constant/color_constant.dart';
import 'package:flutter_ecommerce/providers/product/product_provider.dart';
import 'package:flutter_ecommerce/routers/route_name.dart';
import 'package:flutter_ecommerce/widget/card_shimmer_widget.dart';
import 'package:flutter_ecommerce/widget/card_widget.dart';
import 'package:flutter_ecommerce/widget/error_load_data_widget.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class ProductManajemenPage extends ConsumerWidget {
  const ProductManajemenPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final categoryProductData = ref.watch(getProductProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Product Management"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(17),
        child: categoryProductData.when(
          data: (data) {
            final dataCategory = data.data;
            final length = dataCategory?.products?.length;
            return length == 0
                ? const ErrorLoadDataWidget(
                    text: "Oops! No products available.")
                : GridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 20,
                      crossAxisSpacing: 18,
                      childAspectRatio: 0.8,
                    ),
                    itemCount: length,
                    itemBuilder: (context, index) {
                      return CardWidget(
                        isEdit: true,
                        imageUrl: dataCategory?.products?[index].imageUrl ?? "",
                        price: dataCategory?.products?[index].price ?? 0,
                        title: dataCategory?.products?[index].name ?? "Product",
                        weight: (dataCategory?.products![index].stock ?? 0)
                            .toString(),
                        onTap: () {
                          context.pushNamed(
                            RouteName.editProduct,
                            extra: dataCategory?.products![index].productId,
                          );
                        },
                      );
                    },
                  );
          },
          error: (error, stackTrace) =>
              ErrorLoadDataWidget(text: error.toString()),
          loading: () {
            return const CardShimmerWidget();
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: ColorConstant.darkPrimary,
        onPressed: () {
          context.pushNamed(RouteName.createProduct);
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
