
import 'package:asxox/models/CategoryModel.dart';
import 'package:asxox/models/ProductModel.dart';
import 'dart:math';

import 'package:intl/intl.dart';

class Global {

  static String BASE_URL = 'http://192.168.110.211:9090/api';
  static String BASE_URL1 = 'http://192.168.110.248:8080/api';

  static List<CategoryModel> categoryList;
  static List<ProductModel> productList;

  // Category
  static int curCatIndex;
  static CategoryModel curCategoryModel;

  // Product
  static ProductModel curProduct;

  static String formatPrice(int price) {
    var f = NumberFormat("##,###");
    return f.format(price);
  }

}