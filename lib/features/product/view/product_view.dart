import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:hungry2/core/constants/app_functions.dart';
import 'package:hungry2/features/product/cubit/product_cubit.dart';
import 'package:hungry2/features/product/widgets/spicy_slider.dart';
import 'package:hungry2/features/product/widgets/topping_card.dart';
import 'package:hungry2/features/product/widgets/total_row.dart';
import 'package:hungry2/shared/custom_text.dart';

class ProductView extends StatelessWidget {
  const ProductView({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<ProductCubit>();
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () => Routing.pop(context),
          icon: Icon(CupertinoIcons.arrow_left),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: BlocBuilder<ProductCubit, ProductState>(
          builder: (context, state) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SpicySlider(
                  slidervalue: cubit.slidervalue,
                  sliderchange: (value) {
                    cubit.sliderchange(value);
                  },
                ),
                Gap(50),
                CustomText(text: "Toppings", size: 20),
                Gap(10),

                SizedBox(
                  height: 100,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 6,
                    itemBuilder: (context, index) {
                      return ToppingCard();
                    },
                  ),
                ),
                Gap(20),
                CustomText(text: "Side", size: 20),
                Gap(10),
                SizedBox(
                  height: 100,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 6,
                    itemBuilder: (context, index) {
                      return ToppingCard();
                    },
                  ),
                ),
                
              ],
            );
          },
        ),
      ),
      bottomSheet:TotalRow(total: 129, ) ,
    );
  }
}
