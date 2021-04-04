import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
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
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset('assets/logofork.png'),
              SizedBox(
                height: 5.0,
              ),
              Text(
                'Near Me',
                textAlign: TextAlign.center,
                style: GoogleFonts.quicksand(
                    color: Colors.white38,
                    fontSize: 45,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ));
  }
}
