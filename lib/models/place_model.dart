class PlaceModel {
  final double longitude;
  final double latitude;
  final int price;
  final double rating;

  PlaceModel({this.latitude, this.longitude, this.price, this.rating});

  PlaceModel.fromJSON(Map<String, dynamic> json)
      : longitude = json["geometry"]["location"]["lat"],
        latitude = json["geometry"]["location"]["lng"],
        price = json["price_level"],
        rating = json["rating"];
}
