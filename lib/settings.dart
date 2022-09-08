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
          "https://www.terrenimt.it/wp-content/uploads/2017/02/Arredamento-negozi-Milano-1-1024x768.jpg"),
      "Il Panierino",
      ["Italian"],
      "Bäumlihofstrasse 149, 4058 Basel",
      3,
      price.LOW,
      "Freitag \n 07:00–20:30 \n Samstag \n 09:15–20:30\n Sonntag \n "
          "09:15–20:30 \n Montag \n 07:00–20:30 \n Dienstag \n 07:00–20:30 \n "
          "Mittwoch\n07:00–20:30\nDonnerstag\n07:00–20:30"),
  Restaurant(
      Image.network("https://images.app.goo.gl/77ZmShNzXHHn5fWw8"),
      "Holy Cow",
      ["Burger"],
      "Steinenvorstadt 30, 4051 Basel",
      14,
      price.MIDDLE,
      "Freitag \n 07:00–20:30 \n Samstag \n 09:15–20:30\n Sonntag \n "
          "09:15–20:30 \n Montag \n 07:00–20:30 \n Dienstag \n 07:00–20:30 \n "
          "Mittwoch\n07:00–20:30\nDonnerstag\n07:00–20:30"),
  Restaurant(
      Image.network("https://images.app.goo.gl/YxYFEyTzukYH9dpb7"),
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
          "https://cdn.gaultmillau.ch/fp/1770/996/1500/1000/sites/default/files/media/field_image/2022-04/vito_pizza_europaallee.jpg"),
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
          "https://www.spiga-ristorante.ch/fileadmin/Spiga/Standorte/SPIGA-Ristorante-Basel-header.jpg"),
      "Spiga",
      ["Italian"],
      "Disengage 9, 4051 Basel",
      12,
      price.NO_RESTRICTION,
      "Freitag \n 07:00–20:30 \n Samstag \n 09:15–20:30\n Sonntag \n "
          "09:15–20:30 \n Montag \n 07:00–20:30 \n Dienstag \n 07:00–20:30 \n "
          "Mittwoch\n07:00–20:30\nDonnerstag\n07:00–20:30"),
  Restaurant(
      Image.network("https://images.app.goo.gl/iNEm81gJSSPoVQfL8"),
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
          "https://storage.flyo.cloud/pib2015bonshoppingmisterwongsteinen1st23_b4e9dc4c.jpg"),
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
          "https://media-cdn.tripadvisor.com/media/photo-s/1d/22/03/12/caption.jpg"),
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
          "https://sbarchitektur.ch/wp-content/uploads/Umbau-Restaurant-Negishi-Basel_1.jpg"),
      "Negishi Sushi Bar",
      ["Japanese"],
      "Stänzlergasse 7, 4051 Basel",
      13,
      price.NO_RESTRICTION,
      "Freitag \n 07:00–20:30 \n Samstag \n 09:15–20:30\n Sonntag \n "
          "09:15–20:30 \n Montag \n 07:00–20:30 \n Dienstag \n 07:00–20:30 \n "
          "Mittwoch\n07:00–20:30\nDonnerstag\n07:00–20:30"),
  Restaurant(
      Image.network("https://storage.flyo.cloud/union-diner_c055d117.jpg"),
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
          "https://ais.bz-ticket.de/piece/0a/db/73/a8/182154152-f-3_2-w-980.jpg"),
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
          "https://www.lotus-loerrach.de/wp-content/uploads/2018/10/Lotus_Logo_Mit_Zusatz-1024x627.png"),
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
          "https://noohn.ch/app/assets/images/business/sushibar/noohn_sushibar_10_lg.jpg"),
      "NOOHN",
      ["Japanese"],
      "Henric Petri-Strasse, 4051 Basel",
      14,
      price.NO_RESTRICTION,
      "Freitag \n 07:00–20:30 \n Samstag \n 09:15–20:30\n Sonntag \n "
          "09:15–20:30 \n Montag \n 07:00–20:30 \n Dienstag \n 07:00–20:30 \n "
          "Mittwoch\n07:00–20:30\nDonnerstag\n07:00–20:30"),
  Restaurant(
      Image.network("https://images.app.goo.gl/eQtBKpj1jyDRxxsA9"),
      "Thai Family Restaurant",
      ["Thai"],
      "Hammerstrasse 69, 4057 Basel",
      11,
      price.NO_RESTRICTION,
      "Freitag \n 07:00–20:30 \n Samstag \n 09:15–20:30\n Sonntag \n "
          "09:15–20:30 \n Montag \n 07:00–20:30 \n Dienstag \n 07:00–20:30 \n "
          "Mittwoch\n07:00–20:30\nDonnerstag\n07:00–20:30"),
  Restaurant(
      Image.network("https://storage.flyo.cloud/1633010976354_12953196.jpg"),
      "LAUCH",
      ["Vegetarian"],
      "Klingentalstrasse 1, 4057 Basel",
      13,
      price.NO_RESTRICTION,
      "Freitag \n 07:00–20:30 \n Samstag \n 09:15–20:30\n Sonntag \n "
          "09:15–20:30 \n Montag \n 07:00–20:30 \n Dienstag \n 07:00–20:30 \n "
          "Mittwoch\n07:00–20:30\nDonnerstag\n07:00–20:30"),
  Restaurant(
      Image.network("https://images.app.goo.gl/TFBVMky692ZPrMH67"),
      "Küsne Kebab",
      ["Döner"],
      "Untere Rebgasse 4, 4058 Basel",
      12,
      price.LOW,
      "Freitag \n 07:00–20:30 \n Samstag \n 09:15–20:30\n Sonntag \n "
          "09:15–20:30 \n Montag \n 07:00–20:30 \n Dienstag \n 07:00–20:30 \n "
          "Mittwoch\n07:00–20:30\nDonnerstag\n07:00–20:30"),
  Restaurant(
      Image.network("https://images.app.goo.gl/sXYnw2EAoBCEDTPJ6"),
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
          "https://bin.staticlocal.ch/info-image-ad/b3/b31e284c42f041d8b5e76a86a858e99d7d71f5f8/1EFB6482-B6BB-33E0-744B-78758F8157D7_aussen_2.jpg"),
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
          "https://img.chmedia.ch/2021/7/26/c6450ba0-742c-4f9a-a0d8-8acfe59c0d3e.jpeg?width=654&height=367&fit=bounds&quality=75&auto=webp&crop=6000,3371,x0,y590"),
      "Burger King Claraplatz",
      ["Burger", "Fastfood"],
      "Untere Rebgasse 8, 4058 Basel",
      13,
      price.LOW,
      "Freitag \n 07:00–20:30 \n Samstag \n 09:15–20:30\n Sonntag \n "
          "09:15–20:30 \n Montag \n 07:00–20:30 \n Dienstag \n 07:00–20:30 \n "
          "Mittwoch\n07:00–20:30\nDonnerstag\n07:00–20:30"),
  Restaurant(
      Image.network("https://images.app.goo.gl/ZMjgKpwdBiWB7p2x8"),
      "McDonald's ",
      ["Burger", "Fastfood"],
      "Schwarzwaldallee 183, 4058 Basel",
      9,
      price.LOW,
      "Freitag \n 07:00–20:30 \n Samstag \n 09:15–20:30\n Sonntag \n "
          "09:15–20:30 \n Montag \n 07:00–20:30 \n Dienstag \n 07:00–20:30 \n "
          "Mittwoch\n07:00–20:30\nDonnerstag\n07:00–20:30"),
  Restaurant(
      Image.network("https://images.app.goo.gl/2eTctGyHMWMgxTJG9"),
      "Coop Supermarkt Basel Bäumlihof",
      ["Supermarket"],
      "Bäumlihofstrassse 132, 4058 Basel",
      3,
      price.LOW,
      "Freitag \n 07:00–20:30 \n Samstag \n 09:15–20:30\n Sonntag \n "
          "09:15–20:30 \n Montag \n 07:00–20:30 \n Dienstag \n 07:00–20:30 \n "
          "Mittwoch\n07:00–20:30\nDonnerstag\n07:00–20:30"),
  Restaurant(
      Image.network("https://images.app.goo.gl/e54m4Mj4gcKAUJfF9<"),
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
          "https://img.luzernerzeitung.ch/2020/10/7/dc75f274-16c7-4abc-9c30-8a30ba1b5105.jpeg?width=560&fit=crop&quality=75&auto=webp"),
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
          "https://10619-2.s.cdn12.com/rests/original/110_510368576.jpg"),
      "Häxekessel",
      ["Sweets"],
      "Baselstrasse 45, 4125 Riehen",
      10,
      price.MIDDLE,
      "Freitag \n 07:00–20:30 \n Samstag \n 09:15–20:30\n Sonntag \n "
          "09:15–20:30 \n Montag \n 07:00–20:30 \n Dienstag \n 07:00–20:30 \n "
          "Mittwoch\n07:00–20:30\nDonnerstag\n07:00–20:30"),
  Restaurant(
      Image.network("https://images.app.goo.gl/wBLCaKFmXLpNg4aA7"),
      "Dunkin’ Donuts",
      ["Sweets"],
      "Greifengasse 17, 4058 Basel",
      11,
      price.MIDDLE,
      "Freitag \n 07:00–20:30 \n Samstag \n 09:15–20:30\n Sonntag \n "
          "09:15–20:30 \n Montag \n 07:00–20:30 \n Dienstag \n 07:00–20:30 \n "
          "Mittwoch\n07:00–20:30\nDonnerstag\n07:00–20:30"),
]);
