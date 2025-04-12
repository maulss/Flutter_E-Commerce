import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/widget/buttom_widget.dart';
import 'package:gap/gap.dart';

class CartPage extends StatefulWidget {
  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  List<Map<String, dynamic>> cartItems = [
    {
      "image": "assets/images/icon_category.png",
      "name": "Fresh Broccoli",
      "price": 2.22,
      "qty": 4,
      "unit": "1.50 lbs",
    },
    {
      "image": "assets/images/icon_category.png",
      "name": "Black Grapes",
      "price": 2.22,
      "qty": 4,
      "unit": "5.0 lbs",
    },
    {
      "image": "assets/images/icon_category.png",
      "name": "Avacoda",
      "price": 2.22,
      "qty": 4,
      "unit": "1.50 lbs",
    },
    {
      "image": "assets/images/icon_category.png",
      "name": "Pineapple",
      "price": 2.22,
      "qty": 4,
      "unit": "dozen",
    },
  ];

  double get subtotal =>
      cartItems.fold(0, (sum, item) => sum + (item['price'] * item['qty']));
  double shipping = 1.6;

  @override
  Widget build(BuildContext context) {
    double total = subtotal + shipping;

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: ListView.separated(
                itemCount: cartItems.length,
                separatorBuilder: (_, __) => const Gap(12),
                itemBuilder: (context, index) {
                  final item = cartItems[index];
                  return Dismissible(
                    key: Key(item['name']),
                    direction: DismissDirection.endToStart,
                    background: Container(
                      color: Colors.red,
                      alignment: Alignment.centerRight,
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Icon(Icons.delete, color: Colors.white),
                    ),
                    child: Container(
                      color: Colors.white,
                      padding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                      child: Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Image.asset(
                              item['image'],
                              width: 50,
                              height: 50,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(width: 10),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("\$${item['price']} x ${item['qty']}",
                                    style: TextStyle(
                                        color: Colors.green,
                                        fontWeight: FontWeight.bold)),
                                Text(item['name'],
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16)),
                                Text(item['unit'],
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 12)),
                              ],
                            ),
                          ),
                          Row(
                            children: [
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    if (item['qty'] > 1) {
                                      item['qty']--;
                                    }
                                  });
                                },
                                child: Icon(Icons.remove, color: Colors.red),
                              ),
                              SizedBox(width: 8),
                              Text(
                                "${item['qty']}",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              SizedBox(width: 8),
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    item['qty']++;
                                  });
                                },
                                child: Icon(Icons.add, color: Colors.green),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.grey.shade100,
                borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Subtotal"),
                      Text("\$${subtotal.toStringAsFixed(2)}"),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Shipping charges"),
                      Text("\$${shipping.toStringAsFixed(2)}"),
                    ],
                  ),
                  Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Total",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18)),
                      Text("\$${total.toStringAsFixed(2)}",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18)),
                    ],
                  ),
                  SizedBox(height: 12),
                  ButtonWidget(
                      text: "Checkout",
                      onTap: () {
                        // Handle checkout action
                      }),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
