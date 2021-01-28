
import 'package:asxox/network/ApiServices.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  _changePage() async{
    await ApiServices.fetchCategories();
    Navigator.pushReplacementNamed(context, "/master");
  }

  @override
  void initState() {
    super.initState();
    _changePage();
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: screenSize.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment(0.0, -1.0),
            end: Alignment(0.0, 1.0),
            colors: [const Color(0xff667eea), const Color(0xff64b6ff)],
            stops: [0.0, 1.0],
          ),
          border: Border.all(width: 1.0, color: const Color(0xff707070)),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 300,
                height: 300,
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        width: 250,
                        height: 250,
                        decoration: BoxDecoration(
                          borderRadius:
                          BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                          gradient: LinearGradient(
                            begin: Alignment(0.0, -1.0),
                            end: Alignment(0.0, 1.0),
                            colors: [
                              const Color(0x66667eea),
                              const Color(0x6664b6ff)
                            ],
                            stops: [0.0, 1.0],
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        width: 150,
                        height: 150,
                        decoration: BoxDecoration(
                          borderRadius:
                          BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                          gradient: LinearGradient(
                            begin: Alignment(0.0, -1.0),
                            end: Alignment(0.0, 1.0),
                            colors: [
                              const Color(0x66667eea),
                              const Color(0x6664b6ff)
                            ],
                            stops: [0.0, 1.0],
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/images/loading_image.png")
                            )
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 100,),
              Container(
                child: SpinKitCircle(color: Colors.white.withOpacity(0.5),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
