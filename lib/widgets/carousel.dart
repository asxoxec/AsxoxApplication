
import 'package:asxox/theme/colors.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarouselSlides extends StatefulWidget {

  CarouselSlides({Key key}) : super(key: key);

  @override
  _CarouselSlidesState createState() => _CarouselSlidesState();
}

class _CarouselSlidesState extends State<CarouselSlides> {

  final List<String> asxoxCoverImages = [
    'https://cdn.shopify.com/s/files/1/0298/7763/3117/files/a_767dabca-7061-4182-85fe-0b303947a456_2000x.png?v=1610097489',
    'https://cdn.shopify.com/s/files/1/0298/7763/3117/files/b_8f41d706-b933-43ca-9a00-5d38fe4e32a5_2000x.png?v=1610442048',
    'https://cdn.shopify.com/s/files/1/0298/7763/3117/files/c_93b2f71f-7902-43d4-a9ba-862aef0ec3c5_2000x.png?v=1610097538',
  ];
  final List<String> images = [
    'https://images.unsplash.com/photo-1586882829491-b81178aa622e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2850&q=80',
    'https://images.unsplash.com/photo-1586871608370-4adee64d1794?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2862&q=80',
    'https://images.unsplash.com/photo-1586901533048-0e856dff2c0d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80',
    'https://images.unsplash.com/photo-1586902279476-3244d8d18285?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2850&q=80',
    'https://images.unsplash.com/photo-1586943101559-4cdcf86a6f87?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1556&q=80',
    'https://images.unsplash.com/photo-1586951144438-26d4e072b891?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80',
    'https://images.unsplash.com/photo-1586953983027-d7508a64f4bb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80',
  ];

  final List<String> slideList = [
    "https://www.benevaplantscapes.com/wp-content/uploads/2016/10/plants-in-office.jpg",
    "https://octoclean.com/wp-content/uploads/2019/07/office-plant-cleaning.jpg",
    "https://craftysheep.net/wp-content/uploads/2020/03/18-Best-Large-Indoor-Plants-for-Home-Offices5.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: MediaQuery.of(context).size.width,
        child: Carousel(
          boxFit: BoxFit.fill,
          images: [
            NetworkImage(slideList[0]),
            NetworkImage(slideList[1]),
            NetworkImage(slideList[2]),
          ],
          autoplay: true,
          animationCurve: Curves.fastOutSlowIn,
          indicatorBgPadding: 1.0,
          dotSize: 4.0,

        )
    );
  }
}
