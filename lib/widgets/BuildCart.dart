
import 'package:asxox/theme/colors.dart';
import 'package:flutter/material.dart';

class BuildCart extends StatefulWidget {
  @override
  _BuildCartState createState() => _BuildCartState();
}

class _BuildCartState extends State<BuildCart> {
  @override
  Widget build(BuildContext context) {
    return Stack(
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
    );
  }
}
