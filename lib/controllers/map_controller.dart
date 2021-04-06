import 'package:http/http.dart' as http;

class MapController {
  Future<dynamic> getPlaces() async {
    final url =
        "https://maps.googleapis.com/maps/api/place/nearbysearch/json?location=-33.8670522,151.1957362&radius=500&types=food&name=harbour&key=AIzaSyAxKT7TkuoQ5xp20RPeShcZI5bfs1nRjFc";
    // need to enable PLACES API here https://console.cloud.google.com/marketplace/product/google/places-backend.googleapis.com?project=nearme-309821
    print(url);

    http.Response _request = await http.get(url);

    print(_request.body);
  }
}
