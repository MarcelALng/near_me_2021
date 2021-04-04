import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(),
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
              style: GoogleFonts.quicksand(
                  color: Colors.white38,
                  fontSize: 45,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
