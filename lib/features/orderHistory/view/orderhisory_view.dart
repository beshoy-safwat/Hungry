import 'package:flutter/material.dart';
import 'package:hungry2/features/orderHistory/widgets/order_history_card.dart';

class OrderhisoryView extends StatelessWidget {
  const OrderhisoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 0,
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.only(right: 15.0, left: 15, top: 30),
        child: ListView.builder(
          itemCount: 20,
          itemBuilder: (context, index) {
            return OrderHistoryCard(
              itemName: "Hamburger",
              quantity: 1,
              price: 140,
            );
          },
        ),
      ),
    );
  }
}
