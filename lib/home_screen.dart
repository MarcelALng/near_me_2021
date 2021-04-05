import 'package:flutter/material.dart';
import 'package:near_me_2021/contents/config_content.dart';

import 'contents/home_content.dart';
import 'contents/map_content.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        items: <Widget>[
          Icon(Icons.map, size: 30.0),
          Icon(Icons.home, size: 30.0),
          Icon(Icons.settings, size: 30.0),
        ],
      ),
      body: PageView(children: <Widget>[
        HomeContent(),
        MapContent(),
        ConfigContent(),
      ]),
    );
  }
}
