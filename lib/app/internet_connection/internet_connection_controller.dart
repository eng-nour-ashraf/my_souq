import 'package:internet_connection_checker/internet_connection_checker.dart';


class InternetConnectionController {
  InternetConnectionChecker? _internetConnectionChecker;

  InternetConnectionController() {
    _internetConnectionChecker = InternetConnectionChecker.createInstance(
      checkTimeout: const Duration(seconds: 3),
      checkInterval: const Duration(seconds: 3),
    );
  }

  // has connection
  Future<bool> onCheckConnection() async =>
      await _internetConnectionChecker!.hasConnection;
}
