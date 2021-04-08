import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:near_me_2021/models/place_model.dart';

class MapController {
  Future<dynamic> getPlaces() async {
    List<PlaceModel> _places = [];
    final url =
        "https://maps.googleapis.com/maps/api/place/nearbysearch/json?location=-33.8670522,151.1957362&radius=500&types=food&name=harbour&key=AIzaSyAxKT7TkuoQ5xp20RPeShcZI5bfs1nRjFc";
    // need to enable PLACES API( Android key here) here https://console.cloud.google.com/marketplace/product/google/places-backend.googleapis.com?project=nearme-309821
    Uri.https(authority, unencodedPath);
    http.Response _request = await http.get(url);
    final List<dynamic> _jsonData = json.decode(_request.body)["results"];
    print(_jsonData);
    _jsonData.forEach((place) => _places.add(PlaceModel.fromJSON(place)));
    print(_places[0].price);
    // print(_request.body);
  }
}
