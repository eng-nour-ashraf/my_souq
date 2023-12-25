import 'package:cached_network_image/cached_network_image.dart';
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

class MainProductListItem extends StatelessWidget {
  final MainController controller;
  final int index;

  const MainProductListItem({
    super.key,
    required this.controller,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    var productsItem = controller.productsSqlList[index];
    return GestureDetector(
      onTap: ()=> controller.onItemClick(index : index),
      child: Container(
        width: double.infinity,
        height: double.infinity,
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
            border: Border.all(color: AppColors.gray200Color),
            color: AppColors.whiteColor,
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(10),
              topLeft: Radius.circular(10),
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(50),
            )),
        child: Column(
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: CachedNetworkImage(
                  fit: BoxFit.contain,
                  width: double.infinity,
                  height: 100,
                  errorWidget: (context, url, error) => const AppLoadingWidget(
                    size: 30,
                    color: AppColors.redColor,
                  ),
                  placeholder: (context, url) => const AppLoadingWidget(
                    size: 30,color: AppColors.redColor,
                  ),
                  imageUrl: productsItem.productImage!,
                )),
            const SizedBox(
              height: 5,
            ),
            Row(
              children: [
                const Icon(
                  Icons.star,
                  color: AppColors.orangeColor,
                  size: 18,
                ),
                const SizedBox(
                  width: 3,
                ),
                Text(productsItem.productRate.toString(),
                    style:
                        AppTextStyles.onBody4Style(color: AppColors.blackColor)),
                const SizedBox(
                  width: 3,
                ),
                Text('(${productsItem.productRateCount.toString()})',
                    style: AppTextStyles.onBody4Style(
                        color: AppColors.gray300Color)),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Text(productsItem.productTitle!,
                maxLines: 2,
                textAlign: TextAlign.start,
                overflow: TextOverflow.ellipsis,
                style:
                    AppTextStyles.onHeadingH5Style(color: AppColors.blackColor)),
            const SizedBox(
              height: 5,
            ),
            Text(productsItem.productDescription!,
                maxLines: 2,
                textAlign: TextAlign.start,
                overflow: TextOverflow.ellipsis,
                style: AppTextStyles.onBody4Style(color: AppColors.gray400Color)),
            const Spacer(),
            Row(
              children: [
                Expanded(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('(${productsItem.productCategory!})',
                        textAlign: TextAlign.start,
                        style: AppTextStyles.onBody4Style(
                            color: AppColors.primaryColor)),
                    const SizedBox(
                      height: 5,
                    ),
                    Text('\$${productsItem.productPrice!}',
                        textAlign: TextAlign.start,
                        style: AppTextStyles.onBody4Style(
                            color: AppColors.redColor)),
                  ],
                )),
                GestureDetector(
                  onTap: ()=>controller.onAddCartItem(index: index),
                  child: Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: AppColors.blackColor,
                        shape: BoxShape.circle,
                        border: Border.all(color: AppColors.gray200Color)),
                    child: const Icon(
                      Icons.add,
                      color: AppColors.whiteColor,
                      size: 22,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
