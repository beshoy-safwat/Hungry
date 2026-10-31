import 'package:flutter/material.dart';
import 'package:hungry2/core/constants/app_colors.dart';

class CustomNavbar extends StatelessWidget {
  const CustomNavbar({
    super.key,
    required this.currentindex,
    required this.changeIndex,
    required this.items,
  });
  final int currentindex;
  final Function(int) changeIndex;
  final List<BottomNavigationBarItem> items;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: AppColors.primaryColor,
        borderRadius: BorderRadius.circular(30),
      ),
      child: BottomNavigationBar(
        elevation: 0,
        type: BottomNavigationBarType.fixed,
        currentIndex: currentindex,
        onTap: (value) => changeIndex(value),
        backgroundColor: Colors.transparent,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.blueGrey,
        items: items,
      ),
    );
    
  }
}
