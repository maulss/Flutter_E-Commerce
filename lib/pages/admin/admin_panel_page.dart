// ignore_for_file: public_member_api_docs, sort_constructors_first, use_build_context_synchronously
import 'package:flutter/material.dart';

import 'package:flutter_ecommerce/constant/color_constant.dart';
import 'package:flutter_ecommerce/providers/token/token_provider.dart';
import 'package:flutter_ecommerce/routers/route_name.dart';
import 'package:flutter_ecommerce/utils/message.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AdminPanelPage extends ConsumerWidget {
  const AdminPanelPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Admin Panel'),
        centerTitle: true,
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(17),
        child: Column(
          children: [
            ContainerContent(
              title: "Products",
              onTap: () {
                context.pushNamed(RouteName.productManajemen);
              },
            ),
            const Gap(20),
            ContainerContent(
              title: "Category",
              onTap: () {},
            ),
            const Gap(20),
            ContainerContent(
              title: "Banners",
              onTap: () {},
            ),
            const Gap(46),
            _signOutButton(ref, context),
          ],
        ),
      )),
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

class ContainerContent extends StatelessWidget {
  const ContainerContent({
    Key? key,
    this.onTap,
    required this.title,
  }) : super(key: key);

  final String title;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 65,
        width: double.infinity,
        decoration: BoxDecoration(
          color: ColorConstant.primary,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(
            title,
            style: TextStyle(
              color: ColorConstant.black,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
