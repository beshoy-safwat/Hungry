import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hungry2/shared/custom_text.dart';

class OrderDetails extends StatelessWidget {
  const OrderDetails({
    super.key,
    required this.order,
    required this.taxes,
    required this.fees,
  });
  final double order, taxes, fees;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        checkouLine("Order", order, false, false, false, false),
        Gap(15),

        checkouLine("Taxes", taxes, false, false, false, false),
        Gap(15),
        checkouLine("Delivery fees", fees, false, false, false, false),
        Gap(15),

        Divider(),

        checkouLine("Total", 175, false, true, true, false),
        Gap(15),
        checkouLine("Estimated delivery time", 0, true, true, true, true),
      ],
    );
  }
}

Widget checkouLine(
  String text,
  double price,
  bool issmall,
  bool isbold,
  bool isblack,
  bool time,
) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      CustomText(
        text: text,
        size: issmall ? 12 : 15,
        color: isblack ? Colors.black : Colors.blueGrey,
        weight: isbold ? FontWeight.bold : FontWeight.w400,
      ),
      CustomText(
        text: time ? "15 -30 mins" : "$price EGP",
        size: issmall ? 12 : 15,
        color: isblack ? Colors.black : Colors.blueGrey,
        weight: isbold ? FontWeight.bold : FontWeight.w400,
      ),
    ],
  );
}
