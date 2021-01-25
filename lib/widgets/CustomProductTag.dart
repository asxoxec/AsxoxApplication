
import 'package:asxox/theme/colors.dart';
import 'package:asxox/widgets/ProductWidget.dart';
import 'package:asxox/widgets/TitleRow.dart';
import 'package:flutter/material.dart';

class CustomProductTag extends StatefulWidget {

  //to Delete
  final String image;

  final String title, tag;
  CustomProductTag({this.image, this.title, this.tag, Key key}) : super(key: key);

  @override
  _CustomProductTagState createState() => _CustomProductTagState();
}

class _CustomProductTagState extends State<CustomProductTag> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Column(
      children: [
        TitleRow(title: widget.title,tag: widget.tag,),
        Container(
          height: screenSize.height * 0.25,
          margin: EdgeInsets.only(left: 20.0, top: 5.0),
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, index){
                return ProductWidget(image: widget.image,);
              }),
        )
      ],
    );
  }
}
