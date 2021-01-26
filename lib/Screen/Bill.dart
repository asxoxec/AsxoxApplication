
import 'package:asxox/Screen/Profile.dart';
import 'package:asxox/theme/colors.dart';
import 'package:asxox/utils/UserHelp.dart';
import 'package:flutter/material.dart';

class Bill extends StatefulWidget {
  @override
  _BillState createState() => _BillState();
}

class _BillState extends State<Bill> {
  final _formKey = GlobalKey<FormState>();
  var _addressController=TextEditingController();
  var _cityController=TextEditingController();
  var _nameController=TextEditingController();
  var _phoneController=TextEditingController();

  var nameMargin = {"top": 30.0, "left": 30.0, "right": 30.0, "bottom": 10.0};
  var phoneMargin = {"top": 10.0, "left": 30.0, "right": 30.0, "bottom": 10.0};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Billing"),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              UserHelper().getHeaderText("Billing Address"),
              //UserHelper().getTextBlock("Name", "Will Smith"),
             // UserHelper().getTextBlock("Phone", "09 300300300"),
              //getMulLineTxt("Please Enter Your Address",minLine: 5,maxLine: 7,controller:_addressController ),
              //getMulLineTxt("Please Enter Your City",controller: _cityController),
              UserHelper().getInputField("Name", "Name is required",nameMargin,controller: _nameController),
              UserHelper().getInputField("Phone", "Phone is required",phoneMargin,keyboardType: TextInputType.phone,controller: _phoneController),
              UserHelper().getInputField("City", "City is required",phoneMargin,controller: _cityController),
              getMulLineTxt("Please Enter Your Address",minLine: 5,maxLine: 7,controller:_addressController ),
              getBlockBtn(context, "Order", Profile())
            ],
          ),
        ),
      ),
    );
  }



  Container getMulLineTxt(hinText,{minLine,maxLine,controller}) {
    return Container(
        margin: EdgeInsets.all(30),
        padding: EdgeInsets.only(top: 7, left: 10),
        decoration: BoxDecoration(
            border: Border.all(),
            borderRadius: BorderRadius.circular(5)
        ),
        child: TextFormField(
          minLines: minLine,
          maxLines: maxLine,
          controller: controller,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.only(left: 15),
            border: InputBorder.none,
            hintText: hinText,
          ),
        )
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
              margin: EdgeInsets.only(bottom: 10, top: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: CustomColors.deepOrange),
              child: FlatButton(
                height: 50,
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => navigateTo));
                },
                child: Text(
                  btnText,
                  style: TextStyle(fontSize: 20,color: Colors.white),
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
