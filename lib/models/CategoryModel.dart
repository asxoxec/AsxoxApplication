
class CategoryModel {
  int id;
  String name,image;
  List<SubCategory> subCategory;

  CategoryModel({this.id, this.name, this.image, this.subCategory});

  factory CategoryModel.fromJson(dynamic data){

    List list = data['subcategory'] as List;
    List<SubCategory> subList = list.map((e) => SubCategory.fromJson(e)).toList();

    return CategoryModel(
      id: data['id'],
      name: data['name'],
      image: data['image'],
        subCategory: subList
    );
  }
}

class SubCategory{
  int id;
  String name,image;

  SubCategory({this.id, this.name, this.image});

  factory SubCategory.fromJson(dynamic data){
    return SubCategory(
      id: data['id'],
      name: data['name'],
      image: data['image']
    );
  }
}


