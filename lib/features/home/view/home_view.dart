import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:hungry2/features/home/cubit/home_cubit.dart';
import 'package:hungry2/features/home/widgets/custom_categoryrow.dart';
import 'package:hungry2/features/home/widgets/custom_search.dart';
import 'package:hungry2/features/home/widgets/header.dart';
import 'package:hungry2/features/home/widgets/product_card.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<HomeCubit>();
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: Colors.white,
              pinned: true,
              elevation: 0,
              scrolledUnderElevation: 0,
              automaticallyImplyLeading: false,
              flexibleSpace: Padding(
                padding: const EdgeInsets.only(right: 15, left: 15, top: 30),

                child: Column(
                  children: [Header(), Gap(10), CustomSearch(), Gap(10)],
                ),
              ),
              toolbarHeight: 180,
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: BlocBuilder<HomeCubit, HomeState>(
                  builder: (context, state) {
                    return SingleChildScrollView(
                      child: Column(
                        children: [
                          CustomCategoryrow(
                            selectedcategory: cubit.selectedcategory,
                            changefunc: cubit.changecateogry,
                            length: cubit.category.length,
                            categories: cubit.category,
                          ),
                          Gap(25),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
            SliverPadding(
              padding: EdgeInsetsGeometry.symmetric(horizontal: 15),
              sliver: SliverGrid(
                delegate: SliverChildBuilderDelegate(childCount: 10, (
                  context,
                  index,
                ) {
                  return ProductCard(
                    name: "Cheeseburger",
                    img: "assets/test/test.png",
                    desc: "Wend's Burger",
                    rate: "4.5",
                  );
                }),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: .75,
                  crossAxisSpacing: 5,
                  mainAxisSpacing: 7,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
