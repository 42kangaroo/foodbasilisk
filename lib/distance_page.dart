import 'package:flutter/material.dart';
import 'package:foodbasilisk/price_page.dart';
import 'package:foodbasilisk/querry.dart';

class DistancePage extends StatefulWidget {
  final Querry querry;

  const DistancePage({Key? key, required this.querry}) : super(key: key);

  @override
  _DistancePageState createState() {
    return _DistancePageState();
  }
}

class _DistancePageState extends State<DistancePage> {
  int _sliderVal = 5;

  @override
  Widget build(BuildContext context) {
    // 1
    return Scaffold(
      appBar: AppBar(
        title: Text('Choose your distance'),
      ),
      // 2
      body: SafeArea(
        // 3
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/BikeIcon.png', scale: 4),
            const SizedBox(
              height: 50,
            ),
            // 6
            Text(
              'Choose your distance\n'
              'Distance by bike: $_sliderVal min',
              style: const TextStyle(fontSize: 18),
            ),

            Slider(
              // 1
              min: 5,
              max: 25,
              divisions: 4,
              // 2
              label: 'Choose your distance in minutes',
              // 3
              value: _sliderVal.toDouble(),
              // 4
              onChanged: (newValue) {
                setState(() {
                  _sliderVal = newValue.round();
                });
              },
              // 5
              activeColor: Colors.blueGrey,
              inactiveColor: Colors.black,
            ),
            TextButton(
              style: TextButton.styleFrom(backgroundColor: Colors.grey),
              onPressed: () {
                Querry updatedQuerry = widget.querry;
                updatedQuerry.distance = _sliderVal;
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return PricePage(querry: updatedQuerry);
                }));
              },
              child: const Text(
                "confirm",
                style: TextStyle(color: Colors.black, fontSize: 20.0),
              ),
            ),
            SizedBox(height: 100),
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
