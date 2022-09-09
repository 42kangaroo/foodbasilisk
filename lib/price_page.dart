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
        child: SingleChildScrollView(
          child: Column(
            children: [
              GestureDetector(
                onTap: () {
                  Querry updatedQuerry = widget.querry;
                  updatedQuerry.p = price.LOW;
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return ResultPage(querry: updatedQuerry);
                  }));
                },
                child: Card(
                  child: Column(
                    children: [
                      Image.asset(
                        "assets/LOW.png",
                      ),
                      const Text(
                        "Low",
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Querry updatedQuerry = widget.querry;
                  updatedQuerry.p = price.MIDDLE;
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return ResultPage(querry: updatedQuerry);
                  }));
                },
                child: Card(
                  child: Column(
                    children: [
                      Image.asset(
                        "assets/MEDIUM.png",
                      ),
                      const Text(
                        "Medium",
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Querry updatedQuerry = widget.querry;
                  updatedQuerry.p = price.NO_RESTRICTION;
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return ResultPage(querry: updatedQuerry);
                  }));
                },
                child: Card(
                  child: Column(
                    children: [
                      Image.asset(
                        "assets/HIGH.png",
                      ),
                      const Text(
                        "No Restriction",
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                width: double.infinity,
              ),
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
