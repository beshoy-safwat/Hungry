import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hungry2/core/constants/app_colors.dart';
import 'package:hungry2/shared/custom_text.dart';

class ProfileButton extends StatelessWidget {
  const ProfileButton({
    super.key,
    required this.text,
    this.ontap,
    required this.icon,
    this.width,
    required this.logout,
  });
  final String text;
  final Function()? ontap;
  final IconData icon;
  final double? width;
  final bool logout;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        height: 60,
        width: width ?? 160,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: logout ? Colors.transparent : AppColors.primaryColor,
          border: logout ? Border.all(color: AppColors.primaryColor) : null,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomText(
              text: text,
              color: logout ? AppColors.primaryColor : Colors.white,
              size: 15,
              weight: FontWeight.w500,
            ),
            Gap(10),
            Icon(
              icon,
              color: logout ? AppColors.primaryColor : Colors.white,
              size: 20,
            ),
          ],
        ),
      ),
    );
  }
}
