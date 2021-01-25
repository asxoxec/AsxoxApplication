
import 'package:asxox/Screen/Bill.dart';
import 'package:asxox/theme/colors.dart';
import 'package:flutter/material.dart';

class AllCategory extends StatefulWidget {
  @override
  _AllCategoryState createState() => _AllCategoryState();
}

class _AllCategoryState extends State<AllCategory> {
  final List<String> entries=["One","Two","Three","Four","Five"];
  var imgAry=[];
  List<String> imgList=[
    "https://cdn.shopify.com/s/files/1/0298/7763/3117/products/brushcover_500x.jpg",
    "https://cdn.shopify.com/s/files/1/0298/7763/3117/products/138657603_449312519398001_6481460182978025022_n_300x.jpg",
    "https://cdn.shopify.com/s/files/1/0298/7763/3117/products/bc951460-0ebf-4bcf-b4c5-1aab4b7e9018_500x.jpg",
    "https://cdn.shopify.com/s/files/1/0298/7763/3117/products/0_aca82c0c-5d55-41e0-b4c4-80c21498a2c0_500x.jpg",
    "https://cdn.shopify.com/s/files/1/0298/7763/3117/products/20191211144050_500x.jpg"
  ];
  var titleList=[
    "အလှအပ ပစ္စည်းမျာ:",
    "အိမ်သုံး ပစ္စည်းများ",
    "အိတ်များ",
    "ထီးများ",
    "ဖိနပ်များ"
  ];
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
              width: mediaQuery.size.width,
              child: getBlockCategory(mediaQuery.size.width, mediaQuery.size.height),
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
            ...List.generate(imgList.length, (index) =>
                Container(
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(10),
                  alignment: Alignment.center,
                  width:width,
                  height: height/6,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                      image: DecorationImage(
                          image: NetworkImage(imgList[index]),
                          fit: BoxFit.cover
                      )
                  ),
                  //child: Image.network(imgList[0]),
                  child:Container(
                    decoration: BoxDecoration(
                      color: CustomColors.blueGrey,
                      border: Border.all(width: 1,color: Colors.transparent),
                    // borderRadius: BorderRadius.only(topRight: Radius.circular(20),bottomLeft: Radius.circular(20))
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(20))

                ),
                    child: FlatButton(
                      minWidth: width/2,
                      padding: EdgeInsets.all(5),
                     // color: Colors.white70,
                      onPressed: (){
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Bill()));
                      },
                      child:  Text(
                        titleList[index],
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.deepOrange
                        ),
                      ),
                    ),
                  )
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






