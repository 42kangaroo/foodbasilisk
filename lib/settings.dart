import 'package:flutter/material.dart';

import 'category.dart';
import 'restaurant.dart';

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
  EatCategory(AssetImage("assets/vegetarian.png"), "Vegetarian"),
]);

List<Restaurant> restaurants = List<Restaurant>.from([
  Restaurant(
      Image.network(
          "https://en.wikipedia.org/wiki/File:Good_Food_Display_-_NCI_Visuals_Online.jpg"),
      "Il Panierino",
      ["Italian"],
      "Bäumlihofstrasse 149, 4058 Basel",
      3,
      price.LOW,
      "Freitag \n 07:00–20:30 \n Samstag \n 09:15–20:30\n Sonntag \n "
          "09:15–20:30 \n Montag \n 07:00–20:30 \n Dienstag \n 07:00–20:30 \n "
          "Mittwoch\n07:00–20:30\nDonnerstag\n07:00–20:30"),
  Restaurant(
      Image.network(
          "https://en.wikipedia.org/wiki/File:Good_Food_Display_-_NCI_Visuals_Online.jpg"),
      "Holy Cow",
      ["Burger"],
      "Steinenvorstadt 30, 4051 Basel",
      14,
      price.MIDDLE,
      "Freitag \n 07:00–20:30 \n Samstag \n 09:15–20:30\n Sonntag \n "
          "09:15–20:30 \n Montag \n 07:00–20:30 \n Dienstag \n 07:00–20:30 \n "
          "Mittwoch\n07:00–20:30\nDonnerstag\n07:00–20:30"),
  Restaurant(
      Image.network(
          "https://en.wikipedia.org/wiki/File:Good_Food_Display_-_NCI_Visuals_Online.jpg"),
      "YamYam",
      ["Chinese"],
      "c/o Bibliothek Bar, Kohlenberg 7, 4051 Basel",
      13,
      price.LOW,
      "Freitag \n 07:00–20:30 \n Samstag \n 09:15–20:30\n Sonntag \n "
          "09:15–20:30 \n Montag \n 07:00–20:30 \n Dienstag \n 07:00–20:30 \n "
          "Mittwoch\n07:00–20:30\nDonnerstag\n07:00–20:30"),
  Restaurant(
      Image.network(
          "https://en.wikipedia.org/wiki/File:Good_Food_Display_-_NCI_Visuals_Online.jpg"),
      "VITO",
      ["Italian"],
      "Aeschengraben 14, 4051 Basel",
      14,
      price.LOW,
      "Freitag \n 07:00–20:30 \n Samstag \n 09:15–20:30\n Sonntag \n "
          "09:15–20:30 \n Montag \n 07:00–20:30 \n Dienstag \n 07:00–20:30 \n "
          "Mittwoch\n07:00–20:30\nDonnerstag\n07:00–20:30"),
  Restaurant(
      Image.network(
          "https://en.wikipedia.org/wiki/File:Good_Food_Display_-_NCI_Visuals_Online.jpg"),
      "Spiga",
      ["Italian"],
      "Disengage 9, 4051 Basel",
      12,
      price.NO_RESTRICTION,
      "Freitag \n 07:00–20:30 \n Samstag \n 09:15–20:30\n Sonntag \n "
          "09:15–20:30 \n Montag \n 07:00–20:30 \n Dienstag \n 07:00–20:30 \n "
          "Mittwoch\n07:00–20:30\nDonnerstag\n07:00–20:30"),
  Restaurant(
      Image.network(
          "https://en.wikipedia.org/wiki/File:Good_Food_Display_-_NCI_Visuals_Online.jpg"),
      "El Mexicano",
      ["Mexican"],
      "Steinenvorstadt 58, 4051 Basel",
      14,
      price.NO_RESTRICTION,
      "Freitag \n 07:00–20:30 \n Samstag \n 09:15–20:30\n Sonntag \n "
          "09:15–20:30 \n Montag \n 07:00–20:30 \n Dienstag \n 07:00–20:30 \n "
          "Mittwoch\n07:00–20:30\nDonnerstag\n07:00–20:30"),
  Restaurant(
      Image.network(
          "https://en.wikipedia.org/wiki/File:Good_Food_Display_-_NCI_Visuals_Online.jpg"),
      "Mister Wong",
      ["Chinese"],
      "Steinenvorstadt 23, 4051 Basel",
      12,
      price.MIDDLE,
      "Freitag \n 07:00–20:30 \n Samstag \n 09:15–20:30\n Sonntag \n "
          "09:15–20:30 \n Montag \n 07:00–20:30 \n Dienstag \n 07:00–20:30 \n "
          "Mittwoch\n07:00–20:30\nDonnerstag\n07:00–20:30"),
  Restaurant(
      Image.network(
          "https://en.wikipedia.org/wiki/File:Good_Food_Display_-_NCI_Visuals_Online.jpg"),
      "Burger Meister",
      ["Burger"],
      "Clarapl. 2/3, 4058 Basel",
      12,
      price.MIDDLE,
      "Freitag \n 07:00–20:30 \n Samstag \n 09:15–20:30\n Sonntag \n "
          "09:15–20:30 \n Montag \n 07:00–20:30 \n Dienstag \n 07:00–20:30 \n "
          "Mittwoch\n07:00–20:30\nDonnerstag\n07:00–20:30"),
  Restaurant(
      Image.network(
          "https://en.wikipedia.org/wiki/File:Good_Food_Display_-_NCI_Visuals_Online.jpg"),
      "Negishi Sushi Bar",
      ["Japanese"],
      "Stänzlergasse 7, 4051 Basel",
      13,
      price.NO_RESTRICTION,
      "Freitag \n 07:00–20:30 \n Samstag \n 09:15–20:30\n Sonntag \n "
          "09:15–20:30 \n Montag \n 07:00–20:30 \n Dienstag \n 07:00–20:30 \n "
          "Mittwoch\n07:00–20:30\nDonnerstag\n07:00–20:30"),
  Restaurant(
      Image.network(
          "https://en.wikipedia.org/wiki/File:Good_Food_Display_-_NCI_Visuals_Online.jpg"),
      "Union Diner",
      ["Burger"],
      "Stänzlergasse 3, 4051 Basel",
      13,
      price.NO_RESTRICTION,
      "Freitag \n 07:00–20:30 \n Samstag \n 09:15–20:30\n Sonntag \n "
          "09:15–20:30 \n Montag \n 07:00–20:30 \n Dienstag \n 07:00–20:30 \n "
          "Mittwoch\n07:00–20:30\nDonnerstag\n07:00–20:30"),
  Restaurant(
      Image.network(
          "https://en.wikipedia.org/wiki/File:Good_Food_Display_-_NCI_Visuals_Online.jpg"),
      "Oishii",
      ["Japanese"],
      "Chesterpl. 4, 79539 Lörrach ",
      20,
      price.LOW,
      "Freitag \n 07:00–20:30 \n Samstag \n 09:15–20:30\n Sonntag \n "
          "09:15–20:30 \n Montag \n 07:00–20:30 \n Dienstag \n 07:00–20:30 \n "
          "Mittwoch\n07:00–20:30\nDonnerstag\n07:00–20:30"),
  Restaurant(
      Image.network(
          "https://en.wikipedia.org/wiki/File:Good_Food_Display_-_NCI_Visuals_Online.jpg"),
      "Lotus",
      ["Chinese"],
      "Basler Str. 7A, 79540 Lörrach",
      16,
      price.MIDDLE,
      "Freitag \n 07:00–20:30 \n Samstag \n 09:15–20:30\n Sonntag \n "
          "09:15–20:30 \n Montag \n 07:00–20:30 \n Dienstag \n 07:00–20:30 \n "
          "Mittwoch\n07:00–20:30\nDonnerstag\n07:00–20:30"),
  Restaurant(
      Image.network(
          "https://en.wikipedia.org/wiki/File:Good_Food_Display_-_NCI_Visuals_Online.jpg"),
      "NOOHN",
      ["Japanese"],
      "Henric Petri-Strasse, 4051 Basel",
      14,
      price.NO_RESTRICTION,
      "Freitag \n 07:00–20:30 \n Samstag \n 09:15–20:30\n Sonntag \n "
          "09:15–20:30 \n Montag \n 07:00–20:30 \n Dienstag \n 07:00–20:30 \n "
          "Mittwoch\n07:00–20:30\nDonnerstag\n07:00–20:30"),
  Restaurant(
      Image.network(
          "https://en.wikipedia.org/wiki/File:Good_Food_Display_-_NCI_Visuals_Online.jpg"),
      "Thai Family Restaurant",
      ["Thai"],
      "Hammerstrasse 69, 4057 Basel",
      11,
      price.NO_RESTRICTION,
      "Freitag \n 07:00–20:30 \n Samstag \n 09:15–20:30\n Sonntag \n "
          "09:15–20:30 \n Montag \n 07:00–20:30 \n Dienstag \n 07:00–20:30 \n "
          "Mittwoch\n07:00–20:30\nDonnerstag\n07:00–20:30"),
  Restaurant(
      Image.network(
          "https://en.wikipedia.org/wiki/File:Good_Food_Display_-_NCI_Visuals_Online.jpg"),
      "LAUCH",
      ["Vegetarian"],
      "Klingentalstrasse 1, 4057 Basel",
      13,
      price.NO_RESTRICTION,
      "Freitag \n 07:00–20:30 \n Samstag \n 09:15–20:30\n Sonntag \n "
          "09:15–20:30 \n Montag \n 07:00–20:30 \n Dienstag \n 07:00–20:30 \n "
          "Mittwoch\n07:00–20:30\nDonnerstag\n07:00–20:30"),
  Restaurant(
      Image.network(
          "https://en.wikipedia.org/wiki/File:Good_Food_Display_-_NCI_Visuals_Online.jpg"),
      "Küsne Kebab",
      ["Döner"],
      "Untere Rebgasse 4, 4058 Basel",
      12,
      price.LOW,
      "Freitag \n 07:00–20:30 \n Samstag \n 09:15–20:30\n Sonntag \n "
          "09:15–20:30 \n Montag \n 07:00–20:30 \n Dienstag \n 07:00–20:30 \n "
          "Mittwoch\n07:00–20:30\nDonnerstag\n07:00–20:30"),
  Restaurant(
      Image.network(
          "https://en.wikipedia.org/wiki/File:Good_Food_Display_-_NCI_Visuals_Online.jpg"),
      "Star Grill GmbH",
      ["Döner"],
      "Untere Rebgasse 31, 4058 Basel",
      12,
      price.MIDDLE,
      "Freitag \n 07:00–20:30 \n Samstag \n 09:15–20:30\n Sonntag \n "
          "09:15–20:30 \n Montag \n 07:00–20:30 \n Dienstag \n 07:00–20:30 \n "
          "Mittwoch\n07:00–20:30\nDonnerstag\n07:00–20:30"),
  Restaurant(
      Image.network(
          "https://en.wikipedia.org/wiki/File:Good_Food_Display_-_NCI_Visuals_Online.jpg"),
      "Volta Pizza & Kebab Haus",
      ["Döner"],
      "Elsässerstr. 31, 4056 Basel",
      16,
      price.LOW,
      "Freitag \n 07:00–20:30 \n Samstag \n 09:15–20:30\n Sonntag \n "
          "09:15–20:30 \n Montag \n 07:00–20:30 \n Dienstag \n 07:00–20:30 \n "
          "Mittwoch\n07:00–20:30\nDonnerstag\n07:00–20:30"),
  Restaurant(
      Image.network(
          "https://en.wikipedia.org/wiki/File:Good_Food_Display_-_NCI_Visuals_Online.jpg"),
      "Burger King Claraplatz",
      ["Burger", "Fastfood"],
      "Untere Rebgasse 8, 4058 Basel",
      13,
      price.LOW,
      "Freitag \n 07:00–20:30 \n Samstag \n 09:15–20:30\n Sonntag \n "
          "09:15–20:30 \n Montag \n 07:00–20:30 \n Dienstag \n 07:00–20:30 \n "
          "Mittwoch\n07:00–20:30\nDonnerstag\n07:00–20:30"),
  Restaurant(
      Image.network(
          "https://en.wikipedia.org/wiki/File:Good_Food_Display_-_NCI_Visuals_Online.jpg"),
      "McDonald's ",
      ["Burger", "Fastfood"],
      "Schwarzwaldallee 183, 4058 Basel",
      9,
      price.LOW,
      "Freitag \n 07:00–20:30 \n Samstag \n 09:15–20:30\n Sonntag \n "
          "09:15–20:30 \n Montag \n 07:00–20:30 \n Dienstag \n 07:00–20:30 \n "
          "Mittwoch\n07:00–20:30\nDonnerstag\n07:00–20:30"),
  Restaurant(
      Image.network(
          "https://en.wikipedia.org/wiki/File:Good_Food_Display_-_NCI_Visuals_Online.jpg"),
      "Coop Supermarkt Basel Bäumlihof",
      ["Supermarket"],
      "Bäumlihofstrassse 132, 4058 Basel",
      3,
      price.LOW,
      "Freitag \n 07:00–20:30 \n Samstag \n 09:15–20:30\n Sonntag \n "
          "09:15–20:30 \n Montag \n 07:00–20:30 \n Dienstag \n 07:00–20:30 \n "
          "Mittwoch\n07:00–20:30\nDonnerstag\n07:00–20:30"),
  Restaurant(
      Image.network(
          "https://en.wikipedia.org/wiki/File:Good_Food_Display_-_NCI_Visuals_Online.jpg"),
      "Coop Supermarkt Riehen Rauracher",
      ["Supermarket"],
      "Rauracherstr. 33, 4125 Riehen",
      3,
      price.LOW,
      "Freitag \n 07:00–20:30 \n Samstag \n 09:15–20:30\n Sonntag \n "
          "09:15–20:30 \n Montag \n 07:00–20:30 \n Dienstag \n 07:00–20:30 \n "
          "Mittwoch\n07:00–20:30\nDonnerstag\n07:00–20:30"),
  Restaurant(
      Image.network(
          "https://en.wikipedia.org/wiki/File:Good_Food_Display_-_NCI_Visuals_Online.jpg"),
      "Crêperie am Kohlenberg",
      ["Sweets"],
      "Kohlenberg 8, 4051 Basel",
      13,
      price.NO_RESTRICTION,
      "Freitag \n 07:00–20:30 \n Samstag \n 09:15–20:30\n Sonntag \n "
          "09:15–20:30 \n Montag \n 07:00–20:30 \n Dienstag \n 07:00–20:30 \n "
          "Mittwoch\n07:00–20:30\nDonnerstag\n07:00–20:30"),
  Restaurant(
      Image.network(
          "https://en.wikipedia.org/wiki/File:Good_Food_Display_-_NCI_Visuals_Online.jpg"),
      "Häxekessel",
      ["Sweets"],
      "Baselstrasse 45, 4125 Riehen",
      10,
      price.MIDDLE,
      "Freitag \n 07:00–20:30 \n Samstag \n 09:15–20:30\n Sonntag \n "
          "09:15–20:30 \n Montag \n 07:00–20:30 \n Dienstag \n 07:00–20:30 \n "
          "Mittwoch\n07:00–20:30\nDonnerstag\n07:00–20:30"),
]);
