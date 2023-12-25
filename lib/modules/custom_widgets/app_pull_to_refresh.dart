import 'package:flutter/material.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import '../../app/const/colors.dart';
import 'app_loading.dart';

class AppPullToRefresh extends StatelessWidget {
  final VoidCallback? onRefresh;
  final RefreshController controller;
  final Color color;
  final Widget child;

  const AppPullToRefresh(
      {Key? key,
      this.color = AppColors.primaryColor,
      required this.controller,
      required this.onRefresh,
      required this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SmartRefresher(
      header: WaterDropHeader(
        waterDropColor: color,
        refresh: AppLoadingWidget(
          loadingPadding: const EdgeInsets.only(top: 10),
          color: color,
          size: 30,
        ),
        complete: Icon(
          Icons.check_circle,
          size: 30,
          color: color,
        ),
      ),
      onRefresh: onRefresh,
      controller: controller,
      child: child,
    );
  }
}
