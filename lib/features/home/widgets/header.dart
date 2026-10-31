import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:hungry2/core/constants/app_colors.dart';
import 'package:hungry2/shared/custom_text.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Gap(20),
            SvgPicture.asset(
              "assets/logo/logo.svg",
              colorFilter: ColorFilter.mode(
                AppColors.primaryColor,
                BlendMode.srcIn,
              ),
            ),
            CustomText(
              text: "Welcome back Beshoo",
              color: Colors.blueGrey,
              size: 15,
            ),
          ],
        ),
        Spacer(),
        CircleAvatar(
          radius: 35,
          backgroundImage: AssetImage("assets/splash/splash.png"),
        ),
      ],
    );
  }
}
