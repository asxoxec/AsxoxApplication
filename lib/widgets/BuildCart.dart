
import 'package:asxox/theme/colors.dart';
import 'package:flutter/material.dart';

class BuildCart extends StatefulWidget {

  final bool tap, margin;

  BuildCart({this.tap, this.margin,Key key}) : super(key: key);

  @override
  _BuildCartState createState() => _BuildCartState();
}

class _BuildCartState extends State<BuildCart> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.tap == true ? (){} : null,
      child: Container(
        margin: widget.margin == true ? EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0) : null,
        alignment: Alignment.center,
        child: Stack(
          children: [
            Icon(Icons.shopping_cart_outlined),
            Positioned(
              right: 0,
              child: Container(
                padding: EdgeInsets.all(1),
                decoration: BoxDecoration(
                    color: Colors.redAccent,
                    borderRadius: BorderRadius.circular(6)
                ),
                constraints: BoxConstraints(
                    minWidth: 12,
                    minHeight: 12
                ),
                child: Text(
                  '7',
                  style: TextStyle(
                      color: CustomColors.white,
                      fontSize: 10
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
