import 'package:flutter/material.dart';
import 'package:hungry2/core/constants/app_colors.dart';
import 'package:hungry2/shared/custom_text.dart';

class AuthcustomButton extends StatelessWidget {
  const AuthcustomButton({
    super.key,
    required this.text,
    this.ontap,
    this.color,
    this.textColor, this.width,
  });

  final String text;
  final Function()? ontap;
  final Color? color;
  final Color? textColor;
  final double? width;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        width:width?? double.infinity,
        height: 60,
        decoration: BoxDecoration(
          color: color ?? Colors.white,
          border: Border.all(color: Colors.white),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Center(
          child: CustomText(
            text: text,
            size: 18,
            color: textColor ?? AppColors.primaryColor,
            weight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
