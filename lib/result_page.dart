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

  Container createCard(Restaurant resto) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 3, horizontal: 10),
      child: Card(
        child: Row(
          children: [
            Expanded(
              child: resto.image,
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: Column(
                children: [
                  Text(
                    resto.label,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Text(
                    resto.address,
                    textAlign: TextAlign.center,
                    style: const TextStyle(fontSize: 15, color: Colors.grey),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> getData() async {
    res.clear();
    FirebaseFirestore db = FirebaseFirestore.instance;
    List<List<int>> helperPrice = [
      [0],
      [0, 1],
      [0, 1, 2]
    ];
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
