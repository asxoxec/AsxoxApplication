
import 'package:asxox/theme/colors.dart';
import 'package:flutter/material.dart';

class TitleText extends StatelessWidget {
  final String title;
  const TitleText(this.title,{Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      child: Text(
        title ,style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 18,
          color: CustomColors.deepOrange
      ),
      ),
    );
  }
}
