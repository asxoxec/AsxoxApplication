import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';


class Product{
  String url="http://192.168.110.248:8080/api/product";
  int id,discount,cat_id,price,s_cat_id;
  String title,cover,color,size,description_text;
  var detail=[];
  var description_image=[];
  Product({this.id,this.discount,this.cat_id,this.s_cat_id,this.title,this.cover,this.price,this.color,this.size,this.description_text,this.detail,this.description_image});
  factory Product.fromJson(dynamic data){
    return Product(
        id:data['id'],
        discount: data['discount'],
        cat_id:data['category'],
        s_cat_id:data['subcategory'],
        title:data['title'],
        cover:data['cover'],
        price:data['price'],
        color:data['color'],
        size:data['size'],
        description_text: data['description_text'],
        description_image: data['description_image'],
        detail: data['detail']
    );
  }

  static List<Product> products=List.empty();
  static List<String> pImgs=List.empty();
  static Future<void> getAllProducts() async {
    var url="http://192.168.110.248:8080/api/product";
    Response response=await http.get(url);
    List<dynamic> data=jsonDecode(response.body)['data'] as List;
    products= data.map((dynamic item) => Product.fromJson(item)).toList();
    for(var p in products){
      print(p.description_image[1]['description_image']);
    }
   // var imgs=products[0].description_image;
   // for(var img in imgs){
   //   pImgs.add(img['description_image']);
   // }

  }
}
