

import 'package:asxox/MasterPage.dart';
import 'package:asxox/widgets/CustomAppBar.dart';
import 'package:flutter/material.dart';

class Settings extends StatefulWidget {

  const Settings({Key key}) : super(key: key);

  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
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
        appBar: CustomAppBar(
          'Settings', false),
        body: Center(
          child: Text('Settings'),
        ),
      ),
    );
  }
}
