
import 'package:asxox/theme/colors.dart';
import 'package:asxox/widgets/CustomAppBar.dart';
import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> sampleList = ["category","category""category","category""category","category"];
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 80.0,
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.fromLTRB(20, 10, 0, 0),
                  decoration: BoxDecoration(
                      color: CustomColors.blueGrey
                  ),
                  child: Row(
                    children: [
                      Image(image: AssetImage('assets/images/asxox.png'),width: 100,height: 30,)
                    ],
                  ),
                ),
                Container(
                  height: 50.0,
                  width: screenSize.width, margin: EdgeInsets.fromLTRB(20.0, 50.0, 20.0, 0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(22.0),
                    color: CustomColors.white,
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0x3392a0b2),
                        offset: Offset(0, 8),
                        blurRadius: 15,
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: SvgPicture.asset('assets/icons/search_icon.svg'),
                    ),
                    Text('What are you looking for?',style: TextStyle(color: Colors.grey),)
                  ],),
                ),
              ],
            ),
          ],
        )
      ),
    );
  }
}
