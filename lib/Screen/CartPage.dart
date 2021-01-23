
import 'package:asxox/MasterPage.dart';
import 'package:asxox/widgets/CustomAppBar.dart';
import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {

  const CartPage({Key key}) : super(key: key);

  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        print('Clicked Back');
        return Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => MasterPage()),
        );
      },
      child: Scaffold(
        appBar: CustomAppBar('CartPage'),
        body: Center(
          child: Text('Cart'),
        ),
      ),
    );
  }
}
