import 'package:flutter/material.dart';

import 'package:flutter_ecommerce/constant/color_constant.dart';
import 'package:flutter_ecommerce/providers/home/home_provider.dart';
import 'package:flutter_ecommerce/routers/route_name.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class CategoryPage extends ConsumerWidget {
  const CategoryPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final categoryData = ref.watch(getCategoryProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Categories"),
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
                    context.pushNamed(RouteName.detailCategory);
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
                        ClipOval(
                          child: Image.network(
                            dataCategory.categories?[index].imageUrl ?? "",
                            fit: BoxFit.cover,
                            width: 50,
                          ),
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
            return Center(
              child: Text(
                error.toString(),
                style: const TextStyle(color: Colors.red),
              ),
            );
          },
          loading: () {
            return const CircularProgressIndicator(
              color: ColorConstant.primary,
            );
          },
        ),
      ),
    );
  }
}
