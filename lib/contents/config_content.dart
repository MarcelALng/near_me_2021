import 'package:flutter/material.dart';

import 'package:near_me_2021/controllers/map_controller.dart';

class ConfigContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MapController().getPlaces();
    return Container(
      alignment: Alignment.center,
      child: Text(
        "Config ",
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
