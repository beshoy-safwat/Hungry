import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:hungry2/core/constants/app_colors.dart';
import 'package:hungry2/core/constants/app_functions.dart';
import 'package:hungry2/features/auth/cubit/auth_cubit.dart';
import 'package:hungry2/features/auth/view/login_view.dart';
import 'package:hungry2/features/auth/widgets/authcustom_button.dart';
import 'package:hungry2/features/auth/widgets/logo_quote.dart';
import 'package:hungry2/shared/customtextformfield.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});
  @override
  Widget build(BuildContext context) {
    final cubit = context.read<AuthCubit>();

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Form(
            key: cubit.signupkey,
            child: Column(
              children: [
                LogoQuote(),
                Gap(80),
                Expanded(
                  flex: 1,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50),
                      ),
                      color: AppColors.primaryColor,
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 20),

                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Gap(60),
                          Customtextformfield(
                            hint: "Name",
                            ispassword: false,
                            controller: cubit.signupnamecontroller,
                          ),
                          Gap(20),
                          Customtextformfield(
                            hint: "Email address",
                            ispassword: false,
                            controller: cubit.signupemailcontroller,
                          ),
                          Gap(20),
                          Customtextformfield(
                            hint: "Passwrod",
                            ispassword: true,
                            controller: cubit.signuppasscontroller,
                          ),
                          Gap(20),
                          Customtextformfield(
                            hint: "Confirm Password",
                            ispassword: true,
                            controller: cubit.signuppass2controller,
                          ),
                          Gap(40),
                          AuthcustomButton(
                            text: "Sing up",
                            ontap: () => cubit.signup(context),
                          ),
                          Gap(20),
                          AuthcustomButton(
                            color: Colors.transparent,
                            textColor: Colors.white,
                            text: "Login",
                            ontap: () {
                              Routing.pushReplacement(context, LoginView());
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
