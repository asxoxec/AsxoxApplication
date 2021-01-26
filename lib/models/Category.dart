import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:http/http.dart';


class Category {
  static List<Category> categories=new List.empty();
  int id;
  String name,image;
  List scats;
  Category({this.id,this.name,this.image,this.scats});
  factory Category.fromJson(dynamic data)
  {
    List scats=data['subcategory'];
    return Category(
      id:data['id'],
      name:data['name'],
      image:data['image'],
      scats: scats
    );
  }

 static Future<void> getAllCategory() async {
    // url="http://192.168.110.211:9090/api/category";
   var url="http://192.168.110.248:8080/api/category";
    Response response=await http.get(url);
    List<dynamic> data=jsonDecode(response.body)['data'] as List;
    categories= data.map((dynamic item) => Category.fromJson(item)).toList();
    print(categories);
 }
}

class SubCategory{
 int id;
 String name,image;
 SubCategory({this.id,this.name,this.image});
 factory SubCategory.fromJson(data){
   return SubCategory(
     id:data['id'],
     name:data['name'],
     image:data['image']
   );
 }

}













