
import 'package:flutter/material.dart';

class CartRowWidget extends StatefulWidget {
  @override
  _CartRowWidgetState createState() => _CartRowWidgetState();
}

class _CartRowWidgetState extends State<CartRowWidget> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
Widget _buildItemCountRow(item) {
  return Row(
    children: [
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
          '${item.count}'.padLeft(2, "0"),
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
  );
}