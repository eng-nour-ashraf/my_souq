import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:my_souq/app/enum/app_status.dart';
import 'package:my_souq/modules/custom_widgets/app_error.dart';
import 'package:my_souq/modules/custom_widgets/app_loading.dart';
import 'package:my_souq/modules/pages/main/main_controller.dart';

import '../../../../app/const/assets.dart';
import '../../../../app/const/colors.dart';
import '../../../../app/const/constants.dart';
import '../../../../app/const/text_styles.dart';
import '../../../custom_widgets/app_pull_to_refresh.dart';
import 'main_product_list_item.dart';

class MainProductList extends StatelessWidget {
  final MainController controller;

  const MainProductList({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
        id: AppConstants.getXIDMainProductsList,
        builder: (MainController _) {
          Widget currentWidget = Container();
          switch (controller.appStatusProducts) {
            case AppStatus.init:
              currentWidget = Container();
              break;
            case AppStatus.loading:
              currentWidget = const AppLoadingWidget(
                color: AppColors.redColor,
                size: 70,
              );
              break;
            case AppStatus.success:
              if (controller.productsSqlList.isEmpty) {
                currentWidget = Container(
                  margin: const EdgeInsets.symmetric(vertical: 20),
                  child: Center(
                    child: Text(
                      'No Products Available Now!',
                      textAlign: TextAlign.center,
                      style: AppTextStyles.onBody1Style(
                          color: AppColors.blackColor),
                    ),
                  ),
                );
              } else {
                currentWidget = AppPullToRefresh(
                  color: AppColors.redColor,
                  controller: controller.refreshController,
                  onRefresh: () => controller.onCheckInternetConnection(),
                  child: GridView.builder(
                    padding: const EdgeInsets.all(8),
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        mainAxisSpacing: 12.0,
                        crossAxisSpacing: 12.0,
                        childAspectRatio: 7/10,
                        crossAxisCount: 2),
                    shrinkWrap: true,
                    itemCount: controller.productsSqlList.length,
                    itemBuilder: (context, index) {
                      return MainProductListItem(controller: controller, index: index,);
                    },
                  ),
                );
              }
              break;
            case AppStatus.failed:
              currentWidget =
                  AppErrorWidget(tryAgain: () => controller.onCheckInternetConnection());
              break;
          }
          return currentWidget;
        });
  }
}
