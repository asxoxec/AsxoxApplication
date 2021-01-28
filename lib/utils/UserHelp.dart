import 'package:asxox/theme/colors.dart';
import 'package:flutter/material.dart';

class User {
  String name, phone, password;

  User({this.phone, this.password});
}

class UserHelper {
  /* Getting Header Text */
  Padding getHeaderText(headText) {
    return (Padding(
        padding: const EdgeInsets.only(top:10,left: 30,right: 30,bottom: 30),
        child: Container(
          alignment: Alignment.center,
          margin: EdgeInsets.only(top: 40),
          child: new Text(
            headText,
            textAlign: TextAlign.center,
            style: TextStyle(
                color: CustomColors.black,
                fontSize: 26,
                fontWeight: FontWeight.bold,
                fontFamily: 'English'),
          ),
        )));
  }

  /*Getting Small Text */
  Container getSmallText(context, linkText, quesText, navigateTo) {
    return Container(
      margin: EdgeInsets.only(bottom: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(quesText),
          InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => navigateTo));
            },
            child: Text(
              linkText,
              style: TextStyle(
                color: Colors.blue,
              ),
            ),
          )
        ],
      ),
    );
  }

  /* Text Container Block */
  Container  getTextBlock(title,des){
    return Container(
      color: Colors.grey[100],
      margin: EdgeInsets.all(30),
      padding: EdgeInsets.all(30),
      alignment: Alignment.topLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title,style: TextStyle(
              fontSize: 23,
              fontWeight: FontWeight.bold
          ),),
          SizedBox(height: 20),
          Text(des,style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.bold
          ))
        ],
      ),
    );
  }

  /* Get InputField */
  Container getInputField(hintText, errText, marginObj,
      {obscureText: false, keyboardType, controller, field}) {
    return Container(
      height: 45,
      margin: EdgeInsets.only(
          top: marginObj['top'],
          left: marginObj['left'],
          right: marginObj['right'],
          bottom: marginObj['bottom']),
      decoration: BoxDecoration(
        border: Border.all(),
        //borderRadius: BorderRadius.circular(5),
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
}
