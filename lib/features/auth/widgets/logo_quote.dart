import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:hungry2/core/constants/app_colors.dart';
import 'package:hungry2/shared/custom_text.dart';

class LogoQuote extends StatelessWidget {
  const LogoQuote({super.key, this.color});
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Gap(120),
        SvgPicture.asset(
          "assets/logo/logo.svg",
          colorFilter: ColorFilter.mode(color??
            AppColors.primaryColor,
            BlendMode.srcIn,
          ),
        ),
        Gap(10),
        CustomText(
          text: "Discover the fast food",
          color: Colors.white,
          weight: FontWeight.w400,
          size: 15,
        ),
      ],
    );
  }
}
