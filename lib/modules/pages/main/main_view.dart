import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_souq/modules/pages/main/widgets/main_product_list.dart';
import 'main_controller.dart';

class MainView extends GetView<MainController> {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    return MainProductList(controller: controller,);
  }
}
