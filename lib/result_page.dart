import 'package:flutter/material.dart';
import 'detail_page.dart';
import 'restaurant.dart';

import 'settings.dart';
import 'querry.dart';

class ResultPage extends StatefulWidget {
  final Querry querry;

  const ResultPage({
    Key? key,
    required this.querry,
  }) : super(key: key);

  @override
  _ResultPageState createState() {
    return _ResultPageState();
  }
}

class _ResultPageState extends State<ResultPage> {
  Card createCard(Restaurant resto) {
    return Card(
      child: Column(
        children: [
          resto.image,
          Text(
            resto.label,
            style: const TextStyle(fontSize: 20),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Choose Restaurant"),
      ),
      body: SafeArea(
        child: ListView.builder(
          itemCount: restaurants.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return RestaurantDetail(restaurant: restaurants[index]);
                }));
              },
              child: createCard(restaurants[index]),
            );
          },
        ),
      ),
    );
  }
}
