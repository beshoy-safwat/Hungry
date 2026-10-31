import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:hungry2/core/constants/app_colors.dart';
import 'package:hungry2/features/cart/cubit/cart_cubit.dart';
import 'package:hungry2/shared/custom_button.dart';
import 'package:hungry2/shared/custom_text.dart';

class CartItem extends StatelessWidget {
  const CartItem({
    super.key,
    required this.text,
    required this.desc,
    required this.img,
    this.onAdd,
    this.onMinus,
    this.onRemove,
    required this.number,
  });

  final String text;
  final String desc;
  final String img;
  final Function()? onAdd, onMinus, onRemove;
  final int number;
  @override
  Widget build(BuildContext context) {
    final cubit = context.read<CartCubit>();

    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 10),
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(img, height: 100),
                  CustomText(text: text, weight: FontWeight.w600, size: 15),
                  CustomText(text: desc, size: 12),
                ],
              ),
              Spacer(),
              Column(
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: AppColors.primaryColor,
                        child: IconButton(
                          onPressed: () {
                            cubit.onminus(number);
                          },
                          icon: Icon(CupertinoIcons.minus, color: Colors.white),
                        ),
                      ),
                      Gap(20),
                      CustomText(
                        text: cubit.quantity[number].toString(),
                        size: 25,
                        weight: FontWeight.w500,
                      ),
                      Gap(20),
                      CircleAvatar(
                        backgroundColor: AppColors.primaryColor,
                        child: IconButton(
                          onPressed: () {
                            cubit.onadd(number);
                          },
                          icon: Icon(CupertinoIcons.add, color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                  Gap(20),

                  CustomButton(
                    text: "Remove",
                    width: 140,
                    height: 40,
                    ontap: onRemove,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
