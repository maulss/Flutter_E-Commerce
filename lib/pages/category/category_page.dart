import 'package:flutter/material.dart';

import 'package:flutter_ecommerce/constant/color_constant.dart';
import 'package:gap/gap.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Categories"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(17),
        child: GridView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 20,
            crossAxisSpacing: 18,
            childAspectRatio: 0.9,
          ),
          itemCount: 7,
          itemBuilder: (context, index) {
            return Container(
              height: 120,
              width: 120,
              decoration: BoxDecoration(
                color: ColorConstant.white,
                borderRadius: BorderRadius.circular(5),
                boxShadow: [
                  BoxShadow(
                    color: ColorConstant.greyText.withOpacity(0.2),
                    blurRadius: 5,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ClipOval(
                    child: Icon(
                      Icons.category,
                      size: 50,
                      color: ColorConstant.darkPrimary,
                    ),
                  ),
                  Gap(10),
                  Text(
                    "Vegetables",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: ColorConstant.greyText,
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
