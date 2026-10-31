import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hungry2/core/constants/app_functions.dart';
import 'package:hungry2/features/checkout/widgets/checkbox_widget.dart';
import 'package:hungry2/features/checkout/widgets/order_details.dart';
import 'package:hungry2/features/checkout/widgets/payment_methods.dart';
import 'package:hungry2/features/checkout/widgets/paynow_sheet.dart';
import 'package:hungry2/shared/custom_text.dart';

class CheckoutView extends StatelessWidget {
  const CheckoutView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () => Routing.pop(context),
          icon: Icon(CupertinoIcons.arrow_left),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                text: "Order Summary",
                color: Colors.black,
                size: 25,
                weight: FontWeight.bold,
              ),
              Gap(10),

              OrderDetails(order: 120, taxes: 35, fees: 20),
              Gap(40),
              CustomText(
                text: "Payment methods",
                size: 25,
                color: Colors.black,
                weight: FontWeight.bold,
              ),
              Gap(20),
              PaymentMethods(),
              Gap(10),
              CheckboxWidget(),
            ],
          ),
        ),
      ),
      bottomSheet: PaynowSheet(),
    );
  }
}
