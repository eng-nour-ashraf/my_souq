import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';

import 'app/binding/bindings.dart';
import 'app/const/constants.dart';
import 'app/routes/app_pages.dart';
import 'app/routes/app_routes.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(DevicePreview(
      enabled: false,
      builder: (context) {
        return const MyApp();
      }));


}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // init Route
    var initRoute = AppRoutes.splash;

    return GetMaterialApp(
      title: 'My Souq',
      debugShowCheckedModeBanner: false,
      initialBinding: AppBindings(),
      defaultTransition: Transition.fade,
      transitionDuration: const Duration(milliseconds: 500),
      getPages: AppPages.routes,
      initialRoute: initRoute,
      theme: ThemeData(fontFamily: AppConstants.fontFamily),
      unknownRoute: GetPage(
        page: () => const Text('Unknown Route!'),
        name: '/unknown',
      ),
    );
  }
}