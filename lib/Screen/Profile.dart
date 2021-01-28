import 'package:asxox/Screen/Bill.dart';
import 'package:asxox/Screen/Register.dart';
import 'package:asxox/Screen/UserLogin.dart';
import 'package:asxox/theme/colors.dart';
import 'package:asxox/utils/UserHelp.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("User Profile"),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
             // getEditBtn(context),
              UserHelper().getHeaderText("User Profile"),
              UserHelper().getTextBlock("Name", "Will Smith"),
              UserHelper().getTextBlock("Phone", "09 300300300"),
              getBlockBtn(context, "Home", Login()),
              getBlockBtn(context, "Logout", Bill()),
              SizedBox(height: 30,)
            ],
          ),
        ),
      ),
    );
  }

  Row getBlockBtn(context, btnText, navigateTo) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 30),
            child: Container(
              height: 40,
              margin: EdgeInsets.only(bottom: 10, top: 10),
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
                  style: TextStyle(fontSize: 18,color: Colors.white),
                ),
                // color: Colors.amber,
              ),
            ),
          ),
        ),
      ],
    );
  }


  Row getEditBtn(context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          margin: EdgeInsets.only(right: 5, top: 5),
          width: 40,
          height: 40,
          //alignment: Alignment.topRight,
          decoration: BoxDecoration(
             // border: Border.all(width: 1,color: Colors.grey),
            //  borderRadius: BorderRadius.circular(5),
              //color: Colors.grey
            //color: Colors.orangeAccent
          ),
          child: IconButton(
              icon: Icon(Icons.edit_outlined, size: 26,),
              //color: Colors.white,
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Register()));
              }),

        ),
      ],
    );
  }
}
