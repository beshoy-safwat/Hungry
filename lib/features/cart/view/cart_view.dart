import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hungry2/features/cart/cubit/cart_cubit.dart';
import 'package:hungry2/features/cart/widgets/cart_checkout.dart';
import 'package:hungry2/features/cart/widgets/cart_item.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<CartCubit>();
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 0,
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          right: 15,
          left: 15,
          top: 30,
          bottom: 100,
        ),
        child: BlocBuilder<CartCubit, CartState>(
          builder: (context, state) {
            return ListView.builder(
              itemCount: cubit.quantity.length,
              itemBuilder: (context, index) {
                return CartItem(
                  text: "Hamburger",
                  desc: "Veggie Burger",
                  img: "assets/test/test.png",
                  number: index,
                );
              },
            );
          },
        ),
      ),

      bottomSheet: CartCheckout(),
    );
  }
}
