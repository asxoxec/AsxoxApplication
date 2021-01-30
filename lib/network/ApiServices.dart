
import 'dart:convert';
import 'dart:io';

import 'package:asxox/models/CategoryModel.dart';
import 'package:asxox/models/ProductModel.dart';
import 'package:asxox/utils/Global.dart';
import 'package:http/http.dart' as http;

class ApiServices{


  static Future<List<CategoryModel>> fetchCategories() async{
    try{
      var url = Global.BASE_URL1 + '/category';
      var response = await http.get(url);
      if(response.statusCode == 200){
        print("200");
        print ('Before Decode');
        print(response.body);
      }
      var responseData = jsonDecode(response.body);
      print ('After Decode');
      print(responseData);
      List list = responseData['data'] as List;

      Global.categoryList = list.map((e) => CategoryModel.fromJson(e)).toList();

      print("Category List" +Global.categoryList.toString());
      Global.categoryList.forEach((p) {
        print("Category Name : " + p.name);
      });
//      print("Data "+responseData);
//      List list = responseData as List;
//      Global.studentList = list.map((e) => StudentModel.fromJson(e)).toList();
//      Global.studentList.forEach((student) {
//        print("Name: "+student.firstName);
//      });
//      return Global.studentList;
    }on SocketException catch( ex){
      print(ex.toString());
      print("Not Connected");
    }

    //toDelete

    return Global.categoryList;
  }

  static Future<List<ProductModel>> fetchProducts() async{
    try{
      var url = Global.BASE_URL1 + '/product';
      var response = await http.get(url);
      if(response.statusCode == 200){
        print("200");
        print ('Before Decode');
        print(response.body);
      }
      var responseData = jsonDecode(response.body);
      print ('After Decode');
      print(responseData);
      List list = responseData['data'] as List;

      Global.productList = list.map((e) => ProductModel.fromJson(e)).toList();

      Global.productList.forEach((p) {
        print("Product Name : " + p.title);
      });
//      print("Data "+responseData);
//      List list = responseData as List;
//      Global.studentList = list.map((e) => StudentModel.fromJson(e)).toList();
//      Global.studentList.forEach((student) {
//        print("Name: "+student.firstName);
//      });
//      return Global.studentList;
    }on SocketException catch( ex){
      print(ex.toString());
      print("Not Connected");
    }

    //toDelete

    return null;
  }
}
