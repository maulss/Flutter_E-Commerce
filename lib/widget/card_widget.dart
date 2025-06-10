// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'package:flutter_ecommerce/constant/color_constant.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({
    Key? key,
    required this.imageUrl,
    required this.price,
    required this.title,
    required this.weight,
    this.onTap,
    this.isEdit = false,
  }) : super(key: key);

  final String imageUrl;
  final int price;
  final String title;
  final String weight;
  final void Function()? onTap;
  final bool? isEdit;

  String _formatRupiah(int number) {
    return 'Rp ${number.toString().replaceAllMapped(
          RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'),
          (Match m) => '${m[1]}.',
        )}';
  }

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
                fit: BoxFit.fill,
                width: double.infinity,
                height: 100,
              ),
            ),
            const Gap(6),
            Text(
              title,
              style: const TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.bold,
                color: ColorConstant.darkPrimary,
              ),
            ),
            const Gap(2),
            Text(
              _formatRupiah(price),
              style: const TextStyle(
                fontSize: 11,
                color: ColorConstant.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Gap(2),
            Text(
              weight,
              style: const TextStyle(
                fontSize: 11,
                color: ColorConstant.greyText,
              ),
            ),
            Divider(
              color: ColorConstant.greyText.withOpacity(0.5),
              thickness: 1,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  isEdit == true
                      ? Icons.edit_outlined
                      : Icons.add_shopping_cart_outlined,
                  color: ColorConstant.darkPrimary,
                ),
                const Gap(10),
                Text(
                  isEdit == true ? "Edit" : "Add to Cart",
                  style: const TextStyle(
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
