import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/providers/category/category_provider.dart';

import 'package:flutter_ecommerce/routers/route_name.dart';
import 'package:flutter_ecommerce/widget/card_shimmer_widget.dart';
import 'package:flutter_ecommerce/widget/card_widget.dart';
import 'package:flutter_ecommerce/widget/error_load_data_widget.dart';
import 'package:flutter_ecommerce/widget/loading_widget.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class DetailCategory extends ConsumerWidget {
  const DetailCategory({
    super.key,
    required this.nameCategory,
    required this.idcategory,
  });

  final String nameCategory;
  final String idcategory;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final categoryProductData =
        ref.watch(categoryProductProvider(productId: idcategory));
    return Scaffold(
      appBar: AppBar(
        title: Text(nameCategory),
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
                      childAspectRatio: 0.9,
                    ),
                    itemCount: length,
                    itemBuilder: (context, index) {
                      return CardWidget(
                        imageUrl: dataCategory?.products?[index].imageUrl ?? "",
                        price: "\$${dataCategory?.products?[index].price}",
                        title: dataCategory?.products?[index].name ?? "Product",
                        weight: (dataCategory?.products![index].stock ?? 0)
                            .toString(),
                        onTap: () {
                          context.pushNamed(
                            RouteName.productDetail,
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
    );
  }
}
