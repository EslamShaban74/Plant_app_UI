import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:plant_app/components/constants.dart';
import 'package:plant_app/modules/details/details_screen.dart';
import 'package:plant_app/modules/favorites_screen/favorites_screen.dart';
import 'package:plant_app/modules/home/components/app_bar/app_bar.dart';
import 'package:plant_app/modules/home/components/body/body.dart';
import 'package:plant_app/modules/settings_screen/settings_screen.dart';

import 'components/my_bottom_navigation_bar/my_bottom_navigation_bar.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  GlobalKey _bottomNavigationKey = GlobalKey();
  int page = 0;
  List<Widget> screens = [
    Body(),
    FavoritesScreen(),
    SettingsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Column(children: [
        Expanded(
          child: screens[page],
        ),
        Container(
          color: Colors.lightGreenAccent,
          height: 15.0,
        )
      ]),
      bottomNavigationBar: CurvedNavigationBar(
        key: _bottomNavigationKey,
        index: 0,
        height: 50.0,
        items: <Widget>[
          Icon(
            Icons.home,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            Icons.favorite_border,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            Icons.more_vert,
            size: 30,
            color: Colors.white,
          ),
        ],
        color: primaryColor,
        buttonBackgroundColor: primaryColor,
        backgroundColor: Colors.lightGreenAccent,
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 600),
        onTap: (index) {
          setState(() {
            page = index;
          });
        },
      ),
    );
  }
}
