import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hungry2/shared/custom_text.dart';

class ToppingCard extends StatelessWidget {
  const ToppingCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10.0),
      child: Stack(
        children: [
          Container(
            height: 100,
            width: 110,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.blueGrey.shade100,
                  blurRadius: 5,
                  spreadRadius: 2,
                  offset: Offset(0, 4),
                ),
              ],
            ),
          ),
          Image.asset("assets/test/tomato.png", height: 80, fit: BoxFit.cover),

          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            child: Container(
              height: 40,
              decoration: BoxDecoration(
                color: Colors.grey.shade800,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15),
                ),
              ),
              child: Row(
                children: [
                  Gap(8),
                  Center(
                    child: CustomText(
                      text: "Tomato",
                      size: 15,
                      color: Colors.white,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: CircleAvatar(
                      radius: 15,
                      backgroundColor: Colors.red,
                      child: Icon(
                        CupertinoIcons.add,
                        color: Colors.white,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
