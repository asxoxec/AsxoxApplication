
class CategoryModel {
  int id,productsCount;
  String title,handle,description;
  Pic image;

  CategoryModel({this.id,this.productsCount,this.title,this.handle,this.description,this.image});
  factory CategoryModel.fromJson(dynamic data){
    Pic img = data['image'] as Pic;
    return CategoryModel(
      id: data['id'],
      productsCount: data['products_count'],
      title: data['title'],
      handle: data['handle'],
      description: data['description'],
      image: img
    );
  }
}

class Pic {
  int id;
  String createdAt,src;
  bool alt;


  Pic({this.id, this.createdAt,this.src, this.alt});

  factory Pic.fromJson(dynamic data){
    return Pic(
      id: data['id'],
      createdAt: data['created_at'],
      src: data['src'],
      alt: data['alt']
    );
  }
}

