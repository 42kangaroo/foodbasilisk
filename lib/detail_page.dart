import 'dart:ffi';

import 'package:flutter/material.dart';
import 'restaurant.dart';

class RestaurantDetail extends StatefulWidget {
  final Restaurant restaurant;

  const RestaurantDetail({
    Key? key,
    required this.restaurant,
  }) : super(key: key);

  @override
  _RestaurantDetailState createState() {
    return _RestaurantDetailState();
  }
}

class _RestaurantDetailState extends State<RestaurantDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.restaurant.label),
      ),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
                height: 260,
                width: double.infinity,
                child: widget.restaurant.image),
            const SizedBox(
              height: 4,
            ),
            Text(
              widget.restaurant.label,
              style: const TextStyle(fontSize: 30),
            ),
            const SizedBox(
              height: 4,
            ),
            Padding(
              padding: EdgeInsets.only(top: 4),
              child: Text(
                "Categories:",
                style: const TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.w700,
                    color: Color.fromARGB(255, 99, 99, 99)),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 2),
              child: Column(
                children: widget.restaurant.categories
                    .map((String val) => Text(val,
                        style: TextStyle(fontSize: 23, color: Colors.black)))
                    .toList(),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 4),
              child: Text(
                widget.restaurant.address,
                style: const TextStyle(fontSize: 23),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 4),
              child: Text(
                widget.restaurant.distance.toString() + "min away",
                style: const TextStyle(fontSize: 23),
              ),
            ),
            Padding(
                padding: EdgeInsets.only(top: 4),
                child: Text("Price:",
                    style: const TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.w700,
                        color: Color.fromARGB(255, 99, 99, 99)))),
            Padding(
              padding: EdgeInsets.only(top: 2),
              child: Text(
                widget.restaurant.p.toString(),
                style: const TextStyle(fontSize: 23),
              ),
            ),
            Padding(
                padding: EdgeInsets.only(top: 4),
                child: Text("Opening Hours:",
                    style: const TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.w700,
                        color: Color.fromARGB(255, 99, 99, 99)))),
            Padding(
              padding: EdgeInsets.only(top: 2),
              child: Text(
                widget.restaurant.hours,
                style: const TextStyle(fontSize: 23),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.popUntil(context, (route) => route.isFirst);
        },
        tooltip: 'Back',
        child: const Icon(Icons.arrow_back_outlined),
      ),
    );
  }
}
