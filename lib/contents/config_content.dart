import 'package:flutter/material.dart';

class ConfigContent extends StatelessWidget {
  const ConfigContent({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Text(
        "Config",
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
