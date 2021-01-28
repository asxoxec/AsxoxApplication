
import 'package:asxox/models/CategoryModel.dart';
import 'package:asxox/theme/colors.dart';
import 'package:asxox/utils/Global.dart';
import 'package:asxox/widgets/CustomAppBar.dart';
import 'package:asxox/widgets/ProductWidget.dart';
import 'package:flutter/material.dart';

class ProductOfCategory extends StatefulWidget {

  ProductOfCategory({Key key}) : super(key: key);

  @override
  _ProductOfCategoryState createState() => _ProductOfCategoryState();
}

class _ProductOfCategoryState extends State<ProductOfCategory> {
   CategoryModel cat;
  _loadData(){
    cat = Global.curCategoryModel;
  }

  @override
  void initState() {
    super.initState();
    _loadData();
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var width = screenSize.width / 3;
    var height = screenSize.height * 0.3;
    return Scaffold(
      appBar: CustomAppBar('Bicycle', true),
      body: Column(
        children: [
          Flexible(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
              child: GridView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: cat.subCategory.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    mainAxisSpacing: 10.0,
                    crossAxisSpacing: 10.0,
                    childAspectRatio: width / height
                  ),
                  itemBuilder: (context, index){
                    return ProductWidget(
                      image: cat.subCategory[index].image,
                      margin: false,);
                  }

              ),
            ),
          ),
        ],
      ),
    );
  }
}
