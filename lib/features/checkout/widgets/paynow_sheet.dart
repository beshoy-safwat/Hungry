import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:hungry2/core/constants/app_colors.dart';
import 'package:hungry2/core/constants/app_functions.dart';
import 'package:hungry2/root/cubit/root_cubit.dart';
import 'package:hungry2/root/view/root.dart';
import 'package:hungry2/shared/custom_button.dart';
import 'package:hungry2/shared/custom_text.dart';

class PaynowSheet extends StatelessWidget {
  const PaynowSheet({super.key});

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
      height: 150,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Gap(20),
              CustomText(text: "Total:", size: 17, color: Colors.blueGrey),
              CustomText(text: "\$112", size: 25),
            ],
          ),
          CustomButton(
            text: "Pay Now",
            ontap: () {
              showDialog(
                context: context,
                builder: (context) {
                  return Dialog(
                    child: Container(
                      height: 270,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.blueGrey.shade300,
                            spreadRadius: 1,
                            offset: Offset(-.1, 3),
                            blurRadius: 2,
                          ),
                        ],
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 25,
                          vertical: 20,
                        ),
                        child: Column(
                          children: [
                            Icon(
                              CupertinoIcons.check_mark_circled_solid,
                              color: AppColors.primaryColor.withValues(
                                alpha: 0.8,
                              ),
                              size: 80,
                            ),
                            CustomText(
                              text: "Success",
                              color: AppColors.primaryColor.withValues(
                                alpha: 0.7,
                              ),
                              size: 30,
                            ),
                            Gap(15),
                            CustomText(
                              text: "Your payment was successful.",
                              size: 18,
                              color: Colors.blueGrey,
                            ),
                            Gap(15),
                            CustomButton(
                              text: "Close",
                              height: 50,
                              width: double.infinity,
                              ontap: () {
                                                                            context.read<RootCubit>().resetIndex(0);

                                Routing.pushRemove(context, Root());
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
