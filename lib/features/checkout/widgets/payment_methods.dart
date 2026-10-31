import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:hungry2/features/checkout/cubit/checkout_cubit.dart';
import 'package:hungry2/shared/custom_text.dart';

class PaymentMethods extends StatelessWidget {
  const PaymentMethods({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CheckoutCubit, CheckoutState>(
      builder: (context, state) {
        final cubit = context.read<CheckoutCubit>();

        return RadioGroup(
          groupValue: cubit.paymentMethod,
          onChanged: (value) {
            cubit.onchangecheckout(value.toString());
          },
          child: Column(
            children: [
              ListTile(
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 9,
                ),
                leading: Image.asset("assets/payment/cash.png"),
                title: CustomText(
                  text: "Cash on Delivery",
                  size: 18,
                  color: Colors.white,
                ),
                onTap: cubit.changeCash,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.circular(10),
                ),
                tileColor: Colors.lightBlue.shade700,
                trailing: Radio(
                  value: "cash",
                  fillColor: WidgetStateProperty.all(Colors.white),
                ),
              ),
              Gap(20),
              ListTile(
                leading: Image.asset("assets/payment/visa.png"),
                title: CustomText(text: "Card", size: 18, color: Colors.white),
                subtitle: CustomText(
                  text: "2313 **** **** 4232",
                  color: Colors.blueGrey.shade300,
                ),

                onTap: cubit.changeVisa,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.circular(10),
                ),
                tileColor: Colors.black,
                trailing: Radio(
                  value: "visa",
                  fillColor: WidgetStateProperty.all(Colors.white),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
