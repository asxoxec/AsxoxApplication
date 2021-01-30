
import 'package:asxox/models/ProductModel.dart';
import 'package:asxox/theme/colors.dart';
import 'package:asxox/utils/Global.dart';
import 'package:asxox/widgets/CustomAppBar.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

class ProductDetail extends StatefulWidget {

  @override
  _ProductDetailState createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {

  ProductModel product;

  _initialLoadData(){
    product = Global.curProduct;
  }

  @override
  void initState() {
    super.initState();
    _initialLoadData();
  }

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
                    height: screenSize.height/2,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black12,
                              offset: Offset(2, 2),
                              blurRadius: 4),
                          BoxShadow(
                              color: Colors.white38, offset: Offset(0, 4))
                        ]),
                    child: CarouselSlider.builder(
                      itemCount: product.images.length,
                      options: CarouselOptions(
                        autoPlay: true,
                        aspectRatio: 2.0,
                        enlargeCenterPage: true,
                      ),
                      itemBuilder: (context, ind) {
                        return InkWell(
                          onTap: () {
                          },
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: screenSize.height/2,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage(
                                    product.images[ind],
                                  ),
                                  fit: BoxFit.contain,
                                )),
//                child: Text(
//                    Global.popular[ind].item3,
//                  style: _buildTitleTextStyle(),
//                ),
                          ),
                        );
                      },
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
                              image: NetworkImage(
                                  product.cover
                              ),fit: BoxFit.cover
                          )
                      ),
                    ),
                    title: Text(product.title, style: TextStyle(
                      color: CustomColors.deepOrange,
                      fontSize: 22, height: 1.5000000476837158
                    ),),
                    subtitle: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(text: Global.formatPrice(product.discount),style: TextStyle(
                            color: CustomColors.red,
                            fontWeight: FontWeight.w800,
                            fontSize: 18
                          )),
                          TextSpan(text: '  '),
                          TextSpan(text: Global.formatPrice(product.price),style: TextStyle(
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
                    height: 400,
                    child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        itemCount: product.images.length,
                        itemBuilder: (context, index){
                          return Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(product.images[index]),
                                fit: BoxFit.cover
                              ),

                            ),
                          );
                        }),
                  )
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
