import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/constant/color_constant.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({super.key, required this.text, this.onTap});

  final String text;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        height: 60,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          gradient: const LinearGradient(
            colors: [
              ColorConstant.primary,
              ColorConstant.darkPrimary,
            ],
          ),
        ),
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 15,
            color: ColorConstant.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
