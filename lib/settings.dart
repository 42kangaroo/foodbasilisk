import 'package:flutter/material.dart';

import 'category.dart';
import 'restaurant.dart';
import 'price_enum.dart';

List<EatCategory> categories = List<EatCategory>.from([
  EatCategory(AssetImage("assets/donut.png"), "Sweets"),
  EatCategory(AssetImage("assets/pizza.png"), "Italian"),
  EatCategory(AssetImage("assets/hamburger (1).png"), "Burger"),
  EatCategory(AssetImage("assets/avocado.png"), "Mexican"),
  EatCategory(AssetImage("assets/sushi.png"), "Japanese"),
  EatCategory(AssetImage("assets/trolley-cart.png"), "Supermarket"),
  EatCategory(AssetImage("assets/thai-food.png"), "Thai"),
  EatCategory(AssetImage("assets/chinese-food.png"), "Chinese"),
  EatCategory(AssetImage("assets/doner-kebab (1).png"), "Döner"),
  EatCategory(AssetImage("assets/fried-chicken.png"), "Fast Food"),
]);

List<Restaurant> restaurants = List<Restaurant>.from([
  Restaurant(
      Image.network(""),
      "Il Panierino",
      ["Italian"],
      "Bäumlihofstrasse 149, 4058 Basel",
      3,
      price.LOW,
      "Freitag \n 07:00–20:30 \n Samstag \n 09:15–20:30\n Sonntag \n "
          "09:15–20:30 \n Montag \n 07:00–20:30 \n Dienstag \n 07:00–20:30 \n "
          "Mittwoch\n07:00–20:30\nDonnerstag\n07:00–20:30"),
  Restaurant(
      Image.network(""),
      "Holy Cow",
      ["Burger"],
      "Steinenvorstadt 30, 4051 Basel",
      14,
      price.MIDDLE,
      "Freitag \n 07:00–20:30 \n Samstag \n 09:15–20:30\n Sonntag \n "
          "09:15–20:30 \n Montag \n 07:00–20:30 \n Dienstag \n 07:00–20:30 \n "
          "Mittwoch\n07:00–20:30\nDonnerstag\n07:00–20:30"),
  Restaurant(
      Image.network(""),
      "YamYam",
      ["Chinese"],
      "c/o Bibliothek Bar, Kohlenberg 7, 4051 Basel",
      13,
      price.LOW,
      "Freitag \n 07:00–20:30 \n Samstag \n 09:15–20:30\n Sonntag \n "
          "09:15–20:30 \n Montag \n 07:00–20:30 \n Dienstag \n 07:00–20:30 \n "
          "Mittwoch\n07:00–20:30\nDonnerstag\n07:00–20:30"),
  Restaurant(
      Image.network(""),
      "VITO",
      ["Italian"],
      "Aeschengraben 14, 4051 Basel",
      14,
      price.LOW,
      "Freitag \n 07:00–20:30 \n Samstag \n 09:15–20:30\n Sonntag \n "
          "09:15–20:30 \n Montag \n 07:00–20:30 \n Dienstag \n 07:00–20:30 \n "
          "Mittwoch\n07:00–20:30\nDonnerstag\n07:00–20:30"),
  Restaurant(
      Image.network(""),
      "Spiga",
      ["Italian"],
      "Disengage 9, 4051 Basel",
      12,
      price.NO_RESTRICTION,
      "Freitag \n 07:00–20:30 \n Samstag \n 09:15–20:30\n Sonntag \n "
          "09:15–20:30 \n Montag \n 07:00–20:30 \n Dienstag \n 07:00–20:30 \n "
          "Mittwoch\n07:00–20:30\nDonnerstag\n07:00–20:30"),
  Restaurant(
      Image.network("http://basel.elmexicano.ch/wp-content/uploads/2016/02/page1_img1.jpg"),
      "El Mexicano",
      ["Mexican"],
      "Steinenvorstadt 58, 4051 Basel",
      14,
      price.NO_RESTRICTION,
      "Freitag \n 07:00–20:30 \n Samstag \n 09:15–20:30\n Sonntag \n "
          "09:15–20:30 \n Montag \n 07:00–20:30 \n Dienstag \n 07:00–20:30 \n "
          "Mittwoch\n07:00–20:30\nDonnerstag\n07:00–20:30")
]);
