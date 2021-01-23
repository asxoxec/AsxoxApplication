
import 'package:asxox/Screen/UserLogin.dart';
import 'package:asxox/theme/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AllCategory extends StatefulWidget {
  @override
  _AllCategoryState createState() => _AllCategoryState();
}

class _AllCategoryState extends State<AllCategory> {
  final List<String> entries=["One","Two","Three","Four","Five"];
  var imgList=[];
  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery=MediaQuery.of(context);
    return Scaffold(
      appBar: AppBar(
          title:Text("All Categories")
      ),
      body: SafeArea(
        child: SingleChildScrollView(
            child:Container(
              padding: EdgeInsets.all(10),
              // color: Colors.grey,
              width: mediaQuery.size.width,
              height:mediaQuery.size.height,
              child: GridView.count(
                crossAxisSpacing: 5,
                mainAxisSpacing:5,
                crossAxisCount: 2 ,
                children: List.generate(10,(index){
                  return getOneContainer(mediaQuery.size.width/2,mediaQuery.size.height/5);
                }),
              ),
            )
        ),
      ),
    );
  }

  Container getOneContainer(width,height){
    return Container(
      decoration: BoxDecoration(
        // border: Border.all(color: Colors.red),
          borderRadius: BorderRadius.circular(5),
          color: Colors.grey
      ),
      child: Column(
        children: [
          //Text("Category Title"),
          Container(
              alignment: Alignment.center,
              margin: EdgeInsets.all(5),
              padding: EdgeInsets.only(bottom: 10),
              width: width,
              height:height,
              child: Image.network("https://www.cybrosys.com/odoo-apps/uploads/appimg/pos-product-category-filter.png")
          ),
          // Container(
          //     child: getBlockBtn(context, "Category Title", Login())
          // )
        ],
      ),
    );
  }
  Row getBlockBtn(context, btnText, navigateTo) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: CustomColors.deepOrange),
            child: FlatButton(
              height: 50,
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => navigateTo));
              },
              child: Text(
                btnText,
                style: TextStyle(fontSize: 20,color: Colors.white),
              ),
              // color: Colors.amber,
            ),
          ),
        ),
      ],
    );
  }
}
