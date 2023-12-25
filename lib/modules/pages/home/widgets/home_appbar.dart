import 'package:flutter/material.dart';
import 'package:my_souq/modules/pages/home/home_controller.dart';

import '../../../../app/const/assets.dart';
import '../../../../app/const/colors.dart';
import '../../../../app/const/constants.dart';
import '../../../../app/const/text_styles.dart';

class HomeAppBar extends StatelessWidget {
  final HomeController controller;

  const HomeAppBar({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.infinity,
      decoration: const BoxDecoration(
          color: AppColors.whiteColor,
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 1.0),
                blurRadius: 5,
                color: AppColors.gray200Color)
          ],
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(15),
            bottomRight: Radius.circular(15),
          )),
      child: Column(
        children: [
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                width: 15,
              ),
              Container(
                padding: const EdgeInsets.all(5),

                child: const Icon(Icons.menu,
                    color: AppColors.gray400Color),
              ),
              const Spacer(),
              Image.asset(
                AppAssets.logo,
                width: 50,
                height: 50,
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                'My-Souq',
                textAlign: TextAlign.center,
                style:
                    AppTextStyles.onHeadingH4Style(color: AppColors.blackColor),
              ),
              const Spacer(),
              Container(
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),border: Border.all(color: AppColors.gray200Color)),
                child: const Icon(Icons.search,
                    color: AppColors.gray400Color),
              ),
              const SizedBox(
                width: 15,
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          )
        ],
      ),
    );
  }
}
