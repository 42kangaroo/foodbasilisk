import 'package:flutter/cupertino.dart';

enum price {
  LOW,
  MIDDLE,
  NO_RESTRICTION,
}

class Restaurant {
  Image image = Image.network("");
  String label = "";
  List<String> categories = [];
  String address = "";
  int distance = -1;
  price p = price.NO_RESTRICTION;
  String hours = "";

  Restaurant(this.image, this.label, this.categories, this.address,
      this.distance, this.p, this.hours);
}
