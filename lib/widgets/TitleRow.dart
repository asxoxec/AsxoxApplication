import 'package:asxox/theme/colors.dart';
import 'package:flutter/material.dart';

class TitleRow extends StatelessWidget {

  final String title, tag;

  TitleRow({this.title, this.tag, Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 10.0, left: 20.0, bottom: 5.0, right: 10.0
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        Text(
        title, style: TextStyle(
          fontFamily: 'Myanmar',
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: CustomColors.blueGrey,
              ),
          ),
          // FlatButton(
          //     onPressed: (){
          //       print("clicked $tag");
          //     },
          //     child: Text('See all'), )
          InkWell(
            onTap: (){
              print('Tag is now $tag');
            },
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 5.0),
              decoration: BoxDecoration(
                color: CustomColors.deepOrange,
                borderRadius: BorderRadius.circular(20.0)
              ),
              child: Row(
                children: [
                  SizedBox(width: 5.0,),
                  Text('အားလုံးကြည့်ရန်',style: TextStyle(
                    fontFamily: 'Myanmar',
                    fontSize: 13,
                    color: CustomColors.pearlWhite,
                  ),),
                  SizedBox(width: 5.0,),
                  Container(
                    padding: EdgeInsets.all(3.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20.0)
                      ),
                      child: Icon(Icons.arrow_forward_ios_outlined,color: CustomColors.deepOrange,size: 10,))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
