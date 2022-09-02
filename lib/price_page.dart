import 'package:flutter/material.dart';
import 'querry.dart';

class PricePage extends StatefulWidget {
  final Querry querry;

  const PricePage({Key? key, required this.querry}) : super(key: key);

  @override
  _PricePageState createState() {
    return _PricePageState();
  }
}

class _PricePageState extends State<PricePage> {
  @override
  Widget build(BuildContext context) {
    // 1
    return Scaffold(
      appBar: AppBar(
        title: Text('Choose your price range'),
      ),
      // 2
      body: SafeArea(
        // 3
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Card(
              child: Column(
                children: const [
                  Icon(
                    Icons.attach_money,
                    size: 200,
                  ),
                  Text("Low"),
                ],
              ),
            ),
            Card(
              child: Column(
                children: const [
                  Icon(Icons.money, size: 200,),
                  Text("Medium"),
                ],
              ),
            ),
            Card(
              child: Column(
                children: const [
                  Icon(Icons.price_change_outlined, size: 200,),
                  Text("No Restriction"),
                ],
              ),
            ),
            const SizedBox(
              width: double.infinity,
            ),
          ],
        ),
      ),
    );
  }
}
