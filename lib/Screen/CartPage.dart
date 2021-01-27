
import 'package:asxox/MasterPage.dart';
import 'package:asxox/theme/colors.dart';
import 'package:asxox/widgets/CustomAppBar.dart';
import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {

  const CartPage({Key key}) : super(key: key);

  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    var imgWidth = mediaQuery.size.width / 5;
    var imgHeight = mediaQuery.size.height / 6;
    int price =200000;
    return WillPopScope(
      onWillPop: () async {
        print('Clicked Back');
        return Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => MasterPage()),
        );
      },
      child: Scaffold(
        appBar: CustomAppBar('CartPage', false),
        body: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Flexible(
                    child:
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10.0),
                      padding: EdgeInsets.all(0),
                      height: (mediaQuery.size.height/3)*2,
                      decoration: BoxDecoration(
                      ),
                      child: ListView.builder(
                        itemCount: 10,
                        itemBuilder: (context,index)=>Container(
                          margin: EdgeInsets.only(bottom: 10),
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            border: Border.all(color:Colors.grey[300]),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Stack(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  getImage(imgWidth, imgHeight, "https://cdn.shopify.com/s/files/1/0298/7763/3117/products/brushcover_500x.jpg"),
                                  getDesText("Woman Blouse", "48000 kyats"),
                                  getCountBtnColumn(1)
                                ],
                              ),
                              Container(

                              )
                            ],
                          ),
                        ),
                      ),
                    )),
                SizedBox(height: 30,),
                Container(
                  margin: EdgeInsets.only(left: 30,right: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Total Price",style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                      ),),
                      Text("$price",style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                      ) ,)
                    ],
                  ),
                )
                ,
                //getBlockBtn(context, "Check Out", Bill()),
                // InkWell(
                //   child: Text("Go All Category",style: TextStyle(
                //     fontSize: 18,
                //     fontFamily: 'Cambria'
                //   ),),
                //   onTap: (){
                //     Navigator.push(context, MaterialPageRoute(builder: (context)=>AllCategory()));
                //   },
                // )

              ],
            )
        )
      ),
    );
  }

  Row getBlockBtn(context, btnText, navigateTo) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(0),
            child: Container(
              margin: EdgeInsets.all(30),
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
                  style: TextStyle(fontSize: 20, color: Colors.white),
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
            style: TextStyle(fontSize: 18, color: CustomColors.blueGrey),
          ),
          SizedBox(height: 5.0,),
          Text(
            price,
            style: TextStyle(color: CustomColors.blueGrey),
          )
        ],
      ),
    );
  }
  Container getCountBtn(txt) {
    return Container(
      width: 35,
      height: 35,
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
            textAlign: TextAlign.center
            ,
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: CustomColors.blueGrey),
          )),
    );
  }
  Container getOrderRow(imgWidth,imgHeight){
    return Container(
      margin: EdgeInsets.only(bottom: 10),

      //margin: EdgeInsets.only(left: 30,right: 30),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey[300]),
          borderRadius: BorderRadius.circular(5)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          getImage(imgWidth, imgHeight, "https://cdn.shopify.com/s/files/1/0298/7763/3117/products/brushcover_500x.jpg"),
          getDesText("Woman  Shirt", "18000 Kyats"),
          Column(
            children: [
              getCountBtn("+"),
              SizedBox(height: 20,),
              Text("1000"),
              SizedBox(height: 20,),
              getCountBtn("-"),
            ],
          )
        ],
      ),
    );
  }
  Column getCountBtnColumn(count){
    return Column(
      children: [
        getCountBtn("+"),
        SizedBox(height: 10,),
        Text(count.toString()),
        SizedBox(height: 10,),
        getCountBtn("-")
      ],
    );
  }
}
