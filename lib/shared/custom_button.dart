import 'package:flutter/material.dart';
import 'package:hungry2/core/constants/app_colors.dart';
import 'package:hungry2/shared/custom_text.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    this.ontap,
    this.height,
    this.width, this.color,
  });
  final String text;
  final Function()? ontap;
  final double? height;
  final double? width;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        decoration: BoxDecoration(
          color:color?? AppColors.primaryColor,
          borderRadius: BorderRadius.circular(25),
        ),
        height: height ?? 60,
        width: width ?? 140,
        child: Center(
          child: CustomText(
            text: text,
            size: 17,
            color: Colors.white,
            weight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
