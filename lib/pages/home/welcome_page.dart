import 'package:circle_nav_bar/circle_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/constant/color_constant.dart';
import 'package:flutter_ecommerce/pages/admin/admin_panel_page.dart';
import 'package:flutter_ecommerce/pages/carts/cart_page.dart';
import 'package:flutter_ecommerce/pages/home/home_page.dart';
import 'package:flutter_ecommerce/pages/like/like_page.dart';
import 'package:flutter_ecommerce/pages/profile/profile_page.dart';

import 'package:flutter_ecommerce/providers/profile/profile_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class WelcomePage extends ConsumerStatefulWidget {
  const WelcomePage({super.key});

  @override
  ConsumerState<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends ConsumerState<WelcomePage> {
  int _currentIndex = 0;
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    final getUserData = ref.watch(getUserProvider);

    return getUserData.when(
      data: (data) {
        final userRole = data.data?.role ?? '';

        final List<Widget> pages = [
          const HomePage(),
          const CartPage(),
          const LikePage(),
          userRole.toLowerCase() == 'admin'
              ? const AdminPanelPage()
              : const ProfilePage(),
        ];

        return Scaffold(
          bottomNavigationBar: CircleNavBar(
            activeIcons: [
              const Icon(Icons.home_outlined, color: ColorConstant.white),
              const Icon(Icons.shopping_bag_outlined,
                  color: ColorConstant.white),
              const Icon(Icons.favorite_outline, color: ColorConstant.white),
              userRole.toLowerCase() == 'admin'
                  ? const Icon(Icons.settings_outlined,
                      color: ColorConstant.white)
                  : const Icon(Icons.person_outline,
                      color: ColorConstant.white),
            ],
            inactiveIcons: [
              const Icon(Icons.home_outlined, color: ColorConstant.greyText),
              const Icon(Icons.shopping_bag_outlined,
                  color: ColorConstant.greyText),
              const Icon(Icons.favorite_outline, color: ColorConstant.greyText),
              userRole.toLowerCase() == 'admin'
                  ? const Icon(Icons.settings_outlined,
                      color: ColorConstant.greyText)
                  : const Icon(Icons.person_outline,
                      color: ColorConstant.greyText),
            ],
            color: Colors.white,
            circleColor: ColorConstant.darkPrimary,
            height: 60,
            circleWidth: 60,
            activeIndex: _currentIndex,
            onTap: (index) {
              Future.microtask(() {
                _pageController.jumpToPage(index);
              });
            },
            shadowColor: ColorConstant.greyText,
            circleShadowColor: Colors.deepPurple,
          ),
          body: PageView(
            controller: _pageController,
            physics: const NeverScrollableScrollPhysics(),
            onPageChanged: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            children: pages,
          ),
        );
      },
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (err, stack) => Center(child: Text('Terjadi kesalahan: $err')),
    );
  }
}
