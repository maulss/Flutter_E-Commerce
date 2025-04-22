import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/constant/color_constant.dart';
import 'package:flutter_ecommerce/providers/home/home_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SearchPage extends ConsumerStatefulWidget {
  const SearchPage({super.key});

  @override
  ConsumerState<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends ConsumerState<SearchPage> {
  final TextEditingController _searchController = TextEditingController();
  String searchQuery = '';

  @override
  Widget build(BuildContext context) {
    final categoryData =
        ref.watch(getCategoryProvider); // kategori dari provider
    // final searchProductData = ref.watch(searchProductProvider(searchQuery)); // hasil produk berdasarkan search

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
                  final categories = data.data?.categories ?? [];
                  return ListView.builder(
                    itemCount: categories.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        leading: ClipOval(
                          child: Image.network(
                            categories[index].imageUrl ?? '',
                            width: 40,
                            height: 40,
                            fit: BoxFit.cover,
                          ),
                        ),
                        title: Text(categories[index].name ?? ''),
                        onTap: () {},
                      );
                    },
                  );
                },
                loading: () => const Center(child: CircularProgressIndicator()),
                error: (e, _) => Center(child: Text('Error: $e')),
              )
            : Center(child: CircularProgressIndicator())
        // : searchProductData.when(
        //     data: (data) {
        //       final products = data.data?.products ?? [];
        //       if (products.isEmpty) {
        //         return const Center(child: Text('Produk tidak ditemukan.'));
        //       }
        //       return ListView.builder(
        //         itemCount: products.length,
        //         itemBuilder: (context, index) {
        //           return ListTile(
        //             leading: Image.network(
        //               products[index].imageUrl ?? '',
        //               width: 40,
        //               height: 40,
        //               fit: BoxFit.cover,
        //             ),
        //             title: Text(products[index].name ?? ''),
        //             subtitle: Text("\$${products[index].price}"),
        //             onTap: () {
        //               // kalau klik produk, bisa pergi ke detail produk
        //             },
        //           );
        //         },
        //       );
        //     },
        //     loading: () => const Center(child: CircularProgressIndicator()),
        //     error: (e, _) => Center(child: Text('Error: $e')),
        //   ),
        );
  }
}
