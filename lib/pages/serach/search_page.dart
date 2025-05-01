import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/constant/color_constant.dart';
import 'package:flutter_ecommerce/providers/home/home_provider.dart';
import 'package:flutter_ecommerce/providers/product/product_provider.dart';
import 'package:flutter_ecommerce/routers/route_name.dart';
import 'package:flutter_ecommerce/widget/error_load_data_widget.dart';
import 'package:flutter_ecommerce/widget/loading_widget.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class SearchPage extends ConsumerStatefulWidget {
  const SearchPage({super.key});
  @override
  ConsumerState<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends ConsumerState<SearchPage> {
  String searchQuery = '';

  @override
  Widget build(BuildContext context) {
    final categoryData = ref.watch(getCategoryProvider);
    final searchProductData =
        ref.watch(searchProductProvider(searchQuery: searchQuery));

    return Scaffold(
      appBar: AppBar(
        title: SizedBox(
          height: 45,
          child: TextFormField(
            onChanged: (value) {
              setState(() {
                searchQuery = value;
              });
            },
            autofocus: true,
            cursorColor: ColorConstant.greyText,
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.symmetric(
                vertical: 8,
                horizontal: 12,
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: const BorderSide(
                  color: ColorConstant.greyText,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: const BorderSide(
                  color: ColorConstant.greyText,
                ),
              ),
              prefixIconColor: ColorConstant.greyText,
              prefixIcon: const Icon(
                Icons.search,
                size: 18,
              ),
              hintText: 'Search...',
              hintStyle: const TextStyle(
                color: ColorConstant.greyText,
                fontSize: 13,
              ),
              filled: true,
              fillColor: ColorConstant.white,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
              ),
            ),
          ),
        ),
      ),
      body: searchQuery.isEmpty
          ? categoryData.when(
              data: (data) {
                final categoryData = data.data;
                return Padding(
                  padding: const EdgeInsets.all(17),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Kategori Product',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Divider(
                        color: ColorConstant.greyText.withOpacity(0.5),
                        thickness: 2,
                      ),
                      Expanded(
                        child: GridView.builder(
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 4,
                            mainAxisSpacing: 20,
                            crossAxisSpacing: 18,
                            childAspectRatio: 0.9,
                          ),
                          itemCount: categoryData?.categories?.length ?? 0,
                          itemBuilder: (context, index) {
                            return GestureDetector(
                              onTap: () {
                                context.pushNamed(
                                  RouteName.detailCategory,
                                  extra: {
                                    'nameCategory':
                                        categoryData?.categories![index].name ??
                                            '',
                                    'idCategory': categoryData
                                            ?.categories![index].categoryId ??
                                        '',
                                  },
                                );
                              },
                              child: Container(
                                height: 100,
                                width: 100,
                                decoration: BoxDecoration(
                                  color: ColorConstant.white,
                                  borderRadius: BorderRadius.circular(5),
                                  boxShadow: [
                                    BoxShadow(
                                      color: ColorConstant.greyText
                                          .withOpacity(0.2),
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
                                        categoryData
                                                ?.categories?[index].imageUrl ??
                                            "",
                                        fit: BoxFit.cover,
                                        width: 50,
                                      ),
                                    ),
                                    const SizedBox(height: 10),
                                    Text(
                                      categoryData?.categories?[index].name ??
                                          "",
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
                        ),
                      ),
                    ],
                  ),
                );
              },
              loading: () => const Center(child: CircularProgressIndicator()),
              error: (e, _) => Center(child: Text('Error: $e')),
            )
          : searchProductData.when(
              data: (data) {
                final products = data.data?.products ?? [];
                if (products.isEmpty) {
                  return const Center(child: Text('Produk tidak ditemukan.'));
                }
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 17),
                  child: ListView.separated(
                    separatorBuilder: (context, index) {
                      return const Divider(
                        color: ColorConstant.greyText,
                        thickness: 1,
                      );
                    },
                    itemCount: products.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        leading: ClipOval(
                          child: Image.network(
                            products[index].imageUrl ?? '',
                            fit: BoxFit.cover,
                            width: 50,
                          ),
                        ),
                        title: Text(products[index].name ?? ''),
                        onTap: () {
                          context.pushNamed(
                            RouteName.productDetail,
                            extra: products[index].productId,
                          );
                        },
                      );
                    },
                  ),
                );
              },
              loading: () => const Center(child: LoadingWidget()),
              error: (e, _) => Center(child: ErrorLoadDataWidget(text: '$e')),
            ),
    );
  }
}
