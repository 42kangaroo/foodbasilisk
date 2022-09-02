import 'package:flutter/cupertino.dart';

enum price {
  LOW,
  MIDDLE,
  NO_RESTRICTION,
}

class Restaurant {
  AssetImage image = AssetImage("");
  String label = "";
  String category = "";
  String address = "";
  int distance = -1;
  price p = price.NO_RESTRICTION;
  String hours = "";
}
