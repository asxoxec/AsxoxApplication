
import 'dart:convert';
import 'dart:io';

import 'package:asxox/models/CategoryModel.dart';
import 'package:asxox/utils/Global.dart';
import 'package:http/http.dart' as http;

class ApiServices{


  static Future<List<CategoryModel>> fetchCategories() async{
    try{
      var response = await http.get(Global.BASE_URL);
      if(response.statusCode == 200){
        print("200");
        print(response.body);
      }
      var responseData = jsonDecode(response.body);
      print(responseData);
      List list = responseData['collections'] as List;

      Global.categoryList = list.map((e) => CategoryModel.fromJson(e)).toList();

      Global.categoryList.forEach((p) {
        print("Category Name : "+p.title);
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

    //return Global.studentList;
  }
}
