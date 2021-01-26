
class ProductModel{
  int id;
  String title, description, cover;
  int price, discount, category, subcategory;


  ProductModel({this.id, this.title, this.description, this.cover, this.price, this.discount, this.category, this.subcategory});

  factory ProductModel.fromJson(dynamic data){
    return ProductModel(
      id: data['id'],
      title: data['title'],
      description: data['description'],
      cover: data['cover'],
      price: data['price'],
      discount: data['discount'],
      category: data['category'],
      subcategory: data['subcategory']
    );
  }
}




