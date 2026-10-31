import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:hungry2/core/constants/app_colors.dart';
import 'package:hungry2/features/auth/cubit/auth_cubit.dart';
import 'package:hungry2/features/auth/cubit/auth_states.dart';
import 'package:hungry2/features/auth/widgets/logout_dialog.dart';
import 'package:hungry2/features/auth/widgets/profile_button.dart';
import 'package:hungry2/features/auth/widgets/profile_textfield.dart';
import 'package:hungry2/shared/custom_text.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthCubit, AuthStates>(
      builder: (context, state) {
        final cubit = context.read<AuthCubit>();
        return Scaffold(
          backgroundColor: AppColors.primaryColor,
          appBar: AppBar(
            backgroundColor: AppColors.primaryColor,
            actions: [
              Icon(Icons.settings, color: Colors.white, size: 30),
              Gap.expand(10),
            ],
          ),
          body: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Column(
                children: [
                  Container(
                    width: 120,
                    height: 120,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                          "https://tse4.mm.bing.net/th/id/OIP.iL2NVYKfWqhmx-0dlObrHAAAAA?r=0&pid=Api&h=220&P=0",
                        ),
                      ),
                      color: Colors.grey,
                      border: Border.all(width: 5, color: Colors.white),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  Gap(50),
                  ProfileTextfield(
                    controller: cubit.profileNameController,
                    label: "Name",
                  ),
                  Gap(30),
                  ProfileTextfield(
                    controller: cubit.profileNameController,
                    label: "Email",
                  ),
                  Gap(30),
                  ProfileTextfield(
                    controller: cubit.profileNameController,
                    label: "Address",
                  ),
                  Gap(30),

                  ListTile(
                    leading: Image.asset("assets/payment/visa.png"),
                    title: CustomText(
                      text: "Card",
                      size: 18,
                      color: Colors.black,
                    ),
                    subtitle: CustomText(
                      text: "2313 **** **** 4232",
                      color: Colors.blueGrey.shade500,
                    ),

                    onTap: () {},
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusGeometry.circular(10),
                    ),
                    tileColor: Colors.white,
                    trailing: CustomText(text: "Default", color: Colors.black),
                  ),
                ],
              ),
            ),
          ),
          bottomSheet: Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25),
                topRight: Radius.circular(25),
              ),
            ),
            height: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ProfileButton(
                  text: "Edit Profile",
                  icon: Icons.edit,
                  width: 180,
                  logout: false,
                ),
                ProfileButton(
                  text: "Logout",
                  icon: Icons.logout,
                  width: 130,
                  logout: true,
                  ontap: () {
                    return showDialog(
                      context: context,
                      builder: (context) {
                        return LogoutDialog();
                      },
                    );
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class LayoutCubit {
}
