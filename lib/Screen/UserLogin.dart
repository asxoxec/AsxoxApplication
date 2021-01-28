import 'dart:io';

import 'package:asxox/Screen/AllCategory.dart';
import 'package:asxox/Screen/MyOrders.dart';
import 'package:asxox/Screen/Register.dart';
import 'package:asxox/models/Product.dart';
import 'package:asxox/theme/colors.dart';
import 'package:asxox/utils/UserHelp.dart';
import 'package:asxox/widgets/CustomAppBar.dart';
import 'package:flutter/material.dart';


class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();

}

class _LoginState extends State<Login> {
  @override
  void initState() {
    super.initState();
  }
  var model = User();
  var _phoneController = TextEditingController();
  var _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  var phoneMargin = {"top": 30.0, "left": 30.0, "right": 30.0, "bottom": 10.0};
  var passwordMargin = {
    "top": 10.0,
    "left": 30.0,
    "right": 30.0,
    "bottom": 10.0
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar("User Login"),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              child: Column(
                children: [
                  UserHelper().getHeaderText("Login To My Account"),
                  //Header Text
                  Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        UserHelper().getInputField("Enter Your Phone", "Phone is required",
                            phoneMargin,
                            keyboardType: TextInputType.phone,
                            field: "phone",
                            controller: _phoneController),
                        UserHelper().getInputField("Enter Password", "Password is required",
                            passwordMargin,
                            obscureText: true,
                            field: "password",
                            controller: _passwordController),
                        getBlockBtn(context, "Login", MyOrders(), _formKey),
                        //Login Btn
                        UserHelper().getSmallText(context, "Register here",
                            "New Customer?",Register()),
                        InkWell(
                          onTap: (){
                            Product.getAllProducts();
                          },
                          child: Text("Click Me"),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }


  Row getBlockBtn(context, btnText, navigateTo, _formKey) {
    //MediaQueryData mediaQuery=MediaQuery.of(context);
    return Row(
      //mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 30),
            child: Container(
              height: 40,
              margin: EdgeInsets.only(bottom: 20, top: 40),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: CustomColors.deepOrange),
              child: FlatButton(
                onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => navigateTo));
                },
                child: Text(
                  btnText,
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
                // color: Colors.amber,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

