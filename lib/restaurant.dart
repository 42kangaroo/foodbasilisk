import 'package:flutter/cupertino.dart';

import 'price_enum.dart';

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

  Map<String, dynamic> toMap() => {
        "image": (image.image as NetworkImage).url,
        "lable": label,
        "categories": categories,
        "address": address,
        "distance": distance,
        "price": p.index,
        "hours": hours
      };

  Restaurant.fromMap(Map<String, dynamic> map)
      : image = Image.network(map["image"]),
        label = map["lable"],
        categories = List<String>.from(map["categories"]),
        address = map["address"],
        distance = map["distance"],
        p = price.values[map["price"]],
        hours = map["hours"];
}
