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
        title: Text(widget.restaurant.lable),
      ),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 300,
              width: double.infinity,
              child: Image(
                image: AssetImage(""),
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            Text(
              widget.restaurant.lable,
              style: const TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
