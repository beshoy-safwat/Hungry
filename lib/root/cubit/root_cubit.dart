import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:hungry2/features/auth/view/profile_view.dart';
import 'package:hungry2/features/cart/view/cart_view.dart';
import 'package:hungry2/features/home/view/home_view.dart';
import 'package:hungry2/features/orderHistory/view/orderhisory_view.dart';

part 'root_state.dart';

class RootCubit extends Cubit<RootState> {
  RootCubit() : super(RootInitial());

  int currentindex = 0;
  final PageController controller = PageController();

  final List<Widget> screens = [
    HomeView(),
    CartView(),
    OrderhisoryView(),
    ProfileView(),
  ];

  final List<BottomNavigationBarItem> items = [
    BottomNavigationBarItem(icon: Icon(CupertinoIcons.home), label: "Home"),
    BottomNavigationBarItem(icon: Icon(CupertinoIcons.cart), label: "cat"),
    BottomNavigationBarItem(
      icon: Icon(CupertinoIcons.list_bullet),
      label: "orders",
    ),
    BottomNavigationBarItem(
      icon: Icon(CupertinoIcons.profile_circled),
      label: "profile",
    ),
  ];

  void changeIndex(int index) {
    if (index == currentindex) return;
    currentindex = index;
    controller.jumpToPage(currentindex);
    emit(RootChangeIndex());
  }

  void resetIndex(int index) {
    currentindex = index;
    controller.jumpToPage(index);
    emit(RootChangeIndex());
  }
}
