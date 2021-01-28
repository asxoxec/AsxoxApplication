import 'package:asxox/Screen/AllCategory.dart';
import 'package:asxox/Screen/Bill.dart';
import 'package:asxox/theme/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    var imgWidth = mediaQuery.size.width / 4;
    var imgHeight = mediaQuery.size.height / 6;
    int price = 200000;
    int count=100;
    GlobalKey<ScaffoldState> _scaffoldKey=GlobalKey();
    return Scaffold(
        appBar: AppBar(
          title: Text("Your Cart"),
        ),
        body: SafeArea(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Flexible(
                child: Container(
              margin: EdgeInsets.only(left: 10, right: 10),
              padding: EdgeInsets.all(0),
              height: (mediaQuery.size.height / 3) * 2,
              decoration: BoxDecoration(),
              child: ListView.builder(
                itemCount:10 ,
                itemBuilder: (context, index) => Container(
                  margin: EdgeInsets.only(bottom: 10),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey[300]),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        top:-4,
                        right: -1,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [InkWell(
                            onTap: (){
                            },
                            child: Container(
                              margin: EdgeInsets.only(right: 2),
                              child: Text("X",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.red
                                  ),
                                  textAlign: TextAlign.end),
                            ),
                          )],
                        ),
                      ),
                      SizedBox(height: 30,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          getImage(imgWidth, imgHeight,
                              "https://cdn.shopify.com/s/files/1/0298/7763/3117/products/20191211144050_500x.jpg"
                          ),
                         SizedBox(width: 10,),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start ,
                            children: [
                              getDesText("Woman Blouse", "48000 kyats"),
                              SizedBox(height: 20,),
                              getCountBtnColumn(count.toString()),
                            ],
                          ),
                          SizedBox(width: 10,),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            )),
            SizedBox(
              height: 30,
            ),
            Container(
              margin: EdgeInsets.only(left: 30, right: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Total Price",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "$price",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            getBlockBtn(context, "Check Out", Bill()),

          ],
        )));
  }

  Row getBlockBtn(context, btnText, navigateTo) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(0),
            child: Container(
              height: 40,
              margin: EdgeInsets.all(30),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: CustomColors.deepOrange),
              child: FlatButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => navigateTo));
                },
                child: Text(
                  btnText,
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
                // color: Colors.amber,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Container getImage(imgWidth, imgHeight, imgLink) {
    return Container(
        //margin: EdgeInsets.only(left: 30),
        width: imgWidth,
        height: imgHeight,
        child: Image.network(
          imgLink,
        ));
  }

  Container getDesText(title, price) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(fontSize: 16, color: CustomColors.blueGrey),
          ),
          SizedBox(height: 10,),
          Text(
            price,
            style: TextStyle(fontSize: 13, color: CustomColors.blueGrey),
          )
        ],
      ),
    );
  }

  Container getCountBtn(txt) {
    return Container(
      width: 30,
      height: 30,
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: OutlineButton(
          color: Colors.red,
          onPressed: () {
            setState(() {

            });
          },
          //color: Colors.red,
          child: Text(
            txt,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: CustomColors.blueGrey),
          )),
    );
  }

  Container getOrderRow(imgWidth, imgHeight) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),

      //margin: EdgeInsets.only(left: 30,right: 30),
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey[300]),
          borderRadius: BorderRadius.circular(5)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          getImage(imgWidth, imgHeight,
              "https://cdn.shopify.com/s/files/1/0298/7763/3117/products/brushcover_500x.jpg"),
          Column(
            children: [
              getDesText("Woman  Shirt", "18000 Kyats"),
              getCountBtn("+"),
              SizedBox(
                height: 20,
              ),
              Text("1000"),
              SizedBox(
                height: 20,
              ),
              getCountBtn("-"),
            ],
          )
        ],
      ),
    );
  }

  Row getCountBtnColumn(count) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        getCountBtn("+"),
        SizedBox(
          width: 10,
        ),
        Text(count),
        SizedBox(
          width: 10,
        ),
        getCountBtn("-")
      ],
    );
  }



}




