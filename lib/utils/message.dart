import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/constant/color_constant.dart';

void showSuccess(BuildContext context, String message) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(
        message,
        style: const TextStyle(
          fontSize: 16,
          color: ColorConstant.white,
          fontWeight: FontWeight.w700,
        ),
      ),
      backgroundColor: ColorConstant.darkPrimary,
      showCloseIcon: true,
      closeIconColor: ColorConstant.white,
      duration: const Duration(seconds: 1),
    ),
  );
}

void showError(BuildContext context, String message) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(
        message,
        style: const TextStyle(
          fontSize: 16,
          color: ColorConstant.white,
          fontWeight: FontWeight.w700,
        ),
      ),
      backgroundColor: ColorConstant.error,
      showCloseIcon: true,
      closeIconColor: ColorConstant.white,
      duration: const Duration(seconds: 1),
    ),
  );
}
