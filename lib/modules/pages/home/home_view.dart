import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_souq/modules/pages/home/widgets/home_appbar.dart';
import 'package:my_souq/modules/pages/home/widgets/home_bottombar.dart';
import 'package:my_souq/modules/pages/home/widgets/home_pageview.dart';

import '../../../app/const/colors.dart';
import 'home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.gray50Color,
      bottomNavigationBar: HomeBottomBar(controller: controller,),
      body: Column(
        children: [
          HomeAppBar(controller: controller,),
          HomePageView(controller: controller,),
        ],
      ),
    );
  }
}
