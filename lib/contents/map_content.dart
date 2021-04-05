import 'package:flutter/material.dart';

class MapContent extends StatelessWidget {
  const MapContent({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Text(
        "Map",
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
