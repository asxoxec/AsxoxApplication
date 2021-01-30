
import 'package:asxox/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LogIn extends StatefulWidget {
  @override
  _LogInState createState() => _LogInState();
}

class _LogInState extends State<LogIn> with TickerProviderStateMixin {
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  AnimationController _animationController;
  bool isShow = true;
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
        vsync: this, lowerBound: 0.5, duration: Duration(seconds: 1));
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      appBar: AppBar(
        backgroundColor: CustomColors.pearlWhite,
        elevation: 0,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(Icons.arrow_back_outlined,color: CustomColors.blueGrey,),
        ),
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 2,
              child: Container(
                alignment: Alignment.topCenter,
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 30,
                    color: const Color(0xff323232),
                    fontWeight: FontWeight.w400,
                    letterSpacing: -0.7235293006896972,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 6,
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    Expanded(
                      flex: 3,
                      child: Container(
                        alignment: Alignment.bottomCenter,
                        padding: EdgeInsets.symmetric(horizontal: 20.0),
                        child: TextFormField(
                          keyboardType: TextInputType.number,
                          validator: (value) {
                            if(value.isEmpty){
                              return 'Please Enter Phone Number';
                            }else if(value.length < 7){
                              return 'Please Enter Correct Phone Number';
                            }
                            return null;
                          },
                          controller: _phoneController,
                          cursorColor: Colors.black45,
                          decoration: InputDecoration(
                            labelText: 'Phone Number',
                            labelStyle: TextStyle(color: Colors.grey, fontSize: 16.0),
                          ),
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.black,
                          ),
                          textInputAction: TextInputAction.next,
                          onFieldSubmitted: (_) => FocusScope.of(context).nextFocus(),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.symmetric(horizontal: 20.0),
                        child: TextFormField(
                          validator: (value) {
                            if(value.isEmpty){
                              return 'Please Enter Password';
                            }else if(value.length < 7){
                              return 'Password must have minimum 8 characters';
                            }
                            return null;
                          },
                          controller: _passwordController,
                          cursorColor: Colors.black45,
                          decoration: InputDecoration(
                            labelText: 'Password',
                            labelStyle: TextStyle(color: Colors.grey, fontSize: 16.0),
                            suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  isShow = !isShow;
                                });
                              },
                              icon: Icon(Icons.remove_red_eye),
                            ),
                          ),
                          obscureText: isShow ? true : false,
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.black,
                          ),
                          textInputAction: TextInputAction.done,
                          onFieldSubmitted: (_) => FocusScope.of(context).unfocus(),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Center(
                child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 20.0),
                    width: screenSize.width,
                    height: 49,
                    decoration: _decorateBox(),
                    child: MaterialButton(
                      onPressed: () async{
                        print("click click");
                        var phone = _phoneController.text;
                        var password = _passwordController.text;
                        print("phone: $phone password: $password");
                        // if(_formKey.currentState.validate()){
                        //   bool con = await Api.login(phone: phone, password: password);
                        //   //await Navigator.pushReplacementNamed(context, "/home");
                        //   if(con) {
                        //     print("Aung Tal");
                        //     Navigator.pop(context);
                        //     //Global.orderAndRefreshCart(context);
                        //     //Navigator.push(context, MaterialPageRoute(builder: (context)=> Chat()));
                        //   }
                        //   else print("Kya Tal");
                        // }
                      },
                      child: Text('Sign in',
                        style: TextStyle(
                            fontSize: 16,
                            color: const Color(0xffffffff),
                            letterSpacing: -0.3858822937011719),
                      ),
                    )
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                alignment: Alignment.topCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account ?",
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
                        //Navigator.pushNamed(context, "/signup");
                      },
                      child: Text(
                        "Sign up",
                        style: TextStyle(
                          fontSize: 14,
                          color: const Color(0xff3c3c3c),
                          letterSpacing: -0.3376470069885254,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
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

  BoxDecoration _decorateBoxWithRipple() {
    return BoxDecoration(
      shape: BoxShape.circle,
      color: Colors.blue.withOpacity(_animationController.value),
    );
  }
}