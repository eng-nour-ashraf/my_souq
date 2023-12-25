import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart' as gt;
import 'package:my_souq/app/const/constants.dart';
import 'package:my_souq/app/const/text_styles.dart';

import '../../../app/enum/app_status.dart';
import '../../../app/log/log_controller.dart';
import '../../../app/network/api_controller.dart';
import '../main/main_view.dart';

class HomeController extends gt.GetxController {

  //  Controllers

  LogController logController = gt.Get.find();
  ApiController apiController = gt.Get.find();

  //***************************************************************************************************************
  //  Variables

  AppStatus appStatusProfile = AppStatus.init;
  var currentIndex = 0;
  PageController pageController = PageController();
  List<Widget> homeScreenItems = [
    const MainView(),
    Center(child: Text('Coming Soon!',style: AppTextStyles.onBody2Style()),),
    Center(child: Text('Coming Soon!',style: AppTextStyles.onBody2Style()),),
    Center(child: Text('Coming Soon!',style: AppTextStyles.onBody2Style()),),
    Center(child: Text('Coming Soon!',style: AppTextStyles.onBody2Style()),),
  ];

  //***************************************************************************************************************

  //  Status

  @override
  void onInit() {
    logController.onRed(msg: 'Init Home');
    super.onInit();
  }

  @override
  void onReady() {
    logController.onRed(msg: 'Ready Home');
    super.onReady();
  }

  @override
  void onClose() {
    logController.onRed(msg: 'Close Home');
    super.onClose();
  }



  //***************************************************************************************************************

  //  Methods

  void onBottomNavBarTap(int value) {
    currentIndex = value;
    pageController.jumpToPage(value);
    update([AppConstants.getXIDHomeBottomNavBar]);
  }

  void onPageChanged(int page) {
    currentIndex = page;
    update([AppConstants.getXIDHomeBottomNavBar]);
  }


}
