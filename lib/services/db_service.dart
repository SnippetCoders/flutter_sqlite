import 'package:flutter_sqlite/models/data_model.dart';
import 'package:flutter_sqlite/utils/db_helper.dart';

class DBService {
  Future<bool> addProduct(ProductModel model) async {
    await DB.init();
    bool isSaved = false;
    if (model != null) {
      int inserted = await DB.insert(ProductModel.table, model);

      isSaved = inserted == 1 ? true : false;
    }

    return isSaved;
  }

  Future<bool> updateProduct(ProductModel model) async {
    await DB.init();
    bool isSaved = false;
    if (model != null) {
      int inserted = await DB.update(ProductModel.table, model);

      isSaved = inserted == 1 ? true : false;
    }

    return isSaved;
  }

  Future<List<ProductModel>> getProducts() async {
    await DB.init();
    List<Map<String, dynamic>> products = await DB.query(ProductModel.table);

    return products.map((item) => ProductModel.fromMap(item)).toList();
  }

  Future<List<CategoryModel>> getCategories() async {
    await DB.init();
    List<Map<String, dynamic>> categories = await DB.query(CategoryModel.table);

    return categories.map((item) => CategoryModel.fromMap(item)).toList();
  }

  Future<bool> deleteProduct(ProductModel model) async {
    await DB.init();
    bool isSaved = false;
    if (model != null) {
      int inserted = await DB.delete(ProductModel.table, model);

      isSaved = inserted == 1 ? true : false;
    }

    return isSaved;
  }
}
