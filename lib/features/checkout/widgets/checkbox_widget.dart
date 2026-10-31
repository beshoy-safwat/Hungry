import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hungry2/features/checkout/cubit/checkout_cubit.dart';
import 'package:hungry2/shared/custom_text.dart';

class CheckboxWidget extends StatelessWidget {
  const CheckboxWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CheckoutCubit, CheckoutState>(
      builder: (context, state) {
        final cubit = context.read<CheckoutCubit>();
        return Row(
          children: [
            Checkbox(
              value: cubit.saveChecked,
              onChanged: (value) {
                cubit.toggleCheckbot();
              },
              activeColor: Colors.green,
              side: BorderSide(color: Colors.black, width: 2),
            ),
            CustomText(text: "Save card details for future payments"),
          ],
        );
      },
    );
  }
}
