import 'package:flutter/material.dart';
import 'package:foodbasilisk/result_page.dart';
import 'querry.dart';
import 'price_enum.dart';

class PricePage extends StatefulWidget {
  final Querry querry;

  const PricePage({Key? key, required this.querry}) : super(key: key);

  @override
  _PricePageState createState() {
    return _PricePageState();
  }
}

class _PricePageState extends State<PricePage> {
  Container makePrice(String asset, String name, price p) {
    return Container(
      width: 100,
      child: GestureDetector(
        onTap: () {
          Querry updatedQuerry = widget.querry;
          updatedQuerry.p = p;
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return ResultPage(querry: updatedQuerry);
          }));
        },
        child: Card(
          child: Row(
            children: [
              Expanded(
                child: Image.asset(
                  asset,
                ),
              ),
              Expanded(
                child: Center(
                  child: Text(
                    name,
                    style: const TextStyle(fontSize: 30),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // 1
    return Scaffold(
      appBar: AppBar(
        title: Text('Choose your price range'),
      ),
      // 2
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              makePrice("assets/LOW.png", "Low", price.LOW),
              makePrice("assets/MEDIUM.png", "Medium", price.MIDDLE),
              makePrice(
                  "assets/HIGH.png", "No restriction", price.NO_RESTRICTION),
            ],
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
