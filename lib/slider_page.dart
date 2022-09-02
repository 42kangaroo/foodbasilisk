import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  const SliderPage({
    Key? key,
  }) : super(key: key);

  @override
  _SliderPageState createState() {
    return _SliderPageState();
  }
}

class _SliderPageState extends State<SliderPage> {
  int _sliderVal = 1;

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
          children: [
            // 4
            // 5
            const SizedBox(
              height: 4,
            ),
            // 6
            Text(
              'Choose your distance',
              style: const TextStyle(fontSize: 18),
            ),

            Slider(
              // 1
              min: 1,
              max: 20,
              divisions: 19,
              // 2
              label: 'Choose your distance',
              // 3
              value: _sliderVal.toDouble(),
              // 4
              onChanged: (newValue) {
                setState(() {
                  _sliderVal = newValue.round();
                });
              },
              // 5
              activeColor: Colors.green,
              inactiveColor: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}
