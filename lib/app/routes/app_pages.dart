import 'package:get/get.dart';
import 'package:my_souq/modules/pages/splash/splash_view.dart';
import '../../modules/pages/home/home_view.dart';
import 'app_routes.dart';

class AppPages {
  AppPages._();

  static final routes = [
    GetPage(
      name: AppRoutes.home,
      page: () => const HomeView(),
    ),
    GetPage(
      name: AppRoutes.splash,
      page: () => SplashView(),
    ),
  ];
}
