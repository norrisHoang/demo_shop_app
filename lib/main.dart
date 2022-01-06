import 'package:badges/badges.dart';
import 'package:demo_shop_app/screens/screen_search/page_search.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'model/banner_model.dart';
import 'screens/screen_cart/page_cart.dart';
import 'screens/screen_home/page_home.dart';
import 'screens/screen_like/page_like.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ShopApp(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class ShopApp extends StatefulWidget {
  @override
  ShopAppState createState() => ShopAppState();
}

class ShopAppState extends State<ShopApp> {
  int _selected = 0;
  late PageController _pageController;
  late ScrollController _scrollController = ScrollController();


  late List<String> _pathIcon = [
    'images/home_icon.svg',
    'images/like_icon_grey.svg',
    'images/card_icon.svg',
    'images/search_icon.svg'
  ];
  late List<String> _pathIconActive = [
    'images/home_icon_active.svg',
    'images/like_icon_grey.svg',
    'images/card_icon_active.svg',
    'images/search_icon_active.svg'
  ];

  List<Widget> _listScreens = [
    HomePage(),
    LikePage(),
    CartPage(),
    SearchPage()
  ];

  @override
  void initState() {
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    _scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: IndexedStack(
        index: _selected,
        children: [
          _listScreens[0],
          _listScreens[1],
          _listScreens[2],
          _listScreens[3],
        ],
      )),
      bottomNavigationBar: _customBottomNavigationbar(context),
    );
  }

  Widget _customBottomNavigationbar(Context) {
    return Container(
      decoration: BoxDecoration(
          border: Border(
              top: BorderSide(
                  color: Color.fromRGBO(233, 233, 233, 1.0), width: 3))),
      margin: EdgeInsets.zero,
      padding: EdgeInsets.fromLTRB(0, 10, 0, 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                _selected = 0;
              });
            },
            child: _selected == 0
                ? SvgPicture.asset(_pathIconActive[0])
                : SvgPicture.asset(_pathIcon[0]),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                _selected = 1;
              });
            },
            child: Badge(
                animationType: BadgeAnimationType.scale,
                stackFit: StackFit.loose,
                badgeColor: _selected == 1
                    ? Color.fromRGBO(47, 105, 248, 1.0)
                    : Colors.grey,
                badgeContent: Text(
                  '4',
                  style: TextStyle(fontSize: 11),
                ),
                child: DottedBorder(
                  color: _selected == 1
                      ? Colors.blueAccent
                      : Color.fromRGBO(216, 216, 216, 1),
                  strokeWidth: 1,
                  dashPattern: [7, 4],
                  child: _selected == 1
                      ? SvgPicture.asset(
                          _pathIconActive[1],
                          color: Colors.blueAccent,
                        )
                      : SvgPicture.asset(_pathIcon[1]),
                )),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                _selected = 2;
              });
            },
            child: Badge(
              animationType: BadgeAnimationType.scale,
              stackFit: StackFit.loose,
              badgeColor: _selected == 2
                  ? Color.fromRGBO(47, 105, 248, 1.0)
                  : Colors.grey,
              badgeContent: Text(
                '4',
                style: TextStyle(fontSize: 11),
              ),
              child: _selected == 2
                  ? SvgPicture.asset(
                      _pathIconActive[2],
                    )
                  : SvgPicture.asset(_pathIcon[2]),
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                _selected = 3;
              });
            },
            child: _selected == 3
                ? SvgPicture.asset(_pathIconActive[3])
                : SvgPicture.asset(_pathIcon[3]),
          ),
        ],
      ),
    );
  }
}
