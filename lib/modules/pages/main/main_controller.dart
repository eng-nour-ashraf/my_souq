import 'package:dio/dio.dart';
import 'package:get/get.dart' as gt;
import 'package:my_souq/app/const/constants.dart';
import 'package:my_souq/app/internet_connection/internet_connection_controller.dart';
import 'package:my_souq/app/network/api_controller.dart';
import 'package:my_souq/app/network/models/products_model.dart';
import 'package:my_souq/app/sql/sql_controller.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import '../../../app/enum/app_status.dart';
import '../../../app/log/log_controller.dart';
import '../../../app/sql/models/product_sql_model.dart';
import '../../../app/utils/snackbar_controller.dart';

class MainController extends gt.GetxController {
  //  controllers

  LogController logController = gt.Get.find();
  ApiController apiController = gt.Get.find();
  SnackBarController snackBarController = gt.Get.find();
  SqlController sqlController = gt.Get.find();
  InternetConnectionController internetConnectionController = gt.Get.find();

  //***************************************************************************************************************

  //  variables
  AppStatus appStatusProducts = AppStatus.init;

  List<ProductSqlModel> productsSqlList = [];
  RefreshController refreshController =
      RefreshController(initialRefresh: false);

  //***************************************************************************************************************

  //  status

  @override
  void onInit() {
    logController.onRed(msg: 'init Main');
    onCheckInternetConnection();
    super.onInit();
  }

  @override
  void onReady() {
    logController.onRed(msg: 'ready Main');
    super.onReady();
  }

  @override
  void onClose() {
    logController.onRed(msg: 'close Main');
    super.onClose();
  }

//***************************************************************************************************************

//  methods

  Future<void> onCheckInternetConnection() async {
    appStatusProducts = AppStatus.loading;
    update();
    if(await internetConnectionController.onCheckConnection()){
      onLoadProductsFromServer();
    }else{
      onLoadProductsFromSql();
    }
  }

  void onLoadProductsFromServer() async {
    await apiController.onProducts().then((Response response) {
      var productsList = List<ProductsModel>.from(
          response.data.map((i) => ProductsModel.fromJson(i)));
      if(productsSqlList.isNotEmpty) productsSqlList.clear();
      sqlController.deleteAll();
      for (var element in productsList) {
        var productSqlModel = ProductSqlModel(
            productCategory: element.category,
            productPrice: element.price!.toDouble(),
            productRate: element.rating!.rate!.toDouble(),
            productRateCount: element.rating!.count!.toInt(),
            productTitle: element.title,
            productDescription: element.description,
            productId: element.id!.toInt(),
            productImage: element.image);
        productsSqlList.add(productSqlModel);
        sqlController.insert(productSqlModel);
      }
      onSuccessLoadingData();
    }).catchError((error, stackTrace) {
      appStatusProducts = AppStatus.failed;
      update([AppConstants.getXIDMainProductsList]);
    }).timeout(const Duration(seconds: 10), onTimeout: () {
      appStatusProducts = AppStatus.failed;
      update([AppConstants.getXIDMainProductsList]);
    });
  }

  Future<void> onLoadProductsFromSql() async {
    productsSqlList = await sqlController.loadAll();
    onSuccessLoadingData();
  }

  void onSuccessLoadingData(){
    appStatusProducts = AppStatus.success;
    update([AppConstants.getXIDMainProductsList]);
    refreshController.refreshCompleted();
  }

  void onItemClick({required int index}) {}

  void onAddCartItem({required int index}) {
    snackBarController.onSuccessSneakBar(
        text: 'Item Added to Cart Successfully');
  }
}
