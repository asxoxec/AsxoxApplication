
class ProductModel{
  int id;
  String title, description_text, cover;
  int price, discount, category, subcategory;
  List<String> images;


  ProductModel({this.id, this.title, this.description_text, this.cover, this.price, this.discount, this.category, this.subcategory, this.images});

  factory ProductModel.fromJson(dynamic data){
    List<dynamic> imgList = data['description_image'];
    List<String> lisy = [];
    imgList.forEach((img) {
      lisy.add(img['description_image']);
    });
    print(lisy);
    return ProductModel(
      id: data['id'],
      title: data['title'],
      description_text: data['description_text'],
      cover: data['cover'],
      price: data['price'],
      discount: data['discount'],
      category: data['category'],
      subcategory: data['subcategory'],
      images: lisy
    );
  }
}



