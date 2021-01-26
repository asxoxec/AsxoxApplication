import 'dart:io';

import 'package:asxox/Screen/AllCategory.dart';
import 'package:asxox/Screen/Cart.dart';
import 'package:asxox/Screen/Register.dart';
import 'package:asxox/Screen/UserSetting.dart';
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
                        getInputField("Enter Your Phone", "Phone is required",
                            phoneMargin,
                            keyboardType: TextInputType.phone,
                            field: "phone",
                            controller: _phoneController),
                        getInputField("Enter Password", "Password is required",
                            passwordMargin,
                            obscureText: true,
                            field: "password",
                            controller: _passwordController),
                        getBlockBtn(context, "Login", AllCategory(), _formKey),
                        //Login Btn
                        UserHelper().getSmallText(context, "Register here",
                            "New Customer?", UserSetting()),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }

  Container getInputField(hintText, errText, marginObj,
      {obscureText: false, keyboardType, controller, field}) {
    var borderColor = Colors.white10;
    return Container(
      height: 50,
      margin: EdgeInsets.only(
          top: marginObj['top'],
          left: marginObj['left'],
          right: marginObj['right'],
          bottom: marginObj['bottom']),
      decoration: BoxDecoration(
        border: Border.all(),
        borderRadius: BorderRadius.circular(5),
        //color: borderColor
      ),
      child: TextFormField(
        controller: controller,
        obscureText: obscureText,
        keyboardType: keyboardType,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.only(left: 15),
          border: InputBorder.none,
          hintText: hintText,
        ),
        validator: (value) {
          if (value.isEmpty) {
            return " ";
          } else {}
          return null;
        },
      ),
    );
  }

  Row getBlockBtn(context, btnText, navigateTo, _formKey) {
    //MediaQueryData mediaQuery=MediaQuery.of(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 30),
            child: Container(
              margin: EdgeInsets.only(bottom: 20, top: 40),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: CustomColors.deepOrange),
              child: FlatButton(
                height: 50,
                onPressed: () {
                  if (_formKey.currentState.validate()) {
                    print("From Helper Class");
                    print("*******************");
                    print(_phoneController.text);
                    print(_passwordController.text);
                    print("Validation Success");
                    print("##############");

                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => navigateTo));
                  } else {
                    print("Validation is not success");
                  }
                },
                child: Text(
                  btnText,
                  style: TextStyle(fontSize: 20, color: Colors.white),
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

// class MyLoginForm extends StatefulWidget {
//   @override
//   _MyLoginFormState createState() => _MyLoginFormState();
// }
//
// class _MyLoginFormState extends State<MyLoginForm> {
//   final _formKey = GlobalKey<FormState>();
//   var phoneMargin = {"top": 30.0, "left": 30.0, "right": 30.0, "bottom": 10.0};
//   var passwordMargin = {
//     "top": 10.0,
//     "left": 30.0,
//     "right": 30.0,
//     "bottom": 10.0
//   };
//
//   @override
//   Widget build(BuildContext context) {
//     return Form(
//       key: _formKey,
//       child: Column(
//         children: [
//           UserHelper().getInputField("Enter Your Phone", phoneMargin,
//               keyboardType: TextInputType.phone),
//           UserHelper().getInputField(
//               "Enter Password", passwordMargin, obscureText: true),
//           UserHelper().getBlockBtn(context, "Login", Register(),_formKey) //Login Btn
//
//         ],
//       ),
//     );
//   }
//
//
// }
