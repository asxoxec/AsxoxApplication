
import 'package:asxox/theme/colors.dart';
import 'package:asxox/widgets/CustomAppBar.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  AnimationController _animationController;
  bool isShow = true;

  final _fieldKey = GlobalKey<FormFieldState>();

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    final node = FocusScope.of(context);
    return SafeArea(
      child: Scaffold(
          backgroundColor: CustomColors.pearlWhite,
          body: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.only(top: 40.0, bottom: 30.0),
                      child: Text(
                        'Sign up',
                        style: TextStyle(
                          fontFamily: 'Google1',
                          fontSize: 30,
                          color: const Color(0xff323232),
                          fontWeight: FontWeight.w400,
                          letterSpacing: -0.7235293006896972,
                        ),
                      ),
                    ),
                    Container(
                        height: 50,
                        alignment: Alignment.center,
                        padding: EdgeInsets.only(left: 20.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          color: CustomColors.accent.withOpacity(0.1),
                        ),
                        child: TextFormField(
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'Please enter name';
                            }
                            return null;
                          },
                          controller: _nameController,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Name',
                            hintStyle: TextStyle(color: Colors.black54),
                          ),
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.black,
                          ),
                          textInputAction: TextInputAction.next,
                          onEditingComplete: () => node.nextFocus(),
                        )),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                        height: 50,
                        alignment: Alignment.center,
                        padding: EdgeInsets.only(left: 20.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          color: CustomColors.accent.withOpacity(0.1),
                        ),
                        child: TextFormField(
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'Please enter email';
                            } else if (!EmailValidator.validate(value)) {
                              return 'Please enter correct type of email';
                            }
                            return null;
                          },
                          controller: _emailController,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Email',
                            hintStyle: TextStyle(color: Colors.black54),
                          ),
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.black,
                          ),
                          textInputAction: TextInputAction.next,
                          onEditingComplete: () => node.nextFocus(),
                        )
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                        height: 50,
                        alignment: Alignment.center,
                        padding: EdgeInsets.only(left: 20.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          color: CustomColors.accent.withOpacity(0.1),
                        ),
                        child: TextFormField(
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'Please enter phone number';
                            }
                            return null;
                          },
                          controller: _phoneController,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Phone Number',
                            hintStyle: TextStyle(color: Colors.black54),
                          ),
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.black,
                          ),
                          textInputAction: TextInputAction.next,
                          onEditingComplete: () => node.nextFocus(),
                        )
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                        height: 50,
                        alignment: Alignment.center,
                        padding: EdgeInsets.only(left: 20.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          color: CustomColors.accent.withOpacity(0.1),
                        ),
                        child: TextFormField(
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'Please enter password';
                            } else if (value.length < 8) {
                              return 'maximum number of password length is 8';
                            }
                            return null;
                          },
                          controller: _passwordController,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Password',
                            hintStyle: TextStyle(color: Colors.black54),
                          ),
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.black,
                          ),
                          textInputAction: TextInputAction.done,
                          onFieldSubmitted: (_) => node.unfocus(),

                        )),
                    SizedBox(
                      height: 20,
                    ),
                    FlatButton(
                        minWidth: double.infinity,
                        height: 45,
                        color: CustomColors.accent,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0)),
                        onPressed: () async {
                          var name = _nameController.text;
                          var email = _emailController.text;
                          var phone = _phoneController.text;
                          var password = _passwordController.text;
                          // if (_formKey.currentState.validate()) {
                          //   print("ready to register");
                          //   bool con = await Api.register(
                          //       name: name,
                          //       email: email,
                          //       phone: phone,
                          //       password: password);
                          //   if (con) {
                          //     print("User Register Successful!");
                          //     Navigator.pop(context);
                          //   } else {
                          //     print("User Register Failed!");
                          //   }
                          // }
                        },
                        child: Text(
                          "Sign up",
                          style: TextStyle(fontSize: 16, color: CustomColors.pearlWhite),
                        )),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Already have an account ?",
                          style: TextStyle(
                            fontSize: 14,
                            color: const Color(0xffa3a3a3),
                            letterSpacing: -0.3376470069885254,
                          ),
                        ),
                        SizedBox(
                          width: 15.0,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, "/login");
                          },
                          child: Text(
                            "Sign In",
                            style: TextStyle(
                              fontSize: 14,
                              color: const Color(0xff3c3c3c),
                              letterSpacing: -0.3376470069885254,
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          )),
    );
  }

  BoxDecoration _decorateBox() {
    return BoxDecoration(
        borderRadius: BorderRadius.circular(6.0),
        gradient: LinearGradient(
          begin: Alignment(-0.95, 0.0),
          end: Alignment(1.0, 0.0),
          colors: [const Color(0xff667eea), const Color(0xff64b6ff)],
          stops: [0.0, 1.0],
        ),
        boxShadow: [
          BoxShadow(
              spreadRadius: -21.0,
              color: Colors.black45,
              offset: Offset(0, 26),
              blurRadius: 10),
          //BoxShadow(color: Colors.white38, offset: Offset(0, 2))
        ]);
  }
}