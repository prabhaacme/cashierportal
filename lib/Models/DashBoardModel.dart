class DashBoardModel {
  DashBoardModel({
    required this.status,
    required this.productDataCount,
    required this.data,
    required this.message,
  });
  late final bool status;
  late final String productDataCount;
  late final Data data;
  late final String message;
  
  DashBoardModel.fromJson(Map<String, dynamic> json){
    status = json['status'];
    productDataCount = json['productDataCount'];
    data = Data.fromJson(json['data']);
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['status'] = status;
    _data['productDataCount'] = productDataCount;
    _data['data'] = data.toJson();
    _data['message'] = message;
    return _data;
  }
}

class Data {
  Data({
    required this.categoryData,
    required this.productData,
  });
  late final List<CategoryData> categoryData;
  late final List<ProductData> productData;
  
  Data.fromJson(Map<String, dynamic> json){
    categoryData = List.from(json['categoryData']).map((e)=>CategoryData.fromJson(e)).toList();
    productData = List.from(json['productData']).map((e)=>ProductData.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['categoryData'] = categoryData.map((e)=>e.toJson()).toList();
    _data['productData'] = productData.map((e)=>e.toJson()).toList();
    return _data;
  }
}

class CategoryData {
  CategoryData({
    required this.id,
    required this.categoryName,
  });
  late final int id;
  late final String categoryName;
  
  CategoryData.fromJson(Map<String, dynamic> json){
    id = json['id'];
    categoryName = json['category_name'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['category_name'] = categoryName;
    return _data;
  }
}

class ProductData {
  ProductData({
    required this.id,
    required this.productName,
    required this.productBarcode,
     this.productBarcode2,
    required this.categoryId,
    required this.productPrice,
    required this.productDiscountedPrice,
    required this.productImages,
  });
  late final int id;
  late final String productName;
  late final String productBarcode;
  late final Null productBarcode2;
  late final int categoryId;
  late final String productPrice;
  late final String productDiscountedPrice;
  late final String productImages;
  
  ProductData.fromJson(Map<String, dynamic> json){
    id = json['id'];
    productName = json['product_name'];
    productBarcode = json['product_barcode'];
    productBarcode2 = null;
    categoryId = json['category_id'];
    productPrice = json['product_price'];
    productDiscountedPrice = json['product_discounted_price'];
    productImages = json['product_images'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['product_name'] = productName;
    _data['product_barcode'] = productBarcode;
    _data['product_barcode2'] = productBarcode2;
    _data['category_id'] = categoryId;
    _data['product_price'] = productPrice;
    _data['product_discounted_price'] = productDiscountedPrice;
    _data['product_images'] = productImages;
    return _data;
  }
}