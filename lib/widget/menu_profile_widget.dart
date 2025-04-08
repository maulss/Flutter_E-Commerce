import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/constant/color_constant.dart';
import 'package:gap/gap.dart';

class MenuProfileWidget extends StatelessWidget {
  const MenuProfileWidget({
    super.key,
    required this.icon,
    required this.text,
    this.onTap,
  });

  final IconData icon;
  final String text;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsetsDirectional.symmetric(horizontal: 12),
        margin: const EdgeInsets.symmetric(horizontal: 17),
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
          color: ColorConstant.white,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          children: [
            Icon(
              icon,
              color: ColorConstant.darkPrimary,
            ),
            const Gap(10),
            Text(
              text,
              style: const TextStyle(
                fontSize: 12,
                color: ColorConstant.black,
                fontWeight: FontWeight.w400,
              ),
            ),
            const Spacer(),
            const Icon(
              Icons.arrow_forward_ios_rounded,
              color: ColorConstant.darkPrimary,
            ),
          ],
        ),
      ),
    );
  }
}
