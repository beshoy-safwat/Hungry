import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hungry2/core/constants/app_colors.dart';

class CustomSearch extends StatelessWidget {
  const CustomSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 4,
      shadowColor: Colors.grey,
      borderRadius: BorderRadius.circular(20),

      child: TextField(
        cursorColor: AppColors.primaryColor,

        decoration: InputDecoration(
          fillColor: Colors.white,
          filled: true,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(color: Colors.white),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),

            borderSide: BorderSide(color: Colors.white),
          ),
          prefixIcon: Icon(CupertinoIcons.search),
          hintText: "Search...",
          prefixIconColor: AppColors.primaryColor,
        ),
      ),
    );
  }
}
