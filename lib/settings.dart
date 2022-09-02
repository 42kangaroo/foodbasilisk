import 'package:flutter/material.dart';

import 'category.dart';
import 'restaurant.dart';

List<EatCategory> categorories = List<EatCategory>.from([
  EatCategory(AssetImage("assets/donut.png"), "Sweets"),
]);

List<Restaurant> restaurants = List<Restaurant>.from([
  Restaurant(
      AssetImage("assets/sushi.png"),
      "Il Panierino",
      ["Italian"],
      "Bäumlihofstrasse 149, 4058 Basel",
      3,
      price.LOW,
      "Freitag \n 07:00–20:30 \n Samstag \n 09:15–20:30\n Sonntag \n "
          "09:15–20:30 \n Montag \n 07:00–20:30 \n Dienstag \n 07:00–20:30 \n "
          "Mittwoch\n07:00–20:30\nDonnerstag\n07:00–20:30")
]);
