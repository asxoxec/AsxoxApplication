
import 'package:asxox/models/ProductModel.dart';
import 'package:asxox/theme/colors.dart';
import 'package:asxox/utils/Global.dart';
import 'package:asxox/widgets/CustomAppBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

class ProductDetail extends StatefulWidget {
  @override
  _ProductDetailState createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {

  //ProductModel product = Global.productList[0];
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: CustomAppBar('Product Detail',true),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Flexible(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    width: screenSize.width,
                    height: screenSize.height / 1.5,
                    margin: EdgeInsets.all(5.0),
                    decoration: BoxDecoration(
                        color: CustomColors.pearlWhite,
                        boxShadow: [
                          BoxShadow(
                            color: const Color(0x29000000),
                            offset: Offset(0, 3),
                            blurRadius: 6,
                          ),
                        ],
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(10.0),
                          bottomRight: Radius.circular(10.0),
                        ),
                      image: DecorationImage(
                        image: AssetImage(
                          'assets/images/11.jpg'
                        ),fit: BoxFit.cover
                      )
                    ),
                  ),
                  ListTile(
                    leading: Container(
                      width: screenSize.width / 6,
                      height: screenSize.height / 8,
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: const Color(0x29000000),
                              offset: Offset(0, 3),
                              blurRadius: 6,
                            ),
                          ],
                          image: DecorationImage(
                              image: AssetImage(
                                  'assets/images/11.jpg'
                              ),fit: BoxFit.cover
                          )
                      ),
                    ),
                    title: Text('VR Box', style: TextStyle(
                      color: CustomColors.deepOrange,
                      fontSize: 16
                    ),),
                    subtitle: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(text: '73,000',style: TextStyle(
                            color: CustomColors.red,
                            fontWeight: FontWeight.w800,
                            fontSize: 18
                          )),
                          TextSpan(text: '  '),
                          TextSpan(text: '89,000',style: TextStyle(
                            color: CustomColors.grey,
                            decoration: TextDecoration.lineThrough
                          ))
                        ]
                      ),
                    )
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      children: [
                        Text('Quantity : ',style: TextStyle(color: CustomColors.deepOrange),),
                        InkWell(
                          onTap: () {

                          },
                          child: Container(
                            width: 42,
                            height: 42,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(4.0),
                                  bottomLeft: Radius.circular(4.0)
                              ),
                              color: const Color(0xfff6f6f6),
                            ),
                            child: Text(
                              '-',
                              style: TextStyle(
                                fontFamily: 'Google',
                                fontSize: 30,
                                color: const Color(0xff565656),
                                height: 1.2,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: 50,
                          height: 42,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: const Color(0xfff6f6f6),
                          ),
                          child: Text(
                            '0'.padLeft(2, "0"),
                            style: TextStyle(
                              fontFamily: 'Google',
                              fontSize: 16,
                              color: const Color(0xff565656),
                              height: 1.2,
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {

                          },
                          child: Container(
                            width: 42,
                            height: 42,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(4.0),
                                  bottomRight: Radius.circular(4.0)
                              ),
                              color: const Color(0xfff6f6f6),
                            ),
                            child: Text(
                              '+',
                              style: TextStyle(
                                fontFamily: 'Google',
                                fontSize: 30,
                                color: const Color(0xff565656),
                                height: 1.2,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 500,
                  )
                  // Text(product.price.toString()),
                  // Html(
                  //   data: Global.htmlData,
                  // )
                ],
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FlatButton(
                  minWidth: screenSize.width / 2,
                  height: 50,
                  color: CustomColors.deepOrange,
                  onPressed: (){},
                  child: Text('Add to Cart',style: TextStyle(color: CustomColors.pearlWhite),)),
              FlatButton(
                  minWidth: screenSize.width / 2,
                  height: 50,
                  color: CustomColors.cyan,
                  onPressed: (){},
                  child: Text('Buy Now',style: TextStyle(color: CustomColors.pearlWhite)))
            ],
          )
        ],
      ),
    );
  }
}
