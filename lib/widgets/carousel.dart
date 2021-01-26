
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
    'https://cdn.shopify.com/s/files/1/0513/8205/9159/products/iPhone-12_Blue_a577a8a9-c0f7-473a-8999-a3f3347193e3.jpg',
    'https://cdn.shopify.com/s/files/1/0513/8205/9159/products/iPhone-12_Blue_a577a8a9-c0f7-473a-8999-a3f3347193e3.jpg',
    'https://cdn.shopify.com/s/files/1/0513/8205/9159/products/iPhone-12_Blue_a577a8a9-c0f7-473a-8999-a3f3347193e3.jpg'
    'https://images.unsplash.com/photo-1586882829491-b81178aa622e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2850&q=80',
    'https://images.unsplash.com/photo-1586871608370-4adee64d1794?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2862&q=80',
    'https://images.unsplash.com/photo-1586901533048-0e856dff2c0d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80',
    'https://images.unsplash.com/photo-1586902279476-3244d8d18285?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2850&q=80',
    'https://images.unsplash.com/photo-1586943101559-4cdcf86a6f87?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1556&q=80',
    'https://images.unsplash.com/photo-1586951144438-26d4e072b891?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80',
    'https://images.unsplash.com/photo-1586953983027-d7508a64f4bb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: MediaQuery.of(context).size.width,
        child: Carousel(
          boxFit: BoxFit.fill,
          images: [
            NetworkImage('http://192.168.110.248:8080/slide/slide_1.png'),
            NetworkImage('http://192.168.110.248:8080/slide/slide_2.png'),
            NetworkImage('http://192.168.110.248:8080/slide/slide_3.png')
          ],
          autoplay: true,
          animationCurve: Curves.fastOutSlowIn,
          indicatorBgPadding: 1.0,
          dotSize: 4.0,

        )
    );
  }
}
