import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hungry2/root/cubit/root_cubit.dart';
import 'package:hungry2/root/widgets/custom_navbar.dart';

class Root extends StatelessWidget {
  const Root({super.key});
  @override
  Widget build(BuildContext context) {
    final cubit = context.read<RootCubit>();
    return BlocBuilder<RootCubit, RootState>(
      builder: (context, state) {
        return Scaffold(
          body: PageView(
            physics: NeverScrollableScrollPhysics(),
            controller: cubit.controller,
            children: cubit.screens,
          ),
          bottomNavigationBar: CustomNavbar(
            currentindex: cubit.currentindex,
            changeIndex: cubit.changeIndex,
            items: cubit.items,
          ),
        );
      },
    );
  }
}
