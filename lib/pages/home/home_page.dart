import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/constant/color_constant.dart';
import 'package:flutter_ecommerce/providers/home/home_provider.dart';
import 'package:flutter_ecommerce/routers/route_name.dart';
import 'package:flutter_ecommerce/widget/card_shimmer_widget.dart';
import 'package:flutter_ecommerce/widget/card_widget.dart';
import 'package:flutter_ecommerce/widget/error_load_data_widget.dart';
import 'package:flutter_ecommerce/widget/submenu_widget.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:go_router/go_router.dart';
import 'package:shimmer/shimmer.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  ConsumerState<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  int _current = 0;

  @override
  Widget build(BuildContext context) {
    final bannerData = ref.watch(getBannerProvider);
    final categoryData = ref.watch(getCategoryProvider);
    final featuredProductData = ref.watch(getFeaturedProductProvider);
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 17, bottom: 17),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 17),
                  child: Row(
                    children: [
                      Expanded(
                        child: SizedBox(
                          height: 50,
                          child: TextFormField(
                            readOnly: true,
                            onTap: () {
                              context.pushNamed(RouteName.search);
                            },
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
                      const Gap(5),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.notifications_none,
                          color: ColorConstant.greyText,
                        ),
                      ),
                    ],
                  ),
                ),
                const Gap(15),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 17),
                  child: bannerData.when(
                    data: (data) {
                      final dataBanner = data.data;
                      return CarouselSlider.builder(
                        itemCount: dataBanner!.length,
                        itemBuilder: (context, index, realIndex) {
                          return Stack(
                            children: [
                              Container(
                                width: double.infinity,
                                height: 230,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6),
                                  boxShadow: [
                                    BoxShadow(
                                      color: ColorConstant.greyText
                                          .withOpacity(0.2),
                                      blurRadius: 5,
                                      offset: const Offset(0, 3),
                                    ),
                                  ],
                                  image: DecorationImage(
                                    image: NetworkImage(
                                        dataBanner[index].imageUrl ?? ''),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              // Positioned(
                              //   left: 16,
                              //   bottom: 32,
                              //   child: Text(
                              //     dataBanner[index].title ?? '',
                              //     style: const TextStyle(
                              //       color: ColorConstant.black,
                              //       fontSize: 20,
                              //       fontWeight: FontWeight.bold,
                              //     ),
                              //   ),
                              // ),
                              Positioned(
                                left: 16,
                                bottom: 12,
                                child: Row(
                                  children:
                                      dataBanner.asMap().entries.map((entry) {
                                    return Container(
                                      width: 8.0,
                                      height: 8.0,
                                      margin: const EdgeInsets.symmetric(
                                          horizontal: 3.0),
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: _current == entry.key
                                            ? Colors.green
                                            : Colors.white,
                                      ),
                                    );
                                  }).toList(),
                                ),
                              ),
                            ],
                          );
                        },
                        options: CarouselOptions(
                          autoPlayInterval: const Duration(seconds: 20),
                          height: 180,
                          autoPlay: true,
                          viewportFraction: 1.0,
                          onPageChanged: (index, reason) {
                            setState(() {
                              _current = index;
                            });
                          },
                        ),
                      );
                    },
                    error: (error, stackTrace) {
                      return ErrorLoadDataWidget(
                        text: error.toString(),
                      );
                    },
                    loading: () {
                      return Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                        ),
                        height: 230,
                        width: double.infinity,
                        child: Shimmer.fromColors(
                          baseColor: ColorConstant.greyText.withOpacity(0.1),
                          highlightColor:
                              ColorConstant.greyText.withOpacity(0.8),
                          child: Container(
                            color: Colors.white,
                          ),
                        ),
                      );
                    },
                  ),
                ),
                const Gap(17),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 17),
                  child: Submenu(
                    title: "Kategori",
                    onTap: () {
                      context.pushNamed(RouteName.category);
                    },
                  ),
                ),
                const Gap(17),
                categoryData.when(
                  data: (data) {
                    final dataCategory = data.data;
                    return Container(
                      margin: const EdgeInsets.only(left: 17),
                      height: 78,
                      width: double.infinity,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: dataCategory?.categories?.length ?? 0,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {
                              context.pushNamed(
                                RouteName.detailCategory,
                                extra: {
                                  'nameCategory':
                                      dataCategory?.categories![index].name ??
                                          '',
                                  'idCategory': dataCategory
                                          ?.categories![index].categoryId ??
                                      '',
                                },
                              );
                            },
                            child: Container(
                              margin: const EdgeInsets.only(right: 10),
                              width: 62,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Image.network(
                                    dataCategory?.categories![index].imageUrl ??
                                        '',
                                    fit: BoxFit.fill,
                                    width: 52,
                                    height: 52,
                                  ),
                                  Container(
                                    width: double.infinity,
                                    alignment: Alignment.center,
                                    child: Text(
                                      dataCategory?.categories![index].name ??
                                          '',
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(
                                        fontSize: 9,
                                        color: ColorConstant.greyText,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    );
                  },
                  error: (error, stackTrace) {
                    return ErrorLoadDataWidget(
                      text: error.toString(),
                    );
                  },
                  loading: () {
                    return Container(
                      margin: const EdgeInsets.only(left: 17),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                      ),
                      height: 78,
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
                ),
                const Gap(32),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 17),
                  child: Submenu(
                    title: "Produk",
                    onTap: () {
                      context.pushNamed(RouteName.product);
                    },
                  ),
                ),
                const Gap(20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 17),
                  child: featuredProductData.when(
                    data: (data) {
                      final dataProduct = data.data;
                      return GridView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 20,
                          crossAxisSpacing: 18,
                          childAspectRatio: 0.8,
                        ),
                        itemCount: dataProduct?.products?.length ?? 0,
                        itemBuilder: (context, index) {
                          return CardWidget(
                            imageUrl:
                                dataProduct?.products![index].imageUrl ?? '',
                            price: dataProduct?.products![index].price ?? 0,
                            title: dataProduct?.products![index].name ?? '',
                            weight: (dataProduct?.products![index].stock ?? 0)
                                .toString(),
                            onTap: () {
                              context.pushNamed(
                                RouteName.productDetail,
                                extra: dataProduct?.products![index].productId,
                              );
                            },
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
                      return const CardShimmerWidget();
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
