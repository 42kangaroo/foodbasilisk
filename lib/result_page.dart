import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'detail_page.dart';
import 'restaurant.dart';

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
  List<Restaurant> res = [];

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

  Future<void> getData() async {
    res.clear();
    FirebaseFirestore db = FirebaseFirestore.instance;
    List<List<int>> helperPrice = [[0], [0,1],[0,1,2]];
    await db
        .collection("restaurants")
        .where("categories", arrayContains: widget.querry.category)
        .where("distance", isLessThanOrEqualTo: widget.querry.distance)
        .where("price", whereIn: helperPrice[widget.querry.p.index])
        .get()
        .then((value) {
      for (var element in value.docs) {
        res.add(Restaurant.fromMap(element.data()));
      }
    });
  }

  @override
  Widget build(BuildContext context) => FutureBuilder(
      future: getData(),
      builder: (context, snapshot) {
        return Scaffold(
          appBar: AppBar(
            title: const Text("Choose Restaurant"),
          ),
          body: SafeArea(
            child: ListView.builder(
              itemCount: res.length,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return RestaurantDetail(restaurant: res[index]);
                    }));
                  },
                  child: createCard(res[index]),
                );
              },
            ),
          ),
        );
      });
}
