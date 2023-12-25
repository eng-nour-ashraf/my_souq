import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_souq/app/const/colors.dart';
import 'package:my_souq/app/const/constants.dart';
import 'package:my_souq/app/const/text_styles.dart';

import '../home_controller.dart';

class HomeBottomBar extends StatelessWidget {
  final HomeController controller;

  const HomeBottomBar({
    Key? key,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
        id: AppConstants.getXIDHomeBottomNavBar,
        builder: (HomeController _) {
          return CupertinoTabBar(
            activeColor: AppColors.redColor,
            inactiveColor: AppColors.gray300Color,
            onTap: controller.onBottomNavBarTap,
            currentIndex: controller.currentIndex,
            items: [
              _buildBottomNavigationBarItem(
                  index: 0,
                  currentIndex: controller.currentIndex,
                  icon: Icons.home, text: 'Home'),
              _buildBottomNavigationBarItem(
                  index: 1,
                  currentIndex: controller.currentIndex,
                  icon: Icons.notifications, text: 'Notification'),
              _buildBottomNavigationBarItem(
                  index: 2,
                  currentIndex: controller.currentIndex,
                  icon: Icons.shopping_cart, text: 'Cart'),
              _buildBottomNavigationBarItem(
                  index: 3,
                  currentIndex: controller.currentIndex,
                  icon: Icons.favorite, text: 'Wishlist'),
              _buildBottomNavigationBarItem(
                  index: 4,
                  currentIndex: controller.currentIndex,
                  icon: Icons.person, text: 'Profile'),
            ],
          );
        });
  }

  BottomNavigationBarItem _buildBottomNavigationBarItem(
      {required IconData icon, required int currentIndex, required int index,required String text}) {
    return BottomNavigationBarItem(
      icon: Column(
        children: [
          const Spacer(),
          Icon(
            icon,
            size: 25,
          ),
          Text(
            text,
            style: AppTextStyles.onBody4Style(),
          ),
        ],
      ),
    );
  }
}
