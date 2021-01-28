import 'package:asxox/utils/UserHelp.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class MyOrders extends StatefulWidget {
  @override
  _MyOrdersState createState() => _MyOrdersState();
}

class _MyOrdersState extends State<MyOrders> {
  @override
  Widget build(BuildContext context) {
    MediaQueryData mqd = MediaQuery.of(context);
    Color txtColor=Colors.white;
    return Scaffold(
      appBar: AppBar(
        title: Text("Orders"),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: mqd.size.width,
            margin: EdgeInsets.only(left: 10, right: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Icon(
                    //   Icons.article_outlined,
                    //   size: 35,
                    //   color:Colors.blueGrey
                    // ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "My Orders",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color:HexColor("#01579b")
                         ),
                    )
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                //UserHelper().getHeaderText("My Orders"),
                ...List.generate(
                  10,
                  (index) => Container(
                      margin: EdgeInsets.only(bottom: 15),
                      padding: EdgeInsets.symmetric(vertical: 10),
                      decoration: BoxDecoration(
                          //borderRadius: BorderRadius.only(topLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
                        borderRadius: BorderRadius.circular(6),
                          border: Border.all(color: Colors.grey[200]),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.white.withOpacity(0.3),
                                blurRadius: 20,
                                spreadRadius: 2,
                                offset: Offset(0, 3))
                          ]),
                      child: getListChild("Order Voucher", mqd)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  ExpansionTile getListChild(title, mqd, {childTxt = ""}) {
    return ExpansionTile(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          //SizedBox(width: 20,),
          Container(
              padding: EdgeInsets.all(0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Order Voucher",
                    style: TextStyle(
                        fontSize: 16, fontWeight: FontWeight.bold,
                        color:HexColor("#37474f") ,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text("Order Date :",
                          style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold,
                            color:HexColor("#62727b") ,
                          )),
                      SizedBox(width: 10,),
                      Text("26-1-2020",  style: TextStyle(
                          color:Colors.blueGrey
                      ),)
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Subtotal :",
                          style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold,
                            color:HexColor("#62727b") ,
                          )),
                      SizedBox(width: 27,),
                      Text("20000 ks",  style: TextStyle(
                          color:Colors.blueGrey
                      ),)
                    ],
                  )
                ],
              ))
        ],
      ),
      children: [
        Container(
          padding: EdgeInsets.all(10),
          child: Row(
            children: [
              Container(
                width: mqd.size.width / 6,
                height: mqd.size.height / 7,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://cdn.shopify.com/s/files/1/0298/7763/3117/products/bk_59fe6f9c-848c-428e-812f-98d47c83fb2e_400x.jpg"),
                        fit: BoxFit.cover)),
              ),
              SizedBox(width: 20,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [Text("Product Name"),
                  SizedBox(height: 10,),
                  Text("30000ks")],
              )
            ],
          ),
        ),

      ],
    );
  }
}
