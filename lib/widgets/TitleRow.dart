import 'package:asxox/theme/colors.dart';
import 'package:flutter/material.dart';

class TitleRow extends StatelessWidget {

  final String title, tag;

  TitleRow({this.title, this.tag, Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 10.0, left: 20.0, bottom: 5.0, right: 20.0
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        Text(
        title, style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 16,
          color: CustomColors.deepOrange
              ),
          ),
          // FlatButton(
          //     onPressed: (){
          //       print("clicked $tag");
          //     },
          //     child: Text('See all'), )
          InkWell(
            onTap: (){
              print('Tag is now $tag');
            },
            child: Text('See all',style: TextStyle(
              color: CustomColors.grey,
            ),),
          )
        ],
      ),
    );
  }
}
