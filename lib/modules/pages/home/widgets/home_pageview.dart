import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../home_controller.dart';

class HomePageView extends StatelessWidget {
  final HomeController controller;

  const HomePageView({
    Key? key,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: PageView(
        controller: controller.pageController,
        onPageChanged: controller.onPageChanged,
        children: controller.homeScreenItems,
      ),
    );
  }
}
