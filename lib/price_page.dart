import 'package:flutter/material.dart';
import 'package:foodbasilisk/result_page.dart';
import 'querry.dart';
import 'price_enum.dart';
import 'info_page.dart';

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
              const SizedBox(
                width: 8,
              ),
              Expanded(
                child: Center(
                  child: Text(
                    name,
                    style: const TextStyle(fontSize: 30),
                    textAlign: TextAlign.center,
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
        actions: [
          IconButton(
            icon:
            const Icon(Icons.info_outline, color: Colors.black, size: 34.0),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const InfoPage();
              }));
            },
          ),
        ],
      ),
      // 2
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            makePrice("assets/LOW.png", "Low", price.LOW),
            makePrice("assets/MEDIUM.png", "Medium", price.MIDDLE),
            makePrice(
                "assets/HIGH.png", "No restriction", price.NO_RESTRICTION),
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
