import 'package:http/http.dart' as http;
import 'dart:convert';

import '../models/place_model.dart';

import '../constants/global_constant.dart';

class MapController {
  Future<dynamic> getPlaces() async {
    List<PlaceModel> _places = [];

    Map<String, String> _parameters = {
      'location': '-33.8670522,151.1957362',
      'radius': '500',
      'types': 'food',
      'key': GlobalConstant.apiKey
    };
    // "https://maps.googleapis.com/maps/api/place/nearbysearch/json?location=-33.8670522,151.1957362&radius=500&types=food&name=harbour&key=apiKey";
    final _url =
        Uri.https(GlobalConstant.authority, GlobalConstant.path, _parameters);
    print(_url.toString());
    // need to enable PLACES API( Android key here) here https://console.cloud.google.com/marketplace/product/google/places-backend.googleapis.com?project=nearme-309821
    http.Response _request = await http.get(_url);
    final List<dynamic> _jsonData = json.decode(_request.body)["results"];
    print(_jsonData);
    _jsonData.forEach((place) => _places.add(PlaceModel.fromJSON(place)));
    print(_places[0].price);
    print(_request.body);
  }
}
