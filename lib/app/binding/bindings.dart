import 'package:get/get.dart';

import '../../modules/pages/home/home_controller.dart';
import '../../modules/pages/main/main_controller.dart';
import '../../modules/pages/splash/splash_controller.dart';
import '../internet_connection/internet_connection_controller.dart';
import '../log/log_controller.dart';
import '../network/api_controller.dart';
import '../sql/sql_controller.dart';
import '../utils/snackbar_controller.dart';


class AppBindings implements Bindings {
  @override
  void dependencies() {

    // app
    Get.put(SqlController(),permanent: true);
    Get.put(ApiController(),permanent: true);
    Get.lazyPut(() => LogController(), fenix: true);
    Get.lazyPut(() => InternetConnectionController(), fenix: true);
    Get.lazyPut(() => SnackBarController(), fenix: true);



    // modules

    Get.lazyPut(() => HomeController(), fenix: true);
    Get.lazyPut(() => SplashController(), fenix: true);
    Get.lazyPut(() => MainController(), fenix: true);
  }
}
