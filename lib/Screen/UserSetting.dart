
import 'package:asxox/Screen/Cart.dart';
import 'package:flutter/material.dart';

class UserSetting extends StatefulWidget {
  @override
  _UserSettingState createState() => _UserSettingState();
}

class _UserSettingState extends State<UserSetting> {
  List<String>  titles=["Orders","Policy and rules","Term of Services","About Us"];
  String term_of_service="ကျနော်တို့ ကုမ္ပဏီ သည် မြန်မာနိုင်ငံ ရှိ ဘယ်နေရာ ၊ ဘယ်‌ဒေ ကမဆို အဆင်ပြေပြေ ဝယ်ယူ နိုင်ဖို့နှင့် မိတ်ဆွေ များ အားလုံး မိမိ အလို ရှိရာ ပစ္စည်း များကို တစ်‌နေရာတည်း မှာ စုစည်းပေး နိုင်ဖို့ကြိုးစားသွားပါမည်..";
  String about_us="ကျနော်တို့ Company သည်  No(165) Tapin Shwe Htee Street, Hlaing Thar Yar Township, Yangon, Myanmar. တွင် ရှိပါသည်။";
  String policy_and_rules="ကျ‌နော်တို့ Company သည် 2018 မှ စတင်ပီး မြန်မာနိုင်ငံ တွင် Online Shop ကို လုပ်ခဲ့ပါသည်။ မြန်မာနိုင်ငံ ရှိ မည့်သည့် ‌‌နေရာ မှ မဆို ဝယ်ယူနိုင်သည့် အပြင် အိမ် အရောက် ပို့ဆောင်နိုင်ဖို့ စွမ်း‌‌ဆောင်ခဲ့ သည့်အတွက် ‌‌အောင်မြင်စွာ ရပ်တည် နိုင်ခဲ့ပါသည်။";
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Setting"),
        ),
        body: Container(
          margin: EdgeInsets.all(20),
          child: ListView(
            children: [
              InkWell(
                onTap: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) =>Cart() ));
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
              getListChild(titles[1], Icons.policy,childTxt: policy_and_rules,),
              getListChild(titles[2], Icons.ac_unit,childTxt: term_of_service,),
              getListChild(titles[3], Icons.info,childTxt:about_us )
            ],
          ),
        ),
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
