
import 'package:asxox/Screen/ProductDetail.dart';
import 'package:asxox/theme/colors.dart';
import 'package:flutter/material.dart';

class ProductWidget extends StatelessWidget {
  //toDelete
  final String image;

  //Real Work
  final bool margin;
  //Current Product Model
  ProductWidget({this.image, this.margin,Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(
          builder: (context) => ProductDetail()
        ));
      },
      child: Container(
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
                width: screenSize.width * 0.3,
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
                      AssetImage("assets/images/$image"),
                      fit: BoxFit.cover)),
            ),
            Text('Bicycle',
              style: TextStyle(
                  color: CustomColors.deepOrange
              ),
            ),
            Text('45,000 KS',
              style: TextStyle(
                  color: CustomColors.grey,
                  fontSize: 12,
                  decoration: TextDecoration.lineThrough
              ),
            ),
            Text('25,000 KS',
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
