import 'package:flutter/material.dart';
import 'package:foodbasilisk/price_enum.dart';
import 'restaurant.dart';
import 'info_page.dart';

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
        leading: IconButton(
          icon: const Icon(Icons.info_outline, color: Colors.black, size: 34.0),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return const InfoPage();
            }));
          },
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                SizedBox(
                    height: 240,
                    width: double.infinity,
                    child: widget.restaurant.image),
                const SizedBox(
                  height: 12,
                ),
                Text(
                  widget.restaurant.label,
                  style: const TextStyle(fontSize: 27),
                ),
                const SizedBox(
                  height: 4,
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 4),
                  child: Text(
                    "Categories:",
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w700,
                        color: Color.fromARGB(255, 99, 99, 99)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 2),
                  child: Column(
                    children: widget.restaurant.categories
                        .map((String val) => Text(val,
                            style: const TextStyle(
                                fontSize: 22, color: Colors.black)))
                        .toList(),
                  ),
                ),
                const Padding(
                    padding: EdgeInsets.only(top: 6),
                    child: Text("Address:",
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w700,
                            color: Color.fromARGB(255, 99, 99, 99)))),
                Padding(
                  padding: const EdgeInsets.only(top: 2),
                  child: Text(
                    widget.restaurant.address,
                    style: const TextStyle(fontSize: 22),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 6),
                  child: Text(
                    "${widget.restaurant.distance}min away",
                    style: const TextStyle(fontSize: 22),
                  ),
                ),
                const Padding(
                    padding: EdgeInsets.only(top: 6),
                    child: Text("Price:",
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w700,
                            color: Color.fromARGB(255, 99, 99, 99)))),
                Padding(
                  padding: EdgeInsets.only(top: 2),
                  child: Text(
                    p[widget.restaurant.p.index],
                    style: const TextStyle(fontSize: 22),
                  ),
                ),
                const Padding(
                    padding: EdgeInsets.only(top: 6),
                    child: Text("Opening Hours:",
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w700,
                            color: Color.fromARGB(255, 99, 99, 99)))),
                Padding(
                  padding: const EdgeInsets.only(top: 2),
                  child: Text(
                    widget.restaurant.hours,
                    style: const TextStyle(fontSize: 22),
                  ),
                ),
              ],
            ),
          ),
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
