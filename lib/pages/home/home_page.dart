import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/constant/color_constant.dart';
import 'package:flutter_ecommerce/routers/route_name.dart';
import 'package:flutter_ecommerce/widget/submenu_widget.dart';
import 'package:gap/gap.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _current = 0;

  final List<String> bannerUrls = [
    'https://images.unsplash.com/photo-1546069901-ba9599a7e63c',
    'https://images.unsplash.com/photo-1600891964599-f61ba0e24092',
    'https://images.unsplash.com/photo-1546069901-ba9599a7e63c',
  ];

  final List<String> promoTexts = [
    '20% off on your\nfirst purchase',
    'Buy 1 Get 1\nFree Today!',
    'Fresh Ingredients\nDelivered to You',
  ];

  @override
  Widget build(BuildContext context) {
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
                  child: CarouselSlider.builder(
                    itemCount: bannerUrls.length,
                    itemBuilder: (context, index, realIndex) {
                      return Stack(
                        children: [
                          Container(
                            width: double.infinity,
                            height: 230,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              image: DecorationImage(
                                image: NetworkImage(bannerUrls[index]),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Positioned(
                            left: 16,
                            bottom: 32,
                            child: Text(
                              promoTexts[index],
                              style: const TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Positioned(
                            left: 16,
                            bottom: 12,
                            child: Row(
                              children: bannerUrls.asMap().entries.map((entry) {
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
                Container(
                  margin: const EdgeInsets.only(left: 17),
                  height: 78,
                  width: double.infinity,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return Container(
                          margin: const EdgeInsets.only(right: 10),
                          width: 52,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ClipOval(
                                child: Image.network(
                                  'https://images.unsplash.com/photo-1546069901-ba9599a7e63c',
                                  fit: BoxFit.cover,
                                  width: 52,
                                  height: 52,
                                ),
                              ),
                              const Text(
                                "Vegetables",
                                style: TextStyle(
                                  fontSize: 9,
                                  color: ColorConstant.greyText,
                                ),
                              )
                            ],
                          ));
                    },
                  ),
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
                  child: GridView.builder(
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
                          color: ColorConstant.white,
                        ),
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(6),
                              child: Image.network(
                                'https://images.unsplash.com/photo-1546069901-ba9599a7e63c',
                                fit: BoxFit.cover,
                                width: double.infinity,
                                height: 85,
                              ),
                            ),
                            const Gap(6),
                            const Text(
                              "\$8.00",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: ColorConstant.darkPrimary,
                              ),
                            ),
                            const Text(
                              "Fresh Peach",
                              style: TextStyle(
                                fontSize: 14,
                                color: ColorConstant.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const Text(
                              "2.0 lbs",
                              style: TextStyle(
                                fontSize: 12,
                                color: ColorConstant.greyText,
                              ),
                            ),
                            Divider(
                              color: ColorConstant.greyText.withOpacity(0.5),
                              thickness: 1,
                            ),
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.shopping_cart_outlined,
                                  color: ColorConstant.darkPrimary,
                                ),
                                Gap(10),
                                Text(
                                  "Add to cart",
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: ColorConstant.black,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            )
                          ],
                        ),
                      );
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
