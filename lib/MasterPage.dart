
import 'package:asxox/Screen/CartPage.dart';
import 'package:asxox/Screen/CategoryPage.dart';
import 'package:asxox/Screen/HomePage.dart';
import 'package:asxox/Screen/Settings.dart';
import 'package:asxox/theme/CustomTheme.dart';
import 'package:asxox/theme/colors.dart';
import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

class MasterPage extends StatefulWidget {
  @override
  _MasterPageState createState() => _MasterPageState();
}

class _MasterPageState extends State<MasterPage>
{
  PageController _pageController = PageController();
  List<Widget> _screens = [HomePage(), CategoryPage(), CartPage(), Settings()];

  int _selectedIndex = 0;
  void _onPageChanged(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  _onItemTapped(int selectedIndex){

    _pageController.jumpToPage(selectedIndex);
  }
  var selectedValue = 0;
  var isLargeScreen = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: PageView(
          controller: _pageController,
          children: _screens,
          onPageChanged: _onPageChanged,
          physics: NeverScrollableScrollPhysics(),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          selectedItemColor: CustomColors.deepOrange,
          selectedIconTheme: CustomTheme.deepTheme,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home,
                  color: Colors.grey,),
                label: 'Home',
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.category,color: Colors.grey,),
                label: 'Category'
            ),
            BottomNavigationBarItem(
                icon: Badge(
                  position: BadgePosition.topEnd(top: 5, end: 5),
                  badgeColor: CustomColors.deepOrange,
                  badgeContent: Text(
                    '9',style: TextStyle(color: CustomColors.white),
                  ),
                  child: IconButton(
                    icon: Icon(Icons.shopping_cart),
                  ),
                ),
                label: 'Cart'
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.people,color: Colors.grey,),
                label: 'Profile'
            ),
          ],
        ),
      ),
    );
  }
}
