import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/routers/route_name.dart';
import 'package:flutter_ecommerce/widget/card_widget.dart';
import 'package:go_router/go_router.dart';

class DetailCategory extends StatelessWidget {
  const DetailCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Vegetables"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(17),
        child: GridView.builder(
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
            return CardWidget(
              imageUrl:
                  "https://images.unsplash.com/photo-1546069901-ba9599a7e63c",
              price: "\$8.00",
              title: "Peanuts",
              weight: "1kg",
              onTap: () {
                context.pushNamed(RouteName.productDetail);
              },
            );
          },
        ),
      ),
    );
  }
}
