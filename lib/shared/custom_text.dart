import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText({
    super.key,
    required this.text,
    this.size,
    this.weight,
    this.color,
  });
  final String text;
  final double? size;
  final FontWeight? weight;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textScaler: TextScaler.linear(1.0),
      overflow: TextOverflow.ellipsis,
      maxLines: 2,
      style: TextStyle(color: color, fontSize: size, fontWeight: weight),

    );
  }
}
