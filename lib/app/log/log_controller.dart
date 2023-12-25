

import 'package:logger/logger.dart';

class LogController {
  Logger? _logger;

  LogController() {
    _logger = Logger(
        printer: PrettyPrinter(
          methodCount: 0,
          errorMethodCount: 5,
          lineLength: 50,
        )
    );
  }

  // log v
  void onGrey({required String msg}) => _logger!.v(msg);

  // log d
  void onWhite({required String msg}) => _logger!.d(msg);

  // log i
  void onBlue({required String msg}) => _logger!.i(msg);

  // log w
  void onOrange({required String msg}) => _logger!.w(msg);

  // log e
  void onRed({required String msg}) => _logger!.e(msg);

}
