
import 'package:asxox/Screen/ProductOfCategory.dart';
import 'package:asxox/theme/colors.dart';
import 'package:asxox/widgets/CustomProductTag.dart';
import 'package:asxox/widgets/ProductWidget.dart';
import 'package:asxox/widgets/TitleRow.dart';
import 'package:asxox/widgets/carousel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatefulWidget {

  const HomePage({Key key}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  final List<String> imgList = [
    'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
    'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
    'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
    'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
  ];

  final List<String> catList = [
    'assets/images/discount.png','assets/images/bag.png','assets/images/cosmetics.png','assets/images/bag.png',
    'assets/images/electric.png','assets/images/shoe.png','assets/images/sports.png','assets/images/toys.png',
  ];

  _initialLoadData() async {
    //await ApiServices.fetchCategories();
  }

  @override
  void initState() {
    super.initState();
    _initialLoadData();
  }

  Future<bool> _onWillPop() async {
    return (await showDialog(
        context: context,
        builder: (context) => new AlertDialog(
          title: Text('Are you sure?'),
          content: Text('Do you want to exit an App'),
          actions: [
            FlatButton(
              onPressed: () => Navigator.of(context).pop(false),
              child: Text('No'),
            ),
            FlatButton(
              onPressed: () => Navigator.of(context).pop(true),
              child: Text('Yes'),
            )
          ],
        ))) ??
        false;
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.blueGrey[800])
    );
    var screenSize = MediaQuery.of(context).size;
    return WillPopScope(
      onWillPop: _onWillPop,
      child: Material(
        child: CustomScrollView(
          slivers: [
            SliverPersistentHeader(
              delegate: MySliverAppBar(expandedHeight: 55),
              pinned: true,
            ),
            SliverToBoxAdapter(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CarouselSlides(),
                  TitleRow(title: 'Category',tag: 'allCategory',),
                  Container(
                    width: screenSize.width,
                    height: 50.0,
                    margin: EdgeInsets.symmetric(horizontal: 10.0),
                    padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 5.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(9.0),
                      color: const Color(0xffffffff),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0x29000000),
                          offset: Offset(0, 3),
                          blurRadius: 6,
                        ),
                      ],
                    ),
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                        itemCount: catList.length,
                        itemBuilder: (context, index){
                          return InkWell(
                            onTap: (){
                              print('tapped category');
                              Navigator.push(context, MaterialPageRoute(builder: (context) => ProductOfCategory()));
                            },
                            child: Container(
                              width: 40,
                              height: 40,
                              margin: EdgeInsets.symmetric(horizontal: 5.0),
                              decoration: BoxDecoration(
                                color: CustomColors.pearlWhite,
                                boxShadow: [
                                  BoxShadow(
                                    color: const Color(0x29000000),
                                    offset: Offset(0, 3),
                                    blurRadius: 6,
                                  ),
                                ],
                                borderRadius: BorderRadius.circular(25.0),
                                image: DecorationImage(
                                  image: AssetImage(catList[index]),
                                  fit: BoxFit.cover
                                ),

                              ),
                            ),
                          );
                        })
                  ),
                  CustomProductTag(
                    image: 'toDelete.png',title: 'Discount Products',tag: 'discount',
                  ),
                  CustomProductTag(
                    image: 'toDelete2.png', title: 'Featured Products', tag: 'feature',
                  ),
                  CustomProductTag(
                    image: 'toDelete3.png', title: 'Home Decoration', tag: 'home_decoration',
                  ),
                ],
              ),
            ),
            // SliverList(
            //     delegate: SliverChildBuilderDelegate(
            //             (_, index) => ListTile(
            //           title: Padding(
            //             padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
            //             child: Text("Index: $index"),
            //           ),
            //         )
            //     )),
          ],
        ),
      ),
    );
  }

}

class MySliverAppBar extends SliverPersistentHeaderDelegate{

  final double expandedHeight;

  MySliverAppBar({@required this.expandedHeight});

  outShrink(shrink){
    print("Shrink : $shrink");
  }

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    outShrink(shrinkOffset);
    return Stack(
      fit: StackFit.expand,
      overflow: Overflow.visible,
      children: [
        Container(
          alignment: Alignment.topLeft,
          padding: EdgeInsets.fromLTRB(20, 10, 0, 0),
          decoration: BoxDecoration(
              color: CustomColors.blueGrey,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10.0),
                  bottomRight: Radius.circular(10.0)
              )
          ),
          child: Row(
            children: [
              Image(image: AssetImage('assets/images/asxox.png'),width: 100,height: 30,)
            ],
          ),
        ),
        // Container(
        //   alignment: Alignment.topLeft,
        //   padding: EdgeInsets.fromLTRB(20, 10, 0, 0),
        //   decoration: BoxDecoration(
        //       color: CustomColors.blueGrey
        //   ),
        //   child: Row(
        //     children: [
        //       Image(image: AssetImage('assets/images/asxox.png'),width: 100,height: 30,)
        //     ],
        //   ),
        // ),
        // Center(
        //   child: Opacity(
        //     opacity: shrinkOffset / expandedHeight,
        //     child: Text('My Sliver Appbar',
        //       style: TextStyle(
        //         color: Colors.white,
        //         fontWeight: FontWeight.w700,
        //         fontSize: 23
        //       ),
        //     ),
        //   ),
        // ),
        Positioned(
          top: expandedHeight / 0.9 - shrinkOffset,
          child: Center(
            child: Container(
              height: 40.0,
              width: MediaQuery.of(context).size.width * 0.95,
              margin: EdgeInsets.symmetric(horizontal: 10.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: CustomColors.pearlWhite,
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x3392a0b2),
                    offset: Offset(0, 8),
                    blurRadius: 15,
                  ),
                ],
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: SvgPicture.asset('assets/icons/search_icon.svg'),
                  ),
                  Text('What are you looking for?',style: TextStyle(color: Colors.grey),)
                ],),
            ),
          ),)
      ],
    );
  }

  @override
  // TODO: implement maxExtent
  double get maxExtent => expandedHeight;

  @override
  // TODO: implement minExtent
  double get minExtent => 50;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) => true;
}
