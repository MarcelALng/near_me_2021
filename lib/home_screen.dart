import 'package:flutter/material.dart';
import 'package:near_me_2021/contents/config_content.dart';

import 'contents/home_content.dart';
import 'contents/map_content.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class HomeScreen extends StatelessWidget {
  final PageController _pageController = PageController(initialPage: 1);
  @override
  Widget build(BuildContext context) {
    int _page = 1;
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        height: 59.0,
        index: _page,
        backgroundColor: Colors.transparent,
        items: <Widget>[
          Icon(Icons.map, size: 30.0),
          Icon(Icons.home, size: 30.0),
          Icon(Icons.settings, size: 30.0),
        ],
      ),
      body: PageView(controller: _pageController, children: <Widget>[
        MapContent(), // index 0
        HomeContent(), // index 1
        ConfigContent(), // index 2
      ]),
    );
  }
}
