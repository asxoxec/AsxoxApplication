

import 'package:asxox/Screen/MyOrders.dart';
import 'package:asxox/Screen/UserLogin.dart';
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
    return Scaffold(
      appBar: CustomAppBar(
        'Settings',
      ),
      body: Center(
        child: InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));
            },
            child: Text('Settings')
        ),
      ),
    );
  }
}
