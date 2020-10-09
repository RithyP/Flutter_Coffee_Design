import 'package:cafe_app_freebies/provider/page_index.dart';
import 'package:cafe_app_freebies/screens/user_screen.dart';
import 'package:flutter/material.dart';

import 'cart_screen.dart';

import 'components/bottom_appbar.dart';
import 'homescreen.dart';
import 'map_screen.dart';

import 'package:provider/provider.dart';

class TabsScreen extends StatefulWidget {
  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  //List<Map<String, Object>> _pages;

  PageController _pageController;

  @override
  void initState() {
    _pageController = PageController(
      initialPage: 0,
      keepPage: true,
      viewportFraction: 0.999,
    );
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    print("Page dispose.");
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print("Tab rebuild");
    return Scaffold(
      backgroundColor: Color(0xFFFAF4EE),
      body: PageView(
        physics: NeverScrollableScrollPhysics(),
        controller: _pageController,
        children: [
          //_pages[_selectedPageIndex]['page'],
          HomeScreen(),
          LocationScreen(),
          CartScreen(),
          UserScreen(),
        ],
        onPageChanged: (index) {
          Provider.of<BottomNaviBarProvider>(context, listen: false)
              .currentIndex = index;
          // Provider.of<BottomNaviBarProvider>(context, listen: false)
          //     .toNotifyListeners();
        },
      ),
      bottomNavigationBar: BottomNavBarr(selectPage: _selectPage),
    );
  }

  void _selectPage(int value) {
    Provider.of<BottomNaviBarProvider>(context, listen: false).currentIndex =
        value;
    // _pageController.animateToPage(value,
    //     duration: Duration(milliseconds: 500),
    //     curve: Curves.ease); //(_selectedPageIndex);
    _pageController.jumpToPage(value);
  }
}
