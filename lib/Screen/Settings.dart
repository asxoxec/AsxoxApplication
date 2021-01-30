

import 'package:asxox/MasterPage.dart';
import 'package:asxox/Screen/CartPage.dart';
import 'package:asxox/Screen/LogIn.dart';
import 'package:asxox/Screen/SignUp.dart';
import 'package:asxox/theme/colors.dart';
import 'package:asxox/widgets/CustomAppBar.dart';
import 'package:flutter/material.dart';

class Settings extends StatefulWidget {

  const Settings({Key key}) : super(key: key);

  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {

  //"LogIn", "Register",
  //Icon(Icons.login), Icon(Icons.person_add),
  List<String>  titles=["Orders","Policy and rules","Term of Services","About Us"];
  List<Icon> icons = [Icon(Icons.reorder),Icon(Icons.article_outlined), Icon(Icons.policy), Icon(Icons.info)];
  List<String> sarthar = [
    "",
    "ကျ‌နော်တို့ Company သည် 2018 မှ စတင်ပီး မြန်မာနိုင်ငံ တွင် Online Shop ကို လုပ်ခဲ့ပါသည်။ မြန်မာနိုင်ငံ ရှိ မည့်သည့် ‌‌နေရာ မှ မဆို ဝယ်ယူနိုင်သည့် အပြင် အိမ် အရောက် ပို့ဆောင်နိုင်ဖို့ စွမ်း‌‌ဆောင်ခဲ့ သည့်အတွက် ‌‌အောင်မြင်စွာ ရပ်တည် နိုင်ခဲ့ပါသည်။",
    "ကျနော်တို့ ကုမ္ပဏီ သည် မြန်မာနိုင်ငံ ရှိ ဘယ်နေရာ ၊ ဘယ်‌ဒေ ကမဆို အဆင်ပြေပြေ ဝယ်ယူ နိုင်ဖို့နှင့် မိတ်ဆွေ များ အားလုံး မိမိ အလို ရှိရာ ပစ္စည်း များကို တစ်‌နေရာတည်း မှာ စုစည်းပေး နိုင်ဖို့ကြိုးစားသွားပါမည်..",
    "ကျနော်တို့ Company သည်  No(165) Tapin Shwe Htee Street, Hlaing Thar Yar Township, Yangon, Myanmar. တွင် ရှိပါသည်။",
  ];


  String term_of_service="ကျနော်တို့ ကုမ္ပဏီ သည် မြန်မာနိုင်ငံ ရှိ ဘယ်နေရာ ၊ ဘယ်‌ဒေ ကမဆို အဆင်ပြေပြေ ဝယ်ယူ နိုင်ဖို့နှင့် မိတ်ဆွေ များ အားလုံး မိမိ အလို ရှိရာ ပစ္စည်း များကို တစ်‌နေရာတည်း မှာ စုစည်းပေး နိုင်ဖို့ကြိုးစားသွားပါမည်..";
  String about_us="ကျနော်တို့ Company သည်  No(165) Tapin Shwe Htee Street, Hlaing Thar Yar Township, Yangon, Myanmar. တွင် ရှိပါသည်။";
  String policy_and_rules="ကျ‌နော်တို့ Company သည် 2018 မှ စတင်ပီး မြန်မာနိုင်ငံ တွင် Online Shop ကို လုပ်ခဲ့ပါသည်။ မြန်မာနိုင်ငံ ရှိ မည့်သည့် ‌‌နေရာ မှ မဆို ဝယ်ယူနိုင်သည့် အပြင် အိမ် အရောက် ပို့ဆောင်နိုင်ဖို့ စွမ်း‌‌ဆောင်ခဲ့ သည့်အတွက် ‌‌အောင်မြင်စွာ ရပ်တည် နိုင်ခဲ့ပါသည်။";

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
        body: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            SliverAppBar(
              title: Text("Settings"),
              pinned: true,
              expandedHeight: 220.0,
              flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,
                  background: Image.network(
                    'https://images.pexels.com/photos/443356/pexels-photo-443356.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
                    fit: BoxFit.cover,
                  )
              ),
            ),
            SliverToBoxAdapter(
              child: Column(
                children: [
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) => LogIn()));
                    },
                    child: ListTile(
                      leading: Icon(Icons.login,color: CustomColors.blueGrey,),
                      title: Text('LogIn'),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) => SignUp()));
                    },
                    child: ListTile(
                      leading: Icon(Icons.person_add,color: CustomColors.blueGrey,),
                      title: Text('Register'),
                    ),
                  ),
                ],
              ),
            ),
            SliverList(
              // Use a delegate to build items as they're scrolled on screen.
              delegate: SliverChildBuilderDelegate(
                // The builder function returns a ListTile with a title that
                // displays the index of the current item.
                    (context, index) => ExpansionTile(
                      title:Row(
                        children: [
                          icons[index],
                          SizedBox(width: 20,),
                          Container(
                              padding: EdgeInsets.all(5),
                              child: Text(titles[index])
                          )
                        ],
                      ) ,
                      children: [
                        Container(
                            padding: EdgeInsets.all(10),
                            child: Text(sarthar[index])
                        )
                      ],
                    ),
                // Builds 1000 ListTiles
                childCount: titles.length,
              ),
            ),
          ],
        ),
      )
      );
  }

  Widget _buildExpandableList(){
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
      child: ListView(
        children: [
          InkWell(
            onTap: (){
              // Navigator.push(context,
              //     MaterialPageRoute(builder: (context) =>CartPage() ));
            },
            child: Container(
              padding:EdgeInsets.all(15),
              child: Row(
                children: [
                  Icon(Icons.article_outlined,color: Colors.grey[600]),
                  SizedBox(width: 20,),
                  Text("Orders")
                ],
              ),
            ),
          ),
          getListChild(titles[1], Icons.people,childTxt: policy_and_rules,),
          getListChild(titles[1], Icons.policy,childTxt: policy_and_rules,),
          getListChild(titles[2], Icons.ac_unit,childTxt: term_of_service,),
          getListChild(titles[3], Icons.info,childTxt:about_us )
        ],
      ),
    );
  }

  ExpansionTile getListChild(title,icon,{childTxt=""}){
    return  ExpansionTile(
      title:Row(
        children: [
          Icon(icon,color: Colors.grey[600],),
          SizedBox(width: 20,),
          Container(
              padding: EdgeInsets.all(5),
              child: Text(title)
          )
        ],
      ) ,
      children: [
        Container(
            padding: EdgeInsets.all(10),
            child: Text(childTxt)
        )
      ],
    );
  }
}
