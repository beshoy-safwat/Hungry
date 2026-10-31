import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:hungry2/core/constants/app_functions.dart';
import 'package:hungry2/features/auth/view/login_view.dart';
import 'package:hungry2/root/cubit/root_cubit.dart';
import 'package:hungry2/shared/custom_button.dart';
import 'package:hungry2/shared/custom_text.dart';

class LogoutDialog extends StatelessWidget {
  const LogoutDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        height: 170,
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
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
          child: Column(
            children: [
              Gap(15),
              CustomText(
                text: "Are you sure you want to exit?",
                size: 18,
                color: Colors.blueGrey,
              ),
              Gap(30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CustomButton(
                    text: "Yes",
                    height: 50,
                    width: 80,
                    ontap: () {
                      Routing.pushRemove(context, LoginView());
                                            context.read<RootCubit>().resetIndex(0);

                    },
                  ),
                  CustomButton(
                    text: "Close",
                    height: 50,

                    width: 80,
                    ontap: () {
                      Routing.pop(context);
                    },
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
