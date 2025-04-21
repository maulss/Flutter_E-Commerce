import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/constant/color_constant.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(
        color: ColorConstant.primary,
      ),
    );
  }
}
