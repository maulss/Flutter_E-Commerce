import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/constant/color_constant.dart';
import 'package:shimmer/shimmer.dart';

class CardShimmerWidget extends StatelessWidget {
  const CardShimmerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
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
          ),
          width: double.infinity,
          child: Shimmer.fromColors(
            baseColor: ColorConstant.greyText.withOpacity(0.1),
            highlightColor: ColorConstant.greyText.withOpacity(0.8),
            child: Container(
              color: Colors.white,
            ),
          ),
        );
      },
    );
    ;
  }
}
