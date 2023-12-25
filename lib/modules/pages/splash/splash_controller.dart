import 'package:get/get.dart' as gt;
import '../../../app/log/log_controller.dart';
import '../../../app/routes/app_routes.dart';

class SplashController extends gt.GetxController {

  //  Controllers

  LogController logController = gt.Get.find();

  //***************************************************************************************************************
  //  Variables

  //***************************************************************************************************************

  //  Status

  @override
  void onInit() {
    logController.onRed(msg: 'Init Splash');
    onSplash();
    super.onInit();
  }

  @override
  void onReady() {
    logController.onRed(msg: 'Ready Splash');
    super.onReady();
  }

  @override
  void onClose() {
    logController.onRed(msg: 'Close Splash');
    super.onClose();
  }



  //***************************************************************************************************************

  //  Methods

  void onSplash() {
    Future.delayed(const Duration(seconds: 3),(){
        gt.Get.offNamed(AppRoutes.home,);
    },);
  }
}
