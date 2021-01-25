import 'package:asxox/MasterPage.dart';
import 'package:asxox/theme/colors.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
      MaterialApp(
    theme: ThemeData(
      primaryColor: CustomColors.blueGrey,
      accentColor: CustomColors.cyan,
      fontFamily: 'Cambria'
    ),
    debugShowCheckedModeBanner: false,
    routes: {
      "/" : (context) => MasterPage()
    },
  ));
}
