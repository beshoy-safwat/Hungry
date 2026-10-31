import 'package:flutter/material.dart';
import 'package:hungry2/core/constants/app_functions.dart';
import 'package:hungry2/features/checkout/view/checkout_view.dart';
import 'package:hungry2/shared/custom_button.dart';
import 'package:hungry2/shared/custom_text.dart';

class CartCheckout extends StatelessWidget {
  const CartCheckout({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.blueGrey.shade300,
            spreadRadius: 4,
            offset: Offset(-.1, 3),
            blurRadius: 10,
          ),
        ],
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25),
        ),
      ),
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(text: "Total:", size: 17, color: Colors.blueGrey),
              CustomText(text: "\$112", size: 25),
            ],
          ),
          CustomButton(
            text: "Checkout",
            ontap: () {
              Routing.push(context, CheckoutView());
            },
          ),
        ],
      ),
    );
  }
}
