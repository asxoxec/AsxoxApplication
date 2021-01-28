
import 'package:asxox/MasterPage.dart';
import 'package:asxox/Screen/HomePage.dart';
import 'package:asxox/models/CategoryModel.dart';
import 'package:asxox/theme/colors.dart';
import 'package:asxox/utils/Global.dart';
import 'package:asxox/widgets/CustomAppBar.dart';
import 'package:flutter/material.dart';

class CategoryPage extends StatefulWidget {

  const CategoryPage({Key key}) : super(key: key);

  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {

  final List<String> entries=["One","Two","Three","Four","Five"];
  List<CategoryModel> cats=List.empty();

  @override
  void initState() {
    super.initState();
    //cats = Global.categoryList;
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context);
    return WillPopScope(
      onWillPop: () async {
        print('Clicked Back');
        return Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => MasterPage()),
        );
      },
      child: Scaffold(
        body: SingleChildScrollView(
            child: Container(
              width: screenSize.size.width,
              child: getBlockCategory(screenSize.size.width, screenSize.size.height),
            )
        ),
      ),
    );
  }

  Container getBlockCategory(width,height){
    return Container(
        decoration: BoxDecoration(
          //color: Colors.red
        ),
        child:Column(
          children: [
            ...List.generate(cats.length, (index) =>
                Container(
                    margin: EdgeInsets.all(10),
                    padding: EdgeInsets.all(10),
                    alignment: Alignment.center,
                    width:width,
                    height: height/6,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        image: DecorationImage(
                            image: NetworkImage(cats[index].image),
                            fit: BoxFit.cover
                        )
                    ),
                    //child: Image.network(cats[0]),
                    // child:Container(
                    //   decoration: BoxDecoration(
                    //       color: CustomColors.blueGrey,
                    //       border: Border.all(width: 1,color: Colors.transparent),
                    //       // borderRadius: BorderRadius.only(topRight: Radius.circular(20),bottomLeft: Radius.circular(20))
                    //       borderRadius: BorderRadius.only(topLeft: Radius.circular(20))
                    //
                    //   ),
                    //   child: FlatButton(
                    //     minWidth: width/2,
                    //     padding: EdgeInsets.all(5),
                    //     // color: Colors.white70,
                    //     onPressed: (){
                    //       // Navigator.push(context,
                    //       //     MaterialPageRoute(builder: (context) => null);
                    //     },
                    //     child:  Text(
                    //      cats[index].name,
                    //       style: TextStyle(
                    //           fontSize: 18,
                    //           color: Colors.deepOrange
                    //       ),
                    //     ),
                    //   ),
                    // )
                )
            )
          ],
        )
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
