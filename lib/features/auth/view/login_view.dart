import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:hungry2/core/constants/app_colors.dart';
import 'package:hungry2/core/constants/app_functions.dart';
import 'package:hungry2/features/auth/cubit/auth_cubit.dart';
import 'package:hungry2/features/auth/view/signup_view.dart';
import 'package:hungry2/features/auth/widgets/authcustom_button.dart';
import 'package:hungry2/features/auth/widgets/logo_quote.dart';
import 'package:hungry2/root/view/root.dart';
import 'package:hungry2/shared/customtextformfield.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<AuthCubit>();
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: AppColors.primaryColor,
        body: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Form(
                key: cubit.loginkey,
                child: Column(
                  children: [
                    LogoQuote(color: Colors.white),
                    Gap(100),
                    Customtextformfield(
                      controller: cubit.emailController,
                      hint: "Email address",
                      ispassword: false,
                    ),
                    Gap(20),
                    Customtextformfield(
                      controller: cubit.passwordController,
                      hint: "Password",
                      ispassword: true,
                    ),
                    Gap(20),
                    GestureDetector(
                      onTap: () => cubit.login(context),
                      child: AuthcustomButton(text: "Login"),
                    ),
                    Gap(20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Routing.pushReplacement(context, SignupView());
                          },
                          child: AuthcustomButton(text: "Sign up", width: 170),
                        ),
                        GestureDetector(
                          onTap: () {
                            Routing.pushRemove(context, Root());
                          },
                          child: AuthcustomButton(
                            text: "As Guest",
                            width: 170,
                            color: Colors.transparent,
                            textColor: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
