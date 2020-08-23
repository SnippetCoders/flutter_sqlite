import 'package:flutter_sqlite/models/model.dart';

class ProductModel extends Model {
  static String table = 'products';
 
  int id;
  String productName;
  int categoryId;
  String productDesc;
  double price;
  String productPic;

  ProductModel({
    this.id,
    this.productName,
    this.categoryId,
    this.productDesc,
    this.price,
    this.productPic,
  });

  static ProductModel fromMap(Map<String, dynamic> map) {
    return ProductModel(
      id: map["id"],
      productName: map['productName'].toString(),
      categoryId: map['categoryId'],
      productDesc: map['productDesc'],
      price: map['price'],
      productPic: map['productPic'],
    );
  }

  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = {
      'id': id,
      'productName': productName,
      'categoryId': categoryId,
      'productDesc': productDesc,
      'price': price,
      'productPic': productPic
    };

    if (id != null) {
      map['id'] = id;
    }
    return map;
  }
}

class CategoryModel extends Model {
  static String table = 'product_categories';

  String categoryName;
  int categoryId;

  CategoryModel({
    this.categoryId,
    this.categoryName,
  });

  static CategoryModel fromMap(Map<String, dynamic> map) {
    return CategoryModel(
      categoryId: map["id"],
      categoryName: map['categoryName'],
    );
  }

  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = {
      'categoryName': categoryName,
    };

    if (id != null) {
      map['id'] = id;
    }
    return map;
  }
}
