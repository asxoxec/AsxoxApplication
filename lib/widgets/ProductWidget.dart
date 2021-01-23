
import 'package:asxox/theme/colors.dart';
import 'package:flutter/material.dart';

class ProductWidget extends StatelessWidget {

  final String image;

  ProductWidget({this.image, Key key}) : super(key: key);

  //price , discount price , image
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
      height: screenSize.height * 0.5,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              width: screenSize.width * 0.3,
              height: screenSize.height/6,
              margin: EdgeInsets.only(right: 10),
                decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                color: CustomColors.white,
                boxShadow: [
                  BoxShadow(
                      color: CustomColors.dark,
                      offset: Offset(0, 13),
                      blurRadius: 25)
                ],
                image: DecorationImage(
                    image:
                    AssetImage("assets/images/$image"),
                    fit: BoxFit.fitHeight)),
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
              fontSize: 14
            ),
          ),
        ],
      ),
    );
  }
}
