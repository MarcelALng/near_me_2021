class PlaceModel {
  final double longitude;
  final double latitude;
  final int price;
  final num rating;
  final String name;

  PlaceModel(
      {this.latitude, this.longitude, this.price, this.rating, this.name});

  PlaceModel.fromJSON(Map<dynamic, dynamic> json)
      : longitude = json["geometry"]["location"]["lat"] ?? 0.0,
        latitude = json["geometry"]["location"]["lng"] ?? 0.0,
        price = json["price_level"] ?? 0,
        rating = json["rating"] ?? 0.0,
        name = json["name"] ?? "Erreur";
}
