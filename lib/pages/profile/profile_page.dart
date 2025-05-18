// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/constant/color_constant.dart';
import 'package:flutter_ecommerce/providers/profile/profile_provider.dart';
import 'package:flutter_ecommerce/providers/token/token_provider.dart';
import 'package:flutter_ecommerce/routers/route_name.dart';
import 'package:flutter_ecommerce/utils/message.dart';
import 'package:flutter_ecommerce/widget/error_load_data_widget.dart';
import 'package:flutter_ecommerce/widget/loading_widget.dart';

import 'package:flutter_ecommerce/widget/menu_profile_widget.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProfilePage extends ConsumerWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userData = ref.watch(getUserProvider);
    return Scaffold(
      body: userData.when(
        data: (data) {
          final dataUser = data.data;
          return Center(
            child: Column(
              children: [
                const Gap(33),
                Container(
                  height: 117,
                  width: 117,
                  decoration: const BoxDecoration(
                    color: ColorConstant.primary,
                    shape: BoxShape.circle,
                  ),
                  child: ClipOval(
                    child: dataUser?.profilePicture != null
                        ? Image.network(
                            dataUser?.profilePicture!,
                            fit: BoxFit.cover,
                          )
                        : const Icon(
                            Icons.person_outline,
                            size: 50,
                            color: ColorConstant.white,
                          ),
                  ),
                ),
                const Gap(8),
                Text(
                  dataUser?.name ?? "User",
                  style: const TextStyle(
                    fontSize: 15,
                    color: ColorConstant.black,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const Gap(2),
                Text(
                  dataUser?.email ?? "Email@gmail.com",
                  style: const TextStyle(
                    fontSize: 12,
                    color: ColorConstant.greyText,
                  ),
                ),
                const Gap(28),
                MenuProfileWidget(
                  icon: Icons.person_outline,
                  text: "About Me",
                  onTap: () {
                    context.pushNamed(RouteName.aboutMe);
                  },
                ),
                const Gap(16),
                MenuProfileWidget(
                  icon: Icons.shopping_bag_outlined,
                  text: "My Orders",
                  onTap: () {
                    context.pushNamed(RouteName.orders);
                  },
                ),
                // const Gap(16),
                // MenuProfileWidget(
                //   icon: Icons.favorite_outline,
                //   text: "My Favorites",
                //   onTap: () {
                //     context.pushNamed(RouteName.paymentSuccess);
                //   },
                // ),
                const Gap(16),
                MenuProfileWidget(
                  icon: Icons.location_on_outlined,
                  text: "My Address",
                  onTap: () {},
                ),
                const Gap(46),
                _signOutButton(ref, context),
              ],
            ),
          );
        },
        loading: () => const LoadingWidget(),
        error: (error, stackTrace) => ErrorLoadDataWidget(
          text: error.toString(),
        ),
      ),
    );
  }

  Widget _signOutButton(WidgetRef ref, BuildContext context) {
    return GestureDetector(
      onTap: () {
        showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: const Text(
                "Sign Out",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  color: ColorConstant.black,
                ),
              ),
              content: const Text(
                "Are you sure you want to sign out?",
                style: TextStyle(
                  fontSize: 18,
                  color: ColorConstant.greyText,
                ),
              ),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text(
                    "Cancel",
                    style: TextStyle(
                      color: ColorConstant.black,
                      fontSize: 16,
                    ),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  onPressed: () async {
                    final prefs = await SharedPreferences.getInstance();
                    await prefs.remove('token');
                    ref.read(tokenProvider.notifier).state = null;
                    context.pushReplacementNamed(RouteName.login);
                    showSuccess(context, "Sign out successful");
                  },
                  child: const Text("Sign Out"),
                ),
              ],
            );
          },
        );
      },
      child: Container(
        padding: const EdgeInsetsDirectional.symmetric(horizontal: 12),
        margin: const EdgeInsets.symmetric(horizontal: 17),
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
          color: ColorConstant.white,
          borderRadius: BorderRadius.circular(8),
        ),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.logout_outlined,
              color: Colors.red,
            ),
            Gap(10),
            Text(
              "Sign Out",
              style: TextStyle(
                fontSize: 12,
                color: ColorConstant.black,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
