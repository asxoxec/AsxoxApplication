import 'package:asxox/Screen/Cart.dart';
import 'package:asxox/Screen/HomePage.dart';
import 'package:asxox/Screen/Profile.dart';
import 'package:asxox/Screen/UserLogin.dart';
import 'package:asxox/theme/colors.dart';
import 'package:asxox/utils/UserHelp.dart';
import 'package:asxox/widgets/CustomAppBar.dart';
import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  var model = User();
  final _formKey = GlobalKey<FormState>();
  var nameMargin = {"top": 30.0, "left": 30.0, "right": 30.0, "bottom": 10.0};
  var phoneMargin = {"top": 10.0, "left": 30.0, "right": 30.0, "bottom": 10.0};
  var passwordMargin = {
    "top": 10.0,
    "left": 30.0,
    "right": 30.0,
    "bottom": 10.0
  };
  var _nameController = TextEditingController();
  var _phoneController = TextEditingController();
  var _passwordController = TextEditingController();
  var _confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar("User Register"),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                UserHelper().getHeaderText("Register My Account"),
                //Header
                Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      getInputField(
                          "Enter Your Name", "Name is required", nameMargin,
                          controller: _nameController),
                      getInputField(
                          "Enter Your Phone", "Phone is required", phoneMargin,
                          controller: _phoneController,
                          keyboardType: TextInputType.phone),
                      getInputField("Enter Password", "Password is required",
                          passwordMargin,
                          controller: _passwordController, obscureText: true),
                      getInputField("Enter Confirmation Password",
                          "Confirmation Password is required", passwordMargin,controller: _confirmPasswordController,
                          obscureText: true),
                    ],
                  ),
                ),
                getBlockBtn(context, "Register", Profile(), _formKey,
                    model: model),
                //Register Btn
                UserHelper().getSmallText(
                    context, "Login here", "Already member yet?",Cart())
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container getInputField(hintText, errText, marginObj,
      {obscureText: false, keyboardType, controller}) {
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

  Row getBlockBtn(context, btnText, navigateTo, _formKey, {model}) {
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
                    print("Validation Success");
                    print(_nameController.text);
                    print(_phoneController.text);
                    print(_confirmPasswordController.text);
                    print(_passwordController.text);
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
