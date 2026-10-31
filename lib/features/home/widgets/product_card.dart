import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hungry2/core/constants/app_functions.dart';
import 'package:hungry2/features/product/view/product_view.dart';
import 'package:hungry2/shared/custom_text.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
    required this.name,
    required this.img,
    required this.desc,
    required this.rate,
  });
  final String name;
  final String img;
  final String desc;
  final String rate;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Routing.push(context, ProductView()),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Positioned(
                    bottom: -8,
                    left: 0,
                    right: 0,
                    child: Image.asset("assets/test/shadow.png"),
                  ),
                  Image.asset(img, height: 160),
                ],
              ),
              CustomText(text: desc, size: 15, weight: FontWeight.bold),
              CustomText(text: name, size: 12, weight: FontWeight.w400),
              Row(
                children: [
                  CustomText(
                    text: "⭐ $rate",
                    size: 12,
                    weight: FontWeight.w400,
                  ),
                  Spacer(),
                  Icon(CupertinoIcons.heart),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
