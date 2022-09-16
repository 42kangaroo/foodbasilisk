import 'package:flutter/material.dart';

import 'category.dart';

List<EatCategory> categories = List<EatCategory>.from([
  EatCategory(AssetImage("assets/pizza.png"), "Italian"),
  EatCategory(AssetImage("assets/hamburger (1).png"), "Burger"),
  EatCategory(AssetImage("assets/sushi.png"), "Japanese"),
  EatCategory(AssetImage("assets/avocado.png"), "Mexican"),
  EatCategory(AssetImage("assets/thai-food.png"), "Thai"),
  EatCategory(AssetImage("assets/chinese-food.png"), "Chinese"),
  EatCategory(AssetImage("assets/vegetarian.png"), "Vegetarian"),
  EatCategory(AssetImage("assets/fried-chicken.png"), "Fastfood"),
  EatCategory(AssetImage("assets/doner-kebab (1).png"), "Döner"),
  EatCategory(AssetImage("assets/trolley-cart.png"), "Supermarket"),
  EatCategory(AssetImage("assets/donut.png"), "Sweets"),
]);
