import 'package:flutter/material.dart';

import 'home_screen.dart';

// import 'package:flutter_dotenv/flutter_dotenv.dart';

void main() => runApp(NearMeApp());

class NearMeApp extends StatelessWidget {
  const NearMeApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Near Me',
      home: HomeScreen(),
      theme:
          ThemeData(scaffoldBackgroundColor: Color.fromRGBO(38, 23, 23, 1.0)),
    );
  }
}
