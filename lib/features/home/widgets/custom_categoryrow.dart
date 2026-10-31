import 'package:flutter/material.dart';
import 'package:hungry2/core/constants/app_colors.dart';
import 'package:hungry2/shared/custom_text.dart';

class CustomCategoryrow extends StatelessWidget {
  const CustomCategoryrow({super.key, required this.selectedcategory, required this.changefunc, required this.length,  required this.categories});
  final int selectedcategory;
  final Function changefunc;
  final int length;
  final List categories;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(length, (index) {
          return GestureDetector(
            onTap: () => changefunc(index),
            child: Container(
              margin: EdgeInsets.only(right: 8),
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              decoration: BoxDecoration(
                color: selectedcategory == index
                    ? AppColors.primaryColor
                    : Colors.grey.shade300,
                borderRadius: BorderRadius.circular(15),
              ),
              child: CustomText(
                text: categories[index],
                size: 15,
                color: selectedcategory == index
                    ? Colors.white
                    : Colors.blueGrey,
                weight: FontWeight.w400,
              ),
            ),
          );
        }),
        // [

        // ],
      ),
    );
  }
}
