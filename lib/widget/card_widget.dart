import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/constant/color_constant.dart';
import 'package:gap/gap.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({
    super.key,
    required this.imageUrl,
    required this.price,
    required this.title,
    required this.weight,
    this.onTap,
  });

  final String imageUrl;
  final String price;
  final String title;
  final String weight;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: ColorConstant.white,
          boxShadow: [
            BoxShadow(
              color: ColorConstant.greyText.withOpacity(0.2),
              blurRadius: 5,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(6),
              child: Image.network(
                imageUrl,
                fit: BoxFit.cover,
                width: double.infinity,
                height: 85,
              ),
            ),
            const Gap(6),
            Text(
              price,
              style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: ColorConstant.darkPrimary,
              ),
            ),
            Text(
              title,
              style: const TextStyle(
                fontSize: 14,
                color: ColorConstant.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              weight,
              style: const TextStyle(
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
      ),
    );
  }
}
