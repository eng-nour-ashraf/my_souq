import 'package:dio/dio.dart';

import 'api_urls.dart';
import 'network_config.dart';

class ApiController {
  NetworkConfig? _networkConfig;

  ApiController() {
    _networkConfig = NetworkConfig();
  }

  onClearCash() {
    _networkConfig!.clearCacheOptions();
  }

  /// home

  Future<Response> onProducts() {
    var header = <String, String>{};
    var query = <String, dynamic>{};
    return _networkConfig!.get(
      url: ApiUrls.productsUrl,
      headers: header,
      query: query,
    );
  }

  ///===================================================================================================
}
