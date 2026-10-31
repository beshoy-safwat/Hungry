import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hungry2/shared/custom_button.dart';
import 'package:hungry2/shared/custom_text.dart';

class OrderHistoryCard extends StatelessWidget {
  const OrderHistoryCard({
    super.key,
    required this.itemName,
    required this.quantity,
    required this.price,
  });
  final String itemName;
  final int quantity;
  final int price;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 10),
          child: Column(
            children: [
              Row(
                children: [
                  Image.asset("assets/test/test.png", height: 100),
                  Spacer(),
                  Column(
                    children: [
                      CustomText(
                        text: itemName,
                        weight: FontWeight.w600,
                        size: 18,
                        color: Colors.black,
                      ),
                      CustomText(
                        text: "Qty : x$quantity",
                        size: 15,
                        color: Colors.blueGrey,
                      ),
                      CustomText(
                        text: "Price : $price\$",
                        size: 15,
                        color: Colors.blueGrey,
                      ),
                    ],
                  ),
                ],
              ),
              Gap(20),
              CustomButton(
                text: "Re-Order",
                width: double.infinity,
                height: 50,
                color: Colors.blueGrey,
              ),
              Gap(10),
            ],
          ),
        ),
      ),
    );
  }
}
