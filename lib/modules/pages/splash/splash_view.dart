
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../app/const/colors.dart';
import '../../custom_widgets/app_loading.dart';
import 'splash_controller.dart';
import 'widgets/splash_img.dart';

class SplashView extends GetView<SplashController> {
  final SplashController splashController = Get.find();
  SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SplashImg(),
              AppLoadingWidget(loadingPadding: EdgeInsets.only(top: 20),color: AppColors.redColor),
            ],
          ),
        ],
      ),
    );
  }
}
