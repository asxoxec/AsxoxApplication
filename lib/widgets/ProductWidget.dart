import 'package:asxox/Screen/ProductDetail.dart';
import 'package:asxox/models/ProductModel.dart';
import 'package:asxox/theme/colors.dart';
import 'package:asxox/utils/Global.dart';
import 'package:flutter/material.dart';

class ProductWidget extends StatelessWidget {

  //Real Work
  final bool margin;
  final ProductModel product;
  ProductWidget({this.product, this.margin,Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return InkWell(
      onTap: (){
        Global.curProduct = product;
        Navigator.push(context, MaterialPageRoute(
            builder: (context) => ProductDetail()
        ));
      },
      child: Container(
        width: screenSize.width * 0.3,
        height: screenSize.height,
        margin: margin == true ? EdgeInsets.only(
            right: 10.0
        ) : null,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(5.0),
                bottomRight: Radius.circular(5.0)
            )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: screenSize.height/6,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(5.0),
                    topRight: Radius.circular(5.0),
                  ),
                  boxShadow: [
                    BoxShadow(
                        color: CustomColors.dark,
                        offset: Offset(0, 13),
                        blurRadius: 25)
                  ],
                  image: DecorationImage(
                      image:
                      NetworkImage(product.cover),
                      fit: BoxFit.cover)),
            ),
            Text(product.title,
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              style: TextStyle(
                  color: CustomColors.deepOrange,
                  height: 1.5000000476837158,
              ),
            ),
            Text(Global.formatPrice(product.price),
              style: TextStyle(
                  color: CustomColors.grey,
                  fontSize: 12,
                  decoration: TextDecoration.lineThrough
              ),
            ),
            Text(Global.formatPrice(product.discount),
              style: TextStyle(
                  color: Colors.redAccent,
                  fontSize: 14,
                  fontWeight: FontWeight.w600
              ),
            ),
          ],
        ),
      ),
    );
  }
}