import 'package:flutter/material.dart';
import 'package:hungry2/core/constants/app_colors.dart';
import 'package:hungry2/shared/custom_text.dart';

class SpicySlider extends StatelessWidget {
  const SpicySlider({
    super.key,
    required this.slidervalue,
    required this.sliderchange,
  });
  final double slidervalue;
  final Function(double value) sliderchange;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset("assets/productdetail/productdetail.png", height: 280),
        Spacer(),
        Column(
          children: [
            CustomText(
              text:
                  "Customize your burger\n to your tastes.\nUltimate experience",
            ),
            Slider(
              value: slidervalue,
              min: 0,
              max: 1,
              activeColor: AppColors.primaryColor,
              onChanged: sliderchange,
            ),
          ],
        ),
      ],
    );
  }
}
