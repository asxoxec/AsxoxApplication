import 'package:asxox/theme/colors.dart';
import 'package:flutter/material.dart';

class TitleRow extends StatelessWidget {

  final String title, tag;

  TitleRow({this.title, this.tag, Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
      Container(
        alignment: Alignment.topLeft,
        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 2.0),
        child: Text(
        title, style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 16,
          color: CustomColors.deepOrange
              ),
          ),
       ),
        FlatButton(
            onPressed: (){
              print("clicked $tag");
            },
            child: Text('See all'), )
      ],
    );
  }
}
