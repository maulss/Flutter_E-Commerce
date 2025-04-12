import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/constant/color_constant.dart';
import 'package:flutter_ecommerce/providers/home/home_provider.dart';
import 'package:flutter_ecommerce/routers/route_name.dart';
import 'package:flutter_ecommerce/widget/card_widget.dart';
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
                  child: SizedBox(
                    height: 50,
                    child: TextFormField(
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
                        suffixIconColor: ColorConstant.greyText,
                        prefixIconColor: ColorConstant.greyText,
                        prefixIcon: const Icon(
                          Icons.search,
                          size: 18,
                        ),
                        hintText: 'Search...',
                        suffixIcon: IconButton(
                          color: ColorConstant.greyText,
                          onPressed: () {},
                          icon: const Icon(Icons.filter_list, size: 18),
                        ),
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
                                  image: DecorationImage(
                                    image: NetworkImage(
                                        dataBanner[index].imageUrl ?? ''),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 16,
                                bottom: 32,
                                child: Text(
                                  dataBanner[index].title ?? '',
                                  style: const TextStyle(
                                    color: ColorConstant.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
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
                          autoPlayInterval: const Duration(seconds: 10),
                          height: 230,
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
                      return Center(
                        child: Text(
                          error.toString(),
                          style: const TextStyle(color: Colors.red),
                        ),
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
                    title: "Categories",
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
                          return Container(
                              margin: const EdgeInsets.only(right: 10),
                              width: 52,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  ClipOval(
                                    child: Image.network(
                                      dataCategory
                                              ?.categories![index].imageUrl ??
                                          '',
                                      fit: BoxFit.cover,
                                      width: 52,
                                      height: 52,
                                    ),
                                  ),
                                  Text(
                                    dataCategory?.categories![index].name ?? '',
                                    style: const TextStyle(
                                      fontSize: 9,
                                      color: ColorConstant.greyText,
                                    ),
                                  )
                                ],
                              ));
                        },
                      ),
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
                    title: "Featured products",
                    onTap: () {},
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
                            childAspectRatio: 0.9,
                          ),
                          itemCount: dataProduct?.products?.length ?? 0,
                          itemBuilder: (context, index) {
                            return CardWidget(
                              imageUrl:
                                  dataProduct?.products![index].imageUrl ?? '',
                              price: "\$${dataProduct?.products![index].price}",
                              title: dataProduct?.products![index].name ?? '',
                              weight: (dataProduct?.products![index].stock ?? 0)
                                  .toString(),
                              onTap: () {
                                context.pushNamed(RouteName.productDetail);
                              },
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
                        return GridView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisSpacing: 20,
                            crossAxisSpacing: 18,
                            childAspectRatio: 0.9,
                          ),
                          itemCount: 6,
                          itemBuilder: (context, index) {
                            return Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6),
                              ),
                              width: double.infinity,
                              child: Shimmer.fromColors(
                                baseColor:
                                    ColorConstant.greyText.withOpacity(0.1),
                                highlightColor:
                                    ColorConstant.greyText.withOpacity(0.8),
                                child: Container(
                                  color: Colors.white,
                                ),
                              ),
                            );
                          },
                        );
                      },
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
