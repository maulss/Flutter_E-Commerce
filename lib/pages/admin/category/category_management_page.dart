import 'package:flutter/material.dart';

import 'package:flutter_ecommerce/constant/color_constant.dart';
import 'package:flutter_ecommerce/providers/home/home_provider.dart';
import 'package:flutter_ecommerce/routers/route_name.dart';
import 'package:flutter_ecommerce/widget/error_load_data_widget.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:shimmer/shimmer.dart';

class CategoryManagementPage extends ConsumerWidget {
  const CategoryManagementPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final categoryData = ref.watch(getCategoryProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Categories Management"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(17),
        child: categoryData.when(
          data: (data) {
            final dataCategory = data.data;
            return GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 20,
                crossAxisSpacing: 18,
                childAspectRatio: 0.9,
              ),
              itemCount: dataCategory!.categories!.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    context.pushNamed(RouteName.updateCategory,
                        extra: dataCategory.categories?[index].categoryId);
                  },
                  child: Container(
                    height: 120,
                    width: 120,
                    decoration: BoxDecoration(
                      color: ColorConstant.white,
                      borderRadius: BorderRadius.circular(5),
                      boxShadow: [
                        BoxShadow(
                          color: ColorConstant.greyText.withOpacity(0.2),
                          blurRadius: 5,
                          offset: const Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.network(
                          dataCategory.categories?[index].imageUrl ?? "",
                          fit: BoxFit.cover,
                          width: 50,
                          height: 50,
                        ),
                        const Gap(10),
                        Text(
                          dataCategory.categories?[index].name ?? "",
                          style: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: ColorConstant.greyText,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          },
          error: (error, stackTrace) {
            return ErrorLoadDataWidget(
              text: error.toString(),
            );
          },
          loading: () {
            return GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 20,
                crossAxisSpacing: 18,
                childAspectRatio: 0.9,
              ),
              itemCount: 15,
              itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                  ),
                  width: double.infinity,
                  child: Shimmer.fromColors(
                    baseColor: ColorConstant.greyText.withOpacity(0.1),
                    highlightColor: ColorConstant.greyText.withOpacity(0.8),
                    child: Container(
                      color: Colors.white,
                    ),
                  ),
                );
              },
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: ColorConstant.darkPrimary,
        onPressed: () {
          context.pushNamed(RouteName.createCategory);
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
