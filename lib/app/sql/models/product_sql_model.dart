class ProductSqlModel {
  ProductSqlModel({
    this.productId,
    this.productRateCount,
    this.productImage,
    this.productCategory,
    this.productTitle,
    this.productPrice,
    this.productRate,
    this.productDescription,});


  int? productId;
  int? productRateCount;
  String? productDescription;
  String? productImage;
  String? productCategory;
  String? productTitle;
  double? productPrice;
  double? productRate;

  ProductSqlModel.fromJson(dynamic json) {
    productId = json['productId'];
    productRateCount = json['productRateCount'];
    productDescription = json['productDescription'];
    productImage = json['productImage'];
    productCategory = json['productCategory'];
    productTitle = json['productTitle'];
    productPrice = json['productPrice'];
    productRate = json['productRate'];
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['productId'] = productId;
    map['productRateCount'] = productRateCount;
    map['productDescription'] = productDescription;
    map['productImage'] = productImage;
    map['productCategory'] = productCategory;
    map['productTitle'] = productTitle;
    map['productPrice'] = productPrice;
    map['productRate'] = productRate;
    return map;
  }

}